uint64_t TCondition::test(uint64_t a1, uint64_t a2, int *a3, int *a4, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  if (*(a1 + 12) == 7)
  {
    LOBYTE(v6) = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) < 0xFFFFFFFFLL * *a1 / 0x64uLL;
    return v6 & 1;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  collectEdge(a2, *(a1 + 8), &v20);
  v9 = v20;
  v10 = v21;
  if (v21 == v20)
  {
    LOBYTE(v6) = 0;
    if (!v20)
    {
      return v6 & 1;
    }

    goto LABEL_21;
  }

  v11 = 0;
  v6 = 0;
  do
  {
    v12 = v9[v11];
    if (*(v12 + 48) != 3)
    {
      v16 = v18;
      v17 = xmmword_1B5AE2110;
      v19 = 1;
      TCondition::getSource(a1, v12, a3, a4, &v16);
      if (*(&v17 + 1))
      {
        v13 = *(a1 + 24);
        if (*(&v17 + 1) >= v17)
        {
          if (v19)
          {
            v23 = 0;
            TBuffer<wchar_t>::insert(&v16, *(&v17 + 1), &v23, 1uLL);
            v14 = v16;
            --*(&v17 + 1);
          }

          else
          {
            v14 = v16;
            if (v17)
            {
              v16[v17 - 1] = 0;
            }
          }
        }

        else
        {
          v14 = v16;
          v16[*(&v17 + 1)] = 0;
        }

        v6 |= TRegExp::match(v13, v14, 0) ^ *(a1 + 16);
      }

      if (v19 == 1 && v16 != v18 && v16)
      {
        MEMORY[0x1B8C85310]();
      }

      v9 = v20;
      v10 = v21;
    }

    ++v11;
  }

  while (v11 < v10 - v9);
  if (v9)
  {
LABEL_21:
    v21 = v9;
    operator delete(v9);
  }

  return v6 & 1;
}

void sub_1B58852CC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void collectEdge(uint64_t a1, int a2, uint64_t a3)
{
  v11 = a1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        OutEdge = TVertex::getInEdge(*(a1 + 16));
        if (OutEdge)
        {
LABEL_9:
          std::vector<TVertex const*>::push_back[abi:ne200100](a3, &OutEdge);
          v4 = OutEdge;
          while (1)
          {
            v4 = *v4;
            if (!v4)
            {
              break;
            }

            if ((*(v4 + 32) & 1) == 0)
            {
              OutEdge = v4;
              goto LABEL_9;
            }
          }
        }
      }
    }

    else
    {
      v8 = TVertex::getInEdge(*(a1 + 16));
      if (v8)
      {
        v9 = v8;
LABEL_26:
        collectEdge(v9, 1, a3);
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if ((*(v9 + 32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        OutEdge = TVertex::getOutEdge(*(a1 + 24));
        if (OutEdge)
        {
LABEL_14:
          std::vector<TVertex const*>::push_back[abi:ne200100](a3, &OutEdge);
          v5 = OutEdge;
          while (1)
          {
            v5 = *(v5 + 8);
            if (!v5)
            {
              break;
            }

            if ((*(v5 + 32) & 1) == 0)
            {
              OutEdge = v5;
              goto LABEL_14;
            }
          }
        }

        break;
      case 3:
        v6 = TVertex::getOutEdge(*(a1 + 24));
        if (v6)
        {
          v7 = v6;
LABEL_20:
          collectEdge(v7, 2, a3);
          while (1)
          {
            v7 = *(v7 + 8);
            if (!v7)
            {
              break;
            }

            if ((*(v7 + 32) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        break;
      case 4:
        std::vector<TVertex const*>::push_back[abi:ne200100](a3, &v11);
        break;
    }
  }
}

void TRule::TRule(TRule *this, const TFileObject *a2, TLexicon *a3, TAllocator *a4)
{
  *(this + 32) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(this, 0xAuLL);
  for (i = *(a2 + 3); i; i = *(i + 16))
  {
    if (wcscmp(*(i + 8), dword_1B5B2D158))
    {
      operator new();
    }

    if (*(this + 3))
    {
      loggableFileObject(i);
      v9 = __p;
      if (v18 < 0)
      {
        v9 = __p[0];
      }

      tknPrintf("Error: %sRedefinition\n", v9);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v15, "");
      TException::TException(__p, v15);
      __p[0] = &unk_1F2D00400;
      if (v19 >= 0)
      {
        v10 = &__p[1];
      }

      else
      {
        v10 = __p[1];
      }

      conditionalAssert(v10, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 422);
      TException::~TException(__p);
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      TException::TException(exception, __p);
      *exception = &unk_1F2D00400;
    }

    *(this + 3) = buildReplaceObject(i, a3, a4);
    *(this + 32) = 1;
  }

  if (*this == *(this + 1))
  {
    loggableFileObject(a2);
    if (v18 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    tknPrintf("Error: %sRule is missing a condition\n", v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v15, "");
    TException::TException(__p, v15);
    __p[0] = &unk_1F2D00400;
    if (v19 >= 0)
    {
      v13 = &__p[1];
    }

    else
    {
      v13 = __p[1];
    }

    conditionalAssert(v13, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 445);
    TException::~TException(__p);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    v14 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v14, __p);
    *v14 = &unk_1F2D00400;
  }
}

void sub_1B5885A30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26 == 1)
  {
    __cxa_begin_catch(a1);
    TRule::freeMemory(v25);
    __cxa_rethrow();
  }

  JUMPOUT(0x1B5885B10);
}

void sub_1B5885AFC(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

TFileObject *buildReplaceObject(const TFileObject *a1, TLexicon *a2, TAllocator *a3)
{
  v15 = &unk_1B5B2D1C8;
  v16 = xmmword_1B5AFFEF0;
  v17 = -1;
  if (TFileObject::verify(a1, &v15, 1, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v13, __p);
    v13[0].__vftable = &unk_1F2D00400;
    if (v14 >= 0)
    {
      v9 = &v13[1];
    }

    else
    {
      v9 = v13[1].__vftable;
    }

    conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 388);
    TException::~TException(v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v13, "");
    TException::TException(exception, v13);
    *exception = &unk_1F2D00400;
  }

  v6 = *(a1 + 3);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v7 = compileAlt(v6, v7, a2, a3);
    v6 = *(v6 + 2);
  }

  while (v6);
  return v7;
}

void sub_1B5885CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
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

uint64_t *TRule::freeMemory(uint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  if (v1 != *this)
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        TCondition::~TCondition(this);
        this = MEMORY[0x1B8C85350]();
        v2 = *v3;
        v1 = v3[1];
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }

  return this;
}

void TRule::~TRule(TRule *this)
{
  TRule::freeMemory(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t TRule::test(uint64_t *a1, uint64_t a2, int *a3, int *a4, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  v5 = *a1;
  if (a1[1] == *a1)
  {
    return 1;
  }

  v11 = 0;
  do
  {
    result = TCondition::test(*(v5 + 8 * v11), a2, a3, a4, this);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v11;
    v5 = *a1;
  }

  while (v11 < (a1[1] - *a1) >> 3);
  return result;
}

void TGroup::TGroup(TGroup *this, const TFileObject *a2, TRegExp *a3, uint64_t a4, TLexicon *a5, TAllocator *a6)
{
  v63 = *MEMORY[0x1E69E9840];
  *(this + 32) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(this, 0xAuLL);
  v55 = xmmword_1B5AE0060;
  v54 = dword_1B5B2D178;
  v58 = xmmword_1B5AFFEF0;
  v56 = -1;
  v57 = dword_1B5B2D194;
  v61 = xmmword_1B5AE5400;
  v59 = -1;
  v60 = dword_1B5B2D158;
  v62 = -1;
  if (TFileObject::verify(a2, &v54, 3, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(&v50, "");
    TException::TException(&__p, &v50);
    __p = &unk_1F2D00400;
    if (v39[7] >= 0)
    {
      v29 = &v38;
    }

    else
    {
      v29 = v38;
    }

    conditionalAssert(v29, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 593);
    TException::~TException(&__p);
    if (v51.i8[15] < 0)
    {
      operator delete(v50);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    TException::TException(exception, &__p);
    *exception = &unk_1F2D00400;
  }

  v11 = *(a2 + 3);
  if (v11)
  {
    while (1)
    {
      v12 = *(v11 + 1);
      if (wcscmp(v12, dword_1B5B2D178))
      {
        if (!wcscmp(v12, dword_1B5B2D194))
        {
          operator new();
        }

        if (!wcscmp(v12, dword_1B5B2D158))
        {
          *(this + 3) = buildReplaceObject(v11, a5, a6);
          *(this + 32) = 1;
        }

        goto LABEL_55;
      }

      v51 = vdupq_n_s64(1uLL);
      v50 = &unk_1B5B2D1C8;
      v52 = -1;
      if (TFileObject::verify(v11, &v50, 1, 1))
      {
        std::string::basic_string[abi:ne200100]<0>(v45, "");
        TException::TException(&v47, v45);
        v47.__vftable = &unk_1F2D00400;
        if (v49 >= 0)
        {
          v27 = &v48;
        }

        else
        {
          v27 = v48;
        }

        conditionalAssert(v27, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 524);
        TException::~TException(&v47);
        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        v28 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        TException::TException(v28, &__p);
        *v28 = &unk_1F2D00400;
      }

      v13 = *(v11 + 3);
      if (v13)
      {
        break;
      }

LABEL_55:
      v11 = *(v11 + 2);
      if (!v11)
      {
        return;
      }
    }

    v14 = 0;
    while (1)
    {
      if ((TFileObject::verify(v13, 1, 0) & 1) == 0)
      {
        v15 = *(v13 + 24);
        if (*(v13 + 40) == 2)
        {
          TRegExp::add(a3, v15, a4);
          goto LABEL_14;
        }

        if (!TLexicon::checkName(a5, v15, 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(a5, *(v13 + 24)))
          {
            loggableFileObject(v13);
            v20 = v42;
            v21 = v41;
            loggableUnicode(*(v13 + 24), &__p);
            v22 = &v41;
            if (v20 < 0)
            {
              v22 = v21;
            }

            if (v38 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v22, p_p);
            if (SHIBYTE(v38) < 0)
            {
              operator delete(__p);
            }

            if (v42 < 0)
            {
              operator delete(v41);
            }
          }

          __p = v39;
          v38 = xmmword_1B5AE2110;
          v40 = 1;
          TRegExp::stringToRegExp(*(v13 + 24), &__p, 0, 3);
          if (*(&v38 + 1) >= v38)
          {
            if (v40)
            {
              v53 = 0;
              TBuffer<wchar_t>::insert(&__p, *(&v38 + 1), &v53, 1uLL);
              v24 = __p;
              --*(&v38 + 1);
            }

            else
            {
              v24 = __p;
              if (v38)
              {
                *(__p + v38 - 1) = 0;
              }
            }
          }

          else
          {
            v24 = __p;
            *(__p + *(&v38 + 1)) = 0;
          }

          TRegExp::add(a3, v24, a4);
          if (v40 == 1 && __p != v39 && __p)
          {
            MEMORY[0x1B8C85310]();
          }

          goto LABEL_14;
        }

        loggableFileObject(v13);
        v16 = v44;
        v17 = v43;
        loggableUnicode(*(v13 + 24), &__p);
        v18 = &v43;
        if (v16 < 0)
        {
          v18 = v17;
        }

        if (v38 >= 0)
        {
          v19 = &__p;
        }

        else
        {
          v19 = __p;
        }

        tknPrintf("Error: %s'%s' is an invalid token name.\n", v18, v19);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p);
        }

        if (v44 < 0)
        {
          operator delete(v43);
        }
      }

      v14 = 1;
LABEL_14:
      v13 = *(v13 + 16);
      if (!v13)
      {
        if (v14)
        {
          std::string::basic_string[abi:ne200100]<0>(v32, "");
          TException::TException(&v34, v32);
          v34.__vftable = &unk_1F2D00400;
          if (v36 >= 0)
          {
            v25 = &v35;
          }

          else
          {
            v25 = v35;
          }

          conditionalAssert(v25, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/tkn/mungemapmgr.cpp", 571);
          TException::~TException(&v34);
          if (v33 < 0)
          {
            operator delete(v32[0]);
          }

          v26 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          TException::TException(v26, &__p);
          *v26 = &unk_1F2D00400;
        }

        goto LABEL_55;
      }
    }
  }
}

void sub_1B5886934(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    TGroup::freeMemory(v37);
    __cxa_rethrow();
  }

  JUMPOUT(0x1B5886A24);
}

void sub_1B5886A14(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *TGroup::freeMemory(uint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  if (v1 != *this)
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        TRule::~TRule(this);
        this = MEMORY[0x1B8C85350]();
        v2 = *v3;
        v1 = v3[1];
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }

  return this;
}

void TGroup::~TGroup(TGroup *this)
{
  TGroup::freeMemory(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t TGroup::munge(uint64_t *a1, uint64_t a2, int *a3, int *a4, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  v5 = a1;
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v11 = 0;
    while ((TRule::test(*(v6 + 8 * v11), a2, a3, a4, this) & 1) == 0)
    {
      ++v11;
      v6 = *v5;
      if (v11 >= (v5[1] - *v5) >> 3)
      {
        return v5[3];
      }
    }

    v5 = *(*v5 + 8 * v11);
  }

  return v5[3];
}

void TMungeMapManager::TMungeMapManager(TMungeMapManager *this, TInputStream *a2, TLexicon *a3)
{
  TAllocator::TAllocator(this, 2048);
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = a3;
  operator new();
}

void sub_1B58871E8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v3, 0x60C40CE5A77A8);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 6) = v5;
    operator delete(v5);
  }

  TAllocator::clear(v1);
  _Unwind_Resume(a1);
}

TRegExp *TMungeMapManager::freeMemory(TMungeMapManager *this)
{
  result = *(this + 9);
  if (result)
  {
    TRegExp::~TRegExp(result);
    result = MEMORY[0x1B8C85350]();
  }

  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      result = *(v4 + 8 * v5);
      if (result)
      {
        TGroup::~TGroup(result);
        result = MEMORY[0x1B8C85350]();
        v4 = *(this + 5);
        v3 = *(this + 6);
      }

      ++v5;
    }

    while (v5 < (v3 - v4) >> 3);
  }

  return result;
}

void TMungeMapManager::~TMungeMapManager(TMungeMapManager *this)
{
  TMungeMapManager::freeMemory(this);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  TAllocator::clear(this);
}

void TMungeMapManager::mungeWithGroups(uint64_t a1, TVertex *this, TGraph *a3, int *a4, int *a5, TSegmenter *a6, unint64_t a7, unint64_t a8, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *a9)
{
  v11 = a6;
  *v54 = v56;
  v55 = xmmword_1B5AE2110;
  v57 = 1;
  v14 = *(this + 2);
  if (v14)
  {
    PreviousSegment = TSegmenter::getPreviousSegment(a6, v14);
    if (PreviousSegment)
    {
      if (*(PreviousSegment + 24) == 5)
      {
        goto LABEL_6;
      }

      a4 = *PreviousSegment;
    }

    TBuffer<wchar_t>::assign(v54, a4);
  }

LABEL_6:
  __p[1] = 0;
  __p[0] = 0;
  v53 = 0;
  v48 = v50;
  v49 = xmmword_1B5AE2110;
  v51 = 1;
  OutEdge = TVertex::getOutEdge(this);
  if (OutEdge)
  {
LABEL_7:
    v18 = *(OutEdge + 40);
    if (v18 >= a7 && v18 < a8)
    {
      v20 = *(OutEdge + 48);
      v21 = v20 > 5;
      v22 = (1 << v20) & 0x2C;
      if (v21 || v22 == 0)
      {
        TWord::getTokenName(*(OutEdge + 56), &v48);
        std::vector<TRegExpMatch>::resize(__p, 0);
        v24 = *(a1 + 72);
        if (*(&v49 + 1) >= v49)
        {
          if (v51)
          {
            v44[0] = 0;
            TBuffer<wchar_t>::insert(&v48, *(&v49 + 1), v44, 1uLL);
            v25 = v48;
            --*(&v49 + 1);
          }

          else
          {
            v25 = v48;
            if (v49)
            {
              v48[v49 - 1] = 0;
            }
          }
        }

        else
        {
          v25 = v48;
          v48[*(&v49 + 1)] = 0;
        }

        TRegExp::match(v24, v25, 0, __p);
        if (__p[0] != __p[1])
        {
          *v44 = sortMatch;
          std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*,false>(__p[0], __p[1], v44, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3)), 1, *__p);
          *v44 = v46;
          v45 = xmmword_1B5AE2110;
          v47 = 1;
          v26 = *(*(OutEdge + 24) + 24);
          if (v26)
          {
            if (*v26)
            {
              Segment = TSegmenter::getSegment(v11, v26);
              if (*(Segment + 24) != 5)
              {
                TBuffer<wchar_t>::assign(v44, *Segment);
              }
            }

            else
            {
              TBuffer<wchar_t>::assign(v44, a5);
            }
          }

          v40 = v11;
          v28 = __p[0];
          if (__p[1] == __p[0])
          {
            goto LABEL_67;
          }

          v29 = 0;
          v41 = *(OutEdge + 24);
          while (1)
          {
            v30 = *(*(a1 + 40) + 8 * v28[3 * v29 + 2]);
            if (*(&v55 + 1) >= v55)
            {
              if (v57)
              {
                v58[0] = 0;
                TBuffer<wchar_t>::insert(v54, *(&v55 + 1), v58, 1uLL);
                v31 = *v54;
                --*(&v55 + 1);
              }

              else
              {
                v31 = *v54;
                if (v55)
                {
                  *(*v54 + 4 * v55 - 4) = 0;
                }
              }
            }

            else
            {
              v31 = *v54;
              *(*v54 + 4 * *(&v55 + 1)) = 0;
            }

            if (*(&v45 + 1) >= v45)
            {
              if (v47)
              {
                v58[0] = 0;
                TBuffer<wchar_t>::insert(v44, *(&v45 + 1), v58, 1uLL);
                v32 = *v44;
                --*(&v45 + 1);
              }

              else
              {
                v32 = *v44;
                if (v45)
                {
                  *(*v44 + 4 * v45 - 4) = 0;
                }
              }
            }

            else
            {
              v32 = *v44;
              *(*v44 + 4 * *(&v45 + 1)) = 0;
            }

            v34 = TGroup::munge(v30, OutEdge, v31, v32, a9);
            if (v34)
            {
              break;
            }

            if (v33)
            {
              v35 = TVertex::getOutEdge(this);
              if (v35)
              {
                v36 = 0;
LABEL_48:
                if (*(v35 + 48) != 5)
                {
                  ++v36;
                }

                while (1)
                {
                  v35 = *(v35 + 8);
                  if (!v35)
                  {
                    break;
                  }

                  if ((*(v35 + 32) & 1) == 0)
                  {
                    goto LABEL_48;
                  }
                }

                if (v36 >= 2)
                {
                  v37 = TVertex::getInEdge(v41);
                  if (v37)
                  {
                    v38 = 0;
LABEL_56:
                    if (*(v37 + 48) != 5)
                    {
                      ++v38;
                    }

                    while (1)
                    {
                      v37 = *v37;
                      if (!v37)
                      {
                        break;
                      }

                      if ((*(v37 + 32) & 1) == 0)
                      {
                        goto LABEL_56;
                      }
                    }

                    if (v38 >= 2)
                    {
                      TGraph::deleteEdge(a3, OutEdge);
LABEL_67:
                      if (v47 == 1 && *v44 != v46 && *v44)
                      {
                        MEMORY[0x1B8C85310]();
                      }

                      v11 = v40;
                      goto LABEL_15;
                    }
                  }
                }
              }
            }

            ++v29;
            v28 = __p[0];
            if (v29 >= 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3))
            {
              goto LABEL_67;
            }
          }

          if (v33)
          {
            TGraph::deleteEdge(a3, OutEdge);
          }

          addSequence(v34, this, v41, a3, *(a1 + 64), 0, 0, 0);
          goto LABEL_67;
        }
      }
    }

LABEL_15:
    while (1)
    {
      OutEdge = *(OutEdge + 8);
      if (!OutEdge)
      {
        break;
      }

      if ((*(OutEdge + 32) & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  if (v51 == 1 && v48 != v50 && v48 != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v57 == 1 && *v54 != v56)
  {
    if (*v54)
    {
      MEMORY[0x1B8C85310]();
    }
  }
}

void sub_1B5887830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (LOBYTE(STACK[0x458]) == 1 && a17 != a11 && a17)
  {
    MEMORY[0x1B8C85310]();
  }

  if (LOBYTE(STACK[0x878]) == 1)
  {
    v20 = STACK[0x460];
    if (STACK[0x460] != v17)
    {
      if (v20)
      {
        MEMORY[0x1B8C85310](v20, 0x1000C8052888210);
      }
    }
  }

  v21 = STACK[0x880];
  if (STACK[0x880])
  {
    STACK[0x888] = v21;
    operator delete(v21);
  }

  if (LOBYTE(STACK[0xCB8]) == 1)
  {
    v22 = STACK[0x8A0];
    if (STACK[0x8A0] != v18)
    {
      if (v22)
      {
        MEMORY[0x1B8C85310](v22, 0x1000C8052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TMungeMapManager::munge(uint64_t a1, TGraph *a2, int *a3, int *a4, TSegmenter *a5, unint64_t a6, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *a7)
{
  if (*a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &unk_1B5B2D1C0;
  }

  if (*a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = &unk_1B5B2D1C0;
  }

  v9 = *(a2 + 11) - *(a2 + 10);
  if (v9)
  {
    v15 = 0;
    v16 = (*(a2 + 14) - *(a2 + 13)) >> 3;
    v17 = v9 >> 3;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v19 = *(*(a2 + 10) + 8 * v15);
      if ((*(v19 + 32) & 1) == 0)
      {
        TMungeMapManager::mungeWithGroups(a1, v19, a2, v7, v8, a5, a6, v16, a7);
      }

      ++v15;
    }

    while (v18 != v15);
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*,false>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v79 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v59 = (*a3)((v11 + 24), v11);
        v60 = (*a3)(v9, (v11 + 24));
        if (v59)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          v129 = *(v11 + 2);
          v102 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v102;
          *(v11 + 5) = v129;
          if (!(*a3)(v9, (v11 + 24)))
          {
            return result;
          }

          v61 = *(v11 + 5);
          result = *(v11 + 24);
          v62 = v9[1].n128_u64[0];
          *(v11 + 24) = *v9;
          *(v11 + 5) = v62;
          *v9 = result;
LABEL_77:
          v9[1].n128_u64[0] = v61;
          return result;
        }

        if (!v60)
        {
          return result;
        }

        v68 = *(v11 + 5);
        v69 = *(v11 + 24);
        v70 = v9[1].n128_u64[0];
        *(v11 + 24) = *v9;
        *(v11 + 5) = v70;
        *v9 = v69;
        v9[1].n128_u64[0] = v68;
        goto LABEL_103;
      case 4uLL:
        v65 = (*a3)((v11 + 24), v11);
        v66 = (*a3)(v11 + 3, (v11 + 24));
        if (v65)
        {
          if (v66)
          {
            v131 = *(v11 + 2);
            v104 = *v11;
            *v11 = v11[3];
            *(v11 + 2) = *(v11 + 8);
            v11[3] = v104;
            v67 = v131;
            goto LABEL_99;
          }

          v133 = *(v11 + 2);
          v106 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v106;
          *(v11 + 5) = v133;
          if ((*a3)(v11 + 3, (v11 + 24)))
          {
            v67 = *(v11 + 5);
            v73 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v73;
LABEL_99:
            *(v11 + 8) = v67;
          }
        }

        else if (v66)
        {
          v71 = *(v11 + 5);
          v72 = *(v11 + 24);
          *(v11 + 24) = v11[3];
          *(v11 + 5) = *(v11 + 8);
          v11[3] = v72;
          *(v11 + 8) = v71;
          if ((*a3)((v11 + 24), v11))
          {
            v132 = *(v11 + 2);
            v105 = *v11;
            *v11 = *(v11 + 24);
            *(v11 + 2) = *(v11 + 5);
            *(v11 + 24) = v105;
            *(v11 + 5) = v132;
          }
        }

        if (!(*a3)(v9, v11 + 3))
        {
          return result;
        }

        v74 = *(v11 + 8);
        v75 = v11[3];
        v76 = v9[1].n128_u64[0];
        v11[3] = *v9;
        *(v11 + 8) = v76;
        *v9 = v75;
        v9[1].n128_u64[0] = v74;
        if (!(*a3)(v11 + 3, (v11 + 24)))
        {
          return result;
        }

        v77 = *(v11 + 5);
        v78 = *(v11 + 24);
        *(v11 + 24) = v11[3];
        *(v11 + 5) = *(v11 + 8);
        v11[3] = v78;
        *(v11 + 8) = v77;
LABEL_103:
        if ((*a3)((v11 + 24), v11))
        {
          v134 = *(v11 + 2);
          v107 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          result = v107;
          *(v11 + 24) = v107;
          *(v11 + 5) = v134;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*,0>(v11, (v11 + 24), v11 + 3, (v11 + 72), (a2 - 24), a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*,TRegExpMatch*>(v11, a2, a2, a3, result);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v11 + 24 * (v15 >> 1));
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)((a2 - 24), v17);
      if (v19)
      {
        if (v20)
        {
          v108 = *(a1 + 16);
          v81 = *a1;
          v21 = *v9;
          *(a1 + 16) = a2[-1].n128_u64[1];
          *a1 = v21;
          goto LABEL_27;
        }

        v114 = *(a1 + 16);
        v87 = *a1;
        v29 = *v17;
        *(a1 + 16) = v17[1].n128_u64[0];
        *a1 = v29;
        v17[1].n128_u64[0] = v114;
        *v17 = v87;
        if ((*a3)((a2 - 24), v17))
        {
          v108 = v17[1].n128_u64[0];
          v81 = *v17;
          v30 = *v9;
          v17[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v17 = v30;
LABEL_27:
          *v9 = v81;
          a2[-1].n128_u64[1] = v108;
        }
      }

      else if (v20)
      {
        v110 = v17[1].n128_u64[0];
        v83 = *v17;
        v25 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v25;
        *v9 = v83;
        a2[-1].n128_u64[1] = v110;
        if ((*a3)(v17, a1))
        {
          v111 = *(a1 + 16);
          v84 = *a1;
          v26 = *v17;
          *(a1 + 16) = v17[1].n128_u64[0];
          *a1 = v26;
          v17[1].n128_u64[0] = v111;
          *v17 = v84;
        }
      }

      v31 = a1 + 24 * v16 - 24;
      v32 = (*a3)(v31, (a1 + 24));
      v33 = (*a3)(v79, v31);
      if (v32)
      {
        if (v33)
        {
          v34 = *(a1 + 40);
          v35 = *(a1 + 24);
          v36 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v79;
          *(a1 + 40) = v36;
          *v79 = v35;
          a2[-2].n128_u64[0] = v34;
        }

        else
        {
          v91 = *(a1 + 24);
          v118 = *(a1 + 40);
          v41 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v41;
          *(a1 + 24 * v16 - 8) = v118;
          *v31 = v91;
          if ((*a3)(v79, (a1 + 24 * v16 - 24)))
          {
            v119 = *(a1 + 24 * v16 - 8);
            v92 = *v31;
            v42 = *v79;
            *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
            *v31 = v42;
            *v79 = v92;
            a2[-2].n128_u64[0] = v119;
          }
        }
      }

      else if (v33)
      {
        v115 = *(a1 + 24 * v16 - 8);
        v88 = *v31;
        v37 = *v79;
        *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
        *v31 = v37;
        *v79 = v88;
        a2[-2].n128_u64[0] = v115;
        if ((*a3)((a1 + 24 * v16 - 24), (a1 + 24)))
        {
          v89 = *(a1 + 24);
          v116 = *(a1 + 40);
          v38 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v38;
          *(a1 + 24 * v16 - 8) = v116;
          *v31 = v89;
        }
      }

      v43 = a1 + 24 * v16;
      v44 = (*a3)((v43 + 24), (a1 + 48));
      v45 = (*a3)((a2 - 72), (v43 + 24));
      if (v44)
      {
        if (v45)
        {
          v46 = *(a1 + 64);
          v47 = *(a1 + 48);
          v48 = a2[-4].n128_u64[1];
          *(a1 + 48) = *v10;
          *(a1 + 64) = v48;
          *v10 = v47;
          goto LABEL_47;
        }

        v95 = *(a1 + 48);
        v122 = *(a1 + 64);
        v51 = *(v43 + 40);
        *(a1 + 48) = *(v43 + 24);
        *(a1 + 64) = v51;
        *(v43 + 40) = v122;
        *(v43 + 24) = v95;
        if ((*a3)((a2 - 72), (v43 + 24)))
        {
          v123 = *(v43 + 40);
          v96 = *(v43 + 24);
          v52 = *v10;
          *(v43 + 40) = a2[-4].n128_u64[1];
          *(v43 + 24) = v52;
          *v10 = v96;
          v46 = v123;
LABEL_47:
          a2[-4].n128_u64[1] = v46;
        }
      }

      else if (v45)
      {
        v120 = *(v43 + 40);
        v93 = *(v43 + 24);
        v49 = *v10;
        *(v43 + 40) = a2[-4].n128_u64[1];
        *(v43 + 24) = v49;
        *v10 = v93;
        a2[-4].n128_u64[1] = v120;
        if ((*a3)((v43 + 24), (a1 + 48)))
        {
          v94 = *(a1 + 48);
          v121 = *(a1 + 64);
          v50 = *(v43 + 40);
          *(a1 + 48) = *(v43 + 24);
          *(a1 + 64) = v50;
          *(v43 + 40) = v121;
          *(v43 + 24) = v94;
        }
      }

      v53 = (*a3)(v17, v31);
      v54 = (*a3)((v43 + 24), v17);
      if (v53)
      {
        if (v54)
        {
          v124 = *(v31 + 16);
          v97 = *v31;
          *v31 = *(v43 + 24);
          *(v31 + 16) = *(v43 + 40);
          goto LABEL_56;
        }

        v127 = *(v31 + 16);
        v100 = *v31;
        *v31 = *v17;
        *(v31 + 16) = v17[1].n128_u64[0];
        v17[1].n128_u64[0] = v127;
        *v17 = v100;
        if ((*a3)((v43 + 24), v17))
        {
          v124 = v17[1].n128_u64[0];
          v97 = *v17;
          *v17 = *(v43 + 24);
          v17[1].n128_u64[0] = *(v43 + 40);
LABEL_56:
          *(v43 + 40) = v124;
          *(v43 + 24) = v97;
        }
      }

      else if (v54)
      {
        v125 = v17[1].n128_u64[0];
        v98 = *v17;
        *v17 = *(v43 + 24);
        v17[1].n128_u64[0] = *(v43 + 40);
        *(v43 + 40) = v125;
        *(v43 + 24) = v98;
        if ((*a3)(v17, v31))
        {
          v126 = *(v31 + 16);
          v99 = *v31;
          *v31 = *v17;
          *(v31 + 16) = v17[1].n128_u64[0];
          v17[1].n128_u64[0] = v126;
          *v17 = v99;
        }
      }

      v128 = *(a1 + 16);
      v101 = *a1;
      v55 = *v17;
      *(a1 + 16) = v17[1].n128_u64[0];
      *a1 = v55;
      v17[1].n128_u64[0] = v128;
      *v17 = v101;
      goto LABEL_58;
    }

    v22 = v18(v11, v17);
    v23 = (*a3)((a2 - 24), a1);
    if (v22)
    {
      if (v23)
      {
        v109 = v17[1].n128_u64[0];
        v82 = *v17;
        v24 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v24;
LABEL_36:
        *v9 = v82;
        a2[-1].n128_u64[1] = v109;
        goto LABEL_58;
      }

      v117 = v17[1].n128_u64[0];
      v90 = *v17;
      v39 = *a1;
      v17[1].n128_u64[0] = *(a1 + 16);
      *v17 = v39;
      *(a1 + 16) = v117;
      *a1 = v90;
      if ((*a3)((a2 - 24), a1))
      {
        v109 = *(a1 + 16);
        v82 = *a1;
        v40 = *v9;
        *(a1 + 16) = a2[-1].n128_u64[1];
        *a1 = v40;
        goto LABEL_36;
      }
    }

    else if (v23)
    {
      v112 = *(a1 + 16);
      v85 = *a1;
      v27 = *v9;
      *(a1 + 16) = a2[-1].n128_u64[1];
      *a1 = v27;
      *v9 = v85;
      a2[-1].n128_u64[1] = v112;
      if ((*a3)(a1, v17))
      {
        v113 = v17[1].n128_u64[0];
        v86 = *v17;
        v28 = *a1;
        v17[1].n128_u64[0] = *(a1 + 16);
        *v17 = v28;
        *(a1 + 16) = v113;
        *a1 = v86;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 24), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRegExpMatch *,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&)>(a1, a2, a3);
      goto LABEL_65;
    }

    v56 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRegExpMatch *,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&)>(a1, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_63;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(a1, v56, a3);
    v11 = &v56[1].n128_i8[8];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(&v56[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v58)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*,false>(a1, v56, a3, -v13, a5 & 1);
      v11 = &v56[1].n128_i8[8];
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)((a2 - 24), v11))
  {
LABEL_76:
    v130 = *(v11 + 2);
    v103 = *v11;
    v64 = *v9;
    *(v11 + 2) = v9[1].n128_u64[0];
    *v11 = v64;
    result = v103;
    *v9 = v103;
    v61 = v130;
    goto LABEL_77;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_i64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_i64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_i64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = (*a3)(&v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRegExpMatch *,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v16 = *a1;
  v17 = *(a1 + 2);
  if ((*a3)(&v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 24);
    }

    while (((*a3)(&v16, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 24);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v16, v7);
      v7 = (v6 + 24);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 2);
    v18 = v9;
    v10 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v10;
    v11 = v18;
    *(v4 + 2) = v19;
    *v4 = v11;
    do
    {
      v6 = (v6 + 24);
    }

    while (!(*a3)(&v16, v6));
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRegExpMatch *,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&)>(__int128 *a1, unint64_t a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (((*a3)(a1 + v6, &v17) & 1) != 0);
  v7 = a1 + v6;
  v8 = a1 + v6 - 24;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (((*a3)(a2, &v17) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!(*a3)(a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = (a1 + v6);
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 = (v9 + 24);
      }

      while (((*a3)(v9, &v17) & 1) != 0);
      do
      {
        v10 -= 24;
      }

      while (!(*a3)(v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 16);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 16) = v18;
  *v8 = v15;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_i64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*,TRegExpMatch*>(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(uint64_t, __int8 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(v8, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, v8, a5))
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = v8[1].n128_u64[0];
          *v14 = *v8;
          v14[1].n128_u64[0] = v17;
          *v8 = v16;
          v8[1].n128_u64[0] = v15;
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(v8, a4, v10, v8);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v30 = v8;
      do
      {
        v31 = v7;
        v19 = 0;
        v32 = *v8;
        v33 = v8[1].n128_u64[0];
        v20 = v8;
        do
        {
          v21 = v20 + 24 * v19;
          v22 = (v21 + 24);
          v23 = (2 * v19) | 1;
          v24 = 2 * v19 + 2;
          if (v24 < v18)
          {
            v25 = (v21 + 48);
            if ((*a4)((v21 + 24), v21 + 48))
            {
              v22 = v25;
              v23 = v24;
            }
          }

          v26 = *v22;
          v20[1].n128_u64[0] = v22[1].n128_u64[0];
          *v20 = v26;
          v20 = v22;
          v19 = v23;
        }

        while (v23 <= ((v18 - 2) >> 1));
        v7 = (v31 - 24);
        if (v22 == &v31[-2].n128_i8[8])
        {
          v22[1].n128_u64[0] = v33;
          *v22 = v32;
          v8 = v30;
        }

        else
        {
          v27 = *v7;
          v22[1].n128_u64[0] = v31[-1].n128_u64[1];
          *v22 = v27;
          *v7 = v32;
          v31[-1].n128_u64[1] = v33;
          v8 = v30;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(v30, &v22[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v22[1].n128_i64[1] - v30) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(uint64_t a1, unsigned int (**a2)(uint64_t, __int8 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 24 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 24 * v12, &v13[1].n128_i8[8]))
      {
        v13 = (v13 + 24);
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        do
        {
          v16 = v13;
          v17 = *v13;
          v7[1].n128_u64[0] = v13[1].n128_u64[0];
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = (a1 + 24 * v18);
          v19 = 2 * v12 + 2;
          if (v19 < a3)
          {
            if ((*a2)(a1 + 24 * v18, &v13[1].n128_i8[8]))
            {
              v13 = (v13 + 24);
              v18 = v19;
            }
          }

          v7 = v16;
          v12 = v18;
        }

        while (!(*a2)(v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TRegExpMatch const&,TRegExpMatch const&),TRegExpMatch*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v17 = v4;
    v18 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 24 * (v6 >> 1));
    v11 = (a2 - 24);
    if ((*a3)(v10, (a2 - 24)))
    {
      v15 = *v11;
      v16 = *(v11 + 2);
      do
      {
        v13 = v10;
        v14 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v14;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 24 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v15) & 1) != 0);
      result = *&v15;
      *v13 = v15;
      *(v13 + 2) = v16;
    }
  }

  return result;
}

void kaldi::quasar::EspressoV2TensorData::~EspressoV2TensorData(kaldi::quasar::EspressoV2TensorData *this)
{
  *this = &unk_1F2D36118;
  if (*(this + 4) && e5rt_tensor_desc_dtype_release() || *(this + 5) && e5rt_tensor_desc_release() || *(this + 6) && e5rt_buffer_object_release())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Espresso V2 failure: ", 21);
    v4 = strlen(last_error_message);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, last_error_message, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(this);
}

{
  kaldi::quasar::EspressoV2TensorData::~EspressoV2TensorData(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::EspressoV2NetworkConfig::CreateBNNSFallbackEngine(kaldi::quasar::EspressoV2NetworkConfig *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "bnnsir");
  kaldi::quasar::MakeComputeEngineCachePath(this + 5, __p, v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::quasar::BNNSGraphNetworkConfig::BNNSGraphNetworkConfig(__p, this + 40, v4);
  kaldi::quasar::BNNSGraphNetworkConfig::CreateComputeEngine(__p);
}

void sub_1B5889920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::quasar::BNNSGraphNetworkConfig::~BNNSGraphNetworkConfig(va);
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2NetworkConfig::CreateComputeEngine(kaldi::quasar::EspressoV2NetworkConfig *this)
{
  if (kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(this))
  {

    kaldi::quasar::EspressoV2NetworkConfig::CreateBNNSFallbackEngine(this);
  }

  operator new();
}

uint64_t kaldi::quasar::EspressoV2NetworkConfig::ComputeEngineUpgradeLikelyExists(kaldi::quasar::EspressoV2NetworkConfig *this)
{
  if ((kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(this) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ".mil");
    v3 = *(this + 63);
    v4 = *(this + 6);
    if ((v3 & 0x80u) == 0)
    {
      v5 = *(this + 63);
    }

    else
    {
      v5 = *(this + 6);
    }

    v6 = v20;
    if ((v20 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = __p[1];
    }

    v9 = v5 >= v7;
    v8 = v5 - v7;
    if (!v9)
    {
      goto LABEL_37;
    }

    if ((v3 & 0x80) != 0)
    {
      if (v7 == -1 || v4 < v8)
      {
LABEL_42:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v4 - v8 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v4 - v8;
      }

      v12 = *(this + 5);
    }

    else
    {
      v9 = v7 != -1 && v3 >= v8;
      if (!v9)
      {
        goto LABEL_42;
      }

      v10 = v3 - v8;
      if (v10 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      v12 = this + 40;
    }

    if ((v20 & 0x80u) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = memcmp(&v12[v8], v14, v11);
    if (v11 == v7 && v15 == 0)
    {
      memset(v18, 0, sizeof(v18));
      v2 = kaldi::quasar::checkCompiledCacheWithProgramLibrary(this + 40, this + 14, v18);
      v21 = v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
      if ((v20 & 0x80) == 0)
      {
        return v2;
      }

      goto LABEL_38;
    }

LABEL_37:
    v2 = 0;
    if ((v6 & 0x80) == 0)
    {
      return v2;
    }

LABEL_38:
    operator delete(__p[0]);
    return v2;
  }

  return 0;
}

void sub_1B5889B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Plan::~EspressoV2Plan(kaldi::quasar::EspressoV2Plan *this)
{
  *this = &unk_1F2D36230;
  v2 = (this + 216);
  if (*(this + 27))
  {
    if (e5rt_execution_stream_operation_release())
    {
      goto LABEL_20;
    }

    *v2 = 0;
  }

  v3 = *(this + 28);
  if (v3 != (this + 232))
  {
    while (!e5rt_execution_stream_operation_release())
    {
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
      if (v5 == (this + 232))
      {
        goto LABEL_12;
      }
    }

LABEL_20:
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Espresso V2 failure: ", 21);
    v9 = strlen(last_error_message);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, last_error_message, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

LABEL_12:
  if (*(this + 31))
  {
    if (e5rt_execution_stream_release())
    {
      goto LABEL_20;
    }

    *(this + 31) = 0;
  }

  if (*(this + 32))
  {
    e5rt_precompiled_compute_op_create_options_release();
    *(this + 32) = 0;
  }

  std::__tree<std::string>::destroy(this + 224, *(this + 29));
  kaldi::quasar::EspressoV2NetworkConfig::~EspressoV2NetworkConfig(this + 1);

  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::quasar::EspressoV2Plan::~EspressoV2Plan(this);

  JUMPOUT(0x1B8C85350);
}

BOOL kaldi::quasar::EspressoV2Plan::LoadNetworkWithProgramLibrary(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    if (*a2)
    {
      while (!e5rt_program_library_retain_program_function() && !e5rt_precompiled_compute_op_create_options_create_with_program_function())
      {
        e5rt_program_function_release();
        v25[0].__locale_ = v4;
        std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 224, v4);
        precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
          v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Loaded v2 model function '", 26);
          v8 = *(v4 + 23);
          if (v8 >= 0)
          {
            v9 = v4;
          }

          else
          {
            v9 = *v4;
          }

          if (v8 >= 0)
          {
            v10 = *(v4 + 23);
          }

          else
          {
            v10 = *(v4 + 8);
          }

          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "', status: ", 11);
          MEMORY[0x1B8C84C00](v12, precompiled_compute_operation_with_options);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v25);
        }

        if ((precompiled_compute_operation_with_options & 0xFFFFFFFB) == 9)
        {
          return 0;
        }

        if (precompiled_compute_operation_with_options)
        {
          goto LABEL_34;
        }

        v4 += 24;
        if (v4 == v5)
        {
          return 1;
        }
      }

      goto LABEL_34;
    }

LABEL_31:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "e5ProgramLibrary != NULL");
    goto LABEL_32;
  }

  if (!*(a1 + 256))
  {
    if (!*a2)
    {
      goto LABEL_31;
    }

    if (e5rt_program_library_retain_program_function() || e5rt_precompiled_compute_op_create_options_create_with_program_function())
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
      v23 = strlen(last_error_message);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, last_error_message, v23);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, "\n");
LABEL_32:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
    }

    e5rt_program_function_release();
  }

  v13 = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Loaded v2 model, status: ", 25);
    MEMORY[0x1B8C84C00](v14, v13);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v25);
  }

  if (v13 > 0xD || ((1 << v13) & 0x2201) == 0)
  {
LABEL_34:
    v17 = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Espresso V2 failure: ", 21);
    v19 = strlen(v17);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v17, v19);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "\n");
    goto LABEL_32;
  }

  return (v13 & 0xFFFFFFFB) != 9;
}

void kaldi::quasar::EspressoV2Plan::LoadNetworkBundle(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "main");
    v24 = a1 + 216;
    std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__assign_with_size[abi:ne200100]<std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **> const*>(&v19, &__p, v25, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = v20;
  }

  else
  {
    do
    {
      v22 = v4;
      v6 = std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 224, v4) + 56;
      __p.__r_.__value_.__r.__words[0] = v6;
      v7 = v20;
      if (v20 >= v21)
      {
        v9 = std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__emplace_back_slow_path<std::string const&,e5rt_execution_stream_operation **>(&v19, v4, &__p);
      }

      else
      {
        if (*(v4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v20, *v4, *(v4 + 1));
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          v8 = *v4;
          v20->__r_.__value_.__r.__words[2] = *(v4 + 2);
          *&v7->__r_.__value_.__l.__data_ = v8;
        }

        v7[1].__r_.__value_.__r.__words[0] = v6;
        v9 = (v7 + 32);
      }

      v20 = v9;
      v4 = (v4 + 24);
    }

    while (v4 != v5);
  }

  for (i = v19; i != v9; i = (i + 32))
  {
    if ((i->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(i->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = i->__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&__p, size + 5);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((i->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = i;
      }

      else
      {
        v13 = i->__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v13, size);
    }

    strcpy(p_p + size, " esop");
    precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (precompiled_compute_operation)
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v17 = strlen(last_error_message);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, last_error_message, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v19;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B588A54C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B588A594);
}

void sub_1B588A580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Plan::ReduceEngineMemoryUsage(kaldi::quasar::EspressoV2Plan *this)
{
  *(this + 264) = 0;
  v2 = *(this + 3);
  if (v2)
  {
    atomic_store(0, (v2 + 8));
  }

  if ((*(this + 40) & 1) == 0 && *(this + 32))
  {
    v3 = (this + 216);
    if (*(this + 27))
    {
      if (e5rt_execution_stream_operation_release())
      {
        goto LABEL_14;
      }

      *v3 = 0;
    }

    v5 = *(this + 31);
    v4 = (this + 248);
    if (!v5)
    {
      goto LABEL_11;
    }

    if (!e5rt_execution_stream_release())
    {
      *v4 = 0;
LABEL_11:
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Unloaded v2 model to reduce memory", 34);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v10);
      }

      return;
    }

LABEL_14:
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Espresso V2 failure: ", 21);
    v8 = strlen(last_error_message);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, last_error_message, v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }
}

void kaldi::quasar::EspressoV2Plan::CreateData()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented CreateData from const std::vector<int32> &v");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented CreateData from const std::vector<float> &v");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented CreateData from const CuMatrixBase<BaseFloat> &m");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented CreateData from const MatrixBase<BaseFloat> &m");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::EspressoV2Plan::CreateZeroedDataInt32()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented CreateZeroedDataInt32 from const std::vector<int64> &dim_sizes");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::EspressoV2Plan::CreateZeroedDataFloat16(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (v2 - *a2) >> 3;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(__p, v3, v2, v4);
  operator new();
}

void sub_1B588A8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1B8C85350](v11, 0x10B3C40ACDA1BA3);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::CopyFloat16(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *a2, kaldi::quasar::ComputeEngineBufferItf *a3)
{
  {
    v6 = 0;
  }

  else
  {
    kaldi::quasar::ComputeEngineItf::CreateCopyFloat(this, a2, v16);
    v6 = v16[0];
  }

  v16[34] = 0;
  v16[35] = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v10 = strlen(last_error_message);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, last_error_message, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Target type must match engine!", 30);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  result = e5rt_tensor_utils_cast_from_fp32_to_fp16();
  if (result)
  {
    v12 = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v14 = strlen(v12);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_1B588AB9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::EspressoV2Plan::CreateCopyFloat16(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  {
    kaldi::quasar::ComputeEngineItf::CreateCopyFloat(this, a2, __p);
  }

  v10 = 0;
  v11 = 0;
  if (!e5rt_tensor_desc_get_shape())
  {
    memset(__p, 0, 24);
    v4 = std::vector<long long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, v11, v11 + 8 * v10, v10);
    kaldi::quasar::EspressoV2Plan::CreateZeroedDataFloat16(v4, __p);
  }

  last_error_message = e5rt_get_last_error_message();
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Espresso V2 failure: ", 21);
  v7 = strlen(last_error_message);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, last_error_message, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
}

void sub_1B588ADD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  *v11 = 0;
  (*(*v12 + 8))(v12);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Plan::CreateCopyFloat32(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *lpsrc)
{
  {
    if (!e5rt_tensor_desc_get_shape())
    {
      memset(__p, 0, 24);
      v2 = std::vector<long long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, 0, 0, 0);
      kaldi::quasar::EspressoV2Plan::CreateZeroedDataFloat(v2, __p);
    }

    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Espresso V2 failure: ", 21);
    v5 = strlen(last_error_message);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, last_error_message, v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\n");
  }

  else
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "EspressoV2TensorData expected");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
}

void kaldi::quasar::EspressoV2Plan::CreateConcat()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented CreateConcat");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::quasar::EspressoV2Plan::CreateSplit(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Not implemented CreateSplit");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void kaldi::quasar::EspressoV2Plan::CreateSlice(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::ComputeEngineBufferItf *a2)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Not implemented CreateSlice");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

std::string *kaldi::quasar::EspressoV2TensorData::BindToOutput(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v10[34] = 0;
  if (e5rt_execution_stream_operation_retain_output_port() || e5rt_io_port_bind_buffer_object() || e5rt_io_port_release())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Espresso V2 failure: ", 21);
    v8 = strlen(last_error_message);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, last_error_message, v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return std::string::operator=((a1 + 56), a3);
}

void kaldi::quasar::EspressoV2Plan::Run(uint64_t a1, __int128 **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v9 = *a2;
  v10 = a2[1];
  while (v9 != v10)
  {
    v11 = *(v9 + 3);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
    }

    else
    {
      v12 = *v9;
      __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&__p.__r_.__value_.__l.__data_ = v12;
    }

    v16 = v11;
    v13 = v18;
    if (v18 >= v19)
    {
      v18 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v17, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v14 = *&__p.__r_.__value_.__l.__data_;
      *(v18 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v13 = v14;
      memset(&__p, 0, sizeof(__p));
      *(v13 + 24) = v16;
      v18 = v13 + 32;
    }

    v9 += 2;
  }

  (*(*a1 + 136))(a1, &v17, a3, a4, a5);
  __p.__r_.__value_.__r.__words[0] = &v17;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B588B434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Plan::RunFunction(uint64_t a1, const void **a2, __int128 **a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v10 = *a3;
  v11 = a3[1];
  while (v10 != v11)
  {
    v12 = *(v10 + 3);
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v10, *(v10 + 1));
    }

    else
    {
      v13 = *v10;
      __p.__r_.__value_.__r.__words[2] = *(v10 + 2);
      *&__p.__r_.__value_.__l.__data_ = v13;
    }

    v17 = v12;
    v14 = v19;
    if (v19 >= v20)
    {
      v19 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v18, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v15 = *&__p.__r_.__value_.__l.__data_;
      *(v19 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v14 = v15;
      memset(&__p, 0, sizeof(__p));
      *(v14 + 24) = v17;
      v19 = v14 + 32;
    }

    v10 += 2;
  }

  kaldi::quasar::EspressoV2Plan::RunFunction(a1, a2, &v18, a4, a5, a6);
  __p.__r_.__value_.__r.__words[0] = &v18;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B588B584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::RunFunction(uint64_t a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  if (*(a1 + 216))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Default function (main) set, use Run");
    goto LABEL_6;
  }

  v15[0] = a2;
  v11 = *(std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 224, a2) + 56);
  if (!v11)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Function not found: ", 20);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, a2);
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  return kaldi::quasar::EspressoV2Plan::RunOp(a1, v11, a3, a4, v12, a6);
}

void kaldi::quasar::EspressoV2Plan::PrepareOpChain(void *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X6>, void *a5@<X7>, uint64_t a6@<X8>, void *a7, char a8)
{
  v102[0] = 0;
  v102[1] = 0;
  v101 = v102;
  std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&> const*,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&> const*,std::insert_iterator<std::map<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(*a2, a2[1], &v101, v102, &v94);
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v96 = 0uLL;
  v97 = 0;
  v11 = std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<>(&v98);
  v99 = v11;
  v12 = *a1;
  if (a1[1] != *a1)
  {
    v13 = 0;
    v89 = a1;
    while (1)
    {
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v94, 5);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Initializing model inference chain, position: ", 46);
        MEMORY[0x1B8C84C00](v14, v13);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v94);
        v12 = *a1;
      }

      v91 = 0;
      v92 = 0;
      v93 = 0;
      memset(v90, 0, sizeof(v90));
      v15 = (*a7 + 24 * v13);
      v16 = *v15;
      v17 = v15[1];
      while (v16 != v17)
      {
        v11 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v101, v16);
        v18 = v11;
        if (v102 == v11)
        {
          v11 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>((v99 - 3), v16);
          if (v99 - 2 == v11)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
            v62 = *(v16 + 23);
            if (v62 >= 0)
            {
              v63 = v16;
            }

            else
            {
              v63 = *v16;
            }

            if (v62 >= 0)
            {
              v64 = *(v16 + 23);
            }

            else
            {
              v64 = *(v16 + 1);
            }

            v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
            MEMORY[0x1B8C84C00](v66, v13);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v94);
          }

          v19 = *(v11 + 56);
          if (*(v16 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v94, *v16, *(v16 + 1));
          }

          else
          {
            v20 = *v16;
            v94.__r_.__value_.__r.__words[2] = *(v16 + 2);
            *&v94.__r_.__value_.__l.__data_ = v20;
          }

          v95 = v19;
          v27 = v92;
          if (v92 >= v93)
          {
            v11 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v91, &v94);
            v92 = v11;
            if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v94.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v28 = *&v94.__r_.__value_.__l.__data_;
            *(v92 + 16) = *(&v94.__r_.__value_.__l + 2);
            *v27 = v28;
            memset(&v94, 0, sizeof(v94));
            *(v27 + 24) = v95;
            v92 = v27 + 32;
          }

          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v94, 5);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "  binding input to intermediate output: ", 40);
            v29 = *(v16 + 23);
            if (v29 >= 0)
            {
              v25 = v16;
            }

            else
            {
              v25 = *v16;
            }

            if (v29 >= 0)
            {
              v26 = *(v16 + 23);
            }

            else
            {
              v26 = *(v16 + 1);
            }

            goto LABEL_37;
          }
        }

        else
        {
          if (*(v11 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&v94, *(v11 + 32), *(v11 + 40));
          }

          else
          {
            v94 = *(v11 + 32);
          }

          v95 = *(v18 + 56);
          v21 = v92;
          if (v92 >= v93)
          {
            v11 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v91, &v94);
            v92 = v11;
            if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v94.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v22 = *&v94.__r_.__value_.__l.__data_;
            *(v92 + 16) = *(&v94.__r_.__value_.__l + 2);
            *v21 = v22;
            memset(&v94, 0, sizeof(v94));
            *(v21 + 24) = v95;
            v92 = v21 + 32;
          }

          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v94, 5);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "  binding input to provided input: ", 35);
            v24 = *(v16 + 23);
            if (v24 >= 0)
            {
              v25 = v16;
            }

            else
            {
              v25 = *v16;
            }

            if (v24 >= 0)
            {
              v26 = *(v16 + 23);
            }

            else
            {
              v26 = *(v16 + 1);
            }

LABEL_37:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v94);
          }
        }

        v16 = (v16 + 24);
      }

      a1 = v89;
      if (a8)
      {
        v30 = *(&v96 + 1);
        if (v96 != *(&v96 + 1))
        {
          if (e5rt_execution_stream_operation_bind_dependent_events())
          {
            last_error_message = e5rt_get_last_error_message();
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
            v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Espresso V2 failure: ", 21);
            v85 = strlen(last_error_message);
            v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, last_error_message, v85);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "\n", 1);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v94);
          }

          v30 = *(&v96 + 1);
        }

        if (v30 >= v97)
        {
          v32 = (v30 - v96) >> 3;
          if ((v32 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v33 = (v97 - v96) >> 2;
          if (v33 <= v32 + 1)
          {
            v33 = v32 + 1;
          }

          if (v97 - v96 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&v96, v34);
          }

          *(8 * v32) = 0;
          v31 = 8 * v32 + 8;
          v35 = (8 * v32 - (*(&v96 + 1) - v96));
          memcpy(v35, v96, *(&v96 + 1) - v96);
          v36 = v96;
          *&v96 = v35;
          *(&v96 + 1) = v31;
          v97 = 0;
          if (v36)
          {
            operator delete(v36);
          }

          a1 = v89;
        }

        else
        {
          *v30 = 0;
          v31 = (v30 + 1);
        }

        *(&v96 + 1) = v31;
        if (e5rt_async_event_create())
        {
          v71 = e5rt_get_last_error_message();
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Espresso V2 failure: ", 21);
          v73 = strlen(v71);
          v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v71, v73);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "\n", 1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v94);
        }

        v11 = e5rt_execution_stream_operation_bind_completion_event();
        if (v11)
        {
          v79 = e5rt_get_last_error_message();
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
          v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Espresso V2 failure: ", 21);
          v81 = strlen(v79);
          v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v79, v81);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "\n", 1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v94);
        }
      }

      v37 = *(v12 + 8 * v13);
      if (((a1[1] - *a1) >> 3) - 1 <= v13)
      {
        kaldi::quasar::EspressoV2Plan::PrepareInputsAndOutputs(v11, v37, &v91, a3, a4, 1);
        if (e5rt_execution_stream_encode_operation())
        {
          v67 = e5rt_get_last_error_message();
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Espresso V2 failure: ", 21);
          v69 = strlen(v67);
          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v67, v69);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "\n", 1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v94);
        }

        v40 = *a3;
        v41 = a3[1];
        if (*a3 != v41)
        {
          v42 = kaldi::g_kaldi_verbose_level;
          do
          {
            if (v42 >= 5)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&v94, 5);
              v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "  binding final output: ", 24);
              v44 = *(v40 + 23);
              if (v44 >= 0)
              {
                v45 = v40;
              }

              else
              {
                v45 = *v40;
              }

              if (v44 >= 0)
              {
                v46 = *(v40 + 23);
              }

              else
              {
                v46 = *(v40 + 8);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v94);
              v42 = kaldi::g_kaldi_verbose_level;
            }

            v40 += 24;
          }

          while (v40 != v41);
        }
      }

      else
      {
        kaldi::quasar::EspressoV2Plan::PrepareInputsAndOutputs(v11, v37, &v91, (*a5 + 24 * v13), v90, 1);
        if (e5rt_execution_stream_encode_operation())
        {
          v75 = e5rt_get_last_error_message();
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
          v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Espresso V2 failure: ", 21);
          v77 = strlen(v75);
          v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v75, v77);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "\n", 1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v94);
        }

        v38 = v99;
        if (v99 >= v100)
        {
          v39 = std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<>(&v98);
        }

        else
        {
          v99[2] = 0;
          v38[1] = 0;
          *v38 = v38 + 1;
          v39 = (v38 + 3);
        }

        v99 = v39;
        v47 = *(*a5 + 24 * v13);
        if (*(*a5 + 24 * v13 + 8) != v47)
        {
          v48 = 0;
          v49 = 0;
          do
          {
            v50 = v90[0];
            v102[3] = (v47 + v48);
            v51 = std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v99 - 3), (v47 + v48));
            v52 = *(v50 + 8 * v49);
            *(v50 + 8 * v49) = 0;
            v53 = *(v51 + 56);
            *(v51 + 56) = v52;
            if (v53)
            {
              (*(*v53 + 8))(v53);
            }

            if (kaldi::g_kaldi_verbose_level >= 5)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&v94, 5);
              v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "  storing intermediate output: ", 31);
              v55 = *(*a5 + 24 * v13) + v48;
              v56 = *(v55 + 23);
              if (v56 >= 0)
              {
                v57 = *(*a5 + 24 * v13) + v48;
              }

              else
              {
                v57 = *v55;
              }

              if (v56 >= 0)
              {
                v58 = *(v55 + 23);
              }

              else
              {
                v58 = *(v55 + 8);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v57, v58);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v94);
            }

            ++v49;
            v47 = *(*a5 + 24 * v13);
            v48 += 24;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(*a5 + 24 * v13 + 8) - v47) >> 3) > v49);
        }
      }

      v94.__r_.__value_.__r.__words[0] = v90;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v94);
      v94.__r_.__value_.__r.__words[0] = &v91;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v94);
      ++v13;
      v12 = *a1;
      if (v13 >= (a1[1] - *a1) >> 3)
      {
        v11 = v99;
        break;
      }
    }
  }

  v59 = v97;
  v60 = v100;
  *a6 = v98;
  *(a6 + 8) = v11;
  *(a6 + 16) = v60;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  *(a6 + 24) = v96;
  *(a6 + 40) = v59;
  v94.__r_.__value_.__r.__words[0] = &v98;
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v94);
  std::__tree<std::string>::destroy(&v101, v102[0]);
}

void sub_1B588C00C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B588C068);
}

void sub_1B588C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B588C068);
}

void sub_1B588C064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a17;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &a20;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 176);
  if (v25)
  {
    *(v23 - 168) = v25;
    operator delete(v25);
  }

  a23 = (v23 - 152);
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  std::__tree<std::string>::destroy(v23 - 128, *(v23 - 120));
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::RunOpChain(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  v14 = (a1 + 248);
  if (*(a1 + 248))
  {
    if (e5rt_execution_stream_reset())
    {
LABEL_11:
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Espresso V2 failure: ", 21);
      v22 = strlen(last_error_message);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, last_error_message, v22);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v23, "\n");
LABEL_12:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
    }

    if (*v14)
    {
      goto LABEL_5;
    }
  }

  if (e5rt_execution_stream_create())
  {
    goto LABEL_11;
  }

LABEL_5:
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<e5rt_execution_stream_operation *>::__init_with_size[abi:ne200100]<e5rt_execution_stream_operation **,e5rt_execution_stream_operation **>(&v24, *a2, a2[1], (a2[1] - *a2) >> 3);
  kaldi::quasar::EspressoV2Plan::PrepareOpChain(&v24, a3, a4, a6, a7, v27, a8, 0);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v30[0] = v27;
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](v30);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  result = e5rt_execution_stream_execute_sync();
  if (result)
  {
    v16 = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Espresso V2 failure: ", 21);
    v18 = strlen(v16);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v16, v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "\n");
    goto LABEL_12;
  }

  return result;
}

void sub_1B588C2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::quasar::EspressoV2Chain::EspressoV2Chain(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = &unk_1F2D36320;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::EspressoV2Plan>*,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 4), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  a1[8] = 0;
  a1[7] = a1 + 8;
  a1[11] = 0;
  a1[10] = a1 + 11;
  a1[9] = 0;
  a1[12] = 0;
  a1[14] = 0;
  a1[13] = a1 + 14;
  a1[15] = 0;
  a1[17] = 0;
  a1[16] = a1 + 17;
  a1[20] = 0;
  a1[18] = 0;
  a1[19] = a1 + 20;
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  a1[24] = 5000;
  if (a1[2] == a1[1])
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "EspressoV2Chain must be initialized with at least one sub-net!", 62);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  if (a4)
  {
    a1[24] = a4;
  }

  return a1;
}

void sub_1B588C470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, uint64_t a14)
{
  std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy(v21, *v19);
  std::__tree<std::string>::destroy(v20, *v17);
  std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a10, *v18);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a11, *v15);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v16, *v22);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = a12;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  quasar::Bitmap::~Bitmap(v14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Chain::~EspressoV2Chain(kaldi::quasar::EspressoV2Chain *this)
{
  *this = &unk_1F2D36320;
  v2 = this + 128;
  v3 = *(this + 16);
  v4 = this + 136;
  if (v3 != this + 136)
  {
    while (!*(v3 + 7) || !e5rt_execution_stream_release())
    {
      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == v4)
      {
        goto LABEL_10;
      }
    }

LABEL_25:
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Espresso V2 failure: ", 21);
    v15 = strlen(last_error_message);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, last_error_message, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

LABEL_10:
  v8 = *(this + 19);
  if (v8 != (this + 160))
  {
    do
    {
      v9 = *(v8 + 7);
      v10 = *(v8 + 8);
      while (v9 != v10)
      {
        if (*v9 && e5rt_async_event_release())
        {
          goto LABEL_25;
        }

        ++v9;
      }

      v11 = *(v8 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v8 + 2);
          v7 = *v12 == v8;
          v8 = v12;
        }

        while (!v7);
      }

      v8 = v12;
    }

    while (v12 != (this + 160));
  }

  if (*(this + 22) && e5rt_async_event_release())
  {
    goto LABEL_25;
  }

  std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy(this + 152, *(this + 20));
  std::__tree<std::string>::destroy(v2, *(this + 17));
  std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 56, *(this + 8));
  v17[0] = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  v17[0] = (this + 8);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](v17);
  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::quasar::EspressoV2Chain::~EspressoV2Chain(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::EspressoV2Chain::CreateData(uint64_t a1)
{
  return (*(***(a1 + 8) + 24))();
}

{
  return (*(***(a1 + 8) + 32))();
}

{
  return (*(***(a1 + 8) + 40))();
}

{
  return (*(***(a1 + 8) + 48))();
}

void kaldi::quasar::EspressoV2Chain::Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "main");
  (*(*a1 + 152))(a1, __p, a2, a3, a4, a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "main");
  (*(*a1 + 160))(a1, __p, a2, a3, a4, a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B588CA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B588CACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::EspressoV2Chain::RunFunction(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v11 = *a3;
  v12 = a3[1];
  while (v11 != v12)
  {
    v13 = *(v11 + 3);
    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
    }

    else
    {
      v14 = *v11;
      __p.__r_.__value_.__r.__words[2] = *(v11 + 2);
      *&__p.__r_.__value_.__l.__data_ = v14;
    }

    v18 = v13;
    v15 = v20;
    if (v20 >= v21)
    {
      v20 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v19, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = *&__p.__r_.__value_.__l.__data_;
      *(v20 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v15 = v16;
      memset(&__p, 0, sizeof(__p));
      *(v15 + 24) = v18;
      v20 = v15 + 32;
    }

    v11 += 2;
  }

  (*(*a1 + 160))(a1, a2, &v19, a4, a5, a6);
  __p.__r_.__value_.__r.__words[0] = &v19;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B588CC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Chain::PrepareIntermediates(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    if (*(a2 + 8) != 4)
    {
      goto LABEL_7;
    }

    v5 = *a2;
  }

  else
  {
    v5 = a2;
    if (v4 != 4)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == 1852399981)
  {
    v36 = *(a1 + 8);
    v37 = *(a1 + 16);
    while (v36 != v37)
    {
      std::vector<TVertex *>::push_back[abi:ne200100](&v71, (*v36 + 216));
      v36 += 16;
    }

    goto LABEL_9;
  }

LABEL_7:
  v6 = *(a1 + 8);
  for (i = *(a1 + 16); v6 != i; v6 += 2)
  {
    v8 = *v6;
    *&__p = a2;
    v9 = std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v8 + 224, a2);
    std::vector<TVertex *>::push_back[abi:ne200100](&v71, (v9 + 56));
  }

LABEL_9:
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v10 = v71;
  for (j = v72; v10 != j; v10 += 8)
  {
    v12 = v66;
    if (v66 >= v67)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v67 - v65) >> 3) > v15)
      {
        v15 = 0x5555555555555556 * ((v67 - v65) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v67 - v65) >> 3) >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v15;
      }

      v63 = &v65;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(&v65, v16);
      }

      v17 = (8 * ((v66 - v65) >> 3));
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      v13 = 24 * v14 + 24;
      v18 = v17 - (v66 - v65);
      memcpy(v18, v65, v66 - v65);
      v19 = v65;
      v20 = v67;
      v65 = v18;
      v66 = v13;
      v67 = 0;
      v61 = v19;
      v62 = v20;
      *&__p = v19;
      *(&__p + 1) = v19;
      std::__split_buffer<std::vector<std::string>>::~__split_buffer(&__p);
    }

    else
    {
      *v66 = 0;
      *(v12 + 1) = 0;
      v13 = (v12 + 24);
      *(v12 + 2) = 0;
    }

    v66 = v13;
    v64 = 0;
    if (e5rt_execution_stream_operation_get_num_outputs())
    {
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v44 = strlen(last_error_message);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, last_error_message, v44);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    std::vector<char const*>::vector[abi:ne200100](&v58, v64);
    if (e5rt_execution_stream_operation_get_output_names())
    {
      v38 = e5rt_get_last_error_message();
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v40 = strlen(v38);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v38, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    v22 = v58;
    v21 = v59;
    while (v22 != v21)
    {
      v23 = v66;
      std::string::basic_string[abi:ne200100]<0>(&__p, *v22);
      std::vector<std::string>::push_back[abi:ne200100]((v23 - 24), &__p);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
      }

      ++v22;
    }

    v24 = v69;
    if (v69 >= v70)
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3);
      v27 = v26 + 1;
      if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v70 - v68) >> 3) > v27)
      {
        v27 = 0x5555555555555556 * ((v70 - v68) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v70 - v68) >> 3) >= 0x555555555555555)
      {
        v28 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v28 = v27;
      }

      v63 = &v68;
      if (v28)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(&v68, v28);
      }

      v29 = (8 * ((v69 - v68) >> 3));
      *v29 = 0;
      v29[1] = 0;
      v29[2] = 0;
      v25 = 24 * v26 + 24;
      v30 = v29 - (v69 - v68);
      memcpy(v30, v68, v69 - v68);
      v31 = v68;
      v32 = v70;
      v68 = v30;
      v69 = v25;
      v70 = 0;
      v61 = v31;
      v62 = v32;
      *&__p = v31;
      *(&__p + 1) = v31;
      std::__split_buffer<std::vector<std::string>>::~__split_buffer(&__p);
    }

    else
    {
      *v69 = 0;
      *(v24 + 1) = 0;
      v25 = (v24 + 24);
      *(v24 + 2) = 0;
    }

    v69 = v25;
    v57 = 0;
    if (e5rt_execution_stream_operation_get_num_inputs())
    {
      v46 = e5rt_get_last_error_message();
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v48 = strlen(v46);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v46, v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    std::vector<char const*>::vector[abi:ne200100](&v55, v57);
    if (e5rt_execution_stream_operation_get_input_names())
    {
      v50 = e5rt_get_last_error_message();
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Espresso V2 failure: ", 21);
      v52 = strlen(v50);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v50, v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\n", 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    v34 = v55;
    v33 = v56;
    if (v55 != v56)
    {
      do
      {
        v35 = v69;
        std::string::basic_string[abi:ne200100]<0>(&__p, *v34);
        std::vector<std::string>::push_back[abi:ne200100]((v35 - 24), &__p);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }

        ++v34;
      }

      while (v34 != v33);
      v34 = v55;
    }

    if (v34)
    {
      v56 = v34;
      operator delete(v34);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIP31e5rt_execution_stream_operationNS_9allocatorIS5_EEEENS3_INS3_INS_12basic_stringIcNS_11char_traitsIcEENS6_IcEEEENS6_ISD_EEEENS6_ISF_EEEESH_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_SH_SH_EJEJEJRS8_RSH_SL_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(a3, &v71, &v68, &v65);
  *&__p = &v65;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *&__p = &v68;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }
}

void sub_1B588D270(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B588D28CLL);
}

void sub_1B588D288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  a15 = (v23 - 160);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a15);
  *(v23 - 160) = v23 - 136;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100]((v23 - 160));
  v25 = *(v23 - 112);
  if (v25)
  {
    *(v23 - 104) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2Chain::RunFunction(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  kaldi::quasar::EspressoV2Chain::PrepareIntermediates(a1, a2, &v15);
  v10 = **(a1 + 8);
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<e5rt_execution_stream_operation *>::__init_with_size[abi:ne200100]<e5rt_execution_stream_operation **,e5rt_execution_stream_operation **>(&__p, v15, v16, (v16 - v15) >> 3);
  kaldi::quasar::EspressoV2Plan::RunOpChain(v10, &__p, a3, a4, v11, a6, v18, v17);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v19 = v18;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v19);
  v19 = v17;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_1B588D3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<e5rt_execution_stream_operation *>,std::vector<std::vector<std::string>>,std::vector<std::vector<std::string>>>::~tuple(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<std::vector<e5rt_execution_stream_operation *>,std::vector<std::vector<std::string>>,std::vector<std::vector<std::string>>>::~tuple(uint64_t a1)
{
  v4 = (a1 + 48);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 24);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void kaldi::quasar::EspressoV2Chain::PrepareRun(uint64_t a1, const void **a2, __int128 ***a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (std::__tree<std::string>::__count_unique<std::string>(a1 + 56, a2) || std::__tree<std::string>::__count_unique<std::string>(a1 + 80, a2) || std::__tree<std::string>::__count_unique<std::string>(a1 + 128, a2))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v47, "Rebinding buffers for EspressoV2Chain is not supported!");
    goto LABEL_33;
  }

  v47.__r_.__value_.__r.__words[0] = a2;
  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 56, a2);
  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = *(v11 + 64);
  *(v11 + 56) = v13;
  *(v11 + 64) = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v47.__r_.__value_.__r.__words[0] = a2;
  v15 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 80, a2);
  v17 = *a6;
  v16 = *(a6 + 8);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(v15 + 64);
  *(v15 + 56) = v17;
  *(v15 + 64) = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v47.__r_.__value_.__r.__words[0] = a2;
  std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 128, a2);
  if (e5rt_execution_stream_create())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Espresso V2 failure: ", 21);
    v31 = strlen(last_error_message);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, last_error_message, v31);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v32, "\n");
LABEL_33:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v47);
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v19 = *a3;
  v20 = **a3;
  v21 = v19[1];
  while (v20 != v21)
  {
    v22 = *(v20 + 3);
    if (*(v20 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, *v20, *(v20 + 1));
    }

    else
    {
      v23 = *v20;
      v47.__r_.__value_.__r.__words[2] = *(v20 + 2);
      *&v47.__r_.__value_.__l.__data_ = v23;
    }

    *&v48 = v22;
    v24 = v45;
    if (v45 >= v46)
    {
      v45 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v44, &v47);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v25 = *&v47.__r_.__value_.__l.__data_;
      *(v45 + 16) = *(&v47.__r_.__value_.__l + 2);
      *v24 = v25;
      memset(&v47, 0, sizeof(v47));
      *(v24 + 24) = v48;
      v45 = v24 + 32;
    }

    v20 += 2;
  }

  kaldi::quasar::EspressoV2Chain::PrepareIntermediates(a1, a2, &v40);
  v50 = a2;
  std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 128, a2);
  v38 = 0;
  v39 = 0;
  __p = 0;
  std::vector<e5rt_execution_stream_operation *>::__init_with_size[abi:ne200100]<e5rt_execution_stream_operation **,e5rt_execution_stream_operation **>(&__p, v40, v41, (v41 - v40) >> 3);
  kaldi::quasar::EspressoV2Plan::PrepareOpChain(&__p, &v44, a4, *a6, v43, &v47, v42, 1);
  v50 = a2;
  v26 = std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 104, a2);
  v50 = a2;
  v27 = std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 152, a2);
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__vdeallocate((v26 + 56));
  *(v26 + 56) = *&v47.__r_.__value_.__l.__data_;
  v28 = v27[7];
  *(v26 + 72) = *(&v47.__r_.__value_.__l + 2);
  memset(&v47, 0, sizeof(v47));
  if (v28)
  {
    v27[8] = v28;
    operator delete(v28);
    v27[7] = 0;
    v27[8] = 0;
    v27[9] = 0;
  }

  *(v27 + 7) = v48;
  v27[9] = v49;
  v49 = 0;
  v48 = 0uLL;
  v50 = &v47;
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v50);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  v50 = a2;
  std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 128, a2);
  e5rt_execution_stream_prewire_in_use_allocations();
  if (!*(a1 + 176) && e5rt_async_event_create())
  {
    v33 = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Espresso V2 failure: ", 21);
    v35 = strlen(v33);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v33, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v47);
  }

  v47.__r_.__value_.__r.__words[0] = v43;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v47);
  v47.__r_.__value_.__r.__words[0] = v42;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v47);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  v47.__r_.__value_.__r.__words[0] = &v44;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v47);
}

void sub_1B588D934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  v34 = &v33;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v34);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Chain::RunFunction(uint64_t a1, const void **a2)
{
  v13[0] = a2;
  v4 = std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 152, a2);
  if (*(v4 + 56) == *(v4 + 64))
  {
    v13[0] = a2;
    std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 128, a2);
    result = e5rt_execution_stream_execute_sync();
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    ++*(a1 + 184);
    v13[0] = a2;
    v5 = std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 152, a2);
    v6 = *(v5 + 56);
    v7 = *(v5 + 64);
    while (v6 != v7)
    {
      if (e5rt_async_event_set_active_future_value())
      {
        goto LABEL_11;
      }

      v6 += 8;
    }

    v13[0] = a2;
    std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 128, a2);
    if (e5rt_execution_stream_submit_async() || (result = e5rt_async_event_sync_wait(), result))
    {
LABEL_11:
      last_error_message = e5rt_get_last_error_message();
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Espresso V2 failure: ", 21);
      v11 = strlen(last_error_message);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, last_error_message, v11);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "\n");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
    }
  }

  return result;
}

uint64_t ___ZN5kaldi6quasar15EspressoV2Chain11RunFunctionERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Espresso V2 failure during async call: ", 39);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, last_error_message);
    goto LABEL_6;
  }

  result = e5rt_async_event_signal();
  if (result)
  {
    v7 = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Espresso V2 failure: ", 21);
    v9 = strlen(v7);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7, v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "\n");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  return result;
}

void kaldi::quasar::EspressoV2TensorData::CopyToMatrix(kaldi::quasar::EspressoV2TensorData *a1, uint64_t a2)
{
  v16[34] = 0;
  v17 = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v14 = strlen(last_error_message);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, last_error_message, v14);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  v4 = *v17;
  v5 = v17[1];
  kaldi::Matrix<float>::Resize(a2, *v17, v5, 1, 0);
  kaldi::quasar::EspressoV2TensorData::GetDataFloat(a1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = *a2 + 4 * *(a2 + 16) * i;
        do
        {
          *(v11 + (v9 >> 30)) = *(v6 + 4 * v10++);
          v9 += 0x100000000;
          v8 -= 4;
        }

        while (v5 != v10);
        v6 -= v8;
      }
    }
  }
}

void kaldi::quasar::EspressoV2TensorData::CopyToStdVector(kaldi::quasar::EspressoV2TensorData *a1, int **a2)
{
  kaldi::quasar::EspressoV2TensorData::GetDataFloat(a1);
  v4 = v3;
  v20[34] = 0;
  v20[35] = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Espresso V2 failure: ", 21);
    v18 = strlen(last_error_message);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, last_error_message, v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v5 = *a2;
  a2[1] = *a2;
  v6 = 1;
  do
  {
    v7 = *v4;
    v8 = a2[2];
    if (v5 >= v8)
    {
      v9 = *a2;
      v10 = v5 - *a2;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = v8 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v14);
      }

      *(4 * v11) = v7;
      v5 = (4 * v11 + 4);
      memcpy(0, v9, v10);
      v15 = *a2;
      *a2 = 0;
      a2[1] = v5;
      a2[2] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v5++ = v7;
    }

    a2[1] = v5;
    ++v4;
    --v6;
  }

  while (v6);
}

void kaldi::quasar::EspressoV2TensorData::CopyToStdVector(kaldi::quasar::EspressoV2TensorData *a1, void *a2)
{
  kaldi::quasar::EspressoV2TensorData::GetDataFloat(a1);
  v4 = v3;
  v19[34] = 0;
  v19[35] = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Espresso V2 failure: ", 21);
    v17 = strlen(last_error_message);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, last_error_message, v17);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  v5 = *a2;
  a2[1] = *a2;
  v6 = 1;
  do
  {
    v7 = a2[2];
    if (v5 >= v7)
    {
      v8 = *a2;
      v9 = v5 - *a2;
      v10 = v9 >> 2;
      v11 = (v9 >> 2) + 1;
      if (v11 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = v7 - v8;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v13);
      }

      *(4 * v10) = *v4;
      v5 = (4 * v10 + 4);
      memcpy(0, v8, v9);
      v14 = *a2;
      *a2 = 0;
      a2[1] = v5;
      a2[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v5++ = *v4;
    }

    a2[1] = v5;
    ++v4;
    --v6;
  }

  while (v6);
}

void *kaldi::quasar::EspressoV2TensorData::FlatRangeCopy(kaldi::quasar::EspressoV2TensorData *this, const kaldi::quasar::ComputeEngineBufferItf *a2, int a3, int a4, int a5)
{
  v9 = (*(*a2 + 152))(a2);
  kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(this);
  if (a4 - a3 < 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "srcend - srcstart >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v11 = (v10 + 4 * a5);

  return memcpy(v11, (v9 + 4 * a3), 4 * (a4 - a3));
}

float kaldi::quasar::EspressoV2TensorData::FlatRangeCopy(kaldi::quasar::EspressoV2TensorData *this, int *a2, unsigned int a3, int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "length >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(this);
  if (a3)
  {
    v9 = (v7 + 4 * a4);
    v10 = a3;
    do
    {
      v11 = *a2++;
      result = v11;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  return result;
}

float kaldi::quasar::EspressoV2TensorData::AssignScalar(kaldi::quasar::EspressoV2TensorData *this, int a2, int a3)
{
  kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(this);
  result = a2;
  *(v6 + 4 * a3) = a2;
  return result;
}

void kaldi::quasar::EspressoV2TensorData::Reshape()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented TODO");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t std::pair<std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::vector<e5rt_async_event *>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIP31e5rt_execution_stream_operationNS_9allocatorIS5_EEEENS3_INS3_INS_12basic_stringIcNS_11char_traitsIcEENS6_IcEEEENS6_ISD_EEEENS6_ISF_EEEESH_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_SH_SH_EJEJEJRS8_RSH_SL_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSN_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<e5rt_execution_stream_operation *>::__init_with_size[abi:ne200100]<e5rt_execution_stream_operation **,e5rt_execution_stream_operation **>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>((a1 + 6), *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  return a1;
}

void sub_1B588E6C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B588E75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2TensorData::EspressoV2TensorData(kaldi::quasar::EspressoV2TensorData *this, const kaldi::quasar::EspressoV2TensorData *a2)
{
  v2 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(this);
  *v2 = &unk_1F2D36118;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Copies of espressoV2 Tensors are not supported", 46);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
}

void sub_1B588E7FC(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__assign_with_size[abi:ne200100]<std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **> const*>(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<std::string,float>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v8[1].__r_.__value_.__r.__words[0] = v6[1].__r_.__value_.__r.__words[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v14 = v12[-1].__r_.__value_.__s.__data_[15];
      v12 = (v12 - 32);
      if (v14 < 0)
      {
        operator delete(v12->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (__str + v12 - v8);
    if (v12 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v8[1].__r_.__value_.__r.__words[0] = v6[1].__r_.__value_.__r.__words[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **>*>(a1, v13, a3, v12);
  }
}

void std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **> const*,std::pair<std::string,e5rt_execution_stream_operation **>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>,std::pair<std::string,e5rt_execution_stream_operation **>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string::value_type *std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__emplace_back_slow_path<std::string const&,e5rt_execution_stream_operation **>(uint64_t a1, __int128 *a2, std::string::size_type *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v25 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,e5rt_execution_stream_operation **>>>(a1, v9);
  }

  v10 = (32 * v3);
  v21 = 0;
  v22 = v10;
  v11 = 0;
  v23 = v10;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
    v11 = v24;
  }

  else
  {
    v12 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v12;
    v13 = v10;
    v14 = v10;
  }

  v10[1].__r_.__value_.__r.__words[0] = *a3;
  v15 = &v14[1].__r_.__value_.__s.__data_[8];
  v16 = *(a1 + 8) - *a1;
  v17 = v13 - v16;
  memcpy(v13 - v16, *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = v15;
  v19 = *(a1 + 16);
  *(a1 + 16) = v11;
  v23 = v18;
  v24 = v19;
  v21 = v18;
  v22 = v18;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v21);
  return v15;
}

void sub_1B588EC40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B588ECAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B588ED20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&> const*,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&> const*,std::insert_iterator<std::map<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a1;
  *&v11 = a3;
  for (*(&v11 + 1) = a4; v5 != a2; v5 += 32)
  {
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
    }

    else
    {
      __p = *v5;
    }

    v10 = *(v5 + 24);
    std::insert_iterator<std::map<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::operator=[abi:ne200100](&v11, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *a5 = v5;
  result = *&v11;
  *(a5 + 8) = v11;
  return result;
}

void sub_1B588EDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::insert_iterator<std::map<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::operator=[abi:ne200100](uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::artifact::AppLmArtifactLifeCycleStage const&>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::artifact::AppLmArtifactLifeCycleStage const&> const&>(*a1, *(a1 + 8), a2);
  *(a1 + 8) = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 24;
        std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v4);
  }

  v5 = 24 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *(v5 + 16) = 0;
  *(24 * v1 + 8) = 0;
  *v5 = 24 * v1 + 8;
  *&v14 = 24 * v1 + 24;
  v6 = a1[1];
  v7 = 24 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v12);
  return v11;
}

void sub_1B588F0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>,std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy(i - 24, *(i - 16));
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<e5rt_execution_stream_operation *>::__init_with_size[abi:ne200100]<e5rt_execution_stream_operation **,e5rt_execution_stream_operation **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B588F4C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::EspressoV2Plan>*,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B588F544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>,std::shared_ptr<kaldi::quasar::EspressoV2Plan>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<e5rt_async_event *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<e5rt_async_event *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void std::vector<std::map<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 24;
        std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>::destroy((v3 - 24), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t quasar::EvaluationTask::EvaluationTask(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = a4;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  kaldi::SplitStringToVector(a2, "-", 1, &v49);
  if (v50 - v49 != 48)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
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
    v32 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "invalid evaluation task specification ", 38);
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    if (v29 >= 0)
    {
      v31 = *(a2 + 23);
    }

    else
    {
      v31 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v32);
  }

  v7 = 0;
  for (i = "train"; std::string::compare(v49, i); i += 20)
  {
    if (++v7 == 4)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
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
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "invalid data specifier: ", 24);
      v10 = SHIBYTE(v49->__r_.__value_.__r.__words[2]);
      if (v10 >= 0)
      {
        v11 = v49;
      }

      else
      {
        v11 = v49->__r_.__value_.__r.__words[0];
      }

      if (v10 >= 0)
      {
        size = HIBYTE(v49->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v49->__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, size);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v32);
    }
  }

  *a1 = v7;
  v13 = 0;
  for (j = 1; ; j = 0)
  {
    v15 = j;
    if (!std::string::compare(v49 + 1, &quasar::EvaluationTask::metricOptions[20 * v13]))
    {
      break;
    }

    v13 = 1;
    if ((v15 & 1) == 0)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
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
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "invalid metric specifier: ", 26);
      v17 = SHIBYTE(v49[1].__r_.__value_.__r.__words[2]);
      if (v17 >= 0)
      {
        data = v49 + 1;
      }

      else
      {
        data = v49[1].__r_.__value_.__l.__data_;
      }

      if (v17 >= 0)
      {
        v19 = HIBYTE(v49[1].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v49[1].__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, data, v19);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v32);
    }
  }

  *(a1 + 4) = v13;
  v20 = *(a3 + 23);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a3 + 8);
  }

  if (v20)
  {
    v21 = 0;
    for (k = "none"; std::string::compare(a3, k); k += 20)
    {
      if (++v21 == 3)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
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
        v32 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "invalid optimization specifier: ", 32);
        v24 = *(a3 + 23);
        if (v24 >= 0)
        {
          v25 = a3;
        }

        else
        {
          v25 = *a3;
        }

        if (v24 >= 0)
        {
          v26 = *(a3 + 23);
        }

        else
        {
          v26 = *(a3 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v32);
      }
    }

    *(a1 + 8) = v21;
  }

  *&v32 = &v49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
  return a1;
}

void sub_1B588FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::EvaluationTask::printTask(quasar::EvaluationTask *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, &quasar::EvaluationTask::dataSetOptions[20 * *this]);
  v4 = std::string::append(&v11, "-");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, &quasar::EvaluationTask::metricOptions[20 * *(this + 1)]);
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

void sub_1B588FDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void quasar::EvaluationTask::optimizationPtree(quasar::EvaluationTask *this@<X0>, float a2@<S0>, quasar::PTree *a3@<X8>)
{
  quasar::PTree::PTree(a3);
  std::string::basic_string[abi:ne200100]<0>(v14, "select-based-on");
  quasar::EvaluationTask::printTask(this, &__p);
  quasar::PTree::PTree(&Type, &__p);
  quasar::PTree::putChild(a3, v14, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "optimization-method");
  std::string::basic_string[abi:ne200100]<0>(&__p, &quasar::EvaluationTask::optimizeOptions[20 * *(this + 2)]);
  quasar::PTree::PTree(&Type, &__p);
  quasar::PTree::putChild(a3, v14, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(v14, "best-weight");
  Type = quasar::getType(v6, a2);
  std::to_string(&v9, a2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  quasar::PTree::putChild(a3, v14, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1B588FF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  quasar::PTree::~PTree(&a15);
  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
  }

  quasar::PTree::~PTree(v15);
  _Unwind_Resume(a1);
}

uint64_t quasar::getFloatRangeFromSpecifier(uint64_t a1, std::vector<unsigned int> *a2, uint64_t a3)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  memset(&v46, 0, sizeof(v46));
  kaldi::SplitStringToFloats<float>(a1, ":", 1, &v46);
  if ((v46.__end_ - v46.__begin_) == 12)
  {
    v7 = *(v46.__begin_ + 2);
    if (v7 <= *v46.__begin_ || (v8 = *(v46.__begin_ + 1), fabsf(v8) < 0.000001))
    {
      if (quasar::gLogLevel >= 2)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "weight list contains invalid range specification (should be e.g.0.0:0.2:10.0)", 79);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v29);
      }

LABEL_16:
      v9 = 0;
      goto LABEL_38;
    }

    v11 = (v7 - *v46.__begin_) * 1000.0 / v8;
    v12 = (floor(roundf(v11) * 0.001) + 1.0);
    if (v12 > a3)
    {
      if (quasar::gLogLevel >= 2)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "weight list range specification exceeds maximum number of weights: ", 67);
        MEMORY[0x1B8C84C00](v13, a3);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v29);
      }

      goto LABEL_16;
    }

    std::vector<int>::reserve(a2, v12);
    begin = v46.__begin_;
    for (i = *v46.__begin_; ; i = v17 + *(v46.__begin_ + 1))
    {
      v16 = *(begin + 2);
      if (i > v16 && (COERCE_INT(fabs(i - v16)) > 2139095039 || vabds_f32(i, v16) > ((fabsf(i) + fabsf(v16)) * 0.001)))
      {
        break;
      }

      if (i <= v16)
      {
        v17 = i;
      }

      else
      {
        v17 = *(begin + 2);
      }

      end = a2->__end_;
      value = a2->__end_cap_.__value_;
      if (end >= value)
      {
        v21 = a2->__begin_;
        v22 = end - a2->__begin_;
        v23 = v22 >> 2;
        v24 = (v22 >> 2) + 1;
        if (v24 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v25 = value - v21;
        if (v25 >> 1 > v24)
        {
          v24 = v25 >> 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v26 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v26);
        }

        *(4 * v23) = v17;
        v20 = 4 * v23 + 4;
        memcpy(0, v21, v22);
        v27 = a2->__begin_;
        a2->__begin_ = 0;
        a2->__end_ = v20;
        a2->__end_cap_.__value_ = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *end = v17;
        v20 = (end + 1);
      }

      a2->__end_ = v20;
      begin = v46.__begin_;
    }
  }

  else
  {
    kaldi::SplitStringToFloats<float>(a1, ",", 1, a2);
    if (a3 < (a2->__end_ - a2->__begin_))
    {
      if (quasar::gLogLevel >= 2)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "weight list should be comma-separated list of maximum size ", 59);
        MEMORY[0x1B8C84C00](v10, a3);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v29);
      }

      goto LABEL_16;
    }
  }

  v9 = 1;
LABEL_38:
  if (v46.__begin_)
  {
    v46.__end_ = v46.__begin_;
    operator delete(v46.__begin_);
  }

  return v9;
}

void sub_1B58903C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LmEvaluator::LmEvaluator(std::string *this, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a4, *(a4 + 1));
  }

  else
  {
    v6 = *a4;
    this->__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v15 = vdupq_n_s64(0x4076800000000000uLL);
  v16[0] = v15;
  *&this[2].__r_.__value_.__l.__size_ = quasar::Location::getLatitude(v16);
  v16[0] = v15;
  Weight = quasar::corrective_reranking::VoiceEditingWFST::Path::getWeight(v16);
  __asm { FMOV            V1.4S, #-1.0 }

  *&this[7].__r_.__value_.__l.__data_ = _Q1;
  *&this[2].__r_.__value_.__r.__words[2] = Weight;
  LODWORD(this[3].__r_.__value_.__l.__data_) = 1;
  this[3].__r_.__value_.__s.__data_[16] = 0;
  *&this[4].__r_.__value_.__l.__data_ = 0u;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[0] = 0x7FFFFFFF00000000;
  *&this[4].__r_.__value_.__r.__words[2] = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = xmmword_1B5B2D270;
  *&this[5].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[7].__r_.__value_.__r.__words[2]) = -1082130432;
  this[9].__r_.__value_.__s.__data_[0] = 1;
  kaldi::Timer::Reset(&this[8], v13);
  this[9].__r_.__value_.__l.__size_ = 0;
  if (*(a3 + 23) < 0)
  {
    v14 = *(a3 + 8);
    if (v14)
    {
      std::string::__init_copy_ctor_external(&v17, *a3, v14);
      goto LABEL_10;
    }
  }

  else if (*(a3 + 23))
  {
    v17 = *a3;
    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(&v17, "lm-personalize.evaluator");
LABEL_10:
  quasar::SystemConfig::SystemConfig(v16);
}

char *std::vector<float>::insert(void *a1, char *__src, float *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<float>::emplace_back<float>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_1B5891C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *std::vector<float>::insert(void *a1, char *__src, float *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<float>::emplace_back<float>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 4);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_1B5891E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LmEvaluator::runEvaluation(uint64_t a1, uint64_t a2, uint64_t a3, quasar *a4, float *a5, int a6, char a7)
{
  v72[9] = *MEMORY[0x1E69E9840];
  Seconds = kaldi::Timer::GetSeconds(5, a2);
  quasar::PTree::PTree(v71);
  if (!*(a1 + 80))
  {
    operator new();
  }

  v15 = 0;
  *(a1 + 48) = a7;
  do
  {
    v16 = &v71[v15 + 64];
    v16[2] = 0;
    *&v71[v15 + 72] = 0;
    *v16 = &v71[v15 + 72];
    v15 += 24;
  }

  while (v15 != 96);
  v17 = *(a1 + 96);
  if ((*(v17 + 12) & 1) == 0)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *v54 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "First task should be on tuning on dev set", 41);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v54);
  }

  if (*(v17 + 2) == 2)
  {
    v19 = *(a1 + 120);
    v18 = *(a1 + 128);
    if ((v18 - v19) < 5 || *v19 != 0.0 || *(v18 - 4) != 1.0)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "For interpolated models, we should evaluate weights 0 and 1", 59);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v54);
    }
  }

  v44 = a5;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v20 = *(a1 + 104);
  if (v17 != v20)
  {
    v21 = 0.0;
    while (1)
    {
      v50 = *v17;
      v49[0] = 0;
      v49[1] = 0;
      v48 = v49;
      v22 = *(&v50 + 1);
      v23 = &v71[24 * v50 + 64];
      if ((quasar::LmEvaluator::runTask(a1, v50, *(&v50 + 1), a2, a3, &v51, v23, &v48) & 1) == 0)
      {
        break;
      }

      if ((v22 & 0x100000000) != 0 && (v52 - v51) >= 5)
      {
        v21 = *(v51 + 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "model-selection");
        quasar::EvaluationTask::optimizationPtree(&v50, v21, v54);
        quasar::PTree::putChild(a4, __p, v54, 1);
        quasar::PTree::~PTree(v54);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      quasar::PTree::PTree(v54);
      v26 = *v23;
      v24 = (v23 + 1);
      v25 = v26;
      if (v26 != v24)
      {
        do
        {
          quasar::CorpusStats::Ptree(*(v25 + 5), a6 ^ 1, __p);
          quasar::weightToStr(&v46, v27, v25[8]);
          quasar::PTree::putChild(v54, &v46, __p, 0);
          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }

          quasar::PTree::~PTree(__p);
          v28 = *(v25 + 1);
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = *(v25 + 2);
              v30 = *v29 == v25;
              v25 = v29;
            }

            while (!v30);
          }

          v25 = v29;
        }

        while (v29 != v24);
      }

      quasar::EvaluationTask::printTask(&v50, &v46);
      quasar::times2Ptree(&v48, __p);
      quasar::PTree::putChild(v71, &v46, __p, 0);
      quasar::PTree::~PTree(__p);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      quasar::EvaluationTask::printTask(&v50, __p);
      quasar::PTree::putChild(a4, __p, v54, 0);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      quasar::PTree::~PTree(v54);
      std::__tree<std::string>::destroy(&v48, v49[0]);
      if (++v17 == v20)
      {
        v31 = 1;
        if (a6)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }
    }

    if (quasar::gLogLevel >= 4)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "Task failed", 11);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v54);
    }

    std::__tree<std::string>::destroy(&v48, v49[0]);
    v31 = 0;
    if (!a6)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v21 = 0.0;
  v31 = 1;
  if (a6)
  {
LABEL_38:
    quasar::roundCountsInPtree(a4, v14);
  }

LABEL_39:
  v32 = *(a1 + 156);
  if (v21 <= v32)
  {
    v32 = v21;
  }

  else if (quasar::gLogLevel >= 4)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *v54 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "bestWeight (", 12);
    v33 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") exceeds maxWeight (", 21);
    v34 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "). Clipping to maxWeight", 24);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v54);
    v32 = *(a1 + 156);
  }

  if (v32 == 0.0 || v32 < *(a1 + 152))
  {
    v35 = v44;
    if (quasar::gLogLevel < 4)
    {
LABEL_48:
      v38 = 0;
      goto LABEL_49;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *v54 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "bestWeight (", 12);
    v36 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ") is below minWeight (", 22);
    v37 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "). Model will not be used", 25);
LABEL_47:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v54);
    goto LABEL_48;
  }

  if (v31)
  {
    v35 = v44;
    if (!quasar::LmEvaluator::checkPpl(a1, v72, v32))
    {
      if (quasar::gLogLevel < 4)
      {
        goto LABEL_48;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *v54 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "PPL checks failed", 17);
      goto LABEL_47;
    }

    v38 = 1;
  }

  else
  {
    v38 = 0;
    v35 = v44;
  }

LABEL_49:
  if (v35)
  {
    *v35 = v32;
  }

  v39 = kaldi::Timer::GetSeconds(5, v14);
  v40 = std::string::basic_string[abi:ne200100]<0>(__p, "totalTime");
  v41 = v39 - Seconds;
  LODWORD(v54[0]) = quasar::getType(v40, *&v41);
  std::to_string(&v54[1], v41);
  v56 = 0uLL;
  *&v57 = 0;
  BYTE8(v57) = 1;
  quasar::PTree::putChild(a4, __p, v54, 1);
  quasar::PTree::~PTree(v54);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v54, "times");
  quasar::PTree::putChild(a4, v54, v71, 1);
  if (SBYTE7(v55) < 0)
  {
    operator delete(v54[0]);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  for (i = 0; i != -12; i -= 3)
  {
    std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::destroy(&v72[i + 6], v72[i + 7]);
  }

  quasar::PTree::~PTree(v71);
  return v38;
}

void sub_1B5892668(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B58927E4);
}

void sub_1B589267C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  for (i = 0; i != -96; i -= 24)
  {
    std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::destroy(v68 - 224 + i + 72, *(v68 - 224 + i + 80));
  }

  quasar::PTree::~PTree(&a68);
  _Unwind_Resume(a1);
}

void sub_1B5892694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::PTree::~PTree(&a34);
  if (a19 < 0)
  {
    JUMPOUT(0x1B58926D4);
  }

  if (a31)
  {
    operator delete(a31);
  }

  for (i = 0; i != -96; i -= 24)
  {
    std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::destroy(v68 - 224 + i + 72, *(v68 - 224 + i + 80));
  }

  quasar::PTree::~PTree(&a68);
  _Unwind_Resume(a1);
}

void sub_1B58926A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 0; i != -96; i -= 24)
  {
    std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::destroy(v65 - 224 + i + 72, *(v65 - 224 + i + 80));
  }

  quasar::PTree::~PTree(&a65);
  _Unwind_Resume(a1);
}

void sub_1B58926DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a31);
  if (a28)
  {
    operator delete(a28);
  }

  for (i = 0; i != -96; i -= 24)
  {
    std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::destroy(v65 - 224 + i + 72, *(v65 - 224 + i + 80));
  }

  quasar::PTree::~PTree(&a65);
  _Unwind_Resume(a1);
}

void sub_1B58926EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  quasar::PTree::~PTree(&a34);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(&a25, a26);
  JUMPOUT(0x1B58927A8);
}

void sub_1B589271C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5892794);
}

uint64_t quasar::LmEvaluator::runTask(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a3;
  v9 = HIDWORD(a2);
  v53[0] = a2;
  v53[1] = a3;
  Sentences = quasar::LmData::getSentences(a4, a2);
  quasar::EvaluationTask::printTask(v53, &v52);
  if (quasar::gLogLevel >= 4)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Running evaluation task ", 24);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v52;
    }

    else
    {
      v14 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, size);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " with ", 6);
    v18 = MEMORY[0x1B8C84C30](v17, (Sentences[1] - *Sentences) >> 7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " utterances", 11);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
  }

  if (v9 == 1)
  {
    if (quasar::gLogLevel < 2)
    {
      goto LABEL_44;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "no audio data available for ", 28);
    quasar::EvaluationTask::printTask(v53, &v34);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v34;
    }

    else
    {
      v24 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v34.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

LABEL_43:
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
    goto LABEL_44;
  }

  if (v9)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "invalid evaluation metric", 25);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
  }

  if (Sentences[1] == *Sentences)
  {
    if (quasar::gLogLevel < 2)
    {
      goto LABEL_44;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "no text data available for ", 27);
    quasar::EvaluationTask::printTask(v53, &v34);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v34;
    }

    else
    {
      v27 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = v34.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    goto LABEL_43;
  }

  v19 = a1[15];
  for (i = a1[16]; v19 != i; ++v19)
  {
    v20 = *v19;
    v33 = *v19;
    if (v32 == 2 && v20 != 0.0 && v20 != 1.0)
    {
      continue;
    }

    quasar::weightToStr(&__p, v12, v20);
    v22 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a8, &__p);
    quasar::ScopedTimer::ScopedTimer(&v34, (a1 + 24), (v22 + 56));
    if (SBYTE7(v36) < 0)
    {
      operator delete(__p);
    }

    *(*a5 + 12) = v33;
    operator new();
  }

LABEL_44:
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1B5893344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  quasar::ScopedTimer::~ScopedTimer(&a26);
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  if (*(v38 - 137) < 0)
  {
    operator delete(*(v38 - 160));
  }

  _Unwind_Resume(a1);
}

void sub_1B58933DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  quasar::ScopedTimer::~ScopedTimer(&a30);
  if (*(v30 - 137) < 0)
  {
    operator delete(*(v30 - 160));
  }

  _Unwind_Resume(a1);
}

void sub_1B58933EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::unique_ptr<quasar::CorpusStats>::~unique_ptr[abi:ne200100]((v30 + 8));
  std::unique_ptr<quasar::CorpusStats>::~unique_ptr[abi:ne200100](&a26);
  quasar::ScopedTimer::~ScopedTimer(&a30);
  JUMPOUT(0x1B5893430);
}

void sub_1B589341C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    JUMPOUT(0x1B589342CLL);
  }

  if (*(v38 - 137) < 0)
  {
    operator delete(*(v38 - 160));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::weightToStr(quasar *this, double a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  *(&v6[0].__locale_ + *(v4 - 24)) = 16;
  MEMORY[0x1B8C84BE0](&v4, a2);
  std::stringbuf::str();
  v4 = *MEMORY[0x1E69E54E8];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v8);
}

void sub_1B58935C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](v2 + 112);
  _Unwind_Resume(a1);
}

BOOL quasar::LmEvaluator::checkPpl(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 164);
  v55 = *(a1 + 168);
  v56 = a3;
  v5 = *(a1 + 172);
  v54 = *(a1 + 176);
  v57 = 0;
  v53 = vdupq_n_s64(0x444B1AE4D6E2EF50uLL);
  v6 = &v53;
  v7 = *(a1 + 180) >= 0.0 || *(a1 + 184) >= 0.0;
  v8 = 0;
  v9 = (a2 + 8);
  v10 = &v57;
  v11 = &v55;
  v12 = 1;
  do
  {
    v13 = v12;
    if (v4 >= 0.0 || *v11 >= 0.0 || v7)
    {
      v14 = *v9;
      if (!*v9)
      {
        goto LABEL_31;
      }

      v15 = *v10;
      v16 = v9;
      do
      {
        v17 = v14[8];
        if (v17 >= v15)
        {
          v16 = v14;
        }

        v14 = *&v14[2 * (v17 < v15)];
      }

      while (v14);
      if (v16 == v9 || v15 < v16[8])
      {
LABEL_31:
        if (quasar::gLogLevel >= 4)
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "checkPPL ", 9);
          v35 = MEMORY[0x1B8C84C00](v34, v8);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ": No CorpusStat", 15);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v36);
        }

        return 0;
      }

      v18 = *(v16 + 5);
      v19 = *(v18 + 56);
      *v6 = v19;
      v20 = v19;
      if (quasar::gLogLevel >= 4)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "checkPPL ", 9);
        v22 = MEMORY[0x1B8C84C00](v21, v8);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ppl ", 6);
        v24 = MEMORY[0x1B8C84BE0](v23, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " minPpl ", 8);
        v25 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " maxPpl ", 8);
        std::ostream::operator<<();
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v36);
        v20 = *(v18 + 56);
      }

      if (v20 == 1.0e21 || v4 >= 0.0 && v19 < v4 || *v11 >= 0.0 && v19 > *v11)
      {
        return 0;
      }
    }

    v12 = 0;
    v8 = 1;
    v10 = &v56;
    v11 = &v54;
    v6 = &v53.i64[1];
    v4 = v5;
  }

  while ((v13 & 1) != 0);
  if (!v7)
  {
    return 1;
  }

  if (*v53.i64 == 0.0)
  {
    return 0;
  }

  v26 = *v53.i64 - *&v53.i64[1];
  v27 = (*v53.i64 - *&v53.i64[1]) / *v53.i64;
  if (quasar::gLogLevel >= 4)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "checkPPL: absImprovement ", 25);
    v29 = MEMORY[0x1B8C84BE0](v28, v26);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " relImprovement ", 16);
    MEMORY[0x1B8C84BE0](v30, v27);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v36);
  }

  v31 = *(a1 + 180);
  if (v31 >= 0.0 && v26 < v31)
  {
    return 0;
  }

  v32 = *(a1 + 184);
  return v27 >= v32 || v32 < 0.0;
}

uint64_t *std::unique_ptr<quasar::CorpusStats>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v5 = (v2 + 120);
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(v2 + 96);
    if (v3)
    {
      *(v2 + 104) = v3;
      operator delete(v3);
    }

    v5 = (v2 + 72);
    std::vector<quasar::LmInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x1B8C85350](v2, 0x1030C4063630190);
  }

  return a1;
}

uint64_t quasar::LmEvaluator::computeTextStats(uint64_t a1, uint64_t *a2, void *a3, quasar::CorpusStats *a4)
{
  v44[0] = *MEMORY[0x1E69E9840];
  if (quasar::gLogLevel >= 4)
  {
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
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "computing text stats for weight ", 32);
    std::ostream::operator<<();
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
  }

  v7 = *a2;
  if (*a2 != a2[1])
  {
    quasar::LmInfo::LmInfo(v25, *(a1 + 72), (v7 + 8));
    v8 = *(a1 + 80);
    v26 = 0uLL;
    *&v27 = 0;
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v23 = vdupq_n_s64(0x4076800000000000uLL);
    v24[0] = quasar::Location::knownOrFallback(&v23, v9, v10, v11);
    v24[1] = v12;
    v13 = *(a1 + 48);
    v14 = a3[1];
    v43[0] = *a3;
    v43[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v22, 0, sizeof(v22));
    std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::LmHandle> const*,std::shared_ptr<kaldi::quasar::LmHandle> const*>(v22, v43, v44, 1uLL);
    v15 = *(a1 + 88);
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    memset(v20, 0, sizeof(v20));
    BYTE2(v18) = 0;
    LOWORD(v18) = 0;
    quasar::FstLmScorer::computeLmScore(v8, &v26, v24, (a1 + 24), v7 + 32, v13, v25, v22, v15, &__p, v7 + 56, v18, 0, v20, 1);
  }

  if (quasar::CorpusStats::computePerplexity(a4))
  {
    if (*(a4 + 3))
    {
      quasar::CorpusStats::print(a4);
      return 1;
    }
  }

  else if (quasar::gLogLevel >= 2)
  {
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
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "perplexity calculation failed, numTokens is ", 44);
    MEMORY[0x1B8C84C70](v17, *(a4 + 3));
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v26);
  }

  return 0;
}

uint64_t quasar::LmEvaluator::optimizePerplexity(uint64_t a1, float **a2, int a3, std::vector<unsigned int> *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a4->__end_ != a4->__begin_)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    __src = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__src, "bestWeights should be empty");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__src);
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v19 = *(a1 + 72);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = vdupq_n_s64(0x444B1AE4D6E2EF50uLL);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0;
      memset(__p, 0, sizeof(__p));
      v16 = 0;
      *&__src = &v16;
      v17 = std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(a2, &v16)[5];
      std::vector<TVertex *>::push_back[abi:ne200100](__p, &v17);
      v16 = 1065353216;
      *&__src = &v16;
      v17 = std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(a2, &v16)[5];
      std::vector<TVertex *>::push_back[abi:ne200100](__p, &v17);
      if (quasar::CorpusStats::interpolateCorpusStatsWithBestWeights(__p, a4, &v19))
      {
        if ((a4->__end_ - a4->__begin_) == 8)
        {
          v6 = *a4->__begin_ + *(a4->__begin_ + 1);
          if (v6 == 1.0 || COERCE_INT(fabs(v6 + -1.0)) <= 2139095039 && fabsf(v6 + -1.0) <= ((fabsf(v6) + 1.0) * 0.001))
          {
            operator new();
          }
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        __src = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "best weights have wrong size or don't sum up to one", 51);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__src);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      __src = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "best weight estimation for perplexity interpolation failed", 58);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__src);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    __src = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__src, "invalid optimization method");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__src);
  }

  v7 = *a2;
  if (*a2 == (a2 + 1))
  {
    v9 = 1.0e21;
    v8 = INFINITY;
  }

  else
  {
    v8 = INFINITY;
    v9 = 1.0e21;
    do
    {
      if (*(*(v7 + 5) + 56) < v9)
      {
        v8 = v7[8];
        v9 = *(*(v7 + 5) + 56);
      }

      v10 = *(v7 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v7 + 2);
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != a2 + 1);
  }

  *&__src = 1.0 - v8;
  *(&__src + 1) = v8;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(a4, &__src, &__src + 8, 2uLL);
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF || v8 < 0.0 || v8 > 1.0)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    __src = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__src, "model selection returned an invalid weight");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__src);
  }

  if (quasar::gLogLevel >= 4)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    __src = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__src, "best weight: ", 13);
    v13 = std::ostream::operator<<();
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " PPL: ", 6);
    MEMORY[0x1B8C84BE0](v14, v9);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&__src);
  }

  return 1;
}

void sub_1B58944A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  quasar::CorpusStats::~CorpusStats(&a14);
  _Unwind_Resume(a1);
}

void sub_1B58944C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void quasar::LmEvaluator::~LmEvaluator(quasar::LmEvaluator *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::CorpusStats::~CorpusStats(quasar::CorpusStats *this)
{
  v3 = (this + 120);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = (this + 72);
  std::vector<quasar::LmInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<quasar::LmInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::LmInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::LmInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      if (*(v3 - 41) < 0)
      {
        operator delete(*(v3 - 64));
      }

      v5 = (v3 - 96);
      std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
      v3 -= 104;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::EvaluationTask>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float std::__split_buffer<float>::emplace_back<float>(void *a1, float *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 4;
  return result;
}

void std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::destroy(a1, a2[1]);
    std::unique_ptr<quasar::CorpusStats>::~unique_ptr[abi:ne200100](a2 + 5);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::__emplace_unique_key_args<float,std::pair<float const,std::unique_ptr<quasar::CorpusStats>>>(uint64_t a1, float *a2)
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
      v5 = *(v2 + 8);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<quasar::CorpusStats>::~unique_ptr[abi:ne200100](v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::__map_value_compare<float,std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>,std::less<float>,true>,std::allocator<std::__value_type<float,std::unique_ptr<quasar::CorpusStats>>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float const&>,std::tuple<>>(uint64_t a1, float *a2)
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
      v5 = *(v2 + 8);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::vector<std::shared_ptr<kaldi::quasar::LmHandle>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::LmHandle> const*,std::shared_ptr<kaldi::quasar::LmHandle> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5894AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

quasar::CorpusStats *quasar::CorpusStats::CorpusStats(quasar::CorpusStats *this, const quasar::CorpusStats *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 2) = v5;
  *(this + 3) = v6;
  *(this + 1) = v4;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<quasar::LmInfo>::__init_with_size[abi:ne200100]<quasar::LmInfo*,quasar::LmInfo*>(this + 72, *(a2 + 9), *(a2 + 10), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 2);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<std::vector<unsigned long long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long long>*,std::vector<unsigned long long>*>(this + 120, *(a2 + 15), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 15)) >> 3));
  return this;
}

void sub_1B5894BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 104) = v5;
    operator delete(v5);
  }

  std::vector<quasar::LmInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::LmInfo>::__init_with_size[abi:ne200100]<quasar::LmInfo*,quasar::LmInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::LmInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5894C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::LmInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::LmInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmInfo>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::LmInfo>,quasar::LmInfo*,quasar::LmInfo*,quasar::LmInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 40);
    do
    {
      v7 = v6 - 40;
      *v4 = *(v6 - 10);
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      std::vector<quasar::TokenLmInfo>::__init_with_size[abi:ne200100]<quasar::TokenLmInfo*,quasar::TokenLmInfo*>(v4 + 8, *(v6 - 4), *(v6 - 3), 0x2E8BA2E8BA2E8BA3 * ((*(v6 - 3) - *(v6 - 4)) >> 3));
      v8 = *(v6 - 2);
      *(v4 + 36) = *(v6 - 4);
      *(v4 + 32) = v8;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 40), *v6, *(v6 + 1));
      }

      else
      {
        v9 = *v6;
        *(v4 + 56) = *(v6 + 2);
        *(v4 + 40) = v9;
      }

      v10 = *(v6 + 3);
      v11 = *(v6 + 32);
      *(v4 + 80) = 0;
      *(v4 + 72) = v11;
      *(v4 + 64) = v10;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4 + 80, *(v6 + 5), *(v6 + 6), (*(v6 + 6) - *(v6 + 5)) >> 2);
      v4 = v16 + 104;
      v16 += 104;
      v6 = (v6 + 104);
    }

    while (v7 + 104 != a3);
  }

  v14 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmInfo>,quasar::LmInfo*>>::~__exception_guard_exceptions[abi:ne200100](v13);
  return v4;
}

void sub_1B5894E24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::vector<quasar::TokenLmInfo>::__destroy_vector::operator()[abi:ne200100](va1);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmInfo>,quasar::LmInfo*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<unsigned long long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long long>*,std::vector<unsigned long long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5894ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned long long>>,std::vector<unsigned long long>*,std::vector<unsigned long long>*,std::vector<unsigned long long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long long>>,std::vector<unsigned long long>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5895000(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long long>>,std::vector<unsigned long long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t tknLogString(const char *a1)
{
  fputs(a1, *MEMORY[0x1E69E9848]);
  v1 = *MEMORY[0x1E69E9858];

  return fflush(v1);
}

uint64_t quasar::E2EAsrConfidence::finishInit(uint64_t this)
{
  if ((*(this + 479) & 0x8000000000000000) != 0)
  {
    if (*(this + 464))
    {
LABEL_3:
      *(this + 512) = 1;
      v1 = *(this + 504);
      if ((v1 & 0x80000000) == 0)
      {
        if ((*(this + 508) & 0x80000000) != 0)
        {
          *(this + 508) = v1;
        }

        operator new();
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      v4 = 0u;
      v5 = 0u;
      v2 = 0u;
      v3 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "num-input-hyps must be provided for using model-based confidence");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v2);
    }
  }

  else if (*(this + 479))
  {
    goto LABEL_3;
  }

  if (*(this + 513) == 1)
  {
    v2 = 0uLL;
    *&v3 = 0;
    operator new();
  }

  return this;
}

uint64_t quasar::E2EAsrConfidence::runImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v4 = *(*a3 + 368);
  if (v4)
  {
    v5 = a3;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3);
    if (v7 == 1)
    {
      if (*(*v4 + 8) == **v4)
      {
        if (quasar::gLogLevel < 5)
        {
          return 0;
        }

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        __p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Only one result in resultChoices and its empty. Skipping confidence estimation", 78);
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_4;
    }

    if ((*(a1 + 504) & 0x80000000) != 0)
    {
      *(a1 + 504) = v7;
      if (*(a1 + 513) == 1)
      {
        **(a1 + 528) = v7;
      }
    }

    v8 = *(a1 + 508);
    v9 = *(*a4 + 16);
    if (v8 < 0 || v8 > v9)
    {
      if (v9 >= *(a1 + 504))
      {
        v9 = *(a1 + 504);
      }

      *(a1 + 508) = v9;
      if (*(a1 + 513) == 1)
      {
        *(*(a1 + 528) + 4) = v9;
      }
    }

    std::vector<std::vector<std::string>>::vector[abi:ne200100](v86, *(a1 + 504));
    v77 = a1;
    v10 = *v4;
    v11 = v4[1];
    v12 = -1431655765 * ((v11 - *v4) >> 3);
    v13 = *(a1 + 504);
    if (v13 < v12)
    {
      v12 = *(a1 + 504);
    }

    if (v12 >= 1)
    {
      for (i = 0; i < v19; ++i)
      {
        v15 = *(v10 + 24 * i);
        if (*(v10 + 24 * i + 8) != v15)
        {
          v16 = 0;
          do
          {
            v17 = v15 + 224 * v16;
            v18 = *(v17 + 120);
            if (*(v17 + 128) == v18)
            {
              std::vector<std::string>::push_back[abi:ne200100](v86[0] + 24 * i, v17);
              v10 = *v4;
              v15 = *(*v4 + 24 * i);
            }

            else
            {
              do
              {
                std::vector<std::string>::push_back[abi:ne200100](v86[0] + 24 * i, v18);
                v18 += 2;
                v10 = *v4;
                v15 = *(*v4 + 24 * i);
              }

              while (v18 != *(v15 + 224 * v16 + 128));
            }

            ++v16;
          }

          while (0x6DB6DB6DB6DB6DB7 * ((*(v10 + 24 * i + 8) - v15) >> 5) > v16);
          v11 = v4[1];
          v13 = *(a1 + 504);
        }

        v19 = -1431655765 * ((v11 - v10) >> 3);
        if (v13 < v19)
        {
          v19 = v13;
        }
      }
    }

    memset(v85, 0, sizeof(v85));
    v20 = a1;
    if ((*(a1 + 512) & 1) != 0 || *(a1 + 513) == 1)
    {
      v21 = **(*v5 + 408);
      v22 = *(a1 + 528);
      __p = 0uLL;
      *&v88 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&__p, v21, v21 + 8 * v13, v13);
      kaldi::quasar::ConfidenceFeatureExtractor<std::string>::GetConfidenceFeaturesFromNBest(v22, v86, &__p, *(*v5 + 592), v85);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (!*(*v5 + 240))
      {
        operator new();
      }

      operator new();
    }

    if (*(a1 + 512) != 1)
    {
      std::vector<float>::vector[abi:ne200100](v84, (*(*(*v5 + 408) + 8) - **(*v5 + 408)) >> 3);
      v23 = *(*v5 + 408);
      v24 = *v23;
      v25 = v23[1];
      if (v24 != v25)
      {
        v26 = v84[0];
        do
        {
          v27 = *v24++;
          v28 = v27;
          *v26++ = -v28;
        }

        while (v24 != v25);
      }

      kaldi::quasar::ApplySoftMax(v84);
      v105[0] = &unk_1F2D08478;
      v105[3] = v105;
      v104[0] = &unk_1F2D08508;
      v104[3] = v104;
      kaldi::quasar::ConfusionNetwork<std::string>::ConfusionNetwork(&v106, v86, v84, v105, v104);
      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v104);
      std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::~__value_func[abi:ne200100](v105);
      std::vector<std::vector<float>>::resize(*(*v5 + 272), *(a1 + 508));
      v81 = 0;
      v82 = 0;
      v83 = 0;
      std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__init_with_size[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>*,kaldi::quasar::ConfusionNetworkSlot<std::string>*>(&v81, v112, v113, 0x2E8BA2E8BA2E8BA3 * ((v113 - v112) >> 4));
      v29 = *(a1 + 504);
      *&__p = 0;
      std::vector<unsigned long>::vector[abi:ne200100](v80, v29);
      v30 = *(a1 + 504);
      __p = 0uLL;
      *&v88 = 0;
      std::vector<std::vector<unsigned long>>::vector[abi:ne200100](v79, v30);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      v32 = v81;
      v31 = v82;
      if (v82 != v81)
      {
        v33 = 0;
        LODWORD(v34) = *(a1 + 508);
        v76 = v5;
        do
        {
          if (v34 >= 1)
          {
            v35 = 0;
            v36 = 0;
            do
            {
              if (kaldi::quasar::ConfusionNetworkSlot<std::string>::HasTokenFromSequence(v81 + 176 * v33, v36))
              {
                memset(&v78, 0, sizeof(v78));
                v37 = *(v80[0] + v36);
                v38 = *(*v4 + v35);
                v39 = (v38 + 224 * v37);
                if (v39[5].__r_.__value_.__l.__size_ != v39[5].__r_.__value_.__r.__words[0])
                {
                  v40 = *(v79[0] + v35);
                  if (*(v79[0] + v35 + 8) == v40)
                  {
                    v41 = 0x6DB6DB6DB6DB6DB7 * ((*(*v4 + v35 + 8) - v38) >> 5);
                    *&__p = 0;
                    std::vector<unsigned long>::resize((v79[0] + v35), v41, &__p);
                    v37 = *(v80[0] + v36);
                    v40 = *(v79[0] + v35);
                    v38 = *(*v4 + v35);
                  }

                  v42 = *(v40 + 8 * v37);
                  v44 = (v38 + 224 * v37 + 120);
                  v43 = *v44;
                  if (v42 >= (v44[1] - *v44) >> 5)
                  {
                    v102 = 0u;
                    v103 = 0u;
                    v100 = 0u;
                    v101 = 0u;
                    v98 = 0u;
                    v99 = 0u;
                    v96 = 0u;
                    v97 = 0u;
                    v94 = 0u;
                    v95 = 0u;
                    v92 = 0u;
                    v93 = 0u;
                    v90 = 0u;
                    v91 = 0u;
                    v88 = 0u;
                    v89 = 0u;
                    __p = 0u;
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Subword token index exceeds the number of subwords in the token", 63);
                    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
                  }

                  v39 = (v43 + 32 * v42);
                }

                std::string::operator=(&v78, v39);
                if (!kaldi::quasar::ConfusionNetworkSlot<std::string>::HasToken(v81 + 176 * v33, &v78))
                {
                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  v90 = 0u;
                  v91 = 0u;
                  v88 = 0u;
                  v89 = 0u;
                  __p = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Hypothesis token (", 18);
                  v71 = *(*v4 + v35) + 224 * *(v80[0] + v36);
                  v72 = *(v71 + 23);
                  if (v72 >= 0)
                  {
                    v73 = *(*v4 + v35) + 224 * *(v80[0] + v36);
                  }

                  else
                  {
                    v73 = *v71;
                  }

                  if (v72 >= 0)
                  {
                    v74 = *(v71 + 23);
                  }

                  else
                  {
                    v74 = *(v71 + 8);
                  }

                  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v73, v74);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, ") does not match any arc in the confusion network slot", 54);
                  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
                }

                v45 = *(v80[0] + v36);
                v46 = v81 + 176 * v33;
                v47 = *(v86[0] + v35) + 24 * v45;
                if (*(*(*v4 + v35) + 224 * v45 + 128) == *(*(*v4 + v35) + 224 * v45 + 120))
                {
                  TokenWeight = kaldi::quasar::ConfusionNetworkSlot<std::string>::GetTokenWeight(v46, v47);
                  v49 = *(v80[0] + v36);
                  v50 = *(*v4 + v35);
                  *(v50 + 224 * v49 + 40) = roundf(*&TokenWeight * 1000.0);
                }

                else
                {
                  v48 = kaldi::quasar::ConfusionNetworkSlot<std::string>::GetTokenWeight(v46, v47);
                  v49 = *(v80[0] + v36);
                  v50 = *(*v4 + v35);
                  *(*(v50 + 224 * v49 + 120) + 32 * *(*(v79[0] + v35) + 8 * v49) + 24) = roundf(*&v48 * 1000.0);
                }

                v52 = **(*v5 + 272) + v35;
                v53 = (v50 + 224 * v49 + 40);
                v55 = *(v52 + 8);
                v54 = *(v52 + 16);
                if (v55 >= v54)
                {
                  v57 = *v52;
                  v58 = v55 - *v52;
                  v59 = (v58 >> 2) + 1;
                  if (v59 >> 62)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v60 = v54 - v57;
                  if (v60 >> 1 > v59)
                  {
                    v59 = v60 >> 1;
                  }

                  v61 = v60 >= 0x7FFFFFFFFFFFFFFCLL;
                  v62 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v61)
                  {
                    v62 = v59;
                  }

                  if (v62)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(**(*v5 + 272) + v35, v62);
                  }

                  v63 = (4 * (v58 >> 2));
                  *v63 = *v53;
                  v56 = v63 + 1;
                  memcpy(0, v57, v58);
                  v64 = *v52;
                  *v52 = 0;
                  *(v52 + 8) = v56;
                  *(v52 + 16) = 0;
                  if (v64)
                  {
                    operator delete(v64);
                  }

                  v5 = v76;
                }

                else
                {
                  *v55 = *v53;
                  v56 = v55 + 1;
                }

                v20 = v77;
                *(v52 + 8) = v56;
                v65 = *(v80[0] + v36);
                v66 = *(*(*v4 + v35) + 224 * v65 + 128) - *(*(*v4 + v35) + 224 * v65 + 120);
                if (v66 && (v67 = *(v79[0] + v35), v68 = *(v67 + 8 * v65) + 1, v68 != v66 >> 5))
                {
                  *(v67 + 8 * v65) = v68;
                }

                else
                {
                  *(v80[0] + v36) = v65 + 1;
                }

                if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v78.__r_.__value_.__l.__data_);
                }
              }

              ++v36;
              v34 = *(v20 + 508);
              v35 += 24;
            }

            while (v36 < v34);
            v32 = v81;
            v31 = v82;
          }

          ++v33;
        }

        while (0x2E8BA2E8BA2E8BA3 * ((v31 - v32) >> 4) > v33);
      }

      *&__p = v79;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v80[0])
      {
        v80[1] = v80[0];
        operator delete(v80[0]);
      }

      *&__p = &v81;
      std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
      *&__p = &v112;
      std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
      *&__p = &v111;
      std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v109)
      {
        v110 = v109;
        operator delete(v109);
      }

      std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](&v108);
      std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::~__value_func[abi:ne200100](&v107);
      if (v84[0])
      {
        v84[1] = v84[0];
        operator delete(v84[0]);
      }
    }

    *&__p = v85;
    std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
    *&__p = v86;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    return 0;
  }

LABEL_4:
  if (quasar::gLogLevel >= 5)
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "No result choices available. Skipping confidence estimation", 59);
LABEL_6:
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
  }

  return 0;
}

void sub_1B589642C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B58964CCLL);
}

void sub_1B5896448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char *a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  a36 = &a18;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a36);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  a36 = &a24;
  std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](&a36);
  kaldi::quasar::ConfusionNetwork<std::string>::~ConfusionNetwork(v36 - 248);
  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  a36 = &a30;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a36);
  a36 = &a33;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a36);
  _Unwind_Resume(a1);
}

void quasar::E2EAsrConfidence::registerParams(quasar::E2EAsrConfidence *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "e2e-asr-confidence");
  quasar::SystemConfig::enforceMinVersion(a2, 171, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "confidence-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Filename for confidence model file. Each line must have the format: intercept <value> OR, <FEATURE> <WEIGHT> [ <FEATURE-MEAN> [ <FEATURE-STD> ] ](feature mean and std values are both optional, could be provided for feature normalization)");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 456, v4, 0, 171, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-unigram-freqs");
  std::string::basic_string[abi:ne200100]<0>(v4, "Name of the file with token unigram frequencies");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 480, v4, 0, 171, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "num-input-hyps");
  std::string::basic_string[abi:ne200100]<0>(v4, "number of hypotheses to expect as input to the confidence feature extractor");
  quasar::SystemConfig::Register<int>(a2, __p, this + 504, v4, 0, 171, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "num-output-hyps");
  std::string::basic_string[abi:ne200100]<0>(v4, "number of hypotheses to produce confidence values for");
  quasar::SystemConfig::Register<int>(a2, __p, this + 508, v4, 0, 171, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "extract-features");
  std::string::basic_string[abi:ne200100]<0>(v4, "Extract confidence features (even if model is not provided)");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 513, v4, 0, 195, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5896750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::E2EAsrConfidence::~E2EAsrConfidence(quasar::E2EAsrConfidence *this)
{
  quasar::E2EAsrConfidence::~E2EAsrConfidence(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D36440;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 536);
  std::unique_ptr<kaldi::quasar::ConfidenceFeatureExtractor<std::string>>::reset[abi:ne200100](this + 66, 0);
  std::unique_ptr<kaldi::quasar::LogisticRegressionModel>::reset[abi:ne200100](this + 65, 0);
  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);
}