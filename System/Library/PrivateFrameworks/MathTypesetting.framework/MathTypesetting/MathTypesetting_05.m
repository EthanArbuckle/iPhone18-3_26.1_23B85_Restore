void sub_25828F008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xmlEntityPtr EQKitMathMLParserGetEntity(void *a1, char *__s)
{
  if (_entityMap(void)::onceToken != -1)
  {
    EQKitMathMLParserGetEntity();
  }

  v4 = _entityMap(void)::sMap;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v5 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::find<std::string>(v4, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 + 8 == v5)
  {
    return xmlSAX2GetEntity(a1, __s);
  }

  result = *(v5 + 56);
  if (!result)
  {
    return xmlSAX2GetEntity(a1, __s);
  }

  return result;
}

void sub_25828F2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string::size_type a1, double *a2, double *a3, double *a4)
{
  if (EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::onceToken != -1)
  {
    EQKitMathMLParserConvertNamedColorStringToRGBFloatValues();
  }

  if (!EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::sMap)
  {
    return 1;
  }

  v8 = *(a1 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  __dst.__r_.__value_.__r.__words[0] = v9;
  __dst.__r_.__value_.__l.__size_ = v8;
  v10 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::sMap, &__dst);
  if (EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::sMap + 8 == v10)
  {
    return 0;
  }

  v11 = *(v10 + 56);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = *(v10 + 48);
  if (v11 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = *(v10 + 56);
  if (v11)
  {
    memmove(&__dst, v12, v11);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  v13 = EQKitMathMLParserConvertHexColorStringToRGBFloatValues(&__dst, a2, a3, a4);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_25828F428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___Z56EQKitMathMLParserConvertNamedColorStringToRGBFloatValuesRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERdS8_S8__block_invoke()
{
  result = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    v1 = result;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = result + 8;
    v2 = &_HTMLColors;
    v3 = 147;
    do
    {
      result = std::__tree<std::__value_type<std::string_view,std::string_view>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::string_view>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::string_view>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(v1, v2);
      *(result + 48) = *(v2 + 1);
      v2 += 4;
      --v3;
    }

    while (v3);
    EQKitMathMLParserConvertNamedColorStringToRGBFloatValues(std::string const&,double &,double &,double &)::sMap = v1;
  }

  return result;
}

uint64_t EQKitMathMLParserConvertHexColorStringToRGBFloatValues(std::string *__str, double *a2, double *a3, double *a4)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v4 >= 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  v7 = v6->__r_.__value_.__s.__data_[0];
  v8 = size - (v7 == 35);
  if (v8 != 6 && v8 != 3)
  {
    return 0;
  }

  if (size)
  {
    v14 = 0;
    while (memchr("#0123456789abcdefABCDEF", v6->__r_.__value_.__s.__data_[v14], 0x17uLL))
    {
      if (size == ++v14)
      {
        goto LABEL_19;
      }
    }

    if (v14 != -1)
    {
      return 0;
    }
  }

LABEL_19:
  v16 = 3;
  if (v7 == 35)
  {
    v16 = 4;
  }

  v17 = size > v16;
  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v17)
  {
    v19 = 255.0;
  }

  else
  {
    v19 = 15.0;
  }

  std::string::basic_string(&v22, __str, (-3 << v17) + size, v18, &v21);
  std::string::basic_string(&v21, __str, size - 2 * v18, v18, &__p);
  std::string::basic_string(&__p, __str, size - v18, v18, &v23);
  *a2 = EQKitMathMLParserHexToDec(&v22) / v19;
  *a3 = EQKitMathMLParserHexToDec(&v21) / v19;
  *a4 = EQKitMathMLParserHexToDec(&__p) / v19;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_25828F6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitMathMLParserHexToDec(const std::string *a1)
{
  std::istringstream::basic_istringstream[abi:ne200100](v4, a1, 8);
  v3 = 0;
  *(&v4[1] + *(v4[0] - 24)) = *(&v4[1] + *(v4[0] - 24)) & 0xFFFFFFB5 | 8;
  MEMORY[0x259C7CA00](v4, &v3);
  v1 = v3;
  v4[0] = *MEMORY[0x277D82820];
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::istream::~istream();
  MEMORY[0x259C7CB20](&v8);
  return v1;
}

void sub_25828F86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        v10 = v6 < v9;
        v11 = *(v8 + 10);
        if (v9 == v6)
        {
          v10 = v7 < v11;
        }

        if (!v10)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }

      v12 = v11 < v7;
      v13 = v9 == v6;
      v14 = v9 < v6;
      if (v13)
      {
        v14 = v12;
      }

      if (!v14)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_14:
  *a2 = v8;
  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKit::ScriptLevel>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKit::ScriptLevel,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKit::ScriptLevel>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

char *EQKit::AttributeCollection::setValueForKey<std::vector<EQKitLength>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = (std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,true>,EQKitLength<std::vector<EQKitLength>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(a2, a4) + 48);
  if (result != a3)
  {
    return std::vector<EQKitLength>::__assign_with_size[abi:ne200100]<EQKitLength*,EQKitLength*>(result, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,true>,EQKitLength<std::vector<EQKitLength>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

char **EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
{
  result = (std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(a2, a4) + 48);
  if (result != a3)
  {
    return std::vector<EQKitTypes::Notation::Enum>::__assign_with_size[abi:ne200100]<EQKitTypes::Notation::Enum*,EQKitTypes::Notation::Enum*>(result, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::VAlign::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void EQKit::AttributeCollection::setValueForKey<std::vector<std::string>>(uint64_t a1, uint64_t a2, std::string **a3, uint64_t *a4)
{
  v5 = (std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<EQKitLength>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<EQKitLength>,std::less<EQKitTypes::Attributes::Enum>,true>,EQKitLength<std::vector<EQKitLength>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(a2, a4) + 48);
  if (v5 != a3)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,unsigned short>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__find_equal<EQKitTypes::Attributes::Enum>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,void *>,std::__tree_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      EQKitTypes::CFRetainRelease::~CFRetainRelease(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::deque<EQKitMathMLParserState>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<EQKitLayoutTable *>::~__split_buffer(a1);
}

void sub_258290288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,_xmlEntity *>,std::__map_value_compare<std::string,std::__value_type<std::string,_xmlEntity *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,_xmlEntity *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::deque<EQKitMathMLParserState>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<EQKitMathMLParserState>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<EQKitMathMLParserState>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v10);
}

void sub_258290560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<EQKitMathMLParserState>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::__tree<std::__value_type<std::string_view,std::string_view>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,std::string_view>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,std::string_view>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::__find_equal<std::string_view>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::set<EQKitTypes::Attributes::Enum>::set[abi:ne200100]<EQKitTypes::Attributes::Enum const*>(void *a1, int *a2, int *a3)
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
      std::__tree<EQKitTypes::Attributes::Enum>::__emplace_hint_unique_key_args<EQKitTypes::Attributes::Enum,EQKitTypes::Attributes::Enum const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<EQKitTypes::Attributes::Enum>::__emplace_hint_unique_key_args<EQKitTypes::Attributes::Enum,EQKitTypes::Attributes::Enum const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<EQKitTypes::Attributes::Enum>::__find_equal<EQKitTypes::Attributes::Enum>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<EQKitTypes::Attributes::Enum>::__find_equal<EQKitTypes::Attributes::Enum>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

double EQKit::AttributeCollection::AttributeCollection(EQKit::AttributeCollection *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *this = &unk_28696AF48;
  *(this + 1) = this + 16;
  *(this + 40) = 0u;
  *(this + 4) = this + 40;
  *(this + 4) = 0u;
  *(this + 88) = 0u;
  *(this + 7) = this + 64;
  *(this + 10) = this + 88;
  *(this + 7) = 0u;
  *(this + 13) = this + 112;
  *(this + 136) = 0u;
  *(this + 10) = 0u;
  *(this + 16) = this + 136;
  *(this + 19) = this + 160;
  *(this + 184) = 0u;
  *(this + 22) = this + 184;
  *(this + 13) = 0u;
  *(this + 232) = 0u;
  *(this + 25) = this + 208;
  *(this + 28) = this + 232;
  *(this + 16) = 0u;
  *(this + 31) = this + 256;
  *(this + 280) = 0u;
  *(this + 34) = this + 280;
  *(this + 19) = 0u;
  *(this + 37) = this + 304;
  *(this + 328) = 0u;
  *(this + 40) = this + 328;
  *(this + 22) = 0u;
  *(this + 43) = this + 352;
  *(this + 376) = 0u;
  *(this + 46) = this + 376;
  *(this + 25) = 0u;
  *(this + 49) = this + 400;
  *(this + 424) = 0u;
  *(this + 52) = this + 424;
  *(this + 28) = 0u;
  *(this + 55) = this + 448;
  *(this + 472) = 0u;
  *(this + 58) = this + 472;
  *(this + 31) = 0u;
  *(this + 61) = this + 496;
  *(this + 520) = 0u;
  *(this + 64) = this + 520;
  *(this + 34) = 0u;
  *(this + 67) = this + 544;
  return result;
}

void EQKit::AttributeCollection::~AttributeCollection(EQKit::AttributeCollection *this)
{
  EQKit::AttributeCollection::~AttributeCollection(this);

  JUMPOUT(0x259C7CB70);
}

{
  *this = &unk_28696AF48;
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::destroy(this + 536, *(this + 68));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 512, *(this + 65));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 488, *(this + 62));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 464, *(this + 59));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 440, *(this + 56));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 416, *(this + 53));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 392, *(this + 50));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 368, *(this + 47));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 344, *(this + 44));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 320, *(this + 41));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 296, *(this + 38));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 272, *(this + 35));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 224, *(this + 29));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 200, *(this + 26));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 176, *(this + 23));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 152, *(this + 20));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 128, *(this + 17));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::vector<std::string,std::char_traits<char><std::allocator<char>>>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::destroy(this + 80, *(this + 11));
  std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(this + 8, *(this + 2));
}

void std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::destroy(uint64_t a1, const void **a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::destroy(a1, a2[1]);
    EQKitTypes::CFRetainRelease::~CFRetainRelease(a2 + 6);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum<std::vector<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::vector<std::string,std::char_traits<char><std::allocator<char>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::vector<std::string,std::char_traits<char><std::allocator<char>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::vector<std::string,std::char_traits<char><std::allocator<char>>>>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::vector<std::string,std::char_traits<char><std::allocator<char>>>,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::vector<std::string,std::char_traits<char><std::allocator<char>>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 48);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::string>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::string,std::less<EQKitTypes::Attributes::Enum>,true>,std::char_traits<char><std::string>>::destroy(a1, *(a2 + 1));
    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void sub_25829226C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_258295444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitMathMLElement::fromString(uint64_t *a1)
{
  {
    v5 = a1;
    a1 = v5;
    if (v6)
    {
      std::map<std::string_view const,EQKitMathMLElement::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitMathMLElement::Enum> const*>(EQKitMathMLElement::fromString(std::string const&)::sMap, &EQKitMathMLElement::sData, (&EQKitMathMLElement::sData + 525));
      a1 = v5;
    }
  }

  v1 = *(a1 + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = a1[1];
  }

  v7[0] = v2;
  v7[1] = v1;
  v3 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitMathMLElement::fromString(std::string const&)::sMap, v7);
  if (v3 == &EQKitMathMLElement::fromString(std::string const&)::sMap[1])
  {
    return 0;
  }

  else
  {
    return *(v3 + 48);
  }
}

uint64_t EQKitTypes::Display::displayFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::Display::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Display::Enum> const*>(EQKitTypes::Display::displayFromMathMLString(std::string const&,EQKitTypes::Display::Enum)::sMap, &EQKitTypes::Display::sData, &EQKit::Script::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::Display::displayFromMathMLString(std::string const&,EQKitTypes::Display::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::Display::displayFromMathMLString(std::string const&,EQKitTypes::Display::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t EQKit::Script::variantFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKit::Script::Variant>::map[abi:ne200100]<std::pair<std::string_view const,EQKit::Script::Variant> const*>(EQKit::Script::variantFromMathMLString(std::string const&,EQKit::Script::Variant)::sMap, &EQKit::Script::sData, &EQKit::Config::Operator::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKit::Script::variantFromMathMLString(std::string const&,EQKit::Script::Variant)::sMap, v8);
  if (v6 != &EQKit::Script::variantFromMathMLString(std::string const&,EQKit::Script::Variant)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t EQKit::Config::Operator::formFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKit::Config::Operator::Form>::map[abi:ne200100]<std::pair<std::string_view const,EQKit::Config::Operator::Form> const*>(EQKit::Config::Operator::formFromMathMLString(std::string const&,EQKit::Config::Operator::Form)::sMap, &EQKit::Config::Operator::sData, &EQKitTypes::Align::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKit::Config::Operator::formFromMathMLString(std::string const&,EQKit::Config::Operator::Form)::sMap, v8);
  if (v6 != &EQKit::Config::Operator::formFromMathMLString(std::string const&,EQKit::Config::Operator::Form)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t EQKitTypes::Align::alignFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::Align::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Align::Enum> const*>(EQKitTypes::Align::alignFromMathMLString(std::string const&,EQKitTypes::Align::Enum)::sMap, &EQKitTypes::Align::sData, &EQKitTypes::VAlign::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::Align::alignFromMathMLString(std::string const&,EQKitTypes::Align::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::Align::alignFromMathMLString(std::string const&,EQKitTypes::Align::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t EQKitTypes::VAlign::vAlignFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::VAlign::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::VAlign::Enum> const*>(EQKitTypes::VAlign::vAlignFromMathMLString(std::string const&,EQKitTypes::VAlign::Enum)::sMap, &EQKitTypes::VAlign::sData, &EQKitTypes::Boolean::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::VAlign::vAlignFromMathMLString(std::string const&,EQKitTypes::VAlign::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::VAlign::vAlignFromMathMLString(std::string const&,EQKitTypes::VAlign::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t EQKitTypes::Boolean::BOOLeanFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::Boolean::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Boolean::Enum> const*>(EQKitTypes::Boolean::BOOLeanFromMathMLString(std::string const&,EQKitTypes::Boolean::Enum)::sMap, &EQKitTypes::Boolean::sData, &EQKitTypes::Attributes::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::Boolean::BOOLeanFromMathMLString(std::string const&,EQKitTypes::Boolean::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::Boolean::BOOLeanFromMathMLString(std::string const&,EQKitTypes::Boolean::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t EQKitTypes::Attributes::attributeFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::Attributes::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Attributes::Enum> const*>(EQKitTypes::Attributes::attributeFromMathMLString(std::string const&,EQKitTypes::Attributes::Enum)::sMap, &EQKitTypes::Attributes::sData, &EQKitTypes::Crossout::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::Attributes::attributeFromMathMLString(std::string const&,EQKitTypes::Attributes::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::Attributes::attributeFromMathMLString(std::string const&,EQKitTypes::Attributes::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

void EQKitTypes::Align::alignVectorFromMathMLString(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_2582F4C67[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = EQKitTypes::Align::alignFromMathMLString(&__p, 0);
    if (v11)
    {
      v13 = a2[1];
      v12 = a2[2];
      if (v13 >= v12)
      {
        v15 = *a2;
        v16 = v13 - *a2;
        v17 = v16 >> 2;
        v18 = (v16 >> 2) + 1;
        if (v18 >> 62)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a2, v21);
        }

        *(4 * v17) = v11;
        v14 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v22 = *a2;
        *a2 = 0;
        a2[1] = v14;
        a2[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v11;
        v14 = (v13 + 4);
      }

      a2[1] = v14;
    }

    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_41:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_41;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_258296B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void EQKitTypes::VAlign::vAlignVectorFromMathMLString(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_2582F4C67[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = EQKitTypes::VAlign::vAlignFromMathMLString(&__p, 0);
    if (v11)
    {
      v13 = a2[1];
      v12 = a2[2];
      if (v13 >= v12)
      {
        v15 = *a2;
        v16 = v13 - *a2;
        v17 = v16 >> 2;
        v18 = (v16 >> 2) + 1;
        if (v18 >> 62)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a2, v21);
        }

        *(4 * v17) = v11;
        v14 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v22 = *a2;
        *a2 = 0;
        a2[1] = v14;
        a2[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = v11;
        v14 = (v13 + 4);
      }

      a2[1] = v14;
    }

    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_41:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_41;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_258296DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void EQKitTypes::Strings::separatorsFromString(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [v4 initWithUTF8String:v5];
  if (v6)
  {
    [v6 rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
    if (v7)
    {
      v8 = [v6 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
    }

    else
    {
      v8 = 0;
      v9 = [v6 length];
      if (v9)
      {
        for (i = 0; i < v9; i += v13)
        {
          v11 = [v6 rangeOfComposedCharacterSequenceAtIndex:i];
          v13 = v12;
          if (v12)
          {
            v14 = [v6 substringWithRange:{v11, v12}];
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v8 addObject:v14];
          }

          else
          {
            v13 = 1;
          }
        }
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:{16, v6}];
    if (v15)
    {
      v16 = *v38;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v8);
          }

          v18 = [*(*(&v37 + 1) + 8 * j) UTF8String];
          v19 = v18;
          if (v18)
          {
            v20 = strlen(v18);
            if (v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v21 = v20;
            if (v20 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v36) = v20;
            if (v20)
            {
              memmove(&__dst, v19, v20);
            }

            *(&__dst + v21) = 0;
            v23 = *(a2 + 8);
            v22 = *(a2 + 16);
            if (v23 >= v22)
            {
              v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a2) >> 3);
              v26 = v25 + 1;
              if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v27 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *a2) >> 3);
              if (2 * v27 > v26)
              {
                v26 = 2 * v27;
              }

              if (v27 >= 0x555555555555555)
              {
                v28 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v28 = v26;
              }

              v41.__end_cap_.__value_ = a2;
              if (v28)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v28);
              }

              v29 = 24 * v25;
              *v29 = __dst;
              *(v29 + 16) = v36;
              v24 = 24 * v25 + 24;
              v30 = *(a2 + 8) - *a2;
              v31 = 24 * v25 - v30;
              memcpy((v29 - v30), *a2, v30);
              v32 = *a2;
              *a2 = v31;
              *(a2 + 8) = v24;
              v33 = *(a2 + 16);
              *(a2 + 16) = 0;
              v41.__end_ = v32;
              v41.__end_cap_.__value_ = v33;
              v41.__first_ = v32;
              v41.__begin_ = v32;
              std::__split_buffer<std::string>::~__split_buffer(&v41);
            }

            else
            {
              *v23 = __dst;
              *(v23 + 16) = v36;
              v24 = v23 + 24;
            }

            *(a2 + 8) = v24;
          }
        }

        v15 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v15);
    }
  }
}

uint64_t EQKitTypes::Integer::integerFromMathMLString(const std::string *a1, BOOL *a2)
{
  v10 = 0;
  std::istringstream::basic_istringstream[abi:ne200100](v5, a1, 8);
  MEMORY[0x259C7C9F0](v5, &v10);
  *a2 = (*(&v7[1].__locale_ + *(v5[0] - 24)) & 7) == 2;
  v3 = v10;
  v5[0] = *MEMORY[0x277D82820];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::istream::~istream();
  MEMORY[0x259C7CB20](&v9);
  return v3;
}

void sub_25829736C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitTypes::UInteger::uIntegerFromMathMLString(const std::string *a1, BOOL *a2)
{
  v10 = 0;
  std::istringstream::basic_istringstream[abi:ne200100](v5, a1, 8);
  MEMORY[0x259C7CA00](v5, &v10);
  *a2 = (*(&v7[1].__locale_ + *(v5[0] - 24)) & 7) == 2;
  v3 = v10;
  v5[0] = *MEMORY[0x277D82820];
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::istream::~istream();
  MEMORY[0x259C7CB20](&v9);
  return v3;
}

void sub_258297500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t EQKitTypes::Crossout::crossoutFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::Crossout::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Crossout::Enum> const*>(EQKitTypes::Crossout::crossoutFromMathMLString(std::string const&,EQKitTypes::Crossout::Enum)::sMap, &EQKitTypes::Crossout::sData, &EQKitTypes::Notation::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::Crossout::crossoutFromMathMLString(std::string const&,EQKitTypes::Crossout::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::Crossout::crossoutFromMathMLString(std::string const&,EQKitTypes::Crossout::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

void EQKitTypes::Crossout::crossoutVectorFromMathMLString(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_2582F4C67[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = EQKitTypes::Crossout::crossoutFromMathMLString(&__p, 0);
    v13 = a2[1];
    v12 = a2[2];
    if (v13 >= v12)
    {
      v15 = *a2;
      v16 = v13 - *a2;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v19 = v12 - v15;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
      v21 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a2, v21);
      }

      *(4 * v17) = v11;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v22 = *a2;
      *a2 = 0;
      a2[1] = v14;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = v11;
      v14 = (v13 + 4);
    }

    a2[1] = v14;
    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_39:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_39;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_258297800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitTypes::Notation::notationFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::Notation::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Notation::Enum> const*>(EQKitTypes::Notation::notationFromMathMLString(std::string const&,EQKitTypes::Notation::Enum)::sMap, &EQKitTypes::Notation::sData, &EQKitTypes::GroupAlign::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::Notation::notationFromMathMLString(std::string const&,EQKitTypes::Notation::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::Notation::notationFromMathMLString(std::string const&,EQKitTypes::Notation::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

void EQKitTypes::Notation::notationVectorFromMathMLString(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > v4)
    {
      v7 = v6 + size;
      v8 = v6 + v4;
LABEL_9:
      v9 = 0;
      while (*v8 != asc_2582F4C67[v9])
      {
        if (++v9 == 3)
        {
          if (++v8 != v7)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = size;
LABEL_17:
    std::string::basic_string(&__p, __str, v4, v10 - v4, &v30);
    v11 = EQKitTypes::Notation::notationFromMathMLString(&__p, 0);
    v13 = a2[1];
    v12 = a2[2];
    if (v13 >= v12)
    {
      v15 = *a2;
      v16 = v13 - *a2;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v19 = v12 - v15;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
      v21 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a2, v21);
      }

      *(4 * v17) = v11;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v22 = *a2;
      *a2 = 0;
      a2[1] = v14;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = v11;
      v14 = (v13 + 4);
    }

    a2[1] = v14;
    v4 = v10 + 1;
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    if (v23 <= v4)
    {
LABEL_39:
      v4 = -1;
    }

    else
    {
      while (1)
      {
        v25 = v24->__r_.__value_.__s.__data_[v4];
        v26 = v25 > 0x20;
        v27 = (1 << v25) & 0x100000600;
        if (v26 || v27 == 0)
        {
          break;
        }

        if (v23 == ++v4)
        {
          goto LABEL_39;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v4 != -1);
}

void sub_258297B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EQKitTypes::GroupAlign::groupAlignFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::GroupAlign::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::GroupAlign::Enum> const*>(EQKitTypes::GroupAlign::groupAlignFromMathMLString(std::string const&,EQKitTypes::GroupAlign::Enum)::sMap, &EQKitTypes::GroupAlign::sData, &EQKitTypes::Edge::sData);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::GroupAlign::groupAlignFromMathMLString(std::string const&,EQKitTypes::GroupAlign::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::GroupAlign::groupAlignFromMathMLString(std::string const&,EQKitTypes::GroupAlign::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

uint64_t EQKitTypes::Edge::edgeFromMathMLString(uint64_t *a1, uint64_t a2)
{
  {
    std::map<std::string_view const,EQKitTypes::Edge::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Edge::Enum> const*>(EQKitTypes::Edge::edgeFromMathMLString(std::string const&,EQKitTypes::Edge::Enum)::sMap, &EQKitTypes::Edge::sData, &__block_descriptor_40_e5_v8__0l);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v8[0] = v5;
  v8[1] = v4;
  v6 = std::__tree<std::__value_type<std::string_view const,float>,std::__map_value_compare<std::string_view const,std::__value_type<std::string_view const,float>,std::less<std::string_view const>,true>,std::allocator<std::__value_type<std::string_view const,float>>>::find<std::string_view>(EQKitTypes::Edge::edgeFromMathMLString(std::string const&,EQKitTypes::Edge::Enum)::sMap, v8);
  if (v6 != &EQKitTypes::Edge::edgeFromMathMLString(std::string const&,EQKitTypes::Edge::Enum)::sMap[1])
  {
    return *(v6 + 48);
  }

  return a2;
}

void *std::map<std::string_view const,EQKitMathMLElement::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitMathMLElement::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::Display::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Display::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKit::Script::Variant>::map[abi:ne200100]<std::pair<std::string_view const,EQKit::Script::Variant> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKit::Config::Operator::Form>::map[abi:ne200100]<std::pair<std::string_view const,EQKit::Config::Operator::Form> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::Align::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Align::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::VAlign::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::VAlign::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::Boolean::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Boolean::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::Attributes::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Attributes::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::Crossout::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Crossout::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::Notation::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Notation::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::GroupAlign::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::GroupAlign::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void *std::map<std::string_view const,EQKitTypes::Edge::Enum>::map[abi:ne200100]<std::pair<std::string_view const,EQKitTypes::Edge::Enum> const*>(void *a1, uint64_t a2, uint64_t a3)
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

void sub_258299180(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

CGFloat EQKitBox_ContextScale(CGContext *a1)
{
  memset(&v4, 0, sizeof(v4));
  CGContextGetCTM(&v4, a1);
  v2 = v4;
  memset(&v3, 0, sizeof(v3));
  CGAffineTransformDecompose(&v3, &v2);
  return v3.scale.height;
}

void sub_25829A3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EQKitRule;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25829A9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EQKitStringBox;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25829B4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EQKitPathBox;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25829F3B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void blahtex::translateToken(blahtex *this@<X0>, blahtex::Token *a2@<X8>)
{
  {
    std::unordered_map<wchar_t,std::wstring_view>::unordered_map<std::pair<wchar_t,std::wstring_view> const*>(blahtex::translateToken(blahtex::Token const&)::equivalentInputSymbolsTable, &blahtex::equivalentInputSymbolsArray, &blahtex::equivalentInputSymbolsArray + 2442);
  }

  v5 = *(this + 23);
  if (v5 < 0)
  {
    if (*(this + 1) != 1)
    {
LABEL_12:

      blahtex::Token::Token(a2, this);
      return;
    }

    v6 = *this;
  }

  else
  {
    v6 = this;
    if (v5 != 1)
    {
      goto LABEL_12;
    }
  }

  v7 = std::__hash_table<std::__hash_value_type<wchar_t,std::wstring_view>,std::__unordered_map_hasher<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::hash<wchar_t>,std::equal_to<wchar_t>,true>,std::__unordered_map_equal<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::equal_to<wchar_t>,std::hash<wchar_t>,true>,std::allocator<std::__hash_value_type<wchar_t,std::wstring_view>>>::find<wchar_t>(blahtex::translateToken(blahtex::Token const&)::equivalentInputSymbolsTable, v6);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7[4];
  if (v8 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v7[3];
  if (v8 >= 5)
  {
    if ((v8 | 1) == 5)
    {
      v10 = 7;
    }

    else
    {
      v10 = (v8 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(&__dst, v10);
  }

  v12 = v7[4];
  if (v8)
  {
    memmove(&__dst, v9, 4 * v8);
  }

  *(&__dst + v8) = 0;
  blahtex::Token::Token(a2, &__dst, *(this + 3));
  if (v12 < 0)
  {
    operator delete(__dst);
  }
}

uint64_t std::unordered_map<wchar_t,std::wstring_view>::unordered_map<std::pair<wchar_t,std::wstring_view> const*>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<wchar_t,std::wstring_view>,std::__unordered_map_hasher<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::hash<wchar_t>,std::equal_to<wchar_t>,true>,std::__unordered_map_equal<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::equal_to<wchar_t>,std::hash<wchar_t>,true>,std::allocator<std::__hash_value_type<wchar_t,std::wstring_view>>>::__emplace_unique_key_args<wchar_t,std::pair<wchar_t,std::wstring_view> const&>(a1, v5);
      v5 += 6;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<wchar_t,std::wstring_view>,std::__unordered_map_hasher<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::hash<wchar_t>,std::equal_to<wchar_t>,true>,std::__unordered_map_equal<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::equal_to<wchar_t>,std::hash<wchar_t>,true>,std::allocator<std::__hash_value_type<wchar_t,std::wstring_view>>>::__emplace_unique_key_args<wchar_t,std::pair<wchar_t,std::wstring_view> const&>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t *std::__hash_table<std::__hash_value_type<wchar_t,std::wstring_view>,std::__unordered_map_hasher<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::hash<wchar_t>,std::equal_to<wchar_t>,true>,std::__unordered_map_equal<wchar_t,std::__hash_value_type<wchar_t,std::wstring_view>,std::equal_to<wchar_t>,std::hash<wchar_t>,true>,std::allocator<std::__hash_value_type<wchar_t,std::wstring_view>>>::find<wchar_t>(void *a1, int *a2)
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
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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

uint64_t blahtex::Interface::GetMathml@<X0>(blahtex::Interface *this@<X0>, std::wstringbuf::string_type *a2@<X8>)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v6);
  blahtex::Manager::GenerateMathml(*this, (this + 8));
  blahtex::MathmlNode::Print(v5, &v6, this + 32, *(this + 121), 0);
  std::wstringbuf::str(a2, &v7);
  std::unique_ptr<blahtex::MathmlNode>::~unique_ptr[abi:ne200100](&v5);
  if (SHIBYTE(v7.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__str_.__r_.__value_.__l.__data_);
  }

  v7.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v7.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x259C7CB30](&v8);
}

void sub_2582A009C(_Unwind_Exception *a1, uint64_t a2, ...)
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
  MEMORY[0x259C7CB30](va1);
  _Unwind_Resume(a1);
}

uint64_t std::wostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  *a1 = &unk_28696B030;
  *(a1 + 112) = &unk_28696B058;
  std::ios_base::init((a1 + 112), (a1 + 8));
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  std::wstringbuf::basic_stringbuf[abi:ne200100](a1 + 8, 16);
  return a1;
}

void sub_2582A01A0(_Unwind_Exception *a1)
{
  std::wostream::~wostream();
  MEMORY[0x259C7CB30](v1);
  _Unwind_Resume(a1);
}

blahtex::MathmlNode **std::unique_ptr<blahtex::MathmlNode>::~unique_ptr[abi:ne200100](blahtex::MathmlNode **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    blahtex::MathmlNode::~MathmlNode(v2);
    MEMORY[0x259C7CB70]();
  }

  return a1;
}

uint64_t std::wostringstream::~wostringstream(uint64_t a1)
{
  MEMORY[0x259C7CB30](v2 + 112);
  return a1;
}

uint64_t std::wostringstream::~wostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));

  return std::wostream::~wostream();
}

void virtual thunk tostd::wostringstream::~wostringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    operator delete(v1[9].__locale_);
  }

  v1[1].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 2);
  std::wostream::~wostream();

  JUMPOUT(0x259C7CB30);
}

{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    operator delete(v1[9].__locale_);
  }

  v1[1].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 2);
  std::wostream::~wostream();
  MEMORY[0x259C7CB30](&v1[14]);

  JUMPOUT(0x259C7CB70);
}

void std::wostringstream::~wostringstream(uint64_t a1)
{
  v2 = a1 + 112;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));
  std::wostream::~wostream();
  MEMORY[0x259C7CB30](v2);

  JUMPOUT(0x259C7CB70);
}

uint64_t std::wstringbuf::~wstringbuf(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void std::wstringbuf::~wstringbuf(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x259C7CB70);
}

std::wstringbuf::pos_type *__cdecl std::wstringbuf::seekoff(std::wstringbuf::pos_type *__return_ptr retstr, std::wstringbuf::pos_type *this, std::wstringbuf::off_type a3, std::ios_base::seekdir __way, std::ios_base::openmode __wch)
{
  v5 = *(&this->__st_._mbstateL + 11);
  v6 = *(&this->__st_._mbstateL + 6);
  if (v5 < v6)
  {
    *(&this->__st_._mbstateL + 11) = v6;
    v5 = v6;
  }

  if ((__wch & 0x18) == 0 || __way == cur && (__wch & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v9 = 0;
    if (__way)
    {
      goto LABEL_12;
    }

LABEL_17:
    v11 = __way;
    goto LABEL_21;
  }

  v8 = &this->__st_._mbstateL + 8;
  if (this->__st_.__mbstate8[87] < 0)
  {
    v8 = *v8;
  }

  v9 = (v5 - v8) >> 2;
  if (__way == beg)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (__way == end)
  {
    v11 = v9;
  }

  else
  {
    if (__way != cur)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((__wch & 8) != 0)
    {
      v10 = *(&this->__st_._mbstateL + 3) - *(&this->__st_._mbstateL + 2);
    }

    else
    {
      v10 = v6 - *(&this->__st_._mbstateL + 5);
    }

    v11 = v10 >> 2;
  }

LABEL_21:
  v7 = -1;
  v12 = v11 + a3;
  if (v12 >= 0 && v9 >= v12 && (!v12 || ((__wch & 8) == 0 || *(&this->__st_._mbstateL + 3)) && ((__wch & 0x10) == 0 || v6)))
  {
    if ((__wch & 8) != 0)
    {
      *(&this->__st_._mbstateL + 3) = *(&this->__st_._mbstateL + 2) + 4 * v12;
      *(&this->__st_._mbstateL + 4) = v5;
    }

    if ((__wch & 0x10) != 0)
    {
      *(&this->__st_._mbstateL + 6) = *(&this->__st_._mbstateL + 5) + 4 * v12;
    }

    v7 = v12;
  }

LABEL_7:
  *(&retstr->__st_._mbstateL + 6) = 0u;
  *(&retstr->__st_._mbstateL + 7) = 0u;
  *(&retstr->__st_._mbstateL + 4) = 0u;
  *(&retstr->__st_._mbstateL + 5) = 0u;
  *(&retstr->__st_._mbstateL + 2) = 0u;
  *(&retstr->__st_._mbstateL + 3) = 0u;
  *retstr->__st_.__mbstate8 = 0u;
  *(&retstr->__st_._mbstateL + 1) = 0u;
  retstr->__off_ = v7;
  return this;
}

std::wstringbuf::int_type std::wstringbuf::underflow(std::wstringbuf *this)
{
  hm = this->__hm_;
  nout = this->__nout_;
  if (hm < nout)
  {
    this->__hm_ = nout;
    hm = nout;
  }

  if ((this->__mode_ & 8) == 0)
  {
    return -1;
  }

  einp = this->__einp_;
  if (einp < hm)
  {
    this->__einp_ = hm;
    einp = hm;
  }

  ninp = this->__ninp_;
  if (ninp < einp)
  {
    return *ninp;
  }

  else
  {
    return -1;
  }
}

std::wstringbuf::int_type std::wstringbuf::pbackfail(std::wstringbuf *this, std::wstringbuf::int_type __c)
{
  hm = this->__hm_;
  nout = this->__nout_;
  if (hm < nout)
  {
    this->__hm_ = nout;
    hm = nout;
  }

  ninp = this->__ninp_;
  if (this->__binp_ < ninp)
  {
    if (__c == -1)
    {
      __c = 0;
      v5 = ninp - 1;
      goto LABEL_10;
    }

    if ((this->__mode_ & 0x10) != 0 || *(ninp - 1) == __c)
    {
      *(ninp - 1) = __c;
      v5 = ninp - 1;
LABEL_10:
      this->__ninp_ = v5;
      this->__einp_ = hm;
      return __c;
    }
  }

  return -1;
}

std::wstringbuf::int_type std::wstringbuf::overflow(std::wstringbuf *this, std::wstringbuf::int_type __c)
{
  if (__c == -1)
  {
    LODWORD(v2) = 0;
    return v2;
  }

  v2 = *&__c;
  binp = this->__binp_;
  ninp = this->__ninp_;
  nout = this->__nout_;
  eout = this->__eout_;
  if (nout != eout)
  {
    hm = this->__hm_;
    goto LABEL_13;
  }

  if ((this->__mode_ & 0x10) == 0)
  {
    LODWORD(v2) = -1;
    return v2;
  }

  bout = this->__bout_;
  v10 = this->__hm_;
  p_str = &this->__str_;
  std::wstring::push_back(&this->__str_, 0);
  if (SHIBYTE(this->__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = (this->__str_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v12 = 4;
  }

  std::wstring::resize(&this->__str_, v12, 0);
  size = SHIBYTE(this->__str_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    p_str = this->__str_.__r_.__value_.__l.__data_;
    size = this->__str_.__r_.__value_.__l.__size_;
  }

  eout = (p_str + 4 * size);
  nout = (p_str + 4 * (nout - bout));
  this->__bout_ = p_str;
  this->__nout_ = nout;
  this->__eout_ = eout;
  hm = (p_str + v10 - bout);
LABEL_13:
  if (nout + 1 >= hm)
  {
    hm = nout + 1;
  }

  this->__hm_ = hm;
  if ((this->__mode_ & 8) != 0)
  {
    v14 = &this->__str_;
    if (SHIBYTE(this->__str_.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v14->__r_.__value_.__r.__words[0];
    }

    this->__binp_ = v14;
    this->__ninp_ = (v14 + ninp - binp);
    this->__einp_ = hm;
  }

  if (nout != eout)
  {
    this->__nout_ = nout + 1;
    *nout = v2;
    return v2;
  }

  overflow = this->overflow;

  return (overflow)(this, v2);
}

void sub_2582A0AD4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2582A09ACLL);
}

uint64_t std::wstringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82870] + 16;
  MEMORY[0x259C7CAD0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::wstringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2582A0B74(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::wstringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  v7 = v4 + 4 * v5;
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v7;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v7;
    if ((v3 & 0x80000000) != 0)
    {
      v8 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v8 = 4;
    }

    std::wstring::resize(v2, v8, 0);
    v9 = *(a1 + 87);
    if (v9 < 0)
    {
      v9 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + 4 * v9;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v10 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v11 = (v10 + ((v5 - 0x80000000 - v10) >> 1)) >> 30;
        v4 = (v4 + 0x1FFFFFFFCLL * v11 + 0x1FFFFFFFCLL);
        v5 = v5 - 0x7FFFFFFF - 0x7FFFFFFF * v11;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + 4 * v5;
      }
    }
  }
}

std::wstringbuf::string_type *__cdecl std::wstringbuf::str(std::wstringbuf::string_type *__return_ptr retstr, std::wstringbuf::string_type *this)
{
  v2 = this[4].__r_.__value_.__s.__data_[0];
  if ((v2 & 0x10) != 0)
  {
    size = this[3].__r_.__value_.__r.__words[2];
    data = this[2].__r_.__value_.__l.__data_;
    if (size < data)
    {
      this[3].__r_.__value_.__r.__words[2] = data;
      size = data;
    }

    v5 = this[1].__r_.__value_.__r.__words[2];
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      *&retstr->__r_.__value_.__l.__data_ = 0uLL;
      retstr->__r_.__value_.__r.__words[2] = 0;
      return this;
    }

    v5 = this->__r_.__value_.__r.__words[2];
    size = this[1].__r_.__value_.__l.__size_;
  }

  return std::wstring::__init_with_size[abi:ne200100]<wchar_t *,wchar_t *>(retstr, v5, size, (size - v5) >> 2);
}

_BYTE *std::wstring::__init_with_size[abi:ne200100]<wchar_t *,wchar_t *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v5 = 7;
    }

    else
    {
      v5 = (a4 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(__dst, v5);
  }

  __dst[23] = a4;
  v6 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v6);
  }

  *&v4[v6] = 0;
  return __dst;
}

uint64_t blahtex::MathmlEnvironment::MathmlEnvironment(uint64_t this, unsigned int a2, int a3)
{
  *(this + 8) = a3;
  *this = a2 == 0;
  if (a2 >= 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected style value in MathmlEnvironment::MathmlEnvironment");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(this + 4) = dword_2582D4850[a2];
  return this;
}

void blahtex::LayoutTree::Row::~Row(blahtex::LayoutTree::Row *this)
{
  *this = &unk_28696B128;
  v1 = (this + 24);
  for (i = *(this + 4); i != v1; i = i[1])
  {
    v3 = i[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  std::__list_imp<EQKit::StemStretch::FeatureRange::Span>::clear(v1);
}

{
  blahtex::LayoutTree::Row::~Row(this);

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Table::~Table(blahtex::LayoutTree::Table *this)
{
  *this = &unk_28696B160;
  v2 = (this + 24);
  v3 = *(this + 3);
  v4 = *(this + 4);
  while (v3 != v4)
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    if (*v3 != v5)
    {
      do
      {
        if (*v6)
        {
          (*(**v6 + 8))(*v6);
          v5 = *(v3 + 8);
        }

        ++v6;
      }

      while (v6 != v5);
      v4 = *(this + 4);
    }

    v3 += 24;
  }

  v7 = v2;
  std::vector<std::vector<blahtex::LayoutTree::Node *>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

{
  blahtex::LayoutTree::Table::~Table(this);

  JUMPOUT(0x259C7CB70);
}

unsigned int *blahtex::LayoutTree::IncrementNodeCount(unsigned int *this, unsigned int *a2)
{
  v2 = *this + 1;
  *this = v2;
  if (v2 >= 0x9C4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(&v7, dword_2582D4860);
    std::wstring::basic_string[abi:ne200100]<0>(v6, &dword_2582D48AC);
    std::wstring::basic_string[abi:ne200100]<0>(v5, &dword_2582D48AC);
    std::wstring::basic_string[abi:ne200100]<0>(v4, &dword_2582D48AC);
    blahtex::Exception::Exception(exception, &v7, v6, v5, v4);
  }

  return this;
}

void sub_2582A10B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
    if ((v27 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v26);
  goto LABEL_12;
}

_BYTE *std::wstring::basic_string[abi:ne200100]<0>(_BYTE *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  if (v4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 5)
  {
    if ((v4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v4 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a1, v6);
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, a2, 4 * v4);
  }

  *&a1[4 * v5] = 0;
  return a1;
}

void blahtex::Exception::~Exception(void **this)
{
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t blahtex::LayoutTree::FormatColour@<X0>(std::wstringbuf::string_type *a1@<X8>)
{
  std::wostringstream::basic_ostringstream[abi:ne200100](&v7);
  v3 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(&v7, "#", 1);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = 48;
  v4 = std::operator<<[abi:ne200100]<std::char_traits<wchar_t>>(v3, &v6);
  *(v4 + *(*v4 - 24) + 24) = 6;
  MEMORY[0x259C7CA80]();
  std::wstringbuf::str(a1, &v8);
  if (SHIBYTE(v8.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__str_.__r_.__value_.__l.__data_);
  }

  v8.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v8.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x259C7CB30](&v9);
}

void sub_2582A13B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::wostringstream::~wostringstream(va);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<wchar_t>>(void *a1, int *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82688]);
    v6 = (v5->__vftable[3].__on_zero_shared)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void *blahtex::LayoutTree::AdjustMathmlEnvironment@<X0>(void *result@<X0>, unint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  if (HIDWORD(a2) != HIDWORD(a4) || ((a4 ^ a2) & 1) != 0 || a3 != a5 || (v7 = *result, **result == 18))
  {
    operator new();
  }

  *result = 0;
  *a6 = v7;
  return result;
}

void sub_2582A18E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100]((v21 - 112), 0);
  _Unwind_Resume(a1);
}

void sub_2582A2614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, blahtex::MathmlNode **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, blahtex::MathmlNode *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a40, 0);
  if (*(v48 - 169) < 0)
  {
    operator delete(*(v48 - 192));
  }

  v50 = *(v48 - 160);
  if (v50)
  {
    *(v48 - 152) = v50;
    operator delete(v50);
  }

  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](a10, 0);
  _Unwind_Resume(a1);
}

void std::vector<blahtex::MathmlEnvironment>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<blahtex::MathmlEnvironment>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

void blahtex::ForcedSpaceOpsTable(blahtex *this)
{
  {
    std::unordered_set<std::wstring_view>::unordered_set<std::wstring_view const*>(&blahtex::ForcedSpaceOpsTable(void)::forcedSpaceOpsTable, &blahtex::forcedSpaceOpsArray, &blahtex::Manager::gTexvcCompatibilityMacros);
  }
}

uint64_t std::list<blahtex::MathmlNode *>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

blahtex::MathmlNode *std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](blahtex::MathmlNode **a1, blahtex::MathmlNode *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    blahtex::MathmlNode::~MathmlNode(result);

    JUMPOUT(0x259C7CB70);
  }

  return result;
}

uint64_t blahtex::LayoutTree::FixOutOfSequenceMathmlCharacter(uint64_t result)
{
  if (result > 120075)
  {
    if (result > 120132)
    {
      if (result <= 120135)
      {
        if (result == 120133)
        {
          return 8469;
        }

        else if (result == 120135)
        {
          return 8473;
        }
      }

      else
      {
        switch(result)
        {
          case 0x1D548:
            return 8474;
          case 0x1D549:
            return 8477;
          case 0x1D551:
            return 8484;
        }
      }
    }

    else if (result <= 120092)
    {
      if (result == 120076)
      {
        return 8465;
      }

      else if (result == 120085)
      {
        return 8476;
      }
    }

    else
    {
      switch(result)
      {
        case 0x1D51D:
          return 8488;
        case 0x1D53A:
          return 8450;
        case 0x1D53F:
          return 8461;
      }
    }
  }

  else if (result > 119974)
  {
    if (result <= 119980)
    {
      if (result == 119975)
      {
        return 8466;
      }

      else if (result == 119976)
      {
        return 8499;
      }
    }

    else
    {
      switch(result)
      {
        case 0x1D4AD:
          return 8475;
        case 0x1D506:
          return 8493;
        case 0x1D50B:
          return 8460;
      }
    }
  }

  else if (result <= 119968)
  {
    if (result == 119965)
    {
      return 8492;
    }

    else if (result == 119968)
    {
      return 8496;
    }
  }

  else
  {
    switch(result)
    {
      case 0x1D4A1:
        return 8497;
      case 0x1D4A3:
        return 8459;
      case 0x1D4A4:
        return 8464;
    }
  }

  return result;
}

uint64_t std::wstring::basic_string[abi:ne200100](uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 5)
  {
    if ((a2 | 1) == 5)
    {
      v3 = 7;
    }

    else
    {
      v3 = (a2 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(result, v3);
  }

  *(result + 23) = a2;
  if (a2)
  {
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = (result + 8);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_2582D01E0)));
      if (vuzp1_s16(v8, *v5.i8).u8[0])
      {
        *(v6 - 2) = a3;
      }

      if (vuzp1_s16(v8, *&v5).i8[2])
      {
        *(v6 - 1) = a3;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_2582D0B80)))).i32[1])
      {
        *v6 = a3;
        v6[1] = a3;
      }

      v4 += 4;
      v6 += 4;
    }

    while (((a2 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v4);
  }

  *(result + 4 * a2) = 0;
  return result;
}

void blahtex::LayoutTree::SymbolOperator::BuildMathmlTree(uint64_t a1)
{
  {
    std::unordered_set<wchar_t>::unordered_set<wchar_t const*>(&blahtex::LayoutTree::SymbolOperator::BuildMathmlTree(blahtex::MathmlOptions const&,blahtex::MathmlEnvironment const&,unsigned int &)const::_stretchyByDefaultTable, "(", blahtex::LayoutTree::SymbolOperator::BuildMathmlTree(blahtex::MathmlOptions const&,blahtex::MathmlEnvironment const&,unsigned int &)const::symmetricOpsArray);
  }

  {
    std::unordered_set<wchar_t>::unordered_set<wchar_t const*>(&blahtex::LayoutTree::SymbolOperator::BuildMathmlTree(blahtex::MathmlOptions const&,blahtex::MathmlEnvironment const&,unsigned int &)const::_symmetricOpsTable, blahtex::LayoutTree::SymbolOperator::BuildMathmlTree(blahtex::MathmlOptions const&,blahtex::MathmlEnvironment const&,unsigned int &)const::symmetricOpsArray, dword_2582D4A28);
  }

  std::wstring::basic_string[abi:ne200100]<0>(&__p, dword_2582D4A28);
  v2 = blahtex::Token::operator==((a1 + 24), &__p);
  v3 = v2;
  if (v5 < 0)
  {
    operator delete(__p);
    if (v3)
    {
LABEL_5:
      operator new();
    }
  }

  else if (v2)
  {
    goto LABEL_5;
  }

  {
    {
      std::unordered_set<wchar_t>::unordered_set<wchar_t const*>(&blahtex::LayoutTree::SymbolOperator::BuildMathmlTree(blahtex::MathmlOptions const&,blahtex::MathmlEnvironment const&,unsigned int &)const::accentByDefaultTable, &blahtex::LayoutTree::SymbolOperator::BuildMathmlTree(blahtex::MathmlOptions const&,blahtex::MathmlEnvironment const&,unsigned int &)const::accentByDefaultArray, dword_2582D4A64);
    }
  }

  operator new();
}

void sub_2582A3A28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2582A3A20);
}

blahtex::MathmlNode *blahtex::LayoutTree::Phantom::BuildMathmlTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(&v11, *(a1 + 8), *(a1 + 20));
  (*(**(a1 + 56) + 24))(&v10);
  v9 = 0;
  v6 = v10;
  if (*v10 != 5)
  {
    operator new();
  }

  v10 = 0;
  *v6 = 14;
  v9 = 0;
  v8 = v6;
  blahtex::LayoutTree::AdjustMathmlEnvironment(&v8, *a2, *(a2 + 8), v11, v12, a3);
  if (v8)
  {
    blahtex::MathmlNode::~MathmlNode(v8);
    MEMORY[0x259C7CB70]();
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    blahtex::MathmlNode::~MathmlNode(result);
    return MEMORY[0x259C7CB70]();
  }

  return result;
}

void sub_2582A3E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, blahtex::MathmlNode *a23, blahtex::MathmlNode *a24)
{
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a23, 0);
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a24, 0);
  _Unwind_Resume(a1);
}

blahtex::MathmlNode *blahtex::LayoutTree::Cancel::BuildMathmlTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(&v13, *(a1 + 8), *(a1 + 20));
  (*(**(a1 + 56) + 24))(&v12);
  v11 = 0;
  v6 = v12;
  if (*v12 != 5)
  {
    operator new();
  }

  v12 = 0;
  v11 = v6;
  *v6 = 15;
  v10 = 20;
  v9[4] = &v10;
  v7 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(v6 + 8, &v10);
  MEMORY[0x259C7C920](v7 + 5, dword_2582D4A64);
  v11 = 0;
  v9[0] = v6;
  blahtex::LayoutTree::AdjustMathmlEnvironment(v9, *a2, *(a2 + 8), v13, v14, a3);
  if (v9[0])
  {
    blahtex::MathmlNode::~MathmlNode(v9[0]);
    MEMORY[0x259C7CB70]();
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    blahtex::MathmlNode::~MathmlNode(result);
    return MEMORY[0x259C7CB70]();
  }

  return result;
}

void sub_2582A4130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, blahtex::MathmlNode *a25)
{
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a25, 0);
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100]((v25 - 72), 0);
  _Unwind_Resume(a1);
}

blahtex::MathmlNode *blahtex::LayoutTree::Sqrt::BuildMathmlTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(&v12, *(a1 + 8), *(a1 + 20));
  (*(**(a1 + 56) + 24))(&v11);
  v10 = 0;
  v6 = v11;
  if (*v11 != 5)
  {
    operator new();
  }

  v10 = v11;
  v11 = 0;
  *v6 = 16;
  std::wstring::basic_string[abi:ne200100]<0>(__p, &dword_2582D48AC);
  blahtex::Token::Token(&v9, __p, *(a1 + 48));
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  blahtex::Token::operator=((v6 + 32), &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v10 = 0;
  v8 = v6;
  blahtex::LayoutTree::AdjustMathmlEnvironment(&v8, *a2, *(a2 + 8), v12, v13, a3);
  if (v8)
  {
    blahtex::MathmlNode::~MathmlNode(v8);
    MEMORY[0x259C7CB70]();
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    blahtex::MathmlNode::~MathmlNode(result);
    return MEMORY[0x259C7CB70]();
  }

  return result;
}

void sub_2582A43E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, blahtex::MathmlNode *a17, blahtex::MathmlNode *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a17, 0);
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a18, 0);
  _Unwind_Resume(a1);
}

void sub_2582A46E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, blahtex::MathmlNode *a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a9, 0);
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a18, 0);
  _Unwind_Resume(a1);
}

void blahtex::LayoutTree::Scripts::BuildMathmlTree(uint64_t a1)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(v8, *(a1 + 8), *(a1 + 20));
  v4 = 0;
  v5 = v8[0];
  LOBYTE(v5) = 0;
  v6 = v8[1] + 1;
  v7 = v8[2];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*v2 + 24))(&__p);
    v4 = __p;
    operator new();
  }

  operator new();
}

void sub_2582A4C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, blahtex::MathmlNode *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, blahtex::MathmlNode *a31)
{
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&__p, 0);
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a17, 0);
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a31, 0);
  _Unwind_Resume(a1);
}

void blahtex::LayoutTree::Fraction::BuildMathmlTree(uint64_t a1)
{
  blahtex::MathmlEnvironment::MathmlEnvironment(&v3, *(a1 + 8), *(a1 + 20));
  v1 = v3;
  v2 = v4;
  if (v3 == 1)
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    ++HIDWORD(v1);
  }

  operator new();
}

void sub_2582A500C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, blahtex::MathmlNode *a9, uint64_t a10, blahtex::MathmlNode *a11)
{
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a9, 0);
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](&a11, 0);
  _Unwind_Resume(a1);
}

void blahtex::LayoutTree::Space::BuildMathmlTree(uint64_t a1)
{
  if (*(a1 + 28))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Unexpected lonely automatic space in Space::BuildMathmlTree");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

blahtex *blahtex::LayoutTree::Fenced::BuildMathmlTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *(a1 + 88);
  blahtex::MathmlEnvironment::MathmlEnvironment(__p, *(a1 + 8), *(a1 + 20));
  result = (*(*v8 + 24))(&v16, v8, a2, __p, a3);
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 47))
  {
    goto LABEL_7;
  }

  if ((*(a1 + 79) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 64))
    {
LABEL_7:
      if (*v16 == 5)
      {
        operator new();
      }

      if ((*(v16 + 55) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 40))
        {
          goto LABEL_19;
        }
      }

      else if (!*(v16 + 55))
      {
        goto LABEL_19;
      }

      blahtex::ForcedSpaceOpsTable(result);
      v10 = *(v16 + 55);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = *(v16 + 32);
        v10 = *(v16 + 40);
      }

      else
      {
        v11 = (v16 + 32);
      }

      __p[0] = v11;
      __p[1] = v10;
      if (std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::ForcedSpaceOpsTable(void)::forcedSpaceOpsTable, __p))
      {
        LODWORD(v15) = 4;
        __p[0] = &v15;
        v12 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(v16 + 8, &v15);
        MEMORY[0x259C7C920](v12 + 5, "0");
        LODWORD(v15) = 5;
        __p[0] = &v15;
        v13 = std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(v16 + 8, &v15);
        MEMORY[0x259C7C920](v13 + 5, "0");
      }

LABEL_19:
      operator new();
    }
  }

  else if (*(a1 + 79))
  {
    goto LABEL_7;
  }

  *a4 = v16;
  return result;
}

void sub_2582A5B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void sub_2582A62A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (*(v48 - 161) < 0)
  {
    operator delete(*(v48 - 184));
  }

  if (*(v48 - 113) < 0)
  {
    operator delete(*(v48 - 136));
  }

  std::unique_ptr<blahtex::MathmlNode>::reset[abi:ne200100]((v48 - 104), 0);
  _Unwind_Resume(a1);
}

uint64_t blahtex::LayoutTree::onlyPlainLatinLetters(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 < 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 1;
  }

  v3 = 4 * v1;
  while (1)
  {
    v4 = *v2;
    if (*v2 >= 97)
    {
      break;
    }

    if (v4 - 91 < 0xFFFFFFE6)
    {
      return 0;
    }

LABEL_11:
    ++v2;
    v3 -= 4;
    if (!v3)
    {
      return 1;
    }
  }

  if (v4 <= 0x7A)
  {
    goto LABEL_11;
  }

  return 0;
}

void blahtex::LayoutTree::Row::Optimise(blahtex::LayoutTree::Row *this)
{
  v1 = this + 24;
  v2 = *(this + 4);
  if (v2 != this + 24)
  {
    v4 = this + 24;
    v5 = this + 24;
    do
    {
      (*(**(v2 + 2) + 16))(*(v2 + 2));
      v6 = *(v2 + 2);
      if (v6)
      {
        if (v7)
        {
          if (v4 != v1)
          {
            v8 = v7;
            v9 = *(v4 + 2);
            if (v9)
            {
            }

            if (*(v9 + 28) == 1)
            {
              v8[28] = 1;
            }

            *(v8 + 6) += *(v9 + 6);
            v11 = *v4;
            v10 = *(v4 + 1);
            *(v11 + 8) = v10;
            *v10 = v11;
            --*(this + 5);
            operator delete(v4);
          }

          v4 = v2;
          goto LABEL_54;
        }
      }

      {
        goto LABEL_15;
      }

      {
        std::unordered_map<std::wstring_view,std::wstring_view>::unordered_map<std::pair<std::wstring_view,std::wstring_view> const*>(blahtex::LayoutTree::Row::Optimise(void)::negationTable, &blahtex::LayoutTree::gNegationArray, &blahtex::LayoutTree::Node::PrintFields(void)const::gFlavourStrings);
      }

      v12 = *(v5 + 2);
      if (v12)
      {
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v2 + 2);
      if (v14)
      {
        if (v13)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v15 = 0;
        if (v13)
        {
LABEL_23:
          std::wstring::basic_string[abi:ne200100]<0>(&__p, dword_2582D4A28);
          v16 = blahtex::Token::operator==(v13 + 6, &__p);
          if (v15)
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            v18 = *(v15 + 47);
            if ((v18 & 0x8000000000000000) != 0)
            {
              v19 = v15[3];
              v18 = v15[4];
            }

            else
            {
              v19 = v15 + 3;
            }

            v51[0] = v19;
            v51[1] = v18;
            v23 = std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(blahtex::LayoutTree::Row::Optimise(void)::negationTable, v51);
            v24 = v23 != 0;
          }

          else
          {
            v23 = 0;
            v24 = 0;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (v24)
            {
LABEL_49:
              if (v4 != v1)
              {
                v28 = *v4;
                v27 = *(v4 + 1);
                *(v28 + 8) = v27;
                *v27 = v28;
                --*(this + 5);
                operator delete(v4);
              }

              MEMORY[0x259C7C930](v15 + 3, v23[4], v23[5]);
LABEL_52:
              v30 = *v5;
              v29 = *(v5 + 1);
              *(v30 + 8) = v29;
              *v29 = v30;
              --*(this + 5);
              operator delete(v5);
LABEL_53:
              v5 = v2;
              v4 = v1;
              goto LABEL_54;
            }
          }

          else if (v24)
          {
            goto LABEL_49;
          }

          v14 = *(v2 + 2);
          if (v14)
          {
            goto LABEL_31;
          }

LABEL_34:
          v21 = 0;
          v22 = 1;
          goto LABEL_37;
        }
      }

      if (!v14)
      {
        goto LABEL_34;
      }

LABEL_31:
      while (1)
      {
        if (!v20 || (v20[24] & 1) == 0)
        {
          break;
        }

        v14 = *(v20 + 4);
        if (!v14)
        {
          goto LABEL_34;
        }
      }

      v22 = 0;
LABEL_37:
      v25 = *(v5 + 2);
      if (!v25)
      {
        goto LABEL_53;
      }

      v49 = v22;
      v50 = v21;
      if (!v50)
      {
        goto LABEL_53;
      }

      if (!v26)
      {
        goto LABEL_53;
      }

      if (v50[2].__r_.__value_.__s.__data_[2] != v26[2].__r_.__value_.__s.__data_[2])
      {
        goto LABEL_53;
      }

      if (v50->__r_.__value_.__s.__data_[2] != v26->__r_.__value_.__s.__data_[2])
      {
        goto LABEL_53;
      }

      v48 = v26;
      if (HIDWORD(v50->__r_.__value_.__r.__words[2]) != HIDWORD(v26->__r_.__value_.__r.__words[2]))
      {
        goto LABEL_53;
      }

      if (v49)
      {
        v46 = 0;
        v47 = 0;
      }

      else
      {
      }

      v32 = v31;
      if (v13)
      {
        v33 = v47;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        std::wstring::basic_string[abi:ne200100]<0>(v55, ".");
        if (blahtex::Token::operator==(v13 + 6, v55))
        {
          LOBYTE(v34) = 1;
          goto LABEL_79;
        }

        std::wstring::basic_string[abi:ne200100]<0>(v53, ",");
        if (blahtex::Token::operator==(v13 + 6, v53))
        {
          LOBYTE(v34) = 1;
LABEL_77:
          if (v54 < 0)
          {
            operator delete(v53[0]);
          }

LABEL_79:
          if (v56 < 0)
          {
            operator delete(v55[0]);
          }

          if (!v34)
          {
LABEL_90:
            if (v49)
            {
              goto LABEL_53;
            }

            {
              v41 = *(v5 + 2);
              if (v41)
              {
                {
                  goto LABEL_97;
                }
              }
            }

            {
              v42 = *(v5 + 2);
              if (v42)
              {
                {
                  goto LABEL_97;
                }
              }
            }

            {
              goto LABEL_53;
            }

            v45 = *(v5 + 2);
            if (v45)
            {
              {
LABEL_97:
                if (v4 != v1)
                {
                  v44 = *v4;
                  v43 = *(v4 + 1);
                  *(v44 + 8) = v43;
                  *v43 = v44;
                  --*(this + 5);
                  operator delete(v4);
                }

                blahtex::Token::append(v48 + 1, &v50[1]);
                std::swap[abi:ne200100]<blahtex::Token>(&v48[1], v50 + 1);
                goto LABEL_52;
              }
            }

            goto LABEL_15;
          }

          goto LABEL_82;
        }

        LOBYTE(v34) = 0;
        if (!v32 || !v46)
        {
          goto LABEL_77;
        }
      }

      else if (!v31 || !v46)
      {
        goto LABEL_90;
      }

      std::wstring::basic_string[abi:ne200100]<0>(&__p, ".");
      if (blahtex::Token::operator==(v46 + 6, &__p))
      {
        v34 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(v51, ",");
        v34 = blahtex::Token::operator==(v46 + 6, v51);
        if (v52 < 0)
        {
          operator delete(v51[0]);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v33)
      {
        goto LABEL_77;
      }

      if (!v34)
      {
        goto LABEL_90;
      }

LABEL_82:
      if (v4 != v1)
      {
        v36 = *v4;
        v35 = *(v4 + 1);
        *(v36 + 8) = v35;
        *v35 = v36;
        --*(this + 5);
        operator delete(v4);
      }

      blahtex::Token::append(v48 + 1, &v50[1]);
      if (!v47)
      {
        v40 = *v2;
        v39 = *(v2 + 1);
        *(v40 + 8) = v39;
        *v39 = v40;
        --*(this + 5);
        operator delete(v2);
        v2 = v5;
        goto LABEL_16;
      }

      blahtex::Token::Token(&__p, &v48[1]);
      blahtex::Token::operator=(v48 + 1, v50 + 1);
      blahtex::Token::operator=(v50 + 1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v38 = *v5;
      v37 = *(v5 + 1);
      *(v38 + 8) = v37;
      *v37 = v38;
      --*(this + 5);
      operator delete(v5);
LABEL_15:
      v5 = v2;
LABEL_16:
      v4 = v1;
LABEL_54:
      v2 = *(v2 + 1);
    }

    while (v2 != v1);
  }
}

void std::swap[abi:ne200100]<blahtex::Token>(blahtex::Token *a1, std::wstring *a2)
{
  blahtex::Token::Token(&__p, a1);
  blahtex::Token::operator=(a1, a2);
  blahtex::Token::operator=(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2582A6FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Scripts::Optimise(blahtex::LayoutTree::Scripts *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  result = *(this + 5);
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t blahtex::LayoutTree::Fraction::Optimise(blahtex::LayoutTree::Fraction *this)
{
  (*(**(this + 7) + 16))(*(this + 7));
  v2 = *(**(this + 8) + 16);

  return v2();
}

uint64_t blahtex::LayoutTree::Root::Optimise(blahtex::LayoutTree::Root *this)
{
  (*(**(this + 7) + 16))(*(this + 7));
  v2 = *(**(this + 8) + 16);

  return v2();
}

uint64_t blahtex::LayoutTree::Table::Optimise(uint64_t this)
{
  v2 = *(this + 24);
  v1 = *(this + 32);
  if (v2 != v1)
  {
    v3 = this;
    do
    {
      v4 = *v2;
      if (*v2 != v2[1])
      {
        do
        {
          v5 = *v4++;
          this = (*(*v5 + 16))(v5);
        }

        while (v4 != v2[1]);
        v1 = *(v3 + 32);
      }

      v2 += 3;
    }

    while (v2 != v1);
  }

  return this;
}

uint64_t blahtex::LayoutTree::Node::PrintFields@<X0>(blahtex::LayoutTree::Node *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 3);
  v4 = &(&blahtex::LayoutTree::Node::PrintFields(void)const::gFlavourStrings)[2 * v3];
  v5 = v4[1];
  if (v5 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = *v4;
  if (v5 >= 5)
  {
    if ((v5 | 1) == 5)
    {
      v9 = 7;
    }

    else
    {
      v9 = (v5 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a2, v9);
  }

  *(a2 + 23) = v5;
  v8 = a2;
  if (v5)
  {
    memmove(a2, v7, 4 * v5);
    LODWORD(v3) = *(this + 3);
  }

  else
  {
    v8 = a2;
  }

  *(v8 + 4 * v5) = 0;
  if (v3 == 1)
  {
    std::wstring::append(a2, dword_2582D4E08);
    v10 = (&blahtex::LayoutTree::Node::PrintFields(void)const::gLimitsStrings + 2 * *(this + 4));
    std::wstring::append(a2, *v10, v10[1]);
  }

  std::wstring::append(a2, dword_2582D4E08);
  v11 = (&blahtex::LayoutTree::Node::PrintFields(void)const::gStyleStrings + 2 * *(this + 2));
  std::wstring::append(a2, *v11, v11[1]);
  std::wostringstream::basic_ostringstream[abi:ne200100](&v22);
  v12 = v22;
  *(&v22 + *(v22 - 3) + 8) = *(&v22 + *(v22 - 3) + 8) & 0xFFFFFFB5 | 8;
  *(&v23.__binp_ + *(v12 - 3)) = 6;
  LODWORD(__p[0]) = 48;
  v13 = std::operator<<[abi:ne200100]<std::char_traits<wchar_t>>(&v22, __p);
  MEMORY[0x259C7CA80](v13, *(this + 5));
  std::wstringbuf::str(&v19, &v23);
  v14 = std::wstring::insert(&v19, 0, dword_2582D4E10);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v21 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v21 >= 0)
  {
    v17 = HIBYTE(v21);
  }

  else
  {
    v17 = __p[1];
  }

  std::wstring::append(a2, v16, v17);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__str_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__str_.__r_.__value_.__l.__data_);
  }

  v23.__vftable = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v23.__loc_);
  std::wostream::~wostream();
  return MEMORY[0x259C7CB30](&v24);
}

void sub_2582A7588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::wostringstream::~wostringstream(&a22);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(a1);
}

void blahtex::LayoutTree::Row::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v18, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = v18[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582D4E20, 4);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v17 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v11 = v17;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v14 = (a1 + 24);
  for (i = *(a1 + 4); i != v14; i = *(i + 8))
  {
    (*(**(i + 16) + 32))(*(i + 16), a2, (a3 + 1));
  }
}

void sub_2582A778C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolIdentifier::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v23, 2 * a3, 32);
  if ((v24 & 0x80u) == 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = v23[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582D4E34, 18);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v12, &unk_2582D4E80, 2);
  v14 = blahtex::MathmlFontString(*(a1 + 56));
  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, *v14, v14[1]);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, dword_2582D4E08, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v22 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = __p[1];
  }

  v19 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v25, MEMORY[0x277D82688]);
  (v20->__vftable[3].__on_zero_shared)(v20, 10);
  std::locale::~locale(&v25);
  std::wostream::put();
  std::wostream::flush();
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_2582A797C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolNumber::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v23, 2 * a3, 32);
  if ((v24 & 0x80u) == 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = v23[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582D4E8C, 14);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v12, &unk_2582D4E80, 2);
  v14 = blahtex::MathmlFontString(*(a1 + 56));
  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, *v14, v14[1]);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, dword_2582D4E08, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v22 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = __p[1];
  }

  v19 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v25, MEMORY[0x277D82688]);
  (v20->__vftable[3].__on_zero_shared)(v20, 10);
  std::locale::~locale(&v25);
  std::wostream::put();
  std::wostream::flush();
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_2582A7B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolText::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v23, 2 * a3, 32);
  if ((v24 & 0x80u) == 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = v23[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582D4EC8, 12);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v12, &unk_2582D4E80, 2);
  v14 = blahtex::MathmlFontString(*(a1 + 56));
  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, *v14, v14[1]);
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, dword_2582D4E08, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v22 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = __p[1];
  }

  v19 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v25, MEMORY[0x277D82688]);
  (v20->__vftable[3].__on_zero_shared)(v20, 10);
  std::locale::~locale(&v25);
  std::wostream::put();
  std::wostream::flush();
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_2582A7D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolOperator::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](&__p, 2 * a3, 32);
  if ((v34 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v34 & 0x80u) == 0)
  {
    v6 = v34;
  }

  else
  {
    v6 = v33;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, p_p, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582D4EFC, 16);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v12, &unk_2582D4E80, 2);
  v14 = blahtex::MathmlFontString(*(a1 + 56));
  v15 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, *v14, v14[1]);
  if (*(a1 + 60))
  {
    v16 = &unk_2582D4F40;
  }

  else
  {
    v16 = &unk_2582D4F68;
  }

  if (*(a1 + 60))
  {
    v17 = 9;
  }

  else
  {
    v17 = 13;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v15, v16, v17);
  if (*(a1 + 88))
  {
    v19 = &unk_2582D4FA0;
  }

  else
  {
    v19 = &dword_2582D48AC;
  }

  if (*(a1 + 88))
  {
    v20 = 7;
  }

  else
  {
    v20 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v18, v19, v20);
  if (v34 < 0)
  {
    operator delete(__p);
  }

  v21 = *(a1 + 87);
  if (v21 < 0)
  {
    v21 = *(a1 + 72);
  }

  if (v21)
  {
    v22 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582D4FC0, 7);
    v23 = *(a1 + 87);
    if (v23 >= 0)
    {
      v24 = a1 + 64;
    }

    else
    {
      v24 = *(a1 + 64);
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 87);
    }

    else
    {
      v25 = *(a1 + 72);
    }

    v26 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v22, v24, v25);
    std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v26, &unk_2582D4FE0, 1);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, dword_2582D4E08, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, &__p);
  if ((v34 & 0x80u) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p;
  }

  if ((v34 & 0x80u) == 0)
  {
    v29 = v34;
  }

  else
  {
    v29 = v33;
  }

  v30 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v27, v28, v29);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v35, MEMORY[0x277D82688]);
  (v31->__vftable[3].__on_zero_shared)(v31, 10);
  std::locale::~locale(&v35);
  std::wostream::put();
  std::wostream::flush();
  if (v34 < 0)
  {
    operator delete(__p);
  }
}

void sub_2582A7FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::LayoutTree::Space::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](__p, 2 * a3, 32);
  if ((v12 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582D4FE8, 6);
  MEMORY[0x259C7CA70](v8, *(a1 + 24));
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 28) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582D5004, 17);
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v9 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
  (v9->__vftable[3].__on_zero_shared)(v9, 10);
  std::locale::~locale(__p);
  std::wostream::put();
  return std::wostream::flush();
}

void blahtex::LayoutTree::Scripts::Print(uint64_t a1, void *a2, int a3)
{
  v6 = 2 * a3;
  std::wstring::basic_string[abi:ne200100](&v36, 2 * a3, 32);
  if ((v38 & 0x80u) == 0)
  {
    v7 = &v36;
  }

  else
  {
    v7 = v36;
  }

  if ((v38 & 0x80u) == 0)
  {
    v8 = v38;
  }

  else
  {
    v8 = v37;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, &unk_2582D504C, 8);
  if (*(a1 + 24))
  {
    v11 = &unk_2582D5070;
  }

  else
  {
    v11 = &unk_2582D5090;
  }

  if (*(a1 + 24))
  {
    v12 = 7;
  }

  else
  {
    v12 = 9;
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v10, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, dword_2582D4E08, 1);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v35 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v16 = v35;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v14, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v39, MEMORY[0x277D82688]);
  (v18->__vftable[3].__on_zero_shared)(v18, 10);
  std::locale::~locale(&v39);
  std::wostream::put();
  std::wostream::flush();
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v38 < 0)
  {
    operator delete(v36);
  }

  if (*(a1 + 32))
  {
    std::wstring::basic_string[abi:ne200100](&v36, v6 + 2, 32);
    if ((v38 & 0x80u) == 0)
    {
      v19 = &v36;
    }

    else
    {
      v19 = v36;
    }

    if ((v38 & 0x80u) == 0)
    {
      v20 = v38;
    }

    else
    {
      v20 = v37;
    }

    v21 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v19, v20);
    v22 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v21, &unk_2582D50B8, 4);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
    (v23->__vftable[3].__on_zero_shared)(v23, 10);
    std::locale::~locale(__p);
    std::wostream::put();
    std::wostream::flush();
    if (v38 < 0)
    {
      operator delete(v36);
    }

    (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 2));
  }

  if (*(a1 + 40))
  {
    std::wstring::basic_string[abi:ne200100](&v36, v6 + 2, 32);
    if ((v38 & 0x80u) == 0)
    {
      v24 = &v36;
    }

    else
    {
      v24 = v36;
    }

    if ((v38 & 0x80u) == 0)
    {
      v25 = v38;
    }

    else
    {
      v25 = v37;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v26, &unk_2582D50CC, 5);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
    (v28->__vftable[3].__on_zero_shared)(v28, 10);
    std::locale::~locale(__p);
    std::wostream::put();
    std::wostream::flush();
    if (v38 < 0)
    {
      operator delete(v36);
    }

    (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 2));
  }

  if (*(a1 + 48))
  {
    std::wstring::basic_string[abi:ne200100](&v36, v6 + 2, 32);
    if ((v38 & 0x80u) == 0)
    {
      v29 = &v36;
    }

    else
    {
      v29 = v36;
    }

    if ((v38 & 0x80u) == 0)
    {
      v30 = v38;
    }

    else
    {
      v30 = v37;
    }

    v31 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v29, v30);
    v32 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v31, &unk_2582D50E4, 5);
    std::ios_base::getloc((v32 + *(*v32 - 24)));
    v33 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
    (v33->__vftable[3].__on_zero_shared)(v33, 10);
    std::locale::~locale(__p);
    std::wostream::put();
    std::wostream::flush();
    if (v38 < 0)
    {
      operator delete(v36);
    }

    (*(**(a1 + 48) + 32))(*(a1 + 48), a2, (a3 + 2));
  }
}

void sub_2582A8638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Fraction::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](&__p, 2 * a3, 32);
  if ((v16 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v15;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, p_p, v7);
  std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582D50FC, 9);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, &unk_2582D5124, 18);
  }

  blahtex::LayoutTree::Node::PrintFields(a1, &__p);
  if ((v16 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v10 = v16;
  }

  else
  {
    v10 = v15;
  }

  v11 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v9, v10);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v17, MEMORY[0x277D82688]);
  (v12->__vftable[3].__on_zero_shared)(v12, 10);
  std::locale::~locale(&v17);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p);
  }

  (*(**(a1 + 56) + 32))(*(a1 + 56), a2, (a3 + 1));
  return (*(**(a1 + 64) + 32))(*(a1 + 64), a2, (a3 + 1));
}

void sub_2582A8874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::LayoutTree::Fenced::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v27, 2 * a3, 32);
  if ((v28 & 0x80u) == 0)
  {
    v6 = v27;
  }

  else
  {
    v6 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v7 = v28;
  }

  else
  {
    v7 = v27[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582D5170, 8);
  v10 = *(a1 + 47);
  if (v10 >= 0)
  {
    v11 = a1 + 24;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, &unk_2582D5194, 3);
  v15 = *(a1 + 79);
  if (v15 >= 0)
  {
    v16 = a1 + 56;
  }

  else
  {
    v16 = *(a1 + 56);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 79);
  }

  else
  {
    v17 = *(a1 + 64);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v14, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v18, &unk_2582D4E80, 2);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v26 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v21 = v26;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v19, v20, v21);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v29, MEMORY[0x277D82688]);
  (v23->__vftable[3].__on_zero_shared)(v23, 10);
  std::locale::~locale(&v29);
  std::wostream::put();
  std::wostream::flush();
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  return (*(**(a1 + 88) + 32))(*(a1 + 88), a2, (a3 + 1));
}

void sub_2582A8A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::Stretchy::Print(uint64_t a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v20, 2 * a3, 32);
  if ((v21 & 0x80u) == 0)
  {
    v5 = v20;
  }

  else
  {
    v5 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v6 = v21;
  }

  else
  {
    v6 = v20[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, &unk_2582D5170, 8);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v12, &unk_2582D5194, 3);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v19 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v15 = v19;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v22, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v22);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_2582A8C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Phantom::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v17, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582D51A4, 8);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return (*(**(a1 + 7) + 32))(*(a1 + 7), a2, (a3 + 1));
}

void sub_2582A8E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Cancel::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v17, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582D51C8, 7);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return (*(**(a1 + 7) + 32))(*(a1 + 7), a2, (a3 + 1));
}

void sub_2582A8FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Sqrt::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v17, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582D51E8, 5);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  return (*(**(a1 + 7) + 32))(*(a1 + 7), a2, (a3 + 1));
}

void sub_2582A91CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::LayoutTree::Root::Print(blahtex::LayoutTree::Node *a1, void *a2, int a3)
{
  std::wstring::basic_string[abi:ne200100](v17, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = v17;
  }

  else
  {
    v6 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v8, &unk_2582D5200, 5);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v13->__vftable[3].__on_zero_shared)(v13, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  (*(**(a1 + 7) + 32))(*(a1 + 7), a2, (a3 + 1));
  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_2582A93CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::Table::Print(uint64_t a1, void *a2, int a3)
{
  v6 = 2 * a3;
  std::wstring::basic_string[abi:ne200100](&v30, 2 * a3, 32);
  if ((v32 & 0x80u) == 0)
  {
    v7 = &v30;
  }

  else
  {
    v7 = v30;
  }

  if ((v32 & 0x80u) == 0)
  {
    v8 = v32;
  }

  else
  {
    v8 = v31;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v9, &unk_2582D525C, 6);
  blahtex::LayoutTree::Node::PrintFields(a1, __p);
  if ((v29 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v12 = v29;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v10, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v13, dword_2582D4E08, 1);
  v15 = (&blahtex::LayoutTree::Table::Print(std::wostream &,int)const::gAlignStrings + 2 * *(a1 + 48));
  v16 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v14, *v15, v15[1]);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v33, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v33);
  std::wostream::put();
  std::wostream::flush();
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v30);
  }

  v18 = *(a1 + 24);
  if (v18 != *(a1 + 32))
  {
    v19 = v6 + 2;
    v20 = MEMORY[0x277D82688];
    do
    {
      std::wstring::basic_string[abi:ne200100](&v30, v19, 32);
      if ((v32 & 0x80u) == 0)
      {
        v21 = &v30;
      }

      else
      {
        v21 = v30;
      }

      if ((v32 & 0x80u) == 0)
      {
        v22 = v32;
      }

      else
      {
        v22 = v31;
      }

      v23 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v21, v22);
      v24 = std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v23, &unk_2582D5278, 9);
      std::ios_base::getloc((v24 + *(*v24 - 24)));
      v25 = std::locale::use_facet(__p, v20);
      (v25->__vftable[3].__on_zero_shared)(v25, 10);
      std::locale::~locale(__p);
      std::wostream::put();
      std::wostream::flush();
      if (v32 < 0)
      {
        operator delete(v30);
      }

      for (i = *v18; i != v18[1]; ++i)
      {
        v27 = *i;
        (*(*v27 + 32))(v27, a2, (a3 + 2));
      }

      v18 += 3;
    }

    while (v18 != *(a1 + 32));
  }
}

void sub_2582A96E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::LayoutTree::SymbolIdentifier::~SymbolIdentifier(void **this)
{
  *this = &unk_28696B600;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_28696B600;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::SymbolNumber::~SymbolNumber(void **this)
{
  *this = &unk_28696B600;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_28696B600;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::SymbolText::~SymbolText(void **this)
{
  *this = &unk_28696B600;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_28696B600;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::SymbolOperator::~SymbolOperator(void **this)
{
  *this = &unk_28696B310;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_28696B600;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_28696B310;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  *this = &unk_28696B600;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Scripts::~Scripts(blahtex::LayoutTree::Scripts *this)
{
  *this = &unk_28696B380;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_28696B380;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Fraction::~Fraction(blahtex::LayoutTree::Fraction *this)
{
  *this = &unk_28696B3B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_28696B3B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Fenced::~Fenced(blahtex::LayoutTree::Fenced *this)
{
  *this = &unk_28696B408;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_28696B408;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Stretchy::~Stretchy(void **this)
{
  *this = &unk_28696B458;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_28696B458;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Phantom::~Phantom(blahtex::LayoutTree::Phantom *this)
{
  *this = &unk_28696B4A8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_28696B4A8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Cancel::~Cancel(blahtex::LayoutTree::Cancel *this)
{
  *this = &unk_28696B4F8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_28696B4F8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Sqrt::~Sqrt(blahtex::LayoutTree::Sqrt *this)
{
  *this = &unk_28696B548;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_28696B548;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x259C7CB70);
}

void blahtex::LayoutTree::Root::~Root(blahtex::LayoutTree::Root *this)
{
  *this = &unk_28696B598;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_28696B598;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x259C7CB70);
}

std::wstring *blahtex::Exception::Exception(std::wstring *this, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::wstring::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (v10)
  {
    std::vector<std::wstring>::push_back[abi:ne200100](&this[1], a3);
  }

  v11 = *(a4 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11)
  {
    std::vector<std::wstring>::push_back[abi:ne200100](&this[1], a4);
  }

  v12 = *(a5 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a5 + 8);
  }

  if (v12)
  {
    std::vector<std::wstring>::push_back[abi:ne200100](&this[1], a5);
  }

  return this;
}

void sub_2582AA5C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

std::__split_buffer<std::wstring>::pointer std::vector<std::wstring>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::wstring>::__emplace_back_slow_path<std::wstring const&>(a1, a2);
  }

  else
  {
    std::vector<std::wstring>::__construct_one_at_end[abi:ne200100]<std::wstring const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::wstring>::__construct_one_at_end[abi:ne200100]<std::wstring const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::wstring::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::wstring>::pointer std::vector<std::wstring>::__emplace_back_slow_path<std::wstring const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::wstring::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t blahtex::MathmlNode::MathmlNode(uint64_t a1, int a2, blahtex::Token *a3)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  blahtex::Token::Token((a1 + 32), a3);
  *(a1 + 64) = a1 + 64;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t std::unordered_set<std::wstring_view>::unordered_set<std::wstring_view const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::__emplace_unique_key_args<std::wstring_view,std::wstring_view const&>(a1, v5);
      v5 += 16;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::__emplace_unique_key_args<std::wstring_view,std::wstring_view const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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
    operator new();
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

BOOL std::equal_to<std::wstring_view>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5.__size_ = *(a2 + 8);
  v5.__data_ = *a3;
  v6 = *(a3 + 8);
  v8.__data_ = v4;
  v8.__size_ = v5.__size_;
  return v5.__size_ == v6 && std::wstring_view::compare(&v8, v5) == 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

int std::wstring_view::compare(const std::wstring_view *this, std::wstring_view __sv)
{
  size = __sv.__size_;
  v3 = this->__size_;
  if (__sv.__size_ >= v3)
  {
    __sv.__size_ = this->__size_;
  }

  if (__sv.__size_)
  {
    result = wmemcmp(this->__data_, __sv.__data_, __sv.__size_);
    if (result)
    {
      return result;
    }

    v3 = this->__size_;
  }

  v6 = v3 == size;
  if (v3 < size)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void std::wstring::__init_copy_ctor_external(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __sz)
{
  if (__sz > 4)
  {
    if (__sz < 0x3FFFFFFFFFFFFFF8)
    {
      if ((__sz | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (__sz | 1) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(this, v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 4 * __sz + 4;

  memmove(this, __s, v4);
}

void std::vector<std::vector<blahtex::LayoutTree::Node *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<blahtex::LayoutTree::Node *>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<blahtex::LayoutTree::Node *>>::clear[abi:ne200100](uint64_t *a1)
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

void *std::__put_character_sequence[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C7CA30](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + 4 * a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(v7, a2, v11, a2 + 4 * a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C7CA40](v13);
  return a1;
}

void sub_2582AB2C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C7CA40](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2582AB2A8);
}

uint64_t std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= (a4 - a2) >> 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - ((a4 - a2) >> 2);
    }

    v13 = (a3 - a2) >> 2;
    if (v13 >= 1 && (*(*a1 + 96))(a1) != v13)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      std::wstring::basic_string[abi:ne200100](__p, v12, a6);
      v14 = v19 >= 0 ? __p : __p[0];
      v15 = (*(*v6 + 96))(v6, v14, v12);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15 != v12)
      {
        return 0;
      }
    }

    v16 = (a4 - a3) >> 2;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2582AB4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::__map_value_compare<blahtex::MathmlNode::Attribute,std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>,std::less<blahtex::MathmlNode::Attribute>,true>,std::allocator<std::__value_type<blahtex::MathmlNode::Attribute,std::wstring>>>::__emplace_unique_key_args<blahtex::MathmlNode::Attribute,std::piecewise_construct_t const&,std::tuple<blahtex::MathmlNode::Attribute&&>,std::tuple<>>(uint64_t a1, int *a2)
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

__int128 *std::__list_imp<blahtex::MathmlNode *>::swap(__int128 *result, uint64_t *a2)
{
  v2 = *(result + 2);
  *(result + 2) = a2[2];
  a2[2] = v2;
  v3 = *result;
  *result = *a2;
  *a2 = v3;
  if (*(result + 2))
  {
    **(result + 1) = result;
    v4 = *result;
  }

  else
  {
    *result = result;
    v4 = result;
  }

  *(v4 + 1) = result;
  if (a2[2])
  {
    *a2[1] = a2;
    v5 = *a2;
  }

  else
  {
    *a2 = a2;
    v5 = a2;
  }

  v5[1] = a2;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<blahtex::MathmlEnvironment>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::wstring_view,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,std::allocator<std::wstring_view>>::find<std::wstring_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
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
      if (v6 == v12)
      {
        if (std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
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

uint64_t std::unordered_set<wchar_t>::unordered_set<wchar_t const*>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__emplace_unique_key_args<wchar_t,wchar_t const&>(a1, v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::__emplace_unique_key_args<wchar_t,wchar_t const&>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t std::unordered_map<std::wstring_view,std::wstring_view>::unordered_map<std::pair<std::wstring_view,std::wstring_view> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::__hash_value_type<std::wstring_view,std::wstring_view>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,std::wstring_view>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,std::wstring_view>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,std::wstring_view>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,std::wstring_view> const&>(a1, v5);
      v5 += 32;
    }

    while (v5 != a3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::wstring_view,std::wstring_view>,std::__unordered_map_hasher<std::wstring_view,std::__hash_value_type<std::wstring_view,std::wstring_view>,std::hash<std::wstring_view>,std::equal_to<std::wstring_view>,true>,std::__unordered_map_equal<std::wstring_view,std::__hash_value_type<std::wstring_view,std::wstring_view>,std::equal_to<std::wstring_view>,std::hash<std::wstring_view>,true>,std::allocator<std::__hash_value_type<std::wstring_view,std::wstring_view>>>::__emplace_unique_key_args<std::wstring_view,std::pair<std::wstring_view,std::wstring_view> const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<wchar_t>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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
    operator new();
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

  if (!std::equal_to<std::wstring_view>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void blahtex::StripReservedSuffix(std::wstring *__str@<X0>, std::wstring *a2@<X8>)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size <= 7)
    {
LABEL_16:
      std::wstring::__init_copy_ctor_external(a2, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
      return;
    }
  }

  else if (size <= 7)
  {
    goto LABEL_15;
  }

  std::wstring::basic_string(&__p, __str, size - 8, 8uLL, &v9);
  v5 = 0;
  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0 && __p.__r_.__value_.__l.__size_ == 8)
  {
    v5 = wmemcmp(__p.__r_.__value_.__l.__data_, dword_2582D56D4, 8uLL) == 0;
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (v6 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (!v5)
  {
    if ((v7 & 0x80) == 0)
    {
LABEL_15:
      *&a2->__r_.__value_.__l.__data_ = *&__str->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      return;
    }

    goto LABEL_16;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = __str->__r_.__value_.__l.__size_;
  }

  std::wstring::basic_string(a2, __str, 0, v7 - 8, &__p);
}

uint64_t blahtex::MacroProcessor::MacroProcessor(uint64_t a1, blahtex::Token **a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  v3 = a1 + 40;
  *(a1 + 32) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4 == *a2)
  {
    v8 = a2[1];
  }

  else
  {
    v7 = 0;
    do
    {
      v4 = (v4 - 32);
      v7 = std::vector<blahtex::Token>::insert(v3, v7, v4) + 32;
    }

    while (v4 != v5);
    v4 = *a2;
    v8 = a2[1];
  }

  *(a1 + 68) = (v8 - v4) >> 5;
  *(a1 + 64) = 0;
  return a1;
}

void sub_2582ABE8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void blahtex::MacroProcessor::Advance(blahtex::MacroProcessor *this)
{
  v1 = *(this + 6);
  if (*(this + 5) != v1)
  {
    v3 = (v1 - 32);
    if (*(v1 - 9) < 0)
    {
      operator delete(*v3);
    }

    *(this + 6) = v3;
    ++*(this + 17);
    *(this + 64) = 0;
  }
}

void blahtex::MacroProcessor::SkipWhitespace(blahtex::MacroProcessor *this)
{
  while (1)
  {
    blahtex::MacroProcessor::Peek(this, v5);
    std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582D56F8);
    v2 = blahtex::Token::operator==(v5, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }

    if (!v2)
    {
      break;
    }

    blahtex::MacroProcessor::Advance(this);
  }
}

void sub_2582ABF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void blahtex::MacroProcessor::Peek(blahtex::MacroProcessor *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 5);
  v3 = *(this + 6);
  v5 = (this + 40);
  if (v4 == v3)
  {
LABEL_56:
    std::wstring::basic_string[abi:ne200100]<0>(v63, &dword_2582D575C);
    blahtex::Token::Token(a2, v63, 0);
    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    return;
  }

  while (1)
  {
    v7 = (*(this + 17) + 1);
    *(this + 17) = v7;
    if ((v7 + ((v3 - v4) >> 5)) >> 5 >= 0x271)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D598C);
      std::wstring::basic_string[abi:ne200100]<0>(v70, &dword_2582D575C);
      std::wstring::basic_string[abi:ne200100]<0>(&__p, &dword_2582D575C);
      std::wstring::basic_string[abi:ne200100]<0>(v68, &dword_2582D575C);
      blahtex::Exception::Exception(exception, &v65, v70, &__p, v68);
    }

    v8 = (v3 - 32);
    if (*(this + 64) == 1)
    {
      blahtex::Token::Token(a2, (v3 - 32));
      return;
    }

    std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D59C4);
    if (blahtex::Token::operator==(v8, &v65))
    {
      v9 = 1;
    }

    else
    {
      std::wstring::basic_string[abi:ne200100]<0>(v70, dword_2582D59FC);
      if (blahtex::Token::operator==(v8, v70))
      {
        v9 = 1;
      }

      else
      {
        std::wstring::basic_string[abi:ne200100]<0>(&__p, dword_2582D5A4C);
        v9 = blahtex::Token::operator==(v8, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    blahtex::Token::Token(a2, (*(this + 6) - 32));
    if (v9)
    {
      break;
    }

    v10 = std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::find<std::wstring>(this, a2);
    if (!v10)
    {
      goto LABEL_101;
    }

    v11 = *(this + 6);
    v12 = (v11 - 32);
    if (*(v11 - 9) < 0)
    {
      operator delete(*v12);
    }

    *(this + 6) = v12;
    std::vector<std::vector<blahtex::Token>>::vector[abi:ne200100](v70, *(v10 + 10));
    if (*(v10 + 10) >= 1)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if (!blahtex::MacroProcessor::ReadArgument(this, v70[0] + v13))
        {
          v56 = __cxa_allocate_exception(0x30uLL);
          std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D5940);
          blahtex::StripReservedSuffix(a2, &__p);
          std::wstring::basic_string[abi:ne200100]<0>(v68, &dword_2582D575C);
          std::wstring::basic_string[abi:ne200100]<0>(v67, &dword_2582D575C);
          blahtex::Exception::Exception(v56, &v65, &__p, v68, v67);
        }

        ++v14;
        v13 += 24;
      }

      while (v14 < *(v10 + 10));
    }

    memset(&__p, 0, sizeof(__p));
    v15 = v10[6];
    if (v15 != v10[7])
    {
      while (1)
      {
        ++*(this + 17);
        std::wstring::basic_string[abi:ne200100]<0>(&v65, &unk_2582D5B40);
        v16 = blahtex::Token::operator==(v15, &v65);
        v17 = v16;
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
          if (v17)
          {
LABEL_25:
            v18 = (v15 + 4);
            if (v15 + 4 == v10[7])
            {
              goto LABEL_117;
            }

            v19 = *(v15 + 55);
            if (v19 < 0)
            {
              if (v15[5] != 1)
              {
LABEL_117:
                v58 = __cxa_allocate_exception(0x30uLL);
                std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D5B48);
                std::wstring::basic_string[abi:ne200100]<0>(v68, &dword_2582D575C);
                std::wstring::basic_string[abi:ne200100]<0>(v67, &dword_2582D575C);
                blahtex::Exception::Exception(v58, &v65, a2, v68, v67);
              }

              v20 = *v18;
            }

            else
            {
              v20 = (v15 + 4);
              if (v19 != 1)
              {
                goto LABEL_117;
              }
            }

            v23 = *v20;
            v24 = v23 - 49;
            if (v23 < 49 || v24 >= *(v10 + 10))
            {
              v57 = __cxa_allocate_exception(0x30uLL);
              std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D5B48);
              std::wstring::basic_string[abi:ne200100]<0>(v68, &dword_2582D575C);
              std::wstring::basic_string[abi:ne200100]<0>(v67, &dword_2582D575C);
              blahtex::Exception::Exception(v57, &v65, a2, v68, v67);
            }

            v25 = v70[0] + 24 * v24;
            v27 = *v25;
            v26 = *(v25 + 1);
            if (*v25 == v26)
            {
              v29 = *v25;
            }

            else
            {
              do
              {
                std::vector<blahtex::Token>::push_back[abi:ne200100](&__p, v27);
                v27 = (v27 + 32);
              }

              while (v27 != v26);
              v28 = v70[0] + 24 * v24;
              v27 = *v28;
              v29 = *(v28 + 1);
            }

            *(this + 17) += (v29 - v27) >> 5;
            goto LABEL_47;
          }
        }

        else if (v16)
        {
          goto LABEL_25;
        }

        blahtex::Token::Token(&v65, v15);
        if (!v66)
        {
          v66 = *(a2 + 24);
        }

        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
        {
          v22 = std::vector<blahtex::Token>::__emplace_back_slow_path<blahtex::Token>(&__p, &v65);
        }

        else
        {
          blahtex::Token::Token(__p.__r_.__value_.__l.__size_, &v65);
          v22 = size + 32;
        }

        __p.__r_.__value_.__l.__size_ = v22;
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        v18 = v15;
LABEL_47:
        v15 = (v18 + 4);
        if (v18 + 4 == v10[7])
        {
          v31 = __p.__r_.__value_.__l.__size_;
          v30 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
          {
            v32 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            do
            {
              v31 = (v31 - 32);
              std::vector<blahtex::Token>::push_back[abi:ne200100](v5, v31);
            }

            while (v31 != v30);
            v32 = __p.__r_.__value_.__l.__size_;
            v30 = __p.__r_.__value_.__r.__words[0];
          }

          goto LABEL_53;
        }
      }
    }

    v30 = 0;
    v32 = 0;
LABEL_53:
    *(this + 17) += (v32 - v30) >> 5;
    v65.__r_.__value_.__r.__words[0] = &__p;
    std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](&v65);
    v65.__r_.__value_.__r.__words[0] = v70;
    std::vector<std::vector<blahtex::Token>>::__destroy_vector::operator()[abi:ne200100](&v65);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v4 = *(this + 5);
    v3 = *(this + 6);
    if (v4 == v3)
    {
      goto LABEL_56;
    }
  }

  v33 = *(this + 6);
  v34 = (v33 - 32);
  if (*(v33 - 9) < 0)
  {
    operator delete(*v34);
  }

  *(this + 6) = v34;
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v35 = *(this + 6);
  if (*(this + 5) == v35)
  {
    goto LABEL_85;
  }

  std::wstring::basic_string[abi:ne200100]<0>(&v65, &unk_2582D5860);
  v36 = blahtex::Token::operator==((v35 - 32), &v65);
  v37 = v36;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
    if (!v37)
    {
      goto LABEL_85;
    }

LABEL_64:
    std::wstring::basic_string[abi:ne200100]<0>(&v65, &unk_2582D5708);
    blahtex::Token::operator=((*(this + 6) - 32), &v65);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    v38 = *(this + 5);
    v39 = (*(this + 6) - 32);
    if (v39 == v38)
    {
LABEL_104:
      if (v39 == v38)
      {
        v61 = __cxa_allocate_exception(0x30uLL);
        std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D58EC);
        std::wstring::basic_string[abi:ne200100]<0>(v70, &dword_2582D575C);
        std::wstring::basic_string[abi:ne200100]<0>(&__p, &dword_2582D575C);
        std::wstring::basic_string[abi:ne200100]<0>(v68, &dword_2582D575C);
        blahtex::Exception::Exception(v61, &v65, v70, &__p, v68);
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v65, &unk_2582D58E4);
      v53 = (v39 - 8);
      v54 = std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(v53, &v65);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v54)
      {
        v62 = __cxa_allocate_exception(0x30uLL);
        std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D5940);
        std::wstring::basic_string[abi:ne200100]<0>(v70, dword_2582D5AF0);
        std::wstring::basic_string[abi:ne200100]<0>(&__p, &dword_2582D575C);
        std::wstring::basic_string[abi:ne200100]<0>(v68, &dword_2582D575C);
        blahtex::Exception::Exception(v62, &v65, v70, &__p, v68);
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v65, &unk_2582D5700);
      blahtex::Token::operator=(v53, &v65);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D59C4);
      v55 = blahtex::Token::operator==(a2, &v65);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v55)
      {
        std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D5B08);
        blahtex::Token::operator=(a2, &v65);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_100;
    }

    v40 = 0;
    while (1)
    {
      if (v40 <= 0)
      {
        std::wstring::basic_string[abi:ne200100]<0>(&v65, &unk_2582D58E4);
        v41 = std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(v39 - 8, &v65);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (!v41)
        {
          v38 = *v5;
          goto LABEL_104;
        }
      }

      ++*(this + 17);
      std::wstring::basic_string[abi:ne200100]<0>(&v65, &unk_2582D5708);
      v39 -= 8;
      v42 = blahtex::Token::operator==(v39, &v65);
      v43 = v42;
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
        if (v43)
        {
LABEL_74:
          ++v40;
          goto LABEL_82;
        }
      }

      else if (v42)
      {
        goto LABEL_74;
      }

      std::wstring::basic_string[abi:ne200100]<0>(&v65, &unk_2582D5700);
      v44 = blahtex::Token::operator==(v39, &v65);
      v45 = v44;
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
        if (v45)
        {
LABEL_80:
          if (v40 <= 0)
          {
            v60 = __cxa_allocate_exception(0x30uLL);
            std::wstring::basic_string[abi:ne200100]<0>(&v65, dword_2582D5AA0);
            std::wstring::basic_string[abi:ne200100]<0>(v70, &dword_2582D575C);
            std::wstring::basic_string[abi:ne200100]<0>(&__p, &dword_2582D575C);
            std::wstring::basic_string[abi:ne200100]<0>(v68, &dword_2582D575C);
            blahtex::Exception::Exception(v60, &v65, v70, &__p, v68);
          }

          --v40;
        }
      }

      else if (v44)
      {
        goto LABEL_80;
      }

LABEL_82:
      v38 = *v5;
      if (v39 == *v5)
      {
        goto LABEL_104;
      }
    }
  }

  if (v36)
  {
    goto LABEL_64;
  }

LABEL_85:
  v46 = *(a2 + 23);
  if (v46 >= 0)
  {
    v47 = a2;
  }

  else
  {
    v47 = *a2;
  }

  if (v46 < 0)
  {
    v46 = *(a2 + 8);
  }

  v48 = &v47[v46];
  if (v46 >= 8)
  {
    v49 = v47;
    do
    {
      v50 = wmemchr(v49, 82, v46 - 7);
      if (!v50)
      {
        break;
      }

      v51 = v50;
      if (!wmemcmp(v50, dword_2582D56D4, 8uLL))
      {
        goto LABEL_96;
      }

      v49 = v51 + 1;
      v46 = v48 - (v51 + 1);
    }

    while (v46 > 7);
  }

  v51 = v48;
LABEL_96:
  if (v51 == v48)
  {
    v52 = -1;
  }

  else
  {
    v52 = v51 - v47;
  }

  std::wstring::erase(a2, v52, 0xFFFFFFFFFFFFFFFFLL);
LABEL_100:
  std::vector<blahtex::Token>::push_back[abi:ne200100](v5, a2);
LABEL_101:
  *(this + 64) = 1;
}

void sub_2582ACAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v41 & 1) == 0)
    {
LABEL_12:
      if (*(v39 + 23) < 0)
      {
        operator delete(*v39);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v40);
  goto LABEL_12;
}

void blahtex::MacroProcessor::SkipWhitespaceRaw(blahtex::MacroProcessor *this)
{
  for (i = *(this + 6); *(this + 5) != i; i = *(this + 6))
  {
    v3 = (i - 32);
    std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582D56F8);
    v4 = blahtex::Token::operator==(v3, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v4)
    {
      break;
    }

    blahtex::MacroProcessor::Advance(this);
  }
}

void sub_2582ACEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL blahtex::MacroProcessor::ReadArgument(uint64_t a1, uint64_t a2)
{
  blahtex::MacroProcessor::SkipWhitespaceRaw(a1);
  v4 = *(a1 + 48);
  if (*(a1 + 40) == v4)
  {
    return 0;
  }

  blahtex::Token::Token(v27, (v4 - 32));
  v5 = *(a1 + 48);
  v6 = (v5 - 32);
  if (*(v5 - 9) < 0)
  {
    operator delete(*v6);
  }

  *(a1 + 48) = v6;
  ++*(a1 + 68);
  std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582D5700);
  v7 = blahtex::Token::operator==(v27, __p);
  v8 = v7;
  if (v26 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_36;
    }
  }

  else if (v7)
  {
    goto LABEL_36;
  }

  std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582D5708);
  v10 = blahtex::Token::operator==(v27, __p);
  v11 = v10;
  if (v26 < 0)
  {
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_34:
    std::vector<blahtex::Token>::push_back[abi:ne200100](a2, v27);
    goto LABEL_35;
  }

  if (!v10)
  {
    goto LABEL_34;
  }

LABEL_11:
  v12 = 1;
  while (1)
  {
    v13 = *(a1 + 48);
    if (*(a1 + 40) == v13)
    {
      break;
    }

    ++*(a1 + 68);
    blahtex::Token::Token(__p, (v13 - 32));
    v14 = *(a1 + 48);
    v15 = (v14 - 32);
    if (*(v14 - 9) < 0)
    {
      operator delete(*v15);
    }

    *(a1 + 48) = v15;
    std::wstring::basic_string[abi:ne200100]<0>(v23, &unk_2582D5708);
    v16 = blahtex::Token::operator==(__p, v23);
    v17 = v16;
    if (v24 < 0)
    {
      operator delete(v23[0]);
      if (v17)
      {
LABEL_17:
        ++v12;
LABEL_26:
        std::vector<blahtex::Token>::push_back[abi:ne200100](a2, __p);
        v18 = 1;
        goto LABEL_27;
      }
    }

    else if (v16)
    {
      goto LABEL_17;
    }

    std::wstring::basic_string[abi:ne200100]<0>(v23, &unk_2582D5700);
    if (!blahtex::Token::operator==(__p, v23))
    {
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      goto LABEL_26;
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (--v12)
    {
      goto LABEL_26;
    }

    v18 = 0;
LABEL_27:
    if (v26 < 0)
    {
      operator delete(__p[0]);
      if ((v18 & 1) == 0)
      {
        break;
      }
    }

    else if ((v18 & 1) == 0)
    {
      break;
    }
  }

  if (v12 >= 1)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582D5710);
    std::wstring::basic_string[abi:ne200100]<0>(v23, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v22, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v21, &dword_2582D575C);
    blahtex::Exception::Exception(exception, __p, v23, v22, v21);
  }

LABEL_35:
  *(a1 + 64) = 0;
LABEL_36:
  v9 = !v8;
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  return v9;
}

void sub_2582AD1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      if (*(v35 - 73) < 0)
      {
        operator delete(*(v35 - 96));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

uint64_t std::vector<blahtex::Token>::push_back[abi:ne200100](uint64_t a1, const blahtex::Token *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<blahtex::Token>::__emplace_back_slow_path<blahtex::Token const&>(a1, a2);
  }

  else
  {
    blahtex::Token::Token(*(a1 + 8), a2);
    result = v3 + 32;
    *(a1 + 8) = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<blahtex::Token>::__emplace_back_slow_path<blahtex::Token>(a1, a2);
  }

  else
  {
    blahtex::Token::Token(*(a1 + 8), a2);
    result = v3 + 32;
    *(a1 + 8) = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void blahtex::MacroProcessor::Get(blahtex::MacroProcessor *this@<X0>, uint64_t a2@<X8>)
{
  blahtex::MacroProcessor::Peek(this, a2);

  blahtex::MacroProcessor::Advance(this);
}

void blahtex::MacroProcessor::HandleNewcommand(blahtex::MacroProcessor *this)
{
  v2 = *(this + 6);
  v3 = (v2 - 32);
  if (*(v2 - 9) < 0)
  {
    operator delete(*v3);
  }

  *(this + 6) = v3;
  ++*(this + 17);
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v4 = *(this + 6);
  if (*(this + 5) == v4)
  {
    goto LABEL_52;
  }

  v5 = (v4 - 32);
  std::wstring::basic_string[abi:ne200100]<0>(__p, &unk_2582D5708);
  v6 = std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(v5, __p);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
LABEL_52:
    exception = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582D5760);
    std::wstring::basic_string[abi:ne200100]<0>(&v47, dword_2582D57B8);
    std::wstring::basic_string[abi:ne200100]<0>(v46, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v45, &dword_2582D575C);
    blahtex::Exception::Exception(exception, __p, &v47, v46, v45);
  }

  v7 = *(this + 6);
  v8 = (v7 - 32);
  if (*(v7 - 9) < 0)
  {
    operator delete(*v8);
  }

  *(this + 6) = v8;
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v9 = *(this + 6);
  if (*(this + 5) == v9)
  {
LABEL_51:
    v34 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(__p, dword_2582D57E8);
    std::wstring::basic_string[abi:ne200100]<0>(&v47, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v46, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v45, &dword_2582D575C);
    blahtex::Exception::Exception(v34, __p, &v47, v46, v45);
  }

  v10 = (v9 - 32);
  v11 = *(v9 - 9);
  if (v11 < 0)
  {
    if (!*(v9 - 24))
    {
      goto LABEL_51;
    }

    v12 = *v10;
  }

  else
  {
    v12 = (v9 - 32);
    if (!v11)
    {
      goto LABEL_51;
    }
  }

  if (*v12 != 92)
  {
    goto LABEL_51;
  }

  blahtex::Token::Token(__p, v10);
  v13 = *(this + 6);
  v14 = (v13 - 32);
  if (*(v13 - 9) < 0)
  {
    operator delete(*v14);
  }

  *(this + 6) = v14;
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v15 = *(this + 6);
  if (*(this + 5) == v15)
  {
    v36 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(&v47, dword_2582D5710);
    std::wstring::basic_string[abi:ne200100]<0>(v46, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v45, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v42, &dword_2582D575C);
    blahtex::Exception::Exception(v36, &v47, v46, v45, v42);
  }

  std::wstring::basic_string[abi:ne200100]<0>(&v47, &unk_2582D5700);
  v16 = std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>((v15 - 32), &v47);
  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v16)
  {
    v37 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(&v47, dword_2582D57E8);
    std::wstring::basic_string[abi:ne200100]<0>(v46, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v45, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v42, &dword_2582D575C);
    blahtex::Exception::Exception(v37, &v47, v46, v45, v42);
  }

  v17 = *(this + 6);
  v18 = (v17 - 32);
  if (*(v17 - 9) < 0)
  {
    operator delete(*v18);
  }

  *(this + 6) = v18;
  *&v47 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring const&>,std::tuple<>>(this, __p);
  blahtex::MacroProcessor::SkipWhitespaceRaw(this);
  v20 = *(this + 6);
  if (*(this + 5) != v20)
  {
    std::wstring::basic_string[abi:ne200100]<0>(&v47, &unk_2582D5860);
    v21 = blahtex::Token::operator==((v20 - 32), &v47);
    v22 = v21;
    if (v48 < 0)
    {
      operator delete(v47);
      if (!v22)
      {
        goto LABEL_47;
      }
    }

    else if (!v21)
    {
      goto LABEL_47;
    }

    v23 = *(this + 6);
    v24 = (v23 - 32);
    if (*(v23 - 9) < 0)
    {
      operator delete(*v24);
    }

    *(this + 6) = v24;
    blahtex::MacroProcessor::SkipWhitespaceRaw(this);
    v25 = *(this + 6);
    if (*(this + 5) == v25)
    {
LABEL_56:
      v39 = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(&v47, dword_2582D5868);
      std::wstring::basic_string[abi:ne200100]<0>(v46, &dword_2582D575C);
      std::wstring::basic_string[abi:ne200100]<0>(v45, &dword_2582D575C);
      blahtex::Exception::Exception(v39, &v47, __p, v46, v45);
    }

    v26 = (v25 - 32);
    v27 = *(v25 - 9);
    if (v27 < 0)
    {
      if (*(v25 - 24) != 1)
      {
        goto LABEL_56;
      }

      v28 = *v26;
    }

    else
    {
      v28 = (v25 - 32);
      if (v27 != 1)
      {
        goto LABEL_56;
      }
    }

    v29 = *v28;
    *(v19 + 10) = v29 - 48;
    if ((v29 - 58) <= 0xFFFFFFF6)
    {
      v41 = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(&v47, dword_2582D5868);
      std::wstring::basic_string[abi:ne200100]<0>(v46, &dword_2582D575C);
      std::wstring::basic_string[abi:ne200100]<0>(v45, &dword_2582D575C);
      blahtex::Exception::Exception(v41, &v47, __p, v46, v45);
    }

    if (*(v25 - 9) < 0)
    {
      operator delete(*v26);
    }

    *(this + 6) = v26;
    blahtex::MacroProcessor::SkipWhitespaceRaw(this);
    v30 = *(this + 6);
    if (*(this + 5) == v30)
    {
      goto LABEL_57;
    }

    std::wstring::basic_string[abi:ne200100]<0>(&v47, &unk_2582D58E4);
    v31 = std::operator!=[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>((v30 - 32), &v47);
    if (v48 < 0)
    {
      operator delete(v47);
    }

    if (v31)
    {
LABEL_57:
      v40 = __cxa_allocate_exception(0x30uLL);
      std::wstring::basic_string[abi:ne200100]<0>(&v47, dword_2582D58EC);
      std::wstring::basic_string[abi:ne200100]<0>(v46, &dword_2582D575C);
      std::wstring::basic_string[abi:ne200100]<0>(v45, &dword_2582D575C);
      std::wstring::basic_string[abi:ne200100]<0>(v42, &dword_2582D575C);
      blahtex::Exception::Exception(v40, &v47, v46, v45, v42);
    }

    v32 = *(this + 6);
    v33 = (v32 - 32);
    if (*(v32 - 9) < 0)
    {
      operator delete(*v33);
    }

    *(this + 6) = v33;
  }

LABEL_47:
  if (!blahtex::MacroProcessor::ReadArgument(this, (v19 + 6)))
  {
    v38 = __cxa_allocate_exception(0x30uLL);
    std::wstring::basic_string[abi:ne200100]<0>(&v47, dword_2582D5940);
    std::wstring::basic_string[abi:ne200100]<0>(v46, dword_2582D57B8);
    std::wstring::basic_string[abi:ne200100]<0>(v45, &dword_2582D575C);
    std::wstring::basic_string[abi:ne200100]<0>(v42, &dword_2582D575C);
    blahtex::Exception::Exception(v38, &v47, v46, v45, v42);
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2582ADAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v35 - 33) < 0)
  {
    operator delete(*(v35 - 56));
    if ((v34 & 1) == 0)
    {
LABEL_12:
      if (a20 < 0)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

void std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<blahtex::Token>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<blahtex::Token>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::__unordered_map_hasher<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::hash<std::wstring>,std::equal_to<std::wstring>,true>,std::__unordered_map_equal<std::wstring,std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>,std::equal_to<std::wstring>,std::hash<std::wstring>,true>,std::allocator<std::__hash_value_type<std::wstring,blahtex::MacroProcessor::Macro>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::wstring const,blahtex::MacroProcessor::Macro>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::wstring const,blahtex::MacroProcessor::Macro>,0>(uint64_t a1)
{
  v2 = (a1 + 32);
  std::vector<blahtex::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

blahtex::Token *std::vector<blahtex::Token>::insert(uint64_t a1, uint64_t a2, blahtex::Token *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 5) + 1;
    if (v11 >> 59)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 4;
    if (v13 >> 4 <= v11)
    {
      v14 = ((v7 - *a1) >> 5) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 5;
    v18[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<blahtex::Token>>(a1, v15);
    }

    v18[0] = 0;
    v18[1] = (32 * v16);
    v18[2] = (32 * v16);
    v18[3] = 0;
    std::__split_buffer<blahtex::Token>::emplace_back<blahtex::Token const&>(v18, a3);
    v4 = std::vector<blahtex::Token>::__swap_out_circular_buffer(a1, v18, v4);
    std::__split_buffer<blahtex::Token>::~__split_buffer(v18);
  }

  else if (a2 == v7)
  {
    blahtex::Token::Token(*(a1 + 8), a3);
    *(a1 + 8) = v7 + 32;
  }

  else
  {
    std::vector<blahtex::Token>::__move_range(a1, a2, *(a1 + 8), a2 + 32);
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 32;
    if (v8)
    {
      v9 = 0;
    }

    blahtex::Token::operator=(v4, (a3 + v9));
  }

  return v4;
}

std::wstring *std::vector<blahtex::Token>::__move_range(std::wstring *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  size = result->__r_.__value_.__l.__size_;
  v8 = (a2 + size - a4);
  if (v8 >= a3)
  {
    v10 = result->__r_.__value_.__l.__size_;
  }

  else
  {
    v10 = result->__r_.__value_.__l.__size_;
    do
    {
      result = blahtex::Token::Token(v10, v8);
      v8 = (v8 + 32);
      v10 = (v10 + 32);
    }

    while (v8 < a3);
  }

  v6->__r_.__value_.__l.__size_ = v10;
  if (size != a4)
  {
    v11 = (size - 32);
    v12 = a4 - size;
    v13 = (a2 + size - 32 - a4);
    do
    {
      result = blahtex::Token::operator=(v11, v13);
      v11 = (v11 - 32);
      v13 = (v13 - 32);
      v12 += 32;
    }

    while (v12);
  }

  return result;
}

uint64_t std::__split_buffer<blahtex::Token>::emplace_back<blahtex::Token const&>(std::wstring **a1, blahtex::Token *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v4 - *a1) >> 4;
      }

      v10 = a1[4];
      v12 = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<blahtex::Token>>(v10, v9);
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = (v6 - 32 * (((v7 >> 5) + 1) / 2));
    if (v6 != v4)
    {
      do
      {
        blahtex::Token::operator=(v5, v6);
        v6 = (v6 + 32);
        v5 = (v5 + 32);
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = (v6 + 32 * v8);
    a1[2] = v5;
  }

  result = blahtex::Token::Token(v5, a2);
  a1[2] = (a1[2] + 32);
  return result;
}

void sub_2582AE18C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<blahtex::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<blahtex::Token>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, blahtex::Token *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<blahtex::Token>,blahtex::Token*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<blahtex::Token>,blahtex::Token*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<blahtex::Token>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<blahtex::Token>,blahtex::Token*>(uint64_t a1, blahtex::Token *a2, blahtex::Token *a3, blahtex::Token *this)
{
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      blahtex::Token::Token(this, v6);
      v6 = (v6 + 32);
      this = (v11 + 32);
      v11 = (v11 + 32);
    }

    while (v6 != a3);
    v9 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 32);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<blahtex::Token>,blahtex::Token*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<blahtex::Token>,blahtex::Token*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<blahtex::Token>,blahtex::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<blahtex::Token>,blahtex::Token*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<blahtex::Token>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<blahtex::Token>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<blahtex::Token>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<blahtex::Token>::__emplace_back_slow_path<blahtex::Token const&>(uint64_t a1, const blahtex::Token *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<blahtex::Token>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  blahtex::Token::Token((32 * v2), a2);
  v16 = (32 * v2 + 32);
  v8 = *(a1 + 8);
  v9 = (32 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<blahtex::Token>,blahtex::Token*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<blahtex::Token>::~__split_buffer(&v14);
  return v13;
}