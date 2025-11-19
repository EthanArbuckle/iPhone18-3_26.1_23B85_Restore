void NLArabicWordLanguageModeler::~NLArabicWordLanguageModeler(NLArabicWordLanguageModeler *this)
{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

NL::SearchGrammar *NL::SearchGrammar::SearchGrammar(NL::SearchGrammar *this, const __CFURL *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(this, "None");
  v4[3] = 0;
  v4[4] = 0;
  v5 = (v4 + 3);
  v4[5] = 0;
  v7 = NL::SearchRules::createFromPath(a2, v6);
  std::unique_ptr<NL::SearchRules>::reset[abi:ne200100](v5, v7);
  return this;
}

void sub_22CDC7170(_Unwind_Exception *a1)
{
  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  NL::SearchGrammar::SearchGrammar(v2, v1);
  _Unwind_Resume(a1);
}

NL::SearchRules *std::unique_ptr<NL::SearchRules>::reset[abi:ne200100](NL::SearchRules **a1, NL::SearchRules *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::SearchRules::~SearchRules(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

void NL::SearchGrammar::~SearchGrammar(NL::SearchGrammar *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<NL::SearchRules>::reset[abi:ne200100](this + 3, 0);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

NL::SearchRules *NL::SearchGrammar::hasExpansions(NL::SearchGrammar *this, unsigned int a2)
{
  result = *(this + 3);
  if (result)
  {
    return NL::SearchRules::hasExpansions(result, a2);
  }

  return result;
}

void NL::SearchGrammar::expansions(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = ___ZNK2NL13SearchGrammar10expansionsEjU13block_pointerFvjRKNSt3__16vectorIjNS1_9allocatorIjEEEEPbE_block_invoke;
    v4[3] = &unk_27873FBC8;
    v4[4] = a3;
    v4[5] = v5;
    NL::SearchRules::expansions(v3, a2, v4);
  }

  _Block_object_dispose(v5, 8);
}

void sub_22CDC72F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK2NL13SearchGrammar10expansionsEjU13block_pointerFvjRKNSt3__16vectorIjNS1_9allocatorIjEEEEPbE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t NL::SearchGrammar::termIDs(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___ZNK2NL13SearchGrammar7termIDsEU13block_pointerFvjPbE_block_invoke;
    v3[3] = &unk_2787408B8;
    v3[4] = a2;
    return NL::SearchRules::termIDs(result, v3);
  }

  return result;
}

void NL::SearchGrammar::getValidTypeName(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "AmbiguousCalendarDate");
    v6 = endswith(a2, __p);
    v7 = v6;
    if (v17 < 0)
    {
      operator delete(__p[0]);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else if (v6)
    {
LABEL_4:
      v8 = "AmbiguousCalendarDate";
LABEL_29:
      std::string::basic_string[abi:ne200100]<0>(a3, v8);
      return;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Date");
    v9 = endswith(a2, __p);
    v10 = v9;
    if (v17 < 0)
    {
      operator delete(__p[0]);
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else if (v9)
    {
LABEL_11:
      v8 = "CalendarDate";
      goto LABEL_29;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "AmbiguousCalendarTime");
    if (endswith(a2, __p))
    {
      v11 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "RelativeNowTime");
      v11 = endswith(a2, v14);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
        goto LABEL_19;
      }
    }

    else if (v11)
    {
LABEL_19:
      v8 = "AmbiguousCalendarTime";
      goto LABEL_29;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "CalendarTime");
    if (endswith(a2, __p))
    {
      v12 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "FormattedTime");
      v12 = endswith(a2, v14);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12)
    {
      v8 = "CalendarTime";
      goto LABEL_29;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Status");
    v13 = endswith(a2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
      }

      else
      {
        *&a3->__r_.__value_.__l.__data_ = *a2;
        a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Status");
      std::string::basic_string[abi:ne200100]<0>(v14, "");
      replaceAll(a3, __p, v14);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      if (!NL::SearchRules::termID(*(a1 + 24), a2))
      {
        v8 = "";
        goto LABEL_29;
      }

      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
      }

      else
      {
        *&a3->__r_.__value_.__l.__data_ = *a2;
        a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
      }
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

void sub_22CDC76D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void NL::SearchGrammar::getValidRootName(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v4 = a2->__r_.__value_.__r.__words[0];
  size = a2->__r_.__value_.__l.__size_;
  if (v3 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = a2->__r_.__value_.__l.__size_;
  }

  if (v7 >= 4)
  {
    v8 = v6 + v7;
    v9 = v6;
    do
    {
      v10 = memchr(v9, 75, v7 - 3);
      if (!v10)
      {
        break;
      }

      if (*v10 == 1145981259)
      {
        if (v10 != v8 && v10 - v6 != -1)
        {
          MEMORY[0x2318C02F0](a2, "KIND");
          v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v4 = a2->__r_.__value_.__r.__words[0];
          size = a2->__r_.__value_.__l.__size_;
        }

        break;
      }

      v9 = (v10 + 1);
      v7 = v8 - v9;
    }

    while (v8 - v9 >= 4);
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = size;
  }

  if (v12 > 4)
  {
    v13 = v11 + v12;
    v14 = v11;
    do
    {
      v15 = memchr(v14, 81, v12 - 4);
      if (!v15)
      {
        break;
      }

      if (*v15 == 1414485329 && v15[4] == 69)
      {
        if (v15 != v13 && v15 - v11 != -1)
        {
          MEMORY[0x2318C02F0](a2, "QUOTED");
          v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v4 = a2->__r_.__value_.__r.__words[0];
          size = a2->__r_.__value_.__l.__size_;
        }

        break;
      }

      v14 = (v15 + 1);
      v12 = v13 - v14;
    }

    while (v13 - v14 >= 5);
  }

  if ((v3 & 0x80u) != 0)
  {
    v17 = size;
  }

  else
  {
    v4 = a2;
    v17 = v3;
  }

  if (v17 >= 12)
  {
    v18 = v4 + v17;
    v19 = v4;
    do
    {
      v20 = memchr(v19, 70, v17 - 11);
      if (!v20)
      {
        break;
      }

      if (*v20 == 0x41545441454C4946 && *(v20 + 2) == 1145391171)
      {
        if (v20 != v18 && v20 - v4 != -1)
        {
          MEMORY[0x2318C02F0](a2, "ATTACHMOD");
        }

        break;
      }

      v19 = (v20 + 1);
      v17 = v18 - v19;
    }

    while (v18 - v19 >= 12);
  }

  std::string::basic_string[abi:ne200100]<0>(v24, "1");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  replaceAll(a2, v24, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v24, "3");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  replaceAll(a2, v24, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_22CDC7A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void NL::SearchGrammar::getValidLeafName(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "Text");
  if (endswith(a2, v6))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Quote");
    v3 = !startswith(a2, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = 0;
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
    if (!v3)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v3)
  {
LABEL_12:
    MEMORY[0x2318C02F0](a2, "Text");
  }
}

void sub_22CDC7B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

BOOL NL::SearchGrammar::isTypeValidForTopic(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[23] < 0)
  {
    if (*(a2 + 1) == 3 && **a2 == 24916 && *(*a2 + 2) == 103)
    {
      return 0;
    }

    if (*(a2 + 1) != 4)
    {
      goto LABEL_18;
    }

    v3 = *a2;
  }

  else
  {
    if (a2[23] == 3)
    {
      if (*a2 == 24916 && a2[2] == 103)
      {
        return 0;
      }

      goto LABEL_18;
    }

    v3 = a2;
    if (a2[23] != 4)
    {
      goto LABEL_18;
    }
  }

  if (*v3 == 1734437958)
  {
    return 0;
  }

LABEL_18:
  std::string::basic_string[abi:ne200100]<0>(__p, "Has");
  v6 = startswith(a2, __p);
  v7 = v6;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "As");
  v8 = startswith(a2, __p);
  v9 = v8;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Contains");
  v11 = endswith(a2, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return !v11;
}

void sub_22CDC7D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL NL::SearchGrammar::isTypeSubsumed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  result = 1;
  if (v3 == v5)
  {
    v9 = v4 >= 0 ? a2 : *a2;
    v10 = v6 >= 0 ? a3 : *a3;
    if (!memcmp(v9, v10, v3) && NL::SearchGrammar::getSymbolID(a1, a2) == 21)
    {
      return 0;
    }
  }

  return result;
}

uint64_t NL::SearchGrammar::getSymbolID(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3 || !NL::SearchRules::termID(v3, a2))
  {
    return 0;
  }

  v5 = *(a1 + 24);

  return NL::SearchRules::termID(v5, a2);
}

BOOL NL::SearchGrammar::isTypeMultivalued(uint64_t a1, void *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 12 && **a2 == 0x7261646E656C6143 && *(*a2 + 8) == 1702125892)
    {
      return 1;
    }

    if (a2[1] == 12 && **a2 == 0x7261646E656C6143 && *(*a2 + 8) == 1701669204)
    {
      return 1;
    }

    if (a2[1] == 21)
    {
      v7 = **a2 == 0x756F756769626D41 && *(*a2 + 8) == 0x61646E656C614373;
      if (v7 && *(*a2 + 13) == 0x656D69547261646ELL)
      {
        return 1;
      }
    }

    if (a2[1] == 21)
    {
      a2 = *a2;
      return *a2 == 0x756F756769626D41 && a2[1] == 0x61646E656C614373 && *(a2 + 13) == 0x657461447261646ELL;
    }

    return 0;
  }

  v2 = *(a2 + 23);
  if (v2 != 12)
  {
    if (v2 == 21)
    {
      if (*a2 != 0x756F756769626D41 || a2[1] != 0x61646E656C614373 || *(a2 + 13) != 0x656D69547261646ELL)
      {
        return *a2 == 0x756F756769626D41 && a2[1] == 0x61646E656C614373 && *(a2 + 13) == 0x657461447261646ELL;
      }

      return 1;
    }

    return 0;
  }

  if (*a2 == 0x7261646E656C6143 && *(a2 + 2) == 1702125892)
  {
    return 1;
  }

  return *a2 == 0x7261646E656C6143 && *(a2 + 2) == 1701669204;
}

BOOL NL::SearchGrammar::isInferred(NL::SearchGrammar *this, int a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

BOOL NL::SearchGrammar::isCombinable(NL::SearchGrammar *this, int a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

BOOL NL::SearchGrammar::isEquivalent(NL::SearchGrammar *this, unsigned int a2, unsigned int a3)
{
  result = 1;
  if (a2 != a3)
  {
    v3 = *(this + 3);
    if (!v3 || !NL::SearchRules::isEquivalent(v3, a2, a3))
    {
      return 0;
    }
  }

  return result;
}

BOOL NL::SearchGrammar::isFunction(NL::SearchGrammar *this, int a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

BOOL NL::SearchGrammar::requiresComplement(NL::SearchGrammar *this, int a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

uint64_t NL::SearchGrammar::tokenOrderReversed(NL::SearchGrammar *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    LOBYTE(v1) = *v1;
  }

  return v1 & 1;
}

uint64_t NL::SearchGrammar::tokenDelayed(NL::SearchGrammar *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 1);
  }

  return v1 & 1;
}

uint64_t NL::SearchGrammar::updateParseContext(NL::SearchGrammar *this, unsigned int a2, signed int a3, __int16 a4)
{
  switch(a2)
  {
    case 0x16u:
    case 0x19u:
      NL::ParserContext::setActionSentTo(*(this + 4));
      break;
    case 0x17u:
    case 0x1Au:
      NL::ParserContext::setActionSentFrom(*(this + 4));
      break;
    case 0x18u:
      NL::ParserContext::setActionFromTo(*(this + 4));
      break;
    case 0x1Bu:
      NL::ParserContext::setActionWith(*(this + 4));
      break;
    case 0x1Du:
      NL::ParserContext::setActionAuthored(*(this + 4));
      break;
    case 0x21u:
      NL::ParserContext::setAttributeBeforeDate(*(this + 4));
      break;
    case 0x22u:
      NL::ParserContext::setAttributeAfterDate(*(this + 4));
      break;
    case 0x2Fu:
      NL::ParserContext::setActionSent(*(this + 4));
      break;
    case 0x30u:
      NL::ParserContext::setActionReceived(*(this + 4));
      break;
    case 0x37u:
      NL::ParserContext::setActionCreated(*(this + 4));
      break;
    case 0x38u:
      NL::ParserContext::setActionModified(*(this + 4));
      break;
    case 0x39u:
      NL::ParserContext::setActionDownloaded(*(this + 4));
      break;
    case 0x3Au:
      NL::ParserContext::setActionPrinted(*(this + 4));
      break;
    case 0x3Bu:
      NL::ParserContext::setActionViewed(*(this + 4));
      break;
    case 0x3Cu:
      NL::ParserContext::setActionAdded(*(this + 4));
      break;
    case 0x3Du:
      NL::ParserContext::setActionAirdropped(*(this + 4));
      break;
    case 0x3Eu:
      NL::ParserContext::setActionMessaged(*(this + 4));
      break;
    case 0x3Fu:
      NL::ParserContext::setActionMailed(*(this + 4));
      break;
    default:
      break;
  }

  v8 = *(this + 3);
  v9 = this;
  if (v8)
  {
    v9 = NL::SearchRules::term(v8, a2);
  }

  v10 = v9[23];
  if (v10 < 0)
  {
    v11 = v9;
    v9 = *v9;
    v10 = *(v11 + 1);
  }

  if (v10 >= 4)
  {
    v12 = &v9[v10];
    v13 = v9;
    do
    {
      v14 = memchr(v13, 75, v10 - 3);
      if (!v14)
      {
        break;
      }

      if (*v14 == 1145981259)
      {
        if (v14 != v12 && v14 - v9 != -1)
        {
          NL::ParserContext::setAttributeKind(*(this + 4));
        }

        break;
      }

      v13 = v14 + 1;
      v10 = v12 - v13;
    }

    while (v12 - v13 >= 4);
  }

  v15 = *(this + 3);
  v16 = this;
  if (v15)
  {
    v16 = NL::SearchRules::term(v15, a3);
  }

  v17 = v16[23];
  if (v17 < 0)
  {
    v18 = v16;
    v16 = *v16;
    v17 = *(v18 + 1);
  }

  if (v17 >= 4)
  {
    v19 = &v16[v17];
    v20 = v16;
    do
    {
      v21 = memchr(v20, 68, v17 - 3);
      if (!v21)
      {
        break;
      }

      if (*v21 == 1702125892)
      {
        if (v21 != v19 && v21 - v16 != -1)
        {
          NL::ParserContext::setAttributeDate(*(this + 4));
        }

        break;
      }

      v20 = v21 + 1;
      v17 = v19 - v20;
    }

    while (v19 - v20 >= 4);
  }

  v22 = *(this + 3);
  v23 = this;
  if (v22)
  {
    v23 = NL::SearchRules::term(v22, a3);
  }

  v24 = v23[23];
  if (v24 < 0)
  {
    v25 = v23;
    v23 = *v23;
    v24 = *(v25 + 1);
  }

  if (v24 >= 4)
  {
    v26 = &v23[v24];
    v27 = v23;
    do
    {
      v28 = memchr(v27, 85, v24 - 3);
      if (!v28)
      {
        break;
      }

      if (*v28 == 1919251285)
      {
        if (v28 != v26 && v28 - v23 != -1)
        {
          v29 = *(this + 3);
          v30 = this;
          if (v29)
          {
            v30 = NL::SearchRules::term(v29, a3);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "Received");
          v31 = endswith(v30, __p);
          if (v172 < 0)
          {
            operator delete(__p[0]);
          }

          if (!v31)
          {
            NL::ParserContext::setActionUserAction(*(this + 4));
          }
        }

        break;
      }

      v27 = v28 + 1;
      v24 = v26 - v27;
    }

    while (v26 - v27 >= 4);
  }

  v32 = *(this + 3);
  v33 = this;
  if (v32)
  {
    v33 = NL::SearchRules::term(v32, a3);
  }

  v34 = v33[23];
  if (v34 < 0)
  {
    v35 = v33;
    v33 = *v33;
    v34 = *(v35 + 1);
  }

  if (v34 >= 8)
  {
    v36 = &v33[v34];
    v37 = v33;
    do
    {
      v38 = memchr(v37, 85, v34 - 7);
      if (!v38)
      {
        break;
      }

      if (*v38 == 0x746E655372657355)
      {
        if (v38 != v36 && v38 - v33 != -1)
        {
          NL::ParserContext::setActionUserSent(*(this + 4));
        }

        break;
      }

      v37 = v38 + 1;
      v34 = v36 - v37;
    }

    while (v36 - v37 >= 8);
  }

  v39 = *(this + 3);
  v40 = this;
  if (v39)
  {
    v40 = NL::SearchRules::term(v39, a3);
  }

  v41 = v40[23];
  if (v41 < 0)
  {
    v42 = v40;
    v40 = *v40;
    v41 = *(v42 + 1);
  }

  if (v41 >= 12)
  {
    v43 = &v40[v41];
    v44 = v40;
    do
    {
      v45 = memchr(v44, 85, v41 - 11);
      if (!v45)
      {
        break;
      }

      if (*v45 == 0x6563655272657355 && *(v45 + 2) == 1684371049)
      {
        if (v45 != v43 && v45 - v40 != -1)
        {
          NL::ParserContext::setActionUserReceived(*(this + 4));
        }

        break;
      }

      v44 = v45 + 1;
      v41 = v43 - v44;
    }

    while (v43 - v44 >= 12);
  }

  v47 = *(this + 3);
  v48 = this;
  if (v47)
  {
    v48 = NL::SearchRules::term(v47, a3);
  }

  v49 = v48[23];
  if (v49 < 0)
  {
    v50 = v48;
    v48 = *v48;
    v49 = *(v50 + 1);
  }

  if (v49 >= 10)
  {
    v51 = &v48[v49];
    v52 = v48;
    do
    {
      v53 = memchr(v52, 85, v49 - 9);
      if (!v53)
      {
        break;
      }

      if (*v53 == 0x7261685372657355 && *(v53 + 4) == 25701)
      {
        if (v53 != v51 && v53 - v48 != -1)
        {
          NL::ParserContext::setActionUserAction(*(this + 4));
          NL::ParserContext::setActionShared(*(this + 4));
        }

        break;
      }

      v52 = v53 + 1;
      v49 = v51 - v52;
    }

    while (v51 - v52 >= 10);
  }

  v55 = this;
  if (*(this + 3))
  {
    v55 = NL::SearchRules::term(*(this + 3), a2);
  }

  v56 = v55[23];
  if (v56 < 0)
  {
    if (*(v55 + 1) != 11)
    {
      goto LABEL_122;
    }

    v55 = *v55;
  }

  else if (v56 != 11)
  {
    goto LABEL_122;
  }

  if (*v55 == 0x4145524352455355 && *(v55 + 3) == 0x4445544145524352)
  {
    NL::ParserContext::setActionUserAction(*(this + 4));
    NL::ParserContext::setActionCreated(*(this + 4));
  }

LABEL_122:
  v58 = this;
  if (*(this + 3))
  {
    v58 = NL::SearchRules::term(*(this + 3), a2);
  }

  v59 = v58[23];
  if (v59 < 0)
  {
    if (*(v58 + 1) != 12)
    {
      goto LABEL_135;
    }

    v58 = *v58;
  }

  else if (v59 != 12)
  {
    goto LABEL_135;
  }

  if (*v58 == 0x49444F4D52455355 && *(v58 + 2) == 1145391430)
  {
    NL::ParserContext::setActionUserAction(*(this + 4));
    NL::ParserContext::setActionModified(*(this + 4));
  }

LABEL_135:
  v61 = this;
  if (*(this + 3))
  {
    v61 = NL::SearchRules::term(*(this + 3), a2);
  }

  v62 = v61[23];
  if (v62 < 0)
  {
    if (*(v61 + 1) != 11)
    {
      goto LABEL_148;
    }

    v61 = *v61;
  }

  else if (v62 != 11)
  {
    goto LABEL_148;
  }

  if (*v61 == 0x4E49525052455355 && *(v61 + 3) == 0x4445544E49525052)
  {
    NL::ParserContext::setActionUserAction(*(this + 4));
    NL::ParserContext::setActionPrinted(*(this + 4));
  }

LABEL_148:
  v64 = *(this + 3);
  v65 = this;
  if (v64)
  {
    v65 = NL::SearchRules::term(v64, a2);
  }

  v66 = v65[23];
  if (v66 < 0)
  {
    v67 = v65;
    v65 = *v65;
    v66 = *(v67 + 1);
  }

  if (v66 >= 10)
  {
    v68 = &v65[v66];
    v69 = v65;
    do
    {
      v70 = memchr(v69, 85, v66 - 9);
      if (!v70)
      {
        break;
      }

      if (*v70 == 0x54534F5052455355 && *(v70 + 4) == 17477)
      {
        if (v70 != v68 && v70 - v65 != -1)
        {
          NL::ParserContext::setActionUserAction(*(this + 4));
          NL::ParserContext::setTransportSharesheet(*(this + 4));
          NL::ParserContext::setActionPosted(*(this + 4));
        }

        break;
      }

      v69 = v70 + 1;
      v66 = v68 - v69;
    }

    while (v68 - v69 >= 10);
  }

  v72 = *(this + 3);
  v73 = this;
  if (v72)
  {
    v73 = NL::SearchRules::term(v72, a2);
  }

  v74 = v73[23];
  if (v74 < 0)
  {
    v75 = v73;
    v73 = *v73;
    v74 = *(v75 + 1);
  }

  if (v74 >= 12)
  {
    v76 = &v73[v74];
    v77 = v73;
    do
    {
      v78 = memchr(v77, 85, v74 - 11);
      if (!v78)
      {
        break;
      }

      if (*v78 == 0x4543455252455355 && *(v78 + 2) == 1145394761)
      {
        if (v78 != v76 && v78 - v73 != -1)
        {
          NL::ParserContext::setActionReceived(*(this + 4));
          NL::ParserContext::setActionUserReceived(*(this + 4));
        }

        break;
      }

      v77 = v78 + 1;
      v74 = v76 - v77;
    }

    while (v76 - v77 >= 12);
  }

  v80 = *(this + 3);
  v81 = this;
  if (v80)
  {
    v81 = NL::SearchRules::term(v80, a2);
  }

  v82 = v81[23];
  if (v82 < 0)
  {
    v83 = v81;
    v81 = *v81;
    v82 = *(v83 + 1);
  }

  if (v82 >= 8)
  {
    v84 = &v81[v82];
    v85 = v81;
    do
    {
      v86 = memchr(v85, 85, v82 - 7);
      if (!v86)
      {
        break;
      }

      if (*v86 == 0x544E455352455355)
      {
        if (v86 != v84 && v86 - v81 != -1)
        {
          NL::ParserContext::setActionUserAction(*(this + 4));
          NL::ParserContext::setActionSent(*(this + 4));
          NL::ParserContext::setActionUserSent(*(this + 4));
        }

        break;
      }

      v85 = v86 + 1;
      v82 = v84 - v85;
    }

    while (v84 - v85 >= 8);
  }

  v87 = this;
  if (*(this + 3))
  {
    v87 = NL::SearchRules::term(*(this + 3), a2);
  }

  v88 = v87[23];
  if (v88 < 0)
  {
    if (*(v87 + 1) != 10)
    {
      goto LABEL_206;
    }

    v87 = *v87;
  }

  else if (v88 != 10)
  {
    goto LABEL_206;
  }

  if (*v87 == 0x4957444552414853 && *(v87 + 4) == 18516)
  {
    NL::ParserContext::setActionShared(*(this + 4));
  }

LABEL_206:
  if ((a3 - 17) <= 1)
  {
    NL::ParserContext::setParticipant(*(this + 4), a4);
  }

  v90 = *(this + 3);
  v91 = this;
  if (v90)
  {
    v91 = NL::SearchRules::term(v90, a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "POSTED");
  v92 = startswith(v91, __p);
  v93 = v92;
  if ((v172 & 0x80000000) == 0)
  {
    if (!v92)
    {
      goto LABEL_213;
    }

    goto LABEL_212;
  }

  operator delete(__p[0]);
  if (v93)
  {
LABEL_212:
    NL::ParserContext::setActionPosted(*(this + 4));
  }

LABEL_213:
  v94 = *(this + 3);
  v95 = this;
  if (v94)
  {
    v95 = NL::SearchRules::term(v94, a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SHARED");
  v96 = startswith(v95, __p);
  v97 = v96;
  if ((v172 & 0x80000000) == 0)
  {
    if (!v96)
    {
      goto LABEL_218;
    }

    goto LABEL_217;
  }

  operator delete(__p[0]);
  if (v97)
  {
LABEL_217:
    NL::ParserContext::setActionShared(*(this + 4));
  }

LABEL_218:
  v98 = *(this + 3);
  v99 = this;
  if (v98)
  {
    v99 = NL::SearchRules::term(v98, a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AIRDROPPED");
  if (startswith(v99, __p))
  {
    v100 = *(this + 3);
    v101 = this;
    if (v100)
    {
      v101 = NL::SearchRules::term(v100, a3);
    }

    v102 = v101[23];
    if (v102 < 0)
    {
      v103 = v101;
      v101 = *v101;
      v102 = *(v103 + 1);
    }

    v104 = &v101[v102];
    if (v102 >= 7)
    {
      v105 = v101;
      do
      {
        v106 = memchr(v105, 65, v102 - 6);
        if (!v106)
        {
          break;
        }

        if (*v106 == 1685219649 && *(v106 + 3) == 1886351972)
        {
          goto LABEL_234;
        }

        v105 = v106 + 1;
        v102 = v104 - v105;
      }

      while (v104 - v105 > 6);
    }

    v106 = v104;
LABEL_234:
    v109 = v106 == v104 || v106 - v101 == -1;
    if (v172 < 0)
    {
      operator delete(__p[0]);
      if (v109)
      {
        goto LABEL_251;
      }
    }

    else if (v109)
    {
      goto LABEL_251;
    }

    NL::ParserContext::setTransportAirdrop(*(this + 4));
    goto LABEL_251;
  }

  if (v172 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_251:
  v110 = *(this + 3);
  v111 = this;
  if (v110)
  {
    v111 = NL::SearchRules::term(v110, a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGED");
  if (startswith(v111, __p))
  {
    v112 = *(this + 3);
    v113 = this;
    if (v112)
    {
      v113 = NL::SearchRules::term(v112, a3);
    }

    v114 = v113[23];
    if (v114 < 0)
    {
      v115 = v113;
      v113 = *v113;
      v114 = *(v115 + 1);
    }

    v116 = &v113[v114];
    if (v114 >= 7)
    {
      v117 = v113;
      do
      {
        v118 = memchr(v117, 77, v114 - 6);
        if (!v118)
        {
          break;
        }

        if (*v118 == 1936942413 && *(v118 + 3) == 1701273971)
        {
          goto LABEL_267;
        }

        v117 = v118 + 1;
        v114 = v116 - v117;
      }

      while (v116 - v117 > 6);
    }

    v118 = v116;
LABEL_267:
    v121 = v118 == v116 || v118 - v113 == -1;
    if ((v172 & 0x80000000) == 0)
    {
      if (v121)
      {
        goto LABEL_280;
      }

      goto LABEL_279;
    }

    operator delete(__p[0]);
    if (!v121)
    {
LABEL_279:
      NL::ParserContext::setTransportMessages(*(this + 4));
    }
  }

  else if (v172 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_280:
  if (a2 == 63)
  {
    v122 = *(this + 3);
    v123 = this;
    if (v122)
    {
      v123 = NL::SearchRules::term(v122, a3);
    }

    v124 = v123[23];
    if (v124 < 0)
    {
      v125 = v123;
      v123 = *v123;
      v124 = *(v125 + 1);
    }

    if (v124 >= 4)
    {
      v126 = &v123[v124];
      v127 = v123;
      do
      {
        v128 = memchr(v127, 77, v124 - 3);
        if (!v128)
        {
          break;
        }

        if (*v128 == 1818845517)
        {
          if (v128 != v126 && v128 - v123 != -1)
          {
            NL::ParserContext::setTransportMail(*(this + 4));
          }

          break;
        }

        v127 = v128 + 1;
        v124 = v126 - v127;
      }

      while (v126 - v127 >= 4);
    }
  }

  v129 = *(this + 3);
  v130 = this;
  if (v129)
  {
    v130 = NL::SearchRules::term(v129, a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER");
  v131 = endswith(v130, __p);
  v132 = v131;
  if ((v172 & 0x80000000) == 0)
  {
    if (!v131)
    {
      goto LABEL_299;
    }

    goto LABEL_298;
  }

  operator delete(__p[0]);
  if (v132)
  {
LABEL_298:
    NL::ParserContext::setActionMailed(*(this + 4));
    NL::ParserContext::setAttributeMail(*(this + 4));
    NL::ParserContext::setActionSentFrom(*(this + 4));
  }

LABEL_299:
  if (a3 <= 83)
  {
    if (a3 != 82)
    {
      if (a3 != 83)
      {
        goto LABEL_312;
      }

      NL::ParserContext::setAttributeMail(*(this + 4));
    }

LABEL_310:
    NL::ParserContext::setAttributeMessage(*(this + 4));
    goto LABEL_312;
  }

  switch(a3)
  {
    case 'T':
      NL::ParserContext::setAttributeChat(*(this + 4));
      goto LABEL_310;
    case 'U':
      NL::ParserContext::setAttributeWebsite(*(this + 4));
      break;
    case '[':
      result = NL::ParserContext::setAttributeApplication(*(this + 4));
      goto LABEL_391;
  }

LABEL_312:
  v134 = *(this + 3);
  v135 = this;
  if (v134)
  {
    v135 = NL::SearchRules::term(v134, a3);
  }

  v136 = v135[23];
  if (v136 < 0)
  {
    v137 = v135;
    v135 = *v135;
    v136 = *(v137 + 1);
  }

  if (v136 >= 5)
  {
    v138 = &v135[v136];
    v139 = v135;
    do
    {
      v140 = memchr(v139, 65, v136 - 4);
      if (!v140)
      {
        break;
      }

      if (*v140 == 1768191297 && v140[4] == 111)
      {
        if (v140 != v138 && v140 - v135 != -1)
        {
          result = NL::ParserContext::setAttributeAudio(*(this + 4));
          goto LABEL_391;
        }

        break;
      }

      v139 = v140 + 1;
      v136 = v138 - v139;
    }

    while (v138 - v139 >= 5);
  }

  v142 = *(this + 3);
  v143 = this;
  if (v142)
  {
    v143 = NL::SearchRules::term(v142, a3);
  }

  v144 = v143[23];
  if (v144 < 0)
  {
    v145 = v143;
    v143 = *v143;
    v144 = *(v145 + 1);
  }

  if (v144 >= 5)
  {
    v146 = &v143[v144];
    v147 = v143;
    do
    {
      v148 = memchr(v147, 73, v144 - 4);
      if (!v148)
      {
        break;
      }

      if (*v148 == 1734438217 && v148[4] == 101)
      {
        if (v148 != v146 && v148 - v143 != -1)
        {
          result = NL::ParserContext::setAttributeImage(*(this + 4));
          goto LABEL_391;
        }

        break;
      }

      v147 = v148 + 1;
      v144 = v146 - v147;
    }

    while (v146 - v147 >= 5);
  }

  v150 = *(this + 3);
  v151 = this;
  if (v150)
  {
    v151 = NL::SearchRules::term(v150, a3);
  }

  v152 = v151[23];
  if (v152 < 0)
  {
    v153 = v151;
    v151 = *v151;
    v152 = *(v153 + 1);
  }

  if (v152 >= 5)
  {
    v154 = &v151[v152];
    v155 = v151;
    do
    {
      v156 = memchr(v155, 86, v152 - 4);
      if (!v156)
      {
        break;
      }

      if (*v156 == 1701079382 && v156[4] == 111)
      {
        if (v156 != v154 && v156 - v151 != -1)
        {
          result = NL::ParserContext::setAttributeVideo(*(this + 4));
          goto LABEL_391;
        }

        break;
      }

      v155 = v156 + 1;
      v152 = v154 - v155;
    }

    while (v154 - v155 >= 5);
  }

  v158 = *(this + 3);
  v159 = this;
  if (v158)
  {
    v159 = NL::SearchRules::term(v158, a3);
  }

  v160 = v159[23];
  if (v160 < 0)
  {
    v161 = v159;
    v159 = *v159;
    v160 = *(v161 + 1);
  }

  if (v160 >= 12)
  {
    v162 = &v159[v160];
    v163 = v159;
    do
    {
      v164 = memchr(v163, 80, v160 - 11);
      if (!v164)
      {
        break;
      }

      if (*v164 == 0x61746E6573657250 && *(v164 + 2) == 1852795252)
      {
        if (v164 != v162 && v164 - v159 != -1)
        {
          result = NL::ParserContext::setAttributePresentation(*(this + 4));
          goto LABEL_391;
        }

        break;
      }

      v163 = v164 + 1;
      v160 = v162 - v163;
    }

    while (v162 - v163 >= 12);
  }

  v166 = this;
  if (*(this + 3))
  {
    v166 = NL::SearchRules::term(*(this + 3), a3);
  }

  if (std::string::find[abi:ne200100](v166, "Spreadsheet", 0) == -1)
  {
    v167 = this;
    if (*(this + 3))
    {
      v167 = NL::SearchRules::term(*(this + 3), a3);
    }

    if (std::string::find[abi:ne200100](v167, "Pdf", 0) == -1)
    {
      v168 = this;
      if (*(this + 3))
      {
        v168 = NL::SearchRules::term(*(this + 3), a3);
      }

      if (std::string::find[abi:ne200100](v168, "Document", 0) != -1)
      {
        goto LABEL_390;
      }

      v169 = this;
      if (*(this + 3))
      {
        v169 = NL::SearchRules::term(*(this + 3), a3);
      }

      if (std::string::find[abi:ne200100](v169, "File", 0) != -1)
      {
        goto LABEL_390;
      }

      v170 = this;
      if (*(this + 3))
      {
        v170 = NL::SearchRules::term(*(this + 3), a3);
      }

      result = std::string::find[abi:ne200100](v170, "TextFormat", 0);
      if ((a3 - 97) < 2 || result != -1)
      {
LABEL_390:
        result = NL::ParserContext::setAttributeDocument(*(this + 4));
      }
    }

    else
    {
      result = NL::ParserContext::setAttributePdf(*(this + 4));
    }
  }

  else
  {
    result = NL::ParserContext::setAttributeSpreadsheet(*(this + 4));
  }

LABEL_391:
  if (a2 - 69 <= 1)
  {
    return NL::ParserContext::setAttributeAttachment(*(this + 4));
  }

  return result;
}

void sub_22CDC9238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *NL::SearchGrammar::getSymbol(NL::SearchGrammar *this, unsigned int a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    return NL::SearchRules::term(v3, a2);
  }

  else
  {
    return this;
  }
}

NL::SearchRules *NL::SearchGrammar::getScore(NL::SearchGrammar *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  result = *(this + 3);
  if (result)
  {
    return NL::SearchRules::score(result, a2, a3, a4);
  }

  return result;
}

void NL::SearchRules::~SearchRules(NL::SearchRules *this)
{
  std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::destroy(this + 200, *(this + 26));
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = (this + 80);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::string>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(this + 8, *(this + 2));
}

void *NLEntityDetectorCreate(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
  *v2 = 0;
  v2[1] = 0;
  *(v2 + 4) = 0;
  if (a1 && (v3 = DDScannerCreateWithCacheFile(), (*v2 = v3) != 0))
  {
    DDScannerSetOptions();
    *(v2 + 4) = 1;
  }

  else
  {
    destroyNLEntityDetector(v2);
    return 0;
  }

  return v2;
}

void destroyNLEntityDetector(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

BOOL NLEntityDetectorLoadLanguageResources(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 8) = 0;
    }

    v5 = DDScannerCreateWithCacheFile();
    *(a1 + 8) = v5;
    v2 = v5 != 0;
    if (v5)
    {
      DDScannerSetOptions();
    }
  }

  return v2;
}

void NLEntityDetectorEnumerateEntities(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *a1 && a1[1])
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (v41[3])
    {
      if (getDataDetectorsQueue_onceToken != -1)
      {
        NLEntityDetectorEnumerateEntities_cold_1();
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __NLEntityDetectorEnumerateEntities_block_invoke;
      block[3] = &unk_27873FBF0;
      block[5] = a1;
      block[6] = a2;
      block[4] = &v40;
      dispatch_sync(getDataDetectorsQueue_dataDetectorsQueue, block);
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x2000000000;
      v38 = 0;
      v7 = v41[3];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 0x40000000;
      v33 = __NLEntityDetectorEnumerateEntities_block_invoke_2;
      v34 = &unk_2787408E0;
      v35 = a3;
      v36 = v37;
      if (v7)
      {
        Count = CFArrayGetCount(v7);
        MutableCopy = CFArrayCreateMutableCopy(v6, Count, v7);
        if (MutableCopy)
        {
          v10 = MutableCopy;
          v45.length = CFArrayGetCount(MutableCopy);
          v45.location = 0;
          CFArraySortValues(v10, v45, EntityCompare, 0);
          v11 = MEMORY[0x277CBF158];
          v30 = CFSetCreateMutable(v6, 0, MEMORY[0x277CBF158]);
          theSet = CFSetCreateMutable(v6, 0, v11);
          v44[0] = 0;
          v12 = CFArrayGetCount(v10);
          if (v12 >= 1)
          {
            v13 = v12;
            v14 = 0;
            v15 = 0;
            v16 = -1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v10, v15);
              Range = DDResultGetRange();
              v20 = Range;
              v21 = v19;
              if (v16 == -1 || ((v22 = v14 + v16, v23 = Range + v19, v16 >= Range) || v22 < v23) && (v16 < Range ? (v24 = Range < v22) : (v24 = 0), !v24 ? (v25 = 0) : (v25 = 1), v22 > v23 ? (v26 = v16 <= Range) : (v26 = 0), !v26 && (v25 & 1) == 0))
              {
                Type = DDResultGetType();
                SubResults = DDResultGetSubResults();
                if (v20 != v16 || v21 != v14)
                {
                  CFSetRemoveAllValues(theSet);
                  CFSetRemoveAllValues(v30);
LABEL_32:
                  MatchedString = DDResultGetMatchedString();
                  if (!CFStringHasSuffix(MatchedString, @" "))
                  {
                    v33(v32, ValueAtIndex, v44);
                    if (v44[0])
                    {
                      break;
                    }

                    CFSetAddValue(theSet, Type);
                    if (SubResults)
                    {
                      CFSetAddValue(v30, SubResults);
                    }

                    v14 = v21;
                    v16 = v20;
                  }

                  goto LABEL_37;
                }

                if (!CFSetContainsValue(theSet, Type) || !SubResults || !CFSetContainsValue(v30, SubResults))
                {
                  goto LABEL_32;
                }
              }

LABEL_37:
              ++v15;
            }

            while (v13 != v15);
          }

          CFRelease(v10);
          CFRelease(theSet);
          CFRelease(v30);
        }
      }

      CFRelease(v41[3]);
      _Block_object_dispose(v37, 8);
    }

    _Block_object_dispose(&v40, 8);
  }
}

void __NLEntityDetectorEnumerateEntities_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = **(a1 + 40);
  DDScannerScanString();
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 40) + 8);
  DDScannerScanString();
  v6 = *(*(a1 + 40) + 8);
  v7 = DDScannerCopyResultsWithOptions();
  if (v7)
  {
    v8 = v7;
    v9 = *(*(*(a1 + 32) + 8) + 24);
    v15.length = CFArrayGetCount(v7);
    v15.location = 0;
    CFArrayAppendArray(v9, v8, v15);
    CFRelease(v8);
  }

  v10 = **(a1 + 40);
  v11 = DDScannerCopyResultsWithOptions();
  if (v11)
  {
    v12 = v11;
    v13 = *(*(*(a1 + 32) + 8) + 24);
    v16.length = CFArrayGetCount(v11);
    v16.location = 0;
    CFArrayAppendArray(v13, v12, v16);

    CFRelease(v12);
  }
}

void __NLEntityDetectorEnumerateEntities_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  DDResultGetType();
  DDResultGetRange();
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  SubResults = DDResultGetSubResults();
  if (SubResults)
  {
    v5 = SubResults;
    Count = CFArrayGetCount(SubResults);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v25 = v5;
      theDict = Mutable;
      v24 = Count;
      do
      {
        CFArrayGetValueAtIndex(v5, v8);
        Type = DDResultGetType();
        Value = DDResultGetValue();
        CFDictionarySetValue(Mutable, Type, Value);
        if (CFStringHasPrefix(Type, @"NUMBERS"))
        {
          MatchedString = DDResultGetMatchedString();
          CFDictionarySetValue(Mutable, @"SPELLED", MatchedString);
        }

        v12 = DDResultGetSubResults();
        if (v12)
        {
          v13 = v12;
          v14 = CFArrayGetCount(v12);
          if (v14)
          {
            v15 = v14;
            v16 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v15 >= 1)
            {
              for (i = 0; i != v15; ++i)
              {
                CFArrayGetValueAtIndex(v13, i);
                v18 = DDResultGetType();
                v19 = DDResultGetValue();
                CFDictionarySetValue(v16, v18, v19);
                if (CFStringHasPrefix(v18, @"NUMBERS"))
                {
                  v20 = DDResultGetMatchedString();
                  CFDictionarySetValue(v16, @"SPELLED", v20);
                }
              }
            }

            Mutable = theDict;
            CFDictionarySetValue(theDict, Type, v16);
            CFRelease(v16);
            v7 = v24;
            v5 = v25;
          }
        }

        ++v8;
      }

      while (v8 != v7);
    }
  }

  if (Mutable)
  {
    v21 = *(*(a1 + 40) + 8);
    (*(*(a1 + 32) + 16))();
    CFRelease(Mutable);
  }

  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

uint64_t NLEntityDetectorRetain(uint64_t result)
{
  if (result)
  {
    ++*(result + 16);
  }

  return result;
}

void NLEntityDetectorRelease(const void **a1)
{
  if (a1)
  {
    v1 = *(a1 + 4) - 1;
    *(a1 + 4) = v1;
    if (!v1)
    {
      destroyNLEntityDetector(a1);
    }
  }
}

dispatch_queue_t __getDataDetectorsQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.NLP.DataDetectors", 0);
  getDataDetectorsQueue_dataDetectorsQueue = result;
  return result;
}

uint64_t EntityCompare()
{
  Range = DDResultGetRange();
  v2 = v1;
  v3 = DDResultGetRange();
  if (Range == v3)
  {
    v5 = v2 <= v4;
    if (v2 != v4)
    {
LABEL_14:
      if (v5)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    SubResults = DDResultGetSubResults();
    v7 = DDResultGetSubResults();
    if (SubResults)
    {
      v8 = v7;
      if (v7)
      {
        Count = CFArrayGetCount(SubResults);
        if (Count == CFArrayGetCount(v8))
        {
          return 0;
        }

        v11 = CFArrayGetCount(SubResults);
        v5 = v11 <= CFArrayGetCount(v8);
        goto LABEL_14;
      }
    }

    if (SubResults)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else if (Range < v3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

CFStringRef createCFStringFromString(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return &stru_284010170;
    }

    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v1, v2, 0x8000100u, 0);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v1 = *a1;
    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v1, v2, 0x8000100u, 0);
  }

  return &stru_284010170;
}

_BYTE *getUTF8StringFromCFString@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "");
}

const __CFURL *getPathForResource@<X0>(const __CFString *a1@<X0>, void *a2@<X8>)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  result = CFBundleCopyResourceURL(BundleWithIdentifier, a1, 0, 0);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (result)
  {
    getFileSystemRepresentationFromCFURL(result);
  }

  return result;
}

void sub_22CDC9EBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getParsecLogHandle()
{
  if (getParsecLogHandle::onceToken != -1)
  {
    getParsecLogHandle_cold_1();
  }

  return getParsecLogHandle::logHandle;
}

os_log_t __getParsecLogHandle_block_invoke()
{
  result = os_log_create("com.apple.NLP", "NLParsecDataManager");
  getParsecLogHandle::logHandle = result;
  return result;
}

CFURLRef createCFURLFromPathRepresentation(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {

    return CFURLCreateWithFileSystemPath(0, a1, kCFURLPOSIXPathStyle, 1u);
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFURLGetTypeID())
    {

      return CFURLCopyAbsoluteURL(a1);
    }

    else
    {
      return 0;
    }
  }
}

CFMutableDictionaryRef createDictionaryWithContentsOfURL(CFURLRef fileURL, int a2)
{
  v3 = CFReadStreamCreateWithFile(0, fileURL);
  if (v3)
  {
    v4 = v3;
    if (CFReadStreamOpen(v3))
    {
      if (a2)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v6 = CFPropertyListCreateWithStream(0, v4, 0, v5, 0, 0);
      CFReadStreamClose(v4);
      CFRelease(v4);
      if (v6)
      {
        v7 = CFGetTypeID(v6);
        if (v7 != CFDictionaryGetTypeID())
        {
          CFRelease(v6);
          exception = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(&v12, "unexpected info dictionary format");
          NL::ResourceCreationException::ResourceCreationException(exception, &v12);
        }

        return v6;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  v9 = MEMORY[0x277CBF138];
  v10 = MEMORY[0x277CBF150];

  return CFDictionaryCreateMutable(0, 0, v9, v10);
}

void sub_22CDCA120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void splitWithChar(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "");
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    for (i = 0; i < v9; ++i)
    {
      if (*std::string::at(a1, i) == a2)
      {
        if (i)
        {
          if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v11;
          }

          std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MEMORY[0x2318C02F0](&v11, "");
      }

      else
      {
        v8 = std::string::at(a1, i);
        std::string::push_back(&v11, *v8);
      }

      v9 = *(a1 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a1 + 8);
      }
    }
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_22CDCA30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t trim@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 23);
  v5 = v4;
  v6 = *result;
  v7 = *(result + 8);
  if ((v4 & 0x80u) == 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = *(result + 23);
  }

  else
  {
    v9 = *(result + 8);
  }

  v10 = MEMORY[0x277D85DE0];
  if (v9)
  {
    v11 = &v8[v9];
    do
    {
      v12 = *v8;
      if ((v12 & 0x80000000) != 0)
      {
        result = __maskrune(v12, 0x4000uLL);
        if (!result)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = *(v10 + 4 * v12 + 60) & 0x4000;
        if (!result)
        {
          goto LABEL_15;
        }
      }

      ++v8;
      --v9;
    }

    while (v9);
    v8 = v11;
LABEL_15:
    v4 = *(v2 + 23);
    v6 = *v2;
    v7 = *(v2 + 8);
    v5 = *(v2 + 23);
  }

  v13 = &v6[v7];
  v14 = (v2 + v4);
  if (v5 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v5 < 0)
  {
    v2 = v6;
  }

  while (v15 != v2)
  {
    v17 = *--v15;
    v16 = v17;
    if ((v17 & 0x80000000) != 0)
    {
      result = __maskrune(v16, 0x4000uLL);
      if (!result)
      {
LABEL_26:
        v2 = (v15 + 1);
        break;
      }
    }

    else
    {
      result = *(v10 + 4 * v16 + 60) & 0x4000;
      if (!result)
      {
        goto LABEL_26;
      }
    }
  }

  if (v8 >= v2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {

    return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a2, v8, v2, v2 - v8);
  }

  return result;
}

void join(uint64_t *a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (v5 == 1)
  {
    if (*(v4 + 23) < 0)
    {
      v19 = *v4;
      v20 = *(v4 + 8);

      std::string::__init_copy_ctor_external(a3, v19, v20);
    }

    else
    {
      v6 = *v4;
      a3->__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&a3->__r_.__value_.__l.__data_ = v6;
    }
  }

  else if (v5)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
    v10 = *a1;
    v9 = a1[1];
    v11 = v9 - 24;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    v26[0] = &v21;
    v26[1] = v12;
    if (v11 != v10)
    {
      do
      {
        std::ostream_iterator<std::string,char,std::char_traits<char>>::operator=[abi:ne200100](v26, v10);
        v10 += 24;
      }

      while (v10 != v11);
      v9 = a1[1];
    }

    v15 = *(v9 - 24);
    v13 = v9 - 24;
    v14 = v15;
    v16 = *(v13 + 23);
    if (v16 >= 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    if (v16 >= 0)
    {
      v18 = *(v13 + 23);
    }

    else
    {
      v18 = *(v13 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v17, v18);
    std::stringbuf::str();
    v21 = *MEMORY[0x277D82828];
    *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82828] + 24);
    v22 = MEMORY[0x277D82878] + 16;
    if (v24 < 0)
    {
      operator delete(v23[7].__locale_);
    }

    v22 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v23);
    std::ostream::~ostream();
    MEMORY[0x2318C0570](&v25);
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

void sub_22CDCA6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x2318C0570](va1);
  _Unwind_Resume(a1);
}

BOOL startswith(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3)
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = a2[23];
  }

  v6 = &v4[v5];
  if (v5)
  {
    if ((a1[23] & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    while (*v4 == *v7)
    {
      ++v4;
      ++v7;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v4 = v6;
  }

  return v4 == v6;
}

BOOL endswith(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  if (v3 > v4)
  {
    return 0;
  }

  v7 = v2;
  v8 = (a2 + v2);
  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v8 = (*a2 + a2[1]);
    v9 = *a2;
  }

  if (v5 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v11 = v10 + v4 - 1;
  do
  {
    result = v8 == v9;
    if (v8 == v9)
    {
      break;
    }

    v13 = *(v8 - 1);
    v8 = (v8 - 1);
    v12 = v13;
    v14 = *v11--;
  }

  while (v12 == v14);
  return result;
}

std::string *replaceAll(std::string *this, char *a2, uint64_t a3)
{
  v3 = a2[23];
  v4 = *(a2 + 1);
  if ((v3 & 0x80000000) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v5)
  {
    v7 = this;
    v8 = 0;
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v10 = this;
    }

    else
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if ((v3 & 0x80000000) == 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    v22 = v3 >> 63;
    while (!v5)
    {
LABEL_24:
      if (v8 != -1)
      {
        if (v22)
        {
          v16 = v4;
        }

        else
        {
          v16 = v3;
        }

        v17 = *(a3 + 23);
        if (v17 >= 0)
        {
          v18 = a3;
        }

        else
        {
          v18 = *a3;
        }

        if (v17 >= 0)
        {
          v19 = *(a3 + 23);
        }

        else
        {
          v19 = *(a3 + 8);
        }

        this = std::string::replace(v7, v8, v16, v18, v19);
        v20 = *(a3 + 23);
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(a3 + 8);
        }

        v8 += v20;
        size = HIBYTE(v7->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) == 0)
        {
          v10 = v7;
        }

        else
        {
          v10 = v7->__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = v7->__r_.__value_.__l.__size_;
        }

        v3 = a2[23];
        v22 = v3 >> 63;
        v4 = *(a2 + 1);
        v11 = (v3 & 0x80000000) == 0 ? a2 : *a2;
        v5 = (v3 & 0x80000000) == 0 ? a2[23] : *(a2 + 1);
        if (size >= v8)
        {
          continue;
        }
      }

      return this;
    }

    v12 = size - v8;
    if ((size - v8) >= v5)
    {
      v13 = (v10 + size);
      this = (v10 + v8);
      v14 = *v11;
      do
      {
        if (v12 - v5 == -1)
        {
          break;
        }

        this = memchr(this, v14, v12 - v5 + 1);
        if (!this)
        {
          break;
        }

        v15 = this;
        this = memcmp(this, v11, v5);
        if (!this)
        {
          if (v15 == v13)
          {
            return this;
          }

          v8 = v15 - v10;
          goto LABEL_24;
        }

        this = (&v15->__r_.__value_.__l.__data_ + 1);
        v12 = v13 - (&v15->__r_.__value_.__l.__data_ + 1);
      }

      while (v12 >= v5);
    }
  }

  return this;
}

void stringToUTF32Characters(uint64_t *a1@<X0>, const void **a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 2);
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3 >= 1)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    do
    {
      if (*(a1 + 23) >= 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = *a1;
      }

      v8 = v6;
      v9 = *(v7 + v6);
      v6 = v6 + 1;
      v10 = v9;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      if (v6 == v3)
      {
        return;
      }

      if (v9 < 0xE0u)
      {
        if (v9 < 0xC2u)
        {
          continue;
        }

        v14 = v9 & 0x1F;
      }

      else
      {
        if (v9 > 0xEFu)
        {
          if (v9 > 0xF4u)
          {
            continue;
          }

          v23 = *(v7 + v6);
          if (((byte_22CDDFA0F[v23 >> 4] >> (v9 + 16)) & 1) == 0)
          {
            continue;
          }

          v6 = v8 + 2;
          if (v8 + 2 == v3)
          {
            return;
          }

          v13 = *(v7 + v6) ^ 0x80;
          if (v13 > 0x3F)
          {
            continue;
          }

          LODWORD(v12) = v23 & 0x3F | ((v10 - 240) << 6);
        }

        else
        {
          v12 = v9 & 0xF;
          if (((a00000000000000[v12] >> (*(v7 + v6) >> 5)) & 1) == 0)
          {
            continue;
          }

          v13 = *(v7 + v6) & 0x3F;
        }

        LODWORD(v6) = v6 + 1;
        if (v6 == v3)
        {
          return;
        }

        v14 = v13 | (v12 << 6);
      }

      v21 = *(v7 + v6) ^ 0x80;
      if (v21 <= 0x3F)
      {
        v10 = v21 | (v14 << 6);
        LODWORD(v6) = v6 + 1;
LABEL_10:
        v11 = a2[2];
        if (v5 >= v11)
        {
          v15 = *a2;
          v16 = v5 - *a2;
          v17 = v16 >> 2;
          v18 = (v16 >> 2) + 1;
          if (v18 >> 62)
          {
            std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
          }

          v19 = v11 - v15;
          if (v19 >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(a2, v20);
          }

          *(4 * v17) = v10;
          v5 = (4 * v17 + 4);
          memcpy(0, v15, v16);
          v22 = *a2;
          *a2 = 0;
          a2[1] = v5;
          a2[2] = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v5++ = v10;
        }

        a2[1] = v5;
      }
    }

    while (v6 < v3);
  }
}

void sub_22CDCABB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFIndex enumerateCharactersInCFString(CFIndex theString, CFIndex theIndex, uint64_t a3, uint64_t a4)
{
  v5 = theIndex;
  v6 = theString;
  v9 = 0;
  v7 = theIndex + a3;
  do
  {
    if (v5 >= v7)
    {
      break;
    }

    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v6, v5);
    theString = RangeOfComposedCharactersAtIndex.location;
    if (RangeOfComposedCharactersAtIndex.location == -1)
    {
      break;
    }

    theString = (*(a4 + 16))(a4, RangeOfComposedCharactersAtIndex.location, RangeOfComposedCharactersAtIndex.length, &v9);
    v5 += RangeOfComposedCharactersAtIndex.length;
  }

  while (v9 != 1);
  return theString;
}

uint64_t newCharacterSetWithPattern(const __CFString *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  HIDWORD(v6) = 0;
  Length = CFStringGetLength(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]");
  MEMORY[0x28223BE20]();
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!CFStringGetCharactersPtr(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]"))
  {
    v8.location = 0;
    v8.length = Length;
    CFStringGetCharacters(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]", v8, v3);
  }

  result = uset_openPattern();
  if (SHIDWORD(v6) >= 1 && result)
  {
    uset_close();
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t copyStringInsertingSpacesBetweenIdeographCharacters(CFIndex a1, CFIndex a2, uint64_t a3)
{
  if (__onceCSetToken != -1)
  {
    copyStringInsertingSpacesBetweenIdeographCharacters_cold_1();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  Mutable = CFStringCreateMutable(0, 0);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __copyStringInsertingSpacesBetweenIdeographCharacters_block_invoke_2;
  v8[3] = &unk_278740948;
  v8[7] = &v15;
  v8[8] = a1;
  v8[4] = v13;
  v8[5] = v11;
  v8[6] = v9;
  enumerateCharactersInCFString(a1, a2, a3, v8);
  v6 = v16[3];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

void sub_22CDCAEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __copyStringInsertingSpacesBetweenIdeographCharacters_block_invoke(const __CFString *a1)
{
  result = newCharacterSetWithPattern(a1);
  __CSet = result;
  return result;
}

void __copyStringInsertingSpacesBetweenIdeographCharacters_block_invoke_2(uint64_t a1, CFRange a2)
{
  length = a2.length;
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = (v11 - ((2 * a2.length + 17) & 0xFFFFFFFFFFFFFFF0));
  CFStringGetCharacters(*(a1 + 64), a2, v4);
  isWhitespace = u_isWhitespace(*v4);
  v6 = uset_containsAllCodePoints();
  v7 = v6;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v8 = *(*(*(a1 + 40) + 8) + 24) != 1 || v6 == 0;
    if (!v8 || (*(*(*(a1 + 48) + 8) + 24) == 1 ? (v9 = isWhitespace == 0) : (v9 = 0), v9))
    {
      CFStringAppend(*(*(*(a1 + 56) + 8) + 24), @" ");
    }
  }

  CFStringAppendCharacters(*(*(*(a1 + 56) + 8) + 24), v4, length);
  *(*(*(a1 + 40) + 8) + 24) = isWhitespace == 0;
  *(*(*(a1 + 48) + 8) + 24) = v7 != 0;
  ++*(*(*(a1 + 32) + 8) + 24);
  v10 = *MEMORY[0x277D85DE8];
}

CFStringRef copyTranslatedRomanNumberFromChineseNumberString(const __CFString *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  values[4] = xmmword_2787409A8;
  values[5] = *&off_2787409B8;
  v31 = @"9";
  values[0] = xmmword_278740968;
  values[1] = *&off_278740978;
  values[2] = xmmword_278740988;
  values[3] = *&off_278740998;
  v27 = xmmword_278740A10;
  v28 = *&off_278740A20;
  v29 = @"九";
  *keys = xmmword_2787409D0;
  v24 = *&off_2787409E0;
  v25 = xmmword_2787409F0;
  v26 = *&off_278740A00;
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 13, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *prefix = xmmword_278740A38;
  v22 = @"千";
  v4 = CFArrayCreate(v2, prefix, 3, MEMORY[0x277CBF128]);
  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    v17 = 0;
  }

  else
  {
    v6 = Length;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = 0; i != v6; ++i)
    {
      v34.location = i;
      v34.length = 1;
      v11 = CFStringCreateWithSubstring(v2, a1, v34);
      value = 0;
      if (CFDictionaryGetValueIfPresent(v3, v11, &value))
      {
        IntValue = CFStringGetIntValue(value);
        v13 = 10 * v9;
        if (!v7)
        {
          v13 = v9;
        }

        v9 = IntValue + v13;
        ++v7;
      }

      else
      {
        v33.length = CFArrayGetCount(v4);
        v33.location = 0;
        if (CFArrayContainsValue(v4, v33, v11))
        {
          HasPrefix = CFStringHasPrefix(v11, prefix[0]);
          if (v9)
          {
            if (HasPrefix)
            {
              v15 = 10 * v9;
            }

            else
            {
              v16 = CFStringHasPrefix(v11, prefix[1]);
              v15 = 1000 * v9;
              if (v16)
              {
                v15 = 100 * v9;
              }
            }
          }

          else if (HasPrefix)
          {
            v15 = 10;
          }

          else if (CFStringHasPrefix(v11, prefix[1]))
          {
            v15 = 100;
          }

          else
          {
            v15 = 1000;
          }

          v9 = 0;
          v7 = 0;
          v8 += v15;
        }
      }

      CFRelease(v11);
    }

    v17 = (v8 + v9);
  }

  CFRelease(v3);
  CFRelease(v4);
  result = CFStringCreateWithFormat(v2, 0, @"%d", v17);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t intFromSpelledNumber(const __CFString *a1, uint64_t a2)
{
  IntValue = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v4 = MEMORY[0x2318BF8A0](a2);
    if ((CFStringHasPrefix(v4, @"zh") || CFStringHasPrefix(v4, @"ja")) && (v5 = *MEMORY[0x277CBECE8], (ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], a1, @" ")) != 0))
    {
      v7 = ArrayBySeparatingStrings;
      v8 = CFStringCreateByCombiningStrings(v5, ArrayBySeparatingStrings, &stru_284010170);
      if (v8)
      {
        v9 = v8;
        v10 = copyTranslatedRomanNumberFromChineseNumberString(v8);
        if (v10)
        {
          v11 = v10;
          IntValue = CFStringGetIntValue(v10);
          CFRelease(v11);
        }

        else
        {
          IntValue = 0xFFFFFFFFLL;
        }

        CFRelease(v9);
      }

      else
      {
        IntValue = 0xFFFFFFFFLL;
      }

      CFRelease(v7);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return IntValue;
}

CFLocaleRef copyCurrentLocale()
{
  v0 = CFLocaleCopyPreferredLanguages();
  if (v0)
  {
    v1 = v0;
    if (CFArrayGetCount(v0) && (ValueAtIndex = CFArrayGetValueAtIndex(v1, 0), v3 = *MEMORY[0x277CBECE8], (v4 = CFLocaleCreate(*MEMORY[0x277CBECE8], ValueAtIndex)) != 0))
    {
      v5 = v4;
      if (CFLocaleGetValue(v4, *MEMORY[0x277CBEE98]))
      {
        v6 = MEMORY[0x2318BF880](v3, v5);
      }

      else
      {
        v6 = CFLocaleCopyCurrent();
      }

      v7 = v6;
      CFRelease(v5);
    }

    else
    {
      v7 = CFLocaleCopyCurrent();
    }

    CFRelease(v1);
    return v7;
  }

  else
  {

    return CFLocaleCopyCurrent();
  }
}

__CFCalendar *copyCurrentCalendar(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x2318BF8A0]();
  v2 = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBECE8], v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = CFCalendarCopyCurrent();
    if (!v3)
    {
      return v3;
    }
  }

  v4 = CFTimeZoneCopySystem();
  if (v4)
  {
    v5 = v4;
    CFCalendarSetTimeZone(v3, v4);
    CFRelease(v5);
  }

  CFCalendarSetFirstWeekday(v3, 1);
  return v3;
}

double getCurrentTime(uint64_t a1)
{
  if (a1)
  {
    JUMPOUT(0x2318BF720);
  }

  return CFAbsoluteTimeGetCurrent();
}

void *convertToCString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

uint64_t createLexicon(const __CFString *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277D23168], a1);
  v7 = 0;
  v3 = LXLexiconCreate();
  if (!v3)
  {
    getUTF8StringFromCFString(a1, v6);
    __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    NL::SharedCFType::SharedCFType(&v5, v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

void sub_22CDCB6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      if (a22 < 0)
      {
        operator delete(a17);
      }

      nlp::CFScopedPtr<__CFDictionary *>::reset((v24 - 40), 0);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void composeErrorMessageForLocale(CFLocaleRef locale@<X1>, const void **a2@<X0>, uint64_t a3@<X8>)
{
  Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
  v6 = convertToCString(Value);
  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  free(v6);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22CDCB7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef NLPCreateStringWithValidatedFormat(CFStringRef validFormatSpecifiers, CFStringRef format, ...)
{
  va_start(va, format);
  errorPtr[0] = 0;
  va_copy(&errorPtr[1], va);
  StringWithValidatedFormatAndArguments = CFStringCreateStringWithValidatedFormatAndArguments(*MEMORY[0x277CBECE8], 0, validFormatSpecifiers, format, va, errorPtr);
  if (errorPtr[0])
  {
    v4 = CFErrorCopyDescription(errorPtr[0]);
    v5 = _nlpDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      NLPCreateStringWithValidatedFormat(format, v4, v5);
    }

    CFRelease(errorPtr[0]);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return StringWithValidatedFormatAndArguments;
}

void sub_22CDCB8C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t NL::ResourceCreationException::ResourceCreationException(uint64_t a1, const void **a2, NL::SharedCFType *this)
{
  v23[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_28400E158;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = NL::SharedCFType::get(this);
  v7 = CFGetTypeID(v6);
  if (v7 == CFErrorGetTypeID())
  {
    v8 = CFErrorCopyDescription(v6);
    if (*(a2 + 23) >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    v10 = &v22;
    std::string::basic_string[abi:ne200100](&v22, v9 + 2);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v22.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, ": ");
    getUTF8StringFromCFString(v8, __p);
    if ((v21 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v13 = v21;
    }

    else
    {
      v13 = __p[1];
    }

    v14 = std::string::append(&v22, v12, v13);
    v15 = v14->__r_.__value_.__r.__words[0];
    v23[0] = v14->__r_.__value_.__l.__size_;
    *(v23 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 31) < 0)
    {
      operator delete(*v5);
    }

    v17 = v23[0];
    *(a1 + 8) = v15;
    *(a1 + 16) = v17;
    *(a1 + 23) = *(v23 + 7);
    *(a1 + 31) = v16;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    CFRelease(v8);
  }

  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_22CDCBA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 + 31) < 0)
  {
    operator delete(*v22);
  }

  std::exception::~exception(v21);
  _Unwind_Resume(a1);
}

void NLDevanagariOrthographyChecker::NLDevanagariOrthographyChecker(NLDevanagariOrthographyChecker *this)
{
  *this = &unk_28400E318;
  *(this + 1) = @"‍";
  *(this + 2) = @"़";
  *(this + 3) = @"्";
  *(this + 4) = @"ः";
  *(this + 5) = @"ं";
  *(this + 6) = @"ँ";
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, *(this + 2));
  CFStringAppend(Mutable, *(this + 3));
  CFStringAppend(Mutable, *(this + 4));
  CFStringAppend(Mutable, *(this + 5));
  CFStringAppend(Mutable, *(this + 6));
  CFStringAppend(Mutable, @"ा");
  CFStringAppend(Mutable, @"ि");
  CFStringAppend(Mutable, @"ी");
  CFStringAppend(Mutable, @"ु");
  CFStringAppend(Mutable, @"ू");
  CFStringAppend(Mutable, @"ृ");
  CFStringAppend(Mutable, @"ॄ");
  CFStringAppend(Mutable, @"ॅ");
  CFStringAppend(Mutable, @"े");
  CFStringAppend(Mutable, @"ै");
  CFStringAppend(Mutable, @"ॉ");
  CFStringAppend(Mutable, @"ो");
  CFStringAppend(Mutable, @"ौ");
  *(this + 7) = CFCharacterSetCreateWithCharactersInString(0, Mutable);
  CFRelease(Mutable);
  v3 = CFStringCreateMutable(0, 0);
  CFStringAppend(v3, @"ऋ");
  CFStringAppend(v3, @"क");
  CFStringAppend(v3, @"ख");
  CFStringAppend(v3, @"ग");
  CFStringAppend(v3, @"घ");
  CFStringAppend(v3, @"ङ");
  CFStringAppend(v3, @"च");
  CFStringAppend(v3, @"छ");
  CFStringAppend(v3, @"ज");
  CFStringAppend(v3, @"झ");
  CFStringAppend(v3, @"ञ");
  CFStringAppend(v3, @"ट");
  CFStringAppend(v3, @"ठ");
  CFStringAppend(v3, @"ड");
  CFStringAppend(v3, @"ढ");
  CFStringAppend(v3, @"ण");
  CFStringAppend(v3, @"त");
  CFStringAppend(v3, @"थ");
  CFStringAppend(v3, @"द");
  CFStringAppend(v3, @"ध");
  CFStringAppend(v3, @"न");
  CFStringAppend(v3, @"प");
  CFStringAppend(v3, @"फ");
  CFStringAppend(v3, @"ब");
  CFStringAppend(v3, @"भ");
  CFStringAppend(v3, @"म");
  CFStringAppend(v3, @"य");
  CFStringAppend(v3, @"र");
  CFStringAppend(v3, @"ऱ");
  CFStringAppend(v3, @"ल");
  CFStringAppend(v3, @"ळ");
  CFStringAppend(v3, @"व");
  CFStringAppend(v3, @"श");
  CFStringAppend(v3, @"ष");
  CFStringAppend(v3, @"स");
  CFStringAppend(v3, @"ह");
  CFStringAppend(v3, @"क़");
  CFStringAppend(v3, @"ख़");
  CFStringAppend(v3, @"ग़");
  CFStringAppend(v3, @"ज़");
  CFStringAppend(v3, @"ड़");
  CFStringAppend(v3, @"ढ़");
  CFStringAppend(v3, @"फ़");
  CFStringAppend(v3, @"ॹ");
  *(this + 8) = CFCharacterSetCreateWithCharactersInString(0, v3);
  CFRelease(v3);
  v4 = CFStringCreateMutable(0, 0);
  CFStringAppend(v4, @"ङ");
  CFStringAppend(v4, @"ञ");
  CFStringAppend(v4, @"ण");
  CFStringAppend(v4, @"न");
  CFStringAppend(v4, @"म");
  *(this + 9) = CFCharacterSetCreateWithCharactersInString(0, v4);
  CFRelease(v4);
  v5 = CFStringCreateMutable(0, 0);
  CFStringAppend(v5, @"क");
  CFStringAppend(v5, @"ख");
  CFStringAppend(v5, @"ग");
  CFStringAppend(v5, @"घ");
  CFStringAppend(v5, @"ङ");
  *(this + 10) = CFCharacterSetCreateWithCharactersInString(0, v5);
  CFRelease(v5);
  v6 = CFStringCreateMutable(0, 0);
  CFStringAppend(v6, @"च");
  CFStringAppend(v6, @"छ");
  CFStringAppend(v6, @"ज");
  CFStringAppend(v6, @"झ");
  CFStringAppend(v6, @"ञ");
  *(this + 11) = CFCharacterSetCreateWithCharactersInString(0, v6);
  CFRelease(v6);
  v7 = CFStringCreateMutable(0, 0);
  CFStringAppend(v7, @"ट");
  CFStringAppend(v7, @"ठ");
  CFStringAppend(v7, @"ड");
  CFStringAppend(v7, @"ढ");
  CFStringAppend(v7, @"ण");
  *(this + 12) = CFCharacterSetCreateWithCharactersInString(0, v7);
  CFRelease(v7);
  v8 = CFStringCreateMutable(0, 0);
  CFStringAppend(v8, @"ट");
  CFStringAppend(v8, @"ठ");
  CFStringAppend(v8, @"ड");
  CFStringAppend(v8, @"ढ");
  CFStringAppend(v8, @"ण");
  CFStringAppend(v8, @"य");
  CFStringAppend(v8, @"व");
  CFStringAppend(v8, @"श");
  CFStringAppend(v8, @"ष");
  CFStringAppend(v8, @"स");
  CFStringAppend(v8, @"ह");
  *(this + 13) = CFCharacterSetCreateWithCharactersInString(0, v8);
  CFRelease(v8);
  v9 = CFStringCreateMutable(0, 0);
  CFStringAppend(v9, @"क़");
  CFStringAppend(v9, @"ख़");
  CFStringAppend(v9, @"ग़");
  CFStringAppend(v9, @"ज़");
  CFStringAppend(v9, @"ड़");
  CFStringAppend(v9, @"ढ़");
  CFStringAppend(v9, @"फ़");
  CFStringAppend(v9, @"ॹ");
  *(this + 14) = CFCharacterSetCreateWithCharactersInString(0, v9);
  CFRelease(v9);
  v10 = CFStringCreateMutable(0, 0);
  CFStringAppend(v10, @"अ");
  CFStringAppend(v10, @"आ");
  CFStringAppend(v10, @"इ");
  CFStringAppend(v10, @"ई");
  CFStringAppend(v10, @"उ");
  CFStringAppend(v10, @"ऊ");
  CFStringAppend(v10, @"ऋ");
  CFStringAppend(v10, @"ऍ");
  CFStringAppend(v10, @"ए");
  CFStringAppend(v10, @"ऐ");
  CFStringAppend(v10, @"ऑ");
  CFStringAppend(v10, @"ओ");
  CFStringAppend(v10, @"औ");
  *(this + 15) = CFCharacterSetCreateWithCharactersInString(0, v10);
  CFRelease(v10);
  v11 = CFStringCreateMutable(0, 0);
  CFStringAppend(v11, @"०");
  CFStringAppend(v11, @"१");
  CFStringAppend(v11, @"२");
  CFStringAppend(v11, @"३");
  CFStringAppend(v11, @"४");
  CFStringAppend(v11, @"५");
  CFStringAppend(v11, @"६");
  CFStringAppend(v11, @"७");
  CFStringAppend(v11, @"८");
  CFStringAppend(v11, @"९");
  CFStringAppend(v11, @"‍");
  v12 = CFCharacterSetCreateWithCharactersInString(0, v11);
  CFRelease(v11);
  MutableCopy = CFCharacterSetCreateMutableCopy(*MEMORY[0x277CBECE8], *(this + 15));
  CFCharacterSetUnion(MutableCopy, *(this + 8));
  CFCharacterSetUnion(MutableCopy, *(this + 7));
  CFCharacterSetUnion(MutableCopy, v12);
  CFRelease(v12);
  *(this + 16) = CFCharacterSetCreateInvertedSet(0, MutableCopy);
  CFRelease(MutableCopy);
}

void NLDevanagariOrthographyChecker::~NLDevanagariOrthographyChecker(CFTypeRef *this)
{
  *this = &unk_28400E318;
  CFRelease(this[7]);
  CFRelease(this[8]);
  CFRelease(this[9]);
  CFRelease(this[10]);
  CFRelease(this[11]);
  CFRelease(this[12]);
  CFRelease(this[13]);
  CFRelease(this[14]);
  CFRelease(this[15]);
  CFRelease(this[16]);

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

{
  NLDevanagariOrthographyChecker::~NLDevanagariOrthographyChecker(this);

  JUMPOUT(0x2318C0600);
}

BOOL NLDevanagariOrthographyChecker::isVowelSign(NLDevanagariOrthographyChecker *this, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"ऽ");
  CFStringAppend(Mutable, @"ा");
  CFStringAppend(Mutable, @"ि");
  CFStringAppend(Mutable, @"ी");
  CFStringAppend(Mutable, @"ु");
  CFStringAppend(Mutable, @"ू");
  CFStringAppend(Mutable, @"ृ");
  CFStringAppend(Mutable, @"ॄ");
  CFStringAppend(Mutable, @"ॅ");
  CFStringAppend(Mutable, @"े");
  CFStringAppend(Mutable, @"ै");
  CFStringAppend(Mutable, @"ॉ");
  CFStringAppend(Mutable, @"ो");
  CFStringAppend(Mutable, @"ौ");
  v4 = CFCharacterSetCreateWithCharactersInString(0, Mutable);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v4);
  CFRelease(Mutable);
  CFRelease(v4);
  v8.length = CFStringGetLength(a2);
  v8.location = 0;
  v6 = CFStringFindCharacterFromSet(a2, InvertedSet, v8, 0, 0) == 0;
  CFRelease(InvertedSet);
  return v6;
}

BOOL NLDevanagariOrthographyChecker::canNuktaFollowLetter(NLDevanagariOrthographyChecker *this, const __CFString *a2)
{
  v3 = CFCharacterSetCreateWithCharactersInString(0, @"कखगजडढफ");
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v3);
  CFRelease(@"कखगजडढफ");
  CFRelease(v3);
  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  v5 = CFStringFindCharacterFromSet(a2, InvertedSet, v7, 0, 0) == 0;
  CFRelease(InvertedSet);
  return v5;
}

BOOL NLDevanagariOrthographyChecker::canViramaFollowLetter(CFStringRef *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, this[2], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = this[8];
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString1, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) != 0;
}

CFMutableStringRef NLDevanagariOrthographyChecker::stringByCorrectingIllegalVowelLetters(NLDevanagariOrthographyChecker *this, const __CFString *a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v12 = @"अा";
  v13 = v14;
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"आ";
  v12 = @"अो";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ओ";
  v12 = @"अाे";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ओ";
  v12 = @"आे";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ओ";
  v12 = @"अौ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"औ";
  v12 = @"अाै";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"औ";
  v12 = @"आै";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"औ";
  v12 = @"एॅ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ऍ";
  v12 = @"अॉ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ऑ";
  v12 = @"अाॅ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ऑ";
  v12 = @"आॅ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ऑ";
  v12 = @"अॅ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ॲ";
  Length = CFStringGetLength(a2);
  MutableCopy = CFStringCreateMutableCopy(0, Length, a2);
  v5 = v13;
  if (v13 != v14)
  {
    do
    {
      v6 = v5[5];
      v7 = CFStringFind(MutableCopy, v5[4], 0);
      if (v7.length >= 1)
      {
        CFStringReplace(MutableCopy, v7, v6);
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v14);
  }

  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(&v13, v14[0]);
  return MutableCopy;
}

BOOL NLDevanagariOrthographyChecker::checkSpelling(NLDevanagariOrthographyChecker *this, CFStringRef theString, const __CFString **a3, const __CFString **a4)
{
  v83 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(theString);
  result = xmmword_22CDDE300;
  v84.location = 0;
  v84.length = Length;
  if (CFStringFindCharacterFromSet(theString, *(this + 7), v84, 0, &result))
  {
    v9 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (!result.location)
      {
        goto LABEL_51;
      }

      if (location != 0x7FFFFFFFFFFFFFFFLL && result.location == v9 + location)
      {
        v85.location = location;
        v85.length = v9;
        v11 = CFStringCreateWithSubstring(0, theString, v85);
        v12 = CFStringCreateWithSubstring(0, theString, result);
        if ((CFStringCompare(v11, *(this + 2), 0) || CFStringCompare(v12, *(this + 2), 0) == kCFCompareEqualTo) && (CFStringCompare(v12, *(this + 5), 0) || !NLDevanagariOrthographyChecker::isVowelSign(0, v11)) && (CFStringCompare(v12, *(this + 6), 0) || !NLDevanagariOrthographyChecker::canCandrabinduFollowVowelSign(0, v11)) && (CFStringCompare(v12, *(this + 4), 0) || !NLDevanagariOrthographyChecker::isVowelSign(0, v11)))
        {
          if (v11)
          {
            CFRelease(v11);
          }

          if (v12)
          {
            CFRelease(v12);
          }

LABEL_51:
          v24 = 0;
          v25 = @"illegal diacritic placement";
          goto LABEL_139;
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }

      location = result.location;
      v9 = result.length;
      v86.location = result.length + result.location;
      v86.length = Length - (result.length + result.location);
    }

    while (CFStringFindCharacterFromSet(theString, *(this + 7), v86, 0, &result));
  }

  result = xmmword_22CDDE300;
  v13 = *(this + 2);
  v14 = theString;
  v15.location = 0;
  v15.length = Length;
  while (CFStringFindWithOptions(v14, v13, v15, 0, &result))
  {
    if (!result.location)
    {
      goto LABEL_46;
    }

    v87.location = result.location - 1;
    v87.length = 1;
    v16 = CFStringCreateWithSubstring(0, theString, v87);
    if (!NLDevanagariOrthographyChecker::canNuktaFollowLetter(v16, v16))
    {
      if (v16)
      {
        CFRelease(v16);
      }

LABEL_46:
      v24 = 0;
      v25 = @"illegal nukta placement";
      goto LABEL_139;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v15.location = result.length + result.location;
    v15.length = Length - (result.length + result.location);
    v13 = *(this + 2);
    v14 = theString;
  }

  result = xmmword_22CDDE300;
  v17 = *(this + 3);
  v18 = theString;
  v19.location = 0;
  v19.length = Length;
  while (CFStringFindWithOptions(v18, v17, v19, 0, &result))
  {
    if (!result.location)
    {
      goto LABEL_56;
    }

    v88.location = result.location - 1;
    v88.length = 1;
    v20 = CFStringCreateWithSubstring(0, theString, v88);
    if (result.location + 1 >= Length)
    {
      v21 = 0;
      if (!NLDevanagariOrthographyChecker::canViramaFollowLetter(this, v20))
      {
LABEL_52:
        if (v20)
        {
          CFRelease(v20);
        }

        if (v21)
        {
          CFRelease(v21);
        }

LABEL_56:
        v24 = 0;
        v25 = @"illegal virama placement";
        goto LABEL_139;
      }

LABEL_37:
      v22 = 1;
      if (!v20)
      {
        goto LABEL_39;
      }

LABEL_38:
      CFRelease(v20);
      goto LABEL_39;
    }

    v89.length = 1;
    v89.location = result.location + 1;
    v21 = CFStringCreateWithSubstring(0, theString, v89);
    if (!NLDevanagariOrthographyChecker::canViramaFollowLetter(this, v20))
    {
      goto LABEL_52;
    }

    if (!v21)
    {
      goto LABEL_37;
    }

    if (!NLBengaliOrthographyChecker::canViramaPrecedeLetter(this, v21))
    {
      goto LABEL_52;
    }

    v22 = 0;
    if (v20)
    {
      goto LABEL_38;
    }

LABEL_39:
    if ((v22 & 1) == 0)
    {
      CFRelease(v21);
    }

    v19.location = result.length + result.location;
    v19.length = Length - (result.length + result.location);
    v17 = *(this + 3);
    v18 = theString;
  }

  if (a3)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }

  else
  {
    Mutable = 0;
  }

  v26 = CFStringGetLength(theString);
  v90.location = 0;
  v90.length = v26;
  v75 = a3;
  theArray = Mutable;
  if (!CFStringFindCharacterFromSet(theString, *(this + 9), v90, 0, &range))
  {
    if (!Mutable)
    {
      goto LABEL_111;
    }

    v25 = 0;
    v27 = 1;
LABEL_100:
    if (CFArrayGetCount(Mutable) >= 1)
    {
      v73 = v27;
      v74 = a4;
      MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
      Count = CFArrayGetCount(Mutable);
      if (Count >= 1)
      {
        v42 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v42 - 2);
          Value = CFDictionaryGetValue(ValueAtIndex, @"range.location");
          v45 = CFDictionaryGetValue(ValueAtIndex, @"range.length");
          result = xmmword_22CDDE2F0;
          CFNumberGetValue(Value, kCFNumberCFIndexType, &result);
          CFNumberGetValue(v45, kCFNumberCFIndexType, &result.length);
          v46 = CFDictionaryGetValue(ValueAtIndex, @"replacement");
          v47.location = result.location;
          if (result.location != -1)
          {
            v47.length = result.length;
            if (result.length >= 1)
            {
              if (v46)
              {
                CFStringReplace(MutableCopy, v47, v46);
              }
            }
          }

          --v42;
          Mutable = theArray;
        }

        while (v42 > 1);
      }

      a4 = v74;
      *v75 = MutableCopy;
      v27 = v73;
    }

    CFRelease(Mutable);
    if (v27)
    {
      goto LABEL_110;
    }

LABEL_138:
    v24 = 0;
    goto LABEL_139;
  }

  v25 = 0;
  v27 = 1;
  while (2)
  {
    if (range.location + 2 >= v26 || CFStringGetCharacterAtIndex(theString, range.location + 1) != 2381)
    {
      goto LABEL_93;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, range.location);
    v29 = CFStringGetCharacterAtIndex(theString, range.location + 2);
    if (CFCharacterSetIsCharacterMember(*(this + 14), v29))
    {
      v30 = 1;
    }

    else
    {
      v30 = range.location + 3 < v26 && CFStringGetCharacterAtIndex(theString, range.location + 3) == 2364;
    }

    if (CharacterAtIndex > 2338)
    {
      if (CharacterAtIndex != 2339)
      {
        if (CharacterAtIndex == 2344 && (CFCharacterSetIsCharacterMember(*(this + 10), v29) || CFCharacterSetIsCharacterMember(*(this + 11), v29) || CFCharacterSetIsCharacterMember(*(this + 12), v29)) && (range.location < 1 || CFStringGetCharacterAtIndex(theString, range.location) != 2381))
        {
          if (Mutable)
          {
            result = xmmword_278740A50;
            v82 = @"replacement";
            valuePtr = range.location;
            v78 = 2;
            v32 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
            v33 = CFNumberCreate(0, kCFNumberCFIndexType, &v78);
            values[0] = v32;
            values[1] = v33;
            values[2] = @"ं";
            v34 = v25;
            v35 = CFDictionaryCreate(0, &result, values, 3, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
            CFRelease(v32);
            CFRelease(v33);
            CFArrayAppendValue(theArray, v35);
            v36 = v35;
            v25 = v34;
            Mutable = theArray;
            CFRelease(v36);
          }

          goto LABEL_89;
        }

        goto LABEL_79;
      }

      if (v30)
      {
        goto LABEL_89;
      }

      v31 = *(this + 13);
LABEL_85:
      if (((CFCharacterSetIsCharacterMember(v31, v29) != 0) & v27) == 0)
      {
        goto LABEL_89;
      }

LABEL_86:
      v27 = 1;
      goto LABEL_93;
    }

    if (CharacterAtIndex == 2329)
    {
      if (v30)
      {
        goto LABEL_89;
      }

      v31 = *(this + 10);
      goto LABEL_85;
    }

    if (CharacterAtIndex != 2334)
    {
LABEL_79:
      if ((v27 & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (!v30)
    {
      v31 = *(this + 11);
      goto LABEL_85;
    }

LABEL_89:
    if (!v25)
    {
      v91.location = range.location;
      v91.length = 3;
      v37 = CFStringCreateWithSubstring(0, theString, v91);
      v38 = CFStringCreateWithFormat(0, 0, @"invalid nasal combination '%@'", v37);
      v39 = v37;
      v25 = v38;
      CFRelease(v39);
    }

    if (!Mutable)
    {
      v24 = 0;
      goto LABEL_139;
    }

    v27 = 0;
LABEL_93:
    if (v26 > range.location + 1)
    {
      v92.location = range.location + 1;
      v92.length = v26 - (range.location + 1);
      if (CFStringFindCharacterFromSet(theString, *(this + 9), v92, 0, &range))
      {
        continue;
      }
    }

    break;
  }

  if (Mutable)
  {
    goto LABEL_100;
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_138;
  }

LABEL_110:
  Mutable = v25;
LABEL_111:
  Copy = CFCharacterSetCreateCopy(0, *(this + 15));
  v49 = CFCharacterSetCreateCopy(0, *(this + 7));
  v50 = CFCharacterSetCreateWithCharactersInString(0, @"ँं");
  v51 = CFStringGetLength(theString);
  v52 = theString;
  v53 = Copy;
  v54.location = 0;
  v54.length = v51;
  while (1)
  {
    if (!CFStringFindCharacterFromSet(v52, v53, v54, 0, &result))
    {
      v57 = 1;
      goto LABEL_118;
    }

    if (result.location + 1 < v51)
    {
      v55 = CFStringGetCharacterAtIndex(theString, result.location + 1);
      if (CFCharacterSetIsCharacterMember(v49, v55))
      {
        IsCharacterMember = CFCharacterSetIsCharacterMember(v50, v55);
        if (!IsCharacterMember)
        {
          break;
        }
      }
    }

    v54.location = result.length + result.location;
    v54.length = v51 - (result.length + result.location);
    v52 = theString;
    v53 = Copy;
  }

  v57 = 0;
  if (v75)
  {
    *v75 = NLDevanagariOrthographyChecker::stringByCorrectingIllegalVowelLetters(IsCharacterMember, theString);
  }

  Mutable = @"illegal diacritic after vowel letter";
LABEL_118:
  CFRelease(Copy);
  CFRelease(v49);
  CFRelease(v50);
  if (v57)
  {
    v58 = CFStringGetLength(theString);
    v59 = CFStringCreateMutableCopy(0, v58, theString);
    v60 = CFStringFind(v59, @"‌", 0);
    v25 = Mutable;
    if (v60.length >= 1)
    {
      CFStringReplace(v59, v60, &stru_284010170);
    }

    v61 = CFStringCompare(v59, theString, 0);
    v62 = v61;
    if (v75 && v61)
    {
      *v75 = v59;
    }

    if (v59)
    {
      CFRelease(v59);
      if (v62)
      {
        goto LABEL_126;
      }

LABEL_129:
      v63 = *(this + 1);
      v93.length = CFStringGetLength(theString);
      v93.location = 0;
      if (CFStringFindWithOptions(theString, v63, v93, 0, &result))
      {
        if (result.location)
        {
          v94.length = result.location - 1;
          v94.location = 0;
          v64 = CFStringCreateWithSubstring(0, theString, v94);
          HasSuffix = CFStringHasSuffix(v64, @"र्");
          if (!HasSuffix)
          {
            v25 = @"invalid sequence with ZWJ";
          }

          CFRelease(v64);
          if (!v75 || HasSuffix)
          {
            if (!HasSuffix)
            {
              goto LABEL_138;
            }

            goto LABEL_136;
          }

LABEL_152:
          v70 = CFStringGetLength(theString);
          v71 = CFStringCreateMutableCopy(0, v70, theString);
          v72 = CFStringFind(v71, *(this + 1), 0);
          if (v72.length >= 1)
          {
            CFStringReplace(v71, v72, &stru_284010170);
          }

          v24 = 0;
          *v75 = v71;
        }

        else
        {
          if (v75)
          {
            v25 = @"invalid sequence with ZWJ";
            goto LABEL_152;
          }

          v24 = 0;
          v25 = @"invalid sequence with ZWJ";
        }
      }

      else
      {
LABEL_136:
        v95.length = CFStringGetLength(theString);
        v95.location = 0;
        CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 16), v95, 0, &result);
        v24 = CharacterFromSet == 0;
        if (CharacterFromSet)
        {
          v67 = CFStringCreateWithSubstring(0, theString, result);
          v25 = CFStringCreateWithFormat(0, 0, @"invalid letter '%@'", v67);
          CFRelease(v67);
        }
      }
    }

    else
    {
      if (v61 == kCFCompareEqualTo)
      {
        goto LABEL_129;
      }

LABEL_126:
      v24 = 0;
      v25 = @"invalid: ZWNJ present";
    }
  }

  else
  {
    v24 = 0;
    v25 = Mutable;
  }

LABEL_139:
  if (!a4 || v24)
  {
    if (!a4 && v25)
    {
      CFRelease(v25);
    }
  }

  else
  {
    *a4 = v25;
  }

  v68 = *MEMORY[0x277D85DE8];
  return v24;
}

void *NLMessageConversation::NLMessageConversation(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<NLMessageConversationTurn>>::__init_with_size[abi:ne200100]<std::shared_ptr<NLMessageConversationTurn>*,std::shared_ptr<NLMessageConversationTurn>*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  std::unordered_map<std::string,std::string>::unordered_map((a1 + 3), a3);
  return a1;
}

void sub_22CDCD950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t NLMessageConversation::getConversationTurns@<X0>(NLMessageConversation *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::shared_ptr<NLMessageConversationTurn>>::__init_with_size[abi:ne200100]<std::shared_ptr<NLMessageConversationTurn>*,std::shared_ptr<NLMessageConversationTurn>*>(a2, *this, *(this + 1), (*(this + 1) - *this) >> 4);
}

void NLMessageConversation::updateMetadata(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 24);
  if (v3 != a2)
  {
    *(a1 + 56) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(v3, *(a2 + 16), 0);
  }
}

void NLMessageIntentRecognizer::NLMessageIntentRecognizer(NLMessageIntentRecognizer *this, CFDictionaryRef theDict)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 14) = 1065353216;
  *(this + 4) = 0u;
  v4 = this + 64;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  v5 = this + 104;
  *(this + 120) = 0u;
  *(this + 34) = 1065353216;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 184) = 0u;
  v6 = this + 184;
  *(this + 44) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  Value = CFDictionaryGetValue(theDict, kNLMessageIntentRecognizerLocaleKey);
  v8 = CFDictionaryGetValue(theDict, kNLMessageIntentRecognizerCustomModelPathKey);
  getUTF8StringFromCFString(Value, __p);
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  *(this + 13) = *__p;
  *(this + 28) = v11;
  if (v8)
  {
    getUTF8StringFromCFString(v8, __p);
    if (*(this + 207) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *__p;
    *(v6 + 2) = v11;
  }

  else
  {
    MEMORY[0x2318C02F0](v6, "");
  }

  if (*(this + 231) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(this + 26), *(this + 27));
  }

  else
  {
    v9 = *(this + 208);
  }

  NLMessageIntentDomainDetector::NLMessageIntentDomainDetector(__p, &v9);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = *__p;
  *(this + 2) = v11;
  HIBYTE(v11) = 0;
  LOBYTE(__p[0]) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__move_assign(this + 24, v12);
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__move_assign(v4, v13);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__move_assign(v5, v14);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::~__hash_table(v14);
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table(v13);
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table(v12);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_22CDCDBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 231) < 0)
  {
    operator delete(*(v14 + 208));
  }

  if (*(v14 + 207) < 0)
  {
    operator delete(*v16);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::~__hash_table(v15);
  NLMessageIntentDomainDetector::~NLMessageIntentDomainDetector(v14);
  _Unwind_Resume(a1);
}

_BYTE *NLMessageIntentRecognizer::getIntentTypeString@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 6)
  {
    v2 = "none";
  }

  else
  {
    v2 = off_278740A68[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void NLMessageIntentRecognizer::getCandidateIntentTypes(std::string *a1@<X0>, NLMessageConversation **a2@<X1>, const void **a3@<X8>)
{
  NLMessageConversation::getConversationTurns(*a2, &v29);
  v6 = (v30 - v29) >> 4;
  if (v6 >= 2)
  {
    v22 = descending_timestamp;
    v7 = 126 - 2 * __clz(v6);
    if (v30 == v29)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,false>(v29, v30, &v22, v8, 1);
  }

  NLTransliterationCandidate::getTransliteratedWord(*a2);
  NLMessageIntentRecognizer::extractMessageAndContext(&v29, &v26);
  NLMessageIntentDomainDetector::getCandidateIntentTypes(a1, &v26, &__p, &v24);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = v24;
  for (i = v25; v9 != i; v9 += 12)
  {
    LODWORD(v22) = *v9;
    std::unordered_map<std::string,std::string>::unordered_map(v23, (v9 + 2));
    MessageIntentType = NLMessageIntentCandidate::getMessageIntentType(&v22);
    v13 = a3[1];
    v12 = a3[2];
    if (v13 >= v12)
    {
      v15 = *a3;
      v16 = v13 - *a3;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
      }

      v19 = v12 - v15;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(a3, v20);
      }

      *(4 * v17) = MessageIntentType;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v21 = *a3;
      *a3 = 0;
      a3[1] = v14;
      a3[2] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v13 = MessageIntentType;
      v14 = (v13 + 4);
    }

    a3[1] = v14;
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v23);
  }

  v22 = &v24;
  std::vector<NLMessageIntentTypeWithMetadata>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v26.__r_.__value_.__r.__words[0] = &v29;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v26);
}

void sub_22CDCDE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = (v18 - 104);
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void NLMessageIntentRecognizer::extractMessageAndContext(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (*a1 == *(a1 + 8))
  {
    MEMORY[0x2318C02F0](&v11, "");
    MEMORY[0x2318C02F0](&__p, "");
  }

  else
  {
    MEMORY[0x2318C02F0](&v11, "");
    NLResult::getLemmaID(**a1, &v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v9;
    v4 = *(a1 + 8) - *a1;
    v5 = (v4 >> 4) + 1;
    for (i = v4 - 16; --v5 > 1; i -= 16)
    {
      NLResult::getLemmaID(*(*a1 + i), &v9);
      if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v9;
      }

      else
      {
        v7 = v9.__r_.__value_.__r.__words[0];
      }

      if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v9.__r_.__value_.__l.__size_;
      }

      std::string::append(&v11, v7, size);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      std::string::append(&v11, " ");
    }
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, &__p, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_22CDCE09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLMessageIntentRecognizer::getCandidateForIntentType@<X0>(uint64_t a1@<X0>, NLTransliterationCandidate **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  std::unordered_map<std::string,std::string>::unordered_map(v11, v14);
  NLMessageIntentTypeWithMetadata::NLMessageIntentTypeWithMetadata(&v12, a3, v11);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v11);
  v9 = v12;
  std::unordered_map<std::string,std::string>::unordered_map(v10, v13);
  NLMessageIntentRecognizer::getCandidateForIntentType(a1, a2, &v9, a4);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v10);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v13);
  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v14);
}

void sub_22CDCE1B8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v1 + 8);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 8);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v3 - 96);
  _Unwind_Resume(a1);
}

void NLMessageIntentRecognizer::getCandidateForIntentType(uint64_t a1@<X0>, NLTransliterationCandidate **a2@<X1>, NLMessageIntentCandidate *a3@<X2>, void *a4@<X8>)
{
  NLTransliterationCandidate::getTransliteratedWord(*a2);
  NLMessageConversation::getConversationTurns(*a2, &v40);
  v8 = (v41 - v40) >> 4;
  if (v8 >= 2)
  {
    *v32 = descending_timestamp;
    v9 = 126 - 2 * __clz(v8);
    if (v41 == v40)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,false>(v40, v41, v32, v10, 1);
  }

  NLMessageIntentRecognizer::extractMessageAndContext(&v40, &v38);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v39;
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v38;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  v12 = v32;
  std::string::basic_string[abi:ne200100](v32, size + 1);
  if (v32[23] < 0)
  {
    v12 = *v32;
  }

  if (size)
  {
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v37;
    }

    else
    {
      v13 = v37.__r_.__value_.__r.__words[0];
    }

    memmove(v12, v13, size);
  }

  *&v12[size] = 32;
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v36;
  }

  else
  {
    v14 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v36.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(v32, v14, v15);
  v17 = v16->__r_.__value_.__r.__words[0];
  v18 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
  v16->__r_.__value_.__r.__words[0] = 0;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  if ((v32[23] & 0x80000000) != 0)
  {
    operator delete(*v32);
  }

  MessageIntentType = NLMessageIntentCandidate::getMessageIntentType(a3);
  NLMessageIntentRecognizer::getIntentTypeString(MessageIntentType, v34);
  if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>((a1 + 144), v34))
  {
    memset(v32, 0, sizeof(v32));
    v33 = 1065353216;
    __str.__r_.__value_.__r.__words[0] = v34;
    v20 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 144), v34);
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::__move_assign((v20 + 5), v32);
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::~__hash_table(v32);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (MessageIntentType == 1)
  {
    NLMessageIntentCandidate::getAttributes(a3, v32);
    getUTF8StringFromCFString(kNLMessageIntentAttributeKeywordsKey, __p);
    v27[0] = __p;
    v21 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32, __p);
    if (*(v21 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v21[5], v21[6]);
    }

    else
    {
      __str = *(v21 + 5);
    }

    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v32);
    __p[0] = v34;
    v22 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 144), v34);
    v23 = std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(v22 + 5, (a1 + 208));
    __p[0] = v34;
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 144), v34);
    if (!v23)
    {
      if ((*(a1 + 207) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 192))
        {
LABEL_41:
          operator new();
        }
      }

      else if (*(a1 + 207))
      {
        goto LABEL_41;
      }

      operator new();
    }

    v24 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 144), v34);
    v27[0] = (a1 + 208);
    v25 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v24 + 5, (a1 + 208));
    (*(*v25[5] + 16))(__p);
    if (__p[1] != __p[0])
    {
      NLMessageIntentCandidate::getAttributes(*__p[0], v32);
      getUTF8StringFromCFString(kNLMessageIntentAttributeKeywordsKey, v27);
      v42 = v27;
      v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32, v27);
      std::string::operator=((v26 + 5), &__str);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      operator new();
    }

    *v32 = __p;
    std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](v32);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  operator delete(v17);
LABEL_52:
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v38.__r_.__value_.__r.__words[0] = &v40;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v38);
}

void sub_22CDCE814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  MEMORY[0x2318C0600](v54, 0x10F3C400A978A76);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](&a34);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v56 - 185) < 0)
  {
    operator delete(*(v56 - 208));
  }

  std::pair<std::string,std::string>::~pair(v56 - 184);
  *(v56 - 184) = v56 - 136;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100]((v56 - 184));
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<NLMessageIntentCandidate>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<NLMessageIntentCandidate>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void NLMessageIntentRecognizer::getCandidates(std::string *a1@<X0>, NLMessageConversation **a2@<X1>, uint64_t **a3@<X8>)
{
  NLMessageConversation::getConversationTurns(*a2, &v33);
  v4 = (v34 - v33) >> 4;
  if (v4 >= 2)
  {
    v25 = descending_timestamp;
    v5 = 126 - 2 * __clz(v4);
    if (v34 == v33)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,false>(v33, v34, &v25, v6, 1);
  }

  NLTransliterationCandidate::getTransliteratedWord(*a2);
  NLMessageIntentRecognizer::extractMessageAndContext(&v33, &v31);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v32;
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v29 = v31;
  }

  NLMessageIntentDomainDetector::getCandidateIntentTypes(a1, &v29, &v30.__r_.__value_.__l.__data_, &v27);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = v27;
  v15 = v28;
  if (v27 == v28)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    do
    {
      LODWORD(v25) = *v7;
      std::unordered_map<std::string,std::string>::unordered_map(v26, (v7 + 2));
      v22 = v25;
      std::unordered_map<std::string,std::string>::unordered_map(v23, v26);
      NLMessageIntentRecognizer::getCandidateForIntentType(a1, a2, &v22, v24);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v23);
      NLMessageIntentCandidate::getAttributes(&v25, v20);
      getUTF8StringFromCFString(kNLMessageIntentAttributeKeywordsKey, __p);
      v35 = __p;
      v8 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20, __p);
      if (*(v8 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, v8[5], v8[6]);
      }

      else
      {
        __str = *(v8 + 5);
      }

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v20);
      if (v24[1] != v24[0])
      {
        NLMessageIntentCandidate::getAttributes(*v24[0], v20);
        getUTF8StringFromCFString(kNLMessageIntentAttributeKeywordsKey, __p);
        v35 = __p;
        v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20, __p);
        std::string::operator=((v9 + 5), &__str);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        operator new();
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v20[0] = v24;
      std::vector<std::unique_ptr<NLMessageIntentCandidate>>::__destroy_vector::operator()[abi:ne200100](v20);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v26);
      v7 += 12;
    }

    while (v7 != v15);
    v10 = *a3;
    v11 = a3[1];
  }

  v12 = v11 - v10;
  if (v12 > 1)
  {
    v20[0] = greater_than_key;
    v13 = 126 - 2 * __clz(v12);
    if (v11 == v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*,false>(v10, v11, v20, v14, 1);
  }

  v25 = &v27;
  std::vector<NLMessageIntentTypeWithMetadata>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v31.__r_.__value_.__r.__words[0] = &v33;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&v31);
}

void sub_22CDCEF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (*(v50 - 185) < 0)
  {
    operator delete(*(v50 - 208));
  }

  std::pair<std::string,std::string>::~pair(v50 - 184);
  *(v50 - 184) = v50 - 136;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100]((v50 - 184));
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void NLMessageIntentDomainDetector::~NLMessageIntentDomainDetector(void **this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::~__hash_table((this + 13));
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table((this + 8));
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,false>(uint64_t *a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 1);
  v95 = a2 - 1;
  v97 = (a2 - 3);
  v98 = (a2 - 2);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if ((*a3)(v8, v9))
        {
          v88 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v88;
          v89 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v89;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v78 = (*a3)(v9 + 2, v9);
      v79 = (*a3)(v8, v9 + 2);
      if (v78)
      {
        v81 = v9 + 1;
        v80 = *v9;
        if (v79)
        {
          *v9 = *(a2 - 2);
        }

        else
        {
          v93 = *(v9 + 1);
          v9[3] = v9[1];
          v81 = v9 + 3;
          v9[2] = v80;
          *v9 = v93;
          if (!(*a3)(v8, v9 + 2))
          {
            return;
          }

          v80 = v9[2];
          v9[2] = *(a2 - 2);
        }

        *(a2 - 2) = v80;
      }

      else
      {
        if (!v79)
        {
          return;
        }

        v90 = v9[2];
        v9[2] = *(a2 - 2);
        *(a2 - 2) = v90;
        v91 = v9[3];
        v95 = v9 + 3;
        v9[3] = *(a2 - 1);
        *(a2 - 1) = v91;
        if (!(*a3)(v9 + 2, v9))
        {
          return;
        }

        v92 = *v9;
        *v9 = v9[2];
        v9[2] = v92;
        v81 = v9 + 1;
      }

      v94 = *v81;
      *v81 = *v95;
      *v95 = v94;
      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a3);
      if ((*a3)(v8, v9 + 6))
      {
        v82 = v9[6];
        v9[6] = *(a2 - 2);
        *(a2 - 2) = v82;
        v83 = v9[7];
        v9[7] = *(a2 - 1);
        *(a2 - 1) = v83;
        if ((*a3)(v9 + 6, v9 + 4))
        {
          v84 = *(v9 + 2);
          *(v9 + 2) = *(v9 + 3);
          *(v9 + 3) = v84;
          if ((*a3)(v9 + 4, v9 + 2))
          {
            v85 = *(v9 + 1);
            *(v9 + 1) = *(v9 + 2);
            *(v9 + 2) = v85;
            if ((*a3)(v9 + 2, v9))
            {
              v86 = *v9;
              *v9 = *(v9 + 1);
              *(v9 + 1) = v86;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,std::shared_ptr<NLMessageConversationTurn>*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    v15 = *a3;
    v100 = v11;
    if (v12 >= 0x81)
    {
      v16 = v15(&v9[2 * (v12 >> 1)], v9);
      v17 = (*a3)(v8, v14);
      v96 = v13;
      if (v16)
      {
        v19 = a1 + 1;
        v18 = *a1;
        if (v17)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        v32 = a1[1];
        *a1 = *v14;
        v14[1] = v32;
        v19 = v14 + 1;
        *v14 = v18;
        if ((*a3)(v8, v14))
        {
          v18 = *v14;
          *v14 = *v8;
LABEL_27:
          *v8 = v18;
          v26 = a2 - 1;
LABEL_28:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(a2 - 2) = v24;
        v26 = v14 + 1;
        v25 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, a1))
        {
          v27 = *a1;
          *a1 = *v14;
          v19 = a1 + 1;
          *v14 = v27;
          goto LABEL_28;
        }
      }

      v34 = v14 - 2;
      v35 = (*a3)(v14 - 2, a1 + 2);
      v36 = (*a3)(v98, v14 - 2);
      if (v35)
      {
        v37 = a1[2];
        v38 = a1 + 3;
        if (v36)
        {
          a1[2] = *v98;
          *v98 = v37;
          v39 = a2 - 3;
          v40 = v96;
          goto LABEL_40;
        }

        v45 = *v38;
        *(a1 + 1) = *v34;
        *(v14 - 1) = v45;
        v38 = v14 - 1;
        *v34 = v37;
        v40 = v96;
        if ((*a3)(v98, v14 - 2))
        {
          v46 = *v34;
          *v34 = *v98;
          *v98 = v46;
          v39 = a2 - 3;
LABEL_40:
          v47 = *v38;
          *v38 = *v39;
          *v39 = v47;
        }
      }

      else
      {
        v40 = v96;
        if (v36)
        {
          v41 = *v34;
          *v34 = *(a2 - 4);
          *(a2 - 4) = v41;
          v39 = v14 - 1;
          v42 = *(v14 - 1);
          *(v14 - 1) = *(a2 - 3);
          *(a2 - 3) = v42;
          if ((*a3)(v14 - 2, a1 + 2))
          {
            v43 = a1[2];
            a1[2] = *v34;
            *v34 = v43;
            v38 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      v48 = v40 + 1;
      v49 = &a1[2 * v40 + 2];
      v50 = (*a3)(v49, a1 + 4);
      v51 = (*a3)(v97, v49);
      v52 = v8;
      if (v50)
      {
        v53 = a1[4];
        v54 = a1 + 5;
        if (v51)
        {
          v55 = a2 - 3;
          a1[4] = *v97;
          goto LABEL_49;
        }

        v60 = *v54;
        *(a1 + 2) = *v49;
        v49[1] = v60;
        v54 = v49 + 1;
        *v49 = v53;
        if ((*a3)(v97, v49))
        {
          v53 = *v49;
          v55 = a2 - 3;
          *v49 = *v97;
LABEL_49:
          *v55 = v53;
          v58 = a2 - 5;
LABEL_50:
          v61 = *v54;
          *v54 = *v58;
          *v58 = v61;
        }
      }

      else if (v51)
      {
        v56 = *v49;
        *v49 = *(a2 - 6);
        *(a2 - 6) = v56;
        v58 = v49 + 1;
        v57 = v49[1];
        v49[1] = *(a2 - 5);
        *(a2 - 5) = v57;
        if ((*a3)(v49, a1 + 4))
        {
          v59 = a1[4];
          a1[4] = *v49;
          *v49 = v59;
          v54 = a1 + 5;
          goto LABEL_50;
        }
      }

      v62 = (*a3)(v14, v14 - 2);
      v63 = (*a3)(v49, v14);
      if (v62)
      {
        v64 = *v34;
        v8 = v52;
        if (v63)
        {
          *v34 = *v49;
          *v49 = v64;
          v65 = v14 - 1;
          goto LABEL_59;
        }

        v68 = *v14;
        v14[1] = *(v14 - 1);
        *v14 = v64;
        *v34 = v68;
        if ((*a3)(v49, v14))
        {
          v69 = *v14;
          *v14 = *v49;
          *v49 = v69;
          v65 = v14 + 1;
LABEL_59:
          v70 = &a1[2 * v48];
          v71 = *v65;
          *v65 = v70[1];
          v70[1] = v71;
        }
      }

      else
      {
        v8 = v52;
        if (v63)
        {
          v66 = *v14;
          *v14 = *v49;
          *v49 = v66;
          if ((*a3)(v14, v14 - 2))
          {
            v67 = *v34;
            *v34 = *v14;
            v65 = v14 - 1;
            *v14 = v67;
            v48 = v96;
            goto LABEL_59;
          }
        }
      }

      v72 = *a1;
      *a1 = *v14;
      v23 = a1 + 1;
      *v14 = v72;
      v31 = v14 + 1;
LABEL_61:
      v73 = *v23;
      *v23 = *v31;
      *v31 = v73;
      goto LABEL_62;
    }

    v20 = v15(v9, &v9[2 * (v12 >> 1)]);
    v21 = (*a3)(v8, v9);
    if (v20)
    {
      v23 = v14 + 1;
      v22 = *v14;
      if (v21)
      {
        *v14 = *v8;
LABEL_37:
        *v8 = v22;
        v31 = a2 - 1;
        goto LABEL_61;
      }

      v44 = v14[1];
      *v14 = *v9;
      v9[1] = v44;
      v23 = v9 + 1;
      *v9 = v22;
      if ((*a3)(v8, v9))
      {
        v22 = *v9;
        *v9 = *v8;
        goto LABEL_37;
      }
    }

    else if (v21)
    {
      v28 = *v9;
      *v9 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = v9[1];
      v9[1] = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v9, v14))
      {
        v30 = *v14;
        *v14 = *v9;
        *v9 = v30;
        v23 = v14 + 1;
        v31 = v9 + 1;
        goto LABEL_61;
      }
    }

LABEL_62:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 2, a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NLMessageConversationTurn> *,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&)>(a1, a2, a3);
      v75 = v100;
      goto LABEL_69;
    }

    v74 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NLMessageConversationTurn> *,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&)>(a1, a2, a3);
    v75 = v100;
    if ((v76 & 1) == 0)
    {
      goto LABEL_67;
    }

    v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(a1, v74, a3);
    v9 = v74 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(v74 + 2, a2, a3))
    {
      a4 = -v100;
      a2 = v74;
      if (v77)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v100 + 1;
    if (!v77)
    {
LABEL_67:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,false>(a1, v74, a3, -v100, a5 & 1);
      v9 = v74 + 2;
LABEL_69:
      a5 = 0;
      a4 = -v75;
      goto LABEL_2;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,0>(v9, v9 + 2, v9 + 4, v8, a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = a1 + 1;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 1;
    v18 = a1[1];
    a1[1] = a2[1];
    a2[1] = v18;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 1;
    v15 = a2[1];
    a2[1] = a3[1];
    a3[1] = v15;
    if ((*a5)(a2, a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 1;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = a3[1];
    a3[1] = a4[1];
    a4[1] = v22;
    result = (*a5)(a3, a2);
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      result = (*a5)(a2, a1);
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = a1[1];
        a1[1] = a2[1];
        a2[1] = v26;
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 16);
    if (a1 + 16 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if ((*a3)(v5, v9))
        {
          v18 = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v10 = v7;
          while (1)
          {
            v11 = a1 + v10;
            v12 = *(a1 + v10);
            *v11 = 0;
            *(v11 + 8) = 0;
            v13 = *(a1 + v10 + 24);
            *(v11 + 16) = v12;
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (!v10)
            {
              break;
            }

            v14 = (*a3)(&v18, a1 + v10 - 16);
            v10 -= 16;
            if ((v14 & 1) == 0)
            {
              v15 = a1 + v10 + 16;
              goto LABEL_12;
            }
          }

          v15 = a1;
LABEL_12:
          v16 = v18;
          v18 = 0uLL;
          v17 = *(v15 + 8);
          *v15 = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
          }
        }

        v5 = (v8 + 16);
        v7 += 16;
      }

      while (v8 + 16 != a2);
    }
  }
}

void sub_22CDCFE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 1;
    if (a1 + 1 != a2)
    {
      v7 = a1 - 1;
      do
      {
        v8 = v4;
        v4 = v5;
        if ((*a3)(v5, v8))
        {
          v15 = *v4;
          *v4 = 0;
          *(v4 + 1) = 0;
          v9 = v7;
          do
          {
            v10 = v9[1];
            *(v9 + 2) = 0;
            *(v9 + 3) = 0;
            v11 = *(v9 + 5);
            v9[2] = v10;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            v12 = (*a3)(&v15, v9--);
          }

          while ((v12 & 1) != 0);
          v13 = v15;
          v15 = 0uLL;
          v14 = *(v9 + 5);
          v9[2] = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (*(&v15 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
          }
        }

        v5 = v4 + 1;
        ++v7;
      }

      while (v4 + 1 != a2);
    }
  }
}

void sub_22CDCFF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NLMessageConversationTurn> *,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&)>(__int128 *a1, void *a2, uint64_t (**a3)(__int128 *, void *))
{
  v4 = a2;
  v17 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if ((*a3)(&v17, a2 - 2))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v17, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v17, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = v6[1];
    v6[1] = v4[1];
    v4[1] = v10;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v17, v6));
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  v11 = (v6 - 2);
  if (v6 - 2 != a1)
  {
    v12 = *v11;
    *v11 = 0;
    *(v6 - 1) = 0;
    v13 = *(a1 + 1);
    *a1 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = v17;
  v17 = 0uLL;
  v15 = *(v6 - 1);
  *(v6 - 1) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  return v6;
}

void sub_22CDD0094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<NLMessageConversationTurn> *,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v19 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  do
  {
    v7 = (*a3)(&a1[++v6], &v19);
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v19) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v19));
  }

  v9 = &a1[v6];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      v12 = *(v9 + 1);
      *(v9 + 1) = *(v10 + 1);
      *(v10 + 1) = v12;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v19) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v19));
    }

    while (v9 < v10);
  }

  v13 = v9 - 1;
  if (v9 - 1 != a1)
  {
    v14 = *v13;
    *v13 = 0;
    *(v9 - 1) = 0;
    v15 = *(a1 + 1);
    *a1 = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v16 = v19;
  v19 = 0uLL;
  v17 = *(v9 - 1);
  *(v9 - 1) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  return v9 - 1;
}

void sub_22CDD0230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = (*a3)(a1 + 2, a1);
      v15 = (*a3)(a2 - 2, a1 + 2);
      if (v14)
      {
        v17 = a1 + 1;
        v16 = *a1;
        if (v15)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v30 = *(a1 + 1);
          a1[3] = a1[1];
          v17 = a1 + 3;
          a1[2] = v16;
          *a1 = v30;
          if (!(*a3)(a2 - 2, a1 + 2))
          {
            return 1;
          }

          v16 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v16;
        v25 = a2 - 1;
      }

      else
      {
        if (!v15)
        {
          return 1;
        }

        v23 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        v25 = a1 + 3;
        v24 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v24;
        if (!(*a3)(a1 + 2, a1))
        {
          return 1;
        }

        v26 = *a1;
        *a1 = a1[2];
        a1[2] = v26;
        v17 = a1 + 1;
      }

      v31 = *v17;
      *v17 = *v25;
      *v25 = v31;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*a3)(a2 - 2, a1 + 6))
        {
          v9 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)(a1 + 6, a1 + 4))
          {
            v11 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v11;
            if ((*a3)(a1 + 4, a1 + 2))
            {
              v12 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v12;
              if ((*a3)(a1 + 2, a1))
              {
                v13 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v13;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v18 = a1 + 4;
  v19 = (*a3)(a1 + 2, a1);
  v20 = (*a3)(a1 + 4, a1 + 2);
  if (v19)
  {
    v22 = a1 + 1;
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[4];
    }

    else
    {
      v32 = *(a1 + 1);
      a1[3] = a1[1];
      v22 = a1 + 3;
      a1[2] = v21;
      *a1 = v32;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_35;
      }

      v21 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v21;
    v28 = a1 + 5;
    goto LABEL_34;
  }

  if (v20)
  {
    v27 = *(a1 + 1);
    *(a1 + 1) = *(a1 + 2);
    *(a1 + 2) = v27;
    if ((*a3)(a1 + 2, a1))
    {
      v28 = a1 + 3;
      v29 = *a1;
      *a1 = a1[2];
      a1[2] = v29;
      v22 = a1 + 1;
LABEL_34:
      v33 = *v22;
      *v22 = *v28;
      *v28 = v33;
    }
  }

LABEL_35:
  v34 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    if ((*a3)(v34, v18))
    {
      v46 = *v34;
      *v34 = 0;
      v34[1] = 0;
      v37 = v35;
      while (1)
      {
        v38 = a1 + v37;
        v39 = *(a1 + v37 + 32);
        *(v38 + 4) = 0;
        *(v38 + 5) = 0;
        v40 = *(a1 + v37 + 56);
        *(v38 + 3) = v39;
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v37 == -32)
        {
          break;
        }

        v41 = (*a3)(&v46, (a1 + v37 + 16));
        v37 -= 16;
        if ((v41 & 1) == 0)
        {
          v42 = a1 + v37 + 48;
          goto LABEL_45;
        }
      }

      v42 = a1;
LABEL_45:
      v43 = v46;
      v46 = 0uLL;
      v44 = *(v42 + 8);
      *v42 = v43;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (*(&v46 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
      }

      if (++v36 == 8)
      {
        return v34 + 2 == a2;
      }
    }

    v18 = v34;
    v35 += 16;
    v34 += 2;
    if (v34 == a2)
    {
      return 1;
    }
  }
}

void sub_22CDD0670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*,std::shared_ptr<NLMessageConversationTurn>*>(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int (**a4)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(a1, a4, v8, v11--);
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
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 8);
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(uint64_t a1, unsigned int (**a2)(__int128 *, uint64_t), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = (a4 - a1) >> 3;
      v11 = v10 + 1;
      v12 = (a1 + 16 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, (v12 + 1)))
      {
        ++v12;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v20 = *v5;
        *v5 = 0;
        *(v5 + 1) = 0;
        do
        {
          v14 = v12;
          v15 = *v12;
          *v12 = 0;
          *(v12 + 1) = 0;
          v16 = *(v5 + 1);
          *v5 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 16 * v17);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if ((*a2)((a1 + 16 * v17), (v12 + 1)))
          {
            ++v12;
          }

          else
          {
            v11 = v17;
          }

          v5 = v14;
        }

        while (!(*a2)(v12, &v20));
        v18 = v20;
        v20 = 0uLL;
        v19 = *(v14 + 1);
        *v14 = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (*(&v20 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
        }
      }
    }
  }
}

void sub_22CDD0914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = *(v9 + 1);
      *v10 = v8;
      *(v10 + 1) = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = *(v9 + 1);
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 1);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_22CDD0A24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(__int128 *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 2;
      if ((*a2)((v8 + 1), (v8 + 2)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    v13 = *v9;
    *v9 = 0;
    *(v9 + 1) = 0;
    v14 = *(a1 + 1);
    *a1 = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<NLMessageConversationTurn> const&,std::shared_ptr<NLMessageConversationTurn> const&),std::shared_ptr<NLMessageConversationTurn>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*a3)(v8, (a2 - 16)))
    {
      v15 = *v9;
      *v9 = 0;
      *(v9 + 1) = 0;
      do
      {
        v10 = v8;
        v11 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v12 = *(v9 + 1);
        *v9 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v9 = v10;
      }

      while (((*a3)(v8, &v15) & 1) != 0);
      v13 = v15;
      v15 = 0uLL;
      v14 = *(v10 + 1);
      *v10 = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        if (*(&v15 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
        }
      }
    }
  }
}

void sub_22CDD0BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22CDD0E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22CDD12C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<NLAbstractIntentRecognizer>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<NLAbstractIntentRecognizer>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 8);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v49 = (*a3)(v11 + 1, v11);
        v50 = (*a3)(v8, v11 + 1);
        if (v49)
        {
          v51 = *v11;
          if (v50)
          {
            goto LABEL_78;
          }

          *v11 = v11[1];
          v11[1] = v51;
          if (!(*a3)(v8, v11 + 1))
          {
            return result;
          }

          v51 = v11[1];
          v11[1] = *v8;
LABEL_79:
          *v8 = v51;
          return result;
        }

        if (!v50)
        {
          return result;
        }

        v57 = v11[1];
        v11[1] = *v8;
        *v8 = v57;
        goto LABEL_104;
      case 4uLL:
        v54 = (*a3)(v11 + 1, v11);
        v55 = (*a3)(v11 + 2, v11 + 1);
        if (v54)
        {
          v56 = *v11;
          if (v55)
          {
            *v11 = v11[2];
            v11[2] = v56;
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v56;
            if ((*a3)(v11 + 2, v11 + 1))
            {
              *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
            }
          }
        }

        else if (v55)
        {
          *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
          if ((*a3)(v11 + 1, v11))
          {
            *v11 = vextq_s8(*v11, *v11, 8uLL);
          }
        }

        if (!(*a3)(v8, v11 + 2))
        {
          return result;
        }

        v58 = v11[2];
        v11[2] = *v8;
        *v8 = v58;
        if (!(*a3)(v11 + 2, v11 + 1))
        {
          return result;
        }

        *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
LABEL_104:
        if ((*a3)(v11 + 1, v11))
        {
          result = vextq_s8(*v11, *v11, 8uLL);
          *v11 = result;
        }

        return result;
      case 5uLL:

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
        return result;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*,std::unique_ptr<NLMessageIntentCandidate>*>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(&v11[v14 >> 1], v11);
      v18 = (*a3)(a2 - 1, v15);
      if (v17)
      {
        v19 = *a1;
        if (v18)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        *a1 = *v15;
        *v15 = v19;
        if ((*a3)(a2 - 1, v15))
        {
          v19 = *v15;
          *v15 = *v8;
LABEL_27:
          *v8 = v19;
        }
      }

      else if (v18)
      {
        v23 = *v15;
        *v15 = *v8;
        *v8 = v23;
        if ((*a3)(v15, a1))
        {
          v24 = *a1;
          *a1 = *v15;
          *v15 = v24;
        }
      }

      v27 = v15 - 1;
      v28 = (*a3)(v15 - 1, a1 + 1);
      v29 = (*a3)(a2 - 2, v15 - 1);
      if (v28)
      {
        v30 = a1[1];
        if (v29)
        {
          a1[1] = *v9;
          goto LABEL_39;
        }

        a1[1] = *v27;
        *v27 = v30;
        if ((*a3)(a2 - 2, v15 - 1))
        {
          v30 = *v27;
          *v27 = *v9;
LABEL_39:
          *v9 = v30;
        }
      }

      else if (v29)
      {
        v31 = *v27;
        *v27 = *v9;
        *v9 = v31;
        if ((*a3)(v15 - 1, a1 + 1))
        {
          v32 = a1[1];
          a1[1] = *v27;
          *v27 = v32;
        }
      }

      v33 = (*a3)(v15 + 1, a1 + 2);
      v34 = (*a3)(a2 - 3, v15 + 1);
      if (v33)
      {
        v35 = a1[2];
        if (v34)
        {
          a1[2] = *v10;
          goto LABEL_48;
        }

        a1[2] = v15[1];
        v15[1] = v35;
        if ((*a3)(a2 - 3, v15 + 1))
        {
          v35 = v15[1];
          v15[1] = *v10;
LABEL_48:
          *v10 = v35;
        }
      }

      else if (v34)
      {
        v36 = v15[1];
        v15[1] = *v10;
        *v10 = v36;
        if ((*a3)(v15 + 1, a1 + 2))
        {
          v37 = a1[2];
          a1[2] = v15[1];
          v15[1] = v37;
        }
      }

      v38 = (*a3)(v15, v15 - 1);
      v39 = (*a3)(v15 + 1, v15);
      if (v38)
      {
        v40 = *v27;
        if (v39)
        {
          v41 = *v15;
          *v27 = v15[1];
          v15[1] = v40;
LABEL_58:
          v45 = *a1;
          *a1 = v41;
          *v15 = v45;
          goto LABEL_59;
        }

        *v27 = *v15;
        *v15 = v40;
        v44 = (*a3)(v15 + 1, v15);
        v41 = *v15;
        if (!v44)
        {
          goto LABEL_58;
        }

        v43 = v15[1];
        *v15 = v43;
        v15[1] = v41;
      }

      else
      {
        v41 = *v15;
        if (!v39)
        {
          goto LABEL_58;
        }

        *v15 = v15[1];
        v15[1] = v41;
        v42 = (*a3)(v15, v15 - 1);
        v41 = *v15;
        if (!v42)
        {
          goto LABEL_58;
        }

        v43 = *v27;
        *v27 = v41;
        *v15 = v43;
      }

      v41 = v43;
      goto LABEL_58;
    }

    v20 = v16(v11, &v11[v14 >> 1]);
    v21 = (*a3)(a2 - 1, a1);
    if (v20)
    {
      v22 = *v15;
      if (v21)
      {
        *v15 = *v8;
LABEL_36:
        *v8 = v22;
        goto LABEL_59;
      }

      *v15 = *a1;
      *a1 = v22;
      if ((*a3)(a2 - 1, a1))
      {
        v22 = *a1;
        *a1 = *v8;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v25 = *a1;
      *a1 = *v8;
      *v8 = v25;
      if ((*a3)(a1, v15))
      {
        v26 = *v15;
        *v15 = *a1;
        *a1 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 1, a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::unique_ptr<NLMessageIntentCandidate> *,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v46 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::unique_ptr<NLMessageIntentCandidate> *,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&)>(a1, a2, a3);
    if ((v47 & 1) == 0)
    {
      goto LABEL_64;
    }

    v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(a1, v46, a3);
    v11 = v46 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(v46 + 1, a2, a3))
    {
      a4 = -v13;
      a2 = v46;
      if (v48)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v48)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*,false>(a1, v46, a3, -v13, a5 & 1);
      v11 = v46 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)(a2 - 1, v11))
  {
    v51 = *v11;
LABEL_78:
    *v11 = *v8;
    goto LABEL_79;
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v5;
        result = (*a3)(v5, v9);
        if (result)
        {
          v10 = *v8;
          *v8 = 0;
          v17 = v10;
          v11 = v7;
          while (1)
          {
            v12 = *(v4 + v11);
            *(v4 + v11) = 0;
            std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100]((v4 + v11 + 8), v12);
            if (!v11)
            {
              break;
            }

            v13 = (*a3)(&v17, v4 + v11 - 8);
            v11 -= 8;
            if ((v13 & 1) == 0)
            {
              v14 = (v4 + v11 + 8);
              goto LABEL_10;
            }
          }

          v14 = v4;
LABEL_10:
          v15 = v17;
          v17 = 0;
          result = std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v14, v15);
          v16 = v17;
          v17 = 0;
          if (v16)
          {
            std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v16 + 8);
            result = MEMORY[0x2318C0600](v16, 0x10A0C4042D94C91);
          }
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

void sub_22CDD1ECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (result != a2)
  {
    v4 = result;
    for (i = result + 1; v4 + 1 != a2; i = v4 + 1)
    {
      v7 = v4;
      v4 = i;
      result = (*a3)(i, v7);
      if (result)
      {
        v8 = *v4;
        *v4 = 0;
        v14 = v8;
        v9 = v4;
        do
        {
          v10 = *(v9 - 1);
          *(v9 - 1) = 0;
          std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v9, v10);
          v11 = (*a3)(&v14, v9 - 2);
          --v9;
        }

        while ((v11 & 1) != 0);
        v12 = v14;
        v14 = 0;
        result = std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v9, v12);
        v13 = v14;
        v14 = 0;
        if (v13)
        {
          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v13 + 8);
          result = MEMORY[0x2318C0600](v13, 0x10A0C4042D94C91);
        }
      }
    }
  }

  return result;
}

void sub_22CDD1FD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::unique_ptr<NLMessageIntentCandidate> *,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v6 = *a1;
  *a1 = 0;
  v16 = v6;
  if ((*a3)(&v16, a2 - 1))
  {
    v7 = a1;
    do
    {
      ++v7;
    }

    while (((*a3)(&v16, v7) & 1) == 0);
  }

  else
  {
    v8 = a1 + 1;
    do
    {
      v7 = v8;
      if (v8 >= v4)
      {
        break;
      }

      v9 = (*a3)(&v16, v8);
      v8 = v7 + 1;
    }

    while (!v9);
  }

  if (v7 < v4)
  {
    do
    {
      --v4;
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  while (v7 < v4)
  {
    v10 = *v7;
    *v7 = *v4;
    *v4 = v10;
    do
    {
      ++v7;
    }

    while (!(*a3)(&v16, v7));
    do
    {
      --v4;
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  v11 = v7 - 1;
  if (v7 - 1 != a1)
  {
    v12 = *v11;
    *v11 = 0;
    std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](a1, v12);
  }

  v13 = v16;
  v16 = 0;
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v7 - 1, v13);
  v14 = v16;
  v16 = 0;
  if (v14)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v14 + 8);
    MEMORY[0x2318C0600](v14, 0x10A0C4042D94C91);
  }

  return v7;
}

void sub_22CDD2154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::unique_ptr<NLMessageIntentCandidate> *,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0;
  v7 = *a1;
  *a1 = 0;
  v18 = v7;
  do
  {
    v8 = (*a3)(&a1[++v6], &v18);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v18) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v18));
  }

  if (v9 >= a2)
  {
    v13 = v9 - 1;
  }

  else
  {
    v10 = &a1[v6];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        ++v10;
      }

      while (((*a3)(v10, &v18) & 1) != 0);
      do
      {
        --v11;
      }

      while (!(*a3)(v11, &v18));
    }

    while (v10 < v11);
    v13 = v10 - 1;
  }

  if (v13 != a1)
  {
    v14 = *v13;
    *v13 = 0;
    std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](a1, v14);
  }

  v15 = v18;
  v18 = 0;
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v13, v15);
  v16 = v18;
  v18 = 0;
  if (v16)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v16 + 8);
    MEMORY[0x2318C0600](v16, 0x10A0C4042D94C91);
  }

  return v13;
}

void sub_22CDD22F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v32 = a1[2];
        a1[2] = *v17;
        *v17 = v32;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v25 = *v22;
      *v22 = 0;
      v34 = v25;
      v26 = v23;
      while (1)
      {
        v27 = *(a1 + v26 + 16);
        *(a1 + v26 + 16) = 0;
        std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100]((a1 + v26 + 24), v27);
        if (v26 == -16)
        {
          break;
        }

        v28 = (*a3)(&v34, (a1 + v26 + 8));
        v26 -= 8;
        if ((v28 & 1) == 0)
        {
          v29 = (a1 + v26 + 24);
          goto LABEL_40;
        }
      }

      v29 = a1;
LABEL_40:
      v30 = v34;
      v34 = 0;
      std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v29, v30);
      v31 = v34;
      v34 = 0;
      if (v31)
      {
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v31 + 8);
        MEMORY[0x2318C0600](v31, 0x10A0C4042D94C91);
      }

      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

void sub_22CDD2710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*,std::unique_ptr<NLMessageIntentCandidate>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        *a1 = 0;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(a1, a4, v8);
        v17 = v16;
        if (v14 == v16)
        {
          std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v16, v15);
        }

        else
        {
          v18 = *v14;
          *v14 = 0;
          std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v16, v18);
          std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v14, v15);
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_22CDD28A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(uint64_t result, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, v12 + 1))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(v12, v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        *v5 = 0;
        v20 = v14;
        do
        {
          v15 = v12;
          v16 = *v12;
          *v12 = 0;
          std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v5, v16);
          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (v6 + 8 * v17);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if ((*a2)((v6 + 8 * v17), v12 + 1))
          {
            ++v12;
          }

          else
          {
            v11 = v17;
          }

          v5 = v15;
        }

        while (!(*a2)(v12, &v20));
        v18 = v20;
        v20 = 0;
        result = std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v15, v18);
        v19 = v20;
        v20 = 0;
        if (v19)
        {
          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v19 + 8);
          return MEMORY[0x2318C0600](v19, 0x10A0C4042D94C91);
        }
      }
    }
  }

  return result;
}

void sub_22CDD2A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(uint64_t *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 2;
      if ((*a2)((v8 + 1), (v8 + 2)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    *v9 = 0;
    std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](a1, v13);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t *std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::unique_ptr<NLMessageIntentCandidate> const&,std::unique_ptr<NLMessageIntentCandidate> const&),std::unique_ptr<NLMessageIntentCandidate>*>(uint64_t *result, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = &result[v4 >> 1];
    v9 = (a2 - 8);
    result = (*a3)(v8, a2 - 8);
    if (result)
    {
      v10 = *v9;
      *v9 = 0;
      v15 = v10;
      do
      {
        v11 = v8;
        v12 = *v8;
        *v8 = 0;
        std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v9, v12);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = &v6[v7];
        v9 = v11;
      }

      while (((*a3)(v8, &v15) & 1) != 0);
      v13 = v15;
      v15 = 0;
      result = std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](v11, v13);
      v14 = v15;
      v15 = 0;
      if (v14)
      {
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v14 + 8);
        return MEMORY[0x2318C0600](v14, 0x10A0C4042D94C91);
      }
    }
  }

  return result;
}

void sub_22CDD2BEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NLMessageIntentCandidate>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t NL::ParseFormatter::ParseFormatter(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = &unk_28400E1B0;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  NL::DateFormatter::DateFormatter(a1 + 104);
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  nlp::CFScopedPtr<__CFArray *>::reset((a1 + 56), Mutable);
  v9 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
  nlp::CFScopedPtr<__CFArray *>::reset((a1 + 64), v9);
  v10 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  nlp::CFScopedPtr<__CFDictionary *>::reset((a1 + 72), v10);
  v11 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  nlp::CFScopedPtr<__CFDictionary *>::reset((a1 + 80), v11);
  v12 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  nlp::CFScopedPtr<__CFDictionary *>::reset((a1 + 88), v12);
  NL::ParseFormatter::reset(a1);
  return a1;
}

void sub_22CDD2D7C(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFDictionary *>::reset(v2 + 6, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(v2 + 5, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(v4, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(v2 + 3, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(v3, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v2, 0);
  v6 = *(v1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void NL::ParseFormatter::reset(const void **this)
{
  nlp::CFScopedPtr<__CFString const*>::reset(this + 5, &stru_284010170);
  *(this + 12) = 0;
  v2 = this[7];
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  v3 = this[8];
  if (v3)
  {
    CFArrayRemoveAllValues(v3);
  }

  v4 = this[9];
  if (v4)
  {
    CFDictionaryRemoveAllValues(v4);
  }

  v5 = this[10];
  if (v5)
  {
    CFDictionaryRemoveAllValues(v5);
  }

  v6 = this[11];
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
  }

  *(this + 24) = *(this[1] + 10);
}

void NL::ParseFormatter::~ParseFormatter(const void **this)
{
  *this = &unk_28400E1B0;
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 17, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 16, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 15, 0);
  v2 = this[14];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  nlp::CFScopedPtr<__CFDictionary *>::reset(this + 11, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 7, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 5, 0);
  v3 = this[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  NL::ParseFormatter::~ParseFormatter(this);

  JUMPOUT(0x2318C0600);
}

__CFDictionary *NL::ParseFormatter::copyFormattedResult(NL::ParseFormatter *this, char a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = Mutable;
  if (!Mutable)
  {
    return v6;
  }

  CFDictionarySetValue(Mutable, @"String", *(this + 5));
  key = 0;
  v7 = *(this + 7);
  if (v7 && CFArrayGetCount(v7))
  {
    v8 = *(this + 7);
    if (v8 && CFArrayGetCount(*(this + 7)))
    {
      if (CFArrayGetCount(v8) == 1)
      {
        v9 = CFStringCreateByCombiningStrings(v4, v8, &stru_284010170);
      }

      else
      {
        v9 = CFStringCreateMutable(v4, 0);
        Count = CFArrayGetCount(v8);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            if (CFStringGetLength(v9))
            {
              CFStringAppend(v9, @" || ");
            }

            CFStringAppend(v9, @"(");
            ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
            CFStringAppend(v9, ValueAtIndex);
            CFStringAppend(v9, @""));
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    key = v9;
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

  NL::QueryTokenizer::description(*(this + 3), &__p);
  CFStringFromString = createCFStringFromString(&__p);
  v9 = CFStringFromString;
  key = CFStringFromString;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (CFStringFromString)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v9)
  {
LABEL_45:
    v9 = &stru_284010170;
    key = &stru_284010170;
  }

LABEL_10:
  if (CFPreferencesGetAppBooleanValue(@"NLSearchEnableLogging", *MEMORY[0x277CBF008], 0))
  {
    v11 = _nlpDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      NL::ParseFormatter::copyFormattedResult(v9, v11);
    }
  }

  CFDictionarySetValue(v6, @"Parse", v9);
  v12 = *(this + 11);
  if (v12 && CFDictionaryGetCount(v12))
  {
    CFDictionarySetValue(v6, @"ResultModifier", *(this + 11));
  }

  v13 = CFNumberCreate(v4, kCFNumberSInt32Type, this + 48);
  __p.__r_.__value_.__r.__words[0] = v13;
  if (v13)
  {
    CFDictionarySetValue(v6, @"Confidence", v13);
  }

  if ((a2 & 4) != 0)
  {
    v14 = *(this + 8);
    if (v14)
    {
      if (!CFArrayGetCount(v14))
      {
        v15 = CFAttributedStringCreate(v4, *(this + 5), 0);
        valuePtr = v15;
        if (v15)
        {
          CFArrayAppendValue(*(this + 8), v15);
          CFRelease(v15);
        }
      }

      Copy = CFArrayCreateCopy(v4, *(this + 8));
      valuePtr = Copy;
      if (Copy)
      {
        CFDictionarySetValue(v6, @"AttributedInput", Copy);
        CFRelease(Copy);
      }
    }
  }

  if ((a2 & 2) != 0)
  {
    v17 = *(this + 9);
    if (v17)
    {
      if (*(this + 12) >= 1)
      {
        v18 = key;
        v19 = CFDictionaryContainsKey(*(this + 9), key);
        v17 = *(this + 9);
        if (!v19)
        {
          valuePtr = CFDictionaryGetCount(*(this + 9)) + 200;
          v20 = CFNumberCreate(v4, kCFNumberCFIndexType, &valuePtr);
          if (v20)
          {
            CFDictionarySetValue(*(this + 9), v18, v20);
            CFRelease(v20);
          }

          v17 = *(this + 9);
        }
      }

      v21 = CFDictionaryCreateCopy(v4, v17);
      valuePtr = v21;
      if (v21)
      {
        CFDictionarySetValue(v6, @"RankTerms", v21);
        CFRelease(v21);
      }
    }
  }

  if ((a2 & 8) != 0)
  {
    v22 = *(this + 10);
    if (v22)
    {
      v23 = CFDictionaryCreateCopy(v4, v22);
      valuePtr = v23;
      if (v23)
      {
        CFDictionarySetValue(v6, @"RankCategories", v23);
        CFRelease(v23);
      }
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (key)
  {
    CFRelease(key);
  }

  return v6;
}

void sub_22CDD3374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(&__p, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a17, 0);
  _Unwind_Resume(a1);
}

void sub_22CDD37DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a12, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a13, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a14, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&__p, 0);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

const __CFArray *NL::ParseFormatter::updateCurrentParsesForAttributeWithEntity(NL::ParseFormatter *this, __CFArray *a2, const NL::ParseAttribute *a3, const NL::Entity *a4)
{
  v4 = a2;
  if (a2)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v21 = Mutable;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x3002000000;
        v18 = __Block_byref_object_copy__18;
        v19 = __Block_byref_object_dispose__18;
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        cf = CFAttributedStringCreateMutableCopy(v6, 0, ValueAtIndex);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 0x40000000;
        v14[2] = ___ZN2NL14ParseFormatter41updateCurrentParsesForAttributeWithEntityEP9__CFArrayRKNS_14ParseAttributeERKNS_6EntityE_block_invoke;
        v14[3] = &unk_27873FC38;
        v14[4] = &v22;
        v14[5] = &v15;
        v14[6] = this;
        v14[7] = a3;
        v14[8] = a4;
        NL::ParseAttribute::enumerateParseNamesWithType(a3, v14);
        v26.length = CFArrayGetCount(Mutable);
        v26.location = 0;
        if (!CFArrayContainsValue(Mutable, v26, v16[5]))
        {
          CFArrayAppendValue(Mutable, v16[5]);
        }

        _Block_object_dispose(&v15, 8);
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    CFArrayRemoveAllValues(v4);
    v27.length = CFArrayGetCount(Mutable);
    v27.location = 0;
    CFArrayAppendArray(v4, Mutable, v27);
    v4 = *(v23 + 24);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    _Block_object_dispose(&v22, 8);
  }

  return v4;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t ___ZN2NL14ParseFormatter41updateCurrentParsesForAttributeWithEntityEP9__CFArrayRKNS_14ParseAttributeERKNS_6EntityE_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = NL::ParseFormatter::updateAttributedParseForAttributeWithEntity(a1[6], *(*(a1[5] + 8) + 40), a1[7], a1[8], a5, a3);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t NL::ParseFormatter::copyParseResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NL::ParseFormatter::reset(a1);
  v32 = a2;
  if (*(*a2 + 16) == *(*a2 + 8) || (v6 = *(*(a1 + 24) + 104)) == 0)
  {
    v28 = *(*a1 + 24);

    return v28(a1, a3);
  }

  else
  {
    v7 = *MEMORY[0x277CBECE8];
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v6);
    nlp::CFScopedPtr<__CFString const*>::reset((a1 + 40), Copy);
    v52 = 0;
    v53 = &v52;
    v54 = 0x3002000000;
    v55 = __Block_byref_object_copy__48_0;
    v56 = __Block_byref_object_dispose__49_0;
    v9 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
    v46 = 0;
    v47 = &v46;
    v48 = 0x3002000000;
    v49 = __Block_byref_object_copy__48_0;
    v50 = __Block_byref_object_dispose__49_0;
    v51 = CFArrayCreateMutable(v7, 0, v9);
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3002000000;
    v44[3] = __Block_byref_object_copy__48_0;
    v44[4] = __Block_byref_object_dispose__49_0;
    cf = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
    v43 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    v42 = 0;
    v31 = (*(*v32 + 16) - *(*v32 + 8)) >> 4;
    if (v31 < 1)
    {
      v10 = 0;
    }

    else
    {
      alloc = v7;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = (*(*v32 + 8) + 16 * v11);
        v13 = v12[1];
        v36 = *v12;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = v11;
        v34 = v13;
        v14 = *(v36 + 48) - *(v36 + 40);
        if (v14)
        {
          if (v40[3])
          {
            v15 = 2;
          }

          else
          {
            v35 = v14 >> 4;
            if (v14 >> 4 >= 1)
            {
              v16 = 0;
              do
              {
                v17 = *(v36 + 40) + 16 * v16;
                v18 = *v17;
                v19 = *(v17 + 8);
                if (v19)
                {
                  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v21 = *v18;
                v20 = v18[1];
                while (v21 != v20)
                {
                  if (*(*v21 + 36))
                  {
                    if (CFArrayGetCount(v53[5]))
                    {
                      v22 = v10;
                    }

                    else
                    {
                      v22 = CFAttributedStringCreateMutable(alloc, 0);
                      if (v10)
                      {
                        CFRelease(v10);
                      }

                      v43 = v22;
                      v59.length = CFAttributedStringGetLength(v22);
                      v59.location = 0;
                      CFAttributedStringReplaceString(v22, v59, *(a1 + 40));
                      CFArrayAppendValue(v53[5], v22);
                    }

                    v23 = *v21;
                    v38[0] = MEMORY[0x277D85DD0];
                    v38[1] = 0x40000000;
                    v38[2] = ___ZN2NL14ParseFormatter15copyParseResultENSt3__110shared_ptrINS_12ParseIntentsEEEj_block_invoke;
                    v38[3] = &unk_278740AA8;
                    v38[4] = v44;
                    v38[5] = &v52;
                    v38[8] = a1;
                    v38[9] = v21;
                    v38[6] = &v39;
                    v38[7] = &v46;
                    NL::ParseAttribute::enumerateEntities(v23, v38);
                    v10 = v22;
                  }

                  v21 += 16;
                }

                if (CFArrayGetCount(v47[5]))
                {
                  CFArrayRemoveAllValues(v53[5]);
                  v24 = v53[5];
                  v25 = v47[5];
                  v60.length = CFArrayGetCount(v25);
                  v60.location = 0;
                  CFArrayAppendArray(v24, v25, v60);
                  CFArrayRemoveAllValues(v47[5]);
                }

                if (v19)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                }

                ++v16;
              }

              while (v16 != v35);
            }

            if (CFArrayGetCount(v53[5]))
            {
              v26 = *(a1 + 64);
              if (v26)
              {
                v27 = v53[5];
                v61.length = CFArrayGetCount(v27);
                v61.location = 0;
                CFArrayAppendArray(v26, v27, v61);
              }
            }

            v15 = 0;
          }
        }

        else
        {
          v15 = 4;
        }

        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if ((v15 | 4) != 4)
        {
          break;
        }

        v11 = v33 + 1;
      }

      while (v33 + 1 != v31);
    }

    v30 = NL::ParseFormatter::copyFormattedResult(a1, a3);
    _Block_object_dispose(&v39, 8);
    if (v10)
    {
      CFRelease(v10);
    }

    _Block_object_dispose(v44, 8);
    if (cf)
    {
      CFRelease(cf);
    }

    _Block_object_dispose(&v46, 8);
    if (v51)
    {
      CFRelease(v51);
    }

    _Block_object_dispose(&v52, 8);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v30;
  }
}