void MIL::Matching::Match::~Match(MIL::Matching::Match *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<MIL::Matching::Match::MatchImpl>::operator()[abi:ne200100](this, v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<MIL::Matching::Match::MatchImpl>::operator()[abi:ne200100](this, v1);
  }
}

uint64_t *MIL::MatchingPrivate::MatchConverter::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<MIL::MatchingPrivate::MatchConverter::MatchConverterImpl>::reset[abi:ne200100](a1, v3);
  return a1;
}

void MIL::MatchingPrivate::MatchConverter::ConvertMatch(const void ***a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v6 = *a1;
  v8 = *a1 + 3;
  v7 = *v8;
  v6[1] = **a1;
  v6[4] = v7;
  v9 = *a4;
  std::vector<MIL::MatchingPrivate::MatchItem>::resize(*a4, 1uLL);
  for (; a2; a2 = MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::Pop(a3, a2))
  {
    MIL::Matching::PersistentListArena<MIL::Matching::MatchToken,6ul,6ul>::AssertChunkIsAllocated(a3, a2 & 0xFFFFFFFFFFFFFFLL);
    v10 = *(*(a3 + 144) + ((a2 >> 3) & 0x1FFFFFFFFFFFF8)) + 160 * (a2 & 0x3F) + 24 * HIBYTE(a2);
    v11 = v10 - 24;
    v12 = *(v10 - 16);
    if (v12)
    {
      if (v12 == 1)
      {
        v17 = v6[1];
        v18 = v6[4];
        v19 = (v18 - v6[3]) >> 5;
        if (*v6 != v17)
        {
          v19 -= *(v17 - 1);
          v6[1] = v17 - 1;
        }

        v21 = *v9;
        v20 = v9[1];
        for (i = v19; i; --i)
        {
          v23 = *(v18 - 16);
          v24 = *(v18 - 8) - ((v9[1] - *v9) >> 5);
          v40 = *(v18 - 32);
          v41 = v23;
          v42 = v24;
          std::vector<MIL::MatchingPrivate::MatchItem>::push_back[abi:ne200100](v9, &v40);
          v18 = v6[4] - 32;
          v6[4] = v18;
        }

        v25 = *(v11 + 16);
        v40 = *v11;
        v41 = v25;
        v42 = (v20 - v21) >> 5;
        std::vector<MIL::MatchingPrivate::MatchItem>::push_back[abi:ne200100](v8, &v40);
        v26 = v6[4];
        if (*(v26 - 6) != 1)
        {
          *(v26 - 6) = 1;
        }

        *(v26 - 4) = v19;
      }

      else
      {
        if (v12 != 2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Trying to visit a std::variant that is in an invalid state");
          goto LABEL_29;
        }

        v13 = (v6[4] - v6[3]) >> 5;
        v15 = v6[1];
        v14 = v6[2];
        if (v15 >= v14)
        {
          v28 = *v6;
          v29 = v15 - *v6;
          v30 = v29 >> 3;
          v31 = (v29 >> 3) + 1;
          if (v31 >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v32 = v14 - v28;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          v33 = v32 >= 0x7FFFFFFFFFFFFFF8;
          v34 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v33)
          {
            v34 = v31;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(v6, v34);
          }

          *(8 * v30) = v13;
          v16 = 8 * v30 + 8;
          memcpy(0, v28, v29);
          v35 = *v6;
          *v6 = 0;
          v6[1] = v16;
          v6[2] = 0;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 1);
        }

        v6[1] = v16;
      }
    }

    else
    {
      v27 = *(v11 + 16);
      v40 = *v11;
      v41 = v27;
      v42 = 0;
      std::vector<MIL::MatchingPrivate::MatchItem>::push_back[abi:ne200100](v8, &v40);
    }
  }

  v36 = v6[3];
  if (v6[4] - v36 != 32)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Malformed match token string");
LABEL_29:
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v37 = *(v36 + 2);
  v38 = *(v36 + 3) - ((v9[1] - *v9) >> 5);
  v40 = *v36;
  v41 = v37;
  v42 = v38;
  std::vector<MIL::MatchingPrivate::MatchItem>::push_back[abi:ne200100](v9, &v40);
}

void std::vector<MIL::MatchingPrivate::MatchItem>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<MIL::MatchingPrivate::MatchItem>::__append(a1, a2 - v2);
  }
}

uint64_t MIL::MatchingPrivate::MatchPrivate::GetIRArgumentFromArgumentView@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 8);
  v5 = *v3;
  v4 = v3[1];
  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void MIL::MatchingPrivate::MatchPrivate::GetAllMatchedOperations(uint64_t ***a1, uint64_t a2)
{
  v2 = **a1;
  for (i = (*a1)[1]; v2 != i; v2 += 4)
  {
    if (v2)
    {
      if (!*(v2 + 2))
      {
        v5 = *v2;
        if (*v2)
        {
          v7 = *(a2 + 8);
          v6 = *(a2 + 16);
          if (v7 >= v6)
          {
            v9 = (v7 - *a2) >> 3;
            if ((v9 + 1) >> 61)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v10 = v6 - *a2;
            v11 = v10 >> 2;
            if (v10 >> 2 <= (v9 + 1))
            {
              v11 = v9 + 1;
            }

            if (v10 >= 0x7FFFFFFFFFFFFFF8)
            {
              v12 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            if (v12)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<MIL::Pass>>>(a2, v12);
            }

            *(8 * v9) = v5;
            v8 = 8 * v9 + 8;
            v13 = *(a2 + 8) - *a2;
            v14 = (8 * v9 - v13);
            memcpy(v14, *a2, v13);
            v15 = *a2;
            *a2 = v14;
            *(a2 + 8) = v8;
            *(a2 + 16) = 0;
            if (v15)
            {
              operator delete(v15);
            }
          }

          else
          {
            *v7 = v5;
            v8 = (v7 + 1);
          }

          *(a2 + 8) = v8;
        }
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MatchItemStub>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<MIL::Matching::InvalidMatchAccess::InvalidMatchAccessImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E5668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<MIL::Matching::InvalidMatchAccess::InvalidMatchAccessImpl>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::default_delete<MIL::Matching::Match::MatchImpl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x21CEAFEA0);
  }
}

void *std::vector<MIL::MatchingPrivate::MatchItem>::__assign_with_size[abi:ne200100]<MIL::MatchingPrivate::MatchItem*,MIL::MatchingPrivate::MatchItem*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MIL::MatchingPrivate::MatchItem>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<MIL::MatchingPrivate::MatchItem>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MatchItemStub>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::unique_ptr<MIL::MatchingPrivate::MatchConverter::MatchConverterImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

void std::vector<MIL::MatchingPrivate::MatchItem>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MatchItemStub>>(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
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

void MIL::Matching::Matcher::~Matcher(MIL::Matching::Matcher *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    MIL::Matching::Machine::~Machine((v1 + 24));
    if (v1[16] == 1)
    {
      MIL::Matching::CompiledPattern::~CompiledPattern(v1);
    }

    MEMORY[0x21CEAFEA0](v1, 0x1062C40F7BBE452);
  }
}

uint64_t MIL::Matching::Matcher::Reset(MIL::Matching::Matcher *this, MIL::Builder::BlockBuilder *a2, MIL::Builder::OperationBuilder *a3, const MIL::Matching::CompiledPattern *a4)
{
  std::optional<MIL::Matching::CompiledPattern>::operator=[abi:ne200100]<MIL::Matching::CompiledPattern const&,void>(*this, a4);
  v7 = *this;
  FirstInstruction = MIL::MatchingPrivate::CompiledPatternPrivate::GetFirstInstruction(v7, v8);

  return MIL::Matching::Machine::Reset((v7 + 24), FirstInstruction, a2, a3);
}

uint64_t std::optional<MIL::Matching::CompiledPattern>::operator=[abi:ne200100]<MIL::Matching::CompiledPattern const&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) == 1)
  {
    MIL::Matching::CompiledPattern::operator=(a1, a2);
  }

  else
  {
    MIL::Matching::CompiledPattern::CompiledPattern(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t MIL::Matching::Matcher::FindNextMatch(uint64_t a1, uint64_t **a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a3)
{
  NextMatch = MIL::Matching::Machine::FindNextMatch((*a1 + 24), a2, a3);
  if (NextMatch == 2)
  {
    return 2;
  }

  else
  {
    return NextMatch == 1;
  }
}

MIL::Matching::Matcher::MatcherImpl *MIL::Matching::Matcher::MatcherImpl::MatcherImpl(MIL::Matching::Matcher::MatcherImpl *this, const MIL::Matching::CompiledPattern *a2, MIL::Builder::BlockBuilder *a3, MIL::Builder::OperationBuilder *a4)
{
  v7 = MIL::Matching::CompiledPattern::CompiledPattern(this, a2);
  *(v7 + 16) = 1;
  FirstInstruction = MIL::MatchingPrivate::CompiledPatternPrivate::GetFirstInstruction(v7, v8);
  MIL::Matching::Machine::Machine((this + 24), FirstInstruction, a3, a4);
  return this;
}

void sub_21803D92C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 16) == 1)
  {
    MIL::Matching::CompiledPattern::~CompiledPattern(v1);
  }

  _Unwind_Resume(exception_object);
}

Pattern *MIL::Matching::Pattern::Pattern(Pattern *this, const Pattern *a2)
{
  v2 = a2[1];
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((*&v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *MIL::Matching::Pattern::Pattern(void *this, const MIL::Matching::Pattern *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *MIL::Matching::Pattern::operator=(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void MIL::Matching::Pattern::~Pattern(MIL::Matching::Pattern *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MIL::Matching::Pattern::PatternImpl::OperationPredicate::DebugString(std::string *a1@<X8>)
{
  std::operator+<char>();
  v3 = std::string::append(&v4, ")");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_21803DAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Pattern::PatternImpl::Maybe::DebugString(MIL::Matching::Pattern::PatternImpl::Maybe *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 1) + 24))(&v6);
  v3 = std::string::insert(&v6, 0, "Maybe(");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ")");
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_21803DC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Pattern::PatternImpl::ZeroOrMore::DebugString(MIL::Matching::Pattern::PatternImpl::ZeroOrMore *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 1) + 24))(&v6);
  v3 = std::string::insert(&v6, 0, "ZeroOrMore(");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ")");
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_21803DD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Pattern::PatternImpl::OneOrMore::DebugString(MIL::Matching::Pattern::PatternImpl::OneOrMore *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 1) + 24))(&v6);
  v3 = std::string::insert(&v6, 0, "OneOrMore(");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ")");
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_21803DEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Pattern::PatternImpl::Chain::DebugString(MIL::Matching::Pattern::PatternImpl::Chain *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 1) + 24))(&v11);
  v4 = std::string::append(&v11, " >> ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(**(this + 3) + 24))(__p);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v12, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_21803E054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Pattern::PatternImpl::Via::DebugString(std::string *a1@<X8>)
{
  std::operator+<char>();
  v3 = std::string::append(&v4, ")");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_21803E15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Via(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  operator new();
}

void sub_21803E314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v26);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *MIL::Matching::Pattern::PatternImpl::Parallel::DebugString@<X0>(MIL::Matching::Pattern::PatternImpl::Parallel *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 9;
  strcpy(a2, "Parallel(");
  v3 = *(this + 1);
  if (*(this + 2) != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v6)
      {
        std::string::append(a2, ", ");
        v3 = *(this + 1);
      }

      (*(**(v3 + v5) + 24))(__p);
      if ((v11 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v8 = v11;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a2, v7, v8);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      ++v6;
      v3 = *(this + 1);
      v5 += 16;
    }

    while (v6 < (*(this + 2) - v3) >> 4);
  }

  return std::string::append(a2, ")");
}

void sub_21803E494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::MatchingPrivate::PatternPrivate::CompilePattern(uint64_t (****this)(void), const MIL::Matching::Pattern *a2, MIL::Matching::InstructionBuilder *a3, MIL::MILContext *a4)
{
  (*(*a2 + 48))(a2);
  v8 = 0;
  v9 = a3;
  v10 = a2;
  return (***this)();
}

void MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 8);
  v5 = *(a1 + 31);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
  }

  else
  {
    v6 = (a1 + 8);
  }

  MIL::Matching::GetOperatorsByQualifiedName(v4, v6, v5, v8);
  std::unordered_set<std::shared_ptr<MIL::IROperator const>>::unordered_set(v7, v8);
  v9 = 0;
  operator new();
}

void sub_21803E784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void MIL::Matching::Pattern::PatternImpl::OperationPredicate::~OperationPredicate(void **this)
{
  *this = &unk_2829E56F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2829E56F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Matching::Pattern::PatternImpl::Maybe::Compile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = (***(a1 + 8))(*(a1 + 8));
  v6 = *(a3 + 16);
  __p = 0;
  LODWORD(v12) = 0;
  v7 = (*(*v6 + 8))(v6, &__p, a2);
  v8 = *(a3 + 16);
  v14[0] = v5;
  v14[1] = v7;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<MIL::Matching::Instruction const*>::__init_with_size[abi:ne200100]<MIL::Matching::Instruction const* const*,MIL::Matching::Instruction const* const*>(&__p, v14, &v15, 2uLL);
  v9 = (*(*v8 + 32))(v8, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_21803E9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Pattern::PatternImpl::Maybe::~Maybe(MIL::Matching::Pattern::PatternImpl::Maybe *this)
{
  *this = &unk_2829E5740;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2829E5740;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Matching::Pattern::PatternImpl::ZeroOrMore::Compile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  LODWORD(v13) = 2;
  v6 = (*(*v5 + 8))(v5, &__p, a2);
  v7 = *(a3 + 16);
  v15[0] = 0;
  v15[1] = v6;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<MIL::Matching::Instruction const*>::__init_with_size[abi:ne200100]<MIL::Matching::Instruction const* const*,MIL::Matching::Instruction const* const*>(&__p, v15, &v16, 2uLL);
  v8 = (*(*v7 + 32))(v7, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v9 = (***(a1 + 8))(*(a1 + 8), v8, a3);
  (*(**(a3 + 16) + 40))(*(a3 + 16), v8, 0, v9);
  v10 = *(a3 + 16);
  __p = 0;
  LODWORD(v13) = 1;
  return (*(*v10 + 8))(v10, &__p, v8);
}

void sub_21803EC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Pattern::PatternImpl::ZeroOrMore::~ZeroOrMore(MIL::Matching::Pattern::PatternImpl::ZeroOrMore *this)
{
  *this = &unk_2829E5788;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2829E5788;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Matching::Pattern::PatternImpl::OneOrMore::Compile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  LODWORD(v13) = 2;
  v6 = (*(*v5 + 8))(v5, &__p, a2);
  v7 = *(a3 + 16);
  v15[0] = 0;
  v15[1] = v6;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<MIL::Matching::Instruction const*>::__init_with_size[abi:ne200100]<MIL::Matching::Instruction const* const*,MIL::Matching::Instruction const* const*>(&__p, v15, &v16, 2uLL);
  v8 = (*(*v7 + 32))(v7, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v9 = (***(a1 + 8))(*(a1 + 8), v8, a3);
  (*(**(a3 + 16) + 40))(*(a3 + 16), v8, 0, v9);
  v10 = *(a3 + 16);
  __p = 0;
  LODWORD(v13) = 1;
  return (*(*v10 + 8))(v10, &__p, v9);
}

void sub_21803EEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Matching::Pattern::PatternImpl::OneOrMore::~OneOrMore(MIL::Matching::Pattern::PatternImpl::OneOrMore *this)
{
  *this = &unk_2829E57D0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2829E57D0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Matching::Pattern::PatternImpl::Chain::Compile(uint64_t (****a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v13 = 2;
  v6 = (*(*v5 + 8))(v5, &v12, a2);
  do
  {
    v6 = (**a1[3])(a1[3], v6, a3);
    v7 = a1[1];
    v8 = *v7;
  }

  while (a1);
  v9 = (*v8)(v7, v6, a3);
  v10 = *(a3 + 16);
  v12 = 0;
  v13 = 1;
  return (*(*v10 + 8))(v10, &v12, v9);
}

void MIL::Matching::Pattern::PatternImpl::Chain::~Chain(MIL::Matching::Pattern::PatternImpl::Chain *this)
{
  *this = &unk_2829E5818;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_2829E5818;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Matching::Pattern::PatternImpl::Via::Compile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 16);
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::__value_func[abi:ne200100](v7, a1 + 32);
  v5 = (*(*v4 + 16))(v4, v7, a2);
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100](v7);
  return v5;
}

void sub_21803F280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Matching::Pattern::PatternImpl::Via::~Via(void **this)
{
  *this = &unk_2829E5860;
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100]((this + 4));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2829E5860;
  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::~__value_func[abi:ne200100]((this + 4));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Matching::Pattern::PatternImpl::Parallel::Compile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) - *(a1 + 8) <= 0x10uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "At least two branches must be specified for Parallel() pattern");
    v10 = off_278235F80;
    v11 = MEMORY[0x277D82610];
LABEL_12:
    __cxa_throw(exception, v10, v11);
  }

  v5 = *(a3 + 16);
  v20[2] = 2;
  v6 = (*(*v5 + 8))(v5, v20, a2);
  v7 = (*(**(a3 + 16) + 48))(*(a3 + 16));
  result = (***(*(a1 + 16) - 16))();
  if (*a3)
  {
    if (*a3 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "TODO");
      v10 = MEMORY[0x277D82760];
      v11 = MEMORY[0x277D82600];
      goto LABEL_12;
    }
  }

  else
  {
    v12 = result;
    v13 = *(a1 + 8);
    v14 = (*(a1 + 16) - v13) >> 4;
    v15 = v14 - 2;
    if (v14 != 2)
    {
      v16 = 16 * v14 - 32;
      do
      {
        v17 = (***(*(a1 + 8) + v16))(*(*(a1 + 8) + v16), v7, a3);
        v12 = (*(**(a3 + 16) + 64))(*(a3 + 16), v17, v12, v7);
        v16 -= 16;
        --v15;
      }

      while (v15);
      v13 = *(a1 + 8);
    }

    v18 = (***v13)(*v13, v7, a3);
    v19 = (*(**(a3 + 16) + 64))(*(a3 + 16), v18, v12, v6);
    return (*(**(a3 + 16) + 56))(*(a3 + 16), v19);
  }

  return result;
}

void MIL::Matching::Pattern::PatternImpl::Parallel::~Parallel(MIL::Matching::Pattern::PatternImpl::Parallel *this)
{
  *this = &unk_2829E58A8;
  v1 = (this + 8);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2829E58A8;
  v2 = (this + 8);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x21CEAFEA0](this, 0xA1C4030951706);
}

uint64_t std::unordered_set<std::shared_ptr<MIL::IROperator const>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::shared_ptr<MIL::IROperator const>,std::hash<std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::shared_ptr<MIL::IROperator const>>,std::allocator<std::shared_ptr<MIL::IROperator const>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IROperator const>,std::shared_ptr<MIL::IROperator const> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::shared_ptr<MIL::IROperator const>,std::hash<std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::shared_ptr<MIL::IROperator const>>,std::allocator<std::shared_ptr<MIL::IROperator const>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IROperator const>,std::shared_ptr<MIL::IROperator const> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__function::__func<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0,std::allocator<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0>,BOOL ()(MIL::Builder::OperationBuilder &)>::~__func(void *a1)
{
  *a1 = &unk_2829E58F0;
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0,std::allocator<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0>,BOOL ()(MIL::Builder::OperationBuilder &)>::~__func(void *a1)
{
  *a1 = &unk_2829E58F0;
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0,std::allocator<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0>,BOOL ()(MIL::Builder::OperationBuilder &)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

BOOL std::__function::__func<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0,std::allocator<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0>,BOOL ()(MIL::Builder::OperationBuilder &)>::operator()(uint64_t a1, MIL::Builder::OperationBuilder *this)
{
  v3 = (a1 + 24);
  do
  {
    v3 = *v3;
  }

  while (v3 && MIL::Builder::OperationBuilder::GetOperator(this) != v3[2]);
  return v3 != 0;
}

uint64_t std::__function::__func<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0,std::allocator<MIL::Matching::Pattern::PatternImpl::OperationPredicate::Compile(MIL::Matching::Instruction *,MIL::Matching::anonymous namespace::CompileContext const&)::$_0>,BOOL ()(MIL::Builder::OperationBuilder &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<MIL::Matching::Instruction const*>::__init_with_size[abi:ne200100]<MIL::Matching::Instruction const* const*,MIL::Matching::Instruction const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21803FC6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::OperationPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E5980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::Maybe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E59D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::ZeroOrMore>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E5A20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::OneOrMore>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E5A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::Chain>::__shared_ptr_emplace[abi:ne200100]<MIL::Matching::Pattern const&,MIL::Matching::Pattern const&,std::allocator<MIL::Matching::Pattern::PatternImpl::Chain>,0>(void *result, uint64_t *a2, void *a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2829E5AC0;
  v4 = *a2;
  v3 = a2[1];
  result[3] = &unk_2829E5818;
  result[4] = v4;
  result[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  result[6] = *a3;
  result[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::Chain>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E5AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::Via>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E5B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__function::__func<MIL::Matching::Via(std::string)::$_0,std::allocator<MIL::Matching::Via(std::string)::$_0>,BOOL ()(MIL::Builder::DataDependency const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829E5B60;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<MIL::Matching::Via(std::string)::$_0,std::allocator<MIL::Matching::Via(std::string)::$_0>,BOOL ()(MIL::Builder::DataDependency const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2829E5B60;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<MIL::Matching::Via(std::string)::$_0,std::allocator<MIL::Matching::Via(std::string)::$_0>,BOOL ()(MIL::Builder::DataDependency const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2829E5B60;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<MIL::Matching::Via(std::string)::$_0,std::allocator<MIL::Matching::Via(std::string)::$_0>,BOOL ()(MIL::Builder::DataDependency const&)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<MIL::Matching::Via(std::string)::$_0,std::allocator<MIL::Matching::Via(std::string)::$_0>,BOOL ()(MIL::Builder::DataDependency const&)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

BOOL std::__function::__func<MIL::Matching::Via(std::string)::$_0,std::allocator<MIL::Matching::Via(std::string)::$_0>,BOOL ()(MIL::Builder::DataDependency const&)>::operator()(uint64_t a1, MIL::Builder::DataDependency *this)
{
  MIL::Builder::DataDependency::GetConsumer(this, &v12);
  if (!v12)
  {
    goto LABEL_14;
  }

  ConsumerParameterName = MIL::Builder::DataDependency::GetConsumerParameterName(this);
  v5 = *(ConsumerParameterName + 23);
  if (v5 >= 0)
  {
    v6 = *(ConsumerParameterName + 23);
  }

  else
  {
    v6 = ConsumerParameterName[1];
  }

  v7 = *(a1 + 31);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 16);
  }

  if (v6 == v7)
  {
    if (v5 < 0)
    {
      ConsumerParameterName = *ConsumerParameterName;
    }

    if (v8 >= 0)
    {
      v9 = (a1 + 8);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = memcmp(ConsumerParameterName, v9, v6) == 0;
  }

  else
  {
LABEL_14:
    v10 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v10;
}

void sub_21804058C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Matching::Via(std::string)::$_0,std::allocator<MIL::Matching::Via(std::string)::$_0>,BOOL ()(MIL::Builder::DataDependency const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::Matching::Pattern::PatternImpl::Via::Via(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_2829E5860;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  std::__function::__value_func<BOOL ()(MIL::Builder::DataDependency const&)>::__value_func[abi:ne200100](a1 + 32, a3);
  return a1;
}

void sub_218040678(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::Parallel>::__shared_ptr_emplace[abi:ne200100]<MIL::Util::Span<MIL::Matching::Pattern const,18446744073709551615ul>,std::allocator<MIL::Matching::Pattern::PatternImpl::Parallel>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2829E5BE0;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 24) = &unk_2829E58A8;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0;
  std::vector<MIL::Matching::Pattern>::__init_with_size[abi:ne200100]<MIL::Matching::Pattern const*,MIL::Matching::Pattern const*>(a1 + 32, v3, v3 + 16 * v4, (16 * v4) >> 4);
  return a1;
}

void std::__shared_ptr_emplace<MIL::Matching::Pattern::PatternImpl::Parallel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E5BE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::vector<MIL::Matching::Pattern>::__init_with_size[abi:ne200100]<MIL::Matching::Pattern const*,MIL::Matching::Pattern const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRValue const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21804089C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MIL::Matching::Pattern>,MIL::Matching::Pattern const*,MIL::Matching::Pattern const*,MIL::Matching::Pattern*>(uint64_t a1, void *a2, void *a3, void *a4)
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
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MIL::Matching::Pattern>,MIL::Matching::Pattern*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MIL::Matching::Pattern>,MIL::Matching::Pattern*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

unint64_t MIL::Matching::ParseQualifiedOpName@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  result = std::string_view::rfind[abi:ne200100](&v15, "::", 0xFFFFFFFFFFFFFFFFLL);
  if (result == -1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "'", 1);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v15, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "' is not a qualified operator name of the form 'opset_name::op_name'", 68);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v13);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v5 = v15;
  v6 = v16;
  if (v16 >= result)
  {
    v7 = result;
  }

  else
  {
    v7 = v16;
  }

  *a3 = v15;
  a3[1] = v7;
  v8 = v6 >= result + 2;
  v9 = v6 - (result + 2);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  a3[2] = &v5[result + 2];
  a3[3] = v9;
  return result;
}

void sub_218040AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t std::string_view::rfind[abi:ne200100](unsigned __int8 **a1, char *__s, unint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = strlen(__s);
  if (v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  v9 = v6 - v8;
  v10 = v8 + v7;
  if (v9 <= v7)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v5[v11];
  if (v7 && v11)
  {
    v15 = *__s;
    v14 = __s + 1;
    v13 = v15;
    v16 = v5;
    v17 = &v5[v11];
    do
    {
      v18 = v16 + 1;
      while (*v16 != v13)
      {
        ++v16;
        ++v18;
        if (v16 == v12)
        {
          goto LABEL_23;
        }
      }

      v19 = v7 - 1;
      v20 = v14;
      while (v19)
      {
        if (v18 == v12)
        {
          goto LABEL_23;
        }

        v22 = *v18++;
        v21 = v22;
        v23 = *v20++;
        --v19;
        if (v21 != v23)
        {
          goto LABEL_20;
        }
      }

      v17 = v16;
LABEL_20:
      ++v16;
    }

    while (v16 != v12);
  }

  else
  {
    v17 = &v5[v11];
  }

LABEL_23:
  if (v17 != v12 || v7 == 0)
  {
    return v17 - v5;
  }

  else
  {
    return -1;
  }
}

void MIL::Matching::GetOperatorByQualifiedName(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  MIL::Matching::ParseQualifiedOpName(a2, a3, &v20);
  v6 = v21;
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_20;
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  v19 = v21;
  if (v21)
  {
    memmove(&__dst, v20, v21);
  }

  *(&__dst + v6) = 0;
  v7 = (*(*a1 + 16))(a1, &__dst);
  if (v19 < 0)
  {
    operator delete(__dst);
  }

  if (!v7)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__dst);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst, "No such opset '", 15);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v20, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "'", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v17);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v8 = v23;
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_20:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  v19 = v23;
  if (v23)
  {
    memmove(&__dst, v22, v23);
  }

  *(&__dst + v8) = 0;
  MIL::IROpset::TryGetOperatorSharedPtr(v7, &__dst, a4);
  if (v19 < 0)
  {
    operator delete(__dst);
  }

  if (!*a4)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__dst);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst, "No such operator '", 18);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v22, v23);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "' in opset '", 12);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v20, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "'.", 2);
    v16 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v16, &v17);
    v16->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v16, off_278235F80, MEMORY[0x277D82610]);
  }
}

void sub_218040EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void MIL::Matching::GetOperatorsByQualifiedName(uint64_t a1@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  __src = a2;
  __len = a3;
  if (std::string_view::rfind[abi:ne200100](&__src, "::", 0xFFFFFFFFFFFFFFFFLL) == -1)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1065353216;
    (*(*a1 + 24))(&v19, a1);
    v6 = v19;
    for (i = v20; v6 != i; v6 += 24)
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, *v6, *(v6 + 8));
      }

      else
      {
        v8 = *v6;
        __dst.__r_.__value_.__r.__words[2] = *(v6 + 16);
        *&__dst.__r_.__value_.__l.__data_ = v8;
      }

      Opset = MIL::MILContext::GetOpset(a1);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v10 = __len;
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      __dst.__r_.__value_.__s.__data_[v10] = 0;
      MIL::IROpset::TryGetOperatorSharedPtr(Opset, &__dst.__r_.__value_.__l.__data_, &v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__hash_table<std::shared_ptr<MIL::IROperator const>,std::hash<std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::shared_ptr<MIL::IROperator const>>,std::allocator<std::shared_ptr<MIL::IROperator const>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IROperator const>,std::shared_ptr<MIL::IROperator const> const&>(a4, &v14);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    __dst.__r_.__value_.__r.__words[0] = &v19;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__dst);
    if (!*(a4 + 24))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "No such operator '", 18);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, __src, __len);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "' in all registered opsets.", 27);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &__dst);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  else
  {
    MIL::Matching::GetOperatorByQualifiedName(a1, __src, __len, &v19);
    std::unordered_set<std::shared_ptr<MIL::IROperator const>>::unordered_set(a4, &v19, 1);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }
}

void sub_218041280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a19);
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t std::unordered_set<std::shared_ptr<MIL::IROperator const>>::unordered_set(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::shared_ptr<MIL::IROperator const>,std::hash<std::shared_ptr<MIL::IROperator const>>,std::equal_to<std::shared_ptr<MIL::IROperator const>>,std::allocator<std::shared_ptr<MIL::IROperator const>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IROperator const>,std::shared_ptr<MIL::IROperator const> const&>(a1, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void MIL::Passes::CompressionOptions::CompressionOptions(MIL::Passes::CompressionOptions *this)
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void MIL::Passes::CompressionOptions::~CompressionOptions(MIL::Passes::CompressionOptions *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C4000313F17);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C4000313F17);
  }
}

void MIL::Passes::QuantizationOptions::~QuantizationOptions(MIL::Passes::QuantizationOptions *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1 + 8);
    MEMORY[0x21CEAFEA0](v1, 0x10A0C403EC3ECEDLL);
  }
}

void MIL::Passes::SparsificationOptions::~SparsificationOptions(MIL::Passes::SparsificationOptions *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C40451B5BE8);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x21CEAFEA0](v2, 0x1000C40451B5BE8);
  }
}

void MIL::Passes::PalettizationOptions::PalettizationOptions()
{
  std::unordered_set<std::string>::unordered_set(v0, 0, 0);
  operator new();
}

{
  operator new();
}

void sub_21804187C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x21CEAFEA0](v2, 0x10A0C409DF1B1DFLL);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MIL::Passes::PalettizationOptions::~PalettizationOptions(MIL::Passes::PalettizationOptions *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1 + 8);
    MEMORY[0x21CEAFEA0](v1, 0x10A0C409DF1B1DFLL);
  }
}

void MIL::Passes::CompressWeightsFp32ToFp16(MIL::Passes *this, MIL::Transform::ProgramTransformer *a2, const MIL::Passes::CompressionOptions *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  LOBYTE(v4) = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "const");
  MIL::Matching::Op();
}

void sub_218041C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](v23 - 56);
  MIL::Matching::Pattern::~Pattern(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::optional<std::pair<std::string,std::string>>::~optional(&a23);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::pair<std::string,std::string>>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void MIL::Passes::QuantizeWeights(MIL::Passes *this, MIL::Transform::ProgramTransformer *a2, const MIL::Passes::QuantizationOptions *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  LOBYTE(v4) = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "const");
  MIL::Matching::Op();
}

void sub_218041F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](v23 - 56);
  MIL::Matching::Pattern::~Pattern(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::optional<std::pair<std::string,std::string>>::~optional(&a23);
  _Unwind_Resume(a1);
}

void MIL::Passes::SparsifyWeights(MIL::Passes *this, MIL::Transform::ProgramTransformer *a2, const MIL::Passes::SparsificationOptions *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  LOBYTE(v4) = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "const");
  MIL::Matching::Op();
}

void sub_2180421FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](v23 - 56);
  MIL::Matching::Pattern::~Pattern(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::optional<std::pair<std::string,std::string>>::~optional(&a23);
  _Unwind_Resume(a1);
}

void MIL::Passes::PalettizeWeights(MIL::Passes *this, MIL::Transform::ProgramTransformer *a2, const MIL::Passes::PalettizationOptions *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  LOBYTE(v4) = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "const");
  MIL::Matching::Op();
}

void sub_2180424B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23)
{
  std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](v23 - 56);
  MIL::Matching::Pattern::~Pattern(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::optional<std::pair<std::string,std::string>>::~optional(&a23);
  _Unwind_Resume(a1);
}

uint64_t MIL::Passes::QuantizationOptions::QuantizationOptionsImpl::QuantizationOptionsImpl(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  std::unordered_set<std::string>::unordered_set(a1 + 8, a4);
  *(a1 + 48) = a5;
  if ((a3 - 6) <= 0xFFFFFFFD)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MIL::IRDataTypeToString(a3, &v14);
    v10 = std::string::insert(&v14, 0, "Invalid floatType ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v15, ", choices are float32 or float16.");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v16);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_218042658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v30 & 1) == 0)
    {
LABEL_10:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v28 + 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2);
  }

  return a1;
}

uint64_t MIL::Passes::SparsificationOptions::SparsificationOptionsImpl::SparsificationOptionsImpl(uint64_t result, int a2, uint64_t a3, float a4)
{
  *result = a2;
  *(result + 4) = a4;
  *(result + 8) = a3;
  if (a2 == 1 && a4 < 0.0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid threshold, must >= 0 but get ", 37);
    v5 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v9);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v4 = a4 > 1.0;
  if (a4 < 0.0)
  {
    v4 = 1;
  }

  if (a2 == 2 && v4)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid percentile, it is required that 0 <= percentile <= 1 but get ", 69);
    v7 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ".", 1);
    v8 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v8, &v9);
    v8->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v8, off_278235F80, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_21804290C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

uint64_t MIL::Passes::PalettizationOptions::PalettizationOptionsImpl::PalettizationOptionsImpl(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  std::unordered_set<std::string>::unordered_set(a1 + 8, a4);
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a7;
  *(a1 + 72) = a8;
  if (a2 == 3)
  {
    if (a3 != -1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v27, a3);
      v18 = std::string::insert(&v27, 0, "nbits must be -1 in the UNIQUE mode, but get ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v28, ".");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::logic_error::logic_error(exception, &v29);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }

    if (a6 | a5)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v15, "unique palettization per-channel is not allowed because nbits might not be deterministic.");
      goto LABEL_12;
    }
  }

  else if ((a3 - 1) >= 4 && a3 != 6 && a3 != 8)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v27, a3);
    v23 = std::string::insert(&v27, 0, "nbits must be one of {1, 2, 3, 4, 6, 8} in non-UNIQUE mode, but get ");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v28, ".");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(v22, &v29);
    v22->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v22, off_278235F80, MEMORY[0x277D82610]);
  }

  if (a2 != 1 && a7 >= 2)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "vector palettization can only be used in KMEANS mode.");
LABEL_12:
    v15->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v15, off_278235F80, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_218042C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v30 & 1) == 0)
    {
LABEL_10:
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v28 + 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

__n128 std::__function::__func<MIL::Passes::CompressWeightsFp32ToFp16(MIL::Transform::ProgramTransformer &,MIL::Passes::CompressionOptions const&)::$_0,std::allocator<MIL::Passes::CompressWeightsFp32ToFp16(MIL::Transform::ProgramTransformer &,MIL::Passes::CompressionOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829E5C30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MIL::Passes::CompressWeightsFp32ToFp16(MIL::Transform::ProgramTransformer &,MIL::Passes::CompressionOptions const&)::$_0,std::allocator<MIL::Passes::CompressWeightsFp32ToFp16(MIL::Transform::ProgramTransformer &,MIL::Passes::CompressionOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  MIL::Matching::MatchView::MatchView(&v9, a3);
  std::string::basic_string[abi:ne200100]<0>(__p, "val");
  MIL::Matching::MatchView::GetAttribute(&v9, __p, &v13);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = (*(*v13 + 32))(v13);
  if ((*(*v5 + 16))(v5) >= *(a1 + 8))
  {
    v6 = (*(*v13 + 32))(v13);
    v7 = MIL::IRValueType::AsTensorType(v6);
    if ((*(*v7 + 88))(v7) == 5)
    {
      MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
      v12[0] = v13;
      v12[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Passes::CompressFp32ValueToFp16(MILContext, v12);
    }
  }

  MIL::Transform::MatchContext::RejectMatch(a2);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  MIL::Matching::MatchView::~MatchView(&v9);
}

void sub_218042FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v27 - 88);
  v29 = *(v27 - 40);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Passes::CompressWeightsFp32ToFp16(MIL::Transform::ProgramTransformer &,MIL::Passes::CompressionOptions const&)::$_0,std::allocator<MIL::Passes::CompressWeightsFp32ToFp16(MIL::Transform::ProgramTransformer &,MIL::Passes::CompressionOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Passes::anonymous namespace::AddOperationWithAttrsMap(MIL::Transform::MatchContext *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[48] = 0;
  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    if (*(a2 + 8) != 5 || (**a2 == 829648745 ? (v12 = *(*a2 + 4) == 53) : (v12 = 0), !v12))
    {
      if (*(a2 + 8) != 5 || (**a2 == 829648745 ? (v13 = *(*a2 + 4) == 54) : (v13 = 0), !v13))
      {
        if (*(a2 + 8) != 5 || (**a2 == 829648745 ? (v14 = *(*a2 + 4) == 55) : (v14 = 0), !v14))
        {
          if (*(a2 + 8) != 5)
          {
            goto LABEL_38;
          }

          v11 = *a2;
LABEL_34:
          v15 = *v11;
          v16 = *(v11 + 4);
          if (v15 == 829648745 && v16 == 56)
          {
            MIL::Transform::MatchContext::GetMILContextPtr(this, &v40);
            std::string::basic_string[abi:ne200100]<0>(__p, "ios17");
            MIL::Passes::RegisterOpsetIfNot(&v40, __p);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(__p[0]);
            }

            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }

            std::operator+<char>();
            if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = &v42;
            }

            else
            {
              v37 = v42.__r_.__value_.__r.__words[0];
            }

            __p[0] = 0;
            __p[1] = 0;
            MIL::Transform::MatchContext::AddOperationWithSpecifiedOpsetName(this, v37, __p);
          }

LABEL_38:
          if (v7 >= 0)
          {
            v18 = *(a2 + 23);
          }

          else
          {
            v18 = *(a2 + 8);
          }

          v19 = &v42;
          std::string::basic_string[abi:ne200100](&v42, v18 + 2);
          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v19 = v42.__r_.__value_.__r.__words[0];
          }

          if (v18)
          {
            if (*(a2 + 23) >= 0)
            {
              v20 = a2;
            }

            else
            {
              v20 = *a2;
            }

            memmove(v19, v20, v18);
          }

          strcpy(v19 + v18, "::");
          v21 = *(a3 + 23);
          if (v21 >= 0)
          {
            v22 = a3;
          }

          else
          {
            v22 = *a3;
          }

          if (v21 >= 0)
          {
            v23 = *(a3 + 23);
          }

          else
          {
            v23 = *(a3 + 8);
          }

          v24 = std::string::append(&v42, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v39 = v24->__r_.__value_.__r.__words[2];
          *__p = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          if (v39 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          *&v42.__r_.__value_.__l.__data_ = 0uLL;
          MIL::Transform::MatchContext::AddOperation(this, v26, &v42);
        }
      }

LABEL_60:
      if (v7 >= 0)
      {
        v27 = *(a2 + 23);
      }

      else
      {
        v27 = *(a2 + 8);
      }

      v28 = &v42;
      std::string::basic_string[abi:ne200100](&v42, v27 + 2);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v42.__r_.__value_.__r.__words[0];
      }

      if (v27)
      {
        if (*(a2 + 23) >= 0)
        {
          v29 = a2;
        }

        else
        {
          v29 = *a2;
        }

        memmove(v28, v29, v27);
      }

      strcpy(v28 + v27, "::");
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v31 = a3;
      }

      else
      {
        v31 = *a3;
      }

      if (v30 >= 0)
      {
        v32 = *(a3 + 23);
      }

      else
      {
        v32 = *(a3 + 8);
      }

      v33 = std::string::append(&v42, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v39 = v33->__r_.__value_.__r.__words[2];
      *__p = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (v39 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      *&v42.__r_.__value_.__l.__data_ = 0uLL;
      MIL::Transform::MatchContext::AddOperation(this, v35, &v42);
    }
  }

  else
  {
    if (v7 != 5)
    {
      goto LABEL_38;
    }

    if (*a2 != 829648745 || *(a2 + 4) != 53)
    {
      if (*a2 != 829648745 || *(a2 + 4) != 54)
      {
        v10 = *a2 == 829648745 && *(a2 + 4) == 55;
        v11 = a2;
        if (!v10)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_60;
    }
  }

  MIL::Transform::MatchContext::GetMILContextPtr(this, &v43);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios16");
  MIL::Passes::RegisterOpsetIfNot(&v43, __p);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  std::operator+<char>();
  if (v39 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  *&v42.__r_.__value_.__l.__data_ = 0uLL;
  MIL::Transform::MatchContext::AddOperationWithSpecifiedOpsetName(this, v36, &v42);
}

void sub_2180435AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::optional<std::pair<std::string,std::string>>::~optional(v28);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_21804369C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::string>::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  return a1;
}

__n128 std::__optional_storage_base<std::pair<std::string,std::string>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::string,std::string>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {

      std::pair<std::string,std::string>::operator=[abi:ne200100](a1, a2);
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 48) = 0;
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<MIL::Passes::QuantizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::QuantizationOptions const&)::$_0,std::allocator<MIL::Passes::QuantizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::QuantizationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829E5CB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MIL::Passes::QuantizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::QuantizationOptions const&)::$_0,std::allocator<MIL::Passes::QuantizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::QuantizationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  MIL::Matching::MatchView::MatchView(&v20, a3);
  std::string::basic_string[abi:ne200100]<0>(&__p, "val");
  MIL::Matching::MatchView::GetAttribute(&v20, &__p, &v26);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v5 = (*(*v26 + 32))(v26);
  if ((*(*v5 + 16))(v5) >= *(**(a1 + 8) + 48))
  {
    v6 = (*(*v26 + 32))(v26);
    v7 = MIL::IRValueType::AsTensorType(v6);
    if ((*(*v7 + 88))(v7) == *(**(a1 + 8) + 4))
    {
      v8 = (*(*v26 + 32))(v26);
      v9 = MIL::IRValueType::AsTensorType(v8);
      if (!MIL::IRTensorValueType::IsScalar(v9))
      {
        Operation = MIL::Matching::MatchView::GetOperation(&v20);
        v24 = 0;
        v25 = 0;
        v11 = **(a1 + 8);
        std::string::basic_string[abi:ne200100]<0>(&__p, "output");
        v13 = v12;
        if (v23 < 0)
        {
          operator delete(__p);
          if ((v13 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else if ((v12 & 1) == 0)
        {
          goto LABEL_6;
        }

        MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
        v15 = v26;
        v16 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = ***(a1 + 8);
        v18 = v25;
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            __p = v15;
            v22 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Passes::QuantizeValueSymmetricInt8(MILContext, &__p, v18 | 0x100000000);
          }

          if (v17 == 4)
          {
            __p = v15;
            v22 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Passes::QuantizeValueNoZeroPointUInt8(MILContext, &__p, v18 | 0x100000000);
          }
        }

        else
        {
          if (v17 == 1)
          {
            __p = v15;
            v22 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Passes::QuantizeValueAsymmetricInt8(MILContext, &__p, v18 | 0x100000000);
          }

          if (v17 == 2)
          {
            __p = v15;
            v22 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Passes::QuantizeValueAsymmetricUInt8(MILContext, &__p, v18 | 0x100000000);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unsupported quantization mode.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }
  }

LABEL_6:
  MIL::Transform::MatchContext::RejectMatch(a2);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  MIL::Matching::MatchView::~MatchView(&v20);
}

void sub_218043CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v29 = *(v27 - 40);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  MIL::Matching::MatchView::~MatchView(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Passes::QuantizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::QuantizationOptions const&)::$_0,std::allocator<MIL::Passes::QuantizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::QuantizationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t MIL::Passes::anonymous namespace::InferIOChannels(MIL::Builder::OperationBuilder::OperationBuilderImpl **this, void *a2, unsigned int *a3, uint64_t *a4, void *a5)
{
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 1) == 5 && **a3 == 1970302569 && *(*a3 + 4) == 116)
    {
      goto LABEL_17;
    }

    if (*(a3 + 1) != 6)
    {
      goto LABEL_140;
    }

    v10 = *a3;
    goto LABEL_12;
  }

  if (*(a3 + 23) != 5)
  {
    v10 = a3;
    if (*(a3 + 23) != 6)
    {
      goto LABEL_140;
    }

LABEL_12:
    v12 = *v10;
    v13 = *(v10 + 2);
    if (v12 != 1886680431 || v13 != 29813)
    {
      goto LABEL_140;
    }

    goto LABEL_17;
  }

  if (*a3 != 1970302569 || *(a3 + 4) != 116)
  {
LABEL_140:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Only input or output mode is supported.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

LABEL_17:
  OutputType = MIL::Builder::OperationBuilder::GetOutputType(this, 0);
  v16 = MIL::IRValueType::AsTensorType(OutputType);
  v17 = MIL::IRTensorValueType::Rank(v16);
  v18 = v17;
  v19 = *(a3 + 23);
  if (v19 < 0)
  {
    if (*(a3 + 1) != 5)
    {
      goto LABEL_29;
    }

    v20 = *a3;
  }

  else
  {
    v20 = a3;
    if (v19 != 5)
    {
      goto LABEL_29;
    }
  }

  v21 = *v20;
  v22 = *(v20 + 4);
  v23 = v21 == 1970302569 && v22 == 116;
  if (v23 && v17 == 1)
  {
    return 0;
  }

LABEL_29:
  MIL::Builder::OperationBuilder::GetChildOperations(this, v88);
  if (v90)
  {
    v84 = v18;
    v25 = v89;
    if (v89)
    {
      v82 = a4;
      v83 = a5;
      v26 = -1;
      while (1)
      {
        v28 = v25[2];
        v27 = v25[3];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        Operator = MIL::Builder::OperationBuilder::GetOperator(v28);
        v30 = (*(*Operator + 16))(Operator);
        if (std::string::find(v30, 46, 0) == -1)
        {
          if (*(v30 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v87, *v30, *(v30 + 8));
          }

          else
          {
            v32 = *v30;
            v87.__r_.__value_.__r.__words[2] = *(v30 + 16);
            *&v87.__r_.__value_.__l.__data_ = v32;
          }
        }

        else
        {
          v31 = std::string::find(v30, 46, 0);
          std::string::basic_string(&v87, v30, v31 + 1, 0xFFFFFFFFFFFFFFFFLL, __p);
        }

        if (a2[3] && !std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v87.__r_.__value_.__l.__data_))
        {
          v49 = 0;
          goto LABEL_127;
        }

        v33 = *(a3 + 23);
        if (v33 < 0)
        {
          if (*(a3 + 1) != 6)
          {
LABEL_52:
            v38 = 1;
            goto LABEL_53;
          }

          v34 = *a3;
        }

        else
        {
          v34 = a3;
          if (v33 != 6)
          {
            goto LABEL_52;
          }
        }

        v35 = *v34;
        v36 = *(v34 + 2);
        v38 = v35 != 1886680431 || v36 != 29813;
LABEL_53:
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          size = v87.__r_.__value_.__l.__size_;
          if (v87.__r_.__value_.__l.__size_ != 14)
          {
            goto LABEL_84;
          }

          v40 = v87.__r_.__value_.__r.__words[0];
        }

        else
        {
          v39 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
          if (HIBYTE(v87.__r_.__value_.__r.__words[2]) != 14)
          {
            goto LABEL_81;
          }

          v40 = &v87;
        }

        v42 = v40->__r_.__value_.__r.__words[0];
        v43 = *(v40->__r_.__value_.__r.__words + 6);
        if (v42 == 0x6172745F766E6F63 && v43 == 0x65736F70736E6172)
        {
          Output = MIL::Builder::OperationBuilder::GetOutput(this, 0);
          std::string::basic_string[abi:ne200100]<0>(__p, "weight");
          ArgumentForParameter = MIL::Builder::OperationBuilder::GetArgumentForParameter(v28, __p, 0);
          if (v86 < 0)
          {
            operator delete(__p[0]);
          }

          if (Output == ArgumentForParameter)
          {
            v47 = *(a3 + 23);
            if (v47 < 0)
            {
              if (*(a3 + 1) == 6)
              {
                v48 = *a3;
LABEL_72:
                v50 = *v48;
                v51 = *(v48 + 2);
                v38 = v50 == 1886680431 && v51 == 29813;
                goto LABEL_79;
              }
            }

            else
            {
              v48 = a3;
              if (v47 == 6)
              {
                goto LABEL_72;
              }
            }

            v38 = 0;
          }
        }

LABEL_79:
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          size = v87.__r_.__value_.__l.__size_;
LABEL_84:
          if (size != 6)
          {
            goto LABEL_120;
          }

          v53 = v87.__r_.__value_.__r.__words[0];
          goto LABEL_86;
        }

        v39 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
LABEL_81:
        if (v39 != 6)
        {
          goto LABEL_120;
        }

        v53 = &v87;
LABEL_86:
        data = v53->__r_.__value_.__l.__data_;
        v55 = WORD2(v53->__r_.__value_.__r.__words[0]);
        if (data != 1836343661 || v55 != 27765)
        {
          goto LABEL_120;
        }

        v57 = MIL::Builder::OperationBuilder::GetOutput(this, 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "y");
        v58 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v28, __p, 0);
        if (v86 < 0)
        {
          operator delete(__p[0]);
        }

        if (v57 != v58)
        {
          goto LABEL_120;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "transpose_y");
        v59 = MIL::Builder::OperationBuilder::GetArgumentForParameter(v28, __p, 0);
        Value = MIL::Builder::Variable::TryGetValue(v59);
        v61 = MIL::IRValue::GetScalar<BOOL>(Value);
        if (v86 < 0)
        {
          operator delete(__p[0]);
        }

        v62 = *(a3 + 23);
        if (v61)
        {
          if ((v62 & 0x80) == 0)
          {
            v63 = a3;
            v38 = v84 - 1;
            if (v62 != 6)
            {
              goto LABEL_120;
            }

LABEL_105:
            v65 = bswap64(*v63 | (*(v63 + 2) << 32));
            v66 = v65 >= 0x6F75747075740000;
            v67 = v65 > 0x6F75747075740000;
            v68 = !v66;
            if (v67 == v68)
            {
              v69 = -2;
            }

            else
            {
              v69 = -1;
            }

LABEL_119:
            v38 = v69 + v84;
            goto LABEL_120;
          }

          v38 = v84 - 1;
          if (*(a3 + 1) == 6)
          {
            v63 = *a3;
            goto LABEL_105;
          }
        }

        else
        {
          if ((v62 & 0x80) == 0)
          {
            v64 = a3;
            v38 = v84 - 2;
            if (v62 != 6)
            {
              goto LABEL_120;
            }

LABEL_113:
            v70 = bswap64(*v64 | (*(v64 + 2) << 32));
            v66 = v70 >= 0x6F75747075740000;
            v71 = v70 > 0x6F75747075740000;
            v72 = !v66;
            if (v71 == v72)
            {
              v69 = -1;
            }

            else
            {
              v69 = -2;
            }

            goto LABEL_119;
          }

          v38 = v84 - 2;
          if (*(a3 + 1) == 6)
          {
            v64 = *a3;
            goto LABEL_113;
          }
        }

LABEL_120:
        if (v26 >= 0)
        {
          v73 = v26;
        }

        else
        {
          v73 = v38;
        }

        v49 = v26 == v38 || v26 < 0;
        v26 = v73;
LABEL_127:
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
          if (!v27)
          {
            goto LABEL_130;
          }

LABEL_129:
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          goto LABEL_130;
        }

        if (v27)
        {
          goto LABEL_129;
        }

LABEL_130:
        if (!v49)
        {
          goto LABEL_135;
        }

        v25 = *v25;
        if (!v25)
        {
          v76 = v26;
          a4 = v82;
          a5 = v83;
          goto LABEL_142;
        }
      }
    }

    v76 = -1;
LABEL_142:
    *a4 = v76;
    v77 = MIL::Builder::OperationBuilder::GetOutputType(this, 0);
    v78 = MIL::IRValueType::AsTensorType(v77);
    v79 = *(*(*(*v78 + 96))(v78) + 8 * *a4);
    v80 = (*(*v79 + 16))(v79);
    *a5 = (*(*v80 + 48))(v80);
    v24 = 1;
  }

  else
  {
LABEL_135:
    v24 = 0;
  }

  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v88);
  return v24;
}

void sub_218044490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&a26);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<MIL::Passes::SparsifyWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::SparsificationOptions const&)::$_0,std::allocator<MIL::Passes::SparsifyWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::SparsificationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829E5D30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MIL::Passes::SparsifyWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::SparsificationOptions const&)::$_0,std::allocator<MIL::Passes::SparsifyWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::SparsificationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  MIL::Matching::MatchView::MatchView(&v14, a3);
  std::string::basic_string[abi:ne200100]<0>(__p, "val");
  MIL::Matching::MatchView::GetAttribute(&v14, __p, &v22);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = (*(*v22 + 32))(v22);
  if ((*(*v5 + 16))(v5) >= *(**(a1 + 8) + 8))
  {
    v6 = (*(*v22 + 32))(v22);
    v7 = MIL::IRValueType::AsTensorType(v6);
    v8 = (*(*v7 + 88))(v7);
    if (v8 <= 0xE && ((1 << v8) & 0x4230) != 0)
    {
      v19 = 0u;
      v20 = 0u;
      v21 = 1065353216;
      v10 = ***(a1 + 8);
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
          v17 = v22;
          v18 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Passes::SparsifyWithPercentile(MILContext, &v17, *(**(a1 + 8) + 4));
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "invalid sparsification mode.");
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
      }

      v12 = MIL::Transform::MatchContext::GetMILContext(a2);
      v17 = v22;
      v18 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Passes::SparsifyWithThreshold(v12, &v17, *(**(a1 + 8) + 4));
    }
  }

  MIL::Transform::MatchContext::RejectMatch(a2);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  MIL::Matching::MatchView::~MatchView(&v14);
}

void sub_2180448B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v28 - 96);
  v30 = *(v28 - 40);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  MIL::Matching::MatchView::~MatchView(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Passes::SparsifyWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::SparsificationOptions const&)::$_0,std::allocator<MIL::Passes::SparsifyWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::SparsificationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MIL::Passes::PalettizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::PalettizationOptions const&)::$_0,std::allocator<MIL::Passes::PalettizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::PalettizationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2829E5DB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MIL::Passes::PalettizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::PalettizationOptions const&)::$_0,std::allocator<MIL::Passes::PalettizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::PalettizationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::operator()(uint64_t a1, MIL::Transform::MatchContext *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  MIL::Matching::MatchView::MatchView(&v35, a3);
  std::string::basic_string[abi:ne200100]<0>(__p, "val");
  MIL::Matching::MatchView::GetAttribute(&v35, __p, &v51);
  if (SBYTE7(v37) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = (*(*v51 + 32))(v51);
  if ((*(*v5 + 16))(v5) < *(**(a1 + 8) + 72))
  {
    goto LABEL_26;
  }

  v6 = (*(*v51 + 32))(v51);
  v7 = MIL::IRValueType::AsTensorType(v6);
  v8 = (*(*v7 + 88))(v7);
  if (v8 > 0xE || ((1 << v8) & 0x4230) == 0)
  {
    goto LABEL_26;
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  if (*(*v10 + 6) || *(v11 + 7) || v11[1] == 3 || *(v11 + 8) >= 2uLL)
  {
    Operation = MIL::Matching::MatchView::GetOperation(&v35);
    v49 = 0;
    v50 = 0;
    v13 = **(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "output");
    v15 = v14;
    if (SBYTE7(v37) < 0)
    {
      operator delete(__p[0]);
      if ((v15 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if ((v14 & 1) == 0)
    {
      goto LABEL_26;
    }

    v48 = 0;
    v47 = 0;
    v16 = **(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "input");
    v18 = v17;
    if (SBYTE7(v37) < 0)
    {
      operator delete(__p[0]);
      if (v18)
      {
LABEL_16:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v19 = *(a1 + 8);
        v20 = *v19;
        v21 = *(*v19 + 6);
        if (v21)
        {
          if (v49 % v21)
          {
            goto LABEL_21;
          }

          __p[0] = v50;
          __p[1] = v21;
          std::vector<MIL::Passes::BlockInfo>::push_back[abi:ne200100](&v44, __p);
          v19 = *(a1 + 8);
          v20 = *v19;
        }

        v22 = *(v20 + 7);
        if (v22)
        {
          if (v47 % v22)
          {
            goto LABEL_21;
          }

          __p[0] = v48;
          __p[1] = v22;
          std::vector<MIL::Passes::BlockInfo>::push_back[abi:ne200100](&v44, __p);
          v19 = *(a1 + 8);
          v20 = *v19;
        }

        v41 = *(v20 + 8);
        LOBYTE(v42) = 0;
        v43 = 0;
        v25 = *(*v19 + 8);
        if (v25 >= 2)
        {
          v26 = *(*v19 + 6);
          if (v26 && v26 % v25 || v49 % v25)
          {
LABEL_21:
            MIL::Transform::MatchContext::RejectMatch(a2);
            if (v44)
            {
              v45 = v44;
              operator delete(v44);
            }

            goto LABEL_59;
          }

          v42 = v50;
          v43 = 1;
        }

        *__p = 0u;
        v37 = 0u;
        v38 = 1065353216;
        v30 = **v19;
        if (v30 != 2)
        {
          if (v30 == 1)
          {
            MILContext = MIL::Transform::MatchContext::GetMILContext(a2);
            v39 = v51;
            v40 = v52;
            if (v52)
            {
              atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MIL::Passes::PalettizePerBlockKmeans(MILContext, &v39, *(**(a1 + 8) + 4), &v41, &v44);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "invalid palettization mode.");
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
        }

        v32 = MIL::Transform::MatchContext::GetMILContext(a2);
        v39 = v51;
        v40 = v52;
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::Passes::PalettizePerBlockUniform(v32, &v39, *(**(a1 + 8) + 4), &v44);
      }
    }

    else if (v17)
    {
      goto LABEL_16;
    }

LABEL_26:
    MIL::Transform::MatchContext::RejectMatch(a2);
    goto LABEL_59;
  }

  memset(v54, 0, sizeof(v54));
  v55 = 1065353216;
  v23 = **v10;
  if (v23 != 3)
  {
    if (v23 != 2)
    {
      if (v23 == 1)
      {
        v24 = MIL::Transform::MatchContext::GetMILContext(a2);
        v44 = v51;
        v45 = v52;
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::Passes::PalettizeKmeans(v24, &v44, *(**(a1 + 8) + 4));
      }

      v34 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v34, "invalid palettization mode.");
      v34->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v34, off_278235F80, MEMORY[0x277D82610]);
    }

    v27 = MIL::Transform::MatchContext::GetMILContext(a2);
    v44 = v51;
    v45 = v52;
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Passes::PalettizeUniform(v27, &v44, *(**(a1 + 8) + 4));
  }

  v53[0] = -1;
  v28 = MIL::Transform::MatchContext::GetMILContext(a2);
  v44 = v51;
  v45 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Passes::PalettizeUnique(v28, &v44, v53, __p);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__move_assign(v54, __p);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(__p);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v53[0] != -1)
  {
    OpsetName = MIL::Matching::MatchView::GetOpsetName(&v35);
    std::string::basic_string[abi:ne200100]<0>(v53, "constexpr_lut_to_dense");
  }

  MIL::Transform::MatchContext::RejectMatch(a2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v54);
LABEL_59:
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  MIL::Matching::MatchView::~MatchView(&v35);
}

void sub_2180452B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v32 - 96);
  v34 = *(v32 - 136);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  MIL::Matching::MatchView::~MatchView(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::Passes::PalettizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::PalettizationOptions const&)::$_0,std::allocator<MIL::Passes::PalettizeWeights(MIL::Transform::ProgramTransformer &,MIL::Passes::PalettizationOptions const&)::$_0>,void ()(MIL::Transform::MatchContext &,MIL::Matching::MatchView)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<MIL::Passes::BlockInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Passes::BlockInfo>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void *std::vector<std::pair<char const*,MIL::Transform::ArgumentDescription>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MIL::Transform::ArgumentDescription>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_218045674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<char const*,MIL::Transform::ArgumentDescription>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Passes::BlockInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::pair<char const*,MIL::Transform::ArgumentDescription>::pair[abi:ne200100]<char const*,std::shared_ptr<MIL::IRValue const> const&,0>(void *a1, void *a2, uint64_t *a3)
{
  *a1 = *a2;
  v4 = a1 + 1;
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Transform::ArgumentDescription::ArgumentDescription(v4, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_218045730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Passes::RegisterOpsetIfNot(MIL::Opsets::Common::ios17 **a1, _DWORD *a2)
{
  result = (*(**a1 + 16))(*a1);
  if (result)
  {
    return result;
  }

  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    if (*(a2 + 1) != 5 || (**a2 == 829648745 ? (v10 = *(*a2 + 4) == 53) : (v10 = 0), !v10))
    {
      if (*(a2 + 1) != 5 || (**a2 == 829648745 ? (v11 = *(*a2 + 4) == 54) : (v11 = 0), !v11))
      {
        if (*(a2 + 1) != 5 || (**a2 == 829648745 ? (v12 = *(*a2 + 4) == 55) : (v12 = 0), !v12))
        {
          if (*(a2 + 1) != 5)
          {
            goto LABEL_52;
          }

          a2 = *a2;
          goto LABEL_35;
        }

LABEL_49:
        v17 = *a1;

        return MIL::Opsets::Common::ios17::Registerios17Opsets(v17, v5);
      }

LABEL_46:
      v16 = *a1;

      return MIL::Opsets::Common::ios16::Registerios16Opsets(v16, v5);
    }

LABEL_43:
    v15 = *a1;

    return MIL::Opsets::Common::ios15::Registerios15Opsets(v15, v5);
  }

  if (v6 != 5)
  {
    goto LABEL_52;
  }

  if (*a2 == 829648745 && *(a2 + 4) == 53)
  {
    goto LABEL_43;
  }

  if (*a2 == 829648745 && *(a2 + 4) == 54)
  {
    goto LABEL_46;
  }

  if (*a2 == 829648745 && *(a2 + 4) == 55)
  {
    goto LABEL_49;
  }

LABEL_35:
  if (*a2 != 829648745 || *(a2 + 4) != 56)
  {
LABEL_52:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unsupported opset name");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = *a1;

  return MIL::Opsets::Common::ios18::Registerios18Opsets(v14, v5);
}

void MIL::Passes::CompressFp32ValueToFp16(MIL::IRConstantDimension *a1, uint64_t *a2)
{
  v7[18] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = 0;
  }

  v5 = v3;
  MIL::ValueInferenceUtils::GetCastedTensor<MIL::Fp16>(&v5, v7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::ToIRTensorValue(v7, a1);
}

void sub_218045B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = v30 + 40;
  v33 = -80;
  do
  {
    v32 = std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(v32) - 40;
    v33 += 40;
  }

  while (v33);
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(&a21);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::QuantizeValueAsymmetricUInt8(MIL::IRConstantDimension *a1, uint64_t *a2, uint64_t a3)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38[0] = v6;
  v38[1] = v5;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v39);
  v51[0] = &unk_2829E6000;
  v51[1] = MIL::MathOps::MinimumOp<float>;
  v51[3] = v51;
  MIL::ValueInference::Tensor<float>::Reduce(v39, &v37, 1, v51, &v31);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v51);
  v50[0] = &unk_2829E6000;
  v50[1] = MIL::MathOps::MaximumOp<float>;
  v50[3] = v50;
  MIL::ValueInference::Tensor<float>::Reduce(v39, &v37, 1, v50, &v25);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v50);
  v49[0] = &unk_2829E60B0;
  v49[1] = MIL::MathOps::NegateOp<float>;
  v49[3] = v49;
  MIL::ValueInference::Tensor<float>::ForEach(&v31, v49, &v21);
  v48[0] = &unk_2829E60B0;
  v48[1] = MIL::MathOps::ReluOp<float>;
  v48[3] = v48;
  MIL::ValueInference::Tensor<float>::ForEach(&v21, v48, v24);
  v47[0] = &unk_2829E60B0;
  v47[1] = MIL::MathOps::NegateOp<float>;
  v47[3] = v47;
  MIL::ValueInference::Tensor<float>::ForEach(v24, v47, &__src);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = v41;
  v33 = v42;
  v42 = 0;
  v41 = 0uLL;
  if (v34)
  {
    *(&v34 + 1) = v34;
    operator delete(v34);
  }

  v34 = v43;
  v8 = v44;
  v44 = 0;
  v43 = 0uLL;
  v35 = v8;
  v36 = v45;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v47);
  MIL::ValueInference::Tensor<float>::~Tensor(v24);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v48);
  MIL::ValueInference::Tensor<float>::~Tensor(&v21);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v49);
  v46[0] = &unk_2829E60B0;
  v46[1] = MIL::MathOps::ReluOp<float>;
  v46[3] = v46;
  MIL::ValueInference::Tensor<float>::ForEach(&v25, v46, &__src);
  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }

  v26 = v41;
  v27 = v42;
  v42 = 0;
  v41 = 0uLL;
  if (v28)
  {
    *(&v28 + 1) = v28;
    operator delete(v28);
  }

  v28 = v43;
  v9 = v44;
  v44 = 0;
  v43 = 0uLL;
  v29 = v9;
  v30 = v45;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v46);
  v41 = 0uLL;
  __src = 0;
  LODWORD(v18) = 1132396544;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v21, &v18, &v18 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(v24, &__src, &v21);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (__src)
  {
    *&v41 = __src;
    operator delete(__src);
  }

  v41 = 0uLL;
  __src = 0;
  LODWORD(v15) = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v18, &v15, &v15 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(&v21, &__src, &v18);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (__src)
  {
    *&v41 = __src;
    operator delete(__src);
  }

  v41 = 0uLL;
  __src = 0;
  LODWORD(v14[0]) = 1132396544;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v15, v14, v14 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(&v18, &__src, &v15);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (__src)
  {
    *&v41 = __src;
    operator delete(__src);
  }

  memset(v12, 0, sizeof(v12));
  if ((a3 & 0x100000000) != 0)
  {
    v10 = MIL::ParserContext::GetProgramFirstSet(v39);
    if (a3 < 0)
    {
      a3 = (((v10[1] - *v10) >> 3) + a3);
    }

    else
    {
      a3 = a3;
    }

    __src = *(*MIL::ParserContext::GetProgramFirstSet(v39) + 8 * a3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v12, &__src, &v41, 1uLL);
  }

  v11 = (*(*v6 + 32))(v6);
  (*(*v11 + 88))(v11);
}

void sub_21804637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a21);
  MIL::ValueInference::Tensor<float>::~Tensor(&a29);
  MIL::ValueInference::Tensor<float>::~Tensor(&a37);
  MIL::ValueInference::Tensor<float>::~Tensor(&a45);
  MIL::ValueInference::Tensor<float>::~Tensor(&a53);
  MIL::ValueInference::Tensor<float>::~Tensor(&a61);
  MIL::ValueInference::Tensor<float>::~Tensor(&a69);
  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x220]);
  v71 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v71;
    operator delete(v71);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x288]);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::CreateFloatTensor(void *a1@<X0>, void *a2@<X8>)
{
  v4 = MIL::ValueInference::Tensor<float>::Tensor(a2);
  v5 = (*(**a1 + 32))(v4);
  if ((*(*v5 + 88))(v5) == 5)
  {
    v6 = a1[1];
    v19 = *a1;
    v20 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInference::Tensor<float>::FromIRTensorValue(&v19, &v21);
    v7 = a2[1];
    if (v7)
    {
      a2[2] = v7;
      operator delete(v7);
    }

    *(a2 + 1) = v22;
    a2[3] = v23;
    v23 = 0;
    v22 = 0uLL;
    v8 = a2[4];
    if (v8)
    {
      a2[5] = v8;
      operator delete(v8);
    }

    *(a2 + 2) = v24;
    v9 = v25;
    v10 = v26;
    v25 = 0;
    v24 = 0uLL;
    a2[6] = v9;
    a2[7] = v10;
    MIL::ValueInference::Tensor<float>::~Tensor(&v21);
    v11 = v20;
    if (v20)
    {
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v12 = a1[1];
    v17 = *a1;
    v18 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::ValueInferenceUtils::GetCastedTensor<float>(&v17, &v21);
    v13 = a2[1];
    if (v13)
    {
      a2[2] = v13;
      operator delete(v13);
    }

    *(a2 + 1) = v22;
    a2[3] = v23;
    v23 = 0;
    v22 = 0uLL;
    v14 = a2[4];
    if (v14)
    {
      a2[5] = v14;
      operator delete(v14);
    }

    *(a2 + 2) = v24;
    v15 = v25;
    v16 = v26;
    v25 = 0;
    v24 = 0uLL;
    a2[6] = v15;
    a2[7] = v16;
    MIL::ValueInference::Tensor<float>::~Tensor(&v21);
    v11 = v18;
    if (v18)
    {
      goto LABEL_9;
    }
  }
}

void sub_218046790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(v10);
  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::DeduceAxesToReduce(unint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    if (a2 < 0)
    {
      v6 = a2 + a1;
    }

    else
    {
      v6 = a2;
    }

    std::vector<unsigned long long>::reserve(a3, a1 - 1);
    if (a1)
    {
      v7 = 0;
      do
      {
        if (v6 != v7)
        {
          v8 = v7;
          std::vector<unsigned long long>::push_back[abi:ne200100](a3, &v8);
        }

        ++v7;
      }

      while (a1 != v7);
    }
  }

  else
  {
    std::vector<unsigned long long>::reserve(a3, a1);
    if (a1)
    {
      v5 = 0;
      do
      {
        v8 = v5;
        std::vector<unsigned long long>::push_back[abi:ne200100](a3, &v8);
        ++v5;
      }

      while (a1 != v5);
    }
  }
}

void sub_218046888(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float MIL::MathOps::MinimumOp<float>(float result, float a2)
{
  if (a2 < result)
  {
    return a2;
  }

  return result;
}

float MIL::MathOps::MaximumOp<float>(float result, float a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

uint64_t MIL::Passes::anonymous namespace::CalculateScaleTensor@<X0>(MIL::ParserContext *this@<X1>, void *a2@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v19[0] = &unk_2829E6000;
  v19[1] = MIL::MathOps::SubOp<float>;
  v19[3] = v19;
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(this);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v14, *ProgramFirstSet, ProgramFirstSet[1], (ProgramFirstSet[1] - *ProgramFirstSet) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(this, a2, v19, &v14, v17);
  v18[0] = &unk_2829E6000;
  v18[1] = MIL::MathOps::RealDivOp<float>;
  v18[3] = v18;
  v9 = MIL::ParserContext::GetProgramFirstSet(this);
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *v9, v9[1], (v9[1] - *v9) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(v17, a3, v18, &__p, a4);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v18);
  MIL::ValueInference::Tensor<float>::~Tensor(v17);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v19);
}

void sub_218046A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v16 - 104);
  MIL::ValueInference::Tensor<float>::~Tensor(&a16);
  if (a13)
  {
    operator delete(a13);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v16 - 72);
  _Unwind_Resume(a1);
}

void *MIL::Passes::anonymous namespace::CalculateZeroPointTensor@<X0>(uint64_t *a1@<X0>, MIL::ParserContext *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v44[0] = &unk_2829E60B0;
  v44[1] = MIL::MathOps::NegateOp<float>;
  v44[3] = v44;
  MIL::ValueInference::Tensor<float>::ForEach(a1, v44, &v32);
  v43[0] = &unk_2829E6000;
  v43[1] = MIL::MathOps::SubOp<float>;
  v43[3] = v43;
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a2);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v28, *ProgramFirstSet, ProgramFirstSet[1], (ProgramFirstSet[1] - *ProgramFirstSet) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(a2, a1, v43, &v28, v31);
  v42[0] = &unk_2829E6000;
  v42[1] = MIL::MathOps::RealDivOp<float>;
  v42[3] = v42;
  v11 = MIL::ParserContext::GetProgramFirstSet(a1);
  __p = 0;
  v26 = 0;
  v27 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *v11, v11[1], (v11[1] - *v11) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(&v32, v31, v42, &__p, v38);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v42);
  MIL::ValueInference::Tensor<float>::~Tensor(v31);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v43);
  MIL::ValueInference::Tensor<float>::~Tensor(&v32);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v44);
  v41[0] = &unk_2829E6000;
  v41[1] = MIL::MathOps::MulOp<float>;
  v41[3] = v41;
  v12 = MIL::ParserContext::GetProgramFirstSet(v38);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v22, *v12, v12[1], (v12[1] - *v12) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(v38, a3, v41, &v22, &v32);
  v40[0] = &unk_2829E60B0;
  v40[1] = MIL::MathOps::RoundOp<float>;
  v40[3] = v40;
  MIL::ValueInference::Tensor<float>::ForEach(&v32, v40, a5);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v40);
  MIL::ValueInference::Tensor<float>::~Tensor(&v32);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v41);
  v39[0] = &unk_2829E6000;
  v39[1] = MIL::MathOps::AddOp<float>;
  v39[3] = v39;
  v13 = MIL::ParserContext::GetProgramFirstSet(a5);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v19, *v13, v13[1], (v13[1] - *v13) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(a5, a4, v39, &v19, &v32);
  v14 = a5[1];
  if (v14)
  {
    a5[2] = v14;
    operator delete(v14);
  }

  *(a5 + 1) = v33;
  a5[3] = v34;
  v34 = 0;
  v33 = 0uLL;
  v15 = a5[4];
  if (v15)
  {
    a5[5] = v15;
    operator delete(v15);
  }

  *(a5 + 2) = v35;
  v16 = v36;
  v17 = v37;
  v36 = 0;
  v35 = 0uLL;
  a5[6] = v16;
  a5[7] = v17;
  MIL::ValueInference::Tensor<float>::~Tensor(&v32);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v39);
  return MIL::ValueInference::Tensor<float>::~Tensor(v38);
}

void sub_218046E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v39 - 248);
  MIL::ValueInference::Tensor<float>::~Tensor(v38);
  MIL::ValueInference::Tensor<float>::~Tensor(&a38);
  _Unwind_Resume(a1);
}

void *MIL::Passes::anonymous namespace::CalculateQuantizedDataTensor@<X0>(MIL::ParserContext *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v49[0] = &unk_2829E5E90;
  v49[3] = v49;
  MIL::ValueInference::Tensor<float>::ForEach(a2, v49, v43);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v49);
  v48[0] = &unk_2829E6000;
  v48[1] = MIL::MathOps::RealDivOp<float>;
  v48[3] = v48;
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a1);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v33, *ProgramFirstSet, ProgramFirstSet[1], (ProgramFirstSet[1] - *ProgramFirstSet) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(a1, v43, v48, &v33, v36);
  v47[0] = &unk_2829E60B0;
  v47[1] = MIL::MathOps::RoundOp<float>;
  v47[3] = v47;
  MIL::ValueInference::Tensor<float>::ForEach(v36, v47, &v37);
  v46[0] = &unk_2829E6000;
  v46[1] = MIL::MathOps::AddOp<float>;
  v46[3] = v46;
  v12 = MIL::ParserContext::GetProgramFirstSet(a1);
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *v12, v12[1], (v12[1] - *v12) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(&v37, a3, v46, &__p, a6);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v46);
  MIL::ValueInference::Tensor<float>::~Tensor(&v37);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v47);
  MIL::ValueInference::Tensor<float>::~Tensor(v36);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v48);
  v45[0] = &unk_2829E6000;
  v45[1] = MIL::MathOps::MaximumOp<float>;
  v45[3] = v45;
  v13 = MIL::ParserContext::GetProgramFirstSet(a6);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v27, *v13, v13[1], (v13[1] - *v13) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(a6, a4, v45, &v27, &v37);
  v14 = a6[1];
  if (v14)
  {
    a6[2] = v14;
    operator delete(v14);
  }

  *(a6 + 1) = v38;
  a6[3] = v39;
  v39 = 0;
  v38 = 0uLL;
  v15 = a6[4];
  if (v15)
  {
    a6[5] = v15;
    operator delete(v15);
  }

  *(a6 + 2) = v40;
  v16 = v41;
  v17 = v42;
  v41 = 0;
  v40 = 0uLL;
  a6[6] = v16;
  a6[7] = v17;
  MIL::ValueInference::Tensor<float>::~Tensor(&v37);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v45);
  v44[0] = &unk_2829E6000;
  v44[1] = MIL::MathOps::MinimumOp<float>;
  v44[3] = v44;
  v18 = MIL::ParserContext::GetProgramFirstSet(a6);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, *v18, v18[1], (v18[1] - *v18) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(a6, a5, v44, &v24, &v37);
  v19 = a6[1];
  if (v19)
  {
    a6[2] = v19;
    operator delete(v19);
  }

  *(a6 + 1) = v38;
  a6[3] = v39;
  v39 = 0;
  v38 = 0uLL;
  v20 = a6[4];
  if (v20)
  {
    a6[5] = v20;
    operator delete(v20);
  }

  *(a6 + 2) = v40;
  v21 = v41;
  v22 = v42;
  v41 = 0;
  v40 = 0uLL;
  a6[6] = v21;
  a6[7] = v22;
  MIL::ValueInference::Tensor<float>::~Tensor(&v37);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v44);
  return MIL::ValueInference::Tensor<float>::~Tensor(v43);
}

void sub_21804734C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v39 - 248);
  MIL::ValueInference::Tensor<float>::~Tensor(v38);
  MIL::ValueInference::Tensor<float>::~Tensor(&a38);
  _Unwind_Resume(a1);
}

void sub_2180474DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(va);
  v5 = *(v3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(va1);
  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::ConvertZeroPointValue(MIL::IRConstantDimension *a1, void *a2, uint64_t *a3, int a4)
{
  MIL::ValueInference::Tensor<float>::Reshape(a2, a3, v9);
  memset(v8, 0, sizeof(v8));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v8, *a3, a3[1], (a3[1] - *a3) >> 3);
  if (a4 == 14)
  {
    MIL::ValueInference::Tensor<float>::Cast<unsigned char>(v9, v7);
    MIL::IRTensorValueType::Make(a1, 14, v8);
  }

  MIL::ValueInference::Tensor<float>::Cast<signed char>(v9, v7);
  MIL::IRTensorValueType::Make(a1, 9, v8);
}

void sub_218047738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (a10)
  {
  }

  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValueInference::Tensor<signed char>::~Tensor(&a14);
  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  MIL::ValueInference::Tensor<float>::~Tensor((v23 - 96));
  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::ConvertQuantizedDataValue(MIL::IRConstantDimension *a1, MIL::ParserContext *this, int a3)
{
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(this);
  memset(v8, 0, sizeof(v8));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v8, *ProgramFirstSet, ProgramFirstSet[1], (ProgramFirstSet[1] - *ProgramFirstSet) >> 3);
  if (a3 == 14)
  {
    MIL::ValueInference::Tensor<float>::Cast<unsigned char>(this, v7);
    MIL::IRTensorValueType::Make(a1, 14, v8);
  }

  MIL::ValueInference::Tensor<float>::Cast<signed char>(this, v7);
  MIL::IRTensorValueType::Make(a1, 9, v8);
}

void sub_218047A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
  }

  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValueInference::Tensor<signed char>::~Tensor(&a14);
  v16 = *(v14 - 56);
  if (v16)
  {
    *(v14 - 48) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::QuantizeValueAsymmetricInt8(MIL::IRConstantDimension *a1, uint64_t *a2, uint64_t a3)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38[0] = v6;
  v38[1] = v5;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v39);
  v51[0] = &unk_2829E6000;
  v51[1] = MIL::MathOps::MinimumOp<float>;
  v51[3] = v51;
  MIL::ValueInference::Tensor<float>::Reduce(v39, &v37, 1, v51, &v31);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v51);
  v50[0] = &unk_2829E6000;
  v50[1] = MIL::MathOps::MaximumOp<float>;
  v50[3] = v50;
  MIL::ValueInference::Tensor<float>::Reduce(v39, &v37, 1, v50, &v25);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v50);
  v49[0] = &unk_2829E60B0;
  v49[1] = MIL::MathOps::NegateOp<float>;
  v49[3] = v49;
  MIL::ValueInference::Tensor<float>::ForEach(&v31, v49, &v21);
  v48[0] = &unk_2829E60B0;
  v48[1] = MIL::MathOps::ReluOp<float>;
  v48[3] = v48;
  MIL::ValueInference::Tensor<float>::ForEach(&v21, v48, v24);
  v47[0] = &unk_2829E60B0;
  v47[1] = MIL::MathOps::NegateOp<float>;
  v47[3] = v47;
  MIL::ValueInference::Tensor<float>::ForEach(v24, v47, &__src);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = v41;
  v33 = v42;
  v42 = 0;
  v41 = 0uLL;
  if (v34)
  {
    *(&v34 + 1) = v34;
    operator delete(v34);
  }

  v34 = v43;
  v8 = v44;
  v44 = 0;
  v43 = 0uLL;
  v35 = v8;
  v36 = v45;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v47);
  MIL::ValueInference::Tensor<float>::~Tensor(v24);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v48);
  MIL::ValueInference::Tensor<float>::~Tensor(&v21);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v49);
  v46[0] = &unk_2829E60B0;
  v46[1] = MIL::MathOps::ReluOp<float>;
  v46[3] = v46;
  MIL::ValueInference::Tensor<float>::ForEach(&v25, v46, &__src);
  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }

  v26 = v41;
  v27 = v42;
  v42 = 0;
  v41 = 0uLL;
  if (v28)
  {
    *(&v28 + 1) = v28;
    operator delete(v28);
  }

  v28 = v43;
  v9 = v44;
  v44 = 0;
  v43 = 0uLL;
  v29 = v9;
  v30 = v45;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v46);
  v41 = 0uLL;
  __src = 0;
  LODWORD(v18) = 1132396544;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v21, &v18, &v18 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(v24, &__src, &v21);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (__src)
  {
    *&v41 = __src;
    operator delete(__src);
  }

  v41 = 0uLL;
  __src = 0;
  LODWORD(v15) = -1023410176;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v18, &v15, &v15 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(&v21, &__src, &v18);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (__src)
  {
    *&v41 = __src;
    operator delete(__src);
  }

  v41 = 0uLL;
  __src = 0;
  LODWORD(v14[0]) = 1123942400;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v15, v14, v14 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(&v18, &__src, &v15);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (__src)
  {
    *&v41 = __src;
    operator delete(__src);
  }

  memset(v12, 0, sizeof(v12));
  if ((a3 & 0x100000000) != 0)
  {
    v10 = MIL::ParserContext::GetProgramFirstSet(v39);
    if (a3 < 0)
    {
      a3 = (((v10[1] - *v10) >> 3) + a3);
    }

    else
    {
      a3 = a3;
    }

    __src = *(*MIL::ParserContext::GetProgramFirstSet(v39) + 8 * a3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v12, &__src, &v41, 1uLL);
  }

  v11 = (*(*v6 + 32))(v6);
  (*(*v11 + 88))(v11);
}

void sub_218048248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a21);
  MIL::ValueInference::Tensor<float>::~Tensor(&a29);
  MIL::ValueInference::Tensor<float>::~Tensor(&a37);
  MIL::ValueInference::Tensor<float>::~Tensor(&a45);
  MIL::ValueInference::Tensor<float>::~Tensor(&a53);
  MIL::ValueInference::Tensor<float>::~Tensor(&a61);
  MIL::ValueInference::Tensor<float>::~Tensor(&a69);
  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x220]);
  v71 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v71;
    operator delete(v71);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x288]);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::QuantizeValueNoZeroPointUInt8(MIL::IRConstantDimension *a1, uint64_t *a2, uint64_t a3)
{
  v54[4] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39[0] = v6;
  v39[1] = v5;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(&v40);
  v54[0] = &unk_2829E6000;
  v54[1] = MIL::MathOps::MaximumOp<float>;
  v54[3] = v54;
  MIL::ValueInference::Tensor<float>::Reduce(&v40, &v38, 1, v54, &v32);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v54);
  v53[0] = &unk_2829E60B0;
  v53[1] = MIL::MathOps::ReluOp<float>;
  v53[3] = v53;
  MIL::ValueInference::Tensor<float>::ForEach(&v32, v53, &__src);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = v47;
  v34 = v48;
  v48 = 0;
  v47 = 0uLL;
  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }

  v35 = v49;
  v8 = v50;
  v50 = 0;
  v49 = 0uLL;
  v36 = v8;
  v37 = v51;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v53);
  v9 = MIL::ParserContext::GetProgramFirstSet(&v32);
  v29 = 0uLL;
  v30 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v29, *v9, v9[1], (v9[1] - *v9) >> 3);
  MIL::ValueInference::Tensor<float>::Zeros(&v29, &v31);
  if (v29.n128_u64[0])
  {
    v29.n128_u64[1] = v29.n128_u64[0];
    operator delete(v29.n128_u64[0]);
  }

  v47 = 0uLL;
  __src = 0;
  LODWORD(v22) = 1132396544;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v25, &v22, &v22 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(v28, &__src, &v25);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (__src)
  {
    *&v47 = __src;
    operator delete(__src);
  }

  v47 = 0uLL;
  __src = 0;
  LODWORD(v19) = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v22, &v19, &v19 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(&v25, &__src, &v22);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (__src)
  {
    *&v47 = __src;
    operator delete(__src);
  }

  v47 = 0uLL;
  __src = 0;
  LODWORD(v18[0]) = 1132396544;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v19, v18, v18 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(&v22, &__src, &v19);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (__src)
  {
    *&v47 = __src;
    operator delete(__src);
  }

  v10 = MIL::ParserContext::GetProgramFirstSet(&v19);
  v16 = 0uLL;
  v17 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v16, *v10, v10[1], (v10[1] - *v10) >> 3);
  MIL::ValueInference::Tensor<float>::Zeros(&v16, v18);
  if (v16.n128_u64[0])
  {
    v16.n128_u64[1] = v16.n128_u64[0];
    operator delete(v16.n128_u64[0]);
  }

  v52[0] = &unk_2829E60B0;
  v52[1] = MIL::MathOps::ReluOp<float>;
  v52[3] = v52;
  MIL::ValueInference::Tensor<float>::ForEach(&v40, v52, &__src);
  if (v41)
  {
    *(&v41 + 1) = v41;
    operator delete(v41);
  }

  v41 = v47;
  v42 = v48;
  v48 = 0;
  v47 = 0uLL;
  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

  v43 = v49;
  v11 = v50;
  v50 = 0;
  v49 = 0uLL;
  v44 = v11;
  v45 = v51;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v52);
  memset(v14, 0, sizeof(v14));
  if ((a3 & 0x100000000) != 0)
  {
    v12 = MIL::ParserContext::GetProgramFirstSet(&v40);
    if (a3 < 0)
    {
      a3 = (((v12[1] - *v12) >> 3) + a3);
    }

    else
    {
      a3 = a3;
    }

    __src = *(*MIL::ParserContext::GetProgramFirstSet(&v40) + 8 * a3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v14, &__src, &v47, 1uLL);
  }

  v13 = (*(*v6 + 32))(v6);
  (*(*v13 + 88))(v13);
}

void sub_218048BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a21);
  MIL::ValueInference::Tensor<float>::~Tensor(&a32);
  MIL::ValueInference::Tensor<float>::~Tensor(&a40);
  MIL::ValueInference::Tensor<float>::~Tensor(&a48);
  MIL::ValueInference::Tensor<float>::~Tensor(&a56);
  MIL::ValueInference::Tensor<float>::~Tensor(&a64);
  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x210]);
  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x250]);
  v66 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v66;
    operator delete(v66);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x2B8]);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::QuantizeValueSymmetricInt8(MIL::IRConstantDimension *a1, uint64_t *a2, uint64_t a3)
{
  v72[4] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v55[0] = v6;
  v55[1] = v5;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v56);
  v72[0] = &unk_2829E6000;
  v72[1] = MIL::MathOps::MinimumOp<float>;
  v72[3] = v72;
  MIL::ValueInference::Tensor<float>::Reduce(v56, &v54, 1, v72, &v48);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v72);
  v71[0] = &unk_2829E6000;
  v71[1] = MIL::MathOps::MaximumOp<float>;
  v71[3] = v71;
  MIL::ValueInference::Tensor<float>::Reduce(v56, &v54, 1, v71, &v42);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v71);
  v70[0] = &unk_2829E60B0;
  v70[1] = MIL::MathOps::NegateOp<float>;
  v70[3] = v70;
  MIL::ValueInference::Tensor<float>::ForEach(&v48, v70, &v35);
  v69[0] = &unk_2829E60B0;
  v69[1] = MIL::MathOps::ReluOp<float>;
  v69[3] = v69;
  MIL::ValueInference::Tensor<float>::ForEach(&v35, v69, v41);
  v68[0] = &unk_2829E60B0;
  v68[1] = MIL::MathOps::NegateOp<float>;
  v68[3] = v68;
  MIL::ValueInference::Tensor<float>::ForEach(v41, v68, &__src);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = v58;
  v50 = v59;
  v59 = 0;
  v58 = 0uLL;
  if (v51)
  {
    *(&v51 + 1) = v51;
    operator delete(v51);
  }

  v51 = v60;
  v8 = v61;
  v61 = 0;
  v60 = 0uLL;
  v52 = v8;
  v53 = v62;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v68);
  MIL::ValueInference::Tensor<float>::~Tensor(v41);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v69);
  MIL::ValueInference::Tensor<float>::~Tensor(&v35);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v70);
  v67[0] = &unk_2829E60B0;
  v67[1] = MIL::MathOps::ReluOp<float>;
  v67[3] = v67;
  MIL::ValueInference::Tensor<float>::ForEach(&v42, v67, &__src);
  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

  v43 = v58;
  v44 = v59;
  v59 = 0;
  v58 = 0uLL;
  if (v45)
  {
    *(&v45 + 1) = v45;
    operator delete(v45);
  }

  v45 = v60;
  v9 = v61;
  v61 = 0;
  v60 = 0uLL;
  v46 = v9;
  v47 = v62;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v67);
  v66[0] = &unk_2829E60B0;
  v66[1] = MIL::MathOps::AbsOp<float>;
  v66[3] = v66;
  MIL::ValueInference::Tensor<float>::ForEach(&v48, v66, v41);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v66);
  v65[0] = &unk_2829E60B0;
  v65[1] = MIL::MathOps::AbsOp<float>;
  v65[3] = v65;
  MIL::ValueInference::Tensor<float>::ForEach(&v42, v65, &v35);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v65);
  v64[0] = &unk_2829E6000;
  v64[1] = MIL::MathOps::MaximumOp<float>;
  v64[3] = v64;
  v10 = MIL::ParserContext::GetProgramFirstSet(v41);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v32, *v10, v10[1], (v10[1] - *v10) >> 3);
  MIL::ValueInference::BinaryOp<float,float>(v41, &v35, v64, &v32, &__src);
  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }

  v36 = v58;
  v37 = v59;
  v59 = 0;
  v58 = 0uLL;
  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  v38 = v60;
  v11 = v61;
  v61 = 0;
  v60 = 0uLL;
  v39 = v11;
  v40 = v62;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v64);
  v63[0] = &unk_2829E60B0;
  v63[1] = MIL::MathOps::NegateOp<float>;
  v63[3] = v63;
  MIL::ValueInference::Tensor<float>::ForEach(&v35, v63, &__src);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = v58;
  v50 = v59;
  v59 = 0;
  v58 = 0uLL;
  if (v51)
  {
    *(&v51 + 1) = v51;
    operator delete(v51);
  }

  v51 = v60;
  v12 = v61;
  v61 = 0;
  v60 = 0uLL;
  v52 = v12;
  v53 = v62;
  MIL::ValueInference::Tensor<float>::~Tensor(&__src);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v63);
  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

  v43 = v36;
  v44 = v37;
  v37 = 0;
  v36 = 0uLL;
  if (v45)
  {
    *(&v45 + 1) = v45;
    operator delete(v45);
  }

  v45 = v38;
  v13 = v39;
  v39 = 0;
  v38 = 0uLL;
  v46 = v13;
  v47 = v40;
  v58 = 0uLL;
  __src = 0;
  LODWORD(v25) = 1132331008;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v28, &v25, &v25 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(v31, &__src, &v28);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (__src)
  {
    *&v58 = __src;
    operator delete(__src);
  }

  v58 = 0uLL;
  __src = 0;
  LODWORD(v22) = -1023541248;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v25, &v22, &v22 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(&v28, &__src, &v25);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (__src)
  {
    *&v58 = __src;
    operator delete(__src);
  }

  v58 = 0uLL;
  __src = 0;
  LODWORD(v21[0]) = 1123942400;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v22, v21, v21 + 4, 1uLL);
  MIL::ValueInference::Tensor<float>::Tensor(&v25, &__src, &v22);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (__src)
  {
    *&v58 = __src;
    operator delete(__src);
  }

  v14 = MIL::ParserContext::GetProgramFirstSet(&v22);
  v19 = 0uLL;
  v20 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v19, *v14, v14[1], (v14[1] - *v14) >> 3);
  MIL::ValueInference::Tensor<float>::Zeros(&v19, v21);
  if (v19.n128_u64[0])
  {
    v19.n128_u64[1] = v19.n128_u64[0];
    operator delete(v19.n128_u64[0]);
  }

  memset(v17, 0, sizeof(v17));
  if ((a3 & 0x100000000) != 0)
  {
    v15 = MIL::ParserContext::GetProgramFirstSet(v56);
    if (a3 < 0)
    {
      a3 = (((v15[1] - *v15) >> 3) + a3);
    }

    else
    {
      a3 = a3;
    }

    __src = *(*MIL::ParserContext::GetProgramFirstSet(v56) + 8 * a3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v17, &__src, &v58, 1uLL);
  }

  v16 = (*(*v6 + 32))(v6);
  (*(*v16 + 88))(v16);
}

void sub_218049884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a21);
  MIL::ValueInference::Tensor<float>::~Tensor(&a32);
  MIL::ValueInference::Tensor<float>::~Tensor(&a40);
  MIL::ValueInference::Tensor<float>::~Tensor(&a48);
  MIL::ValueInference::Tensor<float>::~Tensor(&a56);
  MIL::ValueInference::Tensor<float>::~Tensor(&a64);
  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x210]);
  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x250]);
  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x290]);
  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x2D0]);
  v66 = STACK[0x310];
  if (STACK[0x310])
  {
    STACK[0x318] = v66;
    operator delete(v66);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&STACK[0x338]);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::SparsifyWithThreshold(MIL::IRConstantDimension *a1, uint64_t *a2, float a3)
{
  v30[23] = *MEMORY[0x277D85DE8];
  v26 = a3;
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24[0] = v5;
  v24[1] = v4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v30[0] = &unk_2829E6150;
  v30[1] = &v26;
  v30[3] = v30;
  MIL::ValueInference::Tensor<float>::ForEach(v25, v30, v23);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v30);
  v6 = (*(*v5 + 32))(v5);
  v7 = (*(*v6 + 88))(v6);
  MIL::ValueInference::Tensor<float>::NonZero(v23, &v28);
  memset(&v27, 0, sizeof(v27));
  std::vector<int>::reserve(&v27, 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
  v8 = v28;
  if (v29 != v28)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = MIL::ValueInference::Tensor<float>::operator[](v23, (v8 + v9));
      end = v27.__end_;
      if (v27.__end_ >= v27.__end_cap_.__value_)
      {
        begin = v27.__begin_;
        v15 = v27.__end_ - v27.__begin_;
        v16 = v27.__end_ - v27.__begin_;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v18 = v27.__end_cap_.__value_ - v27.__begin_;
        if ((v27.__end_cap_.__value_ - v27.__begin_) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v27, v19);
        }

        v20 = (4 * v16);
        v21 = &v20[-(v27.__end_ - v27.__begin_)];
        *v20 = *v11;
        v13 = v20 + 1;
        memcpy(v21, begin, v15);
        v22 = v27.__begin_;
        v27.__begin_ = v21;
        v27.__end_ = v13;
        v27.__end_cap_.__value_ = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v27.__end_ = *v11;
        v13 = end + 1;
      }

      v27.__end_ = v13;
      ++v10;
      v8 = v28;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
  }
}

void sub_218049FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, void *a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  v58 = v55 + 80;
  v59 = -120;
  do
  {
    v58 = std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(v58) - 40;
    v59 += 40;
  }

  while (v59);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  MIL::ValueInference::Tensor<unsigned char>::~Tensor(&a39);
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  if (a49)
  {
    a50 = a49;
    operator delete(a49);
  }

  *(v56 - 256) = &a52;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v56 - 256));
  MIL::ValueInference::Tensor<float>::~Tensor(&a12);
  MIL::ValueInference::Tensor<float>::~Tensor(&a22);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::SparsifyWithPercentile(MIL::IRConstantDimension *a1, uint64_t *a2, float a3)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25[0] = v6;
  v25[1] = v7;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v27[0] = &unk_2829E60B0;
  v27[1] = MIL::MathOps::AbsOp<float>;
  v27[3] = v27;
  MIL::ValueInference::Tensor<float>::ForEach(v26, v27, v24);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v27);
  DataView = MIL::ValueInference::Tensor<float>::GetDataView(v24);
  v9 = MIL::ValueInference::Tensor<float>::GetDataView(v24);
  __p = 0;
  v22 = 0;
  v23 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, DataView, v9 + 4 * v10, (v9 + 4 * v10 - DataView) >> 2);
  if (a3 == 0.0)
  {
    v11 = *a2;
    v12 = a2[1];
    v20[0] = v11;
    v20[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::Passes::SparsifyWithThreshold(a1, v20, 0.0);
  }

  v13 = (((v22 - __p) >> 2) * a3) + -1.0;
  v14 = vcvtps_s32_f32(v13);
  v15 = (__p + 4 * v14);
  if (v15 != v22)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::less<float> &,std::__wrap_iter<float *>>(__p, v15, v22, v13);
    v15 = (__p + 4 * v14);
  }

  v16 = *v15;
  v17 = *a2;
  v18 = a2[1];
  v19[0] = v17;
  v19[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Passes::SparsifyWithThreshold(a1, v19, v16);
}

void sub_21804A2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  MIL::ValueInference::Tensor<float>::~Tensor(&a17);
  MIL::ValueInference::Tensor<float>::~Tensor(&a27);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::PalettizeKmeans(MIL::IRConstantDimension *a1, uint64_t *a2, int a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15[0] = v6;
  v15[1] = v5;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v10 = 1;
  v11 = 0;
  v12 = 0;
  MIL::ParserContext::GetProgramFirstSet(v16);
  v7 = (*(*v6 + 32))(v6);
  (*(*v7 + 88))(v7);
}

void sub_21804A51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  a16 = &a22;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a16);
  MIL::ValueInference::Tensor<float>::~Tensor((v23 - 128));
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::TransformDataToPoints(MIL::ParserContext *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  if (*(a2 + 16))
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(a1);
  std::vector<MIL::Passes::BlockInfo>::reserve(&v27, (ProgramFirstSet[1] - *ProgramFirstSet) >> 3);
  for (i = 0; ; ++i)
  {
    v9 = MIL::ParserContext::GetProgramFirstSet(a1);
    if (i >= (v9[1] - *v9) >> 3)
    {
      break;
    }

    if (v6 == i)
    {
      v22[0] = v6;
      v22[1] = v5;
    }

    else
    {
      v22[0] = i;
      v22[1] = 1;
    }

    std::vector<MIL::Passes::BlockInfo>::push_back[abi:ne200100](&v27, v22);
  }

  v10 = MIL::ParserContext::GetProgramFirstSet(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  NumElements = MIL::ValueInference::Tensor<float>::GetNumElements(a1);
  v12 = NumElements / v5;
  std::vector<std::vector<float>>::reserve(a3, NumElements / v5);
  if (v5 <= NumElements)
  {
    v13 = 0;
    do
    {
      MIL::ValueInference::Tensor<float>::SubTensor(a1, v21, v20);
      DataView = MIL::ValueInference::Tensor<float>::GetDataView(v20);
      v15 = MIL::ValueInference::Tensor<float>::GetDataView(v20);
      __p = 0;
      v18 = 0;
      v19 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, DataView, v15 + 4 * v16, (v15 + 4 * v16 - DataView) >> 2);
      std::vector<std::vector<float>>::push_back[abi:ne200100](a3, &__p);
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      MIL::ValueInference::Tensor<float>::~Tensor(v20);
      if (v21[0])
      {
        v21[1] = v21[0];
        operator delete(v21[0]);
      }

      ++v13;
    }

    while (v13 < v12);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_21804A78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23)
{
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v25 = *(v23 - 88);
  if (v25)
  {
    *(v23 - 80) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::PalettizeToDataKmeans(uint64_t **a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  std::vector<float>::vector[abi:ne200100](&__p, ((*a1)[1] - **a1) >> 2);
  std::vector<std::vector<float>>::vector[abi:ne200100](v90, a2);
  if (*__p.__x_)
  {
    *&__p.__x_[2] = *__p.__x_;
    operator delete(*__p.__x_);
  }

  std::vector<unsigned char>::vector[abi:ne200100](&v88, 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
  v6 = *a1;
  v7 = a1[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
  v82 = a3;
  if (v8 >= a2)
  {
    v87 = 0;
    v86 = 0uLL;
    v19 = 42;
    __p.__x_[0] = 42;
    for (i = 1; i != 624; ++i)
    {
      v19 = i + 1812433253 * (v19 ^ (v19 >> 30));
      __p.__x_[i] = v19;
    }

    __p.__i_ = 0;
    std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> const*>,std::__wrap_iter<std::vector<float> const*>,std::back_insert_iterator<std::vector<std::vector<float>>>,long,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v6, v7, &v86, 1, &__p);
    v21 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
    LODWORD(p_p) = 2139095039;
    std::vector<float>::vector[abi:ne200100](&v94, v21);
    if (a2 != 1)
    {
      v22 = 0;
      do
      {
        v23 = *a1;
        v24 = a1[1];
        v25 = v94;
        v26 = v24 - *a1;
        if (v24 != *a1)
        {
          v27 = 0;
          v28 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3);
          v29 = *(&v86 + 1);
          if (v28 <= 1)
          {
            v28 = 1;
          }

          do
          {
            v30 = v23[3 * v27];
            v31 = v23[3 * v27 + 1] - v30;
            if (v31)
            {
              v32 = v31 >> 2;
              v33 = *(v29 - 24);
              if (v32 <= 1)
              {
                v32 = 1;
              }

              v34 = 0.0;
              do
              {
                v35 = *v30++;
                v36 = v35;
                v37 = *v33++;
                v34 = v34 + ((v36 - v37) * (v36 - v37));
                --v32;
              }

              while (v32);
            }

            else
            {
              v34 = 0.0;
            }

            v38 = sqrtf(v34);
            if (v38 >= v25[v27])
            {
              v38 = v25[v27];
            }

            v25[v27++] = v38;
          }

          while (v27 != v28);
        }

        std::discrete_distribution<int>::param_type::param_type[abi:ne200100]<std::__wrap_iter<float *>>(&p_p, v25, v95);
        v39 = std::discrete_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&p_p, &__p, &p_p);
        std::vector<std::vector<float>>::push_back[abi:ne200100](&v86, &(*a1)[3 * v39]);
        if (p_p)
        {
          v93 = p_p;
          operator delete(p_p);
        }

        ++v22;
      }

      while (v22 != a2 - 1);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    v40 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v86 + 1) - v86) >> 3));
    if (*(&v86 + 1) == v86)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,false>(v86, *(&v86 + 1), &v94, v41, 1);
    v42 = 0;
    while (1)
    {
      std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](&__p, a2);
      v43 = *a1;
      if (a1[1] != *a1)
      {
        v44 = 0;
        v45 = 0;
        do
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v94, v43[v44], v43[v44 + 1], (v43[v44 + 1] - v43[v44]) >> 2);
          if (v94)
          {
            v95 = v94;
            operator delete(v94);
          }

          std::vector<std::vector<float>>::push_back[abi:ne200100](*__p.__x_ + 24 * ClosestClusterId, &(*a1)[v44]);
          ++v45;
          v43 = *a1;
          v44 += 3;
        }

        while (v45 < 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
      }

      if (!a2)
      {
        break;
      }

      v47 = 0;
      v48 = 0;
      do
      {
        while (1)
        {
          v49 = (*__p.__x_ + 24 * v47);
          if (*v49 != v49[1])
          {
            break;
          }

          ++v47;
          v48 = 1;
          if (v47 == a2)
          {
            goto LABEL_98;
          }
        }

        std::vector<float>::vector[abi:ne200100](&p_p, (*(*v49 + 8) - **v49) >> 2);
        v50 = *v49;
        v51 = p_p;
        v52 = v93;
        v53 = v93 - p_p;
        v54 = (v93 - p_p) >> 2;
        v55 = 0xAAAAAAAAAAAAAAABLL * ((v49[1] - *v49) >> 3);
        if (v49[1] != *v49)
        {
          v56 = 0;
          if (v54 <= 1)
          {
            v57 = 1;
          }

          else
          {
            v57 = (v93 - p_p) >> 2;
          }

          if (v55 <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = 0xAAAAAAAAAAAAAAABLL * ((v49[1] - *v49) >> 3);
          }

          do
          {
            v59 = *(v50 + 24 * v56);
            if (*(v50 + 24 * v56 + 8) - v59 != v53)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Sanity check failed: points have different lengths.");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v60 = v51;
            v61 = v57;
            if (v52 != v51)
            {
              do
              {
                v62 = *v59++;
                *v60 = v62 + *v60;
                ++v60;
                --v61;
              }

              while (v61);
            }

            ++v56;
          }

          while (v56 != v58);
        }

        if (v52 != v51)
        {
          if (v54 <= 1)
          {
            v63 = 1;
          }

          else
          {
            v63 = v54;
          }

          v64 = v51;
          do
          {
            *v64 = *v64 / v55;
            ++v64;
            --v63;
          }

          while (v63);
        }

        v65 = (v86 + 24 * v47);
        v66 = *v65;
        v67 = v65[1] - *v65;
        if (v67)
        {
          v68 = v67 >> 2;
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = 0.0;
          v70 = v51;
          do
          {
            v71 = *v66++;
            v72 = v71;
            v73 = *v70++;
            v69 = v69 + ((v72 - v73) * (v72 - v73));
            --v68;
          }

          while (v68);
        }

        else
        {
          v69 = 0.0;
        }

        v74 = sqrtf(v69) > 0.01;
        if (v65 != &p_p)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v65, v51, v52, v54);
        }

        if (p_p)
        {
          v93 = p_p;
          operator delete(p_p);
        }

        v48 |= v74;
        ++v47;
      }

      while (v47 != a2);
      if ((v48 & 1) == 0)
      {
        break;
      }

LABEL_98:
      v75 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v86 + 1) - v86) >> 3));
      if (*(&v86 + 1) == v86)
      {
        v76 = 0;
      }

      else
      {
        v76 = v75;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,false>(v86, *(&v86 + 1), v98, v76, 1);
      p_p = &__p;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&p_p);
      if (++v42 == 100)
      {
        goto LABEL_104;
      }
    }

    p_p = &__p;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&p_p);
LABEL_104:
    std::vector<std::vector<float>>::__vdeallocate(v90);
    *v90 = v86;
    v91 = v87;
    v87 = 0;
    v86 = 0uLL;
    *__p.__x_ = &v86;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v77 = *a1;
    if (a1[1] != *a1)
    {
      v78 = 0;
      v79 = 0;
      do
      {
        v83 = 0;
        v84 = 0;
        v85 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v83, v77[v78], v77[v78 + 1], (v77[v78 + 1] - v77[v78]) >> 2);
        *(v88 + v79) = v80;
        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }

        ++v79;
        v77 = *a1;
        v78 += 3;
      }

      while (v79 < 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
    }
  }

  else
  {
    memset(&__p, 0, 24);
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float> const*>,std::__wrap_iter<std::vector<float> const*>>(&__p, v6, v7, v8);
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&p_p, *__p.__x_, *&__p.__x_[2], *v90);
    if (v88 != v89)
    {
      v9 = vdupq_n_s64(v89 - v88 - 1);
      v10 = (v89 - v88 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = v88 + 7;
      v12 = 15;
      do
      {
        v13 = v12 - 15;
        v14 = vdupq_n_s64(v12 - 15);
        v15 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v14, xmmword_218583C30)));
        if (vuzp1_s8(vuzp1_s16(v15, *v9.i8), *v9.i8).u8[0])
        {
          *(v11 - 7) = v13;
        }

        if (vuzp1_s8(vuzp1_s16(v15, *&v9), *&v9).i8[1])
        {
          *(v11 - 6) = v13 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v14, xmmword_218583C20)))), *&v9).i8[2])
        {
          *(v11 - 5) = v13 | 2;
          *(v11 - 4) = v13 | 3;
        }

        v16 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v14, xmmword_218583C10)));
        if (vuzp1_s8(*&v9, vuzp1_s16(v16, *&v9)).i32[1])
        {
          *(v11 - 3) = v13 | 4;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(v16, *&v9)).i8[5])
        {
          *(v11 - 2) = v13 | 5;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v14, xmmword_218583C00))))).i8[6])
        {
          *(v11 - 1) = v13 | 6;
          *v11 = v13 | 7;
        }

        v17 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v14, xmmword_218583BF0)));
        if (vuzp1_s8(vuzp1_s16(v17, *v9.i8), *v9.i8).u8[0])
        {
          v11[1] = v13 | 8;
        }

        if (vuzp1_s8(vuzp1_s16(v17, *&v9), *&v9).i8[1])
        {
          v11[2] = v13 | 9;
        }

        if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v14, xmmword_218583BE0)))), *&v9).i8[2])
        {
          v11[3] = v13 | 0xA;
          v11[4] = v13 | 0xB;
        }

        v18 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v14, xmmword_218583BD0)));
        if (vuzp1_s8(*&v9, vuzp1_s16(v18, *&v9)).i32[1])
        {
          v11[5] = v13 | 0xC;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(v18, *&v9)).i8[5])
        {
          v11[6] = v13 | 0xD;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v14, xmmword_218583BC0))))).i8[6])
        {
          v11[7] = v13 | 0xE;
          v11[8] = v13 | 0xF;
        }

        v12 += 16;
        v11 += 16;
        v10 -= 16;
      }

      while (v10);
    }

    v94 = &__p;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v94);
  }

  *v82 = 0;
  v82[1] = 0;
  v82[2] = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v82, *v90, *&v90[2], 0xAAAAAAAAAAAAAAABLL * ((*&v90[2] - *v90) >> 3));
  v82[3] = 0;
  v82[4] = 0;
  v82[5] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v82 + 3), v88, v89, v89 - v88);
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  *__p.__x_ = v90;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_21804B114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29)
{
  a28 = &a13;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a28);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  a28 = &a19;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::UnpackIndicesToBinary(unsigned __int8 **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = a2;
  std::vector<unsigned char>::reserve(a3, (a1[1] - *a1) * a2);
  v8 = *a1;
  v7 = a1[1];
  while (v8 != v7)
  {
    if (a2)
    {
      v9 = *v8;
      v10 = v6;
      do
      {
        v11 = v9 & 1;
        std::vector<char>::push_back[abi:ne200100](a3, &v11);
        v9 >>= 1;
        --v10;
      }

      while (v10);
    }

    ++v8;
  }
}

void sub_21804B2FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *MIL::Passes::anonymous namespace::TransformPointsToData@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *result;
  if (*(result + 1) != *result)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      result = std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a2, *(a2 + 8), *(v3 + v5), *(v3 + v5 + 8), (*(v3 + v5 + 8) - *(v3 + v5)) >> 2);
      ++v6;
      v3 = *v4;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 1) - *v4) >> 3));
  }

  return result;
}

void sub_21804B3B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_21804B514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v16 = v14 + 80;
  v17 = -120;
  do
  {
    v16 = std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(v16) - 40;
    v17 += 40;
  }

  while (v17);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::PalettizationData::~PalettizationData(MIL::Passes::_anonymous_namespace_::PalettizationData *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void MIL::Passes::PalettizeUniform(MIL::IRConstantDimension *a1, uint64_t *a2, int a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16[0] = v6;
  v16[1] = v5;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  DataView = MIL::ValueInference::Tensor<float>::GetDataView(v17);
  v8 = MIL::ValueInference::Tensor<float>::GetDataView(v17);
  memset(v15, 0, sizeof(v15));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v15, DataView, v8 + 4 * v9, (v8 + 4 * v9 - DataView) >> 2);
  MIL::ParserContext::GetProgramFirstSet(v17);
  v10 = (*(*v6 + 32))(v6);
  (*(*v10 + 88))(v10);
}

void sub_21804B7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  MIL::ValueInference::Tensor<float>::~Tensor((v24 - 128));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::anonymous namespace::PalettizeToDataUniform(float **a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  std::vector<unsigned char>::vector[abi:ne200100](v37, a1[1] - *a1);
  v6 = *a1;
  v7 = a1[1];
  v8 = (*a1 + 1);
  v9 = **a1;
  if (*a1 == v7 || v8 == v7)
  {
    v11 = *a1;
  }

  else
  {
    v12 = **a1;
    v13 = (*a1 + 1);
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v15++;
      v17 = v16;
      if (v16 < v12)
      {
        v12 = v17;
        v14 = v13;
      }

      v13 = v15;
    }

    while (v15 != v7);
    v18 = *v14;
    v11 = *a1;
    v19 = *a1 + 1;
    do
    {
      v20 = *v19++;
      v21 = v20;
      if (v9 < v20)
      {
        v9 = v21;
        v11 = v8;
      }

      v8 = v19;
    }

    while (v19 != v7);
    v9 = v18;
  }

  v22 = *v11;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<unsigned char>::reserve(&v34, v7 - v6);
  v23 = (v22 - v9) / (a2 - 1);
  v24 = *a1;
  if (a1[1] != *a1)
  {
    v25 = 0;
    do
    {
      LOBYTE(v31) = llroundf((v24[v25] - v9) / v23);
      std::vector<char>::push_back[abi:ne200100](&v34, &v31);
      ++v25;
      v24 = *a1;
    }

    while (v25 < a1[1] - *a1);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<std::vector<float>>::reserve(&v31, a2);
  if (a2)
  {
    v26 = 0;
    do
    {
      v27 = v9 + (v26 * v23);
      v29 = 0;
      v30 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v27, &__p, 1uLL);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v31, &__p);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      ++v26;
    }

    while (a2 != v26);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a3, v31, v32, 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3));
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a3 + 3), v34, v35, v35 - v34);
  __p = &v31;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }
}

void sub_21804BA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void MIL::Passes::PalettizeUnique(MIL::IRConstantDimension *a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  *&v50[12] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v46[0] = v8;
  v46[1] = v7;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  DataView = MIL::ValueInference::Tensor<float>::GetDataView(v47);
  v10 = MIL::ValueInference::Tensor<float>::GetDataView(v47);
  std::set<float>::set[abi:ne200100]<float const*>(&v43, DataView, (v10 + 4 * v11));
  v48 = xmmword_218588228;
  v49 = 8;
  *&v41 = 0;
  v40 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v40, &v48, v50, 5uLL);
  if (v40 == *(&v40 + 1))
  {
LABEL_9:
    v13 = -1;
  }

  else
  {
    v12 = v40;
    while (1)
    {
      v13 = *v12;
      if (v45 <= 1 << *v12)
      {
        break;
      }

      if (++v12 == *(&v40 + 1))
      {
        goto LABEL_9;
      }
    }
  }

  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  *a3 = v13;
  if (v13 != -1)
  {
    std::vector<float>::vector[abi:ne200100](&v48, 1 << v13);
    v14 = v43;
    if (v43 != &v44)
    {
      v15 = v48;
      do
      {
        *v15 = *(v14 + 7);
        v16 = v14[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v14[2];
            v18 = *v17 == v14;
            v14 = v17;
          }

          while (!v18);
        }

        ++v15;
        v14 = v17;
      }

      while (v17 != &v44);
    }

    v40 = 0u;
    v41 = 0u;
    v42 = 1065353216;
    if (v45)
    {
      v19 = 0;
      for (i = 0; i < v45; ++i)
      {
        v37 = (v48 + v19);
        *(std::__hash_table<std::__hash_value_type<float,unsigned char>,std::__unordered_map_hasher<float,std::__hash_value_type<float,unsigned char>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,unsigned char>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,unsigned char>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(&v40, (v48 + v19)) + 20) = i;
        v19 += 4;
      }
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    MIL::ValueInference::Tensor<float>::GetDataView(v47);
    std::vector<unsigned char>::reserve(&v37, v21);
    v35 = a1;
    for (j = MIL::ValueInference::Tensor<float>::GetDataView(v47); ; j += 4)
    {
      v23 = MIL::ValueInference::Tensor<float>::GetDataView(v47);
      if (j == (v23 + 4 * v24))
      {
        break;
      }

      __p = j;
      v25 = std::__hash_table<std::__hash_value_type<float,unsigned char>,std::__unordered_map_hasher<float,std::__hash_value_type<float,unsigned char>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,unsigned char>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,unsigned char>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(&v40, j);
      v26 = v38;
      if (v38 >= v39)
      {
        v28 = v37;
        v29 = (v38 - v37);
        v30 = v38 - v37 + 1;
        if (v30 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v31 = v39 - v37;
        if (2 * (v39 - v37) > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          operator new();
        }

        v33 = v38 - v37;
        *v29 = *(v25 + 20);
        v27 = v29 + 1;
        memcpy(0, v28, v33);
        v37 = 0;
        v38 = v29 + 1;
        v39 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v38 = *(v25 + 20);
        v27 = v26 + 1;
      }

      v38 = v27;
    }

    MIL::ParserContext::GetProgramFirstSet(v47);
    v34 = (*(*v8 + 32))(v8);
    (*(*v34 + 88))(v34);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  std::__tree<float>::destroy(&v43, v44);
  MIL::ValueInference::Tensor<float>::~Tensor(v47);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_21804BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&a21);
  v34 = *(v32 - 128);
  if (v34)
  {
    *(v32 - 120) = v34;
    operator delete(v34);
  }

  std::__tree<float>::destroy(&a27, a28);
  MIL::ValueInference::Tensor<float>::~Tensor(&a32);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void MIL::Passes::PalettizePerBlockKmeans(MIL::IRConstantDimension *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t **a5)
{
  if ((a5[1] - *a5) < 0x21)
  {
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31[0] = v10;
    v31[1] = v9;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v11 = *a5;
    v12 = a5[1];
    v13 = 1;
    while (v11 != v12)
    {
      ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v32);
      v15 = *v11;
      v16 = v11[1];
      v11 += 2;
      v13 *= *(*ProgramFirstSet + 8 * v15) / v16;
    }

    memset(v30, 0, sizeof(v30));
    std::vector<std::vector<float>>::reserve(v30, v13);
    memset(v29, 0, sizeof(v29));
    std::vector<std::vector<unsigned char>>::reserve(v29, v13);
    v17 = MIL::ParserContext::GetProgramFirstSet(v32);
    if (v13)
    {
      v18 = 0;
      v19 = 1 << a3;
      do
      {
        MIL::ValueInference::Tensor<float>::SubTensor(v32, v27, v26);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v30, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        std::vector<std::vector<unsigned char>>::push_back[abi:ne200100](v29, v24);
        if (v24[0])
        {
          v24[1] = v24[0];
          operator delete(v24[0]);
        }

        __p[0] = v23;
        std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](__p);
        v23[0] = v25;
        std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v23);
        MIL::ValueInference::Tensor<float>::~Tensor(v26);
        if (v27[0])
        {
          v27[1] = v27[0];
          operator delete(v27[0]);
        }

        ++v18;
      }

      while (v13 != v18);
    }

    MIL::ParserContext::GetProgramFirstSet(v32);
    v20 = (*(*v10 + 32))(v10);
    (*(*v20 + 88))(v20);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Per-block palettization only allows on at most 2 channels.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *std::vector<std::vector<float>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<std::vector<unsigned char>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *MIL::Passes::anonymous namespace::BlockwiseIndexConverter::BlockwiseIndexConverter(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = *a1;
    do
    {
      v10 = *v6;
      v9 = v6[1];
      v6 += 2;
      *(v8 + 8 * v10) = v9;
    }

    while (v6 != v7);
  }

  std::vector<unsigned long long>::vector[abi:ne200100](a1 + 3, (a2[1] - *a2) >> 3);
  v11 = *a3;
  v12 = a3[1];
  if (*a3 != v12)
  {
    v13 = *a2;
    v14 = a1[3];
    do
    {
      v15 = *v11;
      v16 = v11[1];
      v11 += 2;
      *(v14 + 8 * v15) = *(v13 + 8 * v15) / v16;
    }

    while (v11 != v12);
  }

  std::vector<unsigned long long>::vector[abi:ne200100](a1 + 6, (a1[4] - a1[3]) >> 3);
  v17 = a1[3];
  v18 = a1[4] - v17;
  if (v18)
  {
    v19 = v18 >> 3;
    if ((v18 >> 3) <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18 >> 3;
    }

    v21 = 8 * v19 - 8;
    v22 = (v17 + v21);
    v23 = (a1[6] + v21);
    v24 = 1;
    do
    {
      *v23-- = v24;
      v25 = *v22--;
      v24 *= v25;
      --v20;
    }

    while (v20);
  }

  return a1;
}

void sub_21804C748(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Passes::anonymous namespace::BlockwiseIndexConverter::GetBlockIndices(MIL::Passes::_anonymous_namespace_::BlockwiseIndexConverter *this@<X0>, unint64_t a2@<X1>, const void **a3@<X8>)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&v27, (*(this + 7) - *(this + 6)) >> 3);
  v6 = *(this + 6);
  v7 = *(this + 7) - v6;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = v27;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      *v9++ = a2 / *v6;
      v10 = *v6++;
      a2 %= v10;
      --v8;
    }

    while (v8);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<MIL::Passes::BlockInfo>::reserve(a3, v28 - v27);
  v11 = v27;
  if (v28 != v27)
  {
    v12 = 0;
    v13 = a3[1];
    do
    {
      v14 = *(*this + 8 * v12);
      v15 = v14 * v11[v12];
      v16 = v14 + v15;
      v17 = a3[2];
      if (v13 >= v17)
      {
        v18 = *a3;
        v19 = v13 - *a3;
        v20 = v19 >> 4;
        v21 = (v19 >> 4) + 1;
        if (v21 >> 60)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v22 = v17 - v18;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v23 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Passes::BlockInfo>>(a3, v23);
        }

        v24 = (16 * v20);
        *v24 = v15;
        v24[1] = v16;
        v13 = (16 * v20 + 16);
        v25 = &v24[-2 * (v19 >> 4)];
        memcpy(v25, v18, v19);
        v26 = *a3;
        *a3 = v25;
        a3[1] = v13;
        a3[2] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v13 = v15;
        *(v13 + 1) = v16;
        v13 += 16;
      }

      a3[1] = v13;
      ++v12;
      v11 = v27;
    }

    while (v12 < v28 - v27);
  }

  if (v11)
  {
    v28 = v11;
    operator delete(v11);
  }
}

void sub_21804C934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

uint64_t std::vector<std::vector<unsigned char>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<unsigned char>>::__emplace_back_slow_path<std::vector<unsigned char> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<unsigned char>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned char> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void MIL::Passes::anonymous namespace::PackPerBlockPalettizedInputs(MIL::IRConstantDimension *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  v7 = v5 - *a2;
  if (v7 == a3[1] - *a3)
  {
    memset(v27, 0, sizeof(v27));
    v23 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    std::vector<MIL::ValueInference::Tensor<unsigned char>>::reserve(v27, v23);
    if (v5 != v6)
    {
      v13 = 0;
      if (v23 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v23;
      }

      do
      {
        __p = 0;
        v25 = 0;
        v26 = 0;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a5, a5[1], (a5[1] - *a5) >> 3);
        if (*(a4 + 16) == 1)
        {
          *(__p + *(a4 + 8)) /= *a4;
        }

        MIL::ValueInference::Tensor<unsigned char>::Tensor(&v28, &__p, *a2 + v13);
        std::vector<MIL::ValueInference::Tensor<unsigned char>>::push_back[abi:ne200100](v27, &v28);
        MIL::ValueInference::Tensor<unsigned char>::~Tensor(&v28);
        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }

        v13 += 24;
        --v14;
      }

      while (v14);
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v28, a5[3], a5[4], (a5[4] - a5[3]) >> 3);
    MIL::ValueInference::Tensor<unsigned char>::BlockwiseMerge(v27, &v28, &__p);
    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    v15 = ((*(*a3 + 8) - **a3) >> 2) / *a4;
    if (v15 > 15)
    {
      switch(v15)
      {
        case 16:
          ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(&__p);
          v28 = 0;
          v29 = 0;
          v30 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v28, *ProgramFirstSet, ProgramFirstSet[1], (ProgramFirstSet[1] - *ProgramFirstSet) >> 3);
          MIL::IRTensorValueType::Make(a1, 20, &v28);
        case 64:
          v18 = MIL::ParserContext::GetProgramFirstSet(&__p);
          v28 = 0;
          v29 = 0;
          v30 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v28, *v18, v18[1], (v18[1] - *v18) >> 3);
          MIL::IRTensorValueType::Make(a1, 23, &v28);
        case 256:
          MIL::ValueInference::Tensor<unsigned char>::ToIRTensorValue(&__p, a1);
      }
    }

    else
    {
      switch(v15)
      {
        case 2:
          v19 = MIL::ParserContext::GetProgramFirstSet(&__p);
          v28 = 0;
          v29 = 0;
          v30 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v28, *v19, v19[1], (v19[1] - *v19) >> 3);
          MIL::IRTensorValueType::Make(a1, 21, &v28);
        case 4:
          v17 = MIL::ParserContext::GetProgramFirstSet(&__p);
          v28 = 0;
          v29 = 0;
          v30 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v28, *v17, v17[1], (v17[1] - *v17) >> 3);
          MIL::IRTensorValueType::Make(a1, 19, &v28);
        case 8:
          v16 = MIL::ParserContext::GetProgramFirstSet(&__p);
          v28 = 0;
          v29 = 0;
          v30 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v28, *v16, v16[1], (v16[1] - *v16) >> 3);
          MIL::IRTensorValueType::Make(a1, 22, &v28);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unsupported numPalettes");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v21, "Sanity check failed, indicesData.size() != lutData.size()");
  __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_21804D9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v61 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a55);
      MIL::ValueInference::Tensor<float>::~Tensor(&a27);
      a55 = &a35;
      std::vector<MIL::ValueInference::Tensor<float>>::__destroy_vector::operator()[abi:ne200100](&a55);
      if (a38)
      {
        a39 = a38;
        operator delete(a38);
      }

      if (a42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a42);
      }

      MIL::ValueInference::Tensor<unsigned char>::~Tensor(&a43);
      a55 = &a51;
      std::vector<MIL::ValueInference::Tensor<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&a55);
      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v60);
  goto LABEL_6;
}

void sub_21804DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a41)
  {
    JUMPOUT(0x21804DD70);
  }

  JUMPOUT(0x21804DD30);
}

void MIL::Passes::anonymous namespace::BlockwiseIndexConverter::~BlockwiseIndexConverter(MIL::Passes::_anonymous_namespace_::BlockwiseIndexConverter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void MIL::Passes::PalettizePerBlockUniform(MIL::IRConstantDimension *a1, uint64_t *a2, char a3, uint64_t **a4)
{
  v4 = a4[1] - *a4;
  if (v4 && v4 < 0x21)
  {
    v9 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37[0] = v9;
    v37[1] = v8;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v10 = *a4;
    v11 = a4[1];
    v12 = 1;
    while (v10 != v11)
    {
      ProgramFirstSet = MIL::ParserContext::GetProgramFirstSet(v38);
      v14 = *v10;
      v15 = v10[1];
      v10 += 2;
      v12 *= *(*ProgramFirstSet + 8 * v14) / v15;
    }

    memset(v36, 0, sizeof(v36));
    std::vector<std::vector<float>>::reserve(v36, v12);
    memset(v35, 0, sizeof(v35));
    std::vector<std::vector<unsigned char>>::reserve(v35, v12);
    v16 = MIL::ParserContext::GetProgramFirstSet(v38);
    if (v12)
    {
      v17 = 0;
      v18 = 1 << a3;
      do
      {
        MIL::ValueInference::Tensor<float>::SubTensor(v38, v33, &v30);
        DataView = MIL::ValueInference::Tensor<float>::GetDataView(&v30);
        v20 = MIL::ValueInference::Tensor<float>::GetDataView(&v30);
        v27 = 0;
        v28 = 0;
        v29 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v27, DataView, v20 + 4 * v21, (v20 + 4 * v21 - DataView) >> 2);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v36, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        std::vector<std::vector<unsigned char>>::push_back[abi:ne200100](v35, v26);
        if (v26[0])
        {
          v26[1] = v26[0];
          operator delete(v26[0]);
        }

        __p[0] = v25;
        std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](__p);
        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }

        MIL::ValueInference::Tensor<float>::~Tensor(&v30);
        if (v33[0])
        {
          v33[1] = v33[0];
          operator delete(v33[0]);
        }

        ++v17;
      }

      while (v12 != v17);
    }

    v30 = 1;
    v31 = 0;
    v32 = 0;
    MIL::ParserContext::GetProgramFirstSet(v38);
    v22 = (*(*v9 + 32))(v9);
    (*(*v22 + 88))(v22);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Per-block palettization only allows on 1 or 2 channels.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[13],std::unique_ptr<MIL::IRTensorValue const>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v5 + 3, a3);
  return a1;
}

void sub_21804E234(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(void *a1)
{
  *a1 = &unk_2829E5E30;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<MIL::Fp16>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *MIL::ValueInference::Tensor<float>::~Tensor(void *a1)
{
  *a1 = &unk_2829E5E60;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<float>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<float>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

float std::__function::__func<MIL::Passes::anonymous namespace::CalculateQuantizedDataTensor(MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&)::$_0,std::allocator<MIL::Passes::anonymous namespace::CalculateQuantizedDataTensor(MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&)::$_0>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  result = *a2;
  if (*a2 == 0.0)
  {
    return 3.4028e38;
  }

  return result;
}

uint64_t std::__function::__func<MIL::Passes::anonymous namespace::CalculateQuantizedDataTensor(MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&)::$_0,std::allocator<MIL::Passes::anonymous namespace::CalculateQuantizedDataTensor(MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&,MIL::ValueInference::Tensor<float> const&)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *MIL::ValueInference::Tensor<unsigned char>::~Tensor(void *a1)
{
  *a1 = &unk_2829E5F20;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<unsigned char>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<unsigned char>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::ValueInference::Tensor<signed char>::~Tensor(void *a1)
{
  *a1 = &unk_2829E5F50;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MIL::ValueInference::Tensor<signed char>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<signed char>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IRTensorValue const>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v5 + 3, a3);
  return a1;
}

void sub_21804E658(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Passes::anonymous namespace::MakeFlattenTensorValue(MIL::IRConstantDimension *a1, void *a2, uint64_t a3)
{
  v7[32] = *MEMORY[0x277D85DE8];
  __src = ((a2[1] - *a2) >> 2);
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &__src, v7, 1uLL);
  MIL::IRTensorValueType::Make(a1, a3, __p);
}

void sub_21804EAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a19);
      if (a16)
      {
        operator delete(a16);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void MIL::Passes::anonymous namespace::PackBitsToTensorValue(MIL::IRConstantDimension *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4)
  {
    for (i = 0; i < v4; i += 8)
    {
      v7 = 0;
      v8 = v3 + i;
      for (j = 7; j != -1; --j)
      {
        v7 *= 2;
        if (i + j < v4)
        {
          v7 += *(v8 + j);
        }
      }

      LOBYTE(__p[0]) = v7;
      std::vector<char>::push_back[abi:ne200100](&v11, __p);
      v3 = *a2;
      v4 = a2[1] - *a2;
    }

    v4 = v12 - v11;
  }

  v14 = v4;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v14, &v15, 1uLL);
  MIL::IRTensorValueType::Make(a1, 14, __p);
}

void sub_21804ED58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Passes::anonymous namespace::ConstructShapeTensorValue(MIL::IRConstantDimension *a1, void *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  __p = ((a2[1] - *a2) >> 3);
  memset(v3, 0, sizeof(v3));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v3, &__p, v5, 1uLL);
  MIL::IRTensorValueType::Make(a1, 16, v3);
}

void sub_21804EEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (a9)
  {
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::Fp16>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21804F044(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21804F0BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21804F134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float std::__function::__func<MIL::Passes::anonymous namespace::ProcessSparsifiedTensor(MIL::MILContext &,MIL::ValueInference::Tensor<float> const&,MIL::IRDataType)::$_0,std::allocator<MIL::Passes::anonymous namespace::ProcessSparsifiedTensor(MIL::MILContext &,MIL::ValueInference::Tensor<float> const&,MIL::IRDataType)::$_0>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  result = 0.0;
  if (*a2 != 0.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t std::__function::__func<MIL::Passes::anonymous namespace::ProcessSparsifiedTensor(MIL::MILContext &,MIL::ValueInference::Tensor<float> const&,MIL::IRDataType)::$_0,std::allocator<MIL::Passes::anonymous namespace::ProcessSparsifiedTensor(MIL::MILContext &,MIL::ValueInference::Tensor<float> const&,MIL::IRDataType)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21804F294(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned long long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned long long>>::clear[abi:ne200100](uint64_t *a1)
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

void *std::vector<MIL::Passes::BlockInfo>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Passes::BlockInfo>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

unint64_t MIL::Passes::anonymous namespace::FindClosestClusterId(float **a1, uint64_t a2)
{
  v4 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> const*>,std::vector<float>,std::__identity,std::__less<void,void>>(*a2, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v5 = *a2;
  if (*(a2 + 8) == v4)
  {
    return 0xAAAAAAAAAAAAAAABLL * (v4 - v5) - 1;
  }

  if (v5 == v4)
  {
    return 0;
  }

  v6 = *v4;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4[1] - *v4;
  if (v9)
  {
    v10 = v9 >> 2;
    v11 = *a1;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v12 = *v6++;
      v13 = v12;
      v14 = *v11++;
      v8 = v8 + ((v13 - v14) * (v13 - v14));
      --v10;
    }

    while (v10);
  }

  v15 = *(v4 - 3);
  v16 = sqrtf(v8);
  v17 = *(v4 - 2) - v15;
  if (v17)
  {
    v18 = v17 >> 2;
    v19 = *a1;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v7 = 0.0;
    do
    {
      v20 = *v15++;
      v21 = v20;
      v22 = *v19++;
      v7 = v7 + ((v21 - v22) * (v21 - v22));
      --v18;
    }

    while (v18);
  }

  if (v16 >= sqrtf(v7))
  {
    v23 = (v4 - 3) - v5;
  }

  else
  {
    v23 = v4 - v5;
  }

  return 0xAAAAAAAAAAAAAAABLL * (v23 >> 3);
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float> const*>,std::__wrap_iter<std::vector<float> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21804F744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float> const*,std::vector<float> const*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<float> const*>,std::__wrap_iter<std::vector<float> const*>,std::back_insert_iterator<std::vector<std::vector<float>>>,long,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t *a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  if (v7)
  {
    v9 = a1;
    v10 = v6 - 1;
    do
    {
      v12[0] = 0;
      v12[1] = v10;
      if (std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v12, a5, v12) < v7)
      {
        std::vector<std::vector<float>>::push_back[abi:ne200100](a3, v9);
        --v7;
      }

      v9 += 3;
      --v10;
    }

    while (v7);
  }

  return a3;
}

uint64_t std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_21804FEF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::discrete_distribution<int>::param_type::param_type[abi:ne200100]<std::__wrap_iter<float *>>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a1, a2, a3, (a3 - a2) >> 2);
  std::discrete_distribution<int>::param_type::__init(a1);
  return a1;
}

void sub_21804FF54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::discrete_distribution<int>::param_type::__init(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v4 = v2 - v1;
    if (v4 < 2)
    {
      *(a1 + 8) = v1;

      std::vector<double>::shrink_to_fit(a1);
    }

    else
    {
      v5 = 0.0;
      v6 = *a1;
      do
      {
        v7 = *v6++;
        v5 = v5 + v7;
      }

      while (v6 != v2);
      while (v1 < v2)
      {
        *v1 = *v1 / v5;
        ++v1;
      }

      std::vector<double>::vector[abi:ne200100](&v16, v4 - 1);
      v8 = *a1;
      v9 = *(a1 + 8) - 8;
      v10 = v16;
      if (v9 != *a1)
      {
        v11 = v8 + 1;
        v12 = *v8;
        *v16 = *v8;
        if (v8 + 1 != v9)
        {
          v13 = v10 + 1;
          do
          {
            v14 = *v11++;
            v12 = v12 + v14;
            *v13++ = v12;
          }

          while (v11 != v9);
        }
      }

      *a1 = v10;
      v15 = *(a1 + 16);
      *(a1 + 8) = v17;
      v16 = v8;
      *(&v17 + 1) = v15;
      if (v8)
      {
        *&v17 = v8;
        operator delete(v8);
      }
    }
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2180500D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_218050224(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::discrete_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(int a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, double **a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
  v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
  if (v6 != v5)
  {
    v9 = v6 - v5;
    do
    {
      v10 = v9 >> 1;
      v11 = &v5[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if ((v7 + v8 * 4294967300.0) * 5.42101086e-20 < v13)
      {
        v9 = v10;
      }

      else
      {
        v5 = v12;
      }
    }

    while (v9);
    v6 = v5;
  }

  return (v6 - *a3) >> 3;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,false>(uint64_t a1, std::vector<unsigned int> *a2, uint64_t a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v10;
        v11 = a2 - v10;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3uLL:

              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(v10, v10 + 3, &a2[-1]);
              return;
            case 4uLL:

              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(v10, v10 + 3, v10 + 6, &a2[-1]);
              return;
            case 5uLL:

              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(v10, v10 + 3, v10 + 6, v10 + 9, &a2[-1]);
              return;
          }
        }

        else
        {
          if (v12 < 2)
          {
            return;
          }

          if (v12 == 2)
          {
            v29 = *v10;
            v30 = v10[1];
            if (*v10 != v30)
            {
              v31 = 0;
              begin = a2[-1].__begin_;
              while (1)
              {
                v33 = &begin[v31];
                if (&begin[v31] == a2[-1].__end_)
                {
                  break;
                }

                v34 = v29[v31];
                if (*v33 < v34)
                {
                  break;
                }

                ++v31;
                if (v34 < *v33 || &v29[v31] == v30)
                {
                  return;
                }
              }

              *v10 = begin;
              a2[-1].__begin_ = v29;
              v36 = v10[1];
              v10[1] = a2[-1].__end_;
              a2[-1].__end_ = v36;
              v37 = v10[2];
              v10[2] = a2[-1].__end_cap_.__value_;
              a2[-1].__end_cap_.__value_ = v37;
            }

            return;
          }
        }

        if (v11 <= 575)
        {
          if (a5)
          {

            std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(v10, a2);
          }

          else
          {

            std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(v10, a2);
          }

          return;
        }

        if (!a4)
        {
          if (v10 != a2)
          {

            std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,std::vector<float> *>(v10, a2, &a2->__begin_, a3);
          }

          return;
        }

        v13 = v12 >> 1;
        v14 = a1 + 24 * (v12 >> 1);
        if (v11 < 0xC01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>((a1 + 24 * v13), a1, &a2[-1]);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, (a1 + 24 * v13), &a2[-1]);
          v15 = 3 * v13;
          v16 = (a1 + 24 * v13 - 24);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>((a1 + 24), v16, &a2[-2]);
          v17 = (a1 + 24 + 8 * v15);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>((a1 + 48), v17, &a2[-3]);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(v16, v14, v17);
          v18 = *a1;
          *a1 = *v14;
          *v14 = v18;
          v19 = *(a1 + 16);
          *(a1 + 16) = *(v14 + 16);
          *(v14 + 16) = v19;
        }

        --a4;
        if (a5)
        {
          break;
        }

        v23 = *(a1 + 8);
        if (*a1 != v23)
        {
          v24 = *(a1 - 24);
          v25 = *a1 + 4;
          while (v24 != *(a1 - 16))
          {
            v26 = *v24;
            v27 = *(v25 - 4);
            if (*v24 < v27)
            {
              break;
            }

            ++v24;
            v28 = v27 < v26 || v25 == v23;
            v25 += 4;
            if (v28)
            {
              goto LABEL_28;
            }
          }

          break;
        }

LABEL_28:
        v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<float> *,std::__less<void,void> &>(a1, a2);
        a5 = 0;
      }

      v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<float> *,std::__less<void,void> &>(a1, a2);
      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }

      v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(a1, v20);
      v10 = (v20 + 3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *>(v20 + 3, a2))
      {
        break;
      }

      if (!v22)
      {
LABEL_18:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,false>(a1, v20, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v20 + 3);
      }
    }

    a2 = v20;
    if (!v22)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(float **a1, float **a2, float **a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_10:
    if (v3 == v4)
    {
      return 0;
    }

    v11 = 0;
    v12 = *a3;
    while (1)
    {
      v13 = &v12[v11];
      if (&v12[v11] == a3[1])
      {
        break;
      }

      v14 = v3[v11];
      if (*v13 < v14)
      {
        break;
      }

      ++v11;
      if (v14 < *v13 || &v3[v11] == v4)
      {
        return 0;
      }
    }

    *a2 = v12;
    *a3 = v3;
    v32 = a2[1];
    a2[1] = a3[1];
    a3[1] = v32;
    v34 = (a2 + 2);
    v33 = a2[2];
    a2[2] = a3[2];
    a3[2] = v33;
    v35 = *a1;
    v36 = a1[1];
    if (*a1 != v36)
    {
      v37 = 0;
      v38 = *a2;
      while (1)
      {
        v39 = &v38[v37];
        if (&v38[v37] == a2[1])
        {
          break;
        }

        v40 = v35[v37];
        if (*v39 < v40)
        {
          break;
        }

        ++v37;
        if (v40 < *v39 || &v35[v37] == v36)
        {
          return 1;
        }
      }

      *a1 = v38;
      *a2 = v35;
      v44 = a1[1];
      a1[1] = a2[1];
      a2[1] = v44;
      v23 = (a1 + 2);
      goto LABEL_53;
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = &v3[v7];
      if (&v3[v7] == v4)
      {
        break;
      }

      v9 = v5[v7];
      if (*v8 < v9)
      {
        break;
      }

      ++v7;
      if (v9 < *v8 || &v5[v7] == v6)
      {
        goto LABEL_10;
      }
    }

    if (v3 != v4)
    {
      v17 = v3 + 1;
      v18 = *a3;
      while (v18 != a3[1])
      {
        v19 = *v18;
        v20 = *(v17 - 1);
        if (*v18 < v20)
        {
          break;
        }

        ++v18;
        if (v20 < v19 || v17++ == v4)
        {
          goto LABEL_29;
        }
      }

      *a1 = *a3;
      *a3 = v5;
      v42 = a1[1];
      a1[1] = a3[1];
      a3[1] = v42;
      v23 = (a1 + 2);
      goto LABEL_51;
    }

LABEL_29:
    *a1 = v3;
    *a2 = v5;
    v22 = a1[1];
    a1[1] = a2[1];
    a2[1] = v22;
    v23 = (a2 + 2);
    v24 = a1[2];
    a1[2] = a2[2];
    a2[2] = v24;
    v25 = *a2;
    v26 = a2[1];
    if (*a2 != v26)
    {
      v27 = 0;
      v28 = *a3;
      while (1)
      {
        v29 = &v28[v27];
        if (&v28[v27] == a3[1])
        {
          break;
        }

        v30 = v25[v27];
        if (*v29 < v30)
        {
          break;
        }

        ++v27;
        if (v30 < *v29 || &v25[v27] == v26)
        {
          return 1;
        }
      }

      *a2 = v28;
      *a3 = v25;
      v43 = a2[1];
      a2[1] = a3[1];
      a3[1] = v43;
LABEL_51:
      v34 = (a3 + 2);
LABEL_53:
      v45 = *v23;
      *v23 = *v34;
      *v34 = v45;
    }
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(float **a1, float **a2, float **a3, float **a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<float> *,0>(a1, a2, a3);
  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    v11 = 0;
    v12 = *a4;
    while (1)
    {
      v13 = &v12[v11];
      if (&v12[v11] == a4[1])
      {
        break;
      }

      v14 = v9[v11];
      if (*v13 < v14)
      {
        break;
      }

      ++v11;
      if (v14 < *v13 || &v9[v11] == v10)
      {
        return result;
      }
    }

    *a3 = v12;
    *a4 = v9;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = a3[2];
    a3[2] = a4[2];
    a4[2] = v17;
    v18 = *a2;
    v19 = a2[1];
    if (*a2 != v19)
    {
      v20 = 0;
      v21 = *a3;
      while (1)
      {
        v22 = &v21[v20];
        if (&v21[v20] == a3[1])
        {
          break;
        }

        v23 = v18[v20];
        if (*v22 < v23)
        {
          break;
        }

        ++v20;
        if (v23 < *v22 || &v18[v20] == v19)
        {
          return result;
        }
      }

      *a2 = v21;
      *a3 = v18;
      v25 = a2[1];
      a2[1] = a3[1];
      a3[1] = v25;
      v26 = a2[2];
      a2[2] = a3[2];
      a3[2] = v26;
      v27 = *a1;
      v28 = a1[1];
      if (*a1 != v28)
      {
        v29 = 0;
        v30 = *a2;
        while (1)
        {
          v31 = &v30[v29];
          if (&v30[v29] == a2[1])
          {
            break;
          }

          v32 = v27[v29];
          if (*v31 < v32)
          {
            break;
          }

          ++v29;
          if (v32 < *v31 || &v27[v29] == v28)
          {
            return result;
          }
        }

        *a1 = v30;
        *a2 = v27;
        v34 = a1[1];
        a1[1] = a2[1];
        a2[1] = v34;
        v35 = a1[2];
        a1[2] = a2[2];
        a2[2] = v35;
      }
    }
  }

  return result;
}