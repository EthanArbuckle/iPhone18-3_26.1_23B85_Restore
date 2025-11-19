void ML3DAAPImportItem::getImportItemValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6.n128_f64[0] = ML3DAAPImportItem::_getChildElement(&v12, this, a2);
  if (!v12)
  {
    v7 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = v13;
  v9 = v12;
  v10 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*this + 216))(&v11, this, a2, &v9, v6);
  v8 = v11;
  v11 = 0uLL;
  *a3 = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v7)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_22D3C0A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL ML3DAAPImportItem::hasValue(ML3DAAPImportItem *this, uint64_t a2)
{
  ML3DAAPImportItem::_getChildElement(&v4, this, a2);
  v2 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 != 0;
}

void ML3DAAPImportItem::getDataValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  ML3DAAPImportItem::_getChildElement(&v3, this, a2);
  if (v3)
  {
    operator new();
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_22D3C0B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  MEMORY[0x2318CD250](v12, 0x1091C40934DB768);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

float ML3DAAPImportItem::getFloatValue(ML3DAAPImportItem *this, uint64_t a2)
{
  ML3DAAPImportItem::_getChildElement(&v4, this, a2);
  if (v4)
  {
    v2 = ML3CPP::Element::integerValue(v4);
  }

  else
  {
    v2 = 0.0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

uint64_t ML3DAAPChildImportItem::getIntegerValue(ML3DAAPImportItem *this, uint64_t a2)
{
  v2 = a2;
  result = ML3DAAPImportItem::getIntegerValue(this, a2);
  if (v2 == 385875974)
  {
    return *(this + 10);
  }

  return result;
}

uint64_t ML3DAAPImportItem::getIntegerValue(ML3DAAPImportItem *this, uint64_t a2)
{
  v2 = a2;
  ML3DAAPImportItem::_getChildElement(&v6, this, a2);
  if (v6)
  {
    v3 = ML3CPP::Element::integerValue(v6);
    v4 = v3;
    if (v2 == 268435459 && v3)
    {
      v4 = ((v3 / 1000) + -978307200.0);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void ML3DAAPImportItem::getStringValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ML3DAAPImportItem::_getChildElement(&v8, this, a2);
  if (v8)
  {
    ML3CPP::Element::stringValue(&v6, *(v8 + 48), *(v8 + 64));
    *a3 = &unk_28408AC60;
    *(a3 + 8) = 1;
    if (SHIBYTE(v7) < 0)
    {
      v4 = v6;
      std::string::__init_copy_ctor_external((a3 + 16), v6, *(&v6 + 1));
      operator delete(v4);
    }

    else
    {
      *(a3 + 16) = v6;
      *(a3 + 32) = v7;
    }
  }

  else
  {
    *a3 = &unk_28408AC60;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
  }

  v5 = v9;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_22D3C0E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  operator delete(v14);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void ML3DAAPChildImportItem::~ML3DAAPChildImportItem(ML3DAAPImportItem *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3DAAPPersonImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPPersonImportItem>,std::allocator<ML3DAAPPersonImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_23ML3DAAPPersonImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPPersonImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPPersonImportItem>,std::allocator<ML3DAAPPersonImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPPersonImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPPersonImportItem>,std::allocator<ML3DAAPPersonImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

id ML3DAAPPersonImportItem::getDeduplicationPredicates(ML3DAAPPersonImportItem *this)
{
  v8[1] = *MEMORY[0x277D85DE8];
  (*(*this + 24))(&v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v5 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = __p;
  }

  v1 = ML3CPPBridgeString(&v7, 1);
  v2 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_id" equalToValue:v1];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_22D3C1080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3DAAPPersonImportItem::getDescription(ML3DAAPPersonImportItem *this)
{
  (*(*this + 24))(&v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v11 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = __p;
  }

  (*(*this + 24))(&v11, this, 369098754);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v11 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = __p;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "<ML3DAAPPersonImportItem ", 25);
  *(&v11 + *(v11 - 3) + 8) = *(&v11 + *(v11 - 3) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v11, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " profile_id=", 12);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v18;
  }

  else
  {
    v4 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, size);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", handle=", 9);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v17;
  }

  else
  {
    v8 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v17.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  v19 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v19, 1);
  std::stringbuf::str();
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 3)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__p);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v16);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_22D3C1440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
  }

  _Unwind_Resume(exception_object);
}

void ML3DAAPPersonImportItem::~ML3DAAPPersonImportItem(ML3DAAPImportItem *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

float ML3DAAPTrackImportItem::getFloatValue(ML3DAAPImportItem *this, uint64_t a2)
{
  v2 = a2;
  result = ML3DAAPImportItem::getFloatValue(this, a2);
  if (v2 >> 1 == 58720265)
  {
    return ML3CFAbsoluteTimeFromUInt32MacTime(result);
  }

  return result;
}

unint64_t ML3DAAPTrackImportItem::getIntegerValue(ML3DAAPTrackImportItem *this, uint64_t a2)
{
  v2 = a2;
  result = ML3DAAPImportItem::getIntegerValue(this, a2);
  v5 = result;
  if (v2 > 50331662)
  {
    if (v2 <= 100663311)
    {
      v6 = v2 - 6;
      if ((v2 - 83886086) > 0xE)
      {
        goto LABEL_7;
      }

      if (((1 << v6) & 0x400E) == 0)
      {
        if (((1 << v6) & 0x201) == 0)
        {
          if (v2 != 83886099)
          {
LABEL_7:
            if (v2 == 50331663)
            {
              return 10 * result;
            }

            return v5;
          }

          return result == 32;
        }

        return result != 0;
      }

      goto LABEL_40;
    }

    if (v2 > 117440513)
    {
      switch(v2)
      {
        case 117440514:
          return (result >> 15) & 1;
        case 117440515:
          return result != 0;
        case 167772186:
          return result == 32;
      }

      return v5;
    }

    if (v2 != 100663312)
    {
      if (v2 == 100663320)
      {
        goto LABEL_40;
      }

      if (v2 == 100663321)
      {
        if (ML3DAAPImportItem::getIntegerValue(this, 33554466))
        {
          IntegerValue = ML3DAAPImportItem::getIntegerValue(this, 167772190);
          if (IntegerValue)
          {
            v5 = IntegerValue;
          }
        }

        goto LABEL_40;
      }

      return v5;
    }

    if (result)
    {
      return v5;
    }

    v9 = *(this + 8);
    v10 = 1634029124;
LABEL_61:
    ML3CPP::Element::childElementForCode(&v24, v9, v10);
    if (v24)
    {
      v5 = ML3CPP::Element::integerValue(v24);
    }

    else
    {
      v5 = 0;
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    return v5;
  }

  if (v2 > 33554442)
  {
    if (v2 > 33554445)
    {
      if (v2 <= 33554457)
      {
        if (v2 != 33554446)
        {
          v7 = 33554447;
          goto LABEL_19;
        }

        goto LABEL_37;
      }

      if (v2 != 33554458)
      {
        if (v2 != 33554466 || result)
        {
          return v5;
        }

        return ML3DAAPImportItem::getIntegerValue(this, 167772191);
      }

      (*(*this + 24))(&v24, this, 50331657);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v24 = &unk_28408AC60;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v27 = __p;
      }

      v12 = (*(*this + 32))(this, 50331651);
      v13 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v27.__r_.__value_.__l.__size_ != 3)
        {
          goto LABEL_75;
        }

        v14 = v27.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(v27.__r_.__value_.__r.__words[2]) != 3)
        {
          goto LABEL_75;
        }

        v14 = &v27;
      }

      data_low = LOWORD(v14->__r_.__value_.__l.__data_);
      v16 = v14->__r_.__value_.__s.__data_[2];
      if (data_low == 13421 && v16 == 112)
      {
        v5 = 13;
        goto LABEL_108;
      }

LABEL_75:
      if (v12 == 1634492771)
      {
        v5 = 26;
      }

      else if (v12 == 1836069985)
      {
        v19 = (*(*this + 32))(this, 100663307);
        v20 = 12;
        if (v19 == 2)
        {
          v20 = 15;
        }

        if (v19 == 1)
        {
          v5 = 14;
        }

        else
        {
          v5 = v20;
        }
      }

      else if (v12 == 1836082535 && (*(*this + 32))(this, 50331652) == 3)
      {
        v5 = 42;
      }

      else
      {
        if ((v13 & 0x80) != 0)
        {
          if (v27.__r_.__value_.__l.__size_ != 3)
          {
            v5 = 0;
            goto LABEL_109;
          }

          v18 = v27.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v13 != 3)
          {
            return 0;
          }

          v18 = &v27;
        }

        v21 = LOWORD(v18->__r_.__value_.__l.__data_);
        v22 = v18->__r_.__value_.__s.__data_[2];
        if (v21 == 13421 && v22 == 118)
        {
          ML3CPP::Element::childElementForCode(&v24, *(this + 8), 0x61654D6Bu);
          if (v24 && (ML3CPP::Element::integerValue(v24) & 0x20) != 0)
          {
            v5 = 5;
          }

          else
          {
            v5 = 3;
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }
        }

        else
        {
          v5 = 0;
        }
      }

LABEL_108:
      if ((v13 & 0x80) == 0)
      {
        return v5;
      }

LABEL_109:
      operator delete(v27.__r_.__value_.__l.__data_);
      return v5;
    }

    if (v2 == 33554443)
    {
      goto LABEL_40;
    }

    if (v2 != 33554444)
    {
      if (result)
      {
        return v5;
      }

LABEL_37:
      v11 = *(this + 8);

      return ML3DAAPTrackImportItem::_getItemRatingLevel(v11);
    }

    return _MLDMediaTypeFromDAAPMediaKind(result);
  }

  if (v2 > 16777245)
  {
    if (v2 == 16777246)
    {
      return result != 0;
    }

    if (v2 == 16777247)
    {
LABEL_40:
      if (v5)
      {
        return (v5 + -978307200.0);
      }

      else
      {
        return 0;
      }
    }

    if (v2 != 33554440 || result)
    {
      return v5;
    }

    v9 = *(this + 8);
    v10 = 1634956154;
    goto LABEL_61;
  }

  if (v2 == 16777217)
  {
    return _MLDMediaTypeFromDAAPMediaKind(result);
  }

  if (v2 != 16777237)
  {
    v7 = 16777242;
LABEL_19:
    if (v2 != v7)
    {
      return v5;
    }

    return result != 0;
  }

  if (result <= 1)
  {
    return 1;
  }

  return result;
}

void sub_22D3C1BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MLDMediaTypeFromDAAPMediaKind(unsigned int a1)
{
  v1 = (a1 >> 2) & 2 | (8 * (a1 & 1)) | ((a1 << 26) >> 31) & 0x408 | ((a1 & 2) << 10) | (8 * a1) & 0x2200 | a1 & 4;
  if ((a1 & 2) != 0)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 32;
  }

  if ((~v1 & 0x804) == 0)
  {
    v1 = (a1 >> 2) & 2 | (8 * (a1 & 1)) & 0xE | ((a1 << 26) >> 31) & 0x408 | ((a1 & 2) << 10) & 0x260E | (8 * a1) & 0x2200 | a1 & 4 | 0x100;
  }

  if ((a1 & 0x200000) != 0)
  {
    v1 = v1 & 0xFFFFFEFB | v2;
  }

  if ((a1 & 0x400000) != 0)
  {
    v1 = 0x10000;
  }

  if ((a1 & 0x10000) != 0)
  {
    return 64;
  }

  else
  {
    return v1;
  }
}

uint64_t ML3DAAPTrackImportItem::_getItemRatingLevel(ML3DAAPTrackImportItem *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  ML3CPP::Element::childElementForCode(&v10, this, 0x61654352u);
  if (!v10)
  {
    goto LABEL_6;
  }

  ML3CPP::Element::stringValue(&v8, *(v10 + 48), *(v10 + 64));
  *__p = v8;
  v13 = v9;
  v1 = HIBYTE(v9);
  if (v9 < 0)
  {
    v1 = *(&v8 + 1);
  }

  if (v1)
  {
    v2 = [MLContentRating alloc];
    v3 = ML3CPPBridgeString(__p, 1);
    v4 = [(MLContentRating *)v2 initWithStringRepresentation:v3];

    v5 = [(MLContentRating *)v4 ratingRank];
    v6 = [v5 longLongValue];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_22D3C1DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ML3DAAPTrackImportItem::~ML3DAAPTrackImportItem(ML3DAAPImportItem *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

id ML3DAAPDeleteImportItem::getDeduplicationPredicates(ML3DAAPDeleteImportItem *this)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = ML3TrackRulesIdentityPropertyForSource(*(this + 18));
  v3 = [ML3ComparisonPredicate predicateWithProperty:v2 equalToInt64:*(this + 8)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

void sub_22D3C1F10(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ML3DAAPDeleteImportItem::getDescription(ML3DAAPDeleteImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "<ML3DAAPDeleteImportItem ", 25);
  *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v6, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " sourceItemId=", 14);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v11 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v11, 1);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v10);
}

void ML3DAAPDeleteImportItem::~ML3DAAPDeleteImportItem(ML3DAAPDeleteImportItem *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);

  JUMPOUT(0x2318CD250);
}

{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

void ML3DAAPContainerImportItem::_createImportItemValue(unsigned int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (a1 == 218103812)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  ML3DAAPImportItem::_createImportItemValue(a1, &v4);
}

void sub_22D3C230C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3C2324()
{
  (*(*v1 + 8))(v1);
  if (!v0)
  {
    JUMPOUT(0x22D3C231CLL);
  }

  JUMPOUT(0x22D3C2314);
}

uint64_t ML3DAAPTrackImportItem::ML3DAAPTrackImportItem(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_28408A4B0;
  *(a1 + 8) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  *a1 = &unk_284084038;
  return a1;
}

uint64_t std::__shared_ptr_pointer<ML3DAAPTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPTrackImportItem>,std::allocator<ML3DAAPTrackImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_22ML3DAAPTrackImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPTrackImportItem>,std::allocator<ML3DAAPTrackImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPTrackImportItem>,std::allocator<ML3DAAPTrackImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

id ML3DAAPContainerImportItem::getDeduplicationPredicates(ML3DAAPContainerImportItem *this)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = (*(*this + 32))(this, 184549408);
  if (v3)
  {
    v4 = [ML3ComparisonPredicate predicateWithProperty:@"store_cloud_id" equalToInt64:v3];
    [v2 addObject:v4];
  }

  ML3CPP::Element::childElementForCode(&v8, *(this + 8), 0x616A5069u);
  if (v8)
  {
    v5 = ML3CPP::Element::integerValue(v8);
    if (v5)
    {
      v6 = [ML3ComparisonPredicate predicateWithProperty:@"store_cloud_id" equalToInt64:v5];
      [v2 addObject:v6];
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v2;
}

void sub_22D3C25C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void ML3DAAPContainerImportItem::getDescription(ML3DAAPContainerImportItem *this)
{
  (*(*this + 24))(&v13);
  (*(*this + 32))(this, 184549408);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "<ML3DAAPContainerImportItem ", 28);
  *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v8, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " store_cloud_id=", 16);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", name=", 7);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
  v15 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v15, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v12);
  v13 = &unk_28408AC60;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_22D3C2904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ostringstream::~ostringstream(&a15);
  *(v15 - 96) = &unk_28408AC60;
  if (*(v15 - 57) < 0)
  {
    operator delete(*(v15 - 80));
  }

  _Unwind_Resume(a1);
}

void ML3DAAPContainerImportItem::getPlaylistTrackPersonIdentifiers(ML3DAAPContainerImportItem *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::unordered_set<std::string>>::__init_with_size[abi:ne200100]<std::unordered_set<std::string>*,std::unordered_set<std::string>*>(a2, *(this + 32), *(this + 33), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 33) - *(this + 32)) >> 3));
}

uint64_t ML3DAAPContainerImportItem::hasValue(ML3DAAPImportItem *this, uint64_t a2)
{
  if ((a2 - 184549376) >> 24 > 2)
  {
LABEL_26:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v2 = a2;
  hasValue = ML3DAAPImportItem::hasValue(this, a2);
  if (v2 <= 184549429)
  {
    LOBYTE(v5) = 1;
    switch(v2)
    {
      case 184549383:
        v9 = *(this + 8);
        if (std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v9 + 96, 0x61655073u))
        {
          goto LABEL_21;
        }

        v6 = v9 + 96;
        v7 = 1634029682;
        goto LABEL_38;
      case 184549388:
        v5 = *(this + 60);
        if (v5 == 1)
        {
          return v5 & 1;
        }

        v6 = *(this + 8) + 96;
        v7 = 1634357317;
        goto LABEL_38;
      case 184549396:
      case 184549398:
      case 184549399:
      case 184549401:
      case 184549402:
      case 184549403:
      case 184549404:
      case 184549405:
      case 184549406:
        goto LABEL_4;
      case 184549397:
        v8 = *(this + 60) == 4;
        goto LABEL_33;
      case 184549400:
        if (*(this + 60) == 3)
        {
LABEL_21:
          LOBYTE(v5) = 1;
        }

        else
        {
LABEL_4:
          LOBYTE(v5) = *(this + 200);
        }

        return v5 & 1;
      case 184549407:
        if ((*(this + 60) | 8) != 0xA)
        {
          goto LABEL_26;
        }

        v10 = *(this + 26);
        goto LABEL_29;
      case 184549413:
        return v5 & 1;
      default:
        goto LABEL_36;
    }
  }

  if (v2 > 201326592)
  {
    if (v2 > 218103812)
    {
      if (v2 == 218103813)
      {
        v6 = *(this + 8) + 96;
        v7 = 1634353516;
        goto LABEL_38;
      }

      if (v2 == 218103814)
      {
        v6 = *(this + 8) + 96;
        v7 = 1634357356;
        goto LABEL_38;
      }
    }

    else
    {
      if (v2 == 201326593)
      {
        v10 = *(this + 31);
LABEL_29:
        v12 = v10 == 0;
        goto LABEL_39;
      }

      if (v2 == 218103812)
      {
        v6 = *(this + 8) + 96;
        v7 = 1634759535;
LABEL_38:
        v12 = std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v6, v7) == 0;
LABEL_39:
        LOBYTE(v5) = !v12;
        return v5 & 1;
      }
    }

LABEL_36:
    LOBYTE(v5) = hasValue;
    return v5 & 1;
  }

  switch(v2)
  {
    case 184549430:
      v8 = *(this + 60) == 7;
      break;
    case 184549431:
      v8 = *(this + 60) == 8;
      break;
    case 184549446:
      v8 = *(this + 60) == 9;
      break;
    default:
      goto LABEL_36;
  }

LABEL_33:
  LOBYTE(v5) = v8;
  return v5 & 1;
}

void ML3DAAPContainerImportItem::getDataValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  ML3DAAPImportItem::getDataValue(this, a2, a3);
  if (v3 == 184549407 && (*(this + 60) | 8) == 0xA)
  {
    if (*(this + 26))
    {
      operator new();
    }
  }
}

void sub_22D3C2CB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3DAAPContainerImportItem::getIntegerValue(ML3DAAPImportItem *this, uint64_t a2)
{
  v2 = a2;
  result = ML3DAAPImportItem::getIntegerValue(this, a2);
  v5 = result;
  if (v2 > 184549445)
  {
    if (v2 > 184549459)
    {
      switch(v2)
      {
        case 184549460:
          goto LABEL_11;
        case 201326593:
          return *(this + 31);
        case 184549466:
LABEL_11:
          if (v5)
          {
            return (v5 + -978307200.0);
          }

          else
          {
            return 0;
          }
      }
    }

    else if (v2 == 184549446)
    {
      return *(this + 60) == 9;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    result = 2;
    switch(v2)
    {
      case 184549379:
        v6 = *(this + 60) - 5;
        if (v6 >= 6)
        {
          return 0;
        }

        else
        {
          return *&asc_22D5C73D8[8 * v6];
        }

      case 184549380:
      case 184549381:
      case 184549382:
        goto LABEL_11;
      case 184549388:
        if (*(this + 60) != 1 || std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, 0x616A5045u))
        {
          return v5;
        }

        goto LABEL_35;
      case 184549395:
        return *(this + 60) == 5;
      case 184549396:
        v8 = *(this + 26);
        goto LABEL_27;
      case 184549397:
        return *(this + 60) == 4;
      case 184549398:
        return *(this + 88);
      case 184549399:
        return *(this + 89);
      case 184549400:
        if (*(this + 60) == 3)
        {
          goto LABEL_35;
        }

        result = *(this + 102) != 0;
        break;
      case 184549401:
        return *(this + 100);
      case 184549402:
        return *(this + 90);
      case 184549403:
        return *(this + 91);
      case 184549404:
        v8 = *(this + 23);
LABEL_27:
        result = TrackOrderForITDBTrackOrder(v8);
        break;
      case 184549405:
        result = *(this + 24);
        break;
      case 184549406:
        result = *(this + 101);
        break;
      case 184549409:
        if ((v5 - 1) > 0x4B)
        {
LABEL_35:
          result = 1;
        }

        else
        {
          result = dword_22D5C6B20[(v5 - 1)];
        }

        break;
      case 184549413:
        return result;
      case 184549430:
        return *(this + 60) == 7;
      case 184549431:
        return *(this + 60) == 8;
      default:
        return v5;
    }
  }

  return result;
}

uint64_t ML3DAAPContainerImportItem::isValid(ML3DAAPImportItem *this)
{
  v6 = *MEMORY[0x277D85DE8];
  IntegerValue = ML3DAAPImportItem::getIntegerValue(this, 184549432);
  if (IntegerValue - 1) < 0xA && ((0x2FFu >> (IntegerValue - 1)))
  {
    return 1;
  }

  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = IntegerValue;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "got unknown container type %lld", &v4, 0xCu);
  }

  return 0;
}

id ML3DAAPContainerDeleteImportItem::getDeduplicationPredicates(ML3DAAPContainerDeleteImportItem *this)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = ML3ContainerRulesIdentityPropertyForSource(*(this + 18));
  v3 = [ML3ComparisonPredicate predicateWithProperty:v2 equalToInt64:*(this + 8)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

void sub_22D3C3104(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ML3DAAPContainerDeleteImportItem::~ML3DAAPContainerDeleteImportItem(ML3DAAPContainerDeleteImportItem *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);

  JUMPOUT(0x2318CD250);
}

{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

uint64_t ML3DAAPAlbumImportItem::propertyKeyForSortPropertyKey(ML3DAAPAlbumImportItem *this, int a2)
{
  if (a2 == 285212674)
  {
    return 285212673;
  }

  else
  {
    return 0;
  }
}

uint64_t ML3DAAPAlbumImportItem::sortPropertyKeyForPropertyKey(ML3DAAPAlbumImportItem *this, int a2)
{
  if (a2 == 285212673)
  {
    return 285212674;
  }

  else
  {
    return 0;
  }
}

id ML3DAAPAlbumImportItem::getDeduplicationPredicates(ML3DAAPAlbumImportItem *this)
{
  v46[5] = *MEMORY[0x277D85DE8];
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = (*(*this + 32))(this, 285212696);
  v3 = (*(*this + 32))(this, 285212683);
  (*(*this + 24))(v40, this, 285212673);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v40[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v42 = __p;
  }

  (*(*this + 24))(v40, this, 285212699);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v40[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v39 = __p;
  }

  (*(*this + 24))(v40, this, 285212682);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v40[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v38 = __p;
  }

  size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = *(this + 10);
    v6 = ML3CPPBridgeString(&v42, 1);
    v7 = [v5 groupingKeyForString:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v39.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    v9 = *(this + 10);
    v10 = ML3CPPBridgeString(&v39, 1);
    v11 = [v9 groupingKeyForString:v10];

    if (!v2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v11 = 0;
    if (!v2)
    {
      goto LABEL_29;
    }
  }

  if ([v7 length] && objc_msgSend(v11, "length"))
  {
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v2];
    v46[0] = v12;
    v13 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1];
    v46[1] = v13;
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v11];
    v46[2] = v14;
    v15 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
    v46[3] = v15;
    v16 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
    v46[4] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
    v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];

    [v37 addObject:v18];
  }

  else
  {
    v19 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v2];
    v45[0] = v19;
    v20 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1];
    v45[1] = v20;
    v21 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
    v45[2] = v21;
    v22 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
    v45[3] = v22;
    v23 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
    v45[4] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:5];
    v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v24];

    [v37 addObject:v18];
  }

LABEL_29:
  if ([v7 length] && objc_msgSend(v11, "length"))
  {
    v25 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v11];
    v44[0] = v25;
    v26 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
    v44[1] = v26;
    v27 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
    v44[2] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v29 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v28];

    [v37 addObject:v29];
  }

  if ([v7 length])
  {
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v38.__r_.__value_.__l.__size_)
      {
        goto LABEL_39;
      }

      v30 = v38.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v38.__r_.__value_.__s + 23))
      {
        goto LABEL_39;
      }

      v30 = &v38;
    }

    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
    v32 = [ML3ComparisonPredicate predicateWithProperty:@"feed_url" equalToValue:v31];
    v43[0] = v32;
    v33 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
    v43[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v35 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v34];

    [v37 addObject:v35];
  }

LABEL_39:

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return v37;
}

void sub_22D3C39A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void ML3DAAPAlbumImportItem::getDescription(ML3DAAPAlbumImportItem *this)
{
  (*(*this + 24))(&v13);
  v2 = (*(*this + 32))(this, 285212696);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "<ML3DAAPAlbumImportItem ", 24);
  *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = MEMORY[0x2318CD100](&v8, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " name=", 6);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " storeID=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v6 = MEMORY[0x2318CD140](v3, v2);
  v15 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v15, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v12);
  v13 = &unk_28408AC60;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_22D3C3F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ostringstream::~ostringstream(&a15);
  *(v15 - 96) = &unk_28408AC60;
  if (*(v15 - 57) < 0)
  {
    operator delete(*(v15 - 80));
  }

  _Unwind_Resume(a1);
}

BOOL ML3DAAPAlbumImportItem::hasValue(ML3DAAPAlbumImportItem *this, int a2)
{
  v3 = 0;
  if (a2 > 285212672)
  {
    switch(a2)
    {
      case 285212673:
        v4 = *(this + 8) + 96;
        v5 = 24940;
        goto LABEL_20;
      case 285212674:
        v4 = *(this + 8) + 96;
        v5 = 29557;
LABEL_20:
        v6 = v5 | 0x61730000;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212679:
        v4 = *(this + 8) + 96;
        v6 = 1634954354;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212680:
        v4 = *(this + 8) + 96;
        v6 = 1634361708;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212681:
        v4 = *(this + 8) + 96;
        v6 = 1634952047;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212682:
        v4 = *(this + 8) + 96;
        v6 = 1634955381;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212683:
        v4 = *(this + 8) + 96;
        v6 = 1634030421;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212684:
        v4 = *(this + 8) + 96;
        v6 = 1634957682;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212688:
        (*(*this + 24))(v15, this, 33554462);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v15[0] = &unk_28408AC60;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v17 = __p;
        }

        (*(*this + 24))(v15, this, 33554451);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v15[0] = &unk_28408AC60;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v14 = __p;
        }

        v10 = (*(*this + 56))(this, 16777248);
        v11 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
        size = v17.__r_.__value_.__l.__size_;
        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        }

        v3 = size != 0;
        if (!size && ((v10 ^ 1) & 1) == 0)
        {
          if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v13 = v14.__r_.__value_.__l.__size_;
          }

          v3 = v13 != 0;
        }

        if ((*(&v14.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        if (v11 < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        return v3;
      case 285212690:
        v4 = *(this + 8) + 96;
        v6 = 1634951539;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212693:
        v4 = *(this + 8) + 96;
        v8 = 24901;
        goto LABEL_24;
      case 285212695:
        v4 = *(this + 8) + 96;
        v7 = 27762;
        goto LABEL_11;
      case 285212696:
        v4 = *(this + 8) + 96;
        v7 = 20553;
LABEL_11:
        v6 = v7 | 0x61650000;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      case 285212697:
        v4 = *(this + 8) + 96;
        v8 = 16745;
LABEL_24:
        v6 = v8 | 0x616A0000;
        return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
      default:
        return v3;
    }
  }

  switch(a2)
  {
    case 16777248:
      v4 = *(this + 8) + 96;
      v6 = 1634362177;
      return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
    case 33554451:
      v4 = *(this + 8) + 96;
      v6 = 1634169456;
      return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
    case 33554462:
      v4 = *(this + 8) + 96;
      v6 = 1635218027;
      return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v4, v6) != 0;
  }

  return v3;
}

void sub_22D3C4354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(exception_object);
}

unint64_t ML3DAAPAlbumImportItem::getIntegerValue(ML3DAAPAlbumImportItem *this, int a2)
{
  v3 = 0;
  if (a2 > 285212682)
  {
    if (a2 > 285212687)
    {
      if (a2 != 285212688)
      {
        if (a2 == 285212693)
        {
          v4 = *(this + 8);
          v5 = 1634361669;
        }

        else
        {
          if (a2 != 285212696)
          {
            return v3;
          }

          v4 = *(this + 8);
          v5 = 1634029641;
        }

        goto LABEL_25;
      }

      (*(*this + 24))(&v14, this, 33554462);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v14 = &unk_28408AC60;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v17 = __p;
      }

      (*(*this + 24))(&v14, this, 33554451);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v14 = &unk_28408AC60;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v13 = __p;
      }

      v9 = (*(*this + 56))(this, 16777248);
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      v11 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      if (((size == 0) & v9) != 0)
      {
        v12 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
        if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = v13.__r_.__value_.__l.__size_;
        }

        LODWORD(v3) = v12 != 0;
        if ((*(&v13.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        LODWORD(v3) = size != 0;
        if ((*(&v13.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_46;
        }
      }

      operator delete(v13.__r_.__value_.__l.__data_);
LABEL_46:
      v3 = v3;
      if (v11 < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      return v3;
    }

    if (a2 == 285212683)
    {
      v4 = *(this + 8);
      v5 = 1634030421;
    }

    else
    {
      if (a2 != 285212684)
      {
        return v3;
      }

      v4 = *(this + 8);
      v5 = 1634957682;
    }

LABEL_25:
    ML3CPP::Element::childElementForCode(&v14, v4, v5);
    v6 = v15;
    if (v14)
    {
      v3 = ML3CPP::Element::integerValue(v14);
      if (!v6)
      {
        return v3;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a2 > 285212678)
  {
    if (a2 == 285212679)
    {
      v4 = *(this + 8);
      v5 = 1634954354;
    }

    else
    {
      if (a2 != 285212680)
      {
        return v3;
      }

      v4 = *(this + 8);
      v5 = 1634361708;
    }

    goto LABEL_25;
  }

  if (a2 != 16777217)
  {
    if (a2 != 16777248)
    {
      return v3;
    }

    v4 = *(this + 8);
    v5 = 1634362177;
    goto LABEL_25;
  }

  ML3CPP::Element::childElementForCode(&v14, *(this + 8), 0x61654D6Bu);
  v6 = v15;
  if (v14)
  {
    v7 = ML3CPP::Element::integerValue(v14);
    v3 = _MLDMediaTypeFromDAAPMediaKind(v7);
    if (!v6)
    {
      return v3;
    }

    goto LABEL_29;
  }

LABEL_28:
  v3 = 0;
  if (v6)
  {
LABEL_29:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_22D3C4798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ML3DAAPAlbumImportItem::getStringValue(ML3DAAPAlbumImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 <= 285212673)
  {
    switch(a2)
    {
      case 33554451:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61677270u);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_23;
        }

        break;
      case 33554462:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x6177726Bu);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
LABEL_23:
          ML3CPP::Element::stringValue(&__str, *(__str.__r_.__value_.__r.__words[0] + 48), *(__str.__r_.__value_.__r.__words[0] + 64));
          std::string::operator=(v4, &__str);
          *(a3 + 8) = 1;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        break;
      case 285212673:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x6173616Cu);
        size = __str.__r_.__value_.__l.__size_;
        if (!__str.__r_.__value_.__r.__words[0])
        {
          break;
        }

        goto LABEL_23;
      default:
        return;
    }
  }

  else if (a2 > 285212696)
  {
    if (a2 == 285212697)
    {
      ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x616A4169u);
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__r.__words[0])
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (a2 != 285212699)
      {
        return;
      }

      ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61736161u);
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__r.__words[0])
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (a2 != 285212674)
    {
      if (a2 != 285212682)
      {
        return;
      }

      ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61737075u);
      size = __str.__r_.__value_.__l.__size_;
      if (!__str.__r_.__value_.__r.__words[0])
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61737375u);
    size = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__r.__words[0])
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }
}

void sub_22D3C4AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *v15 = v16;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void ML3DAAPAlbumImportItem::~ML3DAAPAlbumImportItem(id *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3DAAPImportItem::~ML3DAAPImportItem(this);
}

uint64_t ML3DAAPArtistImportItem::propertyKeyForSortPropertyKey(ML3DAAPArtistImportItem *this, int a2)
{
  if (a2 == 318767106)
  {
    v2 = 318767105;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 318767108)
  {
    v3 = 318767107;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 301989890)
  {
    return 301989889;
  }

  else
  {
    return v3;
  }
}

uint64_t ML3DAAPArtistImportItem::sortPropertyKeyForPropertyKey(ML3DAAPArtistImportItem *this, int a2)
{
  if (a2 == 318767105)
  {
    v2 = 318767106;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 318767107)
  {
    v3 = 318767108;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 301989889)
  {
    return 301989890;
  }

  else
  {
    return v3;
  }
}

void ML3DAAPArtistImportItem::getEffectiveSortSeriesName(ML3DAAPArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 318767108);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D3C4F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3DAAPArtistImportItem::getEffectiveSortArtist(ML3DAAPArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 318767106);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D3C5288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3DAAPArtistImportItem::getEffectiveSortAlbumArtist(ML3DAAPArtistImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v20, this, 301989889);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 301989890);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 318767105);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 318767106);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = v21;
  }

  v7 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v19;
  }

  v8 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  size = v16.__r_.__value_.__l.__size_;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v16.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    if (v6)
    {
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  ML3CPPSortableString(&v20, &v22);
  if (v9 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
  *&v16.__r_.__value_.__l.__data_ = v20;
  LOBYTE(v9) = v21.__r_.__value_.__s.__data_[7];
  size = *(&v20 + 1);
  if (!v6)
  {
LABEL_28:
    if ((v9 & 0x80u) == 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = size;
    }

    if (!v11)
    {
      v12 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v22.__r_.__value_.__l.__size_;
      }

      if (!v12)
      {
        (*(*this + 168))(&v20, this, a2);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        }

        else
        {
          v15 = v21;
        }

        if ((v9 & 0x80) != 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v16 = v15;
        *&v20 = &unk_28408AC60;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
        size = v16.__r_.__value_.__l.__size_;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v16.__r_.__value_.__l.__size_;
        }

        if (!v13)
        {
          v14 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v14 = v18.__r_.__value_.__l.__size_;
          }

          if (!v14)
          {
            (*(*this + 176))(&v20, this, a2);
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
            }

            else
            {
              v15 = v21;
            }

            if (v9 < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }

            v16 = v15;
            *&v20 = &unk_28408AC60;
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v21.__r_.__value_.__l.__data_);
            }

            LOBYTE(v9) = *(&v16.__r_.__value_.__s + 23);
            size = v16.__r_.__value_.__l.__size_;
          }
        }
      }
    }
  }

LABEL_56:
  if ((v9 & 0x80u) == 0)
  {
    size = v9;
  }

  if (size && a2)
  {
    ML3CPPSanitizeString(&v20, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
    *&v16.__r_.__value_.__l.__data_ = v20;
    LOBYTE(v9) = v21.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v9 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 16) = v16;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
LABEL_71:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_22D3C5884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  *(v39 - 136) = &unk_28408AC60;
  if (*(v39 - 97) < 0)
  {
    operator delete(*(v39 - 120));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  _Unwind_Resume(exception_object);
}

void ML3DAAPArtistImportItem::getEffectiveAlbumArtist(ML3DAAPArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v17, this, 318767105);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __str = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 318767107);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 301989889);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v18;
  }

  v7 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = *&v15.__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[0] = v15.__r_.__value_.__r.__words[2];
  }

  if (!v6)
  {
    v8 = v18.__r_.__value_.__s.__data_[7];
    v9 = v18.__r_.__value_.__s.__data_[7];
    v10 = *(&v17 + 1);
    if (v18.__r_.__value_.__s.__data_[7] >= 0)
    {
      v11 = v18.__r_.__value_.__s.__data_[7];
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    if (!v11)
    {
      std::string::operator=(&v17, &__str);
      v8 = v18.__r_.__value_.__s.__data_[7];
      v10 = *(&v17 + 1);
      v9 = v18.__r_.__value_.__s.__data_[7];
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      std::string::operator=(&v17, &v16);
    }
  }

  v12 = v18.__r_.__value_.__s.__data_[7];
  v13 = v18.__r_.__value_.__s.__data_[7];
  if (v18.__r_.__value_.__s.__data_[7] < 0)
  {
    v12 = *(&v17 + 1);
  }

  if (v12 && a2)
  {
    ML3CPPSanitizeString(&v14, &v17);
    if (v18.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v17);
    }

    v18.__r_.__value_.__r.__words[0] = v14.__r_.__value_.__r.__words[2];
    v17 = *&v14.__r_.__value_.__l.__data_;
    v13 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v13 & 0x80) == 0)
  {
    *(a3 + 16) = v17;
    *(a3 + 32) = v18.__r_.__value_.__r.__words[0];
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v17, *(&v17 + 1));
  if ((v18.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  operator delete(v17);
  if (v7 < 0)
  {
LABEL_38:
    operator delete(v15.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_22D3C5D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  operator delete(__p);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  _Unwind_Resume(a1);
}

id ML3DAAPArtistImportItem::getDeduplicationPredicates(ML3DAAPArtistImportItem *this)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = @"store_id";
  v4 = @"grouping_key";
  memset(&__p, 0, sizeof(__p));
  if (*(this + 10) == 2)
  {
    (*(*this + 24))(v24, this, 318767105);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v25;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
    v24[0] = &unk_28408AC60;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v5 = (*(*this + 32))(this, 16777217);
    if ((MLMediaTypeByStandardizingMediaType(v5) & 8) == 0)
    {
      (*(*this + 24))(v24, this, 318767107);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
        v24[0] = &unk_28408AC60;
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __str = v25;
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::operator=(&__p, &__str);
        v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v8 < 0)
      {
        v6 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_27;
      }
    }
  }

  else
  {
    (*(*this + 152))(v24, this, 0);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v25;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
    v24[0] = &unk_28408AC60;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v25.__r_.__value_.__r.__words[0];
LABEL_27:
      operator delete(v6);
    }
  }

  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v10 = *(this + 11);
    v11 = ML3CPPBridgeString(&__p, 1);
    v12 = [v10 groupingKeyForString:v11];
  }

  else
  {
    v12 = 0;
  }

  if (*(this + 10) == 2)
  {
    v13 = 318767111;
  }

  else
  {
    v13 = 301989893;
  }

  v14 = (*(*this + 32))(this, v13);
  if (v14)
  {
    if (!v12)
    {
      v20 = [ML3ComparisonPredicate predicateWithProperty:v3 equalToInt64:v14];
      v28[0] = v20;
      v21 = [ML3ComparisonPredicate predicateWithProperty:v4 value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v28[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v19 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v22];

      [v2 addObject:v19];
      goto LABEL_42;
    }

    v15 = [ML3ComparisonPredicate predicateWithProperty:v3 equalToInt64:v14];
    v29[0] = v15;
    v16 = [ML3ComparisonPredicate predicateWithProperty:v4 equalToValue:v12];
    v29[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];

    [v2 addObject:v18];
  }

  else if (!v12)
  {
    goto LABEL_43;
  }

  v19 = [ML3ComparisonPredicate predicateWithProperty:v4 equalToValue:v12];
  [v2 addObject:v19];
LABEL_42:

LABEL_43:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_22D3C6380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void ML3DAAPArtistImportItem::getDescription(ML3DAAPArtistImportItem *this)
{
  (*(*this + 24))(&v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v29 = __p;
  }

  if (*(this + 10) == 2)
  {
    v2 = 318767106;
  }

  else
  {
    v2 = 301989890;
  }

  (*(*this + 24))(&v21, this, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v28 = __p;
  }

  if (*(this + 10) == 2)
  {
    v3 = 318767111;
  }

  else
  {
    v3 = 301989893;
  }

  (*(*this + 32))(this, v3);
  (*(*this + 24))(&v21, this, 318767107);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v27 = __p;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "<ML3DAAPArtistImportItem ", 25);
  *(&v21 + *(v21 - 3) + 8) = *(&v21 + *(v21 - 3) + 8) & 0xFFFFFFB5 | 8;
  v4 = MEMORY[0x2318CD100](&v21, this);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " entityType=", 12);
  v6 = MEMORY[0x2318CD120](v5, *(this + 10));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " name=", 6);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v29;
  }

  else
  {
    v8 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, size);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " sortName=", 10);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v28;
  }

  else
  {
    v12 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v28.__r_.__value_.__l.__size_;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " seriesName=", 12);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v27;
  }

  else
  {
    v16 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v27.__r_.__value_.__l.__size_;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " storeID=", 9);
  *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 2;
  v20 = MEMORY[0x2318CD140]();
  v30 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v30, 1);
  std::stringbuf::str();
  v21 = *MEMORY[0x277D82828];
  *(&v21 + *(v21 - 3)) = *(MEMORY[0x277D82828] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__p);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v26);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_22D3C6990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 105) < 0)
  {
    operator delete(*(v17 - 128));
  }

  if (*(v17 - 73) < 0)
  {
    operator delete(*(v17 - 96));
  }

  _Unwind_Resume(exception_object);
}

BOOL ML3DAAPArtistImportItem::hasValue(ML3DAAPArtistImportItem *this, int a2)
{
  v3 = 0;
  v4 = 1634951521;
  if (a2 > 301989903)
  {
    if (a2 <= 318767106)
    {
      if (a2 != 301989904)
      {
        if (a2 == 318767105)
        {
          v4 = 1634951538;
          return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, v4) != 0;
        }

        if (a2 == 318767106)
        {
          v4 = 1634956129;
          return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, v4) != 0;
        }

        return v3;
      }

      v5 = 27762;
LABEL_24:
      v4 = v5 | 0x61650000;
      return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, v4) != 0;
    }

    if (a2 == 318767107)
    {
      v5 = 21326;
      goto LABEL_24;
    }

    if (a2 == 318767111)
    {
      v5 = 16713;
      goto LABEL_24;
    }

    if (a2 != 318767118)
    {
      return v3;
    }

LABEL_15:
    v4 = 1634353509;
    return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, v4) != 0;
  }

  if (a2 <= 301989892)
  {
    if (a2 == 301989889)
    {
      return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, v4) != 0;
    }

    if (a2 == 301989890)
    {
      v4 = 1634956140;
      return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, v4) != 0;
    }

    return v3;
  }

  switch(a2)
  {
    case 301989893:
      v4 = 1634357345;
      return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, v4) != 0;
    case 301989901:
      goto LABEL_15;
    case 301989903:
      v4 = 1634036851;
      return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*(this + 8) + 96, v4) != 0;
  }

  return v3;
}

unint64_t ML3DAAPArtistImportItem::getIntegerValue(ML3DAAPArtistImportItem *this, int a2)
{
  v2 = 0;
  if (a2 > 301989900)
  {
    if (a2 != 318767118)
    {
      if (a2 == 318767111)
      {
        v3 = *(this + 8);
        v4 = 1634025801;
        goto LABEL_15;
      }

      if (a2 != 301989901)
      {
        return v2;
      }
    }

    v3 = *(this + 8);
    v4 = 1634353509;
    goto LABEL_15;
  }

  switch(a2)
  {
    case 16777217:
      ML3CPP::Element::childElementForCode(&v8, *(this + 8), 0x61654D6Bu);
      v5 = v9;
      if (v8)
      {
        v6 = ML3CPP::Element::integerValue(v8);
        v2 = _MLDMediaTypeFromDAAPMediaKind(v6);
        if (!v5)
        {
          return v2;
        }

        goto LABEL_17;
      }

      goto LABEL_19;
    case 16777246:
      v3 = *(this + 8);
      v4 = 1634952047;
      break;
    case 301989893:
      v3 = *(this + 8);
      v4 = 1634357345;
      break;
    default:
      return v2;
  }

LABEL_15:
  ML3CPP::Element::childElementForCode(&v8, v3, v4);
  v5 = v9;
  if (!v8)
  {
LABEL_19:
    v2 = 0;
    if (!v5)
    {
      return v2;
    }

    goto LABEL_17;
  }

  v2 = ML3CPP::Element::integerValue(v8);
  if (v5)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void ML3DAAPArtistImportItem::getStringValue(ML3DAAPArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 > 318767105)
  {
    switch(a2)
    {
      case 318767106:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61737361u);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_19;
        }

        break;
      case 318767107:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x6165534Eu);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_19;
        }

        break;
      case 318767108:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61737373u);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_19;
        }

        break;
      default:
        return;
    }
  }

  else
  {
    switch(a2)
    {
      case 301989889:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61736161u);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
          goto LABEL_19;
        }

        break;
      case 301989890:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x6173736Cu);
        size = __str.__r_.__value_.__l.__size_;
        if (__str.__r_.__value_.__r.__words[0])
        {
LABEL_19:
          ML3CPP::Element::stringValue(&__str, *(__str.__r_.__value_.__r.__words[0] + 48), *(__str.__r_.__value_.__r.__words[0] + 64));
          std::string::operator=(v4, &__str);
          *(a3 + 8) = 1;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        break;
      case 318767105:
        ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61736172u);
        size = __str.__r_.__value_.__l.__size_;
        if (!__str.__r_.__value_.__r.__words[0])
        {
          break;
        }

        goto LABEL_19;
      default:
        return;
    }
  }

  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }
}

void sub_22D3C6FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *v15 = v16;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void ML3DAAPArtistImportItem::~ML3DAAPArtistImportItem(id *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3DAAPImportItem::~ML3DAAPImportItem(this);
}

uint64_t ML3DAAPContainerImportItem::ML3DAAPContainerImportItem(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  v10 = 0uLL;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_28408A4B0;
  *(a1 + 8) = 0;
  *(a1 + 64) = v9;
  *(a1 + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v10 = 0uLL;
  }

  *(a1 + 80) = 0;
  *(a1 + 208) = v10;
  *a1 = &unk_28408A3C0;
  *(a1 + 224) = v10;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 216, *a3, a3[1], (a3[1] - *a3) >> 3);
  *(a1 + 248) = 0u;
  v11 = (a1 + 248);
  *(a1 + 264) = 0u;
  std::vector<std::unordered_set<std::string>>::__init_with_size[abi:ne200100]<std::unordered_set<std::string>*,std::unordered_set<std::string>*>(a1 + 256, *a4, a4[1], 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3));
  ML3CPP::Element::childElementForCode(&v34, *a2, 0x6D706572u);
  if (v34)
  {
    *(a1 + 280) = ML3CPP::Element::integerValue(v34);
  }

  ML3CPP::Element::childElementForCode(&v32, *a2, 0x6165504Bu);
  if (v32)
  {
    v12 = ML3CPP::Element::integerValue(v32);
    *(a1 + 240) = v12;
  }

  else
  {
    v12 = *(a1 + 240);
  }

  *(a1 + 88) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  if (v12 <= 0xA && ((1 << v12) & 0x40C) != 0)
  {
    ML3CPP::Element::childElementForCode(&v43, *a2, 0x61655044u);
    if (v43)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v43 + 48) length:*(v43 + 64) freeWhenDone:0];
      if (v13)
      {
        v14 = [MEMORY[0x277CCAC58] propertyListWithData:v13 options:0 format:0 error:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((a1 + 80), v14);
          v15 = [v14 objectForKey:@"contentFilter"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong((a1 + 208), v15);
          }

          v16 = [v14 objectForKey:@"smartInfo"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            MLParsedSmartInfoFromData(v16, buf);
            v17 = v41;
            *(a1 + 152) = v40;
            *(a1 + 168) = v17;
            *(a1 + 184) = v42;
            v18 = v37;
            *(a1 + 88) = *buf;
            *(a1 + 104) = v18;
            v19 = v39;
            *(a1 + 120) = v38;
            *(a1 + 136) = v19;
            *(a1 + 200) = 1;
          }

          v20 = [v14 objectForKey:@"geniusSeedTrackIDs"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 count])
          {
            v21 = [v20 objectAtIndex:0];
            *v11 = [v21 unsignedIntValue];
          }
        }

        else
        {
          v15 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v14;
            _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "got unexpected container properties element. properties=%{public}@", buf, 0xCu);
          }
        }
      }
    }

    if (*(&v43 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
    }

    if (*(a1 + 240) == 3)
    {
      ML3CPP::Element::childElementForCode(buf, *a2, 0x61654753u);
      v22 = *buf;
      if (*buf)
      {
        for (i = 0; ; i = v24 + 1)
        {
          v24 = i;
          v25 = *(v22 + 72);
          if (v24 >= (*(v22 + 80) - v25) >> 4)
          {
            break;
          }

          v26 = *(v25 + 16 * v24);
          v27 = *(v25 + 16 * v24 + 8);
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
            v28 = v26;
            if (*(v26 + 16) == 1835624804)
            {
              goto LABEL_38;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            v22 = *buf;
          }

          else
          {
            v28 = *(v25 + 16 * v24);
            if (*(v26 + 16) == 1835624804)
            {
LABEL_38:
              *v11 = ML3CPP::Element::integerValue(v28);
              v29 = os_log_create("com.apple.amp.medialibrary", "Default");
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = *v11;
                LODWORD(v43) = 134217984;
                *(&v43 + 4) = v30;
                _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_ERROR, "parsed genius seed listing. id=%lld", &v43, 0xCu);
              }

              if (v27)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }

              break;
            }
          }
        }
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  return a1;
}

void sub_22D3C7610(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);

  v14 = *(v12 - 104);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  v15 = *(v5 + 216);
  if (v15)
  {
    *(v5 + 224) = v15;
    operator delete(v15);
  }

  ML3DAAPImportItem::~ML3DAAPImportItem(v5);
  _Unwind_Resume(a1);
}

uint64_t ML3DAAPAlbumImportItem::ML3DAAPAlbumImportItem(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_28408A4B0;
  *(a1 + 8) = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_2840844D8;
  *(a1 + 80) = v5;
  return a1;
}

uint64_t ML3DAAPArtistImportItem::ML3DAAPArtistImportItem(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_28408A4B0;
  *(a1 + 8) = 0;
  *(a1 + 64) = v9;
  *(a1 + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_2840845C8;
  *(a1 + 80) = a3;
  *(a1 + 88) = v7;
  return a1;
}

void ML3CPP::Parser::parse(ML3CPP::Parser *this)
{
  if (*(this + 24) == 1)
  {
    *(this + 7) = 3;
    return;
  }

  if (*(this + 7))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Cannot parse more than once.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(this + 7) = 1;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 1);
      if (v5)
      {
        (**v5)(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v6 = 0x100004077774924;
  do
  {
    if (*(this + 24))
    {
      v45 = 3;
      goto LABEL_78;
    }

    v7 = *(this + 9);
    if (v7)
    {
      v8 = *(*(this + 5) + (((v7 + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v7 + *(this + 64) - 1);
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    std::istream::read();
    if (*(*this + 8) == 4)
    {
      size_4 = bswap32(0);
      std::istream::read();
      if (*(*this + 8) == 4)
      {
        size = bswap32(0);
        if (v9)
        {
          v9[2] -= 8;
        }

        v11 = *(this + 2);
        if (!v11)
        {
          goto LABEL_29;
        }

        v12 = std::__shared_weak_count::lock(v11);
        if (!v12)
        {
          goto LABEL_29;
        }

        v13 = v12;
        v14 = *(this + 1);
        if (!v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_29:
          std::istream::seekg();
          if (v9)
          {
            v21 = v9[2] - size;
            v9[2] = v21;
            if (!v21)
            {
              goto LABEL_52;
            }
          }

LABEL_31:
          std::istream::peek();
          v22 = 1;
          if (!v10)
          {
            continue;
          }

LABEL_47:
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          continue;
        }

        v15 = (*(*v14 + 16))(v14, size_4);
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        if (!v15)
        {
          goto LABEL_29;
        }

        v16 = *(this + 2);
        if (v16)
        {
          v17 = std::__shared_weak_count::lock(v16);
          if (v17)
          {
            v18 = v17;
            v19 = *(this + 1);
            if (v19)
            {
              v20 = (*(*v19 + 24))(v19, size_4);
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              if (v20)
              {
                operator new();
              }
            }

            else
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }
          }
        }

        v23 = malloc_type_malloc(size, v6);
        if (v23)
        {
          std::istream::read();
          if (*(*this + 8) == size)
          {
            v24 = v6;
            if (v9)
            {
              v9[2] -= size;
            }

            v25 = *(this + 2);
            if (v25)
            {
              v26 = std::__shared_weak_count::lock(v25);
              if (v26)
              {
                v27 = v26;
                v28 = *(this + 1);
                if (v28)
                {
                  (*(*v28 + 40))(v28, size_4, v23, size);
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }
            }

            free(v23);
            v6 = v24;
            if (v9 && !v9[2])
            {
LABEL_52:
              v29 = v10;
              while (1)
              {
                v30 = *(this + 9) - 1;
                v31 = v30 + *(this + 8);
                v32 = *(this + 5);
                v33 = *(*(v32 + ((v31 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v31 + 8);
                if (v33)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                  v30 = *(this + 9) - 1;
                  v32 = *(this + 5);
                  v31 = v30 + *(this + 8);
                }

                v34 = *(this + 6);
                *(this + 9) = v30;
                if (v34 == v32)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = 32 * (v34 - v32) - 1;
                }

                if (v35 - v31 >= 0x200)
                {
                  operator delete(*(v34 - 8));
                  *(this + 6) -= 8;
                }

                v36 = *(this + 2);
                if (v36)
                {
                  v37 = *v9;
                  v38 = std::__shared_weak_count::lock(v36);
                  if (v38)
                  {
                    v39 = v38;
                    v40 = *(this + 1);
                    if (v40)
                    {
                      (*(*v40 + 48))(v40, v37);
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
                  }
                }

                v41 = v9[1];
                v42 = *(this + 9);
                if (v42)
                {
                  break;
                }

                v9 = 0;
                v10 = 0;
                if (v29)
                {
                  goto LABEL_69;
                }

LABEL_70:
                if (v9)
                {
                  v29 = v10;
                  v44 = v9[2] - v41;
                  v9[2] = v44;
                  if (!v44)
                  {
                    continue;
                  }
                }

                goto LABEL_31;
              }

              v43 = *(*(this + 5) + (((v42 + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v42 + *(this + 64) - 1);
              v9 = *v43;
              v10 = *(v43 + 8);
              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (!v29)
              {
                goto LABEL_70;
              }

LABEL_69:
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
              goto LABEL_70;
            }

            goto LABEL_31;
          }

          free(v23);
        }
      }
    }

    v22 = 0;
    *(this + 7) = 4;
    if (v10)
    {
      goto LABEL_47;
    }
  }

  while (v22 && (*(*this + *(**this - 24) + 32) & 2) == 0);
  if (*(this + 7) != 1)
  {
    goto LABEL_79;
  }

  v45 = 2;
LABEL_78:
  *(this + 7) = v45;
LABEL_79:
  v46 = *(this + 2);
  if (v46)
  {
    v47 = std::__shared_weak_count::lock(v46);
    if (v47)
    {
      v48 = v47;
      v49 = *(this + 1);
      if (v49)
      {
        (*(*v49 + 8))(v49, *(this + 7));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }
  }
}

void sub_22D3C8418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, std::__shared_weak_count *a17)
{
  operator delete(__p);
  if (a15)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::shared_ptr<ML3CPP::Parser::ParserContainer> *,std::allocator<std::shared_ptr<ML3CPP::Parser::ParserContainer> *>>::emplace_back<std::shared_ptr<ML3CPP::Parser::ParserContainer> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3CPP::Parser::ParserContainer> *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3CPP::Parser::ParserContainer> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<ML3CPP::Parser::ParserContainer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284084850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3C8B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MIPLibraryIdentifierReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void ML3ItemStoreDatabaseImportDataSource::~ML3ItemStoreDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3LogCopyCategoryDefaultsKey(void *a1, int a2)
{
  if (a2)
  {
    v2 = @"ConsoleLoggingLevel";
  }

  else
  {
    v2 = @"LogFileLoggingLevel";
  }

  [a1 stringByAppendingString:v2];
  return objc_claimAutoreleasedReturnValue();
}

void MLSetSQLiteAutoTraceEnabled(char a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __MLSetSQLiteAutoTraceEnabled_block_invoke;
  v1[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = a1;
  _MLDispatchToSerialQueue(0, v1);
}

__CFString *MLSQLiteExtendedResultString(int a1)
{
  if (a1 > 2313)
  {
    if (a1 <= 3337)
    {
      if (a1 > 2825)
      {
        if (a1 == 2826)
        {
          return @"SQLITE_IOERR_BLOCKED";
        }

        if (a1 == 3082)
        {
          return @"SQLITE_IOERR_NOMEM";
        }
      }

      else
      {
        if (a1 == 2314)
        {
          return @"SQLITE_IOERR_RDLOCK";
        }

        if (a1 == 2570)
        {
          return @"SQLITE_IOERR_DELETE";
        }
      }
    }

    else if (a1 <= 3849)
    {
      if (a1 == 3338)
      {
        return @"SQLITE_IOERR_ACCESS";
      }

      if (a1 == 3594)
      {
        return @"SQLITE_IOERR_CHECKRESERVEDLOCK";
      }
    }

    else
    {
      switch(a1)
      {
        case 3850:
          return @"SQLITE_IOERR_LOCK";
        case 4106:
          return @"SQLITE_IOERR_CLOSE";
        case 4362:
          return @"SQLITE_IOERR_DIR_CLOSE";
      }
    }
  }

  else if (a1 <= 1033)
  {
    if (a1 > 521)
    {
      if (a1 == 522)
      {
        return @"SQLITE_IOERR_SHORT_READ";
      }

      if (a1 == 778)
      {
        return @"SQLITE_IOERR_WRITE";
      }
    }

    else
    {
      if (a1 == 262)
      {
        return @"SQLITE_LOCKED_SHAREDCACHE";
      }

      if (a1 == 266)
      {
        return @"SQLITE_IOERR_READ";
      }
    }
  }

  else if (a1 <= 1545)
  {
    if (a1 == 1034)
    {
      return @"SQLITE_IOERR_FSYNC";
    }

    if (a1 == 1290)
    {
      return @"SQLITE_IOERR_DIR_FSYNC";
    }
  }

  else
  {
    switch(a1)
    {
      case 1546:
        return @"SQLITE_IOERR_TRUNCATE";
      case 1802:
        return @"SQLITE_IOERR_FSTAT";
      case 2058:
        return @"SQLITE_IOERR_UNLOCK";
    }
  }

  return @"Unknown";
}

void ML3LogSQLiteProfilingMessage(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __ML3LogSQLiteProfilingMessage_block_invoke;
  v3[3] = &unk_278765FB8;
  v4 = v1;
  v2 = v1;
  _MLDispatchToSerialQueue(1, v3);
}

void __ML3LogSQLiteProfilingMessage_block_invoke(uint64_t a1)
{
  if (!__MLProfileLogFileHandle)
  {
    v2 = [ML3MusicLibrary pathForResourceFileOrFolder:24];
    v3 = [v2 stringByAppendingPathComponent:@"medialibrary_sqlite.log"];
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v4 fileExistsAtPath:v3 isDirectory:0] & 1) == 0)
    {
      v5 = [v3 stringByDeletingLastPathComponent];
      if (([v4 fileExistsAtPath:v5 isDirectory:0] & 1) == 0)
      {
        [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];
      }

      [v4 createFileAtPath:v3 contents:0 attributes:0];
    }

    v6 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v3];

    v7 = __MLProfileLogFileHandle;
    __MLProfileLogFileHandle = v6;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", *(a1 + 32)];
  [__MLProfileLogFileHandle ml_lock];
  [__MLProfileLogFileHandle seekToEndOfFile];
  v8 = __MLProfileLogFileHandle;
  v9 = [v10 dataUsingEncoding:4];
  [v8 writeData:v9];

  [__MLProfileLogFileHandle ml_unlock];
}

void sub_22D3CA744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3CB3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v45 = *(v43 - 160);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 105) < 0)
  {
    operator delete(*(v43 - 128));
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  _Unwind_Resume(a1);
}

void sub_22D3CC5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46)
{
  *(v50 - 176) = &unk_28408AC60;
  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (v48 < 0)
  {
    operator delete(v49);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(a1);
}

void sub_22D3CCACC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v4 = *(v2 - 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3CCAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    JUMPOUT(0x22D3CCAF0);
  }

  JUMPOUT(0x22D3CCAECLL);
}

void sub_22D3CCD5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v4 = *(v2 - 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3CCD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    JUMPOUT(0x22D3CCD80);
  }

  JUMPOUT(0x22D3CCD7CLL);
}

void sub_22D3CD06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_22D3CDA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_22D3CDF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_22D3CE10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3CE2C0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3DAAPContainerDeleteImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3DAAPContainerDeleteImportItem>,std::allocator<ML3DAAPContainerDeleteImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI23ML3DAAPDeleteImportItemE27__shared_ptr_default_deleteIS1_32ML3DAAPContainerDeleteImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPContainerDeleteImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3DAAPContainerDeleteImportItem>,std::allocator<ML3DAAPContainerDeleteImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPContainerDeleteImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3DAAPContainerDeleteImportItem>,std::allocator<ML3DAAPContainerDeleteImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3CE674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void sub_22D3CE9DC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3DAAPDeleteImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3DAAPDeleteImportItem>,std::allocator<ML3DAAPDeleteImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI23ML3DAAPDeleteImportItemE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPDeleteImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3DAAPDeleteImportItem>,std::allocator<ML3DAAPDeleteImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPDeleteImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3DAAPDeleteImportItem>,std::allocator<ML3DAAPDeleteImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3CECE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3CEF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3CF4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  std::ifstream::~ifstream(va);

  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x2318CD070](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_22D3CF680(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x2318CD1F0](v1);
  _Unwind_Resume(a1);
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2318CD080](a1 + 2);
  std::istream::~istream();
  MEMORY[0x2318CD1F0](a1 + 53);
  return a1;
}

uint64_t DAAPParserDelegate::DAAPParserDelegate(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  *a1 = &unk_2840848F8;
  *(a1 + 8) = v5;
  v6 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 88) = 1633968755;
  *(a1 + 92) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1065353216;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void DAAPParserDelegate::DAAPParserDidEndContainer(DAAPParserDelegate *this, int a2)
{
  v87 = *MEMORY[0x277D85DE8];
  if (a2 != 1936749167)
  {
    if (a2 != 1835821428)
    {
      if (a2 == 1634759535)
      {
        *(this + 92) = 0;
      }

      v4 = 1;
      goto LABEL_103;
    }

    v5 = *(this + 6);
    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v5 + 24);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (v8)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        while (1)
        {
          if (*(v7 + 16) == 1835821428)
          {
            if (*(this + 92) == 1)
            {
              v6 = v8;
LABEL_14:
              std::unordered_set<std::string>::unordered_set(v84, this + 128);
              v10 = *(this + 22);
              if (v10 >= *(this + 23))
              {
                v11 = std::vector<std::unordered_set<std::string>>::__emplace_back_slow_path<std::unordered_set<std::string> const&>(this + 21, v84);
              }

              else
              {
                std::unordered_set<std::string>::unordered_set(*(this + 22), v84);
                v11 = v10 + 40;
                *(this + 22) = v10 + 40;
              }

              *(this + 22) = v11;
              if (*(this + 19))
              {
                std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(this + 18));
                *(this + 18) = 0;
                v22 = *(this + 17);
                if (v22)
                {
                  for (i = 0; i != v22; ++i)
                  {
                    *(*(this + 16) + 8 * i) = 0;
                  }
                }

                *(this + 19) = 0;
              }

              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v86);
              v24 = *v84;
              *v84 = 0;
              if (v24)
              {
                operator delete(v24);
              }

              v4 = 1;
            }

            else
            {
              v4 = 1;
              v6 = v8;
            }

LABEL_100:
            if (v6)
            {
              v14 = v6;
              goto LABEL_102;
            }

            goto LABEL_103;
          }

          v21 = *(v7 + 32);
          if (v21)
          {
            v7 = *(v7 + 24);
            atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v6 = std::__shared_weak_count::lock(v21);
            if (!v6)
            {
              v7 = 0;
            }

            if (!v8)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v7 = 0;
            v6 = 0;
            if (!v8)
            {
              goto LABEL_32;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_32:
          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }

          v8 = v6;
          if (!v7)
          {
            goto LABEL_13;
          }
        }
      }

      v6 = v8;
    }

LABEL_13:
    if (*(this + 92))
    {
      goto LABEL_14;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = *(this + 22);
    if (v16 == 1634757753)
    {
      v25 = *(this + 1);
      v26 = *(this + 7);
      v65 = *(this + 6);
      v66 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      __p = 0;
      v63 = 0;
      v64 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, *(this + 13), *(this + 14), (*(this + 14) - *(this + 13)) >> 3);
      memset(v61, 0, sizeof(v61));
      std::vector<std::unordered_set<std::string>>::__init_with_size[abi:ne200100]<std::unordered_set<std::string>*,std::unordered_set<std::string>*>(v61, *(this + 21), *(this + 22), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 22) - *(this + 21)) >> 3));
      v4 = [v25 _processContainerElement:&v65 withTrackIds:&__p trackPersonIdentifiers:v61];
      *v84 = v61;
      std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100](v84);
      if (__p)
      {
        v63 = __p;
        operator delete(__p);
      }

      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      *(this + 14) = *(this + 13);
      v28 = *(this + 21);
        ;
      }

      *(this + 22) = v28;
      goto LABEL_99;
    }

    if (v16 == 1633968755)
    {
      v79 = 0;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v18 = v17;
      v19 = *(this + 1);
      v20 = *(this + 7);
      v77 = *(this + 6);
      v78 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v19)
      {
        [v19 _trackImportItemWithTrackElement:&v77];
      }

      else
      {
        *v84 = 0;
        v85 = 0;
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      v33 = *(this + 1);
      v34 = *(this + 7);
      v75 = *(this + 6);
      v76 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v73 = *v84;
      v74 = v85;
      if (v85)
      {
        atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v4 = [v33 _processArtistFromTrackElement:&v75 importItem:&v73 albumArtistPersistentID:&v79];
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v76);
      }

      if (v4)
      {
        v35 = *(this + 1);
        v36 = *(this + 7);
        v71 = *(this + 6);
        v72 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v69 = *v84;
        v70 = v85;
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v4 = [v35 _processAlbumFromTrackElement:&v71 importItem:&v69 albumArtistPersistentID:v79];
        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
          if ((v4 & 1) == 0)
          {
            v4 = 0;
            goto LABEL_95;
          }
        }

        else if (!v4)
        {
          goto LABEL_95;
        }

        v37 = *(this + 1);
        v67 = *v84;
        v68 = v85;
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v4 = [v37 _processTrackImportItem:&v67];
        if (v68)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        }
      }

LABEL_95:
      v38 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        *buf = 134217984;
        v83 = v39 - v18;
        _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_DEFAULT, "Import Metrics: Finished Processing Track Data Import in %2f seconds", buf, 0xCu);
      }

      v32 = v85;
      if (!v85)
      {
        goto LABEL_99;
      }

      goto LABEL_98;
    }

    if ([*(this + 1) _getTrackSource] != 2)
    {
      goto LABEL_67;
    }

    v29 = *(this + 22);
    switch(v29)
    {
      case 1634365042:
        v53 = *(this + 1);
        v54 = *(this + 7);
        v55 = *(this + 6);
        v56 = v54;
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v4 = [v53 _processLibraryPinElement:&v55];
        v32 = v56;
        if (!v56)
        {
          goto LABEL_99;
        }

        break;
      case 1634165106:
        v51 = *(this + 1);
        v52 = *(this + 7);
        v57 = *(this + 6);
        v58 = v52;
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v4 = [v51 _processAlbumArtistFromArtistElement:&v57];
        v32 = v58;
        if (!v58)
        {
          goto LABEL_99;
        }

        break;
      case 1634165100:
        v30 = *(this + 1);
        v31 = *(this + 7);
        v59 = *(this + 6);
        v60 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v4 = [v30 _processAlbumFromAlbumElement:&v59];
        v32 = v60;
        if (!v60)
        {
          goto LABEL_99;
        }

        break;
      default:
LABEL_67:
        v4 = 1;
LABEL_99:
        objc_autoreleasePoolPop(v15);
        goto LABEL_100;
    }

LABEL_98:
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    goto LABEL_99;
  }

  v12 = *(this + 1);
  v13 = *(this + 7);
  v80 = *(this + 6);
  v81 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = [v12 _processPersonElement:&v80];
  v14 = v81;
  if (v81)
  {
LABEL_102:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_103:
  v40 = *(this + 6);
  if (v40 && *(v40 + 16) == a2)
  {
    v41 = *(v40 + 32);
    if (v41)
    {
      v42 = *(v40 + 24);
      v43 = 1;
      atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v44 = std::__shared_weak_count::lock(v41);
      std::__shared_weak_count::__release_weak(v41);
      if (v44)
      {
        v43 = 0;
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
      v44 = 0;
      v43 = 1;
    }

    v45 = *(this + 7);
    *(this + 6) = v42;
    *(this + 7) = v44;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      v42 = *(this + 6);
    }

    if (v42)
    {
      *(this + 20) = *(v42 + 16);
    }

    else
    {
      *(this + 20) = 0;
      v46 = *(this + 5);
      *(this + 4) = 0;
      *(this + 5) = 0;
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }
    }

    if ((v43 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }
  }

  if (!v4 || [*(this + 1) isCancelled])
  {
    v47 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *v84 = 67109120;
      *&v84[4] = v4;
      _os_log_impl(&dword_22D2FA000, v47, OS_LOG_TYPE_DEFAULT, "DAAP import success=%d. Cancelling parse operation.", v84, 8u);
    }

    v48 = *(this + 3);
    if (v48)
    {
      v49 = std::__shared_weak_count::lock(v48);
      if (v49)
      {
        v50 = *(this + 2);
        if (v50)
        {
          *(v50 + 24) = 1;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }
    }
  }
}

void sub_22D3CFF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::unordered_set<std::string>>::__emplace_back_slow_path<std::unordered_set<std::string> const&>(void *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<std::string>>>(v5);
  }

  v17 = 0;
  v18 = 40 * v2;
  std::unordered_set<std::string>::unordered_set(40 * v2, a2);
  v19 = 40 * v2 + 40;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1 - v7;
  v9 = 40 * v2 + v8;
  if (*a1 != v7)
  {
    v10 = *a1;
    v11 = v18 + v8;
    do
    {
      v12 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(v11, v10);
      v10 += 5;
      v11 = v12 + 40;
    }

    while (v10 != v7);
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v6);
      v6 += 40;
    }

    while (v6 != v7);
  }

  v13 = *a1;
  *a1 = v9;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::unordered_set<std::string>>::~__split_buffer(&v17);
  return v16;
}

void sub_22D3D0208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::unordered_set<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unordered_set<std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void DAAPParserDelegate::DAAPParserDidParseData(DAAPParserDelegate *this, int a2, unsigned __int8 *__src, size_t __len)
{
  v4 = __len;
  v44 = *MEMORY[0x277D85DE8];
  if (a2 > 1835889762)
  {
    if (a2 <= 1836414072)
    {
      if (a2 == 1835889763)
      {
        if (*(this + 93) != 1 || *(this + 22) != 1634365042)
        {
          goto LABEL_77;
        }

        v11 = [*(this + 1) _processMaxPinCount:bswap32(*__src)];
      }

      else
      {
        if (a2 != 1836344175 || *(this + 93) != 1)
        {
          goto LABEL_77;
        }

        v9 = bswap32(*__src);
        v10 = *(this + 22);
        if (v10 <= 1634165105)
        {
          if (v10 == 1633968755)
          {
            v11 = [*(this + 1) _processTrackItemCount:v9];
          }

          else
          {
            if (v10 != 1634165100)
            {
              goto LABEL_77;
            }

            v11 = [*(this + 1) _processAlbumCount:v9];
          }
        }

        else
        {
          switch(v10)
          {
            case 1634165106:
              v11 = [*(this + 1) _processArtistCount:v9];
              break;
            case 1634365042:
              v11 = [*(this + 1) _processPinCount:v9];
              break;
            case 1634757753:
              v11 = [*(this + 1) _processContainerItemCount:v9];
              break;
            default:
              goto LABEL_77;
          }
        }
      }

      goto LABEL_43;
    }

    if (a2 == 1936746852)
    {
      std::string::basic_string[abi:ne200100](&__p, __src, __len);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(this + 16, &__p);
      if (v43 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_77;
    }

    if (a2 != 1836414073)
    {
      goto LABEL_77;
    }

    v14 = *(this + 20);
    if (v14 > 1634165105)
    {
      if (v14 != 1634757753)
      {
        v15 = 24946;
LABEL_50:
        if (v14 != (v15 | 0x61670000))
        {
          goto LABEL_77;
        }
      }
    }

    else if (v14 != 1633968755)
    {
      v15 = 24940;
      goto LABEL_50;
    }

    v21 = *__src;
    v22 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(this + 20);
      LODWORD(__p) = 67109376;
      HIDWORD(__p) = v21;
      v41 = 1024;
      v42 = v23;
      _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "setting updateType=%d for response code=%d", &__p, 0xEu);
    }

    [*(this + 1) _processUpdateType:*__src];
    goto LABEL_77;
  }

  if (a2 > 1835624803)
  {
    if (a2 != 1835624804 && a2 != 1835625572)
    {
      goto LABEL_77;
    }

    goto LABEL_20;
  }

  if (a2 == 1634025833)
  {
LABEL_20:
    v12 = *(this + 21);
    if (v12 != 1836409964 && *(this + 92) != 1)
    {
      goto LABEL_77;
    }

    if (__len == 8)
    {
      v13 = bswap64(*__src);
    }

    else if (__len == 4)
    {
      v13 = bswap32(*__src);
    }

    else
    {
      v16 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = v4;
        _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Invalid item ID length (%u) during import session", &__p, 8u);
      }

      v13 = 0;
      v12 = *(this + 21);
    }

    if (v12 != 1836409964)
    {
      if (*(this + 92) == 1)
      {
        v19 = *(this + 14);
        v18 = *(this + 15);
        if (v19 >= v18)
        {
          v24 = *(this + 13);
          v25 = v19 - v24;
          v26 = (v19 - v24) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
            std::vector<long long>::__throw_length_error[abi:ne200100]();
          }

          v28 = v18 - v24;
          if (v28 >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v29);
          }

          v32 = (v19 - v24) >> 3;
          v33 = (8 * v26);
          v34 = (8 * v26 - 8 * v32);
          *v33 = v13;
          v20 = v33 + 1;
          memcpy(v34, v24, v25);
          v35 = *(this + 13);
          *(this + 13) = v34;
          *(this + 14) = v20;
          *(this + 15) = 0;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *v19 = v13;
          v20 = v19 + 1;
        }

        *(this + 14) = v20;
      }

      goto LABEL_77;
    }

    v17 = *(this + 22);
    if (v17 == 1634757753)
    {
      if ([*(this + 1) _processDeletedContainerId:v13])
      {
        goto LABEL_77;
      }

LABEL_73:
      v31 = 0;
LABEL_81:
      v36 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = v31;
        _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, "DAAP import success=%d. Cancelling parse operation.", &__p, 8u);
      }

      v37 = *(this + 3);
      if (v37)
      {
        v38 = std::__shared_weak_count::lock(v37);
        if (v38)
        {
          v39 = *(this + 2);
          if (v39)
          {
            *(v39 + 24) = 1;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }
      }

      return;
    }

    if (v17 != 1633968755)
    {
      goto LABEL_77;
    }

    v11 = [*(this + 1) _processDeletedTrackId:v13];
LABEL_43:
    if (v11)
    {
      goto LABEL_77;
    }

    goto LABEL_73;
  }

  if (a2 != 1634353993 || *(this + 21) != 1836409964)
  {
    goto LABEL_77;
  }

  std::string::basic_string[abi:ne200100](&__p, __src, __len);
  v7 = *(this + 22);
  if (v7 == 1634165106)
  {
    v8 = [*(this + 1) _processDeletedArtistId:&__p];
    goto LABEL_68;
  }

  if (v7 == 1634165100)
  {
    v8 = [*(this + 1) _processDeletedAlbumId:&__p];
LABEL_68:
    v30 = v8;
    goto LABEL_70;
  }

  v30 = 1;
LABEL_70:
  if (v43 < 0)
  {
    operator delete(__p);
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_77:
  if (*(this + 6))
  {
    operator new();
  }

  if ([*(this + 1) isCancelled])
  {
    v31 = 1;
    goto LABEL_81;
  }
}

void sub_22D3D09D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void std::shared_ptr<ML3CPP::Element>::__enable_weak_this[abi:ne200100]<ML3CPP::Element,ML3CPP::Element,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_emplace<ML3CPP::Element>::__on_zero_shared(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::destroy(*(a1 + 128));
  v5 = (a1 + 96);
  std::vector<std::shared_ptr<ML3CPP::Element>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2 && *(a1 + 80) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<ML3CPP::Element>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284084C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void DAAPParserDelegate::DAAPParserDidStartContainer(DAAPParserDelegate *this, int a2)
{
  if (a2 != 1835821428 || ((v2 = *(this + 22), v2 <= 1634165105) ? (v3 = v2 == 1633968755, v4 = 1634165100) : (v2 != 1634165106 ? (v3 = v2 == 1634757753) : (v3 = 1), v4 = 1634365042), !v3 ? (v5 = v2 == v4) : (v5 = 1), !v5))
  {
LABEL_31:
    operator new();
  }

  v7 = *(this + 6);
  v6 = *(this + 7);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
LABEL_29:
    if (!v6)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  while (1)
  {
    if (*(v7 + 16) == 1835821428)
    {
      goto LABEL_29;
    }

    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = *(v7 + 24);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = std::__shared_weak_count::lock(v8);
      if (v10)
      {
        v7 = v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v7 = 0;
      v10 = 0;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_23:
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    v6 = v10;
    if (!v7)
    {
      v6 = v10;
      if (!v10)
      {
        goto LABEL_31;
      }

LABEL_30:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      goto LABEL_31;
    }
  }
}

void sub_22D3D109C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t DAAPParserDelegate::DAAPParserShouldParseCodeAsContainer(DAAPParserDelegate *this, int a2)
{
  v2 = 1;
  if (a2 <= 1634362193)
  {
    if (a2 <= 1634165105)
    {
      if (a2 > 1634035307)
      {
        if (a2 != 1634035308 && a2 != 1634036070)
        {
          if (a2 == 1634165100)
          {
            v3 = *(this + 24) == 0;
            goto LABEL_35;
          }

LABEL_38:
          v2 = 0;
          return v2 & 1;
        }

LABEL_32:
        v2 = *(this + 93) ^ 1;
        return v2 & 1;
      }

      if (a2 == 1633968755)
      {
        return v2 & 1;
      }

      v4 = 1634027347;
LABEL_31:
      if (a2 != v4)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    if (a2 > 1634353739)
    {
      if (a2 == 1634353740 || a2 == 1634353769)
      {
        goto LABEL_32;
      }

      v5 = 20588;
      goto LABEL_28;
    }

    if (a2 != 1634165106)
    {
      v5 = 16748;
LABEL_28:
      v4 = v5 | 0x616A0000;
      goto LABEL_31;
    }

    v3 = *(this + 24) == 1;
LABEL_35:
    v2 = v3;
    return v2 & 1;
  }

  if (a2 > 1835819883)
  {
    if (a2 <= 1836409963)
    {
      if (a2 == 1835819884)
      {
        goto LABEL_32;
      }

      v4 = 1835821428;
    }

    else
    {
      if (a2 == 1836409964 || a2 == 1936747625)
      {
        goto LABEL_32;
      }

      v4 = 1936749167;
    }

    goto LABEL_31;
  }

  if (a2 <= 1634366289)
  {
    if (a2 == 1634362194)
    {
      goto LABEL_32;
    }

    if (a2 != 1634365042)
    {
      goto LABEL_38;
    }

    v3 = *(this + 24) == 4;
    goto LABEL_35;
  }

  if (a2 != 1634366290 && a2 != 1634757753)
  {
    v4 = 1634759535;
    goto LABEL_31;
  }

  return v2 & 1;
}

uint64_t DAAPParserDelegate::DAAPParserShouldParseCode(DAAPParserDelegate *this)
{
  v2 = [*(this + 1) isCancelled];
  if (v2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = *(this + 2);
        if (v5)
        {
          *(v5 + 24) = 1;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }

  return v2 ^ 1u;
}

void DAAPParserDelegate::DAAPParserDidFinish(uint64_t a1, int a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a2 == 4)
  {
    v6 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9 = @"Track parser failed (invalid DAAP payload).";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v5 = [v6 errorWithDomain:@"ML3DAAPImportOperationErrorDomain" code:1 userInfo:v4];
  }

  else
  {
    if (a2 != 3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v3 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Track parser was canceled.";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v3 errorWithDomain:@"ML3DAAPImportOperationErrorDomain" code:1 userInfo:v4];
  }

  v7 = v5;

LABEL_7:
  [*(a1 + 8) _finishParsingWithError:v7];
}

void std::__shared_ptr_emplace<DAAPParserDelegate>::__on_zero_shared(uint64_t a1)
{
  v8 = (a1 + 192);
  std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 152);
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 32);
}

void std::__shared_ptr_emplace<DAAPParserDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284084B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void std::__shared_ptr_emplace<ML3CPP::Parser>::__on_zero_shared(void *a1)
{
  v3 = a1[8];
  v2 = a1[9];
  if (v2 == v3)
  {
    v4 = a1 + 12;
    v12 = a1[8];
  }

  else
  {
    v4 = a1 + 12;
    v5 = a1[11];
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((a1[12] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 96) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = a1[8];
      v2 = a1[9];
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = a1[9];
      v3 = (a1[8] + 8);
      a1[8] = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  a1[11] = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = a1[8];
    v2 = a1[9];
  }

  if (v2 != v12)
  {
    a1[9] = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v16 = a1[7];
  if (v16)
  {
    operator delete(v16);
  }

  v17 = a1[5];
  if (v17)
  {

    std::__shared_weak_count::__release_weak(v17);
  }
}

void std::__shared_ptr_emplace<ML3CPP::Parser>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284084AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3D1A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::ifstream::~ifstream(va);

  _Unwind_Resume(a1);
}

void std::allocator<DAAPParserDelegate>::construct[abi:ne200100]<DAAPParserDelegate,ML3DAAPImportOperation * const {__strong}&,std::shared_ptr<ML3CPP::Parser> &,ML3DAAPImportOperationEntityType &,BOOL>(uint64_t a1, void *a2, uint64_t a3, std::__shared_weak_count *a4, unsigned int *a5, char *a6)
{
  v7[0] = a3;
  v7[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    DAAPParserDelegate::DAAPParserDelegate(a1, a2, v7, *a5, *a6);

    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  else
  {
    DAAPParserDelegate::DAAPParserDelegate(a1, a2, v7, *a5, *a6);
  }
}

uint64_t DAAPParserDelegate::DAAPParserDelegate(uint64_t a1, void *a2, void *a3, unsigned int a4, char a5)
{
  v9 = a2;
  *a1 = &unk_2840848F8;
  *(a1 + 8) = v9;
  v10 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 92) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 93) = a5;
  *(a1 + 96) = a4;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1065353216;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  if (a4 <= 4)
  {
    *(a1 + 88) = dword_22D5C7C48[a4];
  }

  return a1;
}

void sub_22D3D1E9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::ifstream::~ifstream(va);

  _Unwind_Resume(a1);
}

void sub_22D3D2034(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3DAAPArtistImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPArtistImportItem>,std::allocator<ML3DAAPArtistImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_23ML3DAAPArtistImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPArtistImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPArtistImportItem>,std::allocator<ML3DAAPArtistImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPArtistImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPArtistImportItem>,std::allocator<ML3DAAPArtistImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3D226C(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3DAAPAlbumImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPAlbumImportItem>,std::allocator<ML3DAAPAlbumImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_22ML3DAAPAlbumImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPAlbumImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPAlbumImportItem>,std::allocator<ML3DAAPAlbumImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPAlbumImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPAlbumImportItem>,std::allocator<ML3DAAPAlbumImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3D2458(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3DAAPPersonImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPPersonImportItem>,std::allocator<ML3DAAPPersonImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_23ML3DAAPPersonImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPPersonImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPPersonImportItem>,std::allocator<ML3DAAPPersonImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPPersonImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPPersonImportItem>,std::allocator<ML3DAAPPersonImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3D267C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p)
{
  (*(*v14 + 8))(v14);
  *(v15 - 56) = &a10;
  std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100]((v15 - 56));
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
      goto LABEL_3;
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_3:
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3DAAPContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPContainerImportItem>,std::allocator<ML3DAAPContainerImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_26ML3DAAPContainerImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPContainerImportItem>,std::allocator<ML3DAAPContainerImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPContainerImportItem>,std::allocator<ML3DAAPContainerImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3D28E0(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3DAAPImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPImportItem>,std::allocator<ML3DAAPImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPImportItem>,std::allocator<ML3DAAPImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3DAAPImportItem>,std::allocator<ML3DAAPImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t __Block_byref_object_copy__1572(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _ML3DatabaseFunctionRunBlock(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  v6 = sqlite3_user_data(a1);
  if (v6)
  {
    v9 = v6;
    v7 = [v6 block];

    v6 = v9;
    if (v7)
    {
      v8 = [v9 block];
      (v8)[2](v8, a1, a2, a3);

      v6 = v9;
    }
  }
}

void sub_22D3D82C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D3D8828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D3D96AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D3DABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22D3DDE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D3DE3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D3DE5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_22D3DE690(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncContainerImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncContainerImportItem>,std::allocator<ML3ProtoSyncContainerImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_31ML3ProtoSyncContainerImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncContainerImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncContainerImportItem>,std::allocator<ML3ProtoSyncContainerImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ProtoSyncContainerImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncContainerImportItem>,std::allocator<ML3ProtoSyncContainerImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3DE894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_22D3DEA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_22D3DEBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_22D3DECAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncDeleteImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncDeleteImportItem>,std::allocator<ML3ProtoSyncDeleteImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_28ML3ProtoSyncDeleteImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncDeleteImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncDeleteImportItem>,std::allocator<ML3ProtoSyncDeleteImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ProtoSyncDeleteImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncDeleteImportItem>,std::allocator<ML3ProtoSyncDeleteImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3DF16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(v26 - 88);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v26 - 72);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

void sub_22D3DF384(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3DF424(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D3DF4C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncAlbumImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncAlbumImportItem>,std::allocator<ML3ProtoSyncAlbumImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_27ML3ProtoSyncAlbumImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncAlbumImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncAlbumImportItem>,std::allocator<ML3ProtoSyncAlbumImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ProtoSyncAlbumImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncAlbumImportItem>,std::allocator<ML3ProtoSyncAlbumImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncArtistImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncArtistImportItem>,std::allocator<ML3ProtoSyncArtistImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_28ML3ProtoSyncArtistImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncArtistImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncArtistImportItem>,std::allocator<ML3ProtoSyncArtistImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ProtoSyncArtistImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncArtistImportItem>,std::allocator<ML3ProtoSyncArtistImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncTrackImportItem>,std::allocator<ML3ProtoSyncTrackImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_27ML3ProtoSyncTrackImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncTrackImportItem>,std::allocator<ML3ProtoSyncTrackImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ProtoSyncTrackImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncTrackImportItem>,std::allocator<ML3ProtoSyncTrackImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D3DFA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(v26 - 88);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v26 - 72);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

void sub_22D3DFE08(_Unwind_Exception *a1)
{
  MEMORY[0x2318CD250](v5, 0x10B3C40D8B67505);

  _Unwind_Resume(a1);
}

id ML3DatabaseImportDataSource::generateVTableInsertionFromClause(ML3DatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(NSString *)v4 isEqualToString:@"item_store"])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN item_store ON +%@.ROWID = item_store.item_pid", v5, v5];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN item_store ON +%@.ROWID = item_store.item_pid LEFT OUTER JOIN %@ ON +%@.ROWID = %@.item_pid", v5, v5, v4, v5, v4];
  }
  v6 = ;

  return v6;
}

uint64_t ML3DatabaseImportDataSource::hasValueForKey(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(**a2 + 56))(*a2, a3))
  {
    return 1;
  }

  result = (*(**a2 + 200))(*a2, a3);
  if (result)
  {
    v6 = *(**a2 + 56);

    return v6();
  }

  return result;
}

id ML3DatabaseImportDataSource::copyVirtualTableInsertionSQL(id *this, ML3VirtualTable *a2, int a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = this[5];
  if (!v6)
  {
    location = this + 5;
    v39 = v5;
    v46 = this;
    v41 = ML3DatabaseImportDataSource::getTableSchema(this);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v8 = [v41 columns];
    v9 = [v8 countByEnumeratingWithState:&v48 objects:v52 count:16];
    v42 = a3;
    v10 = 0;
    if (v9)
    {
      v11 = *v49;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v48 + 1) + 8 * i);
          if ([v13 columnConstraints])
          {
            [v7 addObject:@"ROWID"];
          }

          else
          {
            v14 = [v13 name];
            [v7 addObject:v14];

            ++v10;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v9);
    }

    v38 = [v7 componentsJoinedByString:{@", "}];
    v15 = MEMORY[0x277CCACA8];
    v16 = [v41 name];
    v36 = [v15 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@)", v16, v38];

    v17 = (*(*this + 7))(this);
    v35 = [v41 name];
    v18 = [(ML3VirtualTable *)v39 name];
    v40 = v36;
    v43 = v35;
    v44 = v18;
    v47 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:7 * v10 + 5];
    [v47 appendString:v44];
    [v47 appendString:@".ROWID"];
    if (!v10)
    {
      goto LABEL_53;
    }

    v19 = 0;
    while (1)
    {
      v20 = ML3TrackRulesGetPropertyName(v17, v19);
      v21 = *(ML3TrackRulesGetRule(v17, v19) + 48);
      v22 = @"CASE WHEN item_store.home_sharing_id != 0 THEN 300 ELSE(CASE WHEN IFNULL(item_store.match_redownload_params, '') != '' THEN 200 ELSE(CASE WHEN IFNULL(item_store.purchase_history_redownload_params, '') != '' AND item_store.purchase_history_id != 0 THEN 100 ELSE(CASE WHEN item_store.subscription_store_item_id != 0 AND item_store.is_subscription AND item_store.cloud_asset_available THEN 50 ELSE(CASE WHEN item_store.sync_redownload_params == 'redownload' AND item_store.sync_id != 0 THEN 20 ELSE(CASE WHEN item_store.sync_redownload_params == 'local' AND item_store.sync_id != 0 THEN 10 ELSE 0 END) END) END) END) END) END";
      if (v21 != 16777241)
      {
        v22 = 0;
      }

      if (v21 == 16777245)
      {
        v22 = @"CASE WHEN item_store.home_sharing_id OR (item_store.store_saga_id AND item_store.cloud_in_my_library) OR item_store.purchase_history_id OR (item_store.sync_id AND item_store.sync_in_my_library) OR item_store.is_ota_purchased THEN 1 ELSE 0 END";
      }

      v23 = v22;
      v24 = v23;
      if (v23)
      {
        [v47 appendFormat:@", %@", v23];
        goto LABEL_20;
      }

      if (*(ML3TrackRulesGetRule(v17, v19) + 4 * v42) == -1)
      {
        [v47 appendFormat:@", %@", v20];
        goto LABEL_20;
      }

      if (v42 < 1)
      {
        if (v21 == 33554434)
        {
          goto LABEL_44;
        }

        v25 = 0;
LABEL_46:
        if (*(ML3TrackRulesGetRule(v17, v19) + 28) == 1)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"CASE WHEN col%d ISNULL THEN %@ ELSE MAX(IFNULL(%@, 0), col%d) END", v19, v20, v20, v19];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"CASE WHEN col%d ISNULL THEN %@ ELSE col%d END", v19, v20, v19];
        }
        v31 = ;
        v32 = v31;
        if (v25)
        {
          [v47 appendFormat:@" THEN (%@) ELSE %@ END", v31, v20];
        }

        else
        {
          [v47 appendFormat:@", %@", v31];
        }

        goto LABEL_20;
      }

      v45 = 0;
      v25 = 0;
      v26 = v42 - 1;
      v27 = v42 - 1;
      do
      {
        if (*(ML3TrackRulesGetRule(v17, v19) + 4 * v27) == 2)
        {
          if (v25)
          {
            v28 = @" AND LENGTH(IFNULL(item_extra.location, '')) = 0";
          }

          else
          {
            v28 = @", CASE WHEN LENGTH(IFNULL(item_extra.location, '')) = 0";
          }

          [v47 appendString:v28];
        }

        else
        {
          if (*(ML3TrackRulesGetRule(v17, v19) + 4 * v27) != 1)
          {
            goto LABEL_36;
          }

          (*(*v46 + 16))();
          if (v25)
            v29 = {;
            [v47 appendFormat:@" AND IFNULL(%@, 0) = 0", v29];
          }

          else
            v29 = {;
            objc_msgSend(v47, "appendFormat:", @", CASE WHEN IFNULL((SELECT(1) FROM %@ WHERE ROWID = %@.ROWID), 0) = 0 OR (IFNULL(%@,0) = 0"), v43, v44, v29;
            v45 = 1;
          }
        }

        v25 = 1;
LABEL_36:
        v30 = v27-- + 1;
        --v26;
      }

      while (v30 > 1);
      if (v45)
      {
        [v47 appendString:@""]);
      }

      if (v21 != 33554434)
      {
        goto LABEL_46;
      }

      if (v25)
      {
        [v47 appendFormat:@" THEN (CASE WHEN col%d='%s' THEN %@ ELSE col%d END) ELSE %@ END", v19, "_ML_VALUE_NOT_PROVIDED_", v20, v19, v20];
        goto LABEL_20;
      }

LABEL_44:
      [v47 appendFormat:@", CASE WHEN col%d='%s' THEN %@ ELSE col%d END", v19, "_ML_VALUE_NOT_PROVIDED_", v20, v19];
LABEL_20:

      if (++v19 == v10)
      {
LABEL_53:
        v33 = (*(*v46 + 17))(v46, v43, v44);
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ SELECT %@ FROM %@", v40, v47, v33];

        objc_storeStrong(location, v6);
        v5 = v39;
        break;
      }
    }
  }

  return v6;
}

id ML3DatabaseImportDataSource::getTableSchema(ML3DatabaseImportDataSource *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = objc_alloc_init((*(*this + 64))(this));
    v4 = *(this + 4);
    *(this + 4) = v3;

    v2 = *(this + 4);
  }

  return v2;
}

void ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284084CA8;
  v3 = this + 6;
  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&v3);

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void ML3DatabaseImportDataSource::getRow(void *a1, uint64_t a2, unsigned int a3)
{
  v25 = *(a1[6] + 16 * a3);
  if (*(&v25 + 1))
  {
    atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
    context = objc_autoreleasePoolPush();
    v35 = *(&v25 + 1);
    atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v35 = 0;
  }

  v34 = v25;
  (*(*a1 + 72))(a1, &v34);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v5 = (*(*a1 + 56))(a1);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v6 != v7)
  {
    v8 = v5;
    v9 = 0;
    v10 = v6 + 32;
    do
    {
      if (ML3TrackRulesGetCount(v8) <= v9)
      {
        break;
      }

      v11 = *(ML3TrackRulesGetRule(v8, v9) + 48);
      if (*(v25 + 16) == 1 && (*(v25 + 17) & 1) == 0)
      {
        v33 = v25;
        if (*(&v25 + 1))
        {
          atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = (*(*a1 + 120))(a1, &v33, v11);
        if (*(&v33 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
        }

        if ((v12 & 1) == 0)
        {
          if (v11 == 33554434)
          {
            *(v10 - 32) = 4;
            operator new();
          }

          *(v10 - 32) = 0;
          if (*(v10 + 8) == 1)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10 - 24);
            *(v10 + 8) = 0;
          }

          goto LABEL_70;
        }
      }

      v13 = *(ML3TrackRulesGetRule(v8, v9) + 40);
      *(v10 - 32) = v13;
      if (v13 > 3)
      {
        if (v13 == 4)
        {
          v28 = v25;
          if (*(&v25 + 1))
          {
            atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          (*(*a1 + 104))(&v29, a1, &v28, v11);
          if (*(&v28 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
          }

          if (BYTE8(v29) == 1)
          {
            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v27, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
            }

            else
            {
              v27 = v30;
            }

            std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>::operator=[abi:ne200100]<std::string,void>(v10 - 24, &v27);
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *(v10 - 32) = 0;
            if (*(v10 + 8) == 1)
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10 - 24);
              *(v10 + 8) = 0;
            }
          }

          *&v29 = &unk_28408AC60;
          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          goto LABEL_70;
        }

        if (v13 == 5)
        {
          v26 = v25;
          if (*(&v25 + 1))
          {
            atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          (*(*a1 + 96))(&v29, a1, &v26, v11);
          if (*(v10 + 8) == 1)
          {
            if (*v10 == 4)
            {
              v16 = v29;
              v29 = 0uLL;
              v17 = *(v10 - 16);
              *(v10 - 24) = v16;
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }
            }

            else
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10 - 24);
              *(v10 - 24) = v29;
              v29 = 0uLL;
              *v10 = 4;
            }
          }

          else
          {
            *(v10 - 24) = v29;
            v29 = 0uLL;
            *v10 = 4;
            *(v10 + 8) = 1;
          }

          if (*(&v29 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
          }

          v22 = *(&v26 + 1);
          if (!*(&v26 + 1))
          {
            goto LABEL_70;
          }

LABEL_64:
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          goto LABEL_70;
        }
      }

      else
      {
        if (v13 == 2)
        {
          v32 = v25;
          if (*(&v25 + 1))
          {
            atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v20 = (*(*a1 + 80))(a1, &v32, v11);
          v21 = v20;
          if (*(v10 + 8) == 1)
          {
            if (*v10)
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10 - 24);
              *v10 = 0;
            }

            *(v10 - 24) = v21;
          }

          else
          {
            *(v10 - 24) = v20;
            *v10 = 0;
            *(v10 + 8) = 1;
          }

          v22 = *(&v32 + 1);
          if (!*(&v32 + 1))
          {
            goto LABEL_70;
          }

          goto LABEL_64;
        }

        if (v13 == 3)
        {
          v31 = v25;
          if (*(&v25 + 1))
          {
            atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v14 = (*(*a1 + 88))(a1, &v31, v11);
          v15 = v14;
          if (*(v10 + 8) == 1)
          {
            if (*v10 != 1)
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10 - 24);
              *v10 = 1;
            }

            *(v10 - 24) = v15;
          }

          else
          {
            *(v10 - 24) = v14;
            *v10 = 1;
            *(v10 + 8) = 1;
          }

          v22 = *(&v31 + 1);
          if (!*(&v31 + 1))
          {
            goto LABEL_70;
          }

          goto LABEL_64;
        }
      }

      v18 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"virtual void ML3DatabaseImportDataSource::getRow(ML3VirtualTableRow *, uint32_t)"}];
      [v18 handleFailureInFunction:v19 file:@"ML3DatabaseImportDataSource.mm" lineNumber:164 description:{@"unhandled data type %u", *(v10 - 32)}];

LABEL_70:
      ++v9;
      v23 = v10 + 16;
      v10 += 48;
    }

    while (v23 != v7);
  }

  objc_autoreleasePoolPop(context);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }
}

void sub_22D3E143C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>::operator=[abi:ne200100]<std::string,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 24) == 3)
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
    }

    else
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
      v6 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v6;
      *a2 = 0;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a1 + 24) = 3;
    }
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 3;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_284084D58[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJxfbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_10shared_ptrI10ML3CPPDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJxfbSD_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJxfbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_10shared_ptrI10ML3CPPDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJxfbSD_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

id ML3ContainerBaseDatabaseImportDataSource::generateVTableInsertionFromClause(ML3ContainerBaseDatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(NSString *)v4 isEqualToString:@"container"])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN container ON %@.ROWID = container.container_pid", v5, v5];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN container ON %@.ROWID = container.container_pid LEFT OUTER JOIN %@ ON %@.ROWID = %@.container_pid", v5, v5, v4, v5, v4];
  }
  v6 = ;

  return v6;
}

id ML3CollectionBaseDatabaseImportDataSource::generateVTableInsertionFromClause(ML3CollectionBaseDatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = [(NSString *)v4 isEqualToString:@"genre"];
  v8 = @"_pid";
  if (v7)
  {
    v8 = @"_id";
  }

  v9 = [v6 stringWithFormat:@"%@ LEFT OUTER JOIN %@ ON %@.ROWID = %@.%@%@", v5, v4, v5, v4, v4, v8];

  return v9;
}

void ML3DatabaseImportDataSource::setImportItems(uint64_t *a1, uint64_t **a2)
{
  v2 = (a1 + 6);
  if (a1 + 6 != a2)
  {
    v5 = *a2;
    v4 = a2[1];
    v6 = v4 - *a2;
    v7 = a1[6];
    if (a1[8] - v7 < v6)
    {
      v8 = v6 >> 4;
      std::vector<std::shared_ptr<ML3ImportItem>>::__vdeallocate(a1 + 6);
      if (!(v8 >> 60))
      {
        v9 = a1[8] - a1[6];
        v10 = v9 >> 3;
        if (v9 >> 3 <= v8)
        {
          v10 = v8;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (!(v11 >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>>(v11);
        }
      }

      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v12 = a1[7] - v7;
    if (v12 >= v6)
    {
      v13 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *>(*a2, a2[1], v7);
      for (i = a1[7]; i != v13; i -= 2)
      {
        v15 = *(i - 1);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      a1[7] = v13;
    }

    else
    {
      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *>(v5, (v5 + v12), v7);
      a1[7] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>,std::shared_ptr<ML3ImportItem>*,std::shared_ptr<ML3ImportItem>*,std::shared_ptr<ML3ImportItem>*>(v2, (v5 + v12), v4, a1[7]);
    }
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>,std::shared_ptr<ML3ImportItem>*,std::shared_ptr<ML3ImportItem>*,std::shared_ptr<ML3ImportItem>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = a2[1];
    *result = *a2;
    result[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 2;
  }

  return result;
}

void std::vector<std::shared_ptr<ML3ImportItem>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t (*ML3MigrationFunctionForLibraryVersion(int a1))(void *a1, void *a2)
{
  result = 0;
  if (a1 <= 1319999)
  {
    if (a1 > 1150059)
    {
      if (a1 <= 1240029)
      {
        if (a1 <= 1160139)
        {
          if (a1 > 1160049)
          {
            if (a1 <= 1160089)
            {
              if (a1 > 1160069)
              {
                if (a1 == 1160070)
                {
                  return ML3MigrationFunction1160070to1160080;
                }

                else
                {
                  if (a1 != 1160080)
                  {
                    return result;
                  }

                  return ML3MigrationFunction1160080to1160090;
                }
              }

              else if (a1 == 1160050)
              {
                return ML3MigrationFunction1160050to1160060;
              }

              else
              {
                if (a1 != 1160060)
                {
                  return result;
                }

                return ML3MigrationFunction1160060to1160070;
              }
            }

            else if (a1 <= 1160109)
            {
              if (a1 == 1160090)
              {
                return ML3MigrationFunction1160090to1160100;
              }

              else
              {
                if (a1 != 1160100)
                {
                  return result;
                }

                return ML3MigrationFunction1160100to1160110;
              }
            }

            else
            {
              switch(a1)
              {
                case 1160110:
                  return ML3MigrationFunction1160110to1160120;
                case 1160120:
                  return ML3MigrationFunction1160120to1160130;
                case 1160130:
                  return ML3MigrationFunction1160130to1160140;
                default:
                  return result;
              }
            }
          }

          else if (a1 <= 1159999)
          {
            if (a1 > 1150079)
            {
              if (a1 == 1150080)
              {
                return ML3MigrationFunction1150080to1150090;
              }

              else
              {
                if (a1 != 1150090)
                {
                  return result;
                }

                return ML3MigrationFunction1150090to1160000;
              }
            }

            else if (a1 == 1150060)
            {
              return ML3MigrationFunction1150060to1150070;
            }

            else
            {
              if (a1 != 1150070)
              {
                return result;
              }

              return ML3MigrationFunction1150070to1150080;
            }
          }

          else if (a1 <= 1160019)
          {
            if (a1 == 1160000)
            {
              return ML3MigrationFunction1160000to1160010;
            }

            else
            {
              if (a1 != 1160010)
              {
                return result;
              }

              return ML3MigrationFunction1160010to1160020;
            }
          }

          else
          {
            switch(a1)
            {
              case 1160020:
                return ML3MigrationFunction1160020to1160030;
              case 1160030:
                return ML3MigrationFunction1160030to1160040;
              case 1160040:
                return ML3MigrationFunction1160040to1160050;
              default:
                return result;
            }
          }
        }

        else if (a1 <= 1162069)
        {
          if (a1 <= 1162019)
          {
            if (a1 > 1160159)
            {
              if (a1 == 1160160)
              {
                return ML3MigrationFunction1160160to1162010;
              }

              else
              {
                if (a1 != 1162010)
                {
                  return result;
                }

                return ML3MigrationFunction1162010to1162020;
              }
            }

            else if (a1 == 1160140)
            {
              return ML3MigrationFunction1160140to1160150;
            }

            else
            {
              if (a1 != 1160150)
              {
                return result;
              }

              return ML3MigrationFunction1160150to1160160;
            }
          }

          else if (a1 <= 1162039)
          {
            if (a1 == 1162020)
            {
              return ML3MigrationFunction1162020to1162030;
            }

            else
            {
              if (a1 != 1162030)
              {
                return result;
              }

              return ML3MigrationFunction1162030to1162040;
            }
          }

          else
          {
            switch(a1)
            {
              case 1162040:
                return ML3MigrationFunction1162040to1162050;
              case 1162050:
                return ML3MigrationFunction1162050to1162060;
              case 1162060:
                return ML3MigrationFunction1162060to1162070;
              default:
                return result;
            }
          }
        }

        else if (a1 > 1163069)
        {
          if (a1 <= 1239999)
          {
            if (a1 == 1163070)
            {
              return ML3MigrationFunction1163070to1164010;
            }

            else
            {
              if (a1 != 1164010)
              {
                return result;
              }

              return ML3MigrationFunction1164010to1240000;
            }
          }

          else
          {
            switch(a1)
            {
              case 1240000:
                return ML3MigrationFunction1240000to1240010;
              case 1240010:
                return ML3MigrationFunction1240010to1240020;
              case 1240020:
                return ML3MigrationFunction1240020to1240030;
              default:
                return result;
            }
          }
        }

        else if (a1 <= 1162089)
        {
          if (a1 == 1162070)
          {
            return ML3MigrationFunction1162070to1162080;
          }

          else
          {
            if (a1 != 1162080)
            {
              return result;
            }

            return ML3MigrationFunction1162080to1162090;
          }
        }

        else
        {
          switch(a1)
          {
            case 1162090:
              return ML3MigrationFunction1162090to1162100;
            case 1162100:
              return ML3MigrationFunction1162100to1162110;
            case 1162110:
              return ML3MigrationFunction1162110to1240000;
            default:
              return result;
          }
        }
      }

      else if (a1 > 1280159)
      {
        if (a1 <= 1280249)
        {
          if (a1 <= 1280199)
          {
            if (a1 > 1280179)
            {
              if (a1 == 1280180)
              {
                return ML3MigrationFunction1280180to1280190;
              }

              else
              {
                if (a1 != 1280190)
                {
                  return result;
                }

                return ML3MigrationFunction1280190to1280200;
              }
            }

            else if (a1 == 1280160)
            {
              return ML3MigrationFunction1280160to1280170;
            }

            else
            {
              if (a1 != 1280170)
              {
                return result;
              }

              return ML3MigrationFunction1280170to1280180;
            }
          }

          else if (a1 <= 1280219)
          {
            if (a1 == 1280200)
            {
              return ML3MigrationFunction1280200to1280210;
            }

            else
            {
              if (a1 != 1280210)
              {
                return result;
              }

              return ML3MigrationFunction1280210to1280220;
            }
          }

          else
          {
            switch(a1)
            {
              case 1280220:
                return ML3MigrationFunction1280220to1280230;
              case 1280230:
                return ML3MigrationFunction1280230to1280240;
              case 1280240:
                return ML3MigrationFunction1280240to1280250;
              default:
                return result;
            }
          }
        }

        else if (a1 > 1290009)
        {
          if (a1 <= 1310029)
          {
            if (a1 == 1290010)
            {
              return ML3MigrationFunction1290010to1310020;
            }

            else
            {
              if (a1 != 1310020)
              {
                return result;
              }

              return ML3MigrationFunction1310020to1310030;
            }
          }

          else
          {
            switch(a1)
            {
              case 1310030:
                return ML3MigrationFunction1310030to1310040;
              case 1310040:
                return ML3MigrationFunction1310040to1310050;
              case 1310050:
                return ML3MigrationFunction1310050to1320000;
              default:
                return result;
            }
          }
        }

        else if (a1 <= 1280269)
        {
          if (a1 == 1280250)
          {
            return ML3MigrationFunction1280250to1280260;
          }

          else
          {
            if (a1 != 1280260)
            {
              return result;
            }

            return ML3MigrationFunction1280260to1280270;
          }
        }

        else
        {
          switch(a1)
          {
            case 1280270:
              return ML3MigrationFunction1280270to1280280;
            case 1280280:
              return ML3MigrationFunction1280280to1290000;
            case 1290000:
              return ML3MigrationFunction1290000to1290010;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1280059)
      {
        if (a1 <= 1280009)
        {
          if (a1 > 1259999)
          {
            if (a1 == 1260000)
            {
              return ML3MigrationFunction1260000to1280000;
            }

            else
            {
              if (a1 != 1280000)
              {
                return result;
              }

              return ML3MigrationFunction1280000to1280010;
            }
          }

          else if (a1 == 1240030)
          {
            return ML3MigrationFunction1240030to1240040;
          }

          else
          {
            if (a1 != 1240040)
            {
              return result;
            }

            return ML3MigrationFunction1240040to1260000;
          }
        }

        else if (a1 <= 1280029)
        {
          if (a1 == 1280010)
          {
            return ML3MigrationFunction1280010to1280020;
          }

          else
          {
            if (a1 != 1280020)
            {
              return result;
            }

            return ML3MigrationFunction1280020to1280030;
          }
        }

        else
        {
          switch(a1)
          {
            case 1280030:
              return ML3MigrationFunction1280030to1280040;
            case 1280040:
              return ML3MigrationFunction1280040to1280050;
            case 1280050:
              return ML3MigrationFunction1280050to1280060;
            default:
              return result;
          }
        }
      }

      else if (a1 > 1280109)
      {
        if (a1 <= 1280129)
        {
          if (a1 == 1280110)
          {
            return ML3MigrationFunction1280110to1280120;
          }

          else
          {
            if (a1 != 1280120)
            {
              return result;
            }

            return ML3MigrationFunction1280120to1280130;
          }
        }

        else
        {
          switch(a1)
          {
            case 1280130:
              return ML3MigrationFunction1280130to1280140;
            case 1280140:
              return ML3MigrationFunction1280140to1280150;
            case 1280150:
              return ML3MigrationFunction1280150to1280160;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1280079)
      {
        if (a1 == 1280060)
        {
          return ML3MigrationFunction1280060to1280070;
        }

        else
        {
          if (a1 != 1280070)
          {
            return result;
          }

          return ML3MigrationFunction1280070to1280080;
        }
      }

      else
      {
        switch(a1)
        {
          case 1280080:
            return ML3MigrationFunction1280080to1280090;
          case 1280090:
            return ML3MigrationFunction1280090to1280100;
          case 1280100:
            return ML3MigrationFunction1280100to1280110;
          default:
            return result;
        }
      }
    }

    else if (a1 <= 1115481)
    {
      if (a1 <= 1050918)
      {
        if (a1 > 1007540)
        {
          if (a1 <= 1021755)
          {
            if (a1 > 1015138)
            {
              if (a1 == 1015139)
              {
                return ML3MigrationFunction1015139to1016427;
              }

              else
              {
                if (a1 != 1016427)
                {
                  return result;
                }

                return ML3MigrationFunction1016427to1021756;
              }
            }

            else if (a1 == 1007541)
            {
              return ML3MigrationFunction1007541to1011335;
            }

            else
            {
              if (a1 != 1011335)
              {
                return result;
              }

              return ML3MigrationFunction1011335to1015139;
            }
          }

          else if (a1 <= 1028770)
          {
            if (a1 == 1021756)
            {
              return ML3MigrationFunction1021756to1026201;
            }

            else
            {
              if (a1 != 1026201)
              {
                return result;
              }

              return ML3MigrationFunction1026201to1028771;
            }
          }

          else
          {
            switch(a1)
            {
              case 1028771:
                return ML3MigrationFunction1028771to1033275;
              case 1033275:
                return ML3MigrationFunction1033275to1046932;
              case 1046932:
                return ML3MigrationFunction1046932to1050919;
              default:
                return result;
            }
          }
        }

        else if (a1 <= 1002979)
        {
          if (a1 > 992141)
          {
            if (a1 == 992142)
            {
              return ML3MigrationFunction992142to1002980;
            }

            else
            {
              if (a1 != 1002402)
              {
                return result;
              }

              return ML3MigrationFunction1002402to1002980;
            }
          }

          else if (a1 == 992140)
          {
            return ML3MigrationFunction992140to992141;
          }

          else
          {
            if (a1 != 992141)
            {
              return result;
            }

            return ML3MigrationFunction992141to992142;
          }
        }

        else if (a1 <= 1003963)
        {
          if (a1 == 1002980)
          {
            return ML3MigrationFunction1002980to1003342;
          }

          else
          {
            if (a1 != 1003342)
            {
              return result;
            }

            return ML3MigrationFunction1003342to1003964;
          }
        }

        else
        {
          switch(a1)
          {
            case 1003964:
              return ML3MigrationFunction1003964to1005492;
            case 1005492:
              return ML3MigrationFunction1005492to1006189;
            case 1006189:
              return ML3MigrationFunction1006189to1007541;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1079528)
      {
        if (a1 <= 1061039)
        {
          if (a1 > 1055455)
          {
            if (a1 == 1055456)
            {
              return ML3MigrationFunction1055456to1058985;
            }

            else
            {
              if (a1 != 1058985)
              {
                return result;
              }

              return ML3MigrationFunction1058985to1061040;
            }
          }

          else if (a1 == 1050919)
          {
            return ML3MigrationFunction1050919to1053827;
          }

          else
          {
            if (a1 != 1053827)
            {
              return result;
            }

            return ML3MigrationFunction1053827to1055456;
          }
        }

        else if (a1 <= 1061349)
        {
          if (a1 == 1061040)
          {
            return ML3MigrationFunction1061040to1061159;
          }

          else
          {
            if (a1 != 1061159)
            {
              return result;
            }

            return ML3MigrationFunction1061159to1061350;
          }
        }

        else
        {
          switch(a1)
          {
            case 1061350:
              return ML3MigrationFunction1061350to1062137;
            case 1062137:
              return ML3MigrationFunction1062137to1063000;
            case 1063000:
              return ML3MigrationFunction1063000to1079529;
            default:
              return result;
          }
        }
      }

      else if (a1 > 1111152)
      {
        if (a1 <= 1114501)
        {
          if (a1 == 1111153)
          {
            return ML3MigrationFunction1111153to1113775;
          }

          else
          {
            if (a1 != 1113775)
            {
              return result;
            }

            return ML3MigrationFunction1113775to1114502;
          }
        }

        else
        {
          switch(a1)
          {
            case 1114502:
              return ML3MigrationFunction1114502to1114940;
            case 1114940:
              return ML3MigrationFunction1114940to1115195;
            case 1115195:
              return ML3MigrationFunction1115195to1115482;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1102818)
      {
        if (a1 == 1079529)
        {
          return ML3MigrationFunction1079529to1096158;
        }

        else
        {
          if (a1 != 1096158)
          {
            return result;
          }

          return ML3MigrationFunction1096158to1102819;
        }
      }

      else
      {
        switch(a1)
        {
          case 1102819:
            return ML3MigrationFunction1102819to1108291;
          case 1108291:
            return ML3MigrationFunction1108291to1111152;
          case 1111152:
            return ML3MigrationFunction1111152to1111153;
          default:
            return result;
        }
      }
    }

    else if (a1 > 1140169)
    {
      if (a1 <= 1140259)
      {
        if (a1 <= 1140209)
        {
          if (a1 > 1140189)
          {
            if (a1 == 1140190)
            {
              return ML3MigrationFunction1140190to1140200;
            }

            else
            {
              if (a1 != 1140200)
              {
                return result;
              }

              return ML3MigrationFunction1140200to1140210;
            }
          }

          else if (a1 == 1140170)
          {
            return ML3MigrationFunction1140170to1140180;
          }

          else
          {
            if (a1 != 1140180)
            {
              return result;
            }

            return ML3MigrationFunction1140180to1140190;
          }
        }

        else if (a1 <= 1140229)
        {
          if (a1 == 1140210)
          {
            return ML3MigrationFunction1140210to1140230;
          }

          else
          {
            if (a1 != 1140220)
            {
              return result;
            }

            return ML3MigrationFunction1140220to1140230;
          }
        }

        else
        {
          switch(a1)
          {
            case 1140230:
              return ML3MigrationFunction1140230to1140240;
            case 1140240:
              return ML3MigrationFunction1140240to1140250;
            case 1140250:
              return ML3MigrationFunction1140250to1140260;
            default:
              return result;
          }
        }
      }

      else if (a1 > 1150009)
      {
        if (a1 <= 1150029)
        {
          if (a1 == 1150010)
          {
            return ML3MigrationFunction1150010to1150020;
          }

          else
          {
            if (a1 != 1150020)
            {
              return result;
            }

            return ML3MigrationFunction1150020to1150030;
          }
        }

        else
        {
          switch(a1)
          {
            case 1150030:
              return ML3MigrationFunction1150030to1150040;
            case 1150040:
              return ML3MigrationFunction1150040to1150050;
            case 1150050:
              return ML3MigrationFunction1150050to1150060;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1140309)
      {
        if (a1 == 1140260)
        {
          return ML3MigrationFunction1140260to1140300;
        }

        else
        {
          if (a1 != 1140300)
          {
            return result;
          }

          return ML3MigrationFunction1140300to1140310;
        }
      }

      else
      {
        switch(a1)
        {
          case 1140310:
            return ML3MigrationFunction1140310to1140320;
          case 1140320:
            return ML3MigrationFunction1140320to1150000;
          case 1150000:
            return ML3MigrationFunction1150000to1150010;
          default:
            return result;
        }
      }
    }

    else if (a1 <= 1140114)
    {
      if (a1 <= 1124263)
      {
        if (a1 > 1120345)
        {
          if (a1 == 1120346)
          {
            return ML3MigrationFunction1120346to1121591;
          }

          else
          {
            if (a1 != 1121591)
            {
              return result;
            }

            return ML3MigrationFunction1121591to1124264;
          }
        }

        else if (a1 == 1115482)
        {
          return ML3MigrationFunction1115482to1118969;
        }

        else
        {
          if (a1 != 1118969)
          {
            return result;
          }

          return ML3MigrationFunction1118969to1120346;
        }
      }

      else if (a1 <= 1134018)
      {
        if (a1 == 1124264)
        {
          return ML3MigrationFunction1124264to1132637;
        }

        else
        {
          if (a1 != 1132637)
          {
            return result;
          }

          return ML3MigrationFunction1132637to1138219;
        }
      }

      else
      {
        switch(a1)
        {
          case 1134019:
            return ML3MigrationFunction1134019to1138219;
          case 1138219:
            return ML3MigrationFunction1138219to1138254;
          case 1138254:
            return ML3MigrationFunction1138254to1140115;
          default:
            return result;
        }
      }
    }

    else if (a1 > 1140119)
    {
      if (a1 <= 1140139)
      {
        if (a1 == 1140120)
        {
          return ML3MigrationFunction1140120to1140130;
        }

        else
        {
          if (a1 != 1140130)
          {
            return result;
          }

          return ML3MigrationFunction1140130to1140140;
        }
      }

      else
      {
        switch(a1)
        {
          case 1140140:
            return ML3MigrationFunction1140140to1140150;
          case 1140150:
            return ML3MigrationFunction1140150to1140160;
          case 1140160:
            return ML3MigrationFunction1140160to1140170;
          default:
            return result;
        }
      }
    }

    else if (a1 <= 1140116)
    {
      if (a1 == 1140115)
      {
        return ML3MigrationFunction1140115to1140116;
      }

      else
      {
        return ML3MigrationFunction1140116to1140117;
      }
    }

    else if (a1 == 1140117)
    {
      return ML3MigrationFunction1140117to1140118;
    }

    else if (a1 == 1140118)
    {
      return ML3MigrationFunction1140118to1140119;
    }

    else
    {
      return ML3MigrationFunction1140119to1140120;
    }
  }

  if (a1 <= 1850019)
  {
    if (a1 <= 1450019)
    {
      if (a1 <= 1410059)
      {
        if (a1 > 1350059)
        {
          if (a1 <= 1410009)
          {
            if (a1 > 1360009)
            {
              if (a1 == 1360010)
              {
                return ML3MigrationFunction1360010to1410000;
              }

              else
              {
                if (a1 != 1410000)
                {
                  return result;
                }

                return ML3MigrationFunction1410000to1410010;
              }
            }

            else if (a1 == 1350060)
            {
              return ML3MigrationFunction1350060to1360000;
            }

            else
            {
              if (a1 != 1360000)
              {
                return result;
              }

              return ML3MigrationFunction1360000to1360010;
            }
          }

          else if (a1 <= 1410029)
          {
            if (a1 == 1410010)
            {
              return ML3MigrationFunction1410010to1410020;
            }

            else
            {
              if (a1 != 1410020)
              {
                return result;
              }

              return ML3MigrationFunction1410020to1410030;
            }
          }

          else
          {
            switch(a1)
            {
              case 1410030:
                return ML3MigrationFunction1410030to1410040;
              case 1410040:
                return ML3MigrationFunction1410040to1410050;
              case 1410050:
                return ML3MigrationFunction1410050to1410060;
              default:
                return result;
            }
          }
        }

        else if (a1 <= 1350009)
        {
          if (a1 > 1330009)
          {
            if (a1 == 1330010)
            {
              return ML3MigrationFunction1330010to1350010;
            }

            else
            {
              if (a1 != 1350000)
              {
                return result;
              }

              return ML3MigrationFunction1350000to1350010;
            }
          }

          else if (a1 == 1320000)
          {
            return ML3MigrationFunction1320000to1330000;
          }

          else
          {
            if (a1 != 1330000)
            {
              return result;
            }

            return ML3MigrationFunction1330000to1330010;
          }
        }

        else if (a1 <= 1350029)
        {
          if (a1 == 1350010)
          {
            return ML3MigrationFunction1350010to1350020;
          }

          else
          {
            if (a1 != 1350020)
            {
              return result;
            }

            return ML3MigrationFunction1350020to1350030;
          }
        }

        else
        {
          switch(a1)
          {
            case 1350030:
              return ML3MigrationFunction1350030to1350040;
            case 1350040:
              return ML3MigrationFunction1350040to1350050;
            case 1350050:
              return ML3MigrationFunction1350050to1350060;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1410149)
      {
        if (a1 <= 1410099)
        {
          if (a1 > 1410079)
          {
            if (a1 == 1410080)
            {
              return ML3MigrationFunction1410080to1410090;
            }

            else
            {
              if (a1 != 1410090)
              {
                return result;
              }

              return ML3MigrationFunction1410090to1410100;
            }
          }

          else if (a1 == 1410060)
          {
            return ML3MigrationFunction1410060to1410070;
          }

          else
          {
            if (a1 != 1410070)
            {
              return result;
            }

            return ML3MigrationFunction1410070to1410080;
          }
        }

        else if (a1 <= 1410119)
        {
          if (a1 == 1410100)
          {
            return ML3MigrationFunction1410100to1410110;
          }

          else
          {
            if (a1 != 1410110)
            {
              return result;
            }

            return ML3MigrationFunction1410110to1410120;
          }
        }

        else
        {
          switch(a1)
          {
            case 1410120:
              return ML3MigrationFunction1410120to1410130;
            case 1410130:
              return ML3MigrationFunction1410130to1410140;
            case 1410140:
              return ML3MigrationFunction1410140to1410150;
            default:
              return result;
          }
        }
      }

      else if (a1 > 1410199)
      {
        if (a1 <= 1429999)
        {
          if (a1 == 1410200)
          {
            return ML3MigrationFunction1410200to1410210;
          }

          else
          {
            if (a1 != 1410210)
            {
              return result;
            }

            return ML3MigrationFunction1410210to1430000;
          }
        }

        else
        {
          switch(a1)
          {
            case 1430000:
              return ML3MigrationFunction1430000to1450000;
            case 1450000:
              return ML3MigrationFunction1450000to1450010;
            case 1450010:
              return ML3MigrationFunction1450010to1450020;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1410169)
      {
        if (a1 == 1410150)
        {
          return ML3MigrationFunction1410150to1410160;
        }

        else
        {
          if (a1 != 1410160)
          {
            return result;
          }

          return ML3MigrationFunction1410160to1410170;
        }
      }

      else
      {
        switch(a1)
        {
          case 1410170:
            return ML3MigrationFunction1410170to1410180;
          case 1410180:
            return ML3MigrationFunction1410180to1410190;
          case 1410190:
            return ML3MigrationFunction1410190to1410200;
          default:
            return result;
        }
      }
    }

    else if (a1 > 1609999)
    {
      if (a1 <= 1710049)
      {
        if (a1 <= 1709999)
        {
          if (a1 > 1610019)
          {
            if (a1 == 1610020)
            {
              return ML3MigrationFunction1610020to1610030;
            }

            else
            {
              if (a1 != 1610030)
              {
                return result;
              }

              return ML3MigrationFunction1610030to1710000;
            }
          }

          else if (a1 == 1610000)
          {
            return ML3MigrationFunction1610000to1610010;
          }

          else
          {
            if (a1 != 1610010)
            {
              return result;
            }

            return ML3MigrationFunction1610010to1610020;
          }
        }

        else if (a1 <= 1710019)
        {
          if (a1 == 1710000)
          {
            return ML3MigrationFunction1710000to1710010;
          }

          else
          {
            if (a1 != 1710010)
            {
              return result;
            }

            return ML3MigrationFunction1710010to1710020;
          }
        }

        else
        {
          switch(a1)
          {
            case 1710020:
              return ML3MigrationFunction1710020to1710030;
            case 1710030:
              return ML3MigrationFunction1710030to1710040;
            case 1710040:
              return ML3MigrationFunction1710040to1710050;
            default:
              return result;
          }
        }
      }

      else if (a1 > 1769999)
      {
        if (a1 <= 1809999)
        {
          if (a1 == 1770000)
          {
            return ML3MigrationFunction1770000to1800000;
          }

          else
          {
            if (a1 != 1800000)
            {
              return result;
            }

            return ML3MigrationFunction1800000to1810000;
          }
        }

        else
        {
          switch(a1)
          {
            case 1810000:
              return ML3MigrationFunction1810000to1850000;
            case 1850000:
              return ML3MigrationFunction1850000to1850010;
            case 1850010:
              return ML3MigrationFunction1850010to1850020;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1710059)
      {
        if (a1 == 1710050)
        {
          return ML3MigrationFunction1710050to1710051;
        }

        else
        {
          if (a1 != 1710051)
          {
            return result;
          }

          return ML3MigrationFunction1710051to1710060;
        }
      }

      else
      {
        switch(a1)
        {
          case 1710060:
            return ML3MigrationFunction1710060to1710061;
          case 1710061:
            return ML3MigrationFunction1710061to1750000;
          case 1750000:
            return ML3MigrationFunction1750000to1770000;
          default:
            return result;
        }
      }
    }

    else if (a1 <= 1510009)
    {
      if (a1 <= 1450059)
      {
        if (a1 > 1450039)
        {
          if (a1 == 1450040)
          {
            return ML3MigrationFunction1450040to1450050;
          }

          else
          {
            if (a1 != 1450050)
            {
              return result;
            }

            return ML3MigrationFunction1450050to1450060;
          }
        }

        else if (a1 == 1450020)
        {
          return ML3MigrationFunction1450020to1450030;
        }

        else
        {
          if (a1 != 1450030)
          {
            return result;
          }

          return ML3MigrationFunction1450030to1450040;
        }
      }

      else if (a1 <= 1450079)
      {
        if (a1 == 1450060)
        {
          return ML3MigrationFunction1450060to1450070;
        }

        else
        {
          if (a1 != 1450070)
          {
            return result;
          }

          return ML3MigrationFunction1450070to1450080;
        }
      }

      else
      {
        switch(a1)
        {
          case 1450080:
            return ML3MigrationFunction1450080to1450090;
          case 1450090:
            return ML3MigrationFunction1450090to1510000;
          case 1510000:
            return ML3MigrationFunction1510000to1510010;
          default:
            return result;
        }
      }
    }

    else if (a1 > 1510059)
    {
      if (a1 <= 1549999)
      {
        if (a1 == 1510060)
        {
          return ML3MigrationFunction1510060to1510070;
        }

        else
        {
          if (a1 != 1510070)
          {
            return result;
          }

          return ML3MigrationFunction1510070to1550000;
        }
      }

      else
      {
        switch(a1)
        {
          case 1550000:
            return ML3MigrationFunction1550000to1550010;
          case 1550010:
            return ML3MigrationFunction1550010to1560000;
          case 1560000:
            return ML3MigrationFunction1560000to1610000;
          default:
            return result;
        }
      }
    }

    else if (a1 <= 1510029)
    {
      if (a1 == 1510010)
      {
        return ML3MigrationFunction1510010to1510020;
      }

      else
      {
        if (a1 != 1510020)
        {
          return result;
        }

        return ML3MigrationFunction1510020to1510030;
      }
    }

    else
    {
      switch(a1)
      {
        case 1510030:
          return ML3MigrationFunction1510030to1510040;
        case 1510040:
          return ML3MigrationFunction1510040to1510050;
        case 1510050:
          return ML3MigrationFunction1510050to1510060;
        default:
          return result;
      }
    }
  }

  if (a1 <= 2100109)
  {
    if (a1 <= 2050009)
    {
      if (a1 > 1950009)
      {
        if (a1 <= 1999999)
        {
          if (a1 > 1950029)
          {
            if (a1 == 1950030)
            {
              return ML3MigrationFunction1950030to1950040;
            }

            else
            {
              if (a1 != 1950040)
              {
                return result;
              }

              return ML3MigrationFunction1950040to2000000;
            }
          }

          else if (a1 == 1950010)
          {
            return ML3MigrationFunction1950010to1950020;
          }

          else
          {
            if (a1 != 1950020)
            {
              return result;
            }

            return ML3MigrationFunction1950020to1950030;
          }
        }

        else if (a1 <= 2000019)
        {
          if (a1 == 2000000)
          {
            return ML3MigrationFunction2000000to2000010;
          }

          else
          {
            if (a1 != 2000010)
            {
              return result;
            }

            return ML3MigrationFunction2000010to2000020;
          }
        }

        else
        {
          switch(a1)
          {
            case 2000020:
              return ML3MigrationFunction2000020to2030000;
            case 2030000:
              return ML3MigrationFunction2030000to2050000;
            case 2050000:
              return ML3MigrationFunction2050000to2050010;
            default:
              return result;
          }
        }
      }

      else if (a1 <= 1909999)
      {
        if (a1 > 1850039)
        {
          if (a1 == 1850040)
          {
            return ML3MigrationFunction1850040to1850050;
          }

          else
          {
            if (a1 != 1850050)
            {
              return result;
            }

            return ML3MigrationFunction1850050to1910000;
          }
        }

        else if (a1 == 1850020)
        {
          return ML3MigrationFunction1850020to1850030;
        }

        else
        {
          if (a1 != 1850030)
          {
            return result;
          }

          return ML3MigrationFunction1850030to1850040;
        }
      }

      else if (a1 <= 1910019)
      {
        if (a1 == 1910000)
        {
          return ML3MigrationFunction1910000to1910010;
        }

        else
        {
          if (a1 != 1910010)
          {
            return result;
          }

          return ML3MigrationFunction1910010to1910020;
        }
      }

      else
      {
        switch(a1)
        {
          case 1910020:
            return ML3MigrationFunction1910020to1910030;
          case 1910030:
            return ML3MigrationFunction1910030to1950000;
          case 1950000:
            return ML3MigrationFunction1950000to1950010;
          default:
            return result;
        }
      }
    }

    else if (a1 <= 2100009)
    {
      if (a1 <= 2050049)
      {
        if (a1 > 2050029)
        {
          if (a1 == 2050030)
          {
            return ML3MigrationFunction2050030to2050040;
          }

          else
          {
            if (a1 != 2050040)
            {
              return result;
            }

            return ML3MigrationFunction2050040to2050050;
          }
        }

        else if (a1 == 2050010)
        {
          return ML3MigrationFunction2050010to2050020;
        }

        else
        {
          if (a1 != 2050020)
          {
            return result;
          }

          return ML3MigrationFunction2050020to2050030;
        }
      }

      else if (a1 <= 2050069)
      {
        if (a1 == 2050050)
        {
          return ML3MigrationFunction2050050to2050060;
        }

        else
        {
          if (a1 != 2050060)
          {
            return result;
          }

          return ML3MigrationFunction2050060to2050070;
        }
      }

      else
      {
        switch(a1)
        {
          case 2050070:
            return ML3MigrationFunction2050070to2050080;
          case 2050080:
            return ML3MigrationFunction2050080to2100000;
          case 2100000:
            return ML3MigrationFunction2100000to2100010;
          default:
            return result;
        }
      }
    }

    else if (a1 > 2100059)
    {
      if (a1 <= 2100079)
      {
        if (a1 == 2100060)
        {
          return ML3MigrationFunction2100060to2100070;
        }

        else
        {
          if (a1 != 2100070)
          {
            return result;
          }

          return ML3MigrationFunction2100070to2100080;
        }
      }

      else
      {
        switch(a1)
        {
          case 2100080:
            return ML3MigrationFunction2100080to2100090;
          case 2100090:
            return ML3MigrationFunction2100090to2100100;
          case 2100100:
            return ML3MigrationFunction2100100to2100110;
          default:
            return result;
        }
      }
    }

    else if (a1 <= 2100029)
    {
      if (a1 == 2100010)
      {
        return ML3MigrationFunction2100010to2100020;
      }

      else
      {
        if (a1 != 2100020)
        {
          return result;
        }

        return ML3MigrationFunction2100020to2100030;
      }
    }

    else
    {
      switch(a1)
      {
        case 2100030:
          return ML3MigrationFunction2100030to2100040;
        case 2100040:
          return ML3MigrationFunction2100040to2100050;
        case 2100050:
          return ML3MigrationFunction2100050to2100060;
        default:
          return result;
      }
    }
  }

  if (a1 > 2200039)
  {
    if (a1 <= 2240019)
    {
      if (a1 <= 2219999)
      {
        if (a1 > 2200059)
        {
          if (a1 == 2200060)
          {
            return ML3MigrationFunction2200060to2200070;
          }

          else
          {
            if (a1 != 2200070)
            {
              return result;
            }

            return ML3MigrationFunction2200070to2220000;
          }
        }

        else if (a1 == 2200040)
        {
          return ML3MigrationFunction2200040to2200050;
        }

        else
        {
          if (a1 != 2200050)
          {
            return result;
          }

          return ML3MigrationFunction2200050to2200060;
        }
      }

      else if (a1 <= 2220019)
      {
        if (a1 == 2220000)
        {
          return ML3MigrationFunction2220000to2220010;
        }

        else
        {
          if (a1 != 2220010)
          {
            return result;
          }

          return ML3MigrationFunction2220010to2220020;
        }
      }

      else
      {
        switch(a1)
        {
          case 2220020:
            return ML3MigrationFunction2220020to2240000;
          case 2240000:
            return ML3MigrationFunction2240000to2240010;
          case 2240010:
            return ML3MigrationFunction2240010to2240020;
          default:
            return result;
        }
      }
    }

    else if (a1 > 2299999)
    {
      if (a1 <= 2300019)
      {
        if (a1 == 2300000)
        {
          return ML3MigrationFunction2300000to2300010;
        }

        else
        {
          if (a1 != 2300010)
          {
            return result;
          }

          return ML3MigrationFunction2300010to2300020;
        }
      }

      else
      {
        switch(a1)
        {
          case 2300020:
            return ML3MigrationFunction2300020to2300030;
          case 2300030:
            return ML3MigrationFunction2300030to2300040;
          case 2300040:
            return ML3MigrationFunction2300040to2310000;
          default:
            return result;
        }
      }
    }

    else if (a1 <= 2240030)
    {
      if (a1 == 2240020)
      {
        return ML3MigrationFunction2240020to2240030;
      }

      else
      {
        if (a1 != 2240030)
        {
          return result;
        }

        return ML3MigrationFunction2240030to2240031;
      }
    }

    else
    {
      switch(a1)
      {
        case 2240031:
          return ML3MigrationFunction2240031to2240032;
        case 2240032:
          return ML3MigrationFunction2240032to2240040;
        case 2240040:
          return ML3MigrationFunction2240040to2300000;
        default:
          return result;
      }
    }
  }

  if (a1 <= 2120029)
  {
    if (a1 <= 2100149)
    {
      if (a1 > 2100129)
      {
        if (a1 == 2100130)
        {
          return ML3MigrationFunction2100130to2100140;
        }

        else
        {
          if (a1 != 2100140)
          {
            return result;
          }

          return ML3MigrationFunction2100140to2100150;
        }
      }

      else if (a1 == 2100110)
      {
        return ML3MigrationFunction2100110to2100120;
      }

      else
      {
        if (a1 != 2100120)
        {
          return result;
        }

        return ML3MigrationFunction2100120to2100130;
      }
    }

    else if (a1 <= 2119999)
    {
      if (a1 == 2100150)
      {
        return ML3MigrationFunction2100150to2110000;
      }

      else
      {
        if (a1 != 2110000)
        {
          return result;
        }

        return ML3MigrationFunction2110000to2120000;
      }
    }

    else
    {
      switch(a1)
      {
        case 2120000:
          return ML3MigrationFunction2120000to2120010;
        case 2120010:
          return ML3MigrationFunction2120010to2120020;
        case 2120020:
          return ML3MigrationFunction2120020to2120030;
        default:
          return result;
      }
    }
  }

  if (a1 <= 2159999)
  {
    if (a1 <= 2120049)
    {
      if (a1 == 2120030)
      {
        return ML3MigrationFunction2120030to2120040;
      }

      else
      {
        if (a1 != 2120040)
        {
          return result;
        }

        return ML3MigrationFunction2120040to2120050;
      }
    }

    else
    {
      switch(a1)
      {
        case 2120050:
          return ML3MigrationFunction2120050to2120060;
        case 2120060:
          return ML3MigrationFunction2120060to2150000;
        case 2150000:
          return ML3MigrationFunction2150000to2160000;
        default:
          return result;
      }
    }
  }

  if (a1 <= 2200009)
  {
    if (a1 == 2160000)
    {
      return ML3MigrationFunction2160000to2200000;
    }

    if (a1 != 2200000)
    {
      return result;
    }

    return ML3MigrationFunction2200000to2200010;
  }

  if (a1 == 2200010)
  {
    return ML3MigrationFunction2200010to2200020;
  }

  if (a1 == 2200020)
  {
    return ML3MigrationFunction2200020to2200030;
  }

  if (a1 != 2200030)
  {
    return result;
  }

  return ML3MigrationFunction2200030to2200040;
}