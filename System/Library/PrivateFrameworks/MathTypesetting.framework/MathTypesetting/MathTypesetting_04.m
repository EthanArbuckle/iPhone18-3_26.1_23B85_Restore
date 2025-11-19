void sub_25827FB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void _fontInfoWithName(EQKit::Font::STIXCollection::FontInfo **a1, const __CFString *a2)
{
  v3 = *a1;
  if (v3)
  {
    EQKit::Font::STIXCollection::FontInfo::~FontInfo(v3);
    MEMORY[0x259C7CB70]();
    *a1 = 0;
  }

  operator new();
}

BOOL EQKit::Font::STIXCollection::fontsLoadedCorrectly(EQKit::Font::STIXCollection *this)
{
  if (*(*(this + 1) + 40) != 1 || *(*(this + 3) + 40) != 1 || *(*(this + 2) + 40) != 1 || *(*(this + 4) + 40) != 1 || *(*(this + 5) + 40) != 1 || *(*(this + 6) + 40) != 1 || *(*(this + 17) + 40) != 1 || *(*(this + 18) + 40) != 1 || *(*(this + 15) + 40) != 1 || *(*(this + 16) + 40) != 1 || *(*(this + 19) + 40) != 1 || *(*(this + 20) + 40) != 1 || *(*(this + 11) + 40) != 1 || *(*(this + 12) + 40) != 1 || *(*(this + 13) + 40) != 1 || *(*(this + 14) + 40) != 1 || *(*(this + 8) + 40) != 1 || *(*(this + 9) + 40) != 1 || *(*(this + 10) + 40) != 1 || *(*(this + 7) + 40) != 1)
  {
    return 0;
  }

  v1 = 0;
  for (i = 0; i != 6; ++i)
  {
    v3 = *(this + i + 21);
    if (v3 && *(v3 + 40) != 1)
    {
      break;
    }

    v1 = i > 4;
  }

  if (v1)
  {
    v4 = 0;
    for (j = 0; j != 6; ++j)
    {
      v6 = *(this + j + 28);
      if (v6 && *(v6 + 40) != 1)
      {
        break;
      }

      v4 = j > 4;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

void EQKit::Font::STIXCollection::characterPropertyLengthForScript(EQKit::Font::STIXCollection *a1@<X0>, int a2@<W1>, const EQKit::Script::Info *a3@<X2>, EQKit::Unicode *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  EQKit::Font::STIXCollection::fontNameForCharacterWithScript(a1, a3, a4, &__s);
  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__s.__r_.__value_.__s + 23))
    {
      __p = __s;
      goto LABEL_6;
    }

LABEL_8:
    *a5 = 0;
    *(a5 + 8) = 0;
    goto LABEL_9;
  }

  if (!__s.__r_.__value_.__l.__size_)
  {
    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
LABEL_6:
  EQKit::Font::STIXCollection::characterPropertyLengthForFont(a1, a2, &__p, v5, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_2582800F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void EQKit::Font::STIXCollection::fontNameForCharacterWithScript(EQKit::Font::STIXCollection *this@<X0>, const EQKit::Script::Info *a2@<X2>, EQKit::Unicode *a3@<X1>, std::string *a4@<X8>)
{
  v5 = a3;
  v8 = EQKit::Font::STIXCollection::lookupChar(this, a3, a2, 0);
  v9 = EQKit::Font::STIXCollection::lookupFontForCh(this, v8, 0, a2, 0);
  if (v9 || v8 != v5 && (v9 = EQKit::Font::STIXCollection::lookupFontForCh(this, v5, 0, a2, 0)) != 0)
  {
    if (*(v9 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v9 + 2), *(v9 + 3));
    }

    else
    {
      __p = *(v9 + 16);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a4, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a4 = __p;
  }
}

void sub_258280230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void EQKit::Font::STIXCollection::characterPropertyLengthForFont(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 328);
  if (!v6)
  {
    goto LABEL_9;
  }

  v9[0] = a4;
  v9[1] = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v7 = std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(v6 + 24, v9);
  v8 = v6 + 32;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 == v7)
  {
LABEL_9:
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = *(v7 + 64);
    *(a5 + 8) = *(v7 + 72);
  }
}

void sub_2582802FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double EQKit::Font::STIXCollection::lengthMetricWithScriptAndRule(uint64_t a1, unsigned int a2, EQKit::Script::Info *a3, double a4)
{
  v4 = *(a1 + 336);
  if (v4)
  {
    return EQKit::Font::Metric::LengthEntry::resolveWithScriptAndRule((v4 + 384 * a2), a3, a4);
  }

  else
  {
    return 0.0;
  }
}

double EQKit::Font::STIXCollection::floatMetric(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    return *(v2 + 8 * a2 + 21504);
  }

  else
  {
    return 0.0;
  }
}

CTFontRef EQKit::Font::STIXCollection::newFontWithScript(EQKit::Font::STIXCollection *this, CGFloat *a2)
{
  v3 = EQKit::Font::STIXCollection::fontInfoGenericWithScript(this, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!v4)
  {
    return 0;
  }

  v5 = a2[2];

  return CTFontCreateCopyWithAttributes(v4, v5, 0, 0);
}

uint64_t EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(EQKit::Font::STIXCollection *this, UTF32Char a2, const EQKit::Script::Info *a3)
{
  v5 = EQKit::Script::Info::symbolicFontTraits(a3) & 3;
  v6 = *(this + (8 * v5) + 8);
  if (!v6 || (v7 = *(v6 + 8)) == 0 || !CFCharacterSetIsLongCharacterMember(v7, a2))
  {
    if ((v5 - 1) < 2)
    {
      v8 = &_downgradeTraitsArray(unsigned int,unsigned long &)::traits;
      v9 = 1;
LABEL_9:
      v10 = this + 8;
      v11 = 1;
      while (1)
      {
        v12 = *v8++;
        v6 = *&v10[8 * (v12 & 3)];
        if (!v6)
        {
          goto LABEL_14;
        }

        v13 = *(v6 + 8);
        if (v13)
        {
          break;
        }

        v6 = 0;
LABEL_15:
        if (v11++ >= v9)
        {
          return v6;
        }
      }

      if (!CFCharacterSetIsLongCharacterMember(v13, a2))
      {
        v6 = 0;
      }

LABEL_14:
      if (v6)
      {
        return v6;
      }

      goto LABEL_15;
    }

    if (v5)
    {
      v8 = &_downgradeTraitsArray(unsigned int,unsigned long &)::traits;
      v9 = 3;
      goto LABEL_9;
    }

    return 0;
  }

  return v6;
}

uint64_t EQKit::Font::STIXCollection::fontInfoNonUnicodeForCharacterWithScript(EQKit::Font::STIXCollection *this, UTF32Char a2, const EQKit::Script::Info *a3)
{
  v5 = EQKit::Script::Info::symbolicFontTraits(a3) & 3;
  v6 = *(this + (8 * v5) + 56);
  if (!v6 || (v7 = *(v6 + 8)) == 0 || !CFCharacterSetIsLongCharacterMember(v7, a2))
  {
    if ((v5 - 1) < 2)
    {
      v8 = &_downgradeTraitsArray(unsigned int,unsigned long &)::traits;
      v9 = 1;
LABEL_9:
      v10 = this + 56;
      v11 = 1;
      while (1)
      {
        v12 = *v8++;
        v6 = *&v10[8 * (v12 & 3)];
        if (!v6)
        {
          goto LABEL_14;
        }

        v13 = *(v6 + 8);
        if (v13)
        {
          break;
        }

        v6 = 0;
LABEL_15:
        if (v11++ >= v9)
        {
          return v6;
        }
      }

      if (!CFCharacterSetIsLongCharacterMember(v13, a2))
      {
        v6 = 0;
      }

LABEL_14:
      if (v6)
      {
        return v6;
      }

      goto LABEL_15;
    }

    if (v5)
    {
      v8 = &_downgradeTraitsArray(unsigned int,unsigned long &)::traits;
      v9 = 3;
      goto LABEL_9;
    }

    return 0;
  }

  return v6;
}

const __CFCharacterSet *EQKit::Font::STIXCollection::fontInfoIntegralForCharacterWithScript(EQKit::Font::STIXCollection *this, UTF32Char a2, const EQKit::Script::Info *a3)
{
  v4 = this + 136;
  v3 = *(this + 17);
  if (!v3)
  {
    return 0;
  }

  result = *(v3 + 8);
  if (!result)
  {
    return result;
  }

  if (!CFCharacterSetIsLongCharacterMember(result, a2))
  {
    return 0;
  }

  v9 = EQKit::Script::Info::symbolicFontTraits(a3);
  if (*a3)
  {
    v10 = this + 152;
    if ((v9 & 2) != 0)
    {
      v10 = this + 160;
    }

    v11 = this + 104;
    v12 = this + 112;
LABEL_18:
    if ((v9 & 2) != 0)
    {
      v11 = v12;
    }

    goto LABEL_20;
  }

  if (*(a3 + 8) != 1 || *(a3 + 10) != 1)
  {
    v10 = this + 144;
    if ((v9 & 2) == 0)
    {
      v10 = v4;
    }

    v11 = this + 8;
    v12 = this + 24;
    goto LABEL_18;
  }

  v10 = this + 120;
  if ((v9 & 2) != 0)
  {
    v10 = this + 128;
  }

  v13 = 96;
  if ((v9 & 2) == 0)
  {
    v13 = 88;
  }

  v11 = this + v13;
LABEL_20:
  if (v9)
  {
    v10 = v11;
  }

  v14 = *v10;
  if (!*v10)
  {
    return 0;
  }

  result = *(v14 + 8);
  if (result)
  {
    if (CFCharacterSetIsLongCharacterMember(result, a2))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFCharacterSet *EQKit::Font::STIXCollection::fontInfoForSpecialVariantWithScript(EQKit::Font::STIXCollection *this, UTF32Char theChar, uint64_t a3, const EQKit::Script::Info *a4)
{
  if (a3 != 1)
  {
    if (*(a4 + 6))
    {
      return 0;
    }

    v11 = *(this + 45);
    if (!v11)
    {
      return 0;
    }

    v12 = *v11;
    v13 = *(v11 + 8);
    if (v13 == v12)
    {
      return 0;
    }

    v14 = v13 - v12;
    do
    {
      v15 = v14 >> 1;
      v16 = &v12[v14 >> 1];
      v18 = *v16;
      v17 = v16 + 1;
      v14 += ~(v14 >> 1);
      if (v18 < theChar)
      {
        v12 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
    if (v12 == v13 || *v12 != theChar)
    {
      return 0;
    }
  }

  v6 = *(a4 + 3);
  if (v6 == 4 || v6 == 2)
  {
    v8 = *(this + 6);
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        if (CFCharacterSetIsLongCharacterMember(v9, theChar))
        {
          return *(this + 6);
        }
      }
    }
  }

  v19 = *(this + 5);
  if (!v19)
  {
    return 0;
  }

  result = *(v19 + 8);
  if (!result)
  {
    return result;
  }

  if (CFCharacterSetIsLongCharacterMember(result, theChar))
  {
    return *(this + 5);
  }

  else
  {
    return 0;
  }
}

const __CFCharacterSet *EQKit::Font::STIXCollection::fontInfoForLargeOpWithScript(EQKit::Font::STIXCollection *this, UTF32Char a2, const EQKit::Script::Info *a3)
{
  if (*(a3 + 10) != 1 || *(a3 + 8) != 1)
  {
    return 0;
  }

  v5 = EQKit::Script::Info::symbolicFontTraits(a3);
  v6 = 224;
  if ((v5 & 2) == 0)
  {
    v6 = 168;
  }

  v7 = *(this + v6 + 8);
  if (!v7 || (v8 = *(v7 + 1)) == 0)
  {
    if ((v5 & 2) == 0)
    {
      return 0;
    }

    goto LABEL_15;
  }

  IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v8, a2);
  if (IsLongCharacterMember)
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

  if ((v5 & 2) != 0 && !IsLongCharacterMember)
  {
LABEL_15:
    v11 = *(this + 22);
    if (v11)
    {
      result = *(v11 + 8);
      if (result)
      {
        if (CFCharacterSetIsLongCharacterMember(result, a2))
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

uint64_t EQKit::Font::STIXCollection::lookupChar(EQKit::Font::STIXCollection *this, EQKit::Unicode *a2, const EQKit::Script::Info *a3, int a4)
{
  v5 = (a2 & 0xFFFFFFDF) - 65 > 0x19 || (*(a3 + 3) - 2) >= 3;
  if (!v5 || (a2 - 945) < 0x19 || (a2 - 913) < 0x19)
  {
    return a2;
  }

  result = EQKit::Unicode::lookupChar(a2, a3, a3);
  if (!result)
  {
    v9 = *(this + 43);
    result = a2;
    if (v9)
    {
      v12 = *(v9 + 8);
      v10 = v9 + 8;
      v11 = v12;
      result = a2;
      if (v12)
      {
        v13 = v10;
        do
        {
          v14 = *(v11 + 28);
          v5 = v14 >= a2;
          v15 = v14 < a2;
          if (v5)
          {
            v13 = v11;
          }

          v11 = *(v11 + 8 * v15);
        }

        while (v11);
        result = a2;
        if (v13 != v10)
        {
          result = a2;
          if (*(v13 + 28) <= a2)
          {
            result = *(v13 + 32);
          }
        }
      }
    }

    if (a4)
    {
      v16 = *(this + 44);
      if (v16)
      {
        if (result == a2)
        {
          v19 = *(v16 + 8);
          v17 = v16 + 8;
          v18 = v19;
          if (v19)
          {
            v20 = v17;
            do
            {
              v21 = *(v18 + 28);
              v5 = v21 >= a2;
              v22 = v21 < a2;
              if (v5)
              {
                v20 = v18;
              }

              v18 = *(v18 + 8 * v22);
            }

            while (v18);
            if (v20 != v17)
            {
              result = a2;
              if (*(v20 + 28) <= a2)
              {
                return *(v20 + 32);
              }

              return result;
            }
          }

          return a2;
        }
      }
    }
  }

  return result;
}

const __CFCharacterSet *EQKit::Font::STIXCollection::lookupFontForCh(const __CFCharacterSet **this, UTF32Char a2, uint64_t a3, const EQKit::Script::Info *a4, const FontInfo *a5)
{
  result = EQKit::Font::STIXCollection::fontInfoIntegralForCharacterWithScript(this, a2, a4);
  if (result)
  {
    return result;
  }

  result = EQKit::Font::STIXCollection::fontInfoForLargeOpWithScript(this, a2, a4);
  if (result)
  {
    return result;
  }

  result = EQKit::Font::STIXCollection::fontInfoForSpecialVariantWithScript(this, a2, a3, a4);
  if (!a5 || result)
  {
    if (result)
    {
      return result;
    }
  }

  else
  {
    v11 = a5[1];
    if (v11)
    {
      IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v11, a2);
      result = a5;
      if (IsLongCharacterMember)
      {
        return result;
      }
    }
  }

  result = EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(this, a2, a4);
  if (result)
  {
    return result;
  }

  v13 = this[22];
  if (!v13)
  {
    goto LABEL_15;
  }

  result = *(v13 + 1);
  if (result)
  {
    if (CFCharacterSetIsLongCharacterMember(result, a2))
    {
      result = this[22];
      goto LABEL_16;
    }

LABEL_15:
    result = 0;
  }

LABEL_16:
  if ((a2 - 57344) >> 11 <= 2 && !result)
  {

    return EQKit::Font::STIXCollection::fontInfoNonUnicodeForCharacterWithScript(this, a2, a4);
  }

  return result;
}

uint64_t EQKit::Font::STIXCollection::newAttributedStringWithScript(EQKit::Font::STIXCollection *this, NSString *a2, CGFloat *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = [(NSString *)a2 length];
  v5 = v4;
  v6 = 4 * v4;
  if (v4 >= 0x40)
  {
    v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v42;
  }

  v39 = 0;
  if ([(NSString *)a2 getBytes:v7 maxLength:v6 usedLength:&v39 encoding:2617245952 options:0 range:0 remainingRange:v5, 0])
  {
    v8 = v39;
    v9 = v39 >> 2;
    v38 = 0;
    v36 = EQKit::Font::STIXCollection::fontInfoGenericWithScript(this, a3);
    v32 = v8;
    if (v8 < 4)
    {
      v10 = 0;
      v34 = 0;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
      if (v11 || v32 < 4 || !v10 || (v34 & 1) != 0)
      {
        v17 = 0;
        if (v11 == 0x7FFFFFFFFFFFFFFFLL || v9 <= v11 || !v10)
        {
          goto LABEL_73;
        }

        v48.location = v11;
        v48.length = v9 - v11;
        _updateAttributedString(&v38, v7, v48, v10, a3[2]);
      }

      else if (*v10)
      {
        CopyWithAttributes = CTFontCreateCopyWithAttributes(*v10, a3[2], 0, 0);
        v13 = CopyWithAttributes;
        if (CopyWithAttributes)
        {
          v14 = *MEMORY[0x277CC49C8];
          v40[0] = *MEMORY[0x277CC4838];
          v40[1] = v14;
          v15 = *MEMORY[0x277CBED28];
          v41[0] = CopyWithAttributes;
          v41[1] = v15;
          v40[2] = *MEMORY[0x277CC4AD0];
          v41[2] = &unk_286973AB0;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
          v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:a2 attributes:v16];
          CFRelease(v13);
          goto LABEL_73;
        }
      }

      v17 = 0;
LABEL_73:
      v30 = v38;
      if (!v17 && v38)
      {
        v17 = [(NSMutableAttributedString *)v38 copy];
      }

      goto LABEL_77;
    }

    v34 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = v9;
    while (1)
    {
      v21 = v7[v19];
      v22 = v19 + 1;
      v23 = v19 + 1 >= v9 ? 0 : EQKit::Unicode::variationSelector(v7[v22]);
      v24 = EQKit::Font::STIXCollection::lookupChar(this, v21, a3, 0);
      v25 = EQKit::Font::STIXCollection::lookupFontForCh(this, v24, v23, a3, v36);
      v10 = v25;
      if (!v25 || v21 == v24)
      {
        if (!v25)
        {
          v10 = EQKit::Font::STIXCollection::lookupFontForCh(this, v21, 0, a3, v36);
          if (!v10)
          {
            v27 = EQKit::Unicode::emSize(v21);
            if (v27 <= 0.0)
            {
              if (*(a3 + 4))
              {
                operator new();
              }

              if (!v19)
              {
LABEL_65:
                v10 = 0;
                if (!v23)
                {
                  v22 = v19;
                }

                goto LABEL_57;
              }
            }

            else
            {
              if (!v38)
              {
                v38 = objc_alloc_init(MEMORY[0x277CCAB48]);
              }

              [EQKitAdjustableSpace appendSpaceToAttributedString:0.0 ascent:0.0 descent:v27 * a3[2] width:?];
              if (!v19)
              {
                goto LABEL_65;
              }
            }

            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_65;
            }

            v10 = 0;
            v28 = v19 - v20;
LABEL_48:
            v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_51:
            if (v20 != 0x7FFFFFFFFFFFFFFFLL && v18)
            {
              v46.location = v20;
              v46.length = v28;
              _updateAttributedString(&v38, v7, v46, v18, a3[2]);
            }

            if (!v23)
            {
LABEL_59:
              v22 = v19;
              goto LABEL_60;
            }

            goto LABEL_55;
          }
        }
      }

      else
      {
        v7[v19] = v24;
        v34 = 1;
      }

      if (v24 == 8242)
      {
        break;
      }

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v19;
        if (!v23)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v18 != v10)
        {
          v28 = v19 - v20;
          v11 = v19;
          goto LABEL_51;
        }

        v11 = v20;
        v10 = v18;
        if (!v23)
        {
          goto LABEL_59;
        }
      }

LABEL_55:
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v47.length = v22 - v11;
        v47.location = v11;
        _updateAttributedString(&v38, v7, v47, v10, a3[2]);
        v10 = 0;
      }

LABEL_57:
      v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_60:
      v19 = v22 + 1;
      v20 = v11;
      v18 = v10;
      v9 = v35;
      if (v22 + 1 >= v35)
      {
        goto LABEL_7;
      }
    }

    v29 = a3[2];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v28 = v19 - v20;
      if (!v18)
      {
LABEL_41:
        if (!v38)
        {
          v38 = objc_alloc_init(MEMORY[0x277CCAB48]);
        }

        if (v29 * 0.0 != 0.0)
        {
          [EQKitAdjustableSpace appendSpaceToAttributedString:0.0 ascent:0.0 descent:v29 * 0.0 width:?];
        }

        v45.location = v19;
        v45.length = 1;
        _updateAttributedString(&v38, v7, v45, v10, a3[2]);
        if (v29 * -0.111111111 != 0.0)
        {
          [EQKitAdjustableSpace appendSpaceToAttributedString:v38 ascent:0.0 descent:0.0 width:v29 * -0.111111111];
        }

        v10 = 0;
        goto LABEL_48;
      }

      v44.location = v20;
      v44.length = v19 - v20;
      _updateAttributedString(&v38, v7, v44, v18, a3[2]);
    }

    v28 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_41;
  }

  v17 = 0;
LABEL_77:
  if (v7 != v42)
  {
    free(v7);
  }

  return v17;
}

void _updateAttributedString(id *a1, const unsigned int *a2, _NSRange a3, CTFontRef *a4, CGFloat a5)
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    if (!*a1)
    {
      *a1 = objc_alloc_init(MEMORY[0x277CCAB48]);
    }

    if (*a4)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(*a4, a5, 0, 0);
      if (CopyWithAttributes)
      {
        v12 = CopyWithAttributes;
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&a2[location] length:4 * length encoding:2617245952];
        v14 = *MEMORY[0x277CC49C8];
        v18[0] = *MEMORY[0x277CC4838];
        v18[1] = v14;
        v15 = *MEMORY[0x277CBED28];
        v19[0] = v12;
        v19[1] = v15;
        v18[2] = *MEMORY[0x277CC4AD0];
        v19[2] = &unk_286973AC8;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
        v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v13 attributes:v16];
        [*a1 appendAttributedString:v17];

        CFRelease(v12);
      }
    }
  }
}

CTFontRef EQKit::Font::STIXCollection::newFontForStretchedCharacterWithScript(EQKit::Font::STIXCollection *a1, unsigned int *a2, int a3, EQKit::Script::Info *this, double a5)
{
  v10 = EQKit::Script::Info::symbolicFontTraits(this);
  v11 = a1 + 168;
  if ((v10 & 2) != 0)
  {
    v12 = a1 + 224;
  }

  else
  {
    v12 = a1 + 168;
  }

  v13 = EQKit::Font::STIXCollection::lookupChar(a1, *a2, this, 1);
  v14 = v13;
  *a2 = v13;
  if (a3 == 1)
  {
    v21 = *(a1 + 39);
    if (!v21)
    {
LABEL_21:
      v24 = *(a1 + 47);
      EQKit::Font::STIXCollection::stemStretchKey(this, a1, v13, a3, v27);
      v25 = EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::lookup(v24, v27) != a3;
      EQKit::StemStretch::Key::~Key(v27);
      v14 = *a2;
      goto LABEL_22;
    }

    v16 = (a1 + 312);
    v17 = (a1 + 312);
    do
    {
      v22 = *(v21 + 32);
      v19 = v22 >= v13;
      v23 = v22 < v13;
      if (v19)
      {
        v17 = v21;
      }

      v21 = *(v21 + 8 * v23);
    }

    while (v21);
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = (a1 + 288);
    v17 = (a1 + 288);
    do
    {
      v18 = *(v15 + 32);
      v19 = v18 >= v13;
      v20 = v18 < v13;
      if (v19)
      {
        v17 = v15;
      }

      v15 = *(v15 + 8 * v20);
    }

    while (v15);
  }

  if (v17 == v16 || v13 < *(v17 + 8))
  {
    goto LABEL_21;
  }

  v25 = 0;
LABEL_22:
  result = EQKit::Font::STIXCollection::SizeVariant::newFontForCharacterWithScript(v12, v14, a3, this, v25, a5);
  if (!result && (v10 & 2) != 0)
  {
    return EQKit::Font::STIXCollection::SizeVariant::newFontForCharacterWithScript(v11, *a2, a3, this, v25, a5);
  }

  return result;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::lookup(uint64_t **a1, uint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 9));
  v4 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, a2);
  if (v4)
  {
    goto LABEL_2;
  }

  pthread_rwlock_unlock((a1 + 9));
  v8 = 0;
  v9 = 0;
  v5 = 0;
  if (!(a1[34][2])())
  {
    return v5;
  }

  pthread_rwlock_wrlock((a1 + 9));
  v4 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1 + 1, a2);
  if (v4)
  {
LABEL_2:
    v4[7] = **a1;
    v5 = *(v4 + 12);
  }

  else
  {
    v9 = **a1;
    v10 = a2;
    v7 = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__emplace_unique_key_args<EQKit::StemStretch::Key,std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>(a1 + 1, a2);
    v5 = v8;
    *(v7 + 12) = v8;
    v7[7] = v9;
    if (a1[4] > a1[7])
    {
      *(a1 + 48) = 1;
    }
  }

  pthread_rwlock_unlock((a1 + 9));
  return v5;
}

void EQKit::Font::STIXCollection::stemStretchKey(CGFloat *this@<X2>, const __CFCharacterSet **a2@<X0>, const __CTFont *a3@<X1>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = EQKit::Script::Info::symbolicFontTraits(this) & 2;
  if (v10)
  {
    v11 = (a2 + 28);
  }

  else
  {
    v11 = (a2 + 21);
  }

  v12 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(v11, a3, a4, this, 1, 1.79769313e308);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (!v13)
  {
    v12 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript((a2 + 21), a3, a4, this, 1, 1.79769313e308);
  }

  if (v12)
  {
    EQKit::StemStretch::Key::Key(a5);
  }

  else
  {
    v12 = EQKit::Font::STIXCollection::lookupFontForCh(a2, a3, 0, this, 0);
    EQKit::StemStretch::Key::Key(a5);
    if (!v12)
    {
      return;
    }
  }

  if (*v12)
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(*v12, this[2], 0, 0);
    if (CopyWithAttributes)
    {
      v15 = EQKit::Font::STIXCollection::ruleThicknessWithScript(a2, this);
      EQKit::StemStretch::Key::keyForFontAndCharacter(CopyWithAttributes, a3, v15, v16);
      EQKit::StemStretch::Key::operator=(a5, v16);
      EQKit::StemStretch::Key::~Key(v16);
      CFRelease(CopyWithAttributes);
    }
  }
}

void sub_2582815E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  EQKit::StemStretch::Key::~Key(&a9);
  EQKit::StemStretch::Key::~Key(v9);
  _Unwind_Resume(a1);
}

CTFontRef EQKit::Font::STIXCollection::SizeVariant::newFontForCharacterWithScript(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5, double a6)
{
  v7 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  v9 = *(a4 + 16);

  return CTFontCreateCopyWithAttributes(v8, v9, 0, 0);
}

uint64_t EQKit::Font::STIXCollection::compositeStretchForCharacter(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 == 1)
  {
    v9 = *(a1 + 312);
    if (!v9)
    {
      return 0;
    }

    v4 = a1 + 312;
    v5 = a1 + 312;
    do
    {
      v10 = *(v9 + 32);
      v7 = v10 >= a2;
      v11 = v10 < a2;
      if (v7)
      {
        v5 = v9;
      }

      v9 = *(v9 + 8 * v11);
    }

    while (v9);
  }

  else
  {
    if (a3 != 2)
    {
      return 0;
    }

    v3 = *(a1 + 288);
    if (!v3)
    {
      return 0;
    }

    v4 = a1 + 288;
    v5 = a1 + 288;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
  }

  if (v5 == v4)
  {
    return 0;
  }

  v12 = *(v5 + 32);
  v13 = v5 + 40;
  if (v12 <= a2)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

double EQKit::Font::STIXCollection::accentUnderHAdjustment(EQKit::Font::STIXCollection *this, UTF32Char a2, const EQKit::Script::Info *a3)
{
  v6 = 0.0;
  v3 = EQKit::Font::STIXCollection::accentHAdjustment(this, a2, a3, &v6, &v5);
  result = v6;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

const __CFCharacterSet *EQKit::Font::STIXCollection::accentHAdjustment(EQKit::Font::STIXCollection *this, UTF32Char a2, const EQKit::Script::Info *a3, double *a4, double *a5)
{
  v10 = *(a3 + 4);
  v11 = *(a3 + 10);
  v12 = *(a3 + 3);
  v13 = *(a3 + 6);
  v14 = *(a3 + 4);
  v33 = *a3;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  size = 12.0;
  v38 = v13;
  v39 = v14;
  result = EQKit::Font::STIXCollection::lookupFontForCh(this, a2, 0, &v33, 0);
  if (result)
  {
    result = *result;
    if (result)
    {
      result = CTFontCreateCopyWithAttributes(result, size, 0, 0);
      if (result)
      {
        v16 = result;
        EQKit::Font::SlantKey::SlantKey(v32, result, a2);
        v17 = EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::lookup(*(this + 49), v32);
        v19 = v18;
        if (v32[0])
        {
          v20 = [v32[0] UTF8String];
        }

        else
        {
          v20 = "";
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v20);
        EQKit::Font::STIXCollection::characterPropertyLengthForFont(this, 2, __p, a2, &v30);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (v30)
        {
          v21 = CTFontGetSize(v16);
          v17 = EQKitLength::resolveToAbsoluteWithSize(&v30, v21);
        }

        *a4 = v17;
        *a4 = v17 * (*(a3 + 2) / size);
        if (v32[0])
        {
          v22 = [v32[0] UTF8String];
        }

        else
        {
          v22 = "";
        }

        std::string::basic_string[abi:ne200100]<0>(v24, v22);
        EQKit::Font::STIXCollection::characterPropertyLengthForFont(this, 1, v24, a2, &v26);
        v30 = v26;
        v31 = v27;
        if (v25 < 0)
        {
          operator delete(v24[0]);
          if (!v30)
          {
LABEL_19:
            *a5 = v19;
            *a5 = v19 * (*(a3 + 2) / size);
            CFRelease(v16);
            EQKit::Font::SlantKey::~SlantKey(v32);
            return 1;
          }
        }

        else if (!v26)
        {
          goto LABEL_19;
        }

        v23 = CTFontGetSize(v16);
        v19 = EQKitLength::resolveToAbsoluteWithSize(&v30, v23);
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_258281934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, const void *a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  EQKit::Font::SlantKey::~SlantKey(&a25);
  _Unwind_Resume(a1);
}

double EQKit::Font::STIXCollection::accentOverHAdjustment(EQKit::Font::STIXCollection *this, UTF32Char a2, const EQKit::Script::Info *a3)
{
  v5 = 0.0;
  v3 = EQKit::Font::STIXCollection::accentHAdjustment(this, a2, a3, &v6, &v5);
  result = v5;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

double EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::lookup(uint64_t **a1, uint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 9));
  v4 = std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::find<EQKit::Font::SlantKey>(a1 + 1, a2);
  if (v4)
  {
    *(v4 + 7) = **a1;
    v5 = v4[5];
LABEL_10:
    pthread_rwlock_unlock((a1 + 9));
    return v5;
  }

  pthread_rwlock_unlock((a1 + 9));
  v11 = 0;
  v10 = 0uLL;
  v5 = 0.0;
  if ((a1[34][2])())
  {
    pthread_rwlock_wrlock((a1 + 9));
    v6 = std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::find<EQKit::Font::SlantKey>(a1 + 1, a2);
    if (v6)
    {
      v6[7] = **a1;
      v7 = (v6 + 5);
    }

    else
    {
      v11 = **a1;
      v12 = a2;
      v8 = std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__emplace_unique_key_args<EQKit::Font::SlantKey,std::piecewise_construct_t const&,std::tuple<EQKit::Font::SlantKey const&>,std::tuple<>>(a1 + 1, a2);
      *(v8 + 5) = v10;
      v8[7] = v11;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      v7 = &v10;
    }

    v5 = *v7;
    goto LABEL_10;
  }

  return v5;
}

BOOL EQKit::Font::STIXCollection::isCharacterStretchableInAxis(uint64_t a1, EQKit::Unicode *a2, int a3, uint64_t *a4)
{
  v6 = *(a4 + 4);
  v7 = *(a4 + 10);
  v8 = *(a4 + 3);
  v9 = *(a4 + 6);
  v10 = a4[4];
  v30 = *a4;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = 0x4028000000000000;
  v35 = v9;
  v36 = v10;
  v11 = EQKit::Font::STIXCollection::lookupChar(a1, a2, &v30, 1);
  v12 = v11;
  if (a3 == 1)
  {
    v19 = *(a1 + 312);
    if (!v19)
    {
      goto LABEL_18;
    }

    v14 = a1 + 312;
    v15 = a1 + 312;
    do
    {
      v20 = *(v19 + 32);
      v17 = v20 >= v11;
      v21 = v20 < v11;
      if (v17)
      {
        v15 = v19;
      }

      v19 = *(v19 + 8 * v21);
    }

    while (v19);
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_18;
    }

    v13 = *(a1 + 288);
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = a1 + 288;
    v15 = a1 + 288;
    do
    {
      v16 = *(v13 + 32);
      v17 = v16 >= v11;
      v18 = v16 < v11;
      if (v17)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * v18);
    }

    while (v13);
  }

  if (v15 != v14 && v11 >= *(v15 + 32))
  {
    return 1;
  }

LABEL_18:
  v22 = *(a1 + 376);
  EQKit::Font::STIXCollection::stemStretchKey(&v30, a1, v11, a3, v27);
  LODWORD(v22) = EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::lookup(v22, v27);
  EQKit::StemStretch::Key::~Key(v27);
  if (v22 == a3)
  {
    return 1;
  }

  v25[0] = v12;
  EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::lookup(*(a1 + 216), v25, v27);
  if (v29 - 1 > 0xFD)
  {
    v37 = v12;
    EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::lookup(*(a1 + 272), &v37, v25);
    return v26 - 1 < 0xFE && v25[12] == a3;
  }

  else
  {
    return v28 == a3;
  }
}

BOOL EQKit::Font::STIXCollection::isCharacterNaturalSizeWithScript(EQKit::Font::STIXCollection *this, EQKit::Unicode *a2, const EQKit::Script::Info *a3)
{
  v6 = EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(this, a2, a3);
  v7 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, a2, 0, a3, 0);
    }
  }

  if (v8 == *(this + 14) || v8 == *(this + 13) || v8 == *(this + 18) || v8 == *(this + 17) || v8 == *(this + 20) || v8 == *(this + 19))
  {
    v6 = v8;
  }

  return v6 == v8;
}

BOOL EQKit::Font::STIXCollection::isCharacterScriptingOffsetsNaturalWithScript(EQKit::Font::STIXCollection *this, EQKit::Unicode *a2, const EQKit::Script::Info *a3)
{
  v6 = EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(this, a2, a3);
  v7 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, a2, 0, a3, 0);
    }
  }

  if (v6 != v8)
  {
    return 0;
  }

  v10 = *(this + 46);
  if (!v10)
  {
    return 1;
  }

  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == v11)
  {
    return 1;
  }

  v13 = v12 - v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v11[v13 >> 1];
    v17 = *v15;
    v16 = v15 + 1;
    v13 += ~(v13 >> 1);
    if (v17 < a2)
    {
      v11 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  return v11 == v12 || *v11 != a2;
}

BOOL EQKit::Font::STIXCollection::isCharacterSymmetricWithScript(EQKit::Font::STIXCollection *this, EQKit::Unicode *a2, const EQKit::Script::Info *a3)
{
  v6 = EQKit::Font::STIXCollection::fontInfoGenericForCharacterWithScript(this, a2, a3);
  v7 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, v7, 0, a3, v6);
  if (!v8)
  {
    if (v7 == a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = EQKit::Font::STIXCollection::lookupFontForCh(this, a2, 0, a3, 0);
    }
  }

  if (v6 != v8)
  {
    return 0;
  }

  v10 = *(this + 46);
  if (!v10)
  {
    return 1;
  }

  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == v11)
  {
    return 1;
  }

  v13 = v12 - v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v11[v13 >> 1];
    v17 = *v15;
    v16 = v15 + 1;
    v13 += ~(v13 >> 1);
    if (v17 < a2)
    {
      v11 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  return v11 == v12 || *v11 != a2;
}

CGFloat EQKit::Font::STIXCollection::naturalBoundsOfCharacterWithScript(EQKit::Font::STIXCollection *this, EQKit::Unicode *a2, CGFloat *a3)
{
  v4 = a2;
  v6 = EQKit::Font::STIXCollection::lookupChar(this, a2, a3, 0);
  v7 = EQKit::Font::STIXCollection::lookupFontForCh(this, v6, 0, a3, 0);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  boundingRects.origin = *MEMORY[0x277CBF3A0];
  boundingRects.size = v8;
  if (v7)
  {
    v9 = *v7;
    if (v9)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v9, a3[2], 0, 0);
      v17 = -1;
      if (CopyWithAttributes)
      {
        v11 = CopyWithAttributes;
        if ((v4 - 0x10000) >> 20)
        {
          v13 = 1;
          LOWORD(v12) = v4;
        }

        else
        {
          v12 = ((v4 - 0x10000) >> 10) | 0xFFFFD800;
          characters[1] = v4 & 0x3FF | 0xDC00;
          v13 = 2;
        }

        characters[0] = v12;
        if (CTFontGetGlyphsForCharacters(CopyWithAttributes, characters, glyphs, v13))
        {
          v17 = glyphs[0];
          if (glyphs[0] != 0xFFFF)
          {
            CTFontGetBoundingRectsForGlyphs(v11, kCTFontOrientationHorizontal, &v17, &boundingRects, 1);
            boundingRects.origin.y = -CGRectGetMaxY(boundingRects);
          }
        }

        CFRelease(v11);
      }
    }
  }

  return boundingRects.origin.x;
}

double EQKit::Font::STIXCollection::ruleThicknessWithScript(const __CFCharacterSet **this, CGFloat *a2)
{
  v3 = EQKit::Font::STIXCollection::lookupFontForCh(this, 0x2212u, 0, a2, 0);
  v4 = 0.0;
  if (v3)
  {
    v5 = *v3;
    if (v5)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v5, a2[2], 0, 0);
      if (CopyWithAttributes)
      {
        v8 = CopyWithAttributes;
        v9 = EQKitPath::newPathFromCharacterWithFont(0x2212, CopyWithAttributes, v7);
        if (v9)
        {
          v10 = v9;
          if (*(v9 + 120) == 1)
          {
            v11 = (v9 + 88);
          }

          else
          {
            v11 = EQKitPath::computePathBounds(v9);
          }

          v4 = v11[3];
          EQKitPath::~EQKitPath(v10);
          MEMORY[0x259C7CB70]();
        }

        CFRelease(v8);
      }
    }
  }

  return v4;
}

uint64_t EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5, double a6)
{
  v16 = a2;
  EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::lookup(*(a1 + 48), &v16, v15);
  if (v15[12] != a3)
  {
    return 0;
  }

  v11 = *(a4 + 16);
  if (v11 == 0.0)
  {
    return 0;
  }

  v12 = EQKit::Font::STIXCollection::StretchInfo::sizeIndexMatchingLength(v15, a6 * 12.0 / v11, 0.0, a5);
  if (v12 > 5)
  {
    return 0;
  }

  v13 = *(a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  if (*v13)
  {
    return *(a1 + 8 * v12);
  }

  return 0;
}

uint64_t EQKit::Font::STIXCollection::newCGPathForStretchedCharacterWithScript(EQKit::Font::STIXCollection *a1, EQKit::Unicode *a2, uint64_t a3, CGFloat *this, CGSize *a5, double a6)
{
  v12 = EQKit::Script::Info::symbolicFontTraits(this);
  if ((v12 & 2) != 0)
  {
    v13 = a1 + 224;
  }

  else
  {
    v13 = a1 + 168;
  }

  v34 = *MEMORY[0x277CBF3A8];
  if (a3 == 2)
  {
    v14 = *(a1 + 42);
    if (v14)
    {
      v15 = EQKit::Font::Metric::LengthEntry::resolveWithScriptAndRule((v14 + 10752), this, 0.0);
    }

    else
    {
      v15 = 0.0;
    }

    a6 = v15 + a6;
  }

  v16 = EQKit::Font::STIXCollection::lookupChar(a1, a2, this, 1);
  v17 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(v13, v16, a3, this, 1, a6);
  if (!v17 && (v12 & 2) != 0)
  {
    v17 = EQKit::Font::STIXCollection::SizeVariant::fontInfoForCharacterWithScript(a1 + 168, v16, a3, this, 1, a6);
  }

  if (v17)
  {
    v18 = EQKit::Font::STIXCollection::compositeStretchForCharacter(a1, v16, a3);
    width_low = -1;
  }

  else
  {
    v17 = EQKit::Font::STIXCollection::lookupFontForCh(a1, v16, 0, this, 0);
    v18 = EQKit::Font::STIXCollection::compositeStretchForCharacter(a1, v16, a3);
    width_low = -1;
    if (!v17)
    {
      v21 = 0;
      v19 = 0.0;
LABEL_33:
      v25 = 0.0;
      MinX = 0.0;
      if (!v18)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  v19 = 0.0;
  if (!*v17)
  {
    LODWORD(v17) = 0;
    v21 = 0;
    goto LABEL_33;
  }

  CopyWithAttributes = CTFontCreateCopyWithAttributes(*v17, this[2], 0, 0);
  v21 = CopyWithAttributes;
  v22 = (v16 - 0x10000) >> 20;
  if (v22)
  {
    LOWORD(v23) = v16;
  }

  else
  {
    v23 = ((v16 - 0x10000) >> 10) | 0xFFFFD800;
    WORD1(characters[0].origin.x) = v16 & 0x3FF | 0xDC00;
  }

  LOWORD(characters[0].origin.x) = v23;
  if (!CopyWithAttributes)
  {
    LODWORD(v17) = 0;
    goto LABEL_33;
  }

  if (v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  if (!CTFontGetGlyphsForCharacters(CopyWithAttributes, characters, &glyphs, v24) || (width_low = LOWORD(glyphs.width), LOWORD(glyphs.width) == 0xFFFF))
  {
    LODWORD(v17) = 1;
    goto LABEL_33;
  }

  CTFontGetBoundingRectsForGlyphs(v21, kCTFontOrientationHorizontal, &width_low, characters, 1);
  CTFontGetAdvancesForGlyphs(v21, kCTFontOrientationHorizontal, &width_low, &glyphs, 1);
  v25 = 0.0;
  MinX = 0.0;
  if (a3 == 2)
  {
    MinX = CGRectGetMinX(characters[0]);
    width = glyphs.width;
    v25 = width - CGRectGetWidth(characters[0]) - MinX;
    v19 = -CGRectGetMinY(characters[0]);
  }

  LODWORD(v17) = 1;
  if (v18)
  {
LABEL_34:
    EQKitCompositeGlyph::EQKitCompositeGlyph(characters, this, a3, v18);
    v18 = EQKitCompositeGlyph::createPathWithLength(characters, a6, &v34);
    EQKitCompositeGlyph::~EQKitCompositeGlyph(characters);
  }

LABEL_35:
  v28 = v17 ^ 1;
  if (v18)
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    v29 = *(a1 + 48);
    EQKit::Font::STIXCollection::stemStretchKey(this, a1, v16, a3, characters);
    EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::lookup(v29, characters, &glyphs);
    EQKit::StemStretch::Key::~Key(characters);
    if (*&glyphs.width && **&glyphs.width == a3)
    {
      v18 = EQKit::StemStretch::Glyph::newPathWithLength(*&glyphs.width, a6, &v34);
    }

    else
    {
      v18 = 0;
    }

    if (*&glyphs.height)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&glyphs.height);
    }
  }

  if (v18)
  {
    *a5 = v34;
    a5[1].width = MinX;
    a5[1].height = v25;
    a5[2].width = v19;
  }

  if (v17)
  {
    CFRelease(v21);
  }

  return v18;
}

void sub_2582825D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::Font::STIXCollection::StretchInfo::setupForCharacterWithVariant(uint64_t result, UTF32Char theChar, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v31[11] = *MEMORY[0x277D85DE8];
  v9 = &v30;
  v10 = MEMORY[0x277CBF3A8];
  do
  {
    *v9 = *v10;
    v11 = *(a3 + 8 * v8);
    if (v11)
    {
      result = *(v11 + 8);
      if (result)
      {
        result = CFCharacterSetIsLongCharacterMember(result, theChar);
        if (result)
        {
          if (*v11)
          {
            result = EQKitPath::newPathFromCharacterWithFont(theChar, *v11, v12);
            if (result)
            {
              v13 = result;
              if (*(result + 120) == 1)
              {
                v14 = (result + 88);
              }

              else
              {
                v14 = EQKitPath::computePathBounds(result);
              }

              *v9 = *(v14 + 1);
              v7 |= 1 << v8;
              ++v6;
              EQKitPath::~EQKitPath(v13);
              result = MEMORY[0x259C7CB70]();
            }
          }
        }
      }
    }

    ++v8;
    v9 += 16;
  }

  while (v8 != 6);
  *(v5 + 52) = 0;
  *(v5 + 48) = 0;
  if (v6 > 1)
  {
    v15 = 0;
    v16 = *v10;
    v17 = v10[1];
    v18 = v31;
    v19 = 1;
    v20 = *v10;
    v21 = v17;
    do
    {
      if ((v7 >> v15))
      {
        v16 = *(v18 - 1);
        v17 = *v18;
        if (v19)
        {
          v21 = *v18;
          v20 = *(v18 - 1);
        }

        v19 = 0;
      }

      ++v15;
      v18 += 2;
    }

    while (v15 != 6);
    v22 = v16 - v20;
    v23 = v17 - v21;
    v24 = v22 > 0.0;
    if (v22 <= 0.0 || v23 <= 0.0)
    {
      if (v23 > 0.0 && v22 <= 0.0)
      {
        v25 = 2;
      }

      else
      {
        v25 = v22 > 0.0;
      }

      if (v22 <= 0.0 && v23 <= 0.0)
      {
        return result;
      }
    }

    else
    {
      v24 = v22 > v23;
      if (v22 > v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }

    v26 = 0;
    *(v5 + 48) = v25;
    *(v5 + 52) = v7;
    v27 = &v30;
    do
    {
      v28 = v27 + 8;
      if (v24)
      {
        v28 = v27;
      }

      *(v5 + v26) = *v28;
      v26 += 8;
      v27 += 16;
    }

    while (v26 != 48);
  }

  return result;
}

uint64_t EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::setThreshold(uint64_t a1, unint64_t a2, unint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 72));
  if (a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 56) = a2;
  *(a1 + 64) = v6;
  if (*(a1 + 32) > a2)
  {
    *(a1 + 48) = 1;
  }

  pthread_rwlock_unlock((a1 + 72));

  return EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::prune(a1);
}

void EQKit::Font::STIXCollection::SizeVariant::~SizeVariant(EQKit::Font::STIXCollection::SizeVariant *this)
{
  for (i = 0; i != 48; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      EQKit::Font::STIXCollection::FontInfo::~FontInfo(v3);
      MEMORY[0x259C7CB70]();
      *(this + i) = 0;
    }
  }
}

uint64_t EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::prune(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      __src = 0;
      v28 = 0;
      v29 = 0;
      v5 = a1[3];
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = v4 - v5[10];
          v8 = *(v5 + 4);
          if (v6 >= v29)
          {
            v9 = __src;
            v10 = v6 - __src;
            v11 = (v6 - __src) >> 4;
            v12 = v11 + 1;
            if ((v11 + 1) >> 60)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v13 = v29 - __src;
            if ((v29 - __src) >> 3 > v12)
            {
              v12 = v13 >> 3;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF0)
            {
              v14 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<EQKitLength>>(&__src, v14);
            }

            v15 = v11;
            v16 = 16 * v11;
            *v16 = v8;
            *(v16 + 8) = v7;
            v6 = 16 * v11 + 16;
            v17 = (v16 - 16 * v15);
            memcpy(v17, v9, v10);
            v18 = __src;
            __src = v17;
            v28 = v6;
            v29 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v6 = v8;
            *(v6 + 8) = v7;
            v6 += 16;
          }

          v28 = v6;
          v5 = *v5;
        }

        while (v5);
        v19 = __src;
      }

      else
      {
        v6 = 0;
        v19 = 0;
      }

      v20 = 126 - 2 * __clz((v6 - v19) >> 4);
      v30 = EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::compareKeyLRU;
      if (v6 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,false>(v19, v6, &v30, v21, 1);
      v22 = __src;
      v23 = (v28 - __src) >> 4;
      v24 = a1[8];
      v25 = v23 - v24;
      if (v23 > v24)
      {
        v26 = 16 * v24;
        do
        {
          if (std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1 + 1, (__src + v26)))
          {
            std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::__erase_unique<unsigned int>(a1 + 1, (__src + v26));
          }

          v26 += 16;
          --v25;
        }

        while (v25);
        v22 = __src;
      }

      *(a1 + 48) = 0;
      if (v22)
      {
        v28 = v22;
        operator delete(v22);
      }
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_258282C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::Font::STIXCollection::StretchInfo::sizeIndexMatchingLength(EQKit::Font::STIXCollection::StretchInfo *this, double a2, double a3, int a4)
{
  v4 = 0;
  v5 = 0.0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    if (((*(this + 52) >> v4) & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = *(this + v4);
    if (v8 + a3 <= a2)
    {
      v7 = v4;
LABEL_7:
      v8 = v5;
      v9 = v6;
      goto LABEL_8;
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v7 = v4;
    v9 = v4;
LABEL_8:
    ++v4;
    v6 = v9;
    v5 = v8;
    if (v4 == 6)
    {
      goto LABEL_12;
    }
  }

  v7 = v4;
  v9 = v4;
  if (vabdd_f64(v5, a2) >= vabdd_f64(v8, a2))
  {
    goto LABEL_8;
  }

  v9 = v6;
  v7 = v4;
LABEL_12:
  if (a4)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::lookup@<X0>(uint64_t **a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 52) = -1;
  pthread_rwlock_rdlock((a1 + 9));
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1 + 1, a2);
  if (!v6)
  {
    pthread_rwlock_unlock((a1 + 9));
    v19 = 0;
    v20 = -1;
    v21 = 0;
    result = (a1[34][2])();
    if (!result)
    {
      return result;
    }

    pthread_rwlock_wrlock((a1 + 9));
    v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1 + 1, a2);
    if (v10)
    {
      v10[10] = **a1;
      v11 = (v10 + 3);
      if (v10 + 3 == a3)
      {
        return pthread_rwlock_unlock((a1 + 9));
      }

      *(a3 + 48) = *(v10 + 18);
      v12 = v10 + 76;
    }

    else
    {
      v21 = **a1;
      v22 = a2;
      v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 1, a2);
      if (v13 + 3 != v18)
      {
        *(v13 + 18) = v19;
        *(v13 + 76) = v20;
        v15 = v18[1];
        v14 = v18[2];
        *(v13 + 3) = v18[0];
        *(v13 + 5) = v15;
        *(v13 + 7) = v14;
      }

      v13[10] = v21;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      if (v18 == a3)
      {
        return pthread_rwlock_unlock((a1 + 9));
      }

      v12 = &v20;
      *(a3 + 48) = v19;
      v11 = v18;
    }

    *(a3 + 52) = *v12;
    v16 = *v11;
    v17 = v11[2];
    *(a3 + 16) = v11[1];
    *(a3 + 32) = v17;
    *a3 = v16;
    return pthread_rwlock_unlock((a1 + 9));
  }

  v6[10] = **a1;
  if (v6 + 3 != a3)
  {
    *(a3 + 48) = *(v6 + 18);
    *(a3 + 52) = *(v6 + 76);
    v7 = *(v6 + 3);
    v8 = *(v6 + 7);
    *(a3 + 16) = *(v6 + 5);
    *(a3 + 32) = v8;
    *a3 = v7;
  }

  return pthread_rwlock_unlock((a1 + 9));
}

CGPath *EQKit::Font::STIXCollection::newCGPathForRadicalWithOverbar(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double a5, double a6, double a7)
{
  v62 = 8730;
  EQKitPath::EQKitPath(&v58, 0);
  memset(&v57, 0, sizeof(v57));
  v14 = (*(*a1 + 88))(a1, &v62, 2, a2, a5);
  if (v14)
  {
    EQKitPath::EQKitPath(v54, v14, v62);
    EQKitPath::operator=(&v58, v54);
    EQKitPath::~EQKitPath(v54);
    if (v58)
    {
      v15 = CTFontCopyPostScriptName(v14);
      std::string::__assign_external(&v57, [(__CFString *)v15 UTF8String]);
      CFRelease(v15);
      v16 = v61 == 1 ? v60 : EQKitPath::computePathBounds(&v58);
      v63.origin.x = *v16;
      v63.origin.y = v16[1];
      v17 = v16[2];
      v18 = v16[3];
      v63.size.width = v17;
      v63.size.height = v18;
      MaxY = CGRectGetMaxY(v63);
      *a4 = v17;
      *(a4 + 8) = v18;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = MaxY;
      if (v58)
      {
        goto LABEL_15;
      }
    }

    CFRelease(v14);
  }

  else if (v58)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v14 = (*(*a1 + 96))(a1, v62, 2, a2, a4, a5);
  if (v14)
  {
    EQKitPath::EQKitPath(v54, v14);
    EQKitPath::operator=(&v58, v54);
    EQKitPath::~EQKitPath(v54);
    CFRelease(v14);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = 22;
      v20 = v57.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = 22;
      v20 = &v57;
    }

    strcpy(v20, "STIXSizeOneSym-Regular");
    v62 = 9143;
    v14 = CTFontCreateWithName(@"STIXSizeOneSym-Regular", *(a2 + 16), 0);
  }

LABEL_15:
  if (v61 == 1)
  {
    v21 = v60;
  }

  else
  {
    v21 = EQKitPath::computePathBounds(&v58);
  }

  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v53 = v57;
  }

  EQKit::Font::STIXCollection::characterPropertyLengthForFont(a1, 4, &v53, v62, v54);
  if (v14)
  {
    Size = CTFontGetSize(v14);
    v27 = EQKitLength::resolveToAbsoluteWithSize(v54, Size);
  }

  else
  {
    v27 = 0.0;
  }

  *a3 = v27;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v52 = v57;
  }

  EQKit::Font::STIXCollection::characterPropertyLengthForFont(a1, 5, &v52, v62, v54);
  if (v14)
  {
    v28 = CTFontGetSize(v14);
    v29 = EQKitLength::resolveToAbsoluteWithSize(v54, v28);
  }

  else
  {
    v29 = 0.0;
  }

  a3[1] = v29;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v51 = v57;
  }

  EQKit::Font::STIXCollection::characterPropertyLengthForFont(a1, 6, &v51, v62, v54);
  if (v14)
  {
    v30 = CTFontGetSize(v14);
    v31 = EQKitLength::resolveToAbsoluteWithSize(v54, v30);
  }

  else
  {
    v31 = 0.0;
  }

  a3[2] = v31;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = v57;
  }

  EQKit::Font::STIXCollection::characterPropertyLengthForFont(a1, 7, &v50, v62, v54);
  if (v14)
  {
    v32 = CTFontGetSize(v14);
    v33 = EQKitLength::resolveToAbsoluteWithSize(v54, v32);
  }

  else
  {
    v33 = 0.0;
  }

  a3[3] = v33;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v49 = v57;
  }

  EQKit::Font::STIXCollection::characterPropertyLengthForFont(a1, 8, &v49, v62, v54);
  if (v14)
  {
    v34 = CTFontGetSize(v14);
    v35 = EQKitLength::resolveToAbsoluteWithSize(v54, v34);
  }

  else
  {
    v35 = 0.0;
  }

  a3[4] = v35;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  *a3 = *(a4 + 32) + *a3;
  v64.origin.x = v22;
  v64.origin.y = v23;
  v64.size.width = v24;
  v64.size.height = v25;
  a3[1] = a3[1] - CGRectGetMinX(v64);
  v65.origin.x = v22;
  v65.origin.y = v23;
  v65.size.width = v24;
  v65.size.height = v25;
  a3[2] = a3[2] - CGRectGetMinX(v65);
  if (v14)
  {
    CFRelease(v14);
  }

  v36 = a3[3];
  v37 = a3[4];
  EQKitPath::findStemForEdge(&v58, 1u, v54);
  if (v54[0] == 1)
  {
    EQKitPath::extractPath(&v58);
    v38 = v59 + 16 * v55;
    v40 = *v38;
    v39 = *(v38 + 8);
    EQKitPath::extractPath(&v58);
    v41 = *(v59 + 16 * v56);
    if (v40 >= v41)
    {
      v42 = *(v59 + 16 * v56);
    }

    else
    {
      v42 = v40;
    }

    if (v40 >= v41)
    {
      v41 = v40;
    }

    v43 = v36 + v37 + a6 + v41 - v42;
    v44 = v39;
    v45 = a7;
    EQKitPath::appendSubpathRect(&v58, *&v42);
  }

  Mutable = CGPathCreateMutable();
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeTranslation(&v48, -v22, -v23);
  EQKitPath::appendToCGPath(&v58, Mutable, &v48, 0);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  EQKitPath::~EQKitPath(&v58);
  return Mutable;
}

void sub_2582834C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  EQKitPath::~EQKitPath(&a61);
  _Unwind_Resume(a1);
}

CGPath *EQKit::Font::STIXCollection::newCGPathForLongDivisionWithOverbar(EQKit::Font::STIXCollection *this, const EQKit::Script::Info *a2, double a3, double a4, double *a5)
{
  v19.origin.x = (*(*this + 136))(this, 10188, a2);
  MaxY = CGRectGetMaxY(v19);
  v16 = *MEMORY[0x277CBF3A8];
  v17 = 0;
  v18 = 0;
  v10 = (*(*this + 96))(this, 10188, 2, a2, &v16, a3 - MaxY);
  EQKitPath::EQKitPath(v15, v10);
  CGPathRelease(v10);
  EQKitPath::findStemForEdge(v15, 2u, v14);
  if (v14[0] == 1)
  {
    Mutable = CGPathCreateMutable();
    v13 = *MEMORY[0x277CBF348];
    EQKitPath::appendToCGPathWithModifiedStem(v15, Mutable, &v13, 0, v14, a4);
  }

  else
  {
    Mutable = 0;
  }

  EQKitPath::~EQKitPath(v15);
  return Mutable;
}

void sub_2582836E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  EQKitPath::~EQKitPath(va);
  _Unwind_Resume(a1);
}

EQKit::Font::SlantKey *EQKit::Font::SlantKey::SlantKey(EQKit::Font::SlantKey *this, CTFontRef font, int a3)
{
  *(this + 1) = 0;
  *(this + 8) = -1;
  *(this + 5) = a3;
  if (font)
  {
    if ((a3 - 0x10000) >> 20)
    {
      v6 = 1;
      LOWORD(v5) = a3;
    }

    else
    {
      v5 = ((a3 - 0x10000) >> 10) | 0xFFFFD800;
      characters[1] = a3 & 0x3FF | 0xDC00;
      v6 = 2;
    }

    characters[0] = v5;
    if (CTFontGetGlyphsForCharacters(font, characters, glyphs, v6))
    {
      *(this + 8) = glyphs[0];
    }

    *this = CTFontCopyPostScriptName(font);
    *(this + 1) = CTFontGetSize(font);
  }

  return this;
}

void EQKit::Font::SlantKey::~SlantKey(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL EQKit::Font::SlantKey::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  if (*a1 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2 && v3)
  {
    return CFStringCompare(v2, v3, 0) == kCFCompareEqualTo;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::find<EQKit::Font::CharacterProperty::Map::Key>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = EQKit::Font::CharacterProperty::Map::Key::operator<(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || EQKit::Font::CharacterProperty::Map::Key::operator<(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL EQKit::Font::CharacterProperty::Map::Key::operator<(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v3 < v4)
  {
    return 1;
  }

  return v3 == v4 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 8), (a2 + 8)) & 0x80u) != 0;
}

void EQKit::Font::CharacterProperty::Map::~Map(char **this)
{
  std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy((this + 6), this[7]);
  std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy((this + 3), this[4]);
  std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(this, this[1]);
}

void std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

EQKit::Font::STIXCollection::FontInfo *EQKit::Font::STIXCollection::FontInfo::FontInfo(EQKit::Font::STIXCollection::FontInfo *this, CFStringRef name)
{
  *(this + 8) = 0u;
  v4 = this + 8;
  *(this + 40) = 0;
  *(this + 24) = 0u;
  v5 = CTFontCreateWithName(name, 12.0, 0);
  *this = v5;
  if (v5)
  {
    v6 = CTFontCopyPostScriptName(v5);
    if (v6)
    {
      *(this + 40) = CFStringCompare(name, v6, 0) == kCFCompareEqualTo;
      std::string::__assign_external((v4 + 8), [(__CFString *)v6 UTF8String]);
      CFRelease(v6);
    }

    *v4 = CTFontCopyCharacterSet(*this);
  }

  return this;
}

void sub_258283AB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

void EQKit::Font::STIXCollection::FontInfo::~FontInfo(EQKit::Font::STIXCollection::FontInfo *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
    *(this + 1) = 0;
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::destroy(a1, a2[1]);
    EQKit::Font::CompositeStretch::~CompositeStretch((a2 + 5));

    operator delete(a2);
  }
}

void std::shared_ptr<EQKit::StemStretch::Glyph>::shared_ptr[abi:ne200100]<EQKit::StemStretch::Glyph,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_258283C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<EQKit::StemStretch::Glyph>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

EQKit::StemStretch::Glyph **std::unique_ptr<EQKit::StemStretch::Glyph>::~unique_ptr[abi:ne200100](EQKit::StemStretch::Glyph **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    EQKit::StemStretch::Glyph::~Glyph(v2);
    MEMORY[0x259C7CB70]();
  }

  return a1;
}

void std::__shared_ptr_pointer<EQKit::StemStretch::Glyph *,std::shared_ptr<EQKit::StemStretch::Glyph>::__shared_ptr_default_delete<EQKit::StemStretch::Glyph,EQKit::StemStretch::Glyph>,std::allocator<EQKit::StemStretch::Glyph>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C7CB70);
}

EQKit::StemStretch::Glyph *std::__shared_ptr_pointer<EQKit::StemStretch::Glyph *,std::shared_ptr<EQKit::StemStretch::Glyph>::__shared_ptr_default_delete<EQKit::StemStretch::Glyph,EQKit::StemStretch::Glyph>,std::allocator<EQKit::StemStretch::Glyph>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    EQKit::StemStretch::Glyph::~Glyph(result);

    JUMPOUT(0x259C7CB70);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<EQKit::StemStretch::Glyph *,std::shared_ptr<EQKit::StemStretch::Glyph>::__shared_ptr_default_delete<EQKit::StemStretch::Glyph,EQKit::StemStretch::Glyph>,std::allocator<EQKit::StemStretch::Glyph>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_2582D0730;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<EQKit::StemStretch::Key const,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<EQKit::StemStretch::Key const,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,0>(EQKit::StemStretch::Key *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  EQKit::StemStretch::Key::~Key(this);
}

void *std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 16);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 16);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (EQKit::StemStretch::Key::operator==((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__emplace_unique_key_args<EQKit::StemStretch::Key,std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!EQKit::StemStretch::Key::operator==((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_2582841D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<EQKit::StemStretch::Key const,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,0>((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_2582D0730;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      EQKit::StemStretch::Key::~Key((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_2582D0730;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__deallocate_node(uint64_t a1, const void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      EQKit::Font::SlantKey::~SlantKey(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      EQKit::Font::CompositeStretch::~CompositeStretch((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EQKit::Font::CompositeStretch>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EQKit::Font::CompositeStretch>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t EQKitCache<EQKit::StemStretch::Key,std::shared_ptr<EQKit::StemStretch::Glyph>,std::shared_ptr<EQKit::StemStretch::Glyph const>>::~EQKitCache(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t EQKitCache<EQKit::StemStretch::Key,EQKitTypes::Axis::Enum,EQKitTypes::Axis::Enum>::~EQKitCache(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t EQKitCache<EQKit::Font::SlantKey,EQKit::Font::SlantInfo,EQKit::Font::SlantInfo>::~EQKitCache(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::~__hash_table(a1 + 8);
  return a1;
}

uint64_t std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::push_back[abi:ne200100](uint64_t a1, EQKit::StemStretch::Key *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__emplace_back_slow_path<std::pair<EQKit::StemStretch::Key,unsigned long>>(a1, a2);
  }

  else
  {
    EQKit::StemStretch::Key::Key(*(a1 + 8), a2);
    *(v4 + 32) = *(a2 + 4);
    result = v4 + 40;
    *(a1 + 8) = v4 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__emplace_back_slow_path<std::pair<EQKit::StemStretch::Key,unsigned long>>(uint64_t a1, const EQKit::StemStretch::Key *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<EQKit::StemStretch::Key,unsigned long>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  *(EQKit::StemStretch::Key::Key((40 * v2), a2) + 32) = *(a2 + 4);
  *&v15 = v15 + 40;
  v7 = *(a1 + 8);
  v8 = (v14 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<EQKit::StemStretch::Key,unsigned long>>,std::pair<EQKit::StemStretch::Key,unsigned long>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::pair<EQKit::StemStretch::Key,unsigned long>>::~__split_buffer(&v13);
  return v12;
}

void sub_258284A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<EQKit::StemStretch::Key,unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<EQKit::StemStretch::Key,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<EQKit::StemStretch::Key,unsigned long>>,std::pair<EQKit::StemStretch::Key,unsigned long>*>(int a1, EQKit::StemStretch::Key *a2, EQKit::StemStretch::Key *a3, EQKit::StemStretch::Key *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      EQKit::StemStretch::Key::Key(this, v8);
      *(this + 4) = *(v8 + 4);
      v8 = (v8 + 40);
      this = (this + 40);
      v7 -= 40;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      EQKit::StemStretch::Key::~Key(v6);
      v6 = (v6 + 40);
    }
  }
}

void sub_258284B10(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 40);
    do
    {
      EQKit::StemStretch::Key::~Key(v4);
      v4 = (v5 - 40);
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<EQKit::StemStretch::Key,unsigned long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    EQKit::StemStretch::Key::~Key((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,false>(EQKit::StemStretch::Key *a1, unint64_t a2, uint64_t (**a3)(const EQKit::StemStretch::Key *, const EQKit::StemStretch::Key *), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v48 = a2;
  v49 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v45 = *a3;
        v48 = (v7 - 40);
        if ((v45)(v7 - 40))
        {
          v44 = &v49;
          v47 = &v48;
          goto LABEL_98;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v48 = (v7 - 40);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(v8, (v8 + 40), (v8 + 80), v7 - 40, a3);
      return;
    }

    if (v11 == 5)
    {
      v48 = (v7 - 40);
      v53 = (v8 + 40);
      v54[0] = v8;
      v51 = (v8 + 120);
      v52 = (v8 + 80);
      v50 = v7 - 40;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(v8, (v8 + 40), (v8 + 80), v8 + 120, a3);
      if ((*a3)((v7 - 40), (v8 + 120)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v51, &v50);
        if ((*a3)(v51, (v8 + 80)))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v52, &v51);
          if ((*a3)(v52, (v8 + 40)))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
            v40 = (*a3)(v53, v8);
            goto LABEL_92;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 959)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v8, v7, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v8, v7, a3);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,std::pair<EQKit::StemStretch::Key,unsigned long>*>(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = (v8 + 40 * (v11 >> 1));
    v14 = (v7 - 40);
    if (v10 < 0x1401)
    {
      v53 = v8;
      v54[0] = (v8 + 40 * (v11 >> 1));
      v52 = v14;
      v18 = (*a3)(v8, v13);
      v19 = (*a3)(v14, v8);
      if (v18)
      {
        if (v19)
        {
          v20 = v54;
          goto LABEL_37;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
        if ((*a3)(v52, v53))
        {
          v20 = &v53;
LABEL_37:
          v22 = &v52;
LABEL_38:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v20, v22);
        }
      }

      else if (v19)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
        if ((*a3)(v53, v54[0]))
        {
          v20 = v54;
          v22 = &v53;
          goto LABEL_38;
        }
      }

      v8 = v49;
      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v53 = (v8 + 40 * (v11 >> 1));
    v54[0] = v8;
    v52 = v14;
    v15 = (*a3)(v13, v8);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v17 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_29;
        }

        v17 = &v53;
      }

      v21 = &v52;
      goto LABEL_28;
    }

    if (v16)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v17 = v54;
        v21 = &v53;
LABEL_28:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v17, v21);
      }
    }

LABEL_29:
    v8 = v49;
    v23 = v49 + 40 * v12;
    v53 = (v23 - 40);
    v54[0] = (v49 + 40);
    v52 = (v48 - 80);
    v24 = (*a3)(v23 - 40);
    v25 = (*a3)((v48 - 80), (v23 - 40));
    if (v24)
    {
      if (v25)
      {
        v26 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_45;
        }

        v26 = &v53;
      }

      v27 = &v52;
      goto LABEL_44;
    }

    if (v25)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v26 = v54;
        v27 = &v53;
LABEL_44:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v26, v27);
      }
    }

LABEL_45:
    v53 = (v23 + 40);
    v54[0] = (v49 + 80);
    v52 = (v48 - 120);
    v28 = (*a3)(v23 + 40);
    v29 = (*a3)((v48 - 120), (v23 + 40));
    if (v28)
    {
      if (v29)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v52);
        goto LABEL_54;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
      if ((*a3)(v52, v53))
      {
        v30 = &v53;
        v31 = &v52;
        goto LABEL_53;
      }
    }

    else if (v29)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v30 = v54;
        v31 = &v53;
LABEL_53:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v30, v31);
      }
    }

LABEL_54:
    v53 = (v49 + 40 * v12);
    v54[0] = (v23 - 40);
    v52 = (v23 + 40);
    v32 = (*a3)(v23, (v23 - 40));
    v33 = (*a3)((v23 + 40), v23);
    if (v32)
    {
      if (v33)
      {
        v34 = v54;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_64;
        }

        v34 = &v53;
      }

      v35 = &v52;
      goto LABEL_63;
    }

    if (v33)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
      if ((*a3)(v53, v54[0]))
      {
        v34 = v54;
        v35 = &v53;
LABEL_63:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v34, v35);
      }
    }

LABEL_64:
    EQKit::StemStretch::Key::Key(v54, v49);
    EQKit::StemStretch::Key::operator=(v49, v23);
    EQKit::StemStretch::Key::operator=(v23, v54);
    EQKit::StemStretch::Key::~Key(v54);
    v36 = *(v49 + 4);
    *(v49 + 4) = *(v23 + 4);
    *(v23 + 4) = v36;
    if (a5)
    {
LABEL_40:
      v7 = v48;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v48;
    if (((*a3)((v8 - 40), v8) & 1) == 0)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<EQKit::StemStretch::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&)>(v8, v48, a3);
      goto LABEL_75;
    }

LABEL_66:
    v37 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<EQKit::StemStretch::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&)>(v8, v7, a3);
    if ((v38 & 1) == 0)
    {
      goto LABEL_73;
    }

    v39 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v8, v37, a3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>((v37 + 40), v7, a3))
    {
      if (v39)
      {
        return;
      }

      v48 = v37;
      v7 = v37;
    }

    else
    {
      if (!v39)
      {
LABEL_73:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,false>(v8, v37, a3, -i, a5 & 1);
        v8 = (v37 + 40);
LABEL_75:
        a5 = 0;
        v49 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v49 = (v37 + 40);
      v8 = (v37 + 40);
    }
  }

  v41 = (v8 + 40);
  v48 = (v7 - 40);
  v53 = (v8 + 40);
  v54[0] = v8;
  v52 = (v7 - 40);
  v42 = (*a3)((v8 + 40), v8);
  v43 = (*a3)((v7 - 40), v41);
  if (v42)
  {
    if (v43)
    {
      v44 = v54;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v54, &v53);
      if (!(*a3)(v52, v53))
      {
        return;
      }

      v44 = &v53;
    }

    v47 = &v52;
    goto LABEL_98;
  }

  if (v43)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v53, &v52);
    v40 = (*a3)(v53, v54[0]);
LABEL_92:
    if (v40)
    {
      v44 = v54;
      v47 = &v53;
LABEL_98:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v44, v47);
    }
  }
}

void sub_25828523C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(const EQKit::StemStretch::Key **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  EQKit::StemStretch::Key::Key(v5, *a1);
  EQKit::StemStretch::Key::operator=(v2, v3);
  EQKit::StemStretch::Key::operator=(v3, v5);
  EQKit::StemStretch::Key::~Key(v5);
  v4 = *(v2 + 4);
  *(v2 + 4) = *(v3 + 32);
  *(v3 + 32) = v4;
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(const EQKit::StemStretch::Key *a1, const EQKit::StemStretch::Key *a2, const EQKit::StemStretch::Key *a3, uint64_t a4, uint64_t (**a5)(const EQKit::StemStretch::Key *, const EQKit::StemStretch::Key *))
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v19 = a2;
  v20 = a1;
  v18 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v20;
LABEL_9:
      v13 = &v18;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v20, &v19);
    if ((*a5)(v18, v19))
    {
      v12 = &v19;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v19, &v18);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      v13 = &v19;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v15, &v14);
    if ((*a5)(v15, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v16, &v15);
      if ((*a5)(v16, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v17, &v16);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, const EQKit::StemStretch::Key *a2, uint64_t (**a3)(const EQKit::StemStretch::Key *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 40);
    if ((a1 + 40) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          EQKit::StemStretch::Key::Key(v13, v9);
          v14 = *(v8 + 9);
          v10 = v7;
          while (1)
          {
            EQKit::StemStretch::Key::operator=(a1 + v10 + 40, a1 + v10);
            *(a1 + v10 + 72) = *(a1 + v10 + 32);
            if (!v10)
            {
              break;
            }

            v11 = (*a3)(v13, a1 + v10 - 40);
            v10 -= 40;
            if ((v11 & 1) == 0)
            {
              v12 = a1 + v10 + 40;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          EQKit::StemStretch::Key::operator=(v12, v13);
          *(v12 + 32) = v14;
          EQKit::StemStretch::Key::~Key(v13);
        }

        v5 = (v9 + 40);
        v7 += 40;
        v8 = v9;
      }

      while ((v9 + 40) != a2);
    }
  }
}

void sub_258285518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, const EQKit::StemStretch::Key *a2, uint64_t (**a3)(const EQKit::StemStretch::Key *, uint64_t))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a1 + 40);
    if ((a1 + 40) != a2)
    {
      do
      {
        v7 = v5;
        if ((*a3)(v5, v4))
        {
          EQKit::StemStretch::Key::Key(v8, v7);
          v9 = *(v4 + 72);
          do
          {
            EQKit::StemStretch::Key::operator=(v4 + 40, v4);
            *(v4 + 72) = *(v4 + 32);
            v4 -= 40;
          }

          while (((*a3)(v8, v4) & 1) != 0);
          EQKit::StemStretch::Key::operator=(v4 + 40, v8);
          *(v4 + 72) = v9;
          EQKit::StemStretch::Key::~Key(v8);
        }

        v5 = (v7 + 40);
        v4 = v7;
      }

      while ((v7 + 40) != a2);
    }
  }
}

void sub_258285600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

const EQKit::StemStretch::Key *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<EQKit::StemStretch::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&)>(EQKit::StemStretch::Key *a1, unint64_t a2, unsigned int (**a3)(_BYTE *))
{
  v15 = a1;
  v14 = a2;
  EQKit::StemStretch::Key::Key(v12, a1);
  v13 = *(a1 + 4);
  if ((*a3)(v12, a2 - 40))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 40);
      v15 = v6;
    }

    while (((*a3)(v12, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 40);
    do
    {
      v6 = v7;
      v15 = v7;
      if (v7 >= v14)
      {
        break;
      }

      v8 = (*a3)(v12, v7);
      v7 = (v6 + 40);
    }

    while (!v8);
  }

  v9 = v14;
  if (v6 < v14)
  {
    do
    {
      v9 -= 40;
      v14 = v9;
    }

    while (((*a3)(v12, v9) & 1) != 0);
    v6 = v15;
  }

  if (v6 < v9)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v15, &v14);
      do
      {
        v15 = (v15 + 40);
      }

      while (!(*a3)(v12));
      do
      {
        v14 -= 40;
      }

      while (((*a3)(v12) & 1) != 0);
      v6 = v15;
    }

    while (v15 < v14);
  }

  if ((v6 - 40) != a1)
  {
    EQKit::StemStretch::Key::operator=(a1, v6 - 40);
    *(a1 + 4) = *(v6 - 1);
  }

  EQKit::StemStretch::Key::operator=(v6 - 40, v12);
  *(v6 - 1) = v13;
  v10 = v15;
  EQKit::StemStretch::Key::~Key(v12);
  return v10;
}

void sub_2582857A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<EQKit::StemStretch::Key,unsigned long> *,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&)>(EQKit::StemStretch::Key *a1, unint64_t a2, uint64_t (**a3)(void))
{
  v15 = a2;
  EQKit::StemStretch::Key::Key(v13, a1);
  v5 = 0;
  v14 = *(a1 + 4);
  do
  {
    v16 = (a1 + v5 + 40);
    v5 += 40;
  }

  while (((*a3)() & 1) != 0);
  v6 = v15;
  if (v5 == 40)
  {
    v9 = (a1 + 40);
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 -= 40;
      v15 = v6;
    }

    while (((v10)(v6, v13) & 1) == 0);
  }

  else
  {
    v7 = v15 - 40;
    do
    {
      v15 = v7;
      v8 = (*a3)(v7, v13);
      v7 -= 40;
    }

    while (!v8);
    v9 = v16;
  }

  v11 = v9;
  if (v9 < v15)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v16, &v15);
      do
      {
        v16 = (v16 + 40);
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v15 -= 40;
      }

      while (!(*a3)());
      v11 = v16;
    }

    while (v16 < v15);
  }

  if ((v11 - 40) != a1)
  {
    EQKit::StemStretch::Key::operator=(a1, v11 - 40);
    *(a1 + 4) = *(v11 - 1);
  }

  EQKit::StemStretch::Key::operator=(v11 - 40, v13);
  *(v11 - 1) = v14;
  EQKit::StemStretch::Key::~Key(v13);
  return v11 - 40;
}

void sub_258285950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(void *a1, const EQKit::StemStretch::Key *a2, uint64_t (**a3)(const EQKit::StemStretch::Key *, const EQKit::StemStretch::Key *))
{
  v28 = a2;
  v29 = a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v28 = (a2 - 40);
      if ((v7)())
      {
        v8 = &v29;
        v9 = &v28;
LABEL_30:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v16 = (a1 + 10);
    v26[0] = a1;
    v32 = (a1 + 10);
    v33 = (a1 + 5);
    v17 = (*a3)((a1 + 5), a1);
    v18 = (*a3)((a1 + 10), (a1 + 5));
    if (v17)
    {
      if (v18)
      {
        v19 = v26;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v26, &v33);
        if (!(*a3)(v32, v33))
        {
          goto LABEL_35;
        }

        v19 = &v33;
      }

      v20 = &v32;
    }

    else
    {
      if (!v18 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v33, &v32), !(*a3)(v33, v26[0])))
      {
LABEL_35:
        v21 = (a1 + 15);
        if (v21 != a2)
        {
          v22 = 0;
          while (1)
          {
            if ((*a3)(v21, v16))
            {
              EQKit::StemStretch::Key::Key(v26, v21);
              v27 = *(v21 + 4);
              do
              {
                v23 = v16;
                EQKit::StemStretch::Key::operator=(v16 + 40, v16);
                *(v16 + 72) = *(v16 + 32);
                if (v16 == v29)
                {
                  break;
                }

                v16 -= 40;
              }

              while (((*a3)(v26, (v23 - 40)) & 1) != 0);
              EQKit::StemStretch::Key::operator=(v23, v26);
              *(v23 + 32) = v27;
              if (++v22 == 8)
              {
                v24 = (v21 + 40) == v28;
                EQKit::StemStretch::Key::~Key(v26);
                return v24;
              }

              EQKit::StemStretch::Key::~Key(v26);
            }

            v16 = v21;
            v21 = (v21 + 40);
            if (v21 == v28)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = v26;
      v20 = &v33;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v19, v20);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(a1, (a1 + 5), (a1 + 10), a2 - 40, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v26[0] = a1;
    v32 = (a1 + 10);
    v33 = (a1 + 5);
    v10 = (a2 - 40);
    v30 = (a2 - 40);
    v31 = (a1 + 15);
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,0>(a1, (a1 + 5), (a1 + 10), (a1 + 15), a3);
    if (!(*a3)(v10, (a1 + 15)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v31, &v30);
    if (!(*a3)(v31, (a1 + 10)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v32, &v31);
    if (!(*a3)(v32, (a1 + 5)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v33, &v32);
    v11 = (*a3)(v33, a1);
    goto LABEL_22;
  }

  v12 = (a1 + 5);
  v13 = (a2 - 40);
  v26[0] = a1;
  v32 = (a2 - 40);
  v33 = (a1 + 5);
  v14 = (*a3)((a1 + 5), a1);
  v15 = (*a3)(v13, v12);
  if (v14)
  {
    if (v15)
    {
      v8 = v26;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(v26, &v33);
      if (!(*a3)(v32, v33))
      {
        return 1;
      }

      v8 = &v33;
    }

    v9 = &v32;
    goto LABEL_30;
  }

  if (v15)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v33, &v32);
    v11 = (*a3)(v33, v26[0]);
LABEL_22:
    if (v11)
    {
      v8 = v26;
      v9 = &v33;
      goto LABEL_30;
    }
  }

  return 1;
}

void sub_258285CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

const EQKit::StemStretch::Key *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*,std::pair<EQKit::StemStretch::Key,unsigned long>*>(EQKit::StemStretch::Key *a1, EQKit::StemStretch::Key *a2, const EQKit::StemStretch::Key *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 40 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v7, a4, v9, v12);
        v12 = (v12 - 40);
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*a4)(v13, v18))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::pair<EQKit::StemStretch::Key,unsigned long> *&,std::pair<EQKit::StemStretch::Key,unsigned long> *&>(&v17, &v18);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v18, a4, v9, v18);
        }

        v13 = (v17 + 40);
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 41)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(v7, v6, a4, v14);
        v6 = (v6 - 40);
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, const EQKit::StemStretch::Key *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v10 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v11 = a1 + 40 * v10;
      v12 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && (*a2)(a1 + 40 * v10, v11 + 40))
      {
        v11 += 40;
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        EQKit::StemStretch::Key::Key(v15, v5);
        v16 = *(v5 + 4);
        do
        {
          v13 = v11;
          EQKit::StemStretch::Key::operator=(v5, v11);
          *(v5 + 4) = *(v11 + 32);
          if (v7 < v10)
          {
            break;
          }

          v14 = (2 * v10) | 1;
          v11 = a1 + 40 * v14;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v14;
          }

          else if ((*a2)(a1 + 40 * v14, v11 + 40))
          {
            v11 += 40;
          }

          else
          {
            v10 = v14;
          }

          v5 = v13;
        }

        while (!(*a2)(v11, v15));
        EQKit::StemStretch::Key::operator=(v13, v15);
        *(v13 + 32) = v16;
        EQKit::StemStretch::Key::~Key(v15);
      }
    }
  }
}

void sub_258285FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(EQKit::StemStretch::Key *a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    EQKit::StemStretch::Key::Key(v10, a1);
    v11 = *(a1 + 4);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(a1, a3, a4);
    v9 = v8;
    if (v8 == a2 - 40)
    {
      EQKit::StemStretch::Key::operator=(v8, v10);
      *(v9 + 32) = v11;
    }

    else
    {
      EQKit::StemStretch::Key::operator=(v8, a2 - 40);
      *(v9 + 32) = *(a2 - 8);
      EQKit::StemStretch::Key::operator=(a2 - 40, v10);
      *(a2 - 8) = v11;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(a1, v9 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v9 + 40 - a1) >> 3));
    }

    EQKit::StemStretch::Key::~Key(v10);
  }
}

void sub_2582860E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = v8 + 40;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 80;
      if ((*a2)(v8 + 40, v8 + 80))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    EQKit::StemStretch::Key::operator=(a1, v9);
    *(a1 + 32) = *(v9 + 32);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<EQKit::StemStretch::Key,unsigned long> const&,std::pair<EQKit::StemStretch::Key,unsigned long> const&),std::pair<EQKit::StemStretch::Key,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + 40 * (v4 >> 1);
    v10 = (a2 - 40);
    if ((*a3)(v9, a2 - 40))
    {
      EQKit::StemStretch::Key::Key(v12, v10);
      v13 = *(a2 - 8);
      do
      {
        v11 = v9;
        EQKit::StemStretch::Key::operator=(v10, v9);
        *(v10 + 4) = *(v9 + 32);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 40 * v8;
        v10 = v11;
      }

      while (((*a3)(v9, v12) & 1) != 0);
      EQKit::StemStretch::Key::operator=(v11, v12);
      *(v11 + 32) = v13;
      EQKit::StemStretch::Key::~Key(v12);
    }
  }
}

void sub_2582862A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::StemStretch::Key::~Key(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::__erase_unique<EQKit::StemStretch::Key>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void std::vector<std::pair<EQKit::StemStretch::Key,unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        EQKit::StemStretch::Key::~Key((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__erase_unique<EQKit::StemStretch::Key>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::find<EQKit::StemStretch::Key>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::__unordered_map_hasher<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::hash<EQKit::OpticalKern::Glyph::Key>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,true>,std::__unordered_map_equal<EQKit::OpticalKern::Glyph::Key,std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>,std::equal_to<EQKit::OpticalKern::Glyph::Key>,std::hash<EQKit::OpticalKern::Glyph::Key>,true>,std::allocator<std::__hash_value_type<EQKit::OpticalKern::Glyph::Key,std::pair<std::shared_ptr<EQKit::OpticalKern::Edge::Path>,unsigned long>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      EQKit::StemStretch::Key::~Key((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__emplace_unique_key_args<EQKit::StemStretch::Key,std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<EQKit::StemStretch::Key const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!EQKit::StemStretch::Key::operator==((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_2582866A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<EQKitTypes::Axis::Enum,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::find<EQKit::Font::SlantKey>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 16);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 16);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (EQKit::Font::SlantKey::operator==((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__emplace_unique_key_args<EQKit::Font::SlantKey,std::piecewise_construct_t const&,std::tuple<EQKit::Font::SlantKey const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 16);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    std::__hash_table<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::__unordered_map_hasher<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::hash<EQKit::Font::SlantKey>,std::equal_to<EQKit::Font::SlantKey>,true>,std::__unordered_map_equal<EQKit::Font::SlantKey,std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,std::equal_to<EQKit::Font::SlantKey>,std::hash<EQKit::Font::SlantKey>,true>,std::allocator<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<EQKit::Font::SlantKey const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!EQKit::Font::SlantKey::operator==((v12 + 2), a2))
  {
    goto LABEL_19;
  }

  return v12;
}

void sub_258286AB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<EQKit::Font::SlantKey,std::pair<EQKit::Font::SlantInfo,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      EQKit::Font::SlantKey::~SlantKey(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<EQKit::Font::SlantKey const,std::pair<EQKit::Font::SlantInfo,unsigned long>>::pair[abi:ne200100]<EQKit::Font::SlantKey const&>(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  if (v3)
  {
    CFRetain(v3);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t EQKitCache<unsigned int,EQKit::Font::STIXCollection::StretchInfo,EQKit::Font::STIXCollection::StretchInfo>::EQKitCache(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_2582D0730;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,false>(uint64_t result, int *a2, uint64_t (**a3)(int *, int *), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 4;
  v96 = a2 - 2;
  v97 = a2 - 12;
  v98 = a2 - 8;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = (*a3)(a2 - 4, v10);
        if (result)
        {
          v89 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v89;
          v90 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v78 = (*a3)((v10 + 16), v10);
      result = (*a3)(a2 - 4, (v10 + 16));
      if (v78)
      {
        v80 = (v10 + 8);
        v79 = *v10;
        if (result)
        {
          *v10 = *(a2 - 4);
        }

        else
        {
          *v10 = *(v10 + 16);
          *(v10 + 16) = v79;
          v80 = (v10 + 24);
          v94 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 24);
          *(v10 + 24) = v94;
          result = (*a3)(a2 - 4, (v10 + 16));
          if (!result)
          {
            return result;
          }

          v79 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v79;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v91 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 4);
        *(a2 - 4) = v91;
        v92 = *(v10 + 24);
        v96 = (v10 + 24);
        *(v10 + 24) = *(a2 - 1);
        *(a2 - 1) = v92;
        result = (*a3)((v10 + 16), v10);
        if (!result)
        {
          return result;
        }

        v93 = *v10;
        *v10 = *(v10 + 16);
        *(v10 + 16) = v93;
        v80 = (v10 + 8);
      }

      v95 = *v80;
      *v80 = *v96;
      *v96 = v95;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(v10, (v10 + 16), (v10 + 32), (v10 + 48), a3);
      result = (*a3)(a2 - 4, (v10 + 48));
      if (result)
      {
        v81 = *(v10 + 48);
        *(v10 + 48) = *(a2 - 4);
        *(a2 - 4) = v81;
        v82 = *(v10 + 56);
        *(v10 + 56) = *(a2 - 1);
        *(a2 - 1) = v82;
        result = (*a3)((v10 + 48), (v10 + 32));
        if (result)
        {
          v83 = *(v10 + 32);
          *(v10 + 32) = *(v10 + 48);
          *(v10 + 48) = v83;
          v84 = *(v10 + 40);
          *(v10 + 40) = *(v10 + 56);
          *(v10 + 56) = v84;
          result = (*a3)((v10 + 32), (v10 + 16));
          if (result)
          {
            v85 = *(v10 + 16);
            *(v10 + 16) = *(v10 + 32);
            *(v10 + 32) = v85;
            v86 = *(v10 + 24);
            *(v10 + 24) = *(v10 + 40);
            *(v10 + 40) = v86;
            result = (*a3)((v10 + 16), v10);
            if (result)
            {
              v87 = *v10;
              *v10 = *(v10 + 16);
              *(v10 + 16) = v87;
              v88 = *(v10 + 8);
              *(v10 + 8) = *(v10 + 24);
              *(v10 + 24) = v88;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(v10, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(v10, a2, a3);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,std::pair<unsigned int,unsigned long>*>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v10 + 16 * (v13 >> 1);
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15((v10 + 16 * (v13 >> 1)), v10);
      v17 = (*a3)(a2 - 4, v14);
      if (v16)
      {
        v19 = (v8 + 8);
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_28;
        }

        *v8 = *v14;
        *v14 = v18;
        v19 = (v14 + 8);
        v32 = *(v8 + 8);
        *(v8 + 8) = *(v14 + 8);
        *(v14 + 8) = v32;
        if ((*a3)(a2 - 4, v14))
        {
          v18 = *v14;
          *v14 = *v9;
LABEL_28:
          *v9 = v18;
          v26 = a2 - 2;
LABEL_29:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 4);
        *(a2 - 4) = v24;
        v26 = (v14 + 8);
        v25 = *(v14 + 8);
        *(v14 + 8) = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, v8))
        {
          v27 = *v8;
          *v8 = *v14;
          v19 = (v8 + 8);
          *v14 = v27;
          goto LABEL_29;
        }
      }

      v34 = (v14 - 16);
      v35 = (*a3)((v14 - 16), (v8 + 16));
      v36 = (*a3)(v98, (v14 - 16));
      if (v35)
      {
        v37 = *(v8 + 16);
        v38 = (v8 + 24);
        if (v36)
        {
          *(v8 + 16) = *v98;
          *v98 = v37;
          goto LABEL_41;
        }

        *(v8 + 16) = *v34;
        *v34 = v37;
        v44 = *v38;
        *v38 = *(v14 - 8);
        *(v14 - 8) = v44;
        if ((*a3)(v98, (v14 - 16)))
        {
          v45 = *v34;
          *v34 = *v98;
          *v98 = v45;
          v38 = (v14 - 8);
LABEL_41:
          v41 = a2 - 6;
LABEL_42:
          v46 = *v38;
          *v38 = *v41;
          *v41 = v46;
        }
      }

      else if (v36)
      {
        v39 = *v34;
        *v34 = *(a2 - 8);
        *(a2 - 8) = v39;
        v41 = (v14 - 8);
        v40 = *(v14 - 8);
        *(v14 - 8) = *(a2 - 3);
        *(a2 - 3) = v40;
        if ((*a3)((v14 - 16), (v8 + 16)))
        {
          v42 = *(v8 + 16);
          *(v8 + 16) = *v34;
          *v34 = v42;
          v38 = (v8 + 24);
          goto LABEL_42;
        }
      }

      v47 = (v14 + 16);
      v48 = (*a3)((v14 + 16), (v8 + 32));
      v49 = (*a3)(v97, (v14 + 16));
      if (v48)
      {
        v50 = *(v8 + 32);
        v51 = (v8 + 40);
        if (v49)
        {
          *(v8 + 32) = *v97;
          *v97 = v50;
          goto LABEL_51;
        }

        *(v8 + 32) = *v47;
        *v47 = v50;
        v56 = *v51;
        *v51 = *(v14 + 24);
        *(v14 + 24) = v56;
        if ((*a3)(v97, (v14 + 16)))
        {
          v57 = *v47;
          *v47 = *v97;
          *v97 = v57;
          v51 = (v14 + 24);
LABEL_51:
          v54 = a2 - 10;
LABEL_52:
          v58 = *v51;
          *v51 = *v54;
          *v54 = v58;
        }
      }

      else if (v49)
      {
        v52 = *v47;
        *v47 = *(a2 - 12);
        *(a2 - 12) = v52;
        v54 = (v14 + 24);
        v53 = *(v14 + 24);
        *(v14 + 24) = *(a2 - 5);
        *(a2 - 5) = v53;
        if ((*a3)((v14 + 16), (v8 + 32)))
        {
          v55 = *(v8 + 32);
          *(v8 + 32) = *v47;
          *v47 = v55;
          v51 = (v8 + 40);
          goto LABEL_52;
        }
      }

      v59 = (*a3)(v14, (v14 - 16));
      v60 = (*a3)((v14 + 16), v14);
      if (v59)
      {
        v61 = *v34;
        if (v60)
        {
          *v34 = *v47;
          *v47 = v61;
          v62 = (v14 + 24);
          v63 = *v14;
          v64 = (v14 - 8);
          goto LABEL_61;
        }

        *v34 = *v14;
        *v14 = v61;
        v69 = *(v14 - 8);
        *(v14 - 8) = *(v14 + 8);
        *(v14 + 8) = v69;
        v70 = (*a3)((v14 + 16), v14);
        v63 = *v14;
        if (v70)
        {
          v71 = *v47;
          *v14 = *v47;
          *v47 = v63;
          v62 = (v14 + 24);
          v63 = v71;
          v64 = (v14 + 8);
LABEL_61:
          v66 = v62;
LABEL_62:
          v72 = *v64;
          *v64 = *v66;
          *v66 = v72;
        }
      }

      else
      {
        v63 = *v14;
        if (v60)
        {
          *v14 = *v47;
          *v47 = v63;
          v66 = (v14 + 8);
          v65 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 24);
          *(v14 + 24) = v65;
          v67 = (*a3)(v14, (v14 - 16));
          v63 = *v14;
          if (v67)
          {
            v68 = *v34;
            *v34 = v63;
            v64 = (v14 - 8);
            *v14 = v68;
            v63 = v68;
            goto LABEL_62;
          }
        }
      }

      v73 = *v8;
      *v8 = v63;
      v23 = (v8 + 8);
      *v14 = v73;
      v31 = (v14 + 8);
LABEL_64:
      v74 = *v23;
      *v23 = *v31;
      *v31 = v74;
      goto LABEL_65;
    }

    v20 = v15(v10, (v10 + 16 * (v13 >> 1)));
    v21 = (*a3)(a2 - 4, v10);
    if (v20)
    {
      v23 = (v14 + 8);
      v22 = *v14;
      if (v21)
      {
        *v14 = *v9;
LABEL_38:
        *v9 = v22;
        v31 = a2 - 2;
        goto LABEL_64;
      }

      *v14 = *v10;
      *v10 = v22;
      v23 = (v10 + 8);
      v43 = *(v14 + 8);
      *(v14 + 8) = *(v10 + 8);
      *(v10 + 8) = v43;
      if ((*a3)(a2 - 4, v10))
      {
        v22 = *v10;
        *v10 = *v9;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v28 = *v10;
      *v10 = *(a2 - 4);
      *(a2 - 4) = v28;
      v29 = *(v10 + 8);
      *(v10 + 8) = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v10, v14))
      {
        v30 = *v14;
        *v14 = *v10;
        *v10 = v30;
        v23 = (v14 + 8);
        v31 = (v10 + 8);
        goto LABEL_64;
      }
    }

LABEL_65:
    if ((a5 & 1) == 0 && ((*a3)((v8 - 16), v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned long> *,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&)>(v8, a2, a3);
      v10 = result;
      goto LABEL_72;
    }

    v75 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned long> *,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&)>(v8, a2, a3);
    if ((v76 & 1) == 0)
    {
      goto LABEL_70;
    }

    v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(v8, v75, a3);
    v10 = (v75 + 4);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>((v75 + 4), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v77)
    {
LABEL_70:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,false>(v8, v75, a3, -v12, a5 & 1);
      v10 = (v75 + 4);
LABEL_72:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(v10, (v10 + 16), (v10 + 32), a2 - 4, a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(int *a1, int *a2, int *a3, int *a4, uint64_t (**a5)(int *, int *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = (a1 + 2);
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = (a3 + 2);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = (a2 + 2);
    v18 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v18;
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
    v16 = (a2 + 2);
    v15 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v15;
    if ((*a5)(a2, a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = (a1 + 2);
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
    v22 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v22;
    result = (*a5)(a3, a2);
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      result = (*a5)(a2, a1);
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = v26;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v16 = v3;
    v17 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
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
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 16) = *(v6 + v12);
            *(v13 + 24) = *(v6 + v12 + 8);
            if (!v12)
            {
              break;
            }

            v12 -= 16;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 16;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 8) = *(&v15 + 1);
        }

        v7 = v10 + 1;
        v9 += 16;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v13 = v3;
    v14 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = result - 16;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v11 = v9;
          do
          {
            *(v11 + 32) = *(v11 + 16);
            *(v11 + 40) = *(v11 + 24);
            result = (*a3)(&v12, v11);
            v11 -= 16;
          }

          while ((result & 1) != 0);
          *(v11 + 32) = v12;
          *(v11 + 40) = *(&v12 + 1);
        }

        v7 = v6 + 1;
        v9 += 16;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned long> *,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&)>(int *a1, unint64_t a2, uint64_t (**a3)(__int128 *, int *))
{
  v4 = a2;
  v12 = *a1;
  if ((*a3)(&v12, (a2 - 16)))
  {
    v6 = a1;
    do
    {
      v6 += 4;
    }

    while (((*a3)(&v12, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 4;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v12, v7);
      v7 = v6 + 4;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v12, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = *(v6 + 1);
    *(v6 + 1) = *(v4 + 8);
    *(v4 + 8) = v10;
    do
    {
      v6 += 4;
    }

    while (!(*a3)(&v12, v6));
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v12, v4) & 1) != 0);
  }

  if (v6 - 4 != a1)
  {
    *a1 = *(v6 - 4);
    *(a1 + 1) = *(v6 - 1);
  }

  *(v6 - 4) = v12;
  *(v6 - 1) = *(&v12 + 1);
  return v6;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned long> *,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&)>(int *a1, unint64_t a2, uint64_t (**a3)(int *, __int128 *))
{
  v6 = 0;
  v13 = *a1;
  do
  {
    v6 += 4;
  }

  while (((*a3)(&a1[v6], &v13) & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 4)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 16;
    }

    while (((*a3)(a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 16;
    }

    while (!(*a3)(a2, &v13));
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      v11 = *(v8 + 1);
      *(v8 + 1) = *(v9 + 8);
      *(v9 + 8) = v11;
      do
      {
        ++v8;
      }

      while (((*a3)(v8, &v13) & 1) != 0);
      do
      {
        v9 -= 16;
      }

      while (!(*a3)(v9, &v13));
    }

    while (v8 < v9);
  }

  result = (v8 - 1);
  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 4);
    *(a1 + 1) = *(v8 - 1);
  }

  *(v8 - 4) = v13;
  *(v8 - 1) = *(&v13 + 1);
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t a1, int *a2, uint64_t (**a3)(int *, int *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v17 = (*a3)((a1 + 16), a1);
      v18 = (*a3)(a2 - 4, (a1 + 16));
      if (v17)
      {
        v20 = (a1 + 8);
        v19 = *a1;
        if (v18)
        {
          *a1 = *(a2 - 4);
        }

        else
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v19;
          v20 = (a1 + 24);
          v34 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v34;
          if (!(*a3)(a2 - 4, (a1 + 16)))
          {
            return 1;
          }

          v19 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 4);
        }

        *(a2 - 4) = v19;
        v28 = a2 - 2;
      }

      else
      {
        if (!v18)
        {
          return 1;
        }

        v26 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v26;
        v28 = (a1 + 24);
        v27 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v27;
        if (!(*a3)((a1 + 16), a1))
        {
          return 1;
        }

        v29 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v29;
        v20 = (a1 + 8);
      }

      v35 = *v20;
      *v20 = *v28;
      *v28 = v35;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if ((*a3)(a2 - 4, (a1 + 48)))
        {
          v9 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 4);
          *(a2 - 4) = v9;
          v10 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)((a1 + 48), (a1 + 32)))
          {
            v11 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v11;
            v12 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 56) = v12;
            if ((*a3)((a1 + 32), (a1 + 16)))
            {
              v13 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v13;
              v14 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 40) = v14;
              if ((*a3)((a1 + 16), a1))
              {
                v15 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v15;
                v16 = *(a1 + 8);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 24) = v16;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,0>(a1, (a1 + 16), (a1 + 32), a2 - 4, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 4, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v21 = (a1 + 32);
  v22 = (*a3)((a1 + 16), a1);
  v23 = (*a3)((a1 + 32), (a1 + 16));
  if (v22)
  {
    v25 = (a1 + 8);
    v24 = *a1;
    if (v23)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v24;
      v25 = (a1 + 24);
      v36 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v36;
      if (!(*a3)((a1 + 32), (a1 + 16)))
      {
        goto LABEL_35;
      }

      v24 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v24;
    v32 = (a1 + 40);
    goto LABEL_34;
  }

  if (v23)
  {
    v30 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v30;
    v32 = (a1 + 24);
    v31 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 40) = v31;
    if ((*a3)((a1 + 16), a1))
    {
      v33 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v33;
      v25 = (a1 + 8);
LABEL_34:
      v37 = *v25;
      *v25 = *v32;
      *v32 = v37;
    }
  }

LABEL_35:
  v38 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((*a3)(v38, v21))
    {
      v45 = *v38;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 48) = *(a1 + v41 + 32);
        *(v42 + 56) = *(a1 + v41 + 40);
        if (v41 == -32)
        {
          break;
        }

        v41 -= 16;
        if (((*a3)(&v45, (v42 + 16)) & 1) == 0)
        {
          v43 = a1 + v41 + 48;
          goto LABEL_43;
        }
      }

      v43 = a1;
LABEL_43:
      *v43 = v45;
      *(v43 + 8) = *(&v45 + 1);
      if (++v40 == 8)
      {
        return v38 + 4 == a2;
      }
    }

    v21 = v38;
    v39 += 16;
    v38 += 4;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*,std::pair<unsigned int,unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(a1, a4, v8, v11--);
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
          v14 = *(v12 + 8);
          *(v12 + 8) = *(a1 + 8);
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 16;
      do
      {
        v16 = *a1;
        v17 = *(a1 + 8);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v16;
          *(v18 + 8) = v17;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 8) = *(v15 + 8);
          *v15 = v16;
          *(v15 + 8) = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(a1, v18 + 16, a4, (v18 + 16 - a1) >> 4);
        }

        v15 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t result, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 4)
    {
      v12 = (a4 - result) >> 3;
      v13 = v12 + 1;
      v14 = result + 16 * (v12 + 1);
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 16))
      {
        v14 += 16;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v19 = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          *(v7 + 1) = *(v14 + 8);
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = v8 + 16 * v17;
          v18 = 2 * v13 + 2;
          if (v18 < a3)
          {
            if ((*a2)(v8 + 16 * v17, v14 + 16))
            {
              v14 += 16;
              v17 = v18;
            }
          }

          result = (*a2)(v14, &v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19;
        *(v16 + 8) = *(&v19 + 1);
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 16 * v6;
    v9 = v8 + 16;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 32;
      if ((*a2)(v8 + 16, v8 + 32))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    *(a1 + 8) = *(v9 + 8);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned long> const&,std::pair<unsigned int,unsigned long> const&),std::pair<unsigned int,unsigned long>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v14 = v4;
    v15 = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = result + 16 * (v6 >> 1);
    v11 = (a2 - 16);
    result = (*a3)(v10, a2 - 16);
    if (result)
    {
      v13 = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        *(v11 + 1) = *(v10 + 8);
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = v8 + 16 * v9;
        result = (*a3)(v10, &v13);
        v11 = v12;
      }

      while ((result & 1) != 0);
      *v12 = v13;
      *(v12 + 8) = *(&v13 + 1);
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}*,EQKitLayoutStretchedOperator>,std::__unordered_map_hasher<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::hash<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,std::equal_to<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator}>,true>,std::__unordered_map_equal<objc_object  {objcproto15EQKitLayoutNode13EQKitOperator},EQKitLayoutStretchedOperator,std::equal_to,std::hash,true>,std::allocator<EQKitLayoutStretchedOperator>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

EQKit::Font::OpenTypeFontCollection *EQKit::Font::OpenTypeFontCollection::OpenTypeFontCollection(EQKit::Font::OpenTypeFontCollection *this, const __CFString *a2)
{
  *this = &unk_28696ADC8;
  *(this + 1) = CFStringCreateCopy(*MEMORY[0x277CBECE8], a2);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  (*(*this + 24))(this);
  return this;
}

void sub_25828886C(_Unwind_Exception *a1)
{
  EQKit::AutoCFType<__CFData const*>::~AutoCFType((v1 + 24));
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(v3);
  EQKit::AutoCFType<__CFString const*>::~AutoCFType(v2);
  _Unwind_Resume(a1);
}

void EQKit::Font::OpenTypeFontCollection::~OpenTypeFontCollection(const void **this, const void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 26)) = a2[1];
  EQKit::AutoCFType<__CFData const*>::~AutoCFType(this + 3);
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(this + 2);
  EQKit::AutoCFType<__CFString const*>::~AutoCFType(this + 1);
}

void EQKit::Font::OpenTypeFontCollection::~OpenTypeFontCollection(const void **this)
{
}

{

  JUMPOUT(0x259C7CB70);
}

uint64_t EQKit::Font::OpenTypeFontCollection::reloadFonts(EQKit::Font::OpenTypeFontCollection *this)
{
  v7 = 0;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  v7 = 0;
  *(this + 3) = v3;
  EQKit::AutoCFType<__CFData const*>::~AutoCFType(&v7);
  *(this + 4) = 0;
  v4 = CTFontCreateWithName(*(this + 1), 12.0, 0);
  v7 = v4;
  if (*(this + 2))
  {
    CFRelease(*(this + 2));
    v4 = v7;
  }

  v7 = 0;
  *(this + 2) = v4;
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(&v7);
  result = (*(*this + 32))(this);
  if (result)
  {
    *(this + 5) = CTFontGetUnitsPerEm(*(this + 2));
    v6 = CTFontCopyTable(*(this + 2), 0x4D415448u, 0);
    v7 = v6;
    if (*(this + 3))
    {
      CFRelease(*(this + 3));
      v6 = v7;
    }

    v7 = 0;
    *(this + 3) = v6;
    EQKit::AutoCFType<__CFData const*>::~AutoCFType(&v7);
    result = *(this + 3);
    if (result)
    {
      result = MathHeaderFromTableData(result);
      *(this + 4) = result;
    }
  }

  return result;
}

void sub_258288AC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::AutoCFType<__CFData const*>::~AutoCFType(va);
  _Unwind_Resume(a1);
}

BOOL EQKit::Font::OpenTypeFontCollection::fontsLoadedCorrectly(EQKit::Font::OpenTypeFontCollection *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = CTFontCopyPostScriptName(v2);
    v4 = *(this + 2);
    v7 = v3;
    if (v4)
    {
      v5 = CFStringCompare(v3, *(this + 1), 0) == kCFCompareEqualTo;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v7 = &stru_28696C228;
  }

  EQKit::AutoCFType<__CFString const*>::~AutoCFType(&v7);
  return v5;
}

void sub_258288B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  EQKit::AutoCFType<__CFString const*>::~AutoCFType(va);
  _Unwind_Resume(a1);
}

unsigned __int16 *EQKit::Font::OpenTypeFontCollection::characterPropertyLengthForScript@<X0>(EQKit::Unicode *a1@<X3>, uint64_t a2@<X0>, int a3@<W1>, const EQKit::Script::Info *a4@<X2>, uint64_t a5@<X8>)
{
  v8 = EQKit::Font::OpenTypeFontCollection::glyphForCharacterInScript(a2, a1, a4);
  result = MathHeaderGetMathGlyphInfo(*(a2 + 32));
  if (a3 == 14)
  {
    ItalicsCorrectionInfo = MathGlyphInfoGetItalicsCorrectionInfo(result);
    v13 = MathGlyphInfoGetItalicsCorrectionInfo(ItalicsCorrectionInfo);
    result = CoverageTableGetIndexOfGlyphID(v13, v8);
    if (result == -1)
    {
      goto LABEL_10;
    }

    result = MathGlyphConstructionGetGlyphVariantAtIndex(ItalicsCorrectionInfo, result);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_10;
    }

    TopAttachment = MathGlyphInfoGetTopAttachment(result);
    v11 = MathGlyphInfoGetItalicsCorrectionInfo(TopAttachment);
    result = CoverageTableGetIndexOfGlyphID(v11, v8);
    if (result == -1)
    {
      goto LABEL_10;
    }

    result = MathGlyphConstructionGetGlyphVariantAtIndex(TopAttachment, result);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  result = MathValueRecordGetValue(result);
  v14 = result / *(a2 + 40);
  if (v14 == 1.79769313e308)
  {
LABEL_10:
    v15 = 0;
    v14 = 0.0;
    goto LABEL_11;
  }

  v15 = 3;
LABEL_11:
  *a5 = v15;
  *(a5 + 8) = v14;
  return result;
}

uint64_t EQKit::Font::OpenTypeFontCollection::glyphForCharacterInScript(EQKit::Font::OpenTypeFontCollection *this, EQKit::Unicode *a2, const EQKit::Script::Info *a3)
{
  v4 = a2;
  v6 = EQKit::Unicode::lookupChar(a2, a3, a3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*(a3 + 8) == 1 && *(a3 + 10) == 1)
  {

    return EQKit::Font::OpenTypeFontCollection::glyphDisplayVariantForCharacter(this, v7);
  }

  else
  {

    return EQKit::Font::OpenTypeFontCollection::glyphForCharacter(this, v7);
  }
}

double EQKit::Font::OpenTypeFontCollection::lengthMetricWithScriptAndRule(uint64_t a1, int a2, uint64_t a3)
{
  HorizGlyphCoverageTable = MathVariantsGetHorizGlyphCoverageTable(*(a1 + 32));
  v7 = 0.0;
  switch(a2)
  {
    case 0:
      v8 = MathConstantsSubscriptShiftDown(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 1:
      if (*(a3 + 9) == 1)
      {
        v8 = MathConstantsSuperscriptShiftUpCramped(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsSuperscriptShiftUp(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 3:
      if (*(a3 + 8) == 1)
      {
        v8 = MathConstantsFractionNumeratorDisplayStyleShiftUp(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsFractionNumeratorShiftUp(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 4:
      if (*(a3 + 8) == 1)
      {
        v8 = MathConstantsFractionDenominatorDisplayStyleShiftDown(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsFractionDenominatorShiftDown(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 5:
      v8 = MathConstantsSuperscriptBaselineDropMax(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 6:
      v8 = MathConstantsSubscriptBaselineDropMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 7:
      v8 = MathConstantsSuperscriptBottomMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 8:
      v8 = MathConstantsSubscriptTopMax(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 9:
      v8 = MathConstantsSubSuperscriptGapMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 10:
      v8 = MathConstantsSuperscriptBottomMaxWithSubscript(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 11:
    case 47:
      v8 = MathConstantsUpperLimitGapMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 12:
    case 46:
      v8 = MathConstantsUpperLimitBaselineRiseMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 13:
      v8 = MathConstantsLowerLimitGapMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 14:
      v8 = MathConstantsLowerLimitBaselineDropMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 15:
      v8 = MathConstantsMathLeading(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 16:
    case 41:
      if (*(a3 + 8) == 1)
      {
        v8 = MathConstantsStackDisplayStyleGapMin(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsStackGapMin(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 18:
      if (*(a3 + 8) == 1)
      {
        v8 = MathConstantsRadicalDisplayStyleVerticalGap(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsRadicalVerticalGap(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 33:
      v8 = MathConstantsAxisHeight(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 34:
      v8 = MathConstantsAccentBaseHeight(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 35:
      v8 = MathConstantsFractionRuleThickness(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 36:
      v8 = MathConstantsSpaceAfterScript(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 37:
      if (*(a3 + 8) == 1)
      {
        v8 = MathConstantsFractionNumDisplayStyleGapMin(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsFractionNumeratorGapMin(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 38:
      if (*(a3 + 8) == 1)
      {
        v8 = MathConstantsFractionDenomDisplayStyleGapMin(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsFractionDenominatorGapMin(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 39:
      if (*(a3 + 8) == 1)
      {
        v8 = MathConstantsStackTopDisplayStyleShiftUp(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsStackTopShiftUp(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 40:
      if (*(a3 + 8) == 1)
      {
        v8 = MathConstantsStackBottomDisplayStyleShiftDown(HorizGlyphCoverageTable);
      }

      else
      {
        v8 = MathConstantsStackBottomShiftDown(HorizGlyphCoverageTable);
      }

      goto LABEL_57;
    case 42:
      v8 = MathConstantsStretchStackBottomShiftDown(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 43:
      v8 = MathConstantsStretchStackGapAboveMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 44:
      v8 = MathConstantsStretchStackTopShiftUp(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 45:
      v8 = MathConstantsStretchStackGapBelowMin(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 48:
      v8 = MathConstantsUnderbarVerticalGap(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 49:
      v8 = MathConstantsUnderbarExtraDescender(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 50:
      v8 = MathConstantsOverbarVerticalGap(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 51:
      v8 = MathConstantsOverbarExtraAscender(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 52:
      v8 = MathConstantsRadicalExtraAscender(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 53:
      v8 = MathConstantsRadicalRuleThickness(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 54:
      v8 = MathConstantsRadicalKernBeforeDegree(HorizGlyphCoverageTable);
      goto LABEL_57;
    case 55:
      v8 = MathConstantsRadicalKernAfterDegree(HorizGlyphCoverageTable);
LABEL_57:
      if (v8)
      {
        v7 = MathValueRecordGetValue(v8) / *(a1 + 40) * *(a3 + 16);
      }

      break;
    default:
      return v7;
  }

  return v7;
}

unsigned __int16 *EQKit::Font::OpenTypeFontCollection::floatMetric(uint64_t a1, int a2)
{
  result = MathVariantsGetHorizGlyphCoverageTable(*(a1 + 32));
  if (a2 <= 3)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return MathValueRecordGetValue(result);
      }

      return result;
    }

    return MathConstantsScriptScriptPercentScaleDown(result);
  }

  if (a2 == 4)
  {
    return MathConstantsScriptScriptPercentScaleDown(result);
  }

  if (a2 == 5)
  {
    MathConstantsRadicalDegreeBottomRaisePercent(result);
    return CFStringCompare(@"STIXTwoMath-Regular", *(a1 + 8), 0);
  }

  return result;
}

const __CTFont *EQKit::Font::OpenTypeFontCollection::newFontWithScript(EQKit::Font::OpenTypeFontCollection *this, CGFloat *a2)
{
  result = *(this + 2);
  if (result)
  {
    return CTFontCreateCopyWithAttributes(result, a2[2], 0, 0);
  }

  return result;
}

uint64_t EQKit::Font::OpenTypeFontCollection::glyphForCharacter(EQKit::Font::OpenTypeFontCollection *this, int a2)
{
  v2 = *(this + 2);
  *characters = 0;
  *glyphs = -1;
  if ((a2 - 0x10000) >> 20)
  {
    v4 = 1;
    LOWORD(v3) = a2;
  }

  else
  {
    v3 = ((a2 - 0x10000) >> 10) | 0xFFFFD800;
    characters[1] = a2 & 0x3FF | 0xDC00;
    v4 = 2;
  }

  characters[0] = v3;
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v2, characters, glyphs, v4);
  v6 = glyphs[0];
  if (!GlyphsForCharacters)
  {
    return -1;
  }

  return v6;
}

uint64_t EQKit::Font::OpenTypeFontCollection::glyphDisplayVariantForCharacter(EQKit::Font::OpenTypeFontCollection *this, int a2)
{
  HorizGlyphCoverageTable = MathVariantsGetHorizGlyphCoverageTable(*(this + 4));
  FullAdvance = GlyphPartRecordGetFullAdvance(HorizGlyphCoverageTable);
  v6 = EQKit::Font::OpenTypeFontCollection::glyphForCharacter(this, a2);
  v7 = EQKit::Font::OpenTypeFontCollection::glyphConstructionForGlyph(this, v6, 2);
  if (!v7)
  {
    return 0xFFFFLL;
  }

  v8 = v7;
  result = glyphVariantForMinAdvance(FullAdvance, v7);
  if (result == 0xFFFF)
  {

    return largestGlyphVariantInConstruction(v8);
  }

  return result;
}

uint64_t EQKit::Font::OpenTypeFontCollection::glyphConstructionForGlyph(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  MathVariants = MathHeaderGetMathVariants(*(a1 + 32));
  v6 = MathVariants;
  if (a3 == 2)
  {
    TopAttachment = MathGlyphInfoGetTopAttachment(MathVariants);
    IndexOfGlyphID = CoverageTableGetIndexOfGlyphID(TopAttachment, a2);
    if (IndexOfGlyphID != -1)
    {

      return MathVariantsGetVertGlyphConstructionAtIndex(v6, IndexOfGlyphID);
    }

    return 0;
  }

  HorizGlyphCoverageTable = MathVariantsGetHorizGlyphCoverageTable(MathVariants);
  v11 = CoverageTableGetIndexOfGlyphID(HorizGlyphCoverageTable, a2);
  if (v11 == -1)
  {
    return 0;
  }

  return MathVariantsGetHorizGlyphConstructionAtIndex(v6, v11);
}

uint64_t glyphVariantForMinAdvance(unsigned int a1, uint64_t a2)
{
  StartConnectorLength = GlyphPartRecordGetStartConnectorLength(a2);
  if (!StartConnectorLength)
  {
    return 0xFFFFLL;
  }

  v5 = StartConnectorLength;
  v6 = 0;
  while (1)
  {
    GlyphVariantAtIndex = MathGlyphConstructionGetGlyphVariantAtIndex(a2, v6);
    if (GlyphPartRecordGetStartConnectorLength(GlyphVariantAtIndex) >= a1)
    {
      break;
    }

    if (v5 <= ++v6)
    {
      return 0xFFFFLL;
    }
  }

  return GlyphPartRecordGetGlyphID(GlyphVariantAtIndex);
}

uint64_t largestGlyphVariantInConstruction(uint64_t a1)
{
  StartConnectorLength = GlyphPartRecordGetStartConnectorLength(a1);
  GlyphVariantAtIndex = MathGlyphConstructionGetGlyphVariantAtIndex(a1, (StartConnectorLength - 1));

  return GlyphPartRecordGetGlyphID(GlyphVariantAtIndex);
}

uint64_t EQKit::Font::OpenTypeFontCollection::newAttributedStringWithScript(EQKit::Font::OpenTypeFontCollection *this, NSString *a2, CGFloat *a3)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v6 = [(NSString *)a2 length];
  v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  v36 = 0;
  if ([(NSString *)a2 getBytes:v7 maxLength:4 * v6 usedLength:&v36 encoding:2617245952 options:0 range:0 remainingRange:v6, 0])
  {
    v9 = v36;
    v10 = v36 >> 2;
    if (v36 >= 4)
    {
      v11 = v7;
      v12 = v36 >> 2;
      do
      {
        v13 = *v11;
        v14 = EQKit::Unicode::lookupChar(*v11, a3, v8);
        if (v14)
        {
          v15 = v14 == v13;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          *v11 = v14;
        }

        ++v11;
        --v12;
      }

      while (v12);
    }

    v16 = *(this + 2);
    if (v16)
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v16, a3[2], 0, 0);
    }

    else
    {
      CopyWithAttributes = 0;
    }

    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = v7;
    v20 = [v19 initWithBytes:v7 length:v36 encoding:2617245952];
    v39[0] = *MEMORY[0x277CC4838];
    v21 = CopyWithAttributes;
    v22 = *MEMORY[0x277CC49C8];
    v23 = *MEMORY[0x277CBED28];
    v40[0] = v21;
    v40[1] = v23;
    v24 = *MEMORY[0x277CC4AD0];
    v39[1] = v22;
    v39[2] = v24;
    v40[2] = &unk_286973AE0;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v26 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v20 attributes:v25];

    if (a3[1] & 1) != 0 && v9 >= 4 && (*(a3 + 10))
    {
      v27 = 0;
      v28 = *MEMORY[0x277CC49D0];
      v29 = v7;
      do
      {
        v30 = EQKit::Font::OpenTypeFontCollection::glyphDisplayVariantForCharacter(this, *v29);
        if (v30 != 0xFFFF)
        {
          v31 = v30;
          v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29 length:4 encoding:2617245952];
          v33 = CTGlyphInfoCreateWithGlyph(v31, CopyWithAttributes, v32);

          v37 = v28;
          v38 = v33;
          [v26 addAttributes:objc_msgSend(MEMORY[0x277CBEAC0] range:{"dictionaryWithObjects:forKeys:count:", &v38, &v37, 1), v27, 1}];
        }

        ++v27;
        ++v29;
      }

      while (v10 != v27);
    }

    free(v35);
    v18 = [v26 copy];
  }

  else
  {
    free(v7);
    return 0;
  }

  return v18;
}

CTFontRef EQKit::Font::OpenTypeFontCollection::newFontForStretchedCharacterWithScript(EQKit::Font::OpenTypeFontCollection *a1, int *a2, const EQKit::Script::Info *a3, uint64_t a4)
{
  v5 = a3;
  v7 = *a2;
  v8 = EQKit::Unicode::lookupChar(*a2, a4, a3);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = EQKit::Font::OpenTypeFontCollection::glyphForCharacter(a1, v9);
  if (v10 == 0xFFFF)
  {
    return 0;
  }

  if (EQKit::Font::OpenTypeFontCollection::glyphConstructionForGlyph(a1, v10, v5))
  {
    return 0;
  }

  v12 = *(a1 + 2);
  if (!v12)
  {
    return 0;
  }

  v13 = *(a4 + 16);

  return CTFontCreateCopyWithAttributes(v12, v13, 0, 0);
}

CGMutablePathRef EQKit::Font::OpenTypeFontCollection::newCGPathForStretchedCharacterWithScript(uint64_t a1, EQKit::Unicode *this, const EQKit::Script::Info *a3, uint64_t a4, uint64_t a5, double a6)
{
  v9 = a3;
  v10 = this;
  v12 = EQKit::Unicode::lookupChar(this, a4, a3);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v14 = EQKit::Font::OpenTypeFontCollection::glyphForCharacter(a1, v13);
  v15 = EQKit::Font::OpenTypeFontCollection::glyphConstructionForGlyph(a1, v14, v9);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  if (v9 == 2)
  {
    a6 = (*(*a1 + 56))(a1, 15, a4, 0.0) + a6;
  }

  cf = 0;
  CopyWithAttributes = *(a1 + 16);
  if (CopyWithAttributes)
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(CopyWithAttributes, *(a4 + 16), 0, 0);
  }

  font = CopyWithAttributes;
  v18 = CTFontGetSize(CopyWithAttributes) / *(a1 + 40);
  v19 = llround(a6 / v18);
  v20 = glyphVariantForMinAdvance(v19, v16);
  glyphs = v20;
  if (v20 == 0xFFFF)
  {
    GlyphAssembly = MathGlyphConstructionGetGlyphAssembly(v16);
    if (GlyphAssembly)
    {
      MathVariants = MathHeaderGetMathVariants(*(a1 + 32));
      Value = MathValueRecordGetValue(MathVariants);
      v70.a = 0.0;
      *&v70.b = &v70;
      *&v70.c = 0x5012000000;
      *&v70.d = __Block_byref_object_copy__11;
      *&v70.tx = __Block_byref_object_dispose__12;
      *&v70.ty = &unk_258307BEB;
      v71[0] = xmmword_2582D0BB8;
      v71[1] = unk_2582D0BC8;
      EndConnectorLength = GlyphPartRecordGetEndConnectorLength(GlyphAssembly);
      *&v60.a = MEMORY[0x277D85DD0];
      *&v60.b = 3221225472;
      *&v60.c = ___ZL26getGlyphAssemblyParametersPK14_GlyphAssemblyddP23GlyphAssemblyParameters_block_invoke;
      *&v60.d = &unk_279872280;
      *&v60.tx = &v70;
      LOWORD(v60.ty) = EndConnectorLength;
      enumerateGlyphAssembly(GlyphAssembly, 1u, &v60);
      v27 = *(*&v70.b + 72);
      v28 = *(*&v70.b + 74);
      if (EndConnectorLength != (v28 + v27))
      {
        __assert_rtn("getGlyphAssemblyParameters", "EQKitOpenTypeFontCollection.mm", 869, "glyphAssemblyPartsCount(metrics, 1) == basePartsCount");
      }

      v29 = *(*&v70.b + 48);
      v30 = *(*&v70.b + 56);
      v31 = vcvtpd_s64_f64((v19 - (v30 + v29 * 0.0 - Value * (v28 - 1))) / (v29 - Value * v27));
      v32 = v31 & ~(v31 >> 63);
      v33 = (v28 + v27 * (v31 & ~(v31 >> 63)));
      if ((v30 + (v31 & ~(v31 >> 63)) * v29 + (v33 - 1) * -0.0 - v19) / v33 >= *(*&v70.b + 64))
      {
        v34 = *(*&v70.b + 64);
      }

      else
      {
        v34 = (v30 + (v31 & ~(v31 >> 63)) * v29 + (v33 - 1) * -0.0 - v19) / v33;
      }

      _Block_object_dispose(&v70, 8);
      v70.a = 0.0;
      *&v70.b = &v70;
      *&v70.c = 0x2020000000;
      v70.d = 0.0;
      a = COERCE_DOUBLE(CGPathCreateMutable());
      v60.a = a;
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3321888768;
      v61[2] = ___ZNK5EQKit4Font22OpenTypeFontCollection40newCGPathForStretchedCharacterWithScriptEjN10EQKitTypes4Axis4EnumEdRKNS_6Script4InfoERN9EQKitPath4InfoE_block_invoke;
      v61[3] = &unk_28696AEA0;
      v62[0] = font;
      if (font)
      {
        CFRetain(font);
        a = v60.a;
      }

      v61[4] = &v70;
      v62[1] = *&v34;
      v63 = v32;
      v66 = v9;
      v64 = v18;
      v65 = a;
      if (a != 0.0)
      {
        CFRetain(*&a);
      }

      enumerateGlyphAssembly(GlyphAssembly, v32, v61);
      MutableCopy = CGPathCreateMutableCopy(*&v60.a);
      advances[0] = MutableCopy;
      if (cf)
      {
        CFRelease(cf);
        MutableCopy = advances[0];
      }

      advances[0] = 0;
      cf = MutableCopy;
      EQKit::AutoCFType<CGPath const*>::~AutoCFType(advances);
      EQKit::AutoCFType<CGPath *>::~AutoCFType(&v65);
      EQKit::AutoCFType<__CTFont const*>::~AutoCFType(v62);
      EQKit::AutoCFType<CGPath *>::~AutoCFType(&v60);
      _Block_object_dispose(&v70, 8);
      v20 = 0xFFFF;
      goto LABEL_25;
    }

    v20 = largestGlyphVariantInConstruction(v16);
    glyphs = v20;
    PathForGlyph = CTFontCreatePathForGlyph(font, v20, 0);
    *&v70.a = PathForGlyph;
  }

  else
  {
    PathForGlyph = CTFontCreatePathForGlyph(font, v20, 0);
    *&v70.a = PathForGlyph;
  }

  v70.a = 0.0;
  cf = PathForGlyph;
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(&v70);
LABEL_25:
  v37 = cf;
  if (cf)
  {
    PathBoundingBox = CGPathGetPathBoundingBox(cf);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    memset(&v60, 0, sizeof(v60));
    MaxY = CGRectGetMaxY(PathBoundingBox);
    CGAffineTransformMakeTranslation(&v70, 0.0, MaxY);
    CGAffineTransformScale(&v60, &v70, 1.0, -1.0);
    v43 = COERCE_DOUBLE(MEMORY[0x259C7C480](cf, &v60));
    v70.a = v43;
    if (cf)
    {
      CFRelease(cf);
      v43 = v70.a;
    }

    v70.a = 0.0;
    cf = *&v43;
    EQKit::AutoCFType<CGPath const*>::~AutoCFType(&v70);
    if (v20 == 0xFFFF)
    {
      v49 = MathGlyphConstructionGetGlyphAssembly(v16);
      v50 = GlyphPartRecordGetEndConnectorLength(v49);
      v70.a = 0.0;
      *&v70.b = &v70;
      *&v70.c = 0x4812000000;
      *&v70.d = __Block_byref_object_copy__0;
      *&v70.tx = __Block_byref_object_dispose__0;
      *&v70.ty = &unk_258307BEB;
      v51 = v50;
      LOWORD(advances[0]) = 0;
      std::vector<unsigned short>::vector[abi:ne200100](v71, v50);
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = ___ZNK5EQKit4Font22OpenTypeFontCollection40newCGPathForStretchedCharacterWithScriptEjN10EQKitTypes4Axis4EnumEdRKNS_6Script4InfoERN9EQKitPath4InfoE_block_invoke_8;
      v59[3] = &unk_279872258;
      v59[4] = &v70;
      enumerateGlyphAssembly(v49, 1u, v59);
      std::vector<CGSize>::vector[abi:ne200100](advances, v50);
      CTFontGetAdvancesForGlyphs(font, kCTFontOrientationHorizontal, *(*&v70.b + 48), advances[0], v50);
      v52 = 0.0;
      if (v50)
      {
        v53 = advances[0];
        do
        {
          v54 = v53->width;
          ++v53;
          v55 = v54;
          if (v52 < v54)
          {
            v52 = v55;
          }

          --v51;
        }

        while (v51);
      }

      v76.origin.x = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      v56 = CGRectGetWidth(v76);
      *a5 = width;
      *(a5 + 8) = height;
      *(a5 + 16) = 0;
      *(a5 + 24) = fmax(v52 - v56, 0.0);
      *(a5 + 32) = 0;
      if (advances[0])
      {
        advances[1] = advances[0];
        operator delete(advances[0]);
      }

      _Block_object_dispose(&v70, 8);
      if (*&v71[0])
      {
        *(&v71[0] + 1) = *&v71[0];
        operator delete(*&v71[0]);
      }
    }

    else
    {
      AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(font, kCTFontOrientationHorizontal, &glyphs, 0, 1);
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v45 = CGRectGetWidth(v73);
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      MinY = CGRectGetMinY(v74);
      *a5 = width;
      *(a5 + 8) = height;
      *(a5 + 16) = 0;
      *(a5 + 24) = fmax(AdvancesForGlyphs - v45, 0.0);
      *(a5 + 32) = -MinY;
      if (AdvancesForGlyphs == 0.0)
      {
        memset(&v70, 0, sizeof(v70));
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = height;
        MinX = CGRectGetMinX(v75);
        CGAffineTransformMakeTranslation(&v70, -MinX, 0.0);
        v48 = MEMORY[0x259C7C480](cf, &v70);
        advances[0] = v48;
        if (cf)
        {
          CFRelease(cf);
          v48 = advances[0];
        }

        advances[0] = 0;
        cf = v48;
        EQKit::AutoCFType<CGPath const*>::~AutoCFType(advances);
      }
    }

    v37 = cf;
  }

  v22 = CGPathCreateMutableCopy(v37);
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(&font);
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(&cf);
  return v22;
}

void sub_258289EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, const void *a35, const void *a36)
{
  EQKit::AutoCFType<CGPath const*>::~AutoCFType((v36 - 208));
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(&a35);
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(&a36);
  _Unwind_Resume(a1);
}

uint64_t enumerateGlyphAssembly(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = GlyphPartRecordGetEndConnectorLength(a1);
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  while (1)
  {
    PartAtIndex = GlyphAssemblyGetPartAtIndex(a1, v8);
    result = GlyphPartRecordGetPartFlags(PartAtIndex);
    if ((result & 1) == 0)
    {
      v11 = 0;
      result = (*(a3 + 16))(a3, v8, PartAtIndex, &v11);
      if (v11)
      {
        return result;
      }

      goto LABEL_10;
    }

    if (a2)
    {
      break;
    }

LABEL_10:
    if (v7 <= ++v8)
    {
      return result;
    }
  }

  v10 = 0;
  while (1)
  {
    v12 = 0;
    result = (*(a3 + 16))(a3, v8, PartAtIndex, &v12);
    if (v12)
    {
      return result;
    }

    if (++v10 >= a2)
    {
      goto LABEL_10;
    }
  }
}

const void **___ZNK5EQKit4Font22OpenTypeFontCollection40newCGPathForStretchedCharacterWithScriptEjN10EQKitTypes4Axis4EnumEdRKNS_6Script4InfoERN9EQKitPath4InfoE_block_invoke(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v5 = *(a1 + 40);
  GlyphID = GlyphPartRecordGetGlyphID(a3);
  PathForGlyph = CTFontCreatePathForGlyph(v5, GlyphID, 0);
  v14 = PathForGlyph;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  if (v9 > 0.0)
  {
    *(v8 + 24) = v9 - *(a1 + 48);
  }

  memset(&v13, 0, sizeof(v13));
  if (*(a1 + 80) == 2)
  {
    v10 = 0.0;
    v11 = *(*(*(a1 + 32) + 8) + 24) * *(a1 + 64);
  }

  else
  {
    v11 = 0.0;
    v10 = *(*(*(a1 + 32) + 8) + 24) * *(a1 + 64);
  }

  CGAffineTransformMakeTranslation(&v13, v10, v11);
  CGPathAddPath(*(a1 + 72), &v13, PathForGlyph);
  *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + GlyphPartRecordGetFullAdvance(a3);
  return EQKit::AutoCFType<CGPath const*>::~AutoCFType(&v14);
}

const void **__copy_helper_block_e8_40c38_ZTSKN5EQKit10AutoCFTypeIPK8__CTFontEE72c35_ZTSKN5EQKit10AutoCFTypeIP6CGPathEE(uint64_t a1, uint64_t a2)
{
  EQKit::AutoCFType<__CTFont const*>::AutoCFType((a1 + 40), (a2 + 40));

  return EQKit::AutoCFType<CGPath *>::AutoCFType((a1 + 72), (a2 + 72));
}

const void **__destroy_helper_block_e8_40c38_ZTSKN5EQKit10AutoCFTypeIPK8__CTFontEE72c35_ZTSKN5EQKit10AutoCFTypeIP6CGPathEE(uint64_t a1)
{
  EQKit::AutoCFType<CGPath *>::~AutoCFType((a1 + 72));

  return EQKit::AutoCFType<__CTFont const*>::~AutoCFType((a1 + 40));
}

__n128 __Block_byref_object_copy__0(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZNK5EQKit4Font22OpenTypeFontCollection40newCGPathForStretchedCharacterWithScriptEjN10EQKitTypes4Axis4EnumEdRKNS_6Script4InfoERN9EQKitPath4InfoE_block_invoke_8(uint64_t a1, unsigned int a2, unsigned __int16 *a3)
{
  result = GlyphPartRecordGetGlyphID(a3);
  *(*(*(*(a1 + 32) + 8) + 48) + 2 * a2) = result;
  return result;
}

BOOL EQKit::Font::OpenTypeFontCollection::isCharacterStretchableInAxis(EQKit::Font::OpenTypeFontCollection *a1, EQKit::Unicode *this, const EQKit::Script::Info *a3, uint64_t a4)
{
  v4 = a3;
  v5 = this;
  v7 = EQKit::Unicode::lookupChar(this, a4, a3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = EQKit::Font::OpenTypeFontCollection::glyphForCharacter(a1, v8);
  return v9 != 0xFFFF && EQKit::Font::OpenTypeFontCollection::glyphConstructionForGlyph(a1, v9, v4) != 0;
}

BOOL EQKit::Font::OpenTypeFontCollection::isCharacterNaturalSizeWithScript(EQKit::Font::OpenTypeFontCollection *this, EQKit::Unicode *a2, const EQKit::Script::Info *a3)
{
  if (*(a3 + 8) != 1 || *(a3 + 10) != 1)
  {
    return 1;
  }

  v3 = a2;
  v5 = EQKit::Unicode::lookupChar(a2, a3, a3);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = EQKit::Font::OpenTypeFontCollection::glyphForCharacter(this, v6);
  return v7 == 0xFFFF || EQKit::Font::OpenTypeFontCollection::glyphConstructionForGlyph(this, v7, 2) != 0;
}

BOOL EQKit::Font::OpenTypeFontCollection::isCharacterScriptingOffsetsNaturalWithScript(EQKit::Font::OpenTypeFontCollection *this, EQKit::Unicode *a2, const EQKit::Script::Info *a3)
{
  v3 = a2;
  v5 = EQKit::Unicode::lookupChar(a2, a3, a3);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = EQKit::Font::OpenTypeFontCollection::glyphForCharacter(this, v6);
  if (v7 == 0xFFFF)
  {
    return 0;
  }

  v8 = v7;
  MathGlyphInfo = MathHeaderGetMathGlyphInfo(*(this + 4));
  ExtendedShapesCoverageTable = MathGlyphInfoGetExtendedShapesCoverageTable(MathGlyphInfo);
  return CoverageTableGetIndexOfGlyphID(ExtendedShapesCoverageTable, v8) == -1;
}

CGFloat EQKit::Font::OpenTypeFontCollection::naturalBoundsOfCharacterWithScript(const __CTFont **this, EQKit::Unicode *a2, CGFloat *a3)
{
  v4 = a2;
  v6 = EQKit::Unicode::lookupChar(a2, a3, a3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  glyphs = EQKit::Font::OpenTypeFontCollection::glyphForCharacter(this, v7);
  CopyWithAttributes = this[2];
  if (CopyWithAttributes)
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(CopyWithAttributes, a3[2], 0, 0);
  }

  v11 = CopyWithAttributes;
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  boundingRects.origin = *MEMORY[0x277CBF3A0];
  boundingRects.size = v9;
  CTFontGetBoundingRectsForGlyphs(CopyWithAttributes, kCTFontOrientationHorizontal, &glyphs, &boundingRects, 1);
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(&v11);
  return boundingRects.origin.x;
}

uint64_t EQKit::Font::OpenTypeFontCollection::newCGPathForRadicalWithOverbar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v27 = (*(*a1 + 96))(a1, 8730, 2, a2, a4);
  PathBoundingBox = CGPathGetPathBoundingBox(v27);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  v24 = a6;
  path = CGPathCreateMutableCopy(v27);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MinY = CGRectGetMinY(v30);
  v16 = a7 * 0.5;
  v17 = MaxX - a7 * 0.5;
  v19 = *(a3 + 24);
  v18 = *(a3 + 32);
  CGPathMoveToPoint(path, 0, v17, MinY);
  v20 = MinY + a7;
  CGPathAddLineToPoint(path, 0, v17, v20);
  v21 = v17 + v16 + v19 + v18 + v24;
  CGPathAddLineToPoint(path, 0, v21, v20);
  CGPathAddLineToPoint(path, 0, v21, MinY);
  CGPathCloseSubpath(path);
  memset(&v25, 0, sizeof(v25));
  CGAffineTransformMakeTranslation(&v25, -x, -y);
  v22 = MEMORY[0x259C7C480](path, &v25);
  EQKit::AutoCFType<CGPath *>::~AutoCFType(&path);
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(&v27);
  return v22;
}

void sub_25828A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  EQKit::AutoCFType<CGPath *>::~AutoCFType(va);
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(va1);
  _Unwind_Resume(a1);
}

CGPath *EQKit::Font::OpenTypeFontCollection::newCGPathForLongDivisionWithOverbar(EQKit::Font::OpenTypeFontCollection *this, CGFloat *a2, double a3, double a4, double *a5)
{
  v8 = *(this + 2);
  LODWORD(characters[0].a) = 10188;
  *glyphs = -1;
  if (CTFontGetGlyphsForCharacters(v8, characters, glyphs, 1))
  {
    v9 = glyphs[0];
  }

  else
  {
    v9 = -1;
  }

  CopyWithAttributes = *(this + 2);
  if (CopyWithAttributes)
  {
    CopyWithAttributes = CTFontCreateCopyWithAttributes(CopyWithAttributes, a2[2], 0, 0);
  }

  v20 = CopyWithAttributes;
  PathForGlyph = CTFontCreatePathForGlyph(CopyWithAttributes, v9, 0);
  v19 = *&PathForGlyph;
  PathBoundingBox = CGPathGetPathBoundingBox(PathForGlyph);
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(characters, 0.0, PathBoundingBox.size.height);
  CGAffineTransformScale(&v18, characters, 1.0, -1.0);
  a = COERCE_DOUBLE(MEMORY[0x259C7C480](PathForGlyph, &v18));
  characters[0].a = a;
  if (v19 != 0.0)
  {
    CFRelease(*&v19);
    a = characters[0].a;
  }

  characters[0].a = 0.0;
  v19 = a;
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(characters);
  EQKitPath::EQKitPath(characters, *&v19);
  EQKitPath::findStemForEdge(characters, 2u, glyphs);
  if (LOBYTE(glyphs[0]) == 1)
  {
    Mutable = CGPathCreateMutable();
    v15 = *MEMORY[0x277CBF348];
    EQKitPath::appendToCGPathWithModifiedStem(characters, Mutable, &v15, 0, glyphs, a4);
  }

  else
  {
    Mutable = 0;
  }

  EQKitPath::~EQKitPath(characters);
  EQKit::AutoCFType<CGPath const*>::~AutoCFType(&v19);
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType(&v20);
  return Mutable;
}

void sub_25828A880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  EQKitPath::~EQKitPath(va);
  EQKit::AutoCFType<CGPath const*>::~AutoCFType((v11 - 64));
  EQKit::AutoCFType<__CTFont const*>::~AutoCFType((v11 - 56));
  _Unwind_Resume(a1);
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25828AB2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void *std::vector<CGSize>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25828ABE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t ___ZL26getGlyphAssemblyParametersPK14_GlyphAssemblyddP23GlyphAssemblyParameters_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = GlyphPartRecordGetPartFlags(a3) & 1;
  v7 = *(*(a1 + 32) + 8);
  if (v6)
  {
    ++*(v7 + 72);
    v8 = 48;
  }

  else
  {
    ++*(v7 + 74);
    v8 = 56;
  }

  result = GlyphPartRecordGetFullAdvance(a3);
  *(*(*(a1 + 32) + 8) + v8) = *(*(*(a1 + 32) + 8) + v8) + result;
  if (v6 | a2)
  {
    result = GlyphPartRecordGetStartConnectorLength(a3);
    v10 = *(*(a1 + 32) + 8);
    if (*(v10 + 64) > result)
    {
      *(v10 + 64) = result;
    }
  }

  if (v6 || *(a1 + 40) - 1 > a2)
  {
    result = GlyphPartRecordGetEndConnectorLength(a3);
    v11 = *(*(a1 + 32) + 8);
    if (*(v11 + 64) > result)
    {
      *(v11 + 64) = result;
    }
  }

  return result;
}

const void **EQKit::AutoCFType<__CFString const*>::~AutoCFType(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **EQKit::AutoCFType<__CFData const*>::~AutoCFType(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **EQKit::AutoCFType<CGPath *>::~AutoCFType(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **EQKit::AutoCFType<__CTFont const*>::AutoCFType(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **EQKit::AutoCFType<CGPath *>::AutoCFType(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void sub_25828B4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::map<std::string_view const,EQKit::Font::CharacterProperty::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKit::Font::CharacterProperty::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__emplace_hint_unique_key_args<std::string_view,std::pair<std::string_view const,float> const&>(a1, v4, v6);
      v6 += 24;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__emplace_unique_key_args<EQKit::Font::CharacterProperty::Map::Key,std::piecewise_construct_t const&,std::tuple<EQKit::Font::CharacterProperty::Map::Key const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__find_equal<EQKit::Font::CharacterProperty::Map::Key>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<EQKit::Font::CharacterProperty::Map::Key const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__find_equal<EQKit::Font::CharacterProperty::Map::Key>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!EQKit::Font::CharacterProperty::Map::Key::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!EQKit::Font::CharacterProperty::Map::Key::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_25828B7CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *EQKit::Font::CharacterProperty::Map::Key::Key(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::__emplace_unique_key_args<EQKit::Font::CharacterProperty::Map::Key,std::piecewise_construct_t const&,std::tuple<EQKit::Font::CharacterProperty::Map::Key const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>>>::__find_equal<EQKit::Font::CharacterProperty::Map::Key>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::__map_value_compare<EQKit::Font::CharacterProperty::Map::Key,std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>,std::less<EQKit::Font::CharacterProperty::Map::Key>,true>,std::allocator<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKit::StemStretch::Config::Entry>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<EQKit::Font::CharacterProperty::Map::Key const&>,std::tuple<>>();
  }

  return result;
}

void sub_25828B9C4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<EQKit::Font::CharacterProperty::Map::Key,EQKitLength>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *_ZNSt3__14pairIKN5EQKit4Font17CharacterProperty3Map3KeyENS1_11StemStretch6Config5EntryEEC2B8ne200100IJRS6_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSE_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSN_IJXspT2_EEEE(void *a1, uint64_t *a2)
{
  v3 = EQKit::Font::CharacterProperty::Map::Key::Key(a1, *a2);
  EQKit::StemStretch::Config::Entry::Entry((v3 + 4));
  return a1;
}

void sub_25828BA14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKit::Font::Metric::LengthEntry::LengthEntry(uint64_t this)
{
  for (i = 0; i != 128; i += 16)
  {
    v2 = this + i;
    *v2 = 1;
    *(v2 + 8) = 0;
  }

  for (j = 0; j != 128; j += 16)
  {
    v4 = this + j;
    *(v4 + 128) = 1;
    *(v4 + 136) = 0;
  }

  for (k = 0; k != 128; k += 16)
  {
    v6 = this + k;
    *(v6 + 256) = 1;
    *(v6 + 264) = 0;
  }

  do
  {
    v7 = this + k;
    *(v7 - 128) = 0;
    *(v7 - 120) = 0;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 128) = 0;
    k += 16;
    *(v7 + 136) = 0;
  }

  while (k != 256);
  return this;
}

double EQKit::Font::Metric::LengthEntry::resolveWithScriptAndRule(EQKit::Font::Metric::LengthEntry *this, const EQKit::Script::Info *a2, double a3)
{
  v5 = 2;
  if (*a2 >= 2uLL)
  {
    v6 = 2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = 2 * v6 + 2;
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  if (*a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = (this + 16 * (v8 | *(a2 + 9)));
  if ((*v9 & 0xFFFFFFFD) != 0)
  {
    v10 = EQKitLength::resolveToAbsoluteWithSizeAndRule(v9, *(a2 + 2), a3);
  }

  else
  {
    v10 = 0.0;
  }

  if ((v9[32] & 0xFFFFFFFD) != 0)
  {
    v11 = EQKitLength::resolveToAbsoluteWithSizeAndRule((v9 + 32), *(a2 + 2), a3);
    if (v10 < v11)
    {
      v10 = v11;
    }
  }

  if ((v9[64] & 0xFFFFFFFD) != 0)
  {
    v12 = EQKitLength::resolveToAbsoluteWithSizeAndRule((v9 + 32), *(a2 + 2), a3);
    if (v10 > v12)
    {
      return v12;
    }
  }

  return v10;
}

uint64_t EQKit::Font::Metric::LengthEntry::fromString(const std::string *a1, _DWORD *a2)
{
  EQKit::Font::Metric::LengthEntry::LengthEntry(v74);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v5->__r_.__value_.__s.__data_[v6];
    v12 = v7 > 0x20;
    v8 = (1 << v7) & 0x100000600;
    if (v12 || v8 == 0)
    {
      break;
    }

    if (size == ++v6)
    {
      return 0;
    }
  }

  if (v6 == -1)
  {
    return 0;
  }

  v67 = a2;
  v69 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v11 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    v12 = v11 < 0;
    if (v11 >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      v14 = a1->__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    if (v14 <= v6)
    {
LABEL_33:
      v18 = -1;
    }

    else
    {
      v15 = (v13 + v14);
      v16 = (v13 + v6);
LABEL_24:
      v17 = 0;
      while (*v16 != asc_2582F4C67[v17])
      {
        if (++v17 == 3)
        {
          if (++v16 != v15)
          {
            goto LABEL_24;
          }

          goto LABEL_33;
        }
      }

      if (v16 == v15)
      {
        goto LABEL_33;
      }

      v18 = &v16[-v13];
      v19 = &v16[-v13 - v6];
      if (v18 != -1)
      {
        v14 = v19;
      }
    }

    std::string::basic_string(&__str, a1, v6, v14, &v72);
    v20 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v20 & 0x80u) == 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v20 & 0x80u) != 0)
    {
      v20 = a1->__r_.__value_.__l.__size_;
    }

    if (v20 <= v18)
    {
LABEL_45:
      v6 = -1;
    }

    else
    {
      while (1)
      {
        v22 = v21->__r_.__value_.__s.__data_[v18];
        v12 = v22 > 0x20;
        v23 = (1 << v22) & 0x100000600;
        if (v12 || v23 == 0)
        {
          break;
        }

        if (v20 == ++v18)
        {
          goto LABEL_45;
        }
      }

      v6 = v18;
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = __str.__r_.__value_.__l.__size_;
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (!v26)
    {
      goto LABEL_58;
    }

    v27 = 0;
    while (p_str->__r_.__value_.__s.__data_[0] != 61)
    {
      p_str = (p_str + 1);
      if (-v26 == --v27)
      {
        goto LABEL_58;
      }
    }

    if (!(v27 + v26))
    {
LABEL_58:
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v28 = -1;
      goto LABEL_59;
    }

    v28 = -v27;
    if (v27)
    {
      if (v28 == -1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        goto LABEL_59;
      }

      v29 = HIBYTE(p_str[-1].__r_.__value_.__r.__words[2]) == 39;
    }

    else
    {
      v29 = 0;
    }

    std::string::basic_string(&v72, &__str, 0, (v29 << 63 >> 63) - v27, &v70);
    if ((*(&v72.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 3)
        {
          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 4)
          {
            goto LABEL_168;
          }

          if (LODWORD(v72.__r_.__value_.__l.__data_) == 1852403012)
          {
            goto LABEL_118;
          }

          if (LODWORD(v72.__r_.__value_.__l.__data_) == 2019650884)
          {
LABEL_136:
            v32 = 0;
            v31 = 0;
            v30 = 1;
            goto LABEL_172;
          }

          goto LABEL_100;
        }

        if (LOWORD(v72.__r_.__value_.__l.__data_) == 26989 && v72.__r_.__value_.__s.__data_[2] == 110)
        {
          goto LABEL_118;
        }

LABEL_96:
        if (LOWORD(v72.__r_.__value_.__l.__data_) == 24941 && v72.__r_.__value_.__s.__data_[2] == 120)
        {
          goto LABEL_136;
        }

LABEL_100:
        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_168;
        }

LABEL_139:
        if (LODWORD(v72.__r_.__value_.__l.__data_) == 1852403028)
        {
LABEL_140:
          v30 = 0;
          v31 = 1;
LABEL_157:
          v32 = 2;
          goto LABEL_172;
        }

LABEL_144:
        if (LODWORD(v72.__r_.__value_.__l.__data_) == 2019650900)
        {
          goto LABEL_156;
        }

LABEL_145:
        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 1)
        {
          goto LABEL_149;
        }

        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 4)
        {
          if (LODWORD(v72.__r_.__value_.__l.__data_) == 1852403027)
          {
            goto LABEL_182;
          }

LABEL_164:
          v49 = &v72;
LABEL_167:
          if (LODWORD(v49->__r_.__value_.__l.__data_) != 2019650899)
          {
            goto LABEL_168;
          }

          v31 = 0;
          v30 = 1;
LABEL_184:
          v32 = 4;
          goto LABEL_172;
        }

        goto LABEL_168;
      }

      v44 = v72.__r_.__value_.__s.__data_[0];
      if (v72.__r_.__value_.__s.__data_[0] == 68)
      {
        goto LABEL_138;
      }

      goto LABEL_142;
    }

    if (v72.__r_.__value_.__l.__size_ == 1 && *v72.__r_.__value_.__l.__data_ == 68)
    {
LABEL_138:
      v32 = 0;
      v31 = 0;
      v30 = 0;
      goto LABEL_172;
    }

    if (v72.__r_.__value_.__l.__size_ == 4 && *v72.__r_.__value_.__l.__data_ == 1852403012)
    {
      goto LABEL_118;
    }

    v42 = v72.__r_.__value_.__l.__size_;
    if (v72.__r_.__value_.__l.__size_ == 4)
    {
      if (*v72.__r_.__value_.__l.__data_ == 2019650884)
      {
        goto LABEL_136;
      }

      v42 = v72.__r_.__value_.__l.__size_;
    }

    if (v42 == 3)
    {
      if (*v72.__r_.__value_.__l.__data_ == 26989 && *(v72.__r_.__value_.__r.__words[0] + 2) == 110)
      {
LABEL_118:
        v32 = 0;
        v30 = 0;
        v31 = 1;
LABEL_172:
        v48 = 1;
        goto LABEL_173;
      }

      if ((*(&v72.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 1)
        {
          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 4)
          {
            goto LABEL_139;
          }

          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 3)
          {
            goto LABEL_168;
          }

          goto LABEL_96;
        }

        v44 = v72.__r_.__value_.__s.__data_[0];
LABEL_142:
        if (v44 == 84)
        {
LABEL_143:
          v31 = 0;
          v30 = 0;
          v48 = 1;
          v32 = 2;
          goto LABEL_173;
        }

LABEL_149:
        if (v72.__r_.__value_.__s.__data_[0] == 83)
        {
          goto LABEL_155;
        }

        goto LABEL_168;
      }
    }

    v45 = v72.__r_.__value_.__l.__size_;
    if (v72.__r_.__value_.__l.__size_ == 3)
    {
      if (*v72.__r_.__value_.__l.__data_ == 24941 && *(v72.__r_.__value_.__r.__words[0] + 2) == 120)
      {
        goto LABEL_136;
      }

      v45 = v72.__r_.__value_.__l.__size_;
    }

    if (v45 == 1)
    {
      if (*v72.__r_.__value_.__l.__data_ == 84)
      {
        goto LABEL_143;
      }

      if ((*(&v72.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_145;
      }
    }

    v47 = v72.__r_.__value_.__l.__size_;
    if (v72.__r_.__value_.__l.__size_ == 4)
    {
      if (*v72.__r_.__value_.__l.__data_ == 1852403028)
      {
        goto LABEL_140;
      }

      if ((*(&v72.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 1)
        {
          goto LABEL_149;
        }

        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_168;
        }

        goto LABEL_144;
      }

      if (*v72.__r_.__value_.__l.__data_ == 2019650900)
      {
LABEL_156:
        v31 = 0;
        v30 = 1;
        goto LABEL_157;
      }

      v47 = v72.__r_.__value_.__l.__size_;
    }

    if (v47 == 1)
    {
      if (*v72.__r_.__value_.__l.__data_ == 83)
      {
LABEL_155:
        v31 = 0;
        v30 = 0;
        v48 = 1;
        v32 = 4;
        goto LABEL_173;
      }

      if ((*(&v72.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_168;
      }

      v47 = v72.__r_.__value_.__l.__size_;
    }

    if (v47 != 4)
    {
      goto LABEL_165;
    }

    if (*v72.__r_.__value_.__l.__data_ == 1852403027)
    {
LABEL_182:
      v30 = 0;
      v31 = 1;
      goto LABEL_184;
    }

    if ((*(&v72.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_165:
      if (v72.__r_.__value_.__l.__size_ == 4)
      {
        v49 = v72.__r_.__value_.__r.__words[0];
        goto LABEL_167;
      }
    }

    else if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 4)
    {
      goto LABEL_164;
    }

LABEL_168:
    if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v72, "SS"))
    {
      if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v72, "SSmin"))
      {
        v53 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v72, "SSmax");
        v30 = v53;
        v31 = 0;
        if (v53)
        {
          v32 = 6;
        }

        else
        {
          v32 = 0;
        }

        v48 = v53;
        goto LABEL_173;
      }

      v30 = 0;
      v31 = 1;
      v32 = 6;
      goto LABEL_172;
    }

    v31 = 0;
    v30 = 0;
    v48 = 1;
    v32 = 6;
LABEL_173:
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      v68 = v28;
      v50 = v29;
      v51 = v48;
      operator delete(v72.__r_.__value_.__l.__data_);
      v52 = v51;
      LODWORD(v29) = v50;
      v28 = v68;
      if (!v52)
      {
LABEL_177:
        v38 = 0;
        goto LABEL_75;
      }
    }

    else if (!v48)
    {
      goto LABEL_177;
    }

    v29 = v29;
LABEL_59:
    std::string::basic_string(&v72, &__str, v28 + 1, 0xFFFFFFFFFFFFFFFFLL, &v70);
    EQKitLength::EQKitLength(&v70, &v72, 1);
    if ((v70 & 0xFFFFFFFD) != 0)
    {
      v33 = v69;
      if (v32 + v29 >= v69)
      {
        v34 = v69;
      }

      else
      {
        v34 = v32 + v29;
      }

      if (v69 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = v32 + v29;
      }

      v35 = 64;
      if (!v30)
      {
        v35 = 0;
      }

      if (v31)
      {
        v35 = 32;
      }

      v36 = &v74[v35];
      if (((v31 | v30) & 1) == 0)
      {
        v33 = v34;
      }

      v69 = v33;
      v37 = &v36[4 * v32 + 4 * v29];
      *v37 = v70;
      *(v37 + 1) = v71;
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    v38 = 1;
LABEL_75:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v6 == -1)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }
  }

  while ((v39 & 1) != 0);
  if (v69)
  {
    v54 = 0;
  }

  else
  {
    v54 = v38;
  }

  if (v54 != 1)
  {
    return 0;
  }

  if (!v76)
  {
    v76 = v74[0];
    v77 = v75;
  }

  v55 = 0;
  v56 = 0;
  v57 = v78;
  v58 = 2;
  v59 = 1;
  do
  {
    v60 = *v57;
    v61 = v59;
    if (!*v57)
    {
      v62 = &v74[8 * v56];
      v60 = *v62;
      *v57 = *v62;
      *(v57 + 1) = *(v62 + 1);
      v61 = v56;
    }

    v63 = v59;
    if (!*(v57 + 4))
    {
      v64 = v58;
      v63 = v59;
      if (v59 != v61)
      {
        v64 = (2 * v55) | 1;
        v60 = v74[4 * v64];
        v63 = v55;
      }

      *(v57 + 4) = v60;
      *(v57 + 3) = *&v74[4 * v64 + 2];
    }

    ++v59;
    v58 += 2;
    v57 += 32;
    v55 = v63;
    v56 = v61;
  }

  while (v59 != 4);
  if (v74 == v67)
  {
    return 1;
  }

  v65 = 0;
  result = 1;
  do
  {
    v66 = &v67[v65];
    *v66 = v74[v65];
    *(v66 + 1) = *&v74[v65 + 2];
    v66[32] = *&v78[v65 * 4 + 96];
    *(v66 + 17) = *&v78[v65 * 4 + 104];
    v66[64] = *&v78[v65 * 4 + 224];
    *(v66 + 33) = *&v78[v65 * 4 + 232];
    v65 += 4;
  }

  while (v65 != 32);
  return result;
}

void sub_25828C44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *EQKit::Font::Metric::Map::defaultForLengthMetric(int a1)
{
  if ((a1 - 11) > 0x15)
  {
    return 0;
  }

  else
  {
    return off_2798725C8[a1 - 11];
  }
}

void sub_25828C818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void _appendFromWideString(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 + 4 * a3 length:4 * a4 encoding:2617245952];
  [a1 appendString:v6];
}

void sub_25828E3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v21 - 145) < 0)
  {
    operator delete(*(v20 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x259C7CB20](a1 + 120);
  return a1;
}

std::string *EQKit::AttributeCollection::setValueForKey(uint64_t a1, const std::string *a2, int a3, uint64_t a4)
{
  v7 = a4;
  v8 = a3;
  v9 = &v7;
  v5 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(a1 + 80, &v7);
  return std::string::operator=(v5 + 2, a2);
}

CGColorRef EQKitMathMLParserCreateCGColorFromString(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *components = xmmword_2582D0BE0;
  v17 = unk_2582D0BF0;
  v1 = *(a1 + 23);
  if ((v1 & 0x80) != 0)
  {
    v2 = *(a1 + 8);
    if (v2 <= 1)
    {
      return 0;
    }

    if (**a1 != 35)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, v2);
      goto LABEL_10;
    }

LABEL_7:
    if ((EQKitMathMLParserConvertHexColorStringToRGBFloatValues(a1, components, &components[1], &v17) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v1 < 2)
  {
    return 0;
  }

  if (*a1 == 35)
  {
    goto LABEL_7;
  }

  __p = *a1;
LABEL_10:
  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  size = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  if (!v7)
  {
LABEL_28:
    v13 = EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(&__p, components, &components[1], &v17);
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v8 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    v10 = p_p->__r_.__value_.__s.__data_[0];
    if (p_p->__r_.__value_.__s.__data_[0] > 90)
    {
      break;
    }

    if (v10 < 65)
    {
      goto LABEL_33;
    }

    p_p->__r_.__value_.__s.__data_[0] = v10 + 32;
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v8 = __p.__r_.__value_.__r.__words[0];
LABEL_21:
    p_p = (p_p + 1);
    if ((v5 & 0x80u) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = v8;
    }

    if ((v5 & 0x80u) == 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = size;
    }

    if (p_p == (v11 + v12))
    {
      goto LABEL_28;
    }
  }

  if ((v10 - 97) <= 0x19)
  {
    goto LABEL_21;
  }

LABEL_33:
  v13 = 0;
  if ((v5 & 0x80) != 0)
  {
LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (!v13)
  {
    return 0;
  }

LABEL_8:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  return v4;
}

void sub_25828E910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25828EADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _contentAppendStringIfNeeded(id *a1, std::string *__str, _BYTE *a3, _BYTE *a4, int a5)
{
  if (*a3 != 1)
  {
    return;
  }

  v34 = v5;
  v35 = v6;
  v9 = __str;
  if (*a4 == 1)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v12 = __str;
    }

    else
    {
      v12 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_42;
    }

    v13 = 0;
    while (1)
    {
      v14 = v12->__r_.__value_.__s.__data_[v13];
      v15 = v14 > 0x20;
      v16 = (1 << v14) & 0x100000600;
      if (v15 || v16 == 0)
      {
        break;
      }

      if (size == ++v13)
      {
        goto LABEL_42;
      }
    }

    if (v13 == -1)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (!a5)
  {
    v19 = __str->__r_.__value_.__l.__size_;
    if ((v18 & 0x80u) == 0)
    {
      v26 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = __str->__r_.__value_.__l.__size_;
    }

    v22 = v26 - 1;
    goto LABEL_33;
  }

  v20 = __str->__r_.__value_.__r.__words[0];
  v19 = __str->__r_.__value_.__l.__size_;
  if ((v18 & 0x80u) != 0)
  {
    v21 = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v20 = __str;
    v21 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  if (v21)
  {
    v22 = v21 - 1;
    do
    {
      v23 = v20->__r_.__value_.__s.__data_[v22];
      v15 = v23 > 0x20;
      v24 = (1 << v23) & 0x100000600;
      if (v15 || v24 == 0)
      {
        break;
      }

      --v22;
    }

    while (v22 != -1);
LABEL_33:
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v22 = -1;
  if (!v13)
  {
LABEL_34:
    if ((v18 & 0x80u) != 0)
    {
      v18 = v19;
    }

    if (v22 == v18 - 1)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  std::string::basic_string(&v32, __str, v13, v22 - v13 + 1, &v33);
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9->__r_.__value_.__l.__data_);
  }

  *v9 = v32;
LABEL_42:
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  if ((v9->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = v9;
  }

  else
  {
    v28 = v9->__r_.__value_.__r.__words[0];
  }

  v29 = [v27 initWithUTF8String:v28];
  if (v29)
  {
    v30 = v29;
    v31 = *a1;
    if (!*a1)
    {
      v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
      *a1 = v31;
    }

    [v31 addObject:v30];
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = 0;
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = 0;
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  *a3 = 0;
  *a4 = 0;
}