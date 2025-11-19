void sub_1B50FF2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    *(v25 - 48) = v27;
    operator delete(v27);
  }

  std::__tree<std::string>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B50FF388(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::pair<std::string const,int> const&>();
  }

  return result;
}

unint64_t applesauce::CF::convert_to<std::string,0>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  if (!a1 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

unint64_t applesauce::CF::details::CFString_get_value<true>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a2[23] = result;
      if (result)
      {
        result = memmove(a2, v5, result);
      }

      a2[v7] = 0;
      return result;
    }

LABEL_19:
    std::string::__throw_length_error[abi:ne200100]();
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v9)
  {
    bzero(a2, v9);
  }

  a2[v9] = 0;
  if (a2[23] >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v13.location = 0;
  v13.length = Length;
  return CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, v10, maxBufLen, &maxBufLen);
}

void sub_1B50FF704(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::CF::convert_to<int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<int>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    Value = CFBooleanGetValue(a1);
    v4 = 0x100000000;
  }

  else
  {
    Value = 0;
    v4 = 0;
  }

  return v4 | Value;
}

uint64_t applesauce::CF::details::number_convert_as<int>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_1B5AE0B80);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_1B5AE0B90), xmmword_1B5AE0BA0);
  return v18.i64[0] | v14 | v18.i64[1];
}

void std::vector<std::pair<int,int>>::__append(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 8;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v6 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v14 = 8 * v9;
    v15 = 8 * v9 + 8 * a2;
    v16 = 8 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 8;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

EARHelpers::NSDataInputStream *EARHelpers::NSDataInputStream::NSDataInputStream(EARHelpers::NSDataInputStream *this, NSData *a2)
{
  v3 = a2;
  *(this + 26) = 0;
  *(this + 20) = MEMORY[0x1E69E5590] + 16;
  v6 = [(NSData *)v3 bytes];
  v5 = [(NSData *)v3 length];
  boost::iostreams::stream<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>>::stream<char const*,unsigned long>(this, off_1F2CFD1B8, &v6, &v5);
  *this = &unk_1F2CFD178;
  *(this + 19) = v3;
  *(this + 20) = &unk_1F2CFD1A0;
  return this;
}

void sub_1B50FFC80(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85200](v2);

  _Unwind_Resume(a1);
}

void *boost::iostreams::stream<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>>::stream<char const*,unsigned long>(void *a1, uint64_t *a2, void *a3, void *a4)
{
  v8 = boost::iostreams::detail::stream_base<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,std::istream>::stream_base(a1, a2 + 1);
  v9 = *a2;
  *v8 = *a2;
  *(a1 + *(v9 - 24)) = a2[5];
  v10 = *a3 + *a4;
  *&v12 = *a3;
  *(&v12 + 1) = v10;
  boost::iostreams::stream<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>>::open_impl(a1, &v12);
  return a1;
}

void sub_1B50FFD8C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t boost::iostreams::stream<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>>::~stream(uint64_t a1)
{
  v2 = std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer(v2 + 16);
  MEMORY[0x1B8C85200](a1 + 152);
  return a1;
}

void boost::iostreams::stream<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>>::~stream(uint64_t a1)
{
  v2 = std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer(v2 + 16);
  MEMORY[0x1B8C85200](a1 + 152);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toboost::iostreams::stream<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>>::~stream(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer((v1 + 16));

  JUMPOUT(0x1B8C85200);
}

{
  v1 = a1 + *(*a1 - 24);
  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer((v1 + 16));
  MEMORY[0x1B8C85200](v1 + 152);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::iostreams::detail::stream_base<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,std::istream>::~stream_base(uint64_t a1)
{
  v2 = std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer(v2 + 16);
  MEMORY[0x1B8C85200](a1 + 152);
  return a1;
}

void boost::iostreams::detail::stream_base<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,std::istream>::~stream_base(uint64_t a1)
{
  v2 = std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer(v2 + 16);
  MEMORY[0x1B8C85200](a1 + 152);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toboost::iostreams::detail::stream_base<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,std::istream>::~stream_base(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer((v1 + 16));

  JUMPOUT(0x1B8C85200);
}

{
  v1 = a1 + *(*a1 - 24);
  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer((v1 + 16));
  MEMORY[0x1B8C85200](v1 + 152);

  JUMPOUT(0x1B8C85350);
}

void EARHelpers::NSDataInputStream::~NSDataInputStream(id *this)
{
  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer((this + 2));
  MEMORY[0x1B8C85200](this + 20);
}

{

  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer((this + 2));
  MEMORY[0x1B8C85200](this + 20);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toEARHelpers::NSDataInputStream::~NSDataInputStream(EARHelpers::NSDataInputStream *this)
{
  v1 = (this + *(*this - 24));

  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer((v1 + 2));

  JUMPOUT(0x1B8C85200);
}

{
  v1 = (this + *(*this - 24));

  std::istream::~istream();
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer((v1 + 2));
  MEMORY[0x1B8C85200](v1 + 20);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::iostreams::detail::stream_base<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,std::istream>::stream_base(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 16);
  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C850B0](a1 + 24);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1;
  *(a1 + 80) = 1;
  *(a1 + 16) = &unk_1F2CFD368;
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  v6 = a2[1];
  *a1 = v6;
  *(a1 + *(v6 - 24)) = a2[2];
  *(a1 + 8) = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, v4);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[3];
  return a1;
}

double boost::iostreams::stream<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>>::open_impl(void *a1, __int128 *a2)
{
  v3 = (a1 + 2);
  std::ios_base::clear((a1 + *(*a1 - 24)), 0);
  v5 = *a2;
  return boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::open_impl(v3, &v5);
}

void boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer(uint64_t a1)
{
  boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::underflow(void *a1)
{
  if (!a1[12])
  {
    boost::iostreams::detail::cant_read(&v4);
    boost::throw_exception<std::ios_base::failure>(&v4);
  }

  v2 = a1[3];
  if (!v2)
  {
    boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::init_get_area(a1);
    v2 = a1[3];
  }

  if (v2 == a1[13])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v2;
  }
}

boost::iostreams::detail *boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::pbackfail(uint64_t a1, boost::iostreams::detail *this)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    boost::iostreams::detail::cant_read(&v6);
    boost::throw_exception<std::ios_base::failure>(&v6);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    boost::iostreams::detail::bad_putback(&v6);
    boost::throw_exception<std::ios_base::failure>(&v6);
  }

  *(a1 + 24) = v3 - 1;
  if (this == -1)
  {
    return 0;
  }

  *(v3 - 1) = this;
  return this;
}

uint64_t boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::overflow(void *a1, uint64_t a2)
{
  if (!a1[14])
  {
    *&v6.__val_ = 1;
    v6.__cat_ = std::iostream_category();
    std::ios_base::failure::failure(&v7, "no write access", &v6);
    boost::throw_exception<std::ios_base::failure>(&v7);
  }

  if (!a1[6])
  {
    boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::init_put_area(a1);
  }

  if (a2 == -1)
  {
    return 0;
  }

  v4 = a1[6];
  if (v4 == a1[15])
  {
    *&v6.__val_ = 1;
    v6.__cat_ = std::iostream_category();
    std::ios_base::failure::failure(&v7, "write area exhausted", &v6);
    boost::throw_exception<std::ios_base::failure>(&v7);
  }

  *v4 = a2;
  ++a1[6];
  return a2;
}

void *boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::close_impl(void *result, int a2)
{
  v2 = result;
  if (a2 == 16)
  {
    v3 = result + 14;
    if (!result[14])
    {
      return result;
    }

    result = (*(*result + 48))(result);
    v4 = 5;
    goto LABEL_7;
  }

  if (a2 == 8)
  {
    v3 = result + 12;
    if (result[12])
    {
      v4 = 2;
LABEL_7:
      v5 = &v2[v4];
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      *v3 = 0;
      v3[1] = 0;
    }
  }

  return result;
}

uint64_t boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::~stream_buffer(uint64_t a1)
{
  *a1 = &unk_1F2CFD368;
  if ((*(a1 + 96) || *(a1 + 112)) && *(a1 + 128) == 1)
  {
    boost::iostreams::detail::execute_all<boost::iostreams::detail::member_close_operation<boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>>,boost::iostreams::detail::member_close_operation<boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>>,boost::iostreams::detail::reset_operation<boost::iostreams::detail::optional<boost::iostreams::basic_array_source<char>>>>(a1, 8, a1, 16, a1 + 72);
  }

  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1B5100900(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1B51008BCLL);
}

uint64_t boost::iostreams::detail::execute_all<boost::iostreams::detail::member_close_operation<boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>>,boost::iostreams::detail::member_close_operation<boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>>,boost::iostreams::detail::reset_operation<boost::iostreams::detail::optional<boost::iostreams::basic_array_source<char>>>>(_DWORD *a1, int a2, _DWORD *a3, int a4, uint64_t a5)
{
  result = boost::iostreams::detail::execute_all<boost::iostreams::detail::member_close_operation<boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>>,boost::iostreams::detail::member_close_operation<boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>>>(a1, a2, a3, a4);
  if (*(a5 + 16) == 1)
  {
    *(a5 + 16) = 0;
  }

  return result;
}

void sub_1B5100944(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
  }

  __cxa_rethrow();
}

uint64_t boost::iostreams::detail::execute_all<boost::iostreams::detail::member_close_operation<boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>>,boost::iostreams::detail::member_close_operation<boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>>>(_DWORD *a1, int a2, _DWORD *a3, int a4)
{
  boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>::close(a1, a2);
  boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>::close(a3, a4);
  return 0;
}

void sub_1B51009AC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>::close(v2, v1);
  __cxa_rethrow();
}

_DWORD *boost::iostreams::detail::linked_streambuf<char,std::char_traits<char>>::close(_DWORD *result, int a2)
{
  if (a2 == 16)
  {
    v4 = result[16];
    if ((v4 & 4) != 0)
    {
      return result;
    }

    v3 = v4 | 4;
    goto LABEL_7;
  }

  if (a2 == 8)
  {
    v2 = result[16];
    if ((v2 & 2) == 0)
    {
      v3 = v2 | 2;
LABEL_7:
      result[16] = v3;
      return (*(*result + 120))();
    }
  }

  return result;
}

double boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::seek_impl@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v10 = a1[12];
  if (!v10)
  {
LABEL_10:
    v13 = 0;
    v14 = -1;
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_27;
  }

  v11 = a1[14];
  if ((~a4 & 0x18) == 0 && v11 && v10 != v11)
  {
    boost::iostreams::detail::bad_seek(&v23);
    boost::throw_exception<std::ios_base::failure>(&v23);
  }

  v13 = v10 == v11;
  if (v10 == v11)
  {
    if (a1[6] || !a1[3])
    {
      boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::init_get_area(a1);
    }
  }

  else if ((a4 & 8) == 0)
  {
    goto LABEL_10;
  }

  v15 = a1[3];
  if (!v15)
  {
    v16 = *(a1 + 6);
    a1[2] = v16;
    *(a1 + 3) = v16;
    v15 = v16;
  }

  v14 = a2;
  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        v14 = 0;
        goto LABEL_25;
      }

      v15 = a1[13];
    }

    v14 = v15 + a2 - a1[12];
  }

  if (v14 < 0)
  {
LABEL_42:
    boost::iostreams::detail::bad_seek(&v23);
    boost::throw_exception<std::ios_base::failure>(&v23);
  }

LABEL_25:
  v18 = a1[12];
  v17 = a1[13];
  if (v14 > v17 - v18)
  {
    goto LABEL_42;
  }

  a1[2] = v18;
  a1[3] = v18 + v14;
  a1[4] = v17;
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_41;
  }

LABEL_27:
  if (v13)
  {
    goto LABEL_41;
  }

  v19 = a1[14];
  if (!v19)
  {
    goto LABEL_41;
  }

  v20 = a1[6];
  if (!v20)
  {
    v21 = a1[15];
    a1[5] = v19;
    a1[6] = v19;
    a1[7] = v21;
    v20 = v19;
  }

  switch(a3)
  {
    case 0:
      goto LABEL_36;
    case 2:
      a2 = a2 - v19 + a1[15];
LABEL_36:
      v14 = a2;
      if (a2 < 0)
      {
LABEL_43:
        boost::iostreams::detail::bad_seek(&v23);
        boost::throw_exception<std::ios_base::failure>(&v23);
      }

      goto LABEL_39;
    case 1:
      a2 = a2 - v19 + v20;
      goto LABEL_36;
  }

  v14 = 0;
LABEL_39:
  if (v14 > a1[15] - v19)
  {
    goto LABEL_43;
  }

  a1[6] = v20 + v14 + v19 - v20;
LABEL_41:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v14;
  return result;
}

void boost::throw_exception<std::ios_base::failure>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  boost::wrapexcept<std::ios_base::failure>::wrapexcept(exception, a1);
}

std::ios_base::failure *boost::iostreams::detail::bad_seek@<X0>(std::ios_base::failure *a1@<X8>)
{
  *&v4.__val_ = 1;
  v4.__cat_ = std::iostream_category();
  return std::ios_base::failure::failure(a1, "bad seek", &v4);
}

uint64_t boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::init_get_area(uint64_t result)
{
  v1 = *(result + 96);
  *(result + 16) = v1;
  *(result + 24) = v1;
  if (v1 && v1 == *(result + 112))
  {
    v2 = *(result + 48);
    if (v2)
    {
      *(result + 24) = v1 + v2 - v1;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t boost::wrapexcept<std::ios_base::failure>::~wrapexcept(uint64_t a1)
{
  *(a1 + 40) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 48));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t boost::wrapexcept<std::ios_base::failure>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = MEMORY[0x1E69E5510] + 16;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  *a1 = &unk_1F2CFD4D0;
  *(a1 + 8) = &unk_1F2CFD500;
  *(a1 + 40) = &unk_1F2CFD528;
  *(a1 + 48) = 0;
  return a1;
}

{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E5510] + 16;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5588] + 16;
  v4 = *(a2 + 48);
  *(a1 + 40) = &unk_1F2CFD578;
  *(a1 + 48) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *a1 = &unk_1F2CFD4D0;
  *(a1 + 8) = &unk_1F2CFD500;
  *(a1 + 40) = &unk_1F2CFD528;
  return a1;
}

void sub_1B5101028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::ios_base::failure>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  boost::wrapexcept<std::ios_base::failure>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::ios_base::failure>::~wrapexcept(uint64_t a1)
{
  *(a1 + 40) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 48));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<std::ios_base::failure>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<std::ios_base::failure>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 4);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 4);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

std::ios_base::failure *boost::iostreams::detail::cant_read@<X0>(std::ios_base::failure *a1@<X8>)
{
  *&v4.__val_ = 1;
  v4.__cat_ = std::iostream_category();
  return std::ios_base::failure::failure(a1, "no read access", &v4);
}

std::ios_base::failure *boost::iostreams::detail::bad_putback@<X0>(std::ios_base::failure *a1@<X8>)
{
  *&v4.__val_ = 1;
  v4.__cat_ = std::iostream_category();
  return std::ios_base::failure::failure(a1, "putback buffer full", &v4);
}

uint64_t boost::iostreams::detail::direct_streambuf<boost::iostreams::basic_array_source<char>,std::char_traits<char>>::init_put_area(uint64_t result)
{
  v1 = *(result + 112);
  *(result + 40) = v1;
  *(result + 48) = v1;
  v2 = *(result + 96);
  if (v2)
  {
    v3 = v2 == v1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(result + 24);
    if (v4)
    {
      *(result + 48) = v1 + v4 - v1;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

double boost::iostreams::stream_buffer<boost::iostreams::basic_array_source<char>,std::char_traits<char>,std::allocator<char>,boost::iostreams::input_seekable>::open_impl(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 96) || *(a1 + 112))
  {
    *&v3.__val_ = 1;
    v3.__cat_ = std::iostream_category();
    std::ios_base::failure::failure(&v4, "already open", &v3);
    boost::throw_exception<std::ios_base::failure>(&v4);
  }

  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *a2;
  *(a1 + 88) = 1;
  *(a1 + 96) = *(a1 + 72);
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) &= 0xFFFFFFF9;
  return result;
}

id EarPmLogger(void)
{
  if ((atomic_load_explicit(&qword_1EB90B748, memory_order_acquire) & 1) == 0)
  {
    EarPmLogger();
  }

  v1 = _MergedGlobals;

  return v1;
}

void sub_1B5101D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v21 + 8, a20);

  _Unwind_Resume(a1);
}

void sub_1B5102134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 buf, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    *&buf = &a12;
    std::vector<quasar::DataFeed>::__destroy_vector::operator()[abi:ne200100](&buf);
    v33 = __cxa_begin_catch(exception_object);
    v34 = EarPmLogger();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v35)
      {
        v36 = (*(*v33 + 16))(v33);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v35)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v34, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B51020D8);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<quasar::TextTokenizer>::operator=[abi:ne200100]<quasar::TextTokenizer,std::default_delete<quasar::TextTokenizer>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::TextTokenizer>::shared_ptr[abi:ne200100]<quasar::TextTokenizer,std::default_delete<quasar::TextTokenizer>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_1B51025A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    v27 = __cxa_begin_catch(exception_object);
    v28 = EarPmLogger();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v29)
      {
        v30 = (*(*v27 + 16))(v27);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_1B501D000, v28, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }
    }

    else if (v29)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B501D000, v28, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B5102558);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51027A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B5102838(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B510288C(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarPmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B510287CLL);
}

void sub_1B5102908(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarPmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B51028F8);
}

void sub_1B5102984(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarPmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B5102974);
}

void sub_1B5102A00(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarPmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B51029F0);
}

void sub_1B5102A7C(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  v3 = EarPmLogger();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts];
  }

  else
  {
    [(_EARPhoneticMatchBuilder *)v4 buildGFsts:v3];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B5102A6CLL);
}

void sub_1B5102B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarPmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B5102B48);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5102D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarPmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B5102D0CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5103040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    fst::SymbolTable::~SymbolTable(&__p);
    v22 = __cxa_begin_catch(exception_object);
    v23 = EarPmLogger();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v24)
      {
        v25 = (*(*v22 + 16))(v22);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v24)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B5103004);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTable::WriteText(uint64_t a1, uint64_t a2)
{
  v18[19] = *MEMORY[0x1E69E9840];
  std::ofstream::basic_ofstream(&v16);
  if (*&v17[*(v16 - 24) + 24])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v4 = fst::LogMessage::LogMessage(&v15, __p);
    v5 = fst::cerr(v4);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SymbolTable::WriteText: Can't open file ", 40);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    fst::LogMessage::~LogMessage(&v15);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = 0;
  }

  else
  {
    fst::SymbolTableTextOptions::SymbolTableTextOptions(__p);
    v10 = (*(*a1 + 80))(a1, &v16, __p);
    if (v14 < 0)
    {
      operator delete(__p[1]);
    }
  }

  v16 = *MEMORY[0x1E69E54D0];
  *&v17[*(v16 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1B8C84A00](v17);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](v18);
  return v10;
}

void sub_1B51033D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::ofstream::~ofstream(&a24);
  _Unwind_Resume(a1);
}

void sub_1B5103524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarPmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B51034ECLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTable::Write(uint64_t a1, uint64_t a2)
{
  v17[19] = *MEMORY[0x1E69E9840];
  std::ofstream::basic_ofstream(&v15);
  if (*&v16[*(v15 - 24) + 24])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v4 = fst::LogMessage::LogMessage(&v14, __p);
    v5 = fst::cerr(v4);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SymbolTable::Write: Can't open file ", 36);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    fst::LogMessage::~LogMessage(&v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = 0;
  }

  else
  {
    v10 = (*(*a1 + 72))(a1, &v15);
  }

  v15 = *MEMORY[0x1E69E54D0];
  *&v16[*(v15 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1B8C84A00](v16);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](v17);
  return v10;
}

void sub_1B5103A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {

    v18 = __cxa_begin_catch(exception_object);
    v19 = EarPmLogger();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v20)
      {
        v21 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v21;
        _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v20)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B51039C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5103C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarPmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B5103C14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5103EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {

    v18 = __cxa_begin_catch(exception_object);
    v19 = EarPmLogger();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v20)
      {
        v21 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v21;
        _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v20)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B5103EB4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5104110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = EarPmLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v16)
      {
        v17 = (*(*v14 + 16))(v14);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v17;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v16)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &__p, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B51040D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5104338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a11);
    v19 = __cxa_begin_catch(exception_object);
    v20 = EarPmLogger();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v21)
      {
        v22 = (*(*v19 + 16))(v19);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_1B501D000, v20, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v21)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v20, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B5104300);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void sub_1B5104750(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, __int128 buf)
{
  if (a2)
  {
    fst::SymbolTable::~SymbolTable(&a13);
    v17 = __cxa_begin_catch(a1);
    v18 = EarPmLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (a2 == 2)
    {
      if (v19)
      {
        v20 = (*(*v17 + 16))(v17);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_DEFAULT, "Internal C++ exception: %s", &buf, 0xCu);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v19)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_DEFAULT, "Internal unknown exception", &buf, 2u);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x1B5104714);
  }

  _Unwind_Resume(a1);
}

void fst::SymbolTable::~SymbolTable(fst::SymbolTable *this)
{
  *this = &unk_1F2D06B30;
  v1 = *(this + 1);
  v2 = *(v1 + 168) - 1;
  *(v1 + 168) = v2;
  if (!v2)
  {
    if (*(v1 + 223) < 0)
    {
      operator delete(*(v1 + 200));
    }

    if (*(v1 + 199) < 0)
    {
      operator delete(*(v1 + 176));
    }

    std::__tree<int>::destroy(v1 + 144, *(v1 + 152));
    v3 = *(v1 + 120);
    if (v3)
    {
      *(v1 + 128) = v3;
      operator delete(v3);
    }

    fst::internal::DenseSymbolMap::~DenseSymbolMap((v1 + 40));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x1B8C85350](v1, 0x10B2C404FCE5648);
  }
}

{
  fst::SymbolTable::~SymbolTable(this);

  JUMPOUT(0x1B8C85350);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2CFD7A0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5104C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5104D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1B5104E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B5105718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

{
  return (*(*a1 + 8))(a1);
}

void sub_1B5105A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FinishState(uint64_t a1, int a2, int a3)
{
  if ((*(**(a1 + 32) + 32))(*(a1 + 32)) == INFINITY)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v6) != *(v7 + 4 * v6))
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_16;
    }

LABEL_14:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_14;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * v6);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (*(a3 + 12) == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2CFD938;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2CFD938;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD978;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B5105F48(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2CFD978;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::push_back(void *result, void *a2)
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
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B5106254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v24);
  if (v24 || (a4 & 1) != 0)
  {
    v11 = (*(*a2 + 40))(a2, a3);
    v12 = a5;
    if (!a4)
    {
      v12 = 0;
    }

    v13 = v11 + v12;
    if (*(a1 + 8) < (v11 + v12))
    {
      if (*a1)
      {
        free(*a1);
      }

      v23 = 0x4000;
      if (v13 > 0x4000)
      {
        v23 = v13;
      }

      *(a1 + 8) = v23;
      v15 = malloc_type_malloc(16 * v23, 0x1000040451B5BE8uLL);
      *a1 = v15;
      *(a1 + 16) = v15;
      v14 = v15;
    }

    else
    {
      v14 = *(a1 + 16);
      v15 = *a1;
    }

    *(a1 + 24) = &v14[v13];
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    if (v27)
    {
      ++*v27;
    }

    v20 = 0;
    if (!v16)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = (*(*v16 + 24))(v16);
      v22 = *v16;
      if (v21)
      {
        break;
      }

      *v15 = *(*(v22 + 32))(v16);
      (*(*v16 + 40))(v16);
      while (1)
      {
        ++v15;
        if (v16)
        {
          break;
        }

LABEL_15:
        if (v20 >= v19)
        {
          if (v18)
          {
            --*v18;
          }

          return;
        }

        *v15 = *(v17 + 16 * v20++);
      }
    }

    (*(v22 + 8))(v16);
  }

  else
  {
    v10 = v25 + 16 * v26;
    *(a1 + 16) = v25;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }
}

void sub_1B5106614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v16, v15);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::DataFeed>::__shared_ptr_emplace[abi:ne200100]<quasar::DataFeedType,quasar::SystemConfig &,std::allocator<quasar::DataFeed>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFD9B8;
  quasar::DataFeed::DataFeed(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::DataFeed>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFD9B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator_traits<std::allocator<quasar::DataFeed>>::destroy[abi:ne200100]<quasar::DataFeed,0>(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(a2 + 112);
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  v3 = (a2 + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = a2;
  std::vector<quasar::DataFeedItem>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void quasar::DataFeed::~DataFeed(void **this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table((this + 14));
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this;
  std::vector<quasar::DataFeedItem>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<quasar::DataFeedItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 32;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::shared_ptr<quasar::TextTokenizer>::shared_ptr[abi:ne200100]<quasar::TextTokenizer,std::default_delete<quasar::TextTokenizer>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<quasar::TextTokenizer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::TextTokenizer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::TextTokenizer  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<quasar::DataFeed>::__emplace_back_slow_path<quasar::DataFeed>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DataFeed>>(a1, v6);
  }

  v13 = 0;
  v14 = 160 * v2;
  std::allocator_traits<std::allocator<quasar::DataFeed>>::construct[abi:ne200100]<quasar::DataFeed,quasar::DataFeed,0>(a1, 160 * v2, a2);
  v15 = 160 * v2 + 160;
  v7 = a1[1];
  v8 = 160 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::DataFeed>,quasar::DataFeed*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::DataFeed>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5106B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::DataFeed>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator_traits<std::allocator<quasar::DataFeed>>::construct[abi:ne200100]<quasar::DataFeed,quasar::DataFeed,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v5;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a2 + 72) = *(a3 + 72);
  v6 = *(a3 + 88);
  *(a2 + 104) = *(a3 + 104);
  *(a2 + 88) = v6;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(a2 + 112, (a3 + 112));
  *(a2 + 152) = *(a3 + 152);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DataFeed>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::DataFeed>,quasar::DataFeed*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<quasar::DataFeed>>::construct[abi:ne200100]<quasar::DataFeed,quasar::DataFeed,0>(a1, a4, v7);
      v7 += 160;
      a4 = v12 + 160;
      v12 += 160;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::DataFeed>>::destroy[abi:ne200100]<quasar::DataFeed,0>(a1, v5);
      v5 += 160;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeed>,quasar::DataFeed*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeed>,quasar::DataFeed*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeed>,quasar::DataFeed*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeed>,quasar::DataFeed*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 160;
      std::allocator_traits<std::allocator<quasar::DataFeed>>::destroy[abi:ne200100]<quasar::DataFeed,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::DataFeed>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::DataFeed>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::DataFeed>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 160;
    std::allocator_traits<std::allocator<quasar::DataFeed>>::destroy[abi:ne200100]<quasar::DataFeed,0>(v5, v4 - 160);
  }
}

quasar::DataFeed *quasar::DataFeed::DataFeed(quasar::DataFeed *this, const quasar::DataFeed *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<quasar::DataFeedItem>::__init_with_size[abi:ne200100]<quasar::DataFeedItem*,quasar::DataFeedItem*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 5);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v4 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v4;
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *(this + 72) = *(a2 + 72);
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v5 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v5;
  }

  std::unordered_map<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>::unordered_map(this + 112, a2 + 112);
  *(this + 152) = *(a2 + 152);
  return this;
}

void sub_1B5106F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  a10 = v10;
  std::vector<quasar::DataFeedItem>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::DataFeedItem>::__init_with_size[abi:ne200100]<quasar::DataFeedItem*,quasar::DataFeedItem*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::DataFeedItem>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B510701C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::DataFeedItem>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::DataFeedItem>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DataFeedItem>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::DataFeedItem>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::DataFeedItem>,quasar::DataFeedItem*,quasar::DataFeedItem*,quasar::DataFeedItem*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *v6;
      std::map<std::string,std::string>::map[abi:ne200100]((v4 + 8), (v6 + 8));
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeedItem>,quasar::DataFeedItem*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeedItem>,quasar::DataFeedItem*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeedItem>,quasar::DataFeedItem*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::DataFeedItem>,quasar::DataFeedItem*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>> const&>();
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

void sub_1B51074B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::DataFeed>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::DataFeed>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::DataFeed>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::DataFeed>>::destroy[abi:ne200100]<quasar::DataFeed,0>(a1, i))
  {
    i -= 160;
  }

  *(a1 + 8) = a2;
}

void *std::__shared_ptr_emplace<quasar::PMBuilder>::__shared_ptr_emplace[abi:ne200100]<std::string,std::shared_ptr<quasar::TextTokenizer> &,std::vector<quasar::DataFeed> &,std::allocator<quasar::PMBuilder>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFDA68;
  std::allocator<quasar::PMBuilder>::construct[abi:ne200100]<quasar::PMBuilder,std::string,std::shared_ptr<quasar::TextTokenizer> &,std::vector<quasar::DataFeed> &>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<quasar::PMBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFDA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::PMBuilder>::construct[abi:ne200100]<quasar::PMBuilder,std::string,std::shared_ptr<quasar::TextTokenizer> &,std::vector<quasar::DataFeed> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::PMBuilder::PMBuilder(a2, a3, &v6, a5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B51077C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PMBuilder::~PMBuilder(quasar::PMBuilder *this)
{
  std::__tree<std::string>::destroy(this + 552, *(this + 70));
  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  if (*(this + 455) < 0)
  {
    operator delete(*(this + 54));
  }

  v2 = *(this + 52);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  v3 = *(this + 47);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = (this + 344);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 320);
  std::vector<quasar::RegexReplacementRule>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  v4 = *(this + 36);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v5 = (this + 184);
  std::vector<quasar::DataFeed>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::~__hash_table(this + 144);
  fst::SymbolTable::~SymbolTable((this + 128));
  fst::SymbolTable::~SymbolTable((this + 112));
  fst::SymbolTable::~SymbolTable((this + 96));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(this + 10);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(this + 8);
  v5 = (this + 40);
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(this + 3);
  v5 = this;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void std::vector<quasar::RegexReplacementRule>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::RegexReplacementRule>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::RegexReplacementRule>::clear[abi:ne200100](std::locale **a1)
{
  v3 = *a1;
  for (i = a1[1]; i != v3; std::locale::~locale(i))
  {
    if (SHIBYTE(i[-1].__locale_) < 0)
    {
      operator delete(i[-3].__locale_);
    }

    locale = i[-5].__locale_;
    if (locale)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](locale);
    }

    i -= 11;
  }

  a1[1] = v3;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,quasar::SpokenFormSection>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string const,quasar::SpokenFormSection>::~pair(uint64_t a1)
{
  v3 = (a1 + 48);
  std::vector<quasar::SpokenFormLine>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<quasar::SpokenFormLine>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::SpokenFormLine>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::SpokenFormLine>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 112)
  {
    v4 = (i - 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }

    if (*(i - 57) < 0)
    {
      operator delete(*(i - 80));
    }

    if (*(i - 81) < 0)
    {
      operator delete(*(i - 104));
    }
  }

  a1[1] = v2;
}

void std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      v8 = v4 - 16;
      do
      {
        v9 = *v8;
        v8 -= 16;
        (*v9)(v7);
        v6 -= 16;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__shared_ptr_emplace<quasar::PMBuilder>::__shared_ptr_emplace[abi:ne200100]<std::string,std::shared_ptr<quasar::TextTokenizer> &,std::string,std::allocator<quasar::PMBuilder>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFDA68;
  std::allocator<quasar::PMBuilder>::construct[abi:ne200100]<quasar::PMBuilder,std::string,std::shared_ptr<quasar::TextTokenizer> &,std::string>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::allocator<quasar::PMBuilder>::construct[abi:ne200100]<quasar::PMBuilder,std::string,std::shared_ptr<quasar::TextTokenizer> &,std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::PMBuilder::PMBuilder(a2, a3, &v6, a5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B5107DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WriteFile(fst *a1, uint64_t a2)
{
  v25[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
LABEL_5:
      std::ofstream::basic_ofstream(&v20);
      if ((v24[*(v20.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v4 = fst::LogMessage::LogMessage(&v19, &__p);
        v5 = fst::cerr(v4);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Fst::Write: Can't open file: ", 29);
        v7 = *(a2 + 23);
        if (v7 >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        if (v7 >= 0)
        {
          v9 = *(a2 + 23);
        }

        else
        {
          v9 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        fst::LogMessage::~LogMessage(&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      else
      {
        v13 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v16 = 257;
        v17 = 1;
        v18 = v13;
        v10 = (*(*a1 + 96))(a1, &v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v20.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
      *(v20.__r_.__value_.__r.__words + *(v20.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B8C84A00](&v20.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v25);
      return v10;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_5;
  }

  v11 = fst::cout(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v12 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = 257;
  v22 = 1;
  v23 = v12;
  v10 = (*(*a1 + 96))(a1, v11, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2CFDB30;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2CFDAB8;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFinal(void *a1, int a2, float a3)
{
  v5 = *(a1[8] + 8 * a2);
  v6 = *v5;
  *v5 = a3;
  v7 = (*(*a1 + 24))(a1);
  result = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v7, v6, a3);
  a1[1] = a1[1] & 4 | result;
  return result;
}

uint64_t fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(unint64_t a1, float a2, float a3)
{
  if (a2 != INFINITY && a2 != 0.0)
  {
    a1 &= ~0x100000000uLL;
  }

  if (a3 != INFINITY && a3 != 0.0)
  {
    a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  return a1 & 0x3FFFFFF0007;
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 32);
  if (v6 == *(*(a1[8] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v5 = *a3;
  v4 = *(a3 + 1);
  v6 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v4)
  {
    v6 = a1;
  }

  v7 = v6 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v4)
  {
    v7 = v6 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v5 == 0.0)
  {
    v6 = v7;
  }

  if (!v4)
  {
    v6 = v6 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 > SLODWORD(v5))
    {
      v6 = v6 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v4)
    {
      v6 = v6 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }
  }

  if (a3[2] != INFINITY && a3[2] != 0.0)
  {
    v6 = v6 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  if (*(a3 + 3) <= a2)
  {
    v6 = v6 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v6 & 0x4000000000) != 0)
  {
    return v6 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v6 & 0x5D7FFEB0007;
  }
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t TVertex::getInEdge(TVertex *this)
{
  result = *this;
  if (result && *(result + 32) == 1)
  {
    do
    {
      result = *result;
    }

    while (result && (*(result + 32) & 1) != 0);
  }

  return result;
}

uint64_t TVertex::getInEdgeCount(uint64_t **this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*(v1 + 32) == 1)
  {
    do
    {
      v1 = *v1;
      if (!v1)
      {
        return 0;
      }
    }

    while ((v1[4] & 1) != 0);
  }

  result = 0;
LABEL_6:
  ++result;
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      return result;
    }

    if ((v1[4] & 1) == 0)
    {
      goto LABEL_6;
    }
  }
}

uint64_t TVertex::getOutEdge(TVertex *this)
{
  result = *(this + 1);
  if (result && *(result + 32) == 1)
  {
    do
    {
      result = *(result + 8);
    }

    while (result && (*(result + 32) & 1) != 0);
  }

  return result;
}

uint64_t TVertex::getOutEdgeCount(TVertex *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 32) == 1)
  {
    do
    {
      v1 = *(v1 + 8);
      if (!v1)
      {
        return 0;
      }
    }

    while ((*(v1 + 32) & 1) != 0);
  }

  result = 0;
LABEL_6:
  ++result;
  while (1)
  {
    v1 = *(v1 + 8);
    if (!v1)
    {
      return result;
    }

    if ((*(v1 + 32) & 1) == 0)
    {
      goto LABEL_6;
    }
  }
}

void TGraph::TGraph(TGraph *this, char *a2, TSegmenter *a3, char a4)
{
  *this = a3;
  *(this + 8) = a4;
  TAllocator::TAllocator((this + 16), 2048);
  *(this + 5) = 0u;
  *(this + 18) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = a2;
  *(this + 9) = 0;
  *(this + 8) = TGraph::addVertex(this, a2);
}

void sub_1B5108DF4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 128);
  if (v4)
  {
    *(v1 + 136) = v4;
    operator delete(v4);
  }

  TGraph::TGraph((v1 + 104), v2, v1);
  TAllocator::clear((v1 + 16));
  _Unwind_Resume(a1);
}

TVertex *TGraph::addVertex(TGraph *this, char *a2)
{
  if (!a2)
  {
    v12 = TAllocator::allocate((this + 16), 48);
    *(v12 + 40) = (*(this + 11) - *(this + 10)) >> 3;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;
    v16 = v12;
    std::vector<TVertex *>::push_back[abi:ne200100](this + 80, &v16);
    return v16;
  }

  v4 = &a2[-*(this + 7)];
  v5 = *(this + 16);
  if (v4 < (*(this + 17) - v5) >> 3)
  {
    result = *(v5 + 8 * v4);
    if (result)
    {
      *(result + 32) = 0;
      return result;
    }
  }

  Segment = TSegmenter::getSegment(*this, a2);
  v8 = a2;
  if (Segment)
  {
    v9 = Segment;
    v8 = a2;
    if (!*(Segment + 24))
    {
      v8 = a2;
      while (1)
      {
        v13 = **v9;
        {
          operator new();
        }

        if (v13 <= 8202)
        {
          if (v13 != 32 && v13 != 160)
          {
            goto LABEL_24;
          }
        }

        else if (v13 != 8203 && v13 != 12288 && v13 != 65279)
        {
LABEL_24:
          if (*(this + 8))
          {
            break;
          }
        }

        v8 = *(v9 + 8);
        v15 = TSegmenter::getSegment(*this, v8);
        if (v15)
        {
          v9 = v15;
          if (!*(v15 + 24))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v10 = TAllocator::allocate((this + 16), 48);
  *(v10 + 40) = (*(this + 11) - *(this + 10)) >> 3;
  *(v10 + 16) = v8;
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  v16 = v10;
  std::vector<TVertex *>::push_back[abi:ne200100](this + 80, &v16);
  TGraph::setMap(this, v16);
  v11 = *(this + 9);
  if (!v11 || *(v11 + 24) < a2)
  {
    result = v16;
    *(this + 9) = v16;
    return result;
  }

  return v16;
}

void sub_1B5109040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1B8C85350](a9, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TGraph::~TGraph(TGraph *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  TAllocator::clear((this + 16));
}

uint64_t TGraph::getVertex(TGraph *this, const char *a2)
{
  v2 = &a2[-*(this + 7)];
  v3 = *(this + 16);
  if (v2 >= (*(this + 17) - v3) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8 * v2);
  }
}

void TGraph::setMap(TGraph *this, TVertex *a2)
{
  v4 = (this + 128);
  v3 = *(this + 16);
  v5 = *(a2 + 3) - *(this + 7);
  if (v5 >= (*(this + 17) - v3) >> 3)
  {
    if (2 * v5 <= 0x100)
    {
      v6 = 256;
    }

    else
    {
      v6 = 2 * v5;
    }

    v7 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(this + 16, v6, &v7);
    v3 = *v4;
  }

  *(v3 + 8 * v5) = a2;
}

void TGraph::deleteVertex(TGraph *this, TVertex *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    if (*(v2 + 32) == 1)
    {
      while (1)
      {
        v2 = *(v2 + 8);
        if (!v2)
        {
          break;
        }

        if ((*(v2 + 32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      *(v2 + 32) = 1;
      while (1)
      {
        v2 = *(v2 + 8);
        if (!v2)
        {
          break;
        }

        if ((*(v2 + 32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v3 = *a2;
  if (*a2)
  {
    if (*(v3 + 32) == 1)
    {
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if ((v3[4] & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      *(v3 + 32) = 1;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if ((v3[4] & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }
  }

  *(a2 + 32) = 1;
}

uint64_t TGraph::getNextVertex(TGraph *this, unint64_t a2)
{
  v2 = *(this + 7);
  if (v2 > a2)
  {
    return *(this + 8);
  }

  v4 = *(*(this + 9) + 24);
  if (v4 < a2)
  {
    return 0;
  }

  for (i = (*(this + 16) - 8 * v2 + 8 * a2); ; ++i)
  {
    result = *i;
    if (*i)
    {
      break;
    }

    if (++a2 > v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TGraph::getPrevVertex(TGraph *this, unint64_t a2)
{
  v2 = *(this + 7);
  if (v2 > a2)
  {
    return 0;
  }

  result = *(this + 9);
  if (*(result + 24) >= a2)
  {
    for (i = (*(this + 16) - 8 * v2 + 8 * a2); ; --i)
    {
      result = *i;
      if (*i)
      {
        break;
      }

      if (--a2 < v2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TGraph::addEdge(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = (a2 + 8);
  v8 = *(a2 + 8);
  if (v8 && *(v8 + 32) == 1)
  {
    do
    {
      v8 = *(v8 + 8);
    }

    while (v8 && (*(v8 + 32) & 1) != 0);
  }

  if (*a4 != 5)
  {
    v10 = 0;
    if (!v8 || *a4 == 2)
    {
      goto LABEL_23;
    }

    v10 = 0;
    v11 = *(a4 + 8);
    v12 = *(a4 + 24);
LABEL_10:
    v13 = v8;
    v14 = *(v8 + 48);
    if (v14 != 2 && v14 != 5)
    {
      v16 = wcscmp(*v11, **(v13 + 56));
      if (v16 < 0)
      {
        goto LABEL_23;
      }

      if (!v16 && *(v13 + 24) == a3 && v12 == *(v13 + 72))
      {
        return v13;
      }
    }

    v8 = v13;
    while (1)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        break;
      }

      if ((*(v8 + 32) & 1) == 0)
      {
        v10 = v13;
        goto LABEL_10;
      }
    }

    v10 = v13;
    goto LABEL_23;
  }

  v10 = 0;
LABEL_23:
  v13 = TAllocator::allocate((a1 + 2), 80);
  v17 = a1 + 13;
  v18 = (a1[14] - a1[13]) >> 3;
  *(v13 + 48) = 3;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 40) = v18;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = 0;
  *v13 = 0;
  *(v13 + 8) = 0;
  v19 = *(a4 + 16);
  *(v13 + 48) = *a4;
  *(v13 + 64) = v19;
  v21 = a1[14];
  v20 = a1[15];
  if (v21 >= v20)
  {
    v23 = (v21 - *v17) >> 3;
    if ((v23 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v24 = v20 - *v17;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(v17, v26);
    }

    *(8 * v23) = v13;
    v22 = 8 * v23 + 8;
    v27 = a1[13];
    v28 = a1[14] - v27;
    v29 = (8 * v23 - v28);
    memcpy(v29, v27, v28);
    v30 = a1[13];
    a1[13] = v29;
    a1[14] = v22;
    a1[15] = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v21 = v13;
    v22 = (v21 + 1);
  }

  a1[14] = v22;
  v31 = (v10 + 8);
  if (!v10)
  {
    v31 = v9;
  }

  *(v13 + 8) = *v31;
  *v31 = v13;
  *v13 = *a3;
  *a3 = v13;
  return v13;
}

void *std::vector<TVertex const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void TGraph::topologicalSort(void *a1, void *a2, uint64_t a3)
{
  std::vector<unsigned long>::vector[abi:ne200100](__p, (a1[11] - a1[10]) >> 3);
  v6 = a1[10];
  v7 = a1[11];
  v8 = 0;
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = v9 >> 3;
    v12 = __p[0];
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v13 = *(v6 + 8 * v10);
      if ((v13[4] & 1) == 0)
      {
        break;
      }

LABEL_16:
      if (++v10 == v11)
      {
        goto LABEL_17;
      }
    }

    v14 = *v13;
    if (v14)
    {
      if (*(v14 + 32) != 1)
      {
LABEL_9:
        v15 = 0;
LABEL_10:
        ++v15;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_15;
          }

          if ((v14[4] & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if ((v14[4] & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = 0;
LABEL_15:
    ++v8;
    v12[v10] = v15;
    goto LABEL_16;
  }

LABEL_17:
  a2[1] = *a2;
  std::vector<TVertex const*>::reserve(a2, v8);
  v17 = a2[1];
  v16 = a2[2];
  if (v17 >= v16)
  {
    v19 = (v17 - *a2) >> 3;
    if ((v19 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v20 = v16 - *a2;
    v21 = v20 >> 2;
    if (v20 >> 2 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(a2, v22);
    }

    *(8 * v19) = a1[8];
    v18 = 8 * v19 + 8;
    v23 = a2[1] - *a2;
    v24 = (8 * v19 - v23);
    memcpy(v24, *a2, v23);
    v25 = *a2;
    *a2 = v24;
    a2[1] = v18;
    a2[2] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v17 = a1[8];
    v18 = (v17 + 1);
  }

  a2[1] = v18;
  v26 = *a2;
  if (v18 != *a2)
  {
    v27 = 0;
    do
    {
      v28 = *(v26 + 8 * v27);
      if (a3)
      {
        (*(*a3 + 24))(a3, v28, a1);
      }

      v29 = *(v28 + 8);
      if (v29)
      {
        if (*(v29 + 32) == 1)
        {
          while (1)
          {
            v29 = *(v29 + 8);
            if (!v29)
            {
              break;
            }

            if ((*(v29 + 32) & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
LABEL_37:
          if (a3)
          {
            (*(*a3 + 16))(a3, v29, a1);
          }

          v30 = *(v29 + 24);
          v31 = __p[0];
          --*(__p[0] + *(v30 + 40));
          if (!v31[*(v30 + 40)])
          {
            v32 = v30;
            std::vector<TVertex const*>::push_back[abi:ne200100](a2, &v32);
          }

          while (1)
          {
            v29 = *(v29 + 8);
            if (!v29)
            {
              break;
            }

            if ((*(v29 + 32) & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }
      }

      ++v27;
      v26 = *a2;
    }

    while (v27 < (a2[1] - *a2) >> 3);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B5109818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TGraph::minimize(TGraph *this)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  TGraph::topologicalSort(this, &v20, 0);
  v2 = v20;
  v3 = v21;
  if (v21 != v20)
  {
    v4 = 0;
    do
    {
      v5 = v2[v4];
      if ((*(v5 + 32) & 1) == 0)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if (*(v6 + 32) == 1)
          {
            while (1)
            {
              v6 = *(v6 + 8);
              if (!v6)
              {
                break;
              }

              if ((*(v6 + 32) & 1) == 0)
              {
                goto LABEL_8;
              }
            }
          }

          else
          {
LABEL_8:
            v7 = *(v6 + 48);
            if (v7 != 2 && v7 != 5)
            {
              v9 = v6;
              do
              {
                v9 = *(v9 + 8);
                if (!v9)
                {
                  goto LABEL_13;
                }
              }

              while ((*(v9 + 32) & 1) != 0);
              while (1)
              {
                v10 = *(v9 + 48);
                if (v10 != 2 && v10 != 5)
                {
                  v12 = wcscmp(**(v6 + 56), **(v9 + 56));
                  if (!v12)
                  {
                    v13 = *(v6 + 24);
                    v14 = *(v9 + 24);
                    if (v13 == v14)
                    {
                      *(v9 + 32) = 1;
                    }

                    else if (*(v13 + 2) == *(v14 + 2))
                    {
                      v15 = *v13;
                      if (v15)
                      {
                        if (*(v15 + 32) == 1)
                        {
                          while (1)
                          {
                            v15 = *v15;
                            if (!v15)
                            {
                              break;
                            }

                            if ((v15[4] & 1) == 0)
                            {
                              goto LABEL_32;
                            }
                          }
                        }

                        else
                        {
LABEL_32:
                          v16 = 0;
                          while (1)
                          {
                            v15 = *v15;
                            if (!v15)
                            {
                              break;
                            }

                            if ((v15[4] & 1) == 0)
                            {
                              ++v16;
                            }
                          }

                          if (!v16)
                          {
                            v17 = *v14;
                            if (*v14)
                            {
                              if (*(v17 + 32) == 1)
                              {
                                while (1)
                                {
                                  v17 = *v17;
                                  if (!v17)
                                  {
                                    break;
                                  }

                                  if ((v17[4] & 1) == 0)
                                  {
                                    goto LABEL_42;
                                  }
                                }
                              }

                              else
                              {
LABEL_42:
                                v18 = 0;
                                while (1)
                                {
                                  v17 = *v17;
                                  if (!v17)
                                  {
                                    break;
                                  }

                                  if ((v17[4] & 1) == 0)
                                  {
                                    ++v18;
                                  }
                                }

                                if (!v18)
                                {
                                  v19 = *(v14 + 1);
                                  if (v19)
                                  {
                                    if (*(v19 + 32) == 1)
                                    {
                                      while (1)
                                      {
                                        v19 = *(v19 + 8);
                                        if (!v19)
                                        {
                                          break;
                                        }

                                        if ((*(v19 + 32) & 1) == 0)
                                        {
                                          goto LABEL_51;
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_51:
                                      v12 = TGraph::addEdge(this, *(v6 + 24), *(v19 + 24), v19 + 48);
                                      while (1)
                                      {
                                        v19 = *(v19 + 8);
                                        if (!v19)
                                        {
                                          break;
                                        }

                                        if ((*(v19 + 32) & 1) == 0)
                                        {
                                          goto LABEL_51;
                                        }
                                      }
                                    }
                                  }

                                  TGraph::deleteVertex(v12, v14);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                do
                {
                  v9 = *(v9 + 8);
                  if (!v9)
                  {
                    goto LABEL_13;
                  }
                }

                while ((*(v9 + 32) & 1) != 0);
              }
            }

LABEL_13:
            while (1)
            {
              v6 = *(v6 + 8);
              if (!v6)
              {
                break;
              }

              if ((*(v6 + 32) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            v2 = v20;
            v3 = v21;
          }
        }
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v2)
  {
    v21 = v2;
    operator delete(v2);
  }
}

void sub_1B5109A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TLocaleInfo::TLocaleInfo(TLocaleInfo *this)
{
  TCollation::TCollation((this + 16));
  *this = "e";
  *(this + 80) = wcscmp("e", "t") == 0;
  *(this + 1) = "U";
  *(this + 16) = 2;
  *(this + 9) = 4;
}

double kaldi::nnet1::BidirectionalRecurrentComponent::BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, int a2, int a3)
{
  *(this + 94) = a2;
  *(this + 95) = a3;
  *(this + 192) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 46) = &unk_1F2D172B0;
  *(this + 52) = &unk_1F2D279F8;
  *(this + 424) = xmmword_1B5AE0070;
  *(this + 55) = 0x3BF800000;
  *(this + 112) = 1;
  *(this + 226) = 0;
  *(this + 454) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F2CFDF88);
  *v3 = &unk_1F2CFDBA8;
  *(v3 + 368) = &unk_1F2CFDE68;
  *(v3 + 160) = &unk_1F2CFDD08;
  *(v3 + 168) = &unk_1F2CFDD30;
  result = 0.0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 345) = 0u;
  return result;
}

kaldi::nnet1::BidirectionalRecurrentComponent *kaldi::nnet1::BidirectionalRecurrentComponent::BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, const std::string *a2)
{
  *(this + 47) = *(&a2->__r_.__value_.__l.__size_ + *(a2->__r_.__value_.__r.__words[0] - 24));
  *(this + 192) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 46) = &unk_1F2D172B0;
  *(this + 52) = &unk_1F2D279F8;
  *(this + 424) = xmmword_1B5AE0070;
  *(this + 110) = -1082130432;
  *(this + 444) = 0x100000003;
  *(this + 226) = 0;
  *(this + 454) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F2CFDF88);
  *this = &unk_1F2CFDBA8;
  *(this + 46) = &unk_1F2CFDE68;
  *(this + 20) = &unk_1F2CFDD08;
  *(this + 12) = 0u;
  *(this + 21) = &unk_1F2CFDD30;
  *(this + 15) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 44) = 0;
  std::string::operator=(this + 8, a2 + 8);
  v4 = a2[7].__r_.__value_.__l.__size_ + *(*a2[7].__r_.__value_.__l.__size_ - 24);
  v5 = (*(*v4 + 16))(v4);
  if (v5)
  {
  }

  *(this + 22) = v5;
  v6 = a2[7].__r_.__value_.__r.__words[2] + *(*a2[7].__r_.__value_.__r.__words[2] - 24);
  v7 = (*(*v6 + 16))(v6);
  if (v7)
  {
  }

  *(this + 23) = v7;
  *(this + 360) = 0;
  return this;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::CopyQuantized<kaldi::nnet1::Quantizable8BitComponentItf>(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v4 = *(a1 + 184);
    if (!v4)
    {
      if (v3)
      {
LABEL_11:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v6, "Backward RNN is not quantizable");
LABEL_12:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v6);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 184);
    if (!v4)
    {
      goto LABEL_10;
    }

    v3 = 0;
  }

  if (v3)
  {
    if (v5)
    {
      operator new();
    }

    goto LABEL_11;
  }

LABEL_10:
  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v6, "Forward RNN is not quantizable");
  goto LABEL_12;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::CopyQuantized<kaldi::nnet1::Quantizable16BitComponentItf>(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v4 = *(a1 + 184);
    if (!v4)
    {
      if (v3)
      {
LABEL_11:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v6, "Backward RNN is not quantizable");
LABEL_12:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v6);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 184);
    if (!v4)
    {
      goto LABEL_10;
    }

    v3 = 0;
  }

  if (v3)
  {
    if (v5)
    {
      operator new();
    }

    goto LABEL_11;
  }

LABEL_10:
  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v6, "Forward RNN is not quantizable");
  goto LABEL_12;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v4 = a2 + 4;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v5 = (a1 + 192);
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_24;
    }

    kaldi::ReadToken(a2, 0, &v36);
    if ((SHIBYTE(v38) & 0x80000000) == 0 || v37 != 24)
    {
      break;
    }

    if (*v36 != 0x657272756365523CLL || v36[1] != 0x6E6F706D6F43746ELL || v36[2] != 0x3E65707954746E65)
    {
      goto LABEL_38;
    }

    kaldi::ReadToken(a2, 0, v5);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (SHIBYTE(v38) < 0)
  {
    if (v37 != 12)
    {
      goto LABEL_38;
    }

    v8 = v36;
  }

  else
  {
    if (SHIBYTE(v38) != 12)
    {
      goto LABEL_38;
    }

    v8 = &v36;
  }

  v9 = *v8;
  v10 = *(v8 + 2);
  if (v9 == 0x6E6F706D6F432F3CLL && v10 == 1047817829)
  {
LABEL_24:
    v12 = kaldi::nnet1::Component::MarkerToComponentType(v5);
    __p = 0;
    v33 = 0;
    v34 = 0;
    kaldi::ReadToken(a2, 0, &__p);
    v31 = 0;
    if (v34 >= 0)
    {
      v13 = HIBYTE(v34);
    }

    else
    {
      v13 = v33;
    }

    v14 = *(a1 + 215);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a1 + 200);
    }

    if (v13 == v14)
    {
      v16 = v34 >= 0 ? &__p : __p;
      v17 = v15 >= 0 ? v5 : *v5;
      if (!memcmp(v16, v17, v13))
      {
        kaldi::ExpectToken(a2, 0, "<InputDim>");
        kaldi::ReadBasicType<int>(a2, 0, &v31 + 4);
        kaldi::ExpectToken(a2, 0, "<OutputDim>");
        kaldi::ReadBasicType<int>(a2, 0, &v31);
        kaldi::nnet1::Component::NewComponentOfType(v12);
      }
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "you defined two different recurrent component types ", 52);
    v24 = *(a1 + 215);
    if (v24 >= 0)
    {
      v25 = v5;
    }

    else
    {
      v25 = *(a1 + 192);
    }

    if (v24 >= 0)
    {
      v26 = *(a1 + 215);
    }

    else
    {
      v26 = *(a1 + 200);
    }

    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " vs ", 4);
    if (v34 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v34 >= 0)
    {
      v30 = HIBYTE(v34);
    }

    else
    {
      v30 = v33;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, p_p, v30);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v35);
  }

LABEL_38:
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Unknown token ", 14);
  if (v38 >= 0)
  {
    v19 = &v36;
  }

  else
  {
    v19 = v36;
  }

  if (v38 >= 0)
  {
    v20 = HIBYTE(v38);
  }

  else
  {
    v20 = v37;
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", a typo in config?", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " (RecurrentComponentType)", 25);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v35);
}

void sub_1B510AD10(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::ReadData(void *a1, uint64_t *a2, int a3)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_24;
    }

    kaldi::ReadToken(a2, a3, &v20);
    if ((SHIBYTE(v22) & 0x80000000) == 0 || v21 != 24)
    {
      break;
    }

    if (*v20 != 0x657272756365523CLL || v20[1] != 0x6E6F706D6F43746ELL || v20[2] != 0x3E65707954746E65)
    {
      goto LABEL_31;
    }

    kaldi::ReadToken(a2, a3, (a1 + 24));
  }

  if (SHIBYTE(v22) < 0)
  {
    if (v21 != 12)
    {
      goto LABEL_31;
    }

    v8 = v20;
  }

  else
  {
    if (SHIBYTE(v22) != 12)
    {
      goto LABEL_31;
    }

    v8 = &v20;
  }

  v9 = *v8;
  v10 = *(v8 + 2);
  if (v9 != 0x6E6F706D6F432F3CLL || v10 != 1047817829)
  {
LABEL_31:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unrecognized token ", 19);
    if (v22 >= 0)
    {
      v17 = &v20;
    }

    else
    {
      v17 = v20;
    }

    if (v22 >= 0)
    {
      v18 = HIBYTE(v22);
    }

    else
    {
      v18 = v21;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

LABEL_24:
  v12 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v12)
  {
    a1[22] = 0;
LABEL_39:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "forward component is not an RNN", 31);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  a1[22] = v13;
  if (!v13)
  {
    goto LABEL_39;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  v14 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v14)
  {
    a1[23] = 0;
LABEL_41:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "backward component is not an RNN", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  a1[23] = v15;
  if (!v15)
  {
    goto LABEL_41;
  }

  (*(*a1 + 128))(a1);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_1B510B048(_Unwind_Exception *a1)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::BidirectionalRecurrentComponent::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<RecurrentComponentType>");
  kaldi::WriteToken(a2, a3, (a1 + 192));

  return kaldi::WriteToken(a2, a3, "</Component>");
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::WriteData(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 184))(a1);
  kaldi::nnet1::Component::Write((a1[22] + *(*a1[22] - 24)), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>");
  v8 = (a1[23] + *(*a1[23] - 24));

  return kaldi::nnet1::Component::Write(v8, a2, a3, a4);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::NumParams(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  v3 = (*(*v2 + 176))(v2);
  v4 = *(this + 23) + *(**(this + 23) - 24);
  return (*(*v4 + 176))(v4) + v3;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::GetParams(uint64_t a1, void **a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  v5 = (*(*v4 + 176))(v4);
  v6 = *(a1 + 184) + *(**(a1 + 184) - 24);
  v7 = (*(*v6 + 176))(v6);
  kaldi::Vector<float>::Resize(a2, (v7 + v5), 1);
  memset(v13, 0, sizeof(v13));
  v8 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v8 + 184))(v8, v13);
  v11 = 0;
  v12 = 0;
  v10 = *a2;
  LODWORD(v11) = v5;
  kaldi::VectorBase<float>::CopyFromVec(&v10, v13);
  v9 = *(a1 + 184) + *(**(a1 + 184) - 24);
  (*(*v9 + 184))(v9, v13);
  v11 = 0;
  v12 = 0;
  v10 = *a2 + 4 * v5;
  LODWORD(v11) = v7;
  kaldi::VectorBase<float>::CopyFromVec(&v10, v13);
  kaldi::Vector<float>::Destroy(v13);
}

void sub_1B510B468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetParams(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  v5 = (*(*v4 + 176))(v4);
  v6 = *(a1 + 184) + *(**(a1 + 184) - 24);
  v7 = (*(*v6 + 176))(v6);
  v8 = *(a1 + 176) + *(**(a1 + 176) - 24);
  v12 = 0;
  v13 = 0;
  v11 = *a2;
  LODWORD(v12) = v5;
  (*(*v8 + 192))(v8, &v11);
  v9 = *(a1 + 184) + *(**(a1 + 184) - 24);
  v12 = 0;
  v13 = 0;
  v11 = *a2 + 4 * v5;
  LODWORD(v12) = v7;
  return (*(*v9 + 192))(v9, &v11);
}

float kaldi::nnet1::BidirectionalRecurrentComponent::SumParams(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  v3 = (*(*v2 + 208))(v2);
  v4 = *(this + 23) + *(**(this + 23) - 24);
  return v3 + (*(*v4 + 208))(v4);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::GetGradient(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[22] + *(*a1[22] - 24);
  v11 = (*(*v10 + 176))(v10);
  v12 = a1[23] + *(*a1[23] - 24);
  v13 = (*(*v12 + 176))(v12);
  v14 = *(a2 + 20);
  kaldi::Vector<float>::Resize(a4, (v13 + v11), 1);
  memset(v28, 0, sizeof(v28));
  ((*v9)[3].__end_cap_.__value_)(v9);
  std::vector<int>::resize(v9[27], v14);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = vdupq_n_s64(v14 - 1);
    v17 = xmmword_1B5AE0050;
    v18 = xmmword_1B5AE0060;
    v19 = vdupq_n_s64(4uLL);
    v20 = v14 - 1;
    v21 = v9[27]->__begin_ + 2;
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v16, v18));
      if (vuzp1_s16(v22, *v16.i8).u8[0])
      {
        *(v21 - 2) = v20;
      }

      if (vuzp1_s16(v22, *&v16).i8[2])
      {
        *(v21 - 1) = v14 + (v15 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
      {
        *v21 = v14 + (v15 ^ 0xFFFFFFFD);
        v21[1] = v14 + (v15 ^ 0xFFFFFFFC);
      }

      v15 += 4;
      v17 = vaddq_s64(v17, v19);
      v18 = vaddq_s64(v18, v19);
      v20 -= 4;
      v21 += 4;
    }

    while (((v14 + 3) & 0xFFFFFFFC) != v15);
  }

  kaldi::CuMatrix<float>::Resize(v9[30], v14, *(a2 + 16), 1, 0);
  kaldi::CuMatrixBase<float>::CopyRows(v9[30], a2, v9[27]);
  v23 = v9[22] + *(v9[22]->__begin_ - 3);
  (*(*v23 + 224))(v23, a2, a3, v28);
  v26 = 0;
  v27 = 0;
  v25 = *a4;
  LODWORD(v26) = v11;
  kaldi::VectorBase<float>::CopyFromVec(&v25, v28);
  v24 = v9[23] + *(v9[23]->__begin_ - 3);
  (*(*v24 + 224))(v24, v9[30], a3, v28);
  v26 = 0;
  v27 = 0;
  v25 = *a4 + 4 * v11;
  LODWORD(v26) = v13;
  kaldi::VectorBase<float>::CopyFromVec(&v25, v28);
  ((*v9)->__end_)(v9);
  kaldi::Vector<float>::Destroy(v28);
}

void sub_1B510BA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::PerturbParams(kaldi::nnet1::BidirectionalRecurrentComponent *this, float a2)
{
  v4 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v4 + 216))(v4);
  v5 = *(*(*(this + 23) + *(**(this + 23) - 24)) + 216);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::Info(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  (*(*this + 184))(this, &v22, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n## Forward RNN: input-dim ", 27);
  v3 = MEMORY[0x1B8C84C00](v2, *(*(this + 22) + *(**(this + 22) - 24) + 8));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", output-dim ", 13);
  v5 = MEMORY[0x1B8C84C00](v4, *(*(this + 22) + *(**(this + 22) - 24) + 12));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 64))(v20);
  if ((v21 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v20[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n## Backward RNN: input-dim ", 28);
  v11 = MEMORY[0x1B8C84C00](v10, *(*(this + 23) + *(**(this + 23) - 24) + 8));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
  v13 = MEMORY[0x1B8C84C00](v12, *(*(this + 23) + *(**(this + 23) - 24) + 12));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 64))(__p);
  if ((v19 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v16 = v19;
  }

  else
  {
    v16 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  std::stringbuf::str();
  v22 = *MEMORY[0x1E69E54E8];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v26);
}

void sub_1B510BF00(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::ostringstream::~ostringstream(&a15, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoGradient(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 72))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 72))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1B510C0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoPropagate(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 80))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 80))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1B510C2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoBackPropagate(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 88))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 88))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1B510C4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void kaldi::nnet1::BidirectionalRecurrentComponent::GetInternalMemory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 176);
  v7 = *(*v6 + 112);
  v8 = *(a2 + 8);
  v9 = *(a2 + 28);
  v10 = *(a2 + 32);
  LODWORD(v24[2]) = *(v6 + *(*v6 - 24) + 12);
  *(&v24[2] + 4) = *(a2 + 20);
  HIDWORD(v24[3]) = v9;
  v24[4] = v10;
  v24[0] = &unk_1F2CFA908;
  v24[1] = v8;
  v7(v6, v24);
  v11 = *(a2 + 20);
  std::vector<int>::resize((*(a1 + 216) + 24 * a3), v11);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = xmmword_1B5AE0050;
    v15 = xmmword_1B5AE0060;
    v16 = vdupq_n_s64(4uLL);
    v17 = v11 - 1;
    v18 = (*(*(a1 + 216) + 24 * a3) + 8);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v13, v15));
      if (vuzp1_s16(v19, *v13.i8).u8[0])
      {
        *(v18 - 2) = v17;
      }

      if (vuzp1_s16(v19, *&v13).i8[2])
      {
        *(v18 - 1) = v11 + (v12 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
      {
        *v18 = v11 + (v12 ^ 0xFFFFFFFD);
        v18[1] = v11 + (v12 ^ 0xFFFFFFFC);
      }

      v12 += 4;
      v14 = vaddq_s64(v14, v16);
      v15 = vaddq_s64(v15, v16);
      v17 -= 4;
      v18 += 4;
    }

    while (((v11 + 3) & 0xFFFFFFFC) != v12);
  }

  (*(**(a1 + 184) + 112))(*(a1 + 184), *(a1 + 264) + 48 * a3, a3);
  v20 = *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12);
  v21 = *(a2 + 8) + 4 * v20;
  LODWORD(v20) = *(a2 + 28) - v20;
  v22 = *(a2 + 32);
  LODWORD(v23[2]) = *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12);
  *(&v23[2] + 4) = *(a2 + 20);
  HIDWORD(v23[3]) = v20;
  v23[4] = v22;
  v23[0] = &unk_1F2CFA908;
  v23[1] = v21;
  kaldi::CuMatrixBase<float>::CopyRows(v23, *(a1 + 264) + 48 * a3, (*(a1 + 216) + 24 * a3));
  v23[0] = &unk_1F2CFA908;
  memset(&v23[1], 0, 32);
  quasar::Bitmap::~Bitmap(v23);
  v24[0] = &unk_1F2CFA908;
  memset(&v24[1], 0, 32);
  quasar::Bitmap::~Bitmap(v24);
}

void sub_1B510C834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 88))(a1);
  v8 = *(a2 + 20);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    v9 = *(a1 + 96);
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v33, 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Running forward propagation for batch size = ", 45);
    v11 = MEMORY[0x1B8C84C00](v10, v8);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v13 = MEMORY[0x1B8C84C00](v12, (v8 / v9));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " frames each from ", 18);
    v15 = MEMORY[0x1B8C84C00](v14, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v33);
  }

  std::vector<int>::resize((*(a1 + 216) + 24 * a4), v8);
  if (v8 >= 1)
  {
    v16 = 0;
    v17 = vdupq_n_s64(v8 - 1);
    v18 = xmmword_1B5AE0050;
    v19 = xmmword_1B5AE0060;
    v20 = vdupq_n_s64(4uLL);
    v21 = v8 - 1;
    v22 = (*(*(a1 + 216) + 24 * a4) + 8);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v17, v19));
      if (vuzp1_s16(v23, *v17.i8).u8[0])
      {
        *(v22 - 2) = v21;
      }

      if (vuzp1_s16(v23, *&v17).i8[2])
      {
        *(v22 - 1) = v8 + (v16 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
      {
        *v22 = v8 + (v16 ^ 0xFFFFFFFD);
        v22[1] = v8 + (v16 ^ 0xFFFFFFFC);
      }

      v16 += 4;
      v18 = vaddq_s64(v18, v20);
      v19 = vaddq_s64(v19, v20);
      v21 -= 4;
      v22 += 4;
    }

    while (((v8 + 3) & 0xFFFFFFFC) != v16);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 240) + 48 * a4), v8, *(a2 + 16), 1, 0);
  kaldi::CuMatrixBase<float>::CopyRows(*(a1 + 240) + 48 * a4, a2, (*(a1 + 216) + 24 * a4));
  kaldi::CuMatrix<float>::Resize((*(a1 + 264) + 48 * a4), v8, *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12), 1, 0);
  v24 = (*(a1 + 176) + *(**(a1 + 176) - 24));
  v25 = *(a3 + 8);
  v26 = *(a3 + 28);
  v27 = *(a3 + 32);
  LODWORD(v33[2].__locale_) = v24[3];
  *(&v33[2].__locale_ + 4) = *(a3 + 20);
  HIDWORD(v33[3].__locale_) = v26;
  v33[4].__locale_ = v27;
  v33[0].__locale_ = &unk_1F2CFA908;
  v33[1].__locale_ = v25;
  (*(*v24 + 112))(v24, a2, v33, a4);
  v28 = *(a1 + 184) + *(**(a1 + 184) - 24);
  (*(*v28 + 112))(v28, *(a1 + 240) + 48 * a4, *(a1 + 264) + 48 * a4, a4);
  v29 = *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12);
  v30 = *(a3 + 8) + 4 * v29;
  LODWORD(v29) = *(a3 + 28) - v29;
  v31 = *(a3 + 32);
  LODWORD(v32[2]) = *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12);
  *(&v32[2] + 4) = *(a3 + 20);
  HIDWORD(v32[3]) = v29;
  v32[4] = v31;
  v32[0] = &unk_1F2CFA908;
  v32[1] = v30;
  kaldi::CuMatrixBase<float>::CopyRows(v32, *(a1 + 264) + 48 * a4, (*(a1 + 216) + 24 * a4));
  v32[0] = &unk_1F2CFA908;
  memset(&v32[1], 0, 32);
  quasar::Bitmap::~Bitmap(v32);
  v33[0].__locale_ = &unk_1F2CFA908;
  memset(&v33[1], 0, 32);
  quasar::Bitmap::~Bitmap(v33);
}

void sub_1B510CCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 88))(a1);
  v12 = *(a2 + 20);
  v13 = *(a1 + 96);
  v14 = *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12);
  v39 = *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v42, 3);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Running backward propagation for batch size = ", 46);
    v16 = MEMORY[0x1B8C84C00](v15, v12);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", which contains ", 17);
    v18 = MEMORY[0x1B8C84C00](v17, (v12 / v13));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " frames each from ", 18);
    v20 = MEMORY[0x1B8C84C00](v19, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v42);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 288) + 48 * a6), v12, *(a1 + *(*a1 - 24) + 8), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 312) + 48 * a6), v12, *(a1 + *(*a1 - 24) + 8), 0, 0);
  v21 = *(a1 + 176);
  v22 = *(*v21 - 24);
  v23 = *(a3 + 8);
  v24 = *(a3 + 28);
  v25 = *(a3 + 32);
  LODWORD(v43[1]) = v14;
  *(&v43[1] + 4) = *(a3 + 20);
  HIDWORD(v43[2]) = v24;
  v43[3] = v25;
  v42.__locale_ = &unk_1F2CFA908;
  v43[0] = v23;
  v26 = *(a4 + 8);
  v27 = *(a4 + 28);
  v28 = *(a4 + 32);
  LODWORD(v41[2]) = v14;
  *(&v41[2] + 4) = *(a4 + 20);
  HIDWORD(v41[3]) = v27;
  v41[4] = v28;
  v41[0] = &unk_1F2CFA908;
  v41[1] = v26;
  (*(*&v21[v22] + 128))(&v21[v22], a2, &v42, v41, *(a1 + 288) + 48 * a6, a6);
  v40 = a6;
  v41[0] = &unk_1F2CFA908;
  a6 = a6;
  memset(&v41[1], 0, 32);
  quasar::Bitmap::~Bitmap(v41);
  v42.__locale_ = &unk_1F2CFA908;
  memset(v43, 0, sizeof(v43));
  quasar::Bitmap::~Bitmap(&v42);
  kaldi::CuMatrix<float>::Resize((*(a1 + 336) + 48 * a6), v12, v39, 1, 0);
  v29 = *(a1 + 336) + 48 * a6;
  v30 = *(a4 + 8) + 4 * v14;
  v31 = *(a4 + 28) - v14;
  v32 = *(a4 + 32);
  LODWORD(v43[1]) = v39;
  *(&v43[1] + 4) = *(a4 + 20);
  HIDWORD(v43[2]) = v31;
  v43[3] = v32;
  v42.__locale_ = &unk_1F2CFA908;
  v43[0] = v30;
  kaldi::CuMatrixBase<float>::CopyRows(v29, &v42, (*(a1 + 216) + 24 * a6));
  v42.__locale_ = &unk_1F2CFA908;
  memset(v43, 0, sizeof(v43));
  quasar::Bitmap::~Bitmap(&v42);
  kaldi::CuMatrix<float>::Resize((*(a1 + 264) + 48 * a6), v12, v39, 1, 0);
  v33 = *(a1 + 264) + 48 * a6;
  v34 = *(a3 + 8) + 4 * v14;
  v35 = *(a3 + 28) - v14;
  v36 = *(a3 + 32);
  LODWORD(v43[1]) = v39;
  *(&v43[1] + 4) = *(a3 + 20);
  HIDWORD(v43[2]) = v35;
  v43[3] = v36;
  v42.__locale_ = &unk_1F2CFA908;
  v43[0] = v34;
  kaldi::CuMatrixBase<float>::CopyRows(v33, &v42, (*(a1 + 216) + 24 * a6));
  v42.__locale_ = &unk_1F2CFA908;
  memset(v43, 0, sizeof(v43));
  quasar::Bitmap::~Bitmap(&v42);
  v37 = *(a1 + 184) + *(**(a1 + 184) - 24);
  result = (*(*v37 + 128))(v37, *(a1 + 240) + 48 * a6, *(a1 + 264) + 48 * a6, *(a1 + 336) + 48 * a6, *(a1 + 312) + 48 * a6, v40);
  if (a5)
  {
    kaldi::CuMatrixBase<float>::CopyRows(a5, *(a1 + 312) + 48 * a6, (*(a1 + 216) + 24 * a6));
    return kaldi::CuMatrixBase<float>::AddMat(a5, *(a1 + 288) + 48 * a6, 111, 1.0, 1.0);
  }

  return result;
}

void sub_1B510D1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::AccumGradients(uint64_t a1)
{
  v2 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v2 + 232))(v2);
  v3 = *(*(*(a1 + 184) + *(**(a1 + 184) - 24)) + 232);

  return v3();
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::UpdateWeights(kaldi::nnet1::BidirectionalRecurrentComponent *this, void *a2, uint64_t a3)
{
  v6 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v6 + 256))(v6);
  v7 = *(this + 23);
  v8 = *(*v7 - 24);
  v9 = *(*&v7[v8] + 256);

  return v9(&v7[v8], a2, a3);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetGradientNormalization(uint64_t a1, float a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v4 + 240))(v4);
  v5 = *(*(*(a1 + 184) + *(**(a1 + 184) - 24)) + 240);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::NormalizeGradients(kaldi::nnet1::BidirectionalRecurrentComponent *this, float a2)
{
  v4 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v4 + 248))(v4);
  v5 = *(*(*(this + 23) + *(**(this + 23) - 24)) + 248);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::Check(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  if ((*(*v2 + 24))(v2) == 280 || (v3 = *(this + 23) + *(**(this + 23) - 24), (*(*v3 + 24))(v3) == 280))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "no recursive recurrent definition");
    goto LABEL_10;
  }

  v4 = *(this + 22);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v5 + 8);
  v7 = this + *(*this - 24);
  if (v6 != *(v7 + 2))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the forward RNN's input dimension does not match the component's input dimension ", 81);
    v12 = MEMORY[0x1B8C84C00](v11, *(*(this + 22) + *(**(this + 22) - 24) + 8));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " vs ", 4);
    MEMORY[0x1B8C84C00](v13, *(this + *(*this - 24) + 8));
    goto LABEL_10;
  }

  v8 = *(this + 23) + *(**(this + 23) - 24);
  if (*(v8 + 8) != v6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the backward RNN's input dimension does not match the component's input dimension ", 82);
    v15 = MEMORY[0x1B8C84C00](v14, *(*(this + 23) + *(**(this + 23) - 24) + 8));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " vs ", 4);
    MEMORY[0x1B8C84C00](v16, *(this + *(*this - 24) + 8));
    goto LABEL_10;
  }

  if (*(v8 + 12) + *(v5 + 12) != *(v7 + 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the component has output dimension ", 35);
    v18 = MEMORY[0x1B8C84C00](v17, *(this + *(*this - 24) + 12));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " , doesn't equal the sum of individual RNN ", 43);
    v20 = MEMORY[0x1B8C84C00](v19, *(*(this + 22) + *(**(this + 22) - 24) + 12));
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " and ", 5);
    MEMORY[0x1B8C84C00](v21, *(*(this + 23) + *(**(this + 23) - 24) + 12));
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  (*(*v4 + 128))();
  v9 = *(**(this + 23) + 128);

  return v9();
}

void kaldi::nnet1::BidirectionalRecurrentComponent::GetHistoryState(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 3 * a3;
  v7 = *(*(a1 + 176) + 8) + 48 * a3;
  v8 = *(v7 + 16);
  v9 = *(*(*(a1 + 184) + 8) + 48 * a3 + 16);
  kaldi::CuMatrix<float>::Resize(a2, *(v7 + 20), (v9 + v8), 1, 0);
  v10 = *(a2 + 8);
  v11 = *(a2 + 28);
  v12 = *(a2 + 32);
  LODWORD(v17[1]) = v8;
  *(&v17[1] + 4) = *(a2 + 20);
  HIDWORD(v17[2]) = v11;
  v17[3] = v12;
  v16 = &unk_1F2CFA908;
  v17[0] = v10;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v16, *(*(a1 + 176) + 8) + 16 * v6, 111);
  v16 = &unk_1F2CFA908;
  memset(v17, 0, sizeof(v17));
  quasar::Bitmap::~Bitmap(&v16);
  v13 = *(a2 + 8) + 4 * v8;
  v14 = *(a2 + 28) - v8;
  v15 = *(a2 + 32);
  LODWORD(v17[1]) = v9;
  *(&v17[1] + 4) = *(a2 + 20);
  HIDWORD(v17[2]) = v14;
  v17[3] = v15;
  v16 = &unk_1F2CFA908;
  v17[0] = v13;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v16, *(*(a1 + 184) + 8) + 48 * a3, 111);
  v16 = &unk_1F2CFA908;
  memset(v17, 0, sizeof(v17));
  quasar::Bitmap::~Bitmap(&v16);
}

void sub_1B510DB24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::BidirectionalRecurrentComponent::GetHistoryState(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(*(*(a1 + 176) + 8) + 48 * a4 + 16);
  v9 = *(*(*(a1 + 184) + 8) + 48 * a4 + 16);
  kaldi::CuVector<float>::Resize(a2, v9 + v8, 1);
  v10 = *(a2 + 8);
  v25 = &unk_1F2CFCA48;
  v26 = v10;
  v27 = v8;
  v28 = *(a2 + 24);
  v11 = *(*(a1 + 176) + 8) + 48 * a4;
  v12 = *(v11 + 8) + 4 * *(v11 + 24) * a3;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  v22 = v12;
  v21 = &unk_1F2CFCA48;
  v23 = v13;
  v24 = v14;
  kaldi::CuVectorBase<float>::CopyFromVec(&v25, &v21);
  v15 = *(a2 + 8) + 4 * v8;
  v25 = &unk_1F2CFCA48;
  v26 = v15;
  v27 = v9;
  v28 = *(a2 + 24);
  v16 = *(*(a1 + 184) + 8) + 48 * a4;
  v17 = *(v16 + 8) + 4 * *(v16 + 24) * a3;
  v18 = *(v16 + 16);
  v19 = *(v16 + 32);
  v22 = v17;
  v21 = &unk_1F2CFCA48;
  v23 = v18;
  v24 = v19;
  return kaldi::CuVectorBase<float>::CopyFromVec(&v25, &v21);
}

float kaldi::nnet1::BidirectionalRecurrentComponent::SetInternalBoundary(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 176);
  v8 = *(v6 + 104);
  v9 = *(v6 + 112);
  v7 = (v6 + 104);
  if (v8 == v9)
  {
    std::vector<kaldi::CuVector<float>>::resize(v7, *(a1 + 80));
    std::vector<kaldi::CuMatrix<float>>::resize((*(a1 + 176) + 128), *(a1 + 80));
  }

  v10 = *(a1 + 184);
  v12 = *(v10 + 104);
  v13 = *(v10 + 112);
  v11 = (v10 + 104);
  if (v12 == v13)
  {
    std::vector<kaldi::CuVector<float>>::resize(v11, *(a1 + 80));
    std::vector<kaldi::CuMatrix<float>>::resize((*(a1 + 184) + 128), *(a1 + 80));
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(a2 + 16);
    v16 = (v14 / 2);
    v17 = *(a2 + 8);
    v23[0] = &unk_1F2CFCA48;
    v23[1] = v17;
    v23[2] = v16;
    v24 = *(a2 + 24);
    v22[0] = &unk_1F2CFCA48;
    v22[1] = v17 + 4 * v16;
    v22[2] = (v15 / 2);
    v22[3] = v24;
    v18 = kaldi::CuVectorBase<float>::Sum(v23);
    v19 = *(*(a1 + 176) + 104) + 32 * a3;
    if (*&v18 <= 0.0)
    {
      kaldi::CuVector<float>::Resize(v19, 0, 1);
    }

    else
    {
      kaldi::CuVector<float>::Resize(v19, v16, 1);
      kaldi::CuVectorBase<float>::CopyFromVec((*(*(a1 + 176) + 104) + 32 * a3), v23);
    }

    kaldi::CuVector<float>::Resize(*(*(a1 + 184) + 104) + 32 * a3, v16, 1);
    return kaldi::CuVectorBase<float>::ReverseCopyFromVec(*(*(a1 + 184) + 104) + 32 * a3, v22);
  }

  else
  {
    kaldi::CuVector<float>::Resize(*(*(a1 + 176) + 104) + 32 * a3, 0, 1);
    v20 = *(*(a1 + 184) + 104) + 32 * a3;

    kaldi::CuVector<float>::Resize(v20, 0, 1);
  }

  return result;
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetTrainOptions(kaldi::nnet1::BidirectionalRecurrentComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(this, a2);
  (*(**(this + 22) + 104))(*(this + 22), a2);
  v4 = *(**(this + 23) + 104);

  return v4();
}

void kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(kaldi::nnet1::RecurrentBaseComponent *this, const kaldi::nnet1::NnetTrainOptions *lpsrc)
{
  if (v4)
  {
    v5 = *(v4 + 8);
    *(this + 71) = *(v4 + 23);
    *(this + 56) = v5;
    *(this + 12) = *(v4 + 6);
    v6 = this + *(*this - 24);
    v7 = *(lpsrc + 8);
    *(v6 + 71) = *(lpsrc + 23);
    *(v6 + 56) = v7;
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "need RecurrentNnetTrainOptions in recurrent style component, ignoring SetTrainOptions", 85);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v8);
  }
}

void kaldi::nnet1::BidirectionalRecurrentComponent::SetHistoryState()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::ResetHistoryState()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::ResetHistoryState(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  (*(**(this + 22) + 32))(*(this + 22));
  v2 = *(**(this + 23) + 32);

  return v2();
}

_BYTE *kaldi::nnet1::BidirectionalRecurrentComponent::EnsureBuffers(_BYTE *this)
{
  if ((this[360] & 1) == 0)
  {
    v1 = this;
    (*(*this + 128))(this);
    v2 = *(v1 + 20);
    std::vector<std::vector<int>>::resize(v1 + 27, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 30, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 33, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 36, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 39, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 42, v2);
    (*(**(v1 + 22) + 88))(*(v1 + 22));
    this = (*(**(v1 + 23) + 88))(*(v1 + 23));
    v1[360] = 1;
  }

  return this;
}

void kaldi::nnet1::RecurrentBaseComponent::SetHistoryOptions(kaldi::nnet1::RecurrentBaseComponent *this, const kaldi::nnet1::HistoryOptions *a2)
{
  v4 = (*(*this + 120))(this);
  if (v5)
  {
    v6 = *(v5 + 8);
    *&v9[15] = *(v5 + 23);
    *v9 = v6;
    v8 = &unk_1F2D27A38;
    v10 = &unk_1F2D27A58;
    v7 = *(v5 + 13);
    v11 = *(a2 + 2);
    v12 = v7;
    (*(*this + 104))(this, &v8);
    kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions(&v8);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v8);
  }
}

void kaldi::nnet1::Component::GetUnitOutputFnc(uint64_t a1)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetUnitOutputFnc", 16);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetUnitOutputFnc", 16);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::UpdatableComponent::GetNormalizedLearningRate(kaldi::nnet1::UpdatableComponent *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetNormalizedLearningRate", 25);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*this + 24))(this);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::UpdatableComponent::PerturbParams(kaldi::nnet1::UpdatableComponent *this, float a2)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "PerturbParams", 13);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " is not implemented for ", 24);
  v5 = (*(*this + 24))(this);
  kaldi::nnet1::Component::TypeToMarker(v5, &v9);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, " component.");
  std::string::~string(&v9);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
}

void kaldi::nnet1::UpdatableComponent::GetGradient(uint64_t a1)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetGradient", 11);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 368));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 368));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::PropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Running on single input doesn't make sense for bidirectional RNNs, since history state is not saved.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void non-virtual thunk tokaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 208));
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this - 160));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 200));
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this - 168));
}

void virtual thunk tokaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = (v1 + 368);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this + *(*this - 24)));
}

void kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 20) = &unk_1F2CFDD08;
  *(this + 21) = &unk_1F2CFDD30;
  v5 = *(this + 22);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = (this + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 312);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 288);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 264);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 240);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 216);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  quasar::Bitmap::~Bitmap((this + 168));
  quasar::Bitmap::~Bitmap((this + 160));
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(this, a2 + 1);
}

void quasar::lm::fst_builder::FstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::create(unsigned int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  if (*a1 == 2)
  {
    if (*(a1 + 16) == 1)
    {
      if ((*(a1 + 17) & 1) == 0)
      {
        operator new();
      }
    }

    else if ((*(a1 + 17) & 1) == 0)
    {
      operator new();
    }

    quasar::lm::LogMessage::LogMessage(v8, 5, "create", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 89);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Not implemented (", 17);
    v7 = quasar::lm::fst_builder::operator<<<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v6, a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ").", 2);
    quasar::lm::LogMessage::~LogMessage(v8);
  }

  else
  {
    if (*a1 == 1)
    {
      operator new();
    }

    quasar::lm::LogMessage::LogMessage(v8, 5, "create", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 94);
    v3 = quasar::rescoring::AdapterModel::getFeaturizer(v8);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Unknown FstBuilder implementation: ", 35);
    MEMORY[0x1B8C84C00](v4, *a1);
    quasar::lm::LogMessage::~LogMessage(v8);
  }
}

void sub_1B510EFE0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E1C40763D396DLL);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void *quasar::lm::fst_builder::operator<<<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(void *a1, unsigned int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Options(", 8);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "implementation=", 15);
  v6 = MEMORY[0x1B8C84C00](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " ", 1);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "explicitStartEndMarkers=", 24);
  v9 = MEMORY[0x1B8C84BD0](v8, *(a2 + 4));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "keepDisambiguationSymbols=", 26);
  v12 = MEMORY[0x1B8C84BD0](v11, *(a2 + 5));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "removeRedundantStates=", 22);
  v15 = MEMORY[0x1B8C84BD0](v14, *(a2 + 6));
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "attachSymbolTables=", 19);
  v18 = MEMORY[0x1B8C84BD0](v17, *(a2 + 7));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ", 1);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "mutableFst=", 11);
  v21 = quasar::lm::fst_builder::operator<<<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v20, a2 + 1);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " ", 1);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "squeezedFst=", 12);
  v24 = quasar::lm::fst_builder::operator<<<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v23, a2 + 16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ")", 1);
  return a1;
}

uint64_t quasar::lm::fst_builder::FstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::addState(uint64_t a1, void *a2, float *a3)
{
  if (*(a1 + 40) <= *(a1 + 60))
  {
    quasar::lm::LogMessage::LogMessage(v7, 5, "addState", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 124);
    quasar::rescoring::AdapterModel::getFeaturizer(v7);
    quasar::lm::LogMessage::~LogMessage(v7);
  }

  else
  {
    quasar::lm::nullstream(a1);
  }

  (*(*a1 + 16))(a1, a2, a3);
  *(a1 + 64) += (a2[1] - *a2) >> 4;
  if ((*a3 + 0.00097656) != INFINITY)
  {
    ++*(a1 + 72);
  }

  result = *(a1 + 60);
  *(a1 + 60) = result + 1;
  return result;
}

uint64_t quasar::lm::fst_builder::FstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::build(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    quasar::lm::LogMessage::LogMessage(v15, 5, "build", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 139);
    quasar::rescoring::AdapterModel::getFeaturizer(v15);
    quasar::lm::LogMessage::~LogMessage(v15);
  }

  else
  {
    v2 = quasar::lm::nullstream(a1);
  }

  if (*(a1 + 40) == *(a1 + 60))
  {
    v3 = quasar::lm::nullstream(v2);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v15, 5, "build", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 141);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v15);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Expected ", 9);
    v6 = MEMORY[0x1B8C84C30](v5, *(a1 + 40));
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " states, but only observed ", 27);
    v8 = MEMORY[0x1B8C84C00](v7, *(a1 + 60));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " state(s).", 10);
    quasar::lm::LogMessage::~LogMessage(v15);
  }

  if (*(a1 + 64) == *(a1 + 48))
  {
    quasar::lm::nullstream(v3);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v15, 5, "build", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 144);
    v9 = quasar::rescoring::AdapterModel::getFeaturizer(v15);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Expected ", 9);
    v11 = MEMORY[0x1B8C84C30](v10, *(a1 + 48));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " arcs, but only observed ", 25);
    v13 = MEMORY[0x1B8C84C30](v12, *(a1 + 64));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " arc(s).", 8);
    quasar::lm::LogMessage::~LogMessage(v15);
  }

  result = (*(*a1 + 24))(a1);
  *(a1 + 80) = 1;
  return result;
}

uint64_t quasar::lm::fst_builder::FstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FstBuilder(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = &unk_1F2CFE2D0;
  v6 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v6;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 73) = 0;
  v7 = quasar::lm::nullstream(a1);
  if (*(a1 + 40))
  {
    v8 = quasar::lm::nullstream(v7);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v12, 5, "FstBuilder", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 113);
    quasar::rescoring::AdapterModel::getFeaturizer(v12);
    quasar::lm::LogMessage::~LogMessage(v12);
  }

  if (*(a1 + 40) * *(a1 + 40) >= *(a1 + 48))
  {
    v9 = quasar::lm::nullstream(v8);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v12, 5, "FstBuilder", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 114);
    quasar::rescoring::AdapterModel::getFeaturizer(v12);
    quasar::lm::LogMessage::~LogMessage(v12);
  }

  if ((*(a1 + 56) & 0x80000000) != 0)
  {
    quasar::lm::LogMessage::LogMessage(v12, 5, "FstBuilder", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 116);
    quasar::rescoring::AdapterModel::getFeaturizer(v12);
    quasar::lm::LogMessage::~LogMessage(v12);
  }

  else
  {
    v10 = quasar::lm::nullstream(v9);
  }

  if (*(a1 + 40) <= *(a1 + 56))
  {
    quasar::lm::LogMessage::LogMessage(v12, 5, "FstBuilder", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 117);
    quasar::rescoring::AdapterModel::getFeaturizer(v12);
    quasar::lm::LogMessage::~LogMessage(v12);
  }

  else
  {
    quasar::lm::nullstream(v10);
  }

  return a1;
}

uint64_t quasar::lm::fst_builder::MutableFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::MutableFstBuilder(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = quasar::lm::fst_builder::FstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FstBuilder(a1, a2, a3, a4, a5);
  *v7 = &unk_1F2CFE300;
  v8 = *(a2 + 1);
  *(v7 + 11) = v8;
  if (v8)
  {
    quasar::lm::nullstream(v7);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v13, 5, "MutableFstBuilder", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 164);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v13);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "A mutable FST should be supplied when using ", 44);
    v11 = MEMORY[0x1B8C84C00](v10, *a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ".", 1);
    quasar::lm::LogMessage::~LogMessage(v13);
  }

  (*(**(a1 + 88) + 224))(*(a1 + 88));
  (*(**(a1 + 88) + 248))(*(a1 + 88), *(a1 + 40));
  return a1;
}

uint64_t quasar::lm::fst_builder::MutableFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::addStateImpl(uint64_t a1, uint64_t *a2, float *a3)
{
  v6 = (*(**(a1 + 88) + 200))(*(a1 + 88));
  v7 = v6;
  if (v6 == *(a1 + 60))
  {
    quasar::lm::nullstream(v6);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v11, 5, "addStateImpl", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 177);
    quasar::rescoring::AdapterModel::getFeaturizer(v11);
    quasar::lm::LogMessage::~LogMessage(v11);
  }

  v9 = *a2;
  v8 = a2[1];
  while (v9 != v8)
  {
    (*(**(a1 + 88) + 208))(*(a1 + 88), v7, v9);
    v9 += 16;
  }

  return (*(**(a1 + 88) + 184))(*(a1 + 88), v7, *a3);
}

uint64_t quasar::lm::fst_builder::Options<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Options(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 24) = 0;
  return result;
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::SqueezedFstBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = quasar::lm::fst_builder::FstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FstBuilder(a1, a2, a3, a4, a5);
  *v6 = &unk_1F2CFE330;
  *(v6 + 88) = *(a2 + 24);
  *(v6 + 96) = 0;
  operator new();
}

void sub_1B510FBE8(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (v4)
  {
    MEMORY[0x1B8C85350](v4, v2);
  }

  _Unwind_Resume(exception_object);
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::writeHeader(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    quasar::lm::LogMessage::LogMessage(v8, 5, "writeHeader", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 253);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Aligned file format is currently not supported.", 47);
    quasar::lm::LogMessage::~LogMessage(v8);
  }

  else
  {
    quasar::lm::nullstream(a1);
  }

  std::string::basic_string[abi:ne200100]<0>(&v15, "");
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  *v10 = 0u;
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::TypeString(&__p);
  std::string::operator=(v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
  std::string::operator=(&v10[1], v3);
  v4 = *(a1 + 96) == 0;
  if (*(a1 + 96))
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  *(&v12 + 1) = 1;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4;
  }

  *&v12 = __PAIR64__(v6, v5);
  fst::FstHeader::Write();
  fst::SqueezedQuantizationOptions<true,false>::Write();
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(v9[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }
}

void sub_1B510FDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  if (*(v15 - 17) < 0)
  {
    operator delete(*(v15 - 40));
  }

  _Unwind_Resume(a1);
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::addStateImpl(uint64_t a1, uint64_t *a2, float *a3)
{
  quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::writeState(a1, a3);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::writeArc(a1);
    v5 += 16;
  }
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::writeState(uint64_t a1, float *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = (*a2 + 0.00097656) != INFINITY;
  v4 = *(a1 + 88);
  v5 = *(a1 + 208);
  v34 = *(a1 + 224);
  v35 = *(a1 + 240);
  v6 = *(a1 + 160);
  v29 = *(a1 + 144);
  v30 = v6;
  v7 = *(a1 + 176);
  v32 = *(a1 + 192);
  v33 = v5;
  v31 = v7;
  v8 = *(a1 + 128);
  v27 = *(a1 + 112);
  v28 = v8;
  MEMORY[0x1B8C84B80](v26, v4);
  v9 = v4 + *(*v4 - 24);
  if ((v9[32] & 5) == 0)
  {
    v10 = *(v9 + 5);
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v46 = v35;
    v44 = v33;
    v45 = v34;
    v42 = v31;
    v43 = v32;
    (*(*v10 + 40))(v36);
    if (v37 == -1)
    {
      std::ios_base::clear((v4 + *(*v4 - 24)), *(v4 + *(*v4 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v26);
  v11 = std::ostream::write();
  v12 = *(a1 + 240) + 4;
  *(a1 + 240) = v12;
  v13 = *(a1 + 88) + *(**(a1 + 88) - 24);
  if ((*(v13 + 32) & 5) != 0)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = -1;
    v46 = -1;
  }

  else
  {
    v11 = (*(**(v13 + 40) + 32))(&v38);
    v12 = *(a1 + 240);
    v14 = v46;
  }

  if (v12 == v14)
  {
    quasar::lm::nullstream(v11);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v36, 5, "writeState", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 306);
    quasar::rescoring::AdapterModel::getFeaturizer(v36);
    quasar::lm::LogMessage::~LogMessage(v36);
  }

  if (v3)
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 480);
    v34 = *(a1 + 496);
    v35 = *(a1 + 512);
    v17 = *(a1 + 432);
    v29 = *(a1 + 416);
    v30 = v17;
    v18 = *(a1 + 448);
    v32 = *(a1 + 464);
    v33 = v16;
    v31 = v18;
    v19 = *(a1 + 400);
    v27 = *(a1 + 384);
    v28 = v19;
    MEMORY[0x1B8C84B80](v26, v15);
    v20 = v15 + *(*v15 - 24);
    if ((v20[32] & 5) == 0)
    {
      v21 = *(v20 + 5);
      v38 = v27;
      v39 = v28;
      v40 = v29;
      v41 = v30;
      v46 = v35;
      v44 = v33;
      v45 = v34;
      v42 = v31;
      v43 = v32;
      (*(*v21 + 40))(v36);
      if (v37 == -1)
      {
        std::ios_base::clear((v15 + *(*v15 - 24)), *(v15 + *(*v15 - 24) + 32) | 4);
      }
    }

    MEMORY[0x1B8C84B90](v26);
    v22 = std::ostream::write();
    v23 = *(a1 + 512) + 8;
    *(a1 + 512) = v23;
    v24 = *(a1 + 88) + *(**(a1 + 88) - 24);
    if ((*(v24 + 32) & 5) != 0)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = -1;
      v46 = -1;
    }

    else
    {
      v22 = (*(**(v24 + 40) + 32))(&v38);
      v23 = *(a1 + 512);
      v25 = v46;
    }

    if (v23 == v25)
    {
      quasar::lm::nullstream(v22);
    }

    else
    {
      quasar::lm::LogMessage::LogMessage(v36, 5, "writeState", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 317);
      quasar::rescoring::AdapterModel::getFeaturizer(v36);
      quasar::lm::LogMessage::~LogMessage(v36);
    }
  }
}

void sub_1B51102EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x1B8C84B90](va);
  _Unwind_Resume(a1);
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::writeArc(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 344);
  v19 = *(a1 + 328);
  v20 = v2;
  v21 = *(a1 + 360);
  v3 = *(a1 + 264);
  v4 = *(a1 + 296);
  v5 = *(a1 + 312);
  v16 = *(a1 + 280);
  v17 = v4;
  v6 = *(a1 + 88);
  v22 = *(a1 + 376);
  v18 = v5;
  v14 = *(a1 + 248);
  v15 = v3;
  MEMORY[0x1B8C84B80](v13, v6);
  v7 = v6 + *(*v6 - 24);
  if ((v7[32] & 5) == 0)
  {
    v8 = *(v7 + 5);
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v32 = v22;
    v30 = v20;
    v31 = v21;
    v28 = v18;
    v29 = v19;
    (*(*v8 + 40))(v23);
    if (v23[16] == -1)
    {
      std::ios_base::clear((v6 + *(*v6 - 24)), *(v6 + *(*v6 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v13);
  v9 = std::ostream::write();
  v10 = *(a1 + 376) + 12;
  *(a1 + 376) = v10;
  v11 = *(a1 + 88) + *(**(a1 + 88) - 24);
  if ((*(v11 + 32) & 5) != 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = -1;
    v32 = -1;
  }

  else
  {
    v9 = (*(**(v11 + 40) + 32))(&v24);
    v10 = *(a1 + 376);
    v12 = v32;
  }

  if (v10 == v12)
  {
    quasar::lm::nullstream(v9);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v23, 5, "writeArc", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 332);
    quasar::rescoring::AdapterModel::getFeaturizer(v23);
    quasar::lm::LogMessage::~LogMessage(v23);
  }
}

void sub_1B51105A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x1B8C84B90](va);
  _Unwind_Resume(a1);
}

void sub_1B511062C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SqueezedQuantizationOptions<true,false>::Write()
{
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  return 1;
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::SqueezedFstBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = quasar::lm::fst_builder::FstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FstBuilder(a1, a2, a3, a4, a5);
  *v6 = &unk_1F2CFE360;
  *(v6 + 88) = *(a2 + 24);
  *(v6 + 96) = 0;
  operator new();
}

void sub_1B51109BC(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (v4)
  {
    MEMORY[0x1B8C85350](v4, v2);
  }

  _Unwind_Resume(exception_object);
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::writeHeader(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    quasar::lm::LogMessage::LogMessage(v8, 5, "writeHeader", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 253);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Aligned file format is currently not supported.", 47);
    quasar::lm::LogMessage::~LogMessage(v8);
  }

  else
  {
    quasar::lm::nullstream(a1);
  }

  std::string::basic_string[abi:ne200100]<0>(&v15, "");
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  *v10 = 0u;
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  fst::SqueezedFstConsts<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::TypeString(&__p);
  std::string::operator=(v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = fst::ArcTpl<fst::TropicalWeightTpl<float>,int>::Type();
  std::string::operator=(&v10[1], v3);
  v4 = *(a1 + 96) == 0;
  if (*(a1 + 96))
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  *(&v12 + 1) = 1;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4;
  }

  *&v12 = __PAIR64__(v6, v5);
  fst::FstHeader::Write();
  fst::SqueezedQuantizationOptions<true,false>::Write();
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(v9[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }
}

void sub_1B5110B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  if (*(v15 - 17) < 0)
  {
    operator delete(*(v15 - 40));
  }

  _Unwind_Resume(a1);
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::addStateImpl(uint64_t a1, uint64_t *a2, float *a3)
{
  quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::writeState(a1, a3);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::writeArc(a1);
    v5 += 16;
  }
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::writeState(uint64_t a1, float *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = (*a2 + 0.00097656) != INFINITY;
  v4 = *(a1 + 88);
  v5 = *(a1 + 208);
  v34 = *(a1 + 224);
  v35 = *(a1 + 240);
  v6 = *(a1 + 160);
  v29 = *(a1 + 144);
  v30 = v6;
  v7 = *(a1 + 176);
  v32 = *(a1 + 192);
  v33 = v5;
  v31 = v7;
  v8 = *(a1 + 128);
  v27 = *(a1 + 112);
  v28 = v8;
  MEMORY[0x1B8C84B80](v26, v4);
  v9 = v4 + *(*v4 - 24);
  if ((v9[32] & 5) == 0)
  {
    v10 = *(v9 + 5);
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v46 = v35;
    v44 = v33;
    v45 = v34;
    v42 = v31;
    v43 = v32;
    (*(*v10 + 40))(v36);
    if (v37 == -1)
    {
      std::ios_base::clear((v4 + *(*v4 - 24)), *(v4 + *(*v4 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v26);
  v11 = std::ostream::write();
  v12 = *(a1 + 240) + 4;
  *(a1 + 240) = v12;
  v13 = *(a1 + 88) + *(**(a1 + 88) - 24);
  if ((*(v13 + 32) & 5) != 0)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = -1;
    v46 = -1;
  }

  else
  {
    v11 = (*(**(v13 + 40) + 32))(&v38);
    v12 = *(a1 + 240);
    v14 = v46;
  }

  if (v12 == v14)
  {
    quasar::lm::nullstream(v11);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v36, 5, "writeState", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 306);
    quasar::rescoring::AdapterModel::getFeaturizer(v36);
    quasar::lm::LogMessage::~LogMessage(v36);
  }

  if (v3)
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 480);
    v34 = *(a1 + 496);
    v35 = *(a1 + 512);
    v17 = *(a1 + 432);
    v29 = *(a1 + 416);
    v30 = v17;
    v18 = *(a1 + 448);
    v32 = *(a1 + 464);
    v33 = v16;
    v31 = v18;
    v19 = *(a1 + 400);
    v27 = *(a1 + 384);
    v28 = v19;
    MEMORY[0x1B8C84B80](v26, v15);
    v20 = v15 + *(*v15 - 24);
    if ((v20[32] & 5) == 0)
    {
      v21 = *(v20 + 5);
      v38 = v27;
      v39 = v28;
      v40 = v29;
      v41 = v30;
      v46 = v35;
      v44 = v33;
      v45 = v34;
      v42 = v31;
      v43 = v32;
      (*(*v21 + 40))(v36);
      if (v37 == -1)
      {
        std::ios_base::clear((v15 + *(*v15 - 24)), *(v15 + *(*v15 - 24) + 32) | 4);
      }
    }

    MEMORY[0x1B8C84B90](v26);
    v22 = std::ostream::write();
    v23 = *(a1 + 512) + 8;
    *(a1 + 512) = v23;
    v24 = *(a1 + 88) + *(**(a1 + 88) - 24);
    if ((*(v24 + 32) & 5) != 0)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = -1;
      v46 = -1;
    }

    else
    {
      v22 = (*(**(v24 + 40) + 32))(&v38);
      v23 = *(a1 + 512);
      v25 = v46;
    }

    if (v23 == v25)
    {
      quasar::lm::nullstream(v22);
    }

    else
    {
      quasar::lm::LogMessage::LogMessage(v36, 5, "writeState", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 317);
      quasar::rescoring::AdapterModel::getFeaturizer(v36);
      quasar::lm::LogMessage::~LogMessage(v36);
    }
  }
}

void sub_1B51110C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x1B8C84B90](va);
  _Unwind_Resume(a1);
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::writeArc(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 328);
  v3 = *(a1 + 360);
  v21 = *(a1 + 344);
  v22 = v3;
  v4 = *(a1 + 264);
  v5 = *(a1 + 296);
  v6 = *(a1 + 312);
  v17 = *(a1 + 280);
  v18 = v5;
  v7 = *(a1 + 88);
  v23 = *(a1 + 376);
  v19 = v6;
  v20 = v2;
  v15 = *(a1 + 248);
  v16 = v4;
  MEMORY[0x1B8C84B80](v14, v7);
  v8 = v7 + *(*v7 - 24);
  if ((v8[32] & 5) == 0)
  {
    v9 = *(v8 + 5);
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v33 = v23;
    v31 = v21;
    v32 = v22;
    v29 = v19;
    v30 = v20;
    (*(*v9 + 40))(v24);
    if (v24[16] == -1)
    {
      std::ios_base::clear((v7 + *(*v7 - 24)), *(v7 + *(*v7 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v14);
  v10 = std::ostream::write();
  v11 = *(a1 + 376) + 16;
  *(a1 + 376) = v11;
  v12 = *(a1 + 88) + *(**(a1 + 88) - 24);
  if ((*(v12 + 32) & 5) != 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = -1;
    v33 = -1;
  }

  else
  {
    v10 = (*(**(v12 + 40) + 32))(&v25);
    v11 = *(a1 + 376);
    v13 = v33;
  }

  if (v11 == v13)
  {
    quasar::lm::nullstream(v10);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v24, 5, "writeArc", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/fst_builder.cpp", 332);
    quasar::rescoring::AdapterModel::getFeaturizer(v24);
    quasar::lm::LogMessage::~LogMessage(v24);
  }
}

void sub_1B5111364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x1B8C84B90](va);
  _Unwind_Resume(a1);
}

void sub_1B51113EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~SqueezedFstBuilder(void *a1)
{
  *a1 = &unk_1F2CFE330;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C40451B5BE8);
  }

  return a1;
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,true,false>::~SqueezedFstBuilder(void *a1)
{
  *a1 = &unk_1F2CFE330;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C40451B5BE8);
  }

  JUMPOUT(0x1B8C85350);
}

void *quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~SqueezedFstBuilder(void *a1)
{
  *a1 = &unk_1F2CFE360;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C40451B5BE8);
  }

  return a1;
}

void quasar::lm::fst_builder::SqueezedFstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,false>::~SqueezedFstBuilder(void *a1)
{
  *a1 = &unk_1F2CFE360;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    MEMORY[0x1B8C85350](v2, 0x1000C40451B5BE8);
  }

  JUMPOUT(0x1B8C85350);
}

void *quasar::lm::fst_builder::operator<<<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(void *a1, unsigned __int8 *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SqueezedOptions(", 16);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "acceptor=", 9);
  v6 = MEMORY[0x1B8C84BD0](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "quantized=", 10);
  v8 = MEMORY[0x1B8C84BD0](v7, a2[1]);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "stream=", 7);
  v10 = MEMORY[0x1B8C84BB0](v9, *(a2 + 1));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
  return a1;
}

void *quasar::lm::fst_builder::operator<<<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(void *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "MutableOptions(", 15);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "fst=", 4);
  v6 = MEMORY[0x1B8C84BB0](v5, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ")", 1);
  return a1;
}

uint64_t fst::TropicalWeightTpl<float>::Type()
{
  {
    operator new();
  }

  return fst::TropicalWeightTpl<float>::Type(void)::type;
}

void sub_1B5111798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v15, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

float kaldi::NccfToPovFeature(kaldi *this, float a2)
{
  v2 = -1.0;
  if (a2 >= -1.0)
  {
    v2 = a2;
  }

  if (a2 <= 1.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  return pow(1.0001 - v3, 0.15) + -1.0;
}

float kaldi::NccfToPov(kaldi *this, float a2)
{
  v2 = fabsf(a2);
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = v2;
  v4 = v2 + -1.0;
  v5 = exp(v4 * 7.5) * 5.4 + -5.2 + v2 * 4.8;
  v6 = v5 + exp(v3 * -10.0) * -2.0;
  v7 = v6 + exp(v4 * 20.0) * 4.2;
  return 1.0 / (exp(-v7) + 1.0);
}

void kaldi::ComputeCorrelation(uint64_t a1, int a2, int a3, int a4, void *a5, void *a6)
{
  memset(v24, 0, sizeof(v24));
  kaldi::Vector<float>::Resize(v24, *(a1 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(v24, a1);
  v22 = 0;
  v23 = 0;
  v21 = *a1;
  LODWORD(v22) = a4;
  v12 = kaldi::VectorBase<float>::Sum(&v21);
  kaldi::VectorBase<float>::Add(v24, -*&v12 / a4);
  kaldi::VecVec<float>();
  if (a2 <= a3)
  {
    v14 = v13;
    v15 = 0;
    v16 = 4 * a2;
    v17 = a3 - a2 + 1;
    do
    {
      kaldi::VecVec<float>();
      v19 = v18;
      kaldi::VecVec<float>();
      *(*a5 + 4 * v15) = v20;
      *(*a6 + 4 * v15++) = v14 * v19;
      v16 += 4;
    }

    while (v17 != v15);
  }

  kaldi::Vector<float>::Destroy(v24);
}

void sub_1B5111A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::ComputeNccf(uint64_t *result, uint64_t *a2, uint64_t *a3, float a4)
{
  v4 = *(result + 2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *result;
    v7 = *a2;
    v8 = *a3;
    do
    {
      v9 = *(v7 + 4 * v5) + a4;
      v10 = fabsf(sqrtf(v9));
      if (v9 == -INFINITY)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v10;
      }

      if (v11 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = *(v6 + 4 * v5) / v11;
      }

      *(v8 + 4 * v5++) = v12;
    }

    while (v4 != v5);
  }

  return result;
}

void *quasar::operator<<(void *a1, int *a2)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = "AudioEndPointedClient";
LABEL_10:
        v5 = 21;
        goto LABEL_11;
      }

      return a1;
    }

    v4 = "AudioAdded";
    v5 = 10;
LABEL_11:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
    return a1;
  }

  if (v3 == 2)
  {
    v4 = "AudioEndPointedServer";
    goto LABEL_10;
  }

  if (v3 == 3)
  {
    v4 = "AudioMaxBufferLengthReached";
    v5 = 27;
    goto LABEL_11;
  }

  return a1;
}

void quasar::AppLmData::AppLmData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) < 0)
  {
    v7 = *(a3 + 8);
    if (v7)
    {
      std::string::__init_copy_ctor_external(&v9, *a3, v7);
      goto LABEL_7;
    }
  }

  else if (*(a3 + 23))
  {
    v9 = *a3;
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "app-lm.data");
LABEL_7:
  v8 = *a4;
  *a4 = 0;
  v10[3] = v8;
  std::string::basic_string[abi:ne200100]<0>(v10, "");
  quasar::LmData::LmData(a1);
}

void quasar::SystemConfig::Register<std::vector<std::pair<std::string,std::string>>>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  quasar::SystemConfig::Register(a1, a2, a3);
  quasar::result_handler::Range::Range(&v21, a6, a7);
  v15 = (a1 + 824);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v22 = __p;
  v16 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1480, __p);
  *(v16 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::result_handler::Range::Range(&v21, a8, a9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v22 = __p;
  v17 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1504, __p);
  *(v17 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!a5)
    {
      return;
    }
  }

  else if (!a5)
  {
    return;
  }

  __p[0] = (a1 + 824);
  v18 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1528, (a1 + 824));
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18 + 56, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5112818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::AppLmData::getOrderedOovs(quasar::AppLmData *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = this + 1120; ; std::string::operator=((v5 - 56), (i + 16)))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    v4 = a2[1];
    if (v4 >= a2[2])
    {
      v5 = std::vector<quasar::AppLmData::Oov>::__emplace_back_slow_path<quasar::AppLmData::Oov const&>(a2, (i + 40));
    }

    else
    {
      std::vector<quasar::AppLmData::Oov>::__construct_one_at_end[abi:ne200100]<quasar::AppLmData::Oov const&>(a2, (i + 40));
      v5 = v4 + 56;
    }

    a2[1] = v5;
  }

  v6 = a2[1];
  v7 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v6 - *a2) >> 3));
  if (v6 == *a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,false>(*a2, v6, v8, 1);
}

void sub_1B5112900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::AppLmData::observeOov(uint64_t a1, const void **a2, int a3)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 1104), a2))
  {
    v7.__r_.__value_.__r.__words[0] = a2;
    v6 = std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1104), a2);
    *(v6 + 22) += a3;
  }

  else
  {
    v11 = 0uLL;
    v14[0] = 0;
    v14[1] = 0;
    v12 = 0;
    v13 = v14;
    v15 = a3;
    std::pair<std::string const,quasar::AppLmData::Oov>::pair[abi:ne200100]<std::string&,quasar::AppLmData::Oov&,0>(&v7, a2, &v11);
    std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::AppLmData::Oov>>((a1 + 1104), &v7.__r_.__value_.__l.__data_);
    std::__tree<std::string>::destroy(v10, v10[1]);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::destroy(&v13, v14[0]);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11);
    }
  }
}

void sub_1B5112A14(_Unwind_Exception *a1, uint64_t a2, ...)
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
  std::pair<std::string const,quasar::AppLmData::Oov>::~pair(va);
  quasar::AppLmData::Oov::~Oov(va1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,quasar::AppLmData::Oov>::~pair(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 48, *(a1 + 56));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void quasar::AppLmData::Oov::~Oov(char **this)
{
  std::__tree<std::string>::destroy((this + 3), this[4]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t quasar::AppLmData::countOovLme(quasar::AppLmData *this)
{
  v1 = *(this + 294) + 1;
  *(this + 294) = v1;
  v2 = *(this + 295);
  v3 = v1 <= v2 || v2 < 1;
  v4 = v3;
  if (!v3 && quasar::gLogLevel >= 6)
  {
    memset(v6, 0, sizeof(v6));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Utterance skipped as number of LMEs in utterance exceed threshold", 65);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(v6);
  }

  return v4;
}

uint64_t quasar::AppLmData::addSentence(uint64_t a1, unsigned int *a2, std::string *a3, uint64_t a4, uint64_t a5, int a6, __int32 *a7)
{
  v13 = *a2;
  memset(&v56, 0, sizeof(v56));
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *a4, *(a4 + 8));
  }

  else
  {
    v55 = *a4;
  }

  v54 = 1;
  if (a6)
  {
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *a4, *(a4 + 8));
    }

    else
    {
      __str = *a4;
    }

    quasar::LmData::parseCountPhrase(&__str, &v55, &v54);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v14 = a1 + 60 * v13;
  if (quasar::LmData::tokenizeSentence(a1, &v55, &v50))
  {
    memset(&__p, 0, sizeof(__p));
    *(a1 + 1176) = 0;
    v15 = v50;
    for (i = v51; v15 != i; v15 += 32)
    {
      v17 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 1152, v15);
      if (a1 + 1160 == v17)
      {
        MEMORY[0x1B8C84820](&v56, "");
        v23 = v15;
      }

      else
      {
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v56.__r_.__value_.__l.__size_;
        }

        v19 = *(v15 + 23);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v15 + 8);
        }

        if (size == v19)
        {
          v21 = (v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v56 : v56.__r_.__value_.__r.__words[0];
          v22 = v20 >= 0 ? v15 : *v15;
          if (!memcmp(v21, v22, size))
          {
            continue;
          }
        }

        std::string::operator=(&v56, v15);
        ++*(a1 + 1176);
        v23 = (v17 + 56);
      }

      std::vector<std::string>::push_back[abi:ne200100](&__p, v23);
    }

    v24 = *(a1 + 1180);
    if (v24 <= 0 || *(a1 + 1176) <= v24)
    {
      v25 = quasar::LmData::addTokenizedSentence(a1, *a2, a3, &__p, v14 + 108, 0, v54, a7);
    }

    else
    {
      if (quasar::gLogLevel >= 6)
      {
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
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Utterance skipped as number of LMEs in utterance exceed threshold", 65);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v33);
      }

      v25 = 0;
      *(v14 + 116) += v54;
    }

    *&v33 = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
  }

  else
  {
    if (quasar::gLogLevel >= 6)
    {
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
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v33);
      std::operator+<char>();
      v26 = std::string::append(&v31, "'");
      v27 = *&v26->__r_.__value_.__l.__data_;
      __p.__end_cap_.__value_ = v26->__r_.__value_.__r.__words[2];
      *&__p.__begin_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__end_cap_.__value_) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__begin_;
      }

      if (SHIBYTE(__p.__end_cap_.__value_) >= 0)
      {
        value_high = HIBYTE(__p.__end_cap_.__value_);
      }

      else
      {
        value_high = __p.__end_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, p_p, value_high);
      if (SHIBYTE(__p.__end_cap_.__value_) < 0)
      {
        operator delete(__p.__begin_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v33);
    }

    v25 = 0;
    *(v14 + 116) += v54;
  }

  *&v33 = &v50;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  return v25;
}

void sub_1B5112F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void **p_p)
{
  quasar::QuasarTraceMessage::~QuasarTraceMessage(&p_p);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  p_p = (v25 - 200);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (*(v25 - 121) < 0)
  {
    operator delete(*(v25 - 144));
  }

  if (*(v25 - 97) < 0)
  {
    operator delete(*(v25 - 120));
  }

  _Unwind_Resume(a1);
}

void quasar::AppLmData::addOovTokensFromSentence(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (quasar::LmData::tokenizeSentence(a1, a2, &v19))
  {
    v5 = v19;
    for (i = v20; v5 != i; v5 += 2)
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        v14.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&v14.__r_.__value_.__l.__data_ = v7;
      }

      if (quasar::lm::SymbolTableData::tokenIsOov(*(a1 + 96)))
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &v14.__r_.__value_.__l.__data_);
        if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 1104), &v14.__r_.__value_.__l.__data_))
        {
          *&v9 = &v14;
          v8 = std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1104), &v14.__r_.__value_.__l.__data_);
          ++*(v8 + 22);
        }

        else
        {
          v9 = 0uLL;
          v12[0] = 0;
          v12[1] = 0;
          v10 = 0;
          v11 = v12;
          v13 = 1;
          std::pair<std::string const,quasar::AppLmData::Oov>::pair[abi:ne200100]<std::string const&,quasar::AppLmData::Oov&,0>(&v15, &v14, &v9);
          std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::AppLmData::Oov>>((a1 + 1104), &v15);
          std::__tree<std::string>::destroy(v18, v18[1]);
          if (SHIBYTE(v17) < 0)
          {
            operator delete(*(&v16 + 1));
          }

          if (SBYTE7(v16) < 0)
          {
            operator delete(v15);
          }

          std::__tree<std::string>::destroy(&v11, v12[0]);
          if (SHIBYTE(v10) < 0)
          {
            operator delete(v9);
          }
        }
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (quasar::gLogLevel >= 6)
  {
    memset(v18, 0, sizeof(v18));
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Failed to tokenize sentence", 27);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v15);
  }

  *&v15 = &v19;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void sub_1B5113240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24)
{
  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a24);
  a24 = v25 - 128;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a24);
  std::__tree<std::string>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t quasar::AppLmData::setPronsForWord(uint64_t a1, void *a2, std::string *a3, _BYTE *a4)
{
  if (quasar::lm::SymbolTableData::tokenIsOov(*(a1 + 96)))
  {
    *&v23.__r_.__value_.__r.__words[1] = 0uLL;
    v23.__r_.__value_.__r.__words[0] = &v23.__r_.__value_.__l.__size_;
    if (*a4 == 1)
    {
      v8 = a3->__r_.__value_.__r.__words[0];
      v28 = &v23;
      p_size = &v23.__r_.__value_.__l.__size_;
      if (v8 != &a3->__r_.__value_.__r.__words[1])
      {
        if (*(v8 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, *(v8 + 32), *(v8 + 40));
        }

        else
        {
          v21 = *(v8 + 32);
        }

        quasar::PhonesetMapping::getNvASRPhoneSequence(*(a1 + 1144), &v21);
      }
    }

    if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 1104), a2))
    {
      v9 = *a4;
      __p[0] = a2;
      v10 = std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1104), a2);
      v11 = &v23;
      if (!v9)
      {
        v11 = a3;
      }

      v12 = (v10 + 8);
      if (v12 != v11)
      {
        if (v9)
        {
          v13 = &v23.__r_.__value_.__l.__size_;
        }

        else
        {
          v13 = &a3->__r_.__value_.__l.__size_;
        }

        std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v12, v11->__r_.__value_.__l.__data_, v13);
      }
    }

    else
    {
      if (*a4)
      {
        v19 = &v23;
      }

      else
      {
        v19 = a3;
      }

      quasar::AppLmData::Oov::Oov(&v21, a2, v19, 0);
      std::pair<std::string,quasar::AppLmData::Oov>::pair[abi:ne200100]<std::string const&,quasar::AppLmData::Oov&,0>(__p, a2, &v21);
      std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::AppLmData::Oov>>((a1 + 1104), __p);
      std::__tree<std::string>::destroy(v27, *(&v27[0] + 1));
      if (SHIBYTE(v26) < 0)
      {
        operator delete(*(&v25 + 1));
      }

      if (SBYTE7(v25) < 0)
      {
        operator delete(__p[0]);
      }

      std::__tree<std::string>::destroy(v22, v22[1]);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    v18 = 1;
    std::__tree<std::string>::destroy(&v23, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(v27, 0, sizeof(v27));
      v25 = 0u;
      v26 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator+<char>();
      v14 = std::string::append(&v23, " (word is not OOV)");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v21;
      }

      else
      {
        v16 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v16, size);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    return 0;
  }

  return v18;
}

void sub_1B511367C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, char *a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a25);
  std::__tree<std::string>::destroy(&a19, a20);
  _Unwind_Resume(a1);
}

uint64_t quasar::AppLmData::canAddProns(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v7 = a3[2] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "orthography=", 12);
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

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " pronSize=", 10);
      MEMORY[0x1B8C84C30](v13, a3[2]);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    return 3;
  }

  else
  {
    IsOov = quasar::lm::SymbolTableData::tokenIsOov(*(a1 + 96));
    if (IsOov)
    {
      *&v24.__r_.__value_.__r.__words[1] = 0uLL;
      v24.__r_.__value_.__r.__words[0] = &v24.__r_.__value_.__l.__size_;
      if (a4)
      {
        v18 = *a3;
        v43 = &v24;
        p_size = &v24.__r_.__value_.__l.__size_;
        if (v18 != a3 + 1)
        {
          if (*(v18 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&v42, *(v18 + 32), *(v18 + 40));
          }

          else
          {
            v42 = *(v18 + 32);
          }

          quasar::PhonesetMapping::getNvASRPhoneSequence(*(a1 + 1144), &v42);
        }
      }

      v14 = 0;
      std::__tree<std::string>::destroy(&v24, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      if (quasar::gLogLevel >= 5)
      {
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
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::operator+<char>();
        v19 = std::string::append(&v24, " (word is not OOV)");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v42.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v42.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v42;
        }

        else
        {
          v21 = v42.__r_.__value_.__r.__words[0];
        }

        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v42.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v21, size);
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      return 1;
    }
  }

  return v14;
}

void sub_1B5113AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char *a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a16);
  std::__tree<std::string>::destroy(&__p, a11);
  _Unwind_Resume(a1);
}

void quasar::AppLmData::generateLmeData(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "•|\\(|\\)||\\[|\\]|\\{|\\}|®|,|;|\\?|\\!|\\\");
  quasar::BasicTextSanitizer::BasicTextSanitizer(v4);
}

void sub_1B51147F8()
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&STACK[0xA00]);
  STACK[0xA00] = v0;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0xA00]);
  JUMPOUT(0x1B51148E8);
}

void sub_1B511482C()
{
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  JUMPOUT(0x1B5114904);
}

void sub_1B5114844(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5114904);
}

void sub_1B511485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::string>::destroy(&a69, a70);
  STACK[0xA00] = &a17;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&STACK[0xA00]);
  JUMPOUT(0x1B51148A4);
}

uint64_t std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__emplace_back_slow_path<std::vector<quasar::LmeDataFactoryBase::Word> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::LmeDataFactoryBase::Word> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t quasar::AppLmData::getSupportedSlots@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(this + 1152);
  v4 = (this + 1160);
  if (v3 != (this + 1160))
  {
    do
    {
      this = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a2, v3 + 4);
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  return this;
}

void quasar::AppLmData::~AppLmData(quasar::AppLmData *this)
{
  *this = &unk_1F2CFE460;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1152, *(this + 145));
  v2 = *(this + 143);
  *(this + 143) = 0;
  if (v2)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](this + 1144, v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::~__hash_table(this + 1104);
  if (*(this + 1103) < 0)
  {
    operator delete(*(this + 135));
  }

  if (*(this + 1071) < 0)
  {
    operator delete(*(this + 131));
  }

  quasar::LmData::~LmData(this);
}

{
  *this = &unk_1F2CFE460;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1152, *(this + 145));
  v2 = *(this + 143);
  *(this + 143) = 0;
  if (v2)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](this + 1144, v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::~__hash_table(this + 1104);
  if (*(this + 1103) < 0)
  {
    operator delete(*(this + 135));
  }

  if (*(this + 1071) < 0)
  {
    operator delete(*(this + 131));
  }

  quasar::LmData::~LmData(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::pair<std::string const,quasar::AppLmData::Oov>::pair[abi:ne200100]<std::string&,quasar::AppLmData::Oov&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  std::set<std::string>::set[abi:ne200100](this[2].__r_.__value_.__r.__words, a3 + 3);
  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a3 + 12);
  return this;
}

void sub_1B5114C10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,quasar::AppLmData::Oov>::pair[abi:ne200100]<std::string const&,quasar::AppLmData::Oov&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  std::set<std::string>::set[abi:ne200100](this[2].__r_.__value_.__r.__words, a3 + 3);
  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a3 + 12);
  return this;
}

void sub_1B5114CD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::AppLmData::Oov::Oov(std::string *this, __int128 *a2, const void ***a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  std::set<std::string>::set[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(this[1].__r_.__value_.__r.__words, *a3, a3 + 1);
  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  return this;
}

void sub_1B5114D88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<std::string>::set[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(void *a1, const void **a2, const void ***a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, a2, a3);
  return a1;
}

std::string *std::pair<std::string,quasar::AppLmData::Oov>::pair[abi:ne200100]<std::string const&,quasar::AppLmData::Oov&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  std::set<std::string>::set[abi:ne200100](this[2].__r_.__value_.__r.__words, a3 + 3);
  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a3 + 12);
  return this;
}

void sub_1B5114E84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::AppLmData::Oov>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::AppLmData::Oov>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,quasar::AppLmData::Oov>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x1B8C85350);
  }
}

void std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<quasar::AppLmData::Oov>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<quasar::AppLmData::Oov>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__tree<std::string>::destroy(a2 + 24, *(a2 + 32));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void *std::vector<quasar::AppLmData::Oov>::__construct_one_at_end[abi:ne200100]<quasar::AppLmData::Oov const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = std::set<std::string>::set[abi:ne200100]((v4 + 24), a2 + 3);
  *(v4 + 48) = *(a2 + 12);
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<quasar::AppLmData::Oov>::__emplace_back_slow_path<quasar::AppLmData::Oov const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AppLmData::Oov>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  std::set<std::string>::set[abi:ne200100]((v7 + 24), a2 + 3);
  *(v7 + 48) = *(a2 + 12);
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::AppLmData::Oov>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5115270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<quasar::AppLmData::Oov>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AppLmData::Oov>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      v10 = *(a2 + v7);
      *(v8 + 16) = *(a2 + v7 + 16);
      *v8 = v10;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      *(v8 + 24) = *(a2 + v7 + 24);
      v11 = (a2 + v7 + 32);
      v12 = *v11;
      *(a4 + v7 + 32) = *v11;
      v13 = a4 + v7 + 32;
      v14 = *(a2 + v7 + 40);
      *(v8 + 40) = v14;
      if (v14)
      {
        *(v12 + 16) = v13;
        v9[3] = v11;
        *v11 = 0;
        *(a2 + v7 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v13;
      }

      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    v19 = a4 + v7;
    v17 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::AppLmData::Oov>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>>::~__exception_guard_exceptions[abi:ne200100](v16);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AppLmData::Oov>,quasar::AppLmData::Oov*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<quasar::AppLmData::Oov>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<quasar::AppLmData::Oov>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::AppLmData::Oov>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::AppLmData::Oov>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<quasar::AppLmData::Oov>::destroy[abi:ne200100](v4, i - 56);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v217 = (a2 - 56);
    v215 = (a2 - 32);
    v4 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v4;
        v5 = a2 - v4;
        v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v4) >> 3);
        v7 = v6 - 2;
        if (v6 > 2)
        {
          switch(v6)
          {
            case 3:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4, v4 + 56, v217);
              return;
            case 4:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4, v4 + 56, v4 + 112, v217);
              return;
            case 5:
              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4, v4 + 56, v4 + 112, v4 + 168, v217);
              return;
          }
        }

        else
        {
          if (v6 < 2)
          {
            return;
          }

          if (v6 == 2)
          {
            if (*(a2 - 33) < 0)
            {
              std::string::__init_copy_ctor_external(&v234, *(a2 - 56), *(a2 - 48));
            }

            else
            {
              v81 = *v217;
              v234.__r_.__value_.__r.__words[2] = *(a2 - 40);
              *&v234.__r_.__value_.__l.__data_ = v81;
            }

            std::set<std::string>::set[abi:ne200100](v235, v215);
            v236 = *(a2 - 8);
            if (*(v4 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v231, *v4, *(v4 + 8));
            }

            else
            {
              v212 = *v4;
              v231.__r_.__value_.__r.__words[2] = *(v4 + 16);
              *&v231.__r_.__value_.__l.__data_ = v212;
            }

            std::set<std::string>::set[abi:ne200100](v232, (v4 + 24));
            v213 = *(v4 + 48);
            v233 = v213;
            v214 = v236;
            std::__tree<std::string>::destroy(v232, v232[1]);
            if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v231.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(v235, v235[1]);
            if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v234.__r_.__value_.__l.__data_);
            }

            if (v214 > v213)
            {
              std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v4, v217);
            }

            return;
          }
        }

        if (v5 <= 1343)
        {
          if (a4)
          {
            if (v4 != a2)
            {
              v82 = v4 + 56;
              if (v4 + 56 != a2)
              {
                v83 = 0;
                v84 = v4;
                do
                {
                  v85 = v82;
                  if (*(v84 + 79) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v286, *v82, *(v84 + 64));
                  }

                  else
                  {
                    v86 = *v82;
                    v286.__r_.__value_.__r.__words[2] = *(v82 + 16);
                    *&v286.__r_.__value_.__l.__data_ = v86;
                  }

                  std::set<std::string>::set[abi:ne200100](&v287, (v84 + 80));
                  v290 = *(v84 + 104);
                  if (*(v84 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v282, *v84, *(v84 + 8));
                  }

                  else
                  {
                    v87 = *v84;
                    v282.__r_.__value_.__r.__words[2] = *(v84 + 16);
                    *&v282.__r_.__value_.__l.__data_ = v87;
                  }

                  std::set<std::string>::set[abi:ne200100](&v283, (v84 + 24));
                  v88 = *(v84 + 48);
                  v285 = v88;
                  v89 = v290;
                  std::__tree<std::string>::destroy(&v283, v284);
                  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v282.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::string>::destroy(&v287, v288);
                  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v286.__r_.__value_.__l.__data_);
                  }

                  if (v89 > v88)
                  {
                    v90 = *v85;
                    v277.__r_.__value_.__r.__words[2] = *(v85 + 16);
                    *&v277.__r_.__value_.__l.__data_ = v90;
                    *(v85 + 8) = 0;
                    *(v85 + 16) = 0;
                    *v85 = 0;
                    v91 = (v84 + 88);
                    v92 = *(v84 + 88);
                    v278 = *(v84 + 80);
                    v279 = v92;
                    v280 = *(v84 + 96);
                    if (v280)
                    {
                      *(v92 + 16) = &v279;
                      *(v84 + 80) = v91;
                      *v91 = 0;
                      *(v84 + 96) = 0;
                    }

                    else
                    {
                      v278 = &v279;
                    }

                    v281 = *(v84 + 104);
                    for (i = v83; ; i -= 56)
                    {
                      v94 = a1 + i;
                      if (*(a1 + i + 79) < 0)
                      {
                        operator delete(*(v94 + 56));
                      }

                      *(v94 + 56) = *v94;
                      *(v94 + 72) = *(v94 + 16);
                      *(v94 + 23) = 0;
                      *v94 = 0;
                      std::__tree<std::string>::__move_assign(v94 + 80, (v94 + 24));
                      *(v94 + 104) = *(v94 + 48);
                      if (!i)
                      {
                        v99 = a1;
                        goto LABEL_244;
                      }

                      if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v273, v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v273 = v277;
                      }

                      std::set<std::string>::set[abi:ne200100](&v274, &v278);
                      v276 = v281;
                      v95 = (a1 + i - 56);
                      if (*(a1 + i - 33) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v268, *v95, *(a1 + i - 48));
                      }

                      else
                      {
                        v96 = *v95;
                        v268.__r_.__value_.__r.__words[2] = *(a1 + i - 40);
                        *&v268.__r_.__value_.__l.__data_ = v96;
                      }

                      std::set<std::string>::set[abi:ne200100](&v269, (a1 + i - 32));
                      v97 = *(a1 + i - 8);
                      v272 = v97;
                      v98 = v276;
                      std::__tree<std::string>::destroy(&v269, v270);
                      if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v268.__r_.__value_.__l.__data_);
                      }

                      std::__tree<std::string>::destroy(&v274, v275);
                      if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v273.__r_.__value_.__l.__data_);
                      }

                      if (v98 <= v97)
                      {
                        break;
                      }
                    }

                    v99 = a1 + i;
LABEL_244:
                    if (*(v99 + 23) < 0)
                    {
                      operator delete(*v99);
                    }

                    v100 = a1 + i;
                    v101 = *&v277.__r_.__value_.__l.__data_;
                    *(v99 + 16) = *(&v277.__r_.__value_.__l + 2);
                    *v99 = v101;
                    *(&v277.__r_.__value_.__s + 23) = 0;
                    v277.__r_.__value_.__s.__data_[0] = 0;
                    v102 = v99 + 32;
                    std::__tree<std::string>::destroy(v100 + 24, *(v99 + 32));
                    *(v100 + 24) = v278;
                    v103 = v279;
                    *(v99 + 32) = v279;
                    v104 = v280;
                    *(v99 + 40) = v280;
                    if (v104)
                    {
                      v105 = 0;
                      *(v103 + 2) = v102;
                      v278 = &v279;
                      v279 = 0;
                      v280 = 0;
                    }

                    else
                    {
                      *(v100 + 24) = v102;
                      v105 = v279;
                    }

                    *(v99 + 48) = v281;
                    std::__tree<std::string>::destroy(&v278, v105);
                    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v277.__r_.__value_.__l.__data_);
                    }
                  }

                  v82 = v85 + 56;
                  v83 += 56;
                  v84 = v85;
                }

                while (v85 + 56 != a2);
              }
            }
          }

          else if (v4 != a2)
          {
            v190 = v4 + 56;
            if (v4 + 56 != a2)
            {
              v191 = (v4 + 104);
              do
              {
                v192 = v4;
                v4 = v190;
                if (*(v192 + 79) < 0)
                {
                  std::string::__init_copy_ctor_external(&v286, *v190, *(v192 + 64));
                }

                else
                {
                  v193 = *v190;
                  v286.__r_.__value_.__r.__words[2] = *(v190 + 16);
                  *&v286.__r_.__value_.__l.__data_ = v193;
                }

                std::set<std::string>::set[abi:ne200100](&v287, (v192 + 80));
                v290 = *(v192 + 104);
                if (*(v192 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v282, *v192, *(v192 + 8));
                }

                else
                {
                  v194 = *v192;
                  v282.__r_.__value_.__r.__words[2] = *(v192 + 16);
                  *&v282.__r_.__value_.__l.__data_ = v194;
                }

                std::set<std::string>::set[abi:ne200100](&v283, (v192 + 24));
                v195 = v192;
                v196 = *(v192 + 48);
                v285 = v196;
                v197 = v290;
                std::__tree<std::string>::destroy(&v283, v284);
                if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v282.__r_.__value_.__l.__data_);
                }

                std::__tree<std::string>::destroy(&v287, v288);
                if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v286.__r_.__value_.__l.__data_);
                }

                if (v197 > v196)
                {
                  v198 = *v4;
                  v277.__r_.__value_.__r.__words[2] = *(v4 + 16);
                  *&v277.__r_.__value_.__l.__data_ = v198;
                  *(v4 + 8) = 0;
                  *(v4 + 16) = 0;
                  *v4 = 0;
                  v199 = (v195 + 88);
                  v200 = *(v195 + 88);
                  v278 = *(v195 + 80);
                  v279 = v200;
                  v280 = *(v195 + 96);
                  if (v280)
                  {
                    *(v200 + 16) = &v279;
                    *(v195 + 80) = v199;
                    *v199 = 0;
                    *(v195 + 96) = 0;
                  }

                  else
                  {
                    v278 = &v279;
                  }

                  v281 = *(v195 + 104);
                  v201 = v191;
                  do
                  {
                    v202 = (v201 - 12);
                    if (*(v201 - 25) < 0)
                    {
                      operator delete(*v202);
                    }

                    *v202 = *(v201 - 26);
                    *(v201 - 4) = *(v201 - 11);
                    *(v201 - 81) = 0;
                    *(v201 - 104) = 0;
                    std::__tree<std::string>::__move_assign((v201 - 6), v201 - 10);
                    *v201 = *(v201 - 14);
                    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v273, v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v273 = v277;
                    }

                    std::set<std::string>::set[abi:ne200100](&v274, &v278);
                    v276 = v281;
                    if (*(v201 - 137) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v268, *(v201 - 20), *(v201 - 19));
                    }

                    else
                    {
                      v203 = *(v201 - 10);
                      v268.__r_.__value_.__r.__words[2] = *(v201 - 18);
                      *&v268.__r_.__value_.__l.__data_ = v203;
                    }

                    std::set<std::string>::set[abi:ne200100](&v269, v201 - 17);
                    v204 = *(v201 - 28);
                    v272 = v204;
                    v205 = v276;
                    std::__tree<std::string>::destroy(&v269, v270);
                    if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v268.__r_.__value_.__l.__data_);
                    }

                    std::__tree<std::string>::destroy(&v274, v275);
                    if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v273.__r_.__value_.__l.__data_);
                    }

                    v201 -= 14;
                  }

                  while (v205 > v204);
                  v206 = (v201 - 12);
                  if (*(v201 - 25) < 0)
                  {
                    operator delete(*v206);
                  }

                  v207 = *&v277.__r_.__value_.__l.__data_;
                  *(v201 - 4) = *(&v277.__r_.__value_.__l + 2);
                  *v206 = v207;
                  *(&v277.__r_.__value_.__s + 23) = 0;
                  v277.__r_.__value_.__s.__data_[0] = 0;
                  v208 = v201 - 4;
                  std::__tree<std::string>::destroy((v201 - 6), *(v201 - 2));
                  *(v201 - 3) = v278;
                  v209 = v279;
                  *(v201 - 2) = v279;
                  v210 = v280;
                  *(v201 - 1) = v280;
                  if (v210)
                  {
                    v211 = 0;
                    *(v209 + 2) = v208;
                    v278 = &v279;
                    v279 = 0;
                    v280 = 0;
                  }

                  else
                  {
                    *(v201 - 3) = v208;
                    v211 = v279;
                  }

                  *v201 = v281;
                  std::__tree<std::string>::destroy(&v278, v211);
                  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v277.__r_.__value_.__l.__data_);
                  }
                }

                v190 = v4 + 56;
                v191 += 14;
              }

              while (v4 + 56 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v4 != a2)
          {
            v106 = v7 >> 1;
            v107 = v7 >> 1;
            do
            {
              v108 = v107;
              if (v106 >= v107)
              {
                v223 = v107;
                v109 = (2 * v107) | 1;
                v110 = v4 + 56 * v109;
                v111 = 2 * v107 + 2;
                if (v111 < v6)
                {
                  if (*(v110 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v286, *v110, *(v110 + 8));
                  }

                  else
                  {
                    v112 = *v110;
                    v286.__r_.__value_.__r.__words[2] = *(v110 + 16);
                    *&v286.__r_.__value_.__l.__data_ = v112;
                  }

                  std::set<std::string>::set[abi:ne200100](&v287, (v110 + 24));
                  v290 = *(v110 + 48);
                  if (*(v110 + 79) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v282, *(v110 + 56), *(v110 + 64));
                  }

                  else
                  {
                    v113 = *(v110 + 56);
                    v282.__r_.__value_.__r.__words[2] = *(v110 + 72);
                    *&v282.__r_.__value_.__l.__data_ = v113;
                  }

                  std::set<std::string>::set[abi:ne200100](&v283, (v110 + 80));
                  v114 = *(v110 + 104);
                  v285 = v114;
                  v115 = v290;
                  std::__tree<std::string>::destroy(&v283, v284);
                  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v282.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::string>::destroy(&v287, v288);
                  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v286.__r_.__value_.__l.__data_);
                  }

                  if (v115 > v114)
                  {
                    v110 += 56;
                    v109 = v111;
                  }
                }

                if (*(v110 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v277, *v110, *(v110 + 8));
                }

                else
                {
                  v116 = *v110;
                  v277.__r_.__value_.__r.__words[2] = *(v110 + 16);
                  *&v277.__r_.__value_.__l.__data_ = v116;
                }

                std::set<std::string>::set[abi:ne200100](&v278, (v110 + 24));
                v117 = v4 + 56 * v223;
                v281 = *(v110 + 48);
                if (*(v117 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v273, *v117, *(v117 + 8));
                }

                else
                {
                  v118 = *v117;
                  v273.__r_.__value_.__r.__words[2] = *(v117 + 16);
                  *&v273.__r_.__value_.__l.__data_ = v118;
                }

                v119 = v106;
                std::set<std::string>::set[abi:ne200100](&v274, (v117 + 24));
                v120 = *(v117 + 48);
                v276 = v120;
                v121 = v281;
                std::__tree<std::string>::destroy(&v274, v275);
                if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v273.__r_.__value_.__l.__data_);
                }

                std::__tree<std::string>::destroy(&v278, v279);
                v108 = v223;
                if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v277.__r_.__value_.__l.__data_);
                }

                v122 = v121 > v120;
                v106 = v119;
                if (!v122)
                {
                  v123 = *v117;
                  v268.__r_.__value_.__r.__words[2] = *(v117 + 16);
                  *&v268.__r_.__value_.__l.__data_ = v123;
                  *(v117 + 8) = 0;
                  *(v117 + 16) = 0;
                  *v117 = 0;
                  v269 = *(v117 + 24);
                  v124 = (v117 + 32);
                  v125 = *(v117 + 32);
                  v270 = v125;
                  v271 = *(v117 + 40);
                  if (v271)
                  {
                    *(v125 + 16) = &v270;
                    *(v117 + 24) = v124;
                    *v124 = 0;
                    *(v117 + 40) = 0;
                  }

                  else
                  {
                    v269 = &v270;
                  }

                  v272 = *(v117 + 48);
                  do
                  {
                    v126 = v110;
                    if (*(v117 + 23) < 0)
                    {
                      operator delete(*v117);
                    }

                    v127 = *v110;
                    *(v117 + 16) = *(v110 + 16);
                    *v117 = v127;
                    *(v110 + 23) = 0;
                    *v110 = 0;
                    std::__tree<std::string>::__move_assign(v117 + 24, (v110 + 24));
                    *(v117 + 48) = *(v110 + 48);
                    if (v106 < v109)
                    {
                      break;
                    }

                    v128 = 2 * v109;
                    v109 = (2 * v109) | 1;
                    v110 = v4 + 56 * v109;
                    v129 = v128 + 2;
                    if (v128 + 2 < v6)
                    {
                      if (*(v110 + 23) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v263, *v110, *(v110 + 8));
                      }

                      else
                      {
                        v130 = *v110;
                        v263.__r_.__value_.__r.__words[2] = *(v110 + 16);
                        *&v263.__r_.__value_.__l.__data_ = v130;
                      }

                      std::set<std::string>::set[abi:ne200100](&v264, (v110 + 24));
                      v267 = *(v110 + 48);
                      if (*(v110 + 79) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v259, *(v110 + 56), *(v110 + 64));
                      }

                      else
                      {
                        v131 = *(v110 + 56);
                        v259.__r_.__value_.__r.__words[2] = *(v110 + 72);
                        *&v259.__r_.__value_.__l.__data_ = v131;
                      }

                      std::set<std::string>::set[abi:ne200100](&v260, (v110 + 80));
                      v132 = *(v110 + 104);
                      v262 = v132;
                      v133 = v267;
                      std::__tree<std::string>::destroy(&v260, v261);
                      if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v259.__r_.__value_.__l.__data_);
                      }

                      std::__tree<std::string>::destroy(&v264, v265);
                      if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v263.__r_.__value_.__l.__data_);
                      }

                      v122 = v133 > v132;
                      v106 = v119;
                      if (v122)
                      {
                        v110 += 56;
                        v109 = v129;
                      }
                    }

                    if (*(v110 + 23) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v255, *v110, *(v110 + 8));
                    }

                    else
                    {
                      v134 = *v110;
                      v255.__r_.__value_.__r.__words[2] = *(v110 + 16);
                      *&v255.__r_.__value_.__l.__data_ = v134;
                    }

                    std::set<std::string>::set[abi:ne200100](&v256, (v110 + 24));
                    v258 = *(v110 + 48);
                    if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v251, v268.__r_.__value_.__l.__data_, v268.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v251 = v268;
                    }

                    std::set<std::string>::set[abi:ne200100](&v252, &v269);
                    v135 = v272;
                    v254 = v272;
                    v136 = v258;
                    std::__tree<std::string>::destroy(&v252, v253);
                    if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v251.__r_.__value_.__l.__data_);
                    }

                    std::__tree<std::string>::destroy(&v256, v257);
                    if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v255.__r_.__value_.__l.__data_);
                    }

                    v117 = v126;
                  }

                  while (v136 <= v135);
                  if (*(v126 + 23) < 0)
                  {
                    operator delete(*v126);
                  }

                  v137 = *&v268.__r_.__value_.__l.__data_;
                  *(v126 + 16) = *(&v268.__r_.__value_.__l + 2);
                  *v126 = v137;
                  *(&v268.__r_.__value_.__s + 23) = 0;
                  v268.__r_.__value_.__s.__data_[0] = 0;
                  v138 = v126 + 32;
                  std::__tree<std::string>::destroy(v126 + 24, *(v126 + 32));
                  *(v126 + 24) = v269;
                  v139 = v270;
                  *(v126 + 32) = v270;
                  v140 = v271;
                  *(v126 + 40) = v271;
                  if (v140)
                  {
                    v141 = 0;
                    *(v139 + 2) = v138;
                    v269 = &v270;
                    v270 = 0;
                    v271 = 0;
                  }

                  else
                  {
                    *(v126 + 24) = v138;
                    v141 = v270;
                  }

                  *(v126 + 48) = v272;
                  std::__tree<std::string>::destroy(&v269, v141);
                  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v268.__r_.__value_.__l.__data_);
                  }

                  v108 = v223;
                }
              }

              v107 = v108 - 1;
            }

            while (v108);
            v142 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v4) >> 3);
            v220 = (v4 + 32);
            do
            {
              v143 = v4;
              v144 = *v4;
              v145 = *(v4 + 24);
              v263.__r_.__value_.__r.__words[2] = *(v4 + 16);
              *&v263.__r_.__value_.__l.__data_ = v144;
              *(v4 + 8) = 0;
              *(v4 + 16) = 0;
              *v4 = 0;
              v146 = *(v4 + 32);
              v147 = *(v4 + 40);
              v264 = v145;
              v265 = v146;
              v266 = v147;
              if (v147)
              {
                *(v146 + 16) = &v265;
                *(v4 + 24) = v220;
                *v220 = 0;
                *(v4 + 40) = 0;
              }

              else
              {
                v264 = &v265;
              }

              v148 = 0;
              v267 = *(v4 + 48);
              do
              {
                v149 = v143 + 56 * v148;
                v150 = (v149 + 56);
                v151 = 2 * v148;
                v148 = (2 * v148) | 1;
                v152 = v151 + 2;
                if (v151 + 2 < v142)
                {
                  if (*(v149 + 79) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v286, *(v149 + 56), *(v149 + 64));
                  }

                  else
                  {
                    v153 = *v150;
                    v286.__r_.__value_.__r.__words[2] = *(v149 + 72);
                    *&v286.__r_.__value_.__l.__data_ = v153;
                  }

                  std::set<std::string>::set[abi:ne200100](&v287, (v149 + 80));
                  v290 = *(v149 + 104);
                  v154 = (v149 + 112);
                  if (*(v149 + 135) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v282, *(v149 + 112), *(v149 + 120));
                  }

                  else
                  {
                    v155 = *v154;
                    v282.__r_.__value_.__r.__words[2] = *(v149 + 128);
                    *&v282.__r_.__value_.__l.__data_ = v155;
                  }

                  std::set<std::string>::set[abi:ne200100](&v283, (v149 + 136));
                  v156 = *(v149 + 160);
                  v285 = v156;
                  v157 = v290;
                  std::__tree<std::string>::destroy(&v283, v284);
                  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v282.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::string>::destroy(&v287, v288);
                  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v286.__r_.__value_.__l.__data_);
                  }

                  if (v157 > v156)
                  {
                    v150 = v154;
                    v148 = v152;
                  }
                }

                if (*(v143 + 23) < 0)
                {
                  operator delete(*v143);
                }

                v158 = *v150;
                *(v143 + 16) = *(v150 + 2);
                *v143 = v158;
                *(v150 + 23) = 0;
                *v150 = 0;
                std::__tree<std::string>::__move_assign(v143 + 24, v150 + 3);
                *(v143 + 48) = *(v150 + 12);
                v143 = v150;
              }

              while (v148 <= ((v142 - 2) >> 1));
              v159 = (a2 - 56);
              v160 = *(v150 + 23);
              if (v150 == (a2 - 56))
              {
                if (v160 < 0)
                {
                  operator delete(*v150);
                }

                v166 = *&v263.__r_.__value_.__l.__data_;
                *(v150 + 2) = *(&v263.__r_.__value_.__l + 2);
                *v150 = v166;
                *(&v263.__r_.__value_.__s + 23) = 0;
                v263.__r_.__value_.__s.__data_[0] = 0;
                v167 = v150 + 2;
                std::__tree<std::string>::destroy(v150 + 24, *(v150 + 4));
                *(v150 + 3) = v264;
                v168 = v265;
                *(v150 + 4) = v265;
                v169 = v266;
                *(v150 + 5) = v266;
                if (v169)
                {
                  *(v168 + 2) = v167;
                  v264 = &v265;
                  v265 = 0;
                  v266 = 0;
                }

                else
                {
                  *(v150 + 3) = v167;
                }

                *(v150 + 12) = v267;
              }

              else
              {
                if (v160 < 0)
                {
                  operator delete(*v150);
                }

                v161 = *v159;
                *(v150 + 2) = *(a2 - 40);
                *v150 = v161;
                *(a2 - 33) = 0;
                *(a2 - 56) = 0;
                std::__tree<std::string>::__move_assign(v150 + 24, (a2 - 32));
                *(v150 + 12) = *(a2 - 8);
                if (*(a2 - 33) < 0)
                {
                  operator delete(*v159);
                }

                v162 = *&v263.__r_.__value_.__l.__data_;
                *(a2 - 40) = *(&v263.__r_.__value_.__l + 2);
                *v159 = v162;
                *(&v263.__r_.__value_.__s + 23) = 0;
                v263.__r_.__value_.__s.__data_[0] = 0;
                v163 = a2 - 24;
                std::__tree<std::string>::destroy(a2 - 32, *(a2 - 24));
                *(a2 - 32) = v264;
                v164 = v265;
                *(a2 - 24) = v265;
                v165 = v266;
                *(a2 - 16) = v266;
                if (v165)
                {
                  *(v164 + 2) = v163;
                  v264 = &v265;
                  v265 = 0;
                  v266 = 0;
                }

                else
                {
                  *(a2 - 32) = v163;
                }

                *(a2 - 8) = v267;
                v170 = v150 - v4 + 56;
                if (v170 >= 57)
                {
                  v171 = (0x6DB6DB6DB6DB6DB7 * (v170 >> 3) - 2) >> 1;
                  v172 = v4 + 56 * v171;
                  if (*(v172 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v286, *v172, *(v172 + 8));
                  }

                  else
                  {
                    v173 = *v172;
                    v286.__r_.__value_.__r.__words[2] = *(v172 + 16);
                    *&v286.__r_.__value_.__l.__data_ = v173;
                  }

                  std::set<std::string>::set[abi:ne200100](&v287, (v172 + 24));
                  v290 = *(v172 + 48);
                  if (*(v150 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v282, *v150, *(v150 + 1));
                  }

                  else
                  {
                    v174 = *v150;
                    v282.__r_.__value_.__r.__words[2] = *(v150 + 2);
                    *&v282.__r_.__value_.__l.__data_ = v174;
                  }

                  std::set<std::string>::set[abi:ne200100](&v283, v150 + 3);
                  v175 = *(v150 + 12);
                  v285 = v175;
                  v176 = v290;
                  std::__tree<std::string>::destroy(&v283, v284);
                  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v282.__r_.__value_.__l.__data_);
                  }

                  std::__tree<std::string>::destroy(&v287, v288);
                  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v286.__r_.__value_.__l.__data_);
                  }

                  if (v176 > v175)
                  {
                    v177 = *v150;
                    v178 = *(v150 + 3);
                    v277.__r_.__value_.__r.__words[2] = *(v150 + 2);
                    *&v277.__r_.__value_.__l.__data_ = v177;
                    *(v150 + 1) = 0;
                    *(v150 + 2) = 0;
                    *v150 = 0;
                    v179 = v150 + 2;
                    v180 = *(v150 + 4);
                    v278 = v178;
                    v279 = v180;
                    v280 = *(v150 + 5);
                    if (v280)
                    {
                      *(v180 + 16) = &v279;
                      *(v150 + 3) = v179;
                      *v179 = 0;
                      *(v150 + 5) = 0;
                    }

                    else
                    {
                      v278 = &v279;
                    }

                    v281 = *(v150 + 12);
                    do
                    {
                      v181 = v172;
                      if (*(v150 + 23) < 0)
                      {
                        operator delete(*v150);
                      }

                      v182 = *v172;
                      *(v150 + 2) = *(v172 + 16);
                      *v150 = v182;
                      *(v172 + 23) = 0;
                      *v172 = 0;
                      std::__tree<std::string>::__move_assign(v150 + 24, (v172 + 24));
                      *(v150 + 12) = *(v172 + 48);
                      if (!v171)
                      {
                        break;
                      }

                      v171 = (v171 - 1) >> 1;
                      v172 = v4 + 56 * v171;
                      if (*(v172 + 23) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v273, *v172, *(v172 + 8));
                      }

                      else
                      {
                        v183 = *v172;
                        v273.__r_.__value_.__r.__words[2] = *(v172 + 16);
                        *&v273.__r_.__value_.__l.__data_ = v183;
                      }

                      std::set<std::string>::set[abi:ne200100](&v274, (v172 + 24));
                      v276 = *(v172 + 48);
                      if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v268, v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v268 = v277;
                      }

                      std::set<std::string>::set[abi:ne200100](&v269, &v278);
                      v184 = v281;
                      v272 = v281;
                      v185 = v276;
                      std::__tree<std::string>::destroy(&v269, v270);
                      if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v268.__r_.__value_.__l.__data_);
                      }

                      std::__tree<std::string>::destroy(&v274, v275);
                      if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v273.__r_.__value_.__l.__data_);
                      }

                      v150 = v181;
                    }

                    while (v185 > v184);
                    if (*(v181 + 23) < 0)
                    {
                      operator delete(*v181);
                    }

                    v186 = *&v277.__r_.__value_.__l.__data_;
                    *(v181 + 16) = *(&v277.__r_.__value_.__l + 2);
                    *v181 = v186;
                    *(&v277.__r_.__value_.__s + 23) = 0;
                    v277.__r_.__value_.__s.__data_[0] = 0;
                    v187 = v181 + 32;
                    std::__tree<std::string>::destroy(v181 + 24, *(v181 + 32));
                    *(v181 + 24) = v278;
                    v188 = v279;
                    *(v181 + 32) = v279;
                    v189 = v280;
                    *(v181 + 40) = v280;
                    if (v189)
                    {
                      *(v188 + 2) = v187;
                      v188 = 0;
                      v278 = &v279;
                      v279 = 0;
                      v280 = 0;
                    }

                    else
                    {
                      *(v181 + 24) = v187;
                    }

                    *(v181 + 48) = v281;
                    std::__tree<std::string>::destroy(&v278, v188);
                    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v277.__r_.__value_.__l.__data_);
                    }
                  }
                }
              }

              std::__tree<std::string>::destroy(&v264, v265);
              if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v263.__r_.__value_.__l.__data_);
              }

              a2 -= 56;
              v122 = v142-- <= 2;
            }

            while (!v122);
          }

          return;
        }

        v8 = v6 >> 1;
        v9 = (v4 + 56 * (v6 >> 1));
        if (v5 < 0x1C01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v9, v4, v217);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4, v9, v217);
          v10 = 56 * v8;
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4 + 56, v10 + v4 - 56, a2 - 112);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v4 + 112, v4 + 56 + v10, a2 - 168);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,0>(v10 + v4 - 56, v9, v4 + 56 + v10);
          std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v4, v9);
        }

        --a3;
        if (a4)
        {
          break;
        }

        if (*(v4 - 33) < 0)
        {
          std::string::__init_copy_ctor_external(&v228, *(v4 - 56), *(v4 - 48));
        }

        else
        {
          v11 = *(v4 - 56);
          v228.__r_.__value_.__r.__words[2] = *(v4 - 40);
          *&v228.__r_.__value_.__l.__data_ = v11;
        }

        std::set<std::string>::set[abi:ne200100](v229, (v4 - 32));
        v230 = *(v4 - 8);
        if (*(v4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v225, *v4, *(v4 + 8));
        }

        else
        {
          v12 = *v4;
          v225.__r_.__value_.__r.__words[2] = *(v4 + 16);
          *&v225.__r_.__value_.__l.__data_ = v12;
        }

        std::set<std::string>::set[abi:ne200100](v226, (v4 + 24));
        v13 = *(v4 + 48);
        v227 = v13;
        v14 = v230;
        std::__tree<std::string>::destroy(v226, v226[1]);
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::destroy(v229, v229[1]);
        if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v228.__r_.__value_.__l.__data_);
        }

        if (v14 > v13)
        {
          break;
        }

        v48 = *v4;
        v49 = *(v4 + 24);
        v286.__r_.__value_.__r.__words[2] = *(v4 + 16);
        *&v286.__r_.__value_.__l.__data_ = v48;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *v4 = 0;
        v50 = (v4 + 32);
        v51 = *(v4 + 32);
        v287 = v49;
        v288 = v51;
        v289 = *(v4 + 40);
        if (v289)
        {
          *(v51 + 16) = &v288;
          *(v4 + 24) = v50;
          *v50 = 0;
          *(v4 + 40) = 0;
        }

        else
        {
          v287 = &v288;
        }

        v290 = *(v4 + 48);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v282, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
        }

        else
        {
          v282 = v286;
        }

        std::set<std::string>::set[abi:ne200100](&v283, &v287);
        v285 = v290;
        if (*(a2 - 33) < 0)
        {
          std::string::__init_copy_ctor_external(&v277, *(a2 - 56), *(a2 - 48));
        }

        else
        {
          v52 = *v217;
          v277.__r_.__value_.__r.__words[2] = *(a2 - 40);
          *&v277.__r_.__value_.__l.__data_ = v52;
        }

        std::set<std::string>::set[abi:ne200100](&v278, v215);
        v53 = *(a2 - 8);
        v281 = v53;
        v54 = v285;
        std::__tree<std::string>::destroy(&v278, v279);
        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::destroy(&v283, v284);
        if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v282.__r_.__value_.__l.__data_);
        }

        v55 = v4;
        if (v54 <= v53)
        {
          for (v4 += 56; v4 < a2; v4 += 56)
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v263, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v263 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v264, &v287);
            v267 = v290;
            if (*(v4 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v259, *v4, *(v4 + 8));
            }

            else
            {
              v78 = *v4;
              v259.__r_.__value_.__r.__words[2] = *(v4 + 16);
              *&v259.__r_.__value_.__l.__data_ = v78;
            }

            std::set<std::string>::set[abi:ne200100](&v260, (v4 + 24));
            v79 = *(v4 + 48);
            v262 = v79;
            v80 = v267;
            std::__tree<std::string>::destroy(&v260, v261);
            if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v259.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v264, v265);
            if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v263.__r_.__value_.__l.__data_);
            }

            if (v80 > v79)
            {
              break;
            }
          }
        }

        else
        {
          do
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v273, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v273 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v274, &v287);
            v4 = v55 + 56;
            v276 = v290;
            if (*(v55 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v268, *(v55 + 56), *(v55 + 64));
            }

            else
            {
              *&v268.__r_.__value_.__l.__data_ = *v4;
              v268.__r_.__value_.__r.__words[2] = *(v55 + 72);
            }

            std::set<std::string>::set[abi:ne200100](&v269, (v55 + 80));
            v56 = *(v55 + 104);
            v272 = v56;
            v57 = v276;
            std::__tree<std::string>::destroy(&v269, v270);
            if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v268.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v274, v275);
            if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v273.__r_.__value_.__l.__data_);
            }

            v55 += 56;
          }

          while (v57 <= v56);
        }

        v58 = a2;
        if (v4 < a2)
        {
          v59 = a2;
          do
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v255, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v255 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v256, &v287);
            v58 = (v59 - 56);
            v258 = v290;
            if (*(v59 - 33) < 0)
            {
              std::string::__init_copy_ctor_external(&v251, *(v59 - 56), *(v59 - 48));
            }

            else
            {
              v60 = *v58;
              v251.__r_.__value_.__r.__words[2] = *(v59 - 40);
              *&v251.__r_.__value_.__l.__data_ = v60;
            }

            std::set<std::string>::set[abi:ne200100](&v252, (v59 - 32));
            v61 = *(v59 - 8);
            v254 = v61;
            v62 = v258;
            std::__tree<std::string>::destroy(&v252, v253);
            if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v251.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v256, v257);
            if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v255.__r_.__value_.__l.__data_);
            }

            v59 -= 56;
          }

          while (v62 > v61);
        }

        while (v4 < v58)
        {
          std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v4, v58);
          v63 = v4;
          do
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v247, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v247 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v248, &v287);
            v4 = v63 + 56;
            v250 = v290;
            if (*(v63 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v243, *(v63 + 56), *(v63 + 64));
            }

            else
            {
              *&v243.__r_.__value_.__l.__data_ = *v4;
              v243.__r_.__value_.__r.__words[2] = *(v63 + 72);
            }

            std::set<std::string>::set[abi:ne200100](&v244, (v63 + 80));
            v64 = *(v63 + 104);
            v246 = v64;
            v65 = v250;
            std::__tree<std::string>::destroy(&v244, v245);
            if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v243.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v248, v249);
            if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v247.__r_.__value_.__l.__data_);
            }

            v63 += 56;
          }

          while (v65 <= v64);
          v66 = v58;
          do
          {
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v240, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v240 = v286;
            }

            std::set<std::string>::set[abi:ne200100](v241, &v287);
            v242 = v290;
            if (*(v66 - 33) < 0)
            {
              v68 = (v66 - 56);
              std::string::__init_copy_ctor_external(&v237, *(v66 - 7), *(v66 - 6));
            }

            else
            {
              v67 = *(v66 - 56);
              v68 = (v66 - 56);
              v237.__r_.__value_.__r.__words[2] = *(v66 - 5);
              *&v237.__r_.__value_.__l.__data_ = v67;
            }

            std::set<std::string>::set[abi:ne200100](v238, v66 - 4);
            v69 = *(v66 - 2);
            v239 = v69;
            v70 = v242;
            std::__tree<std::string>::destroy(v238, v238[1]);
            if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v237.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(v241, v241[1]);
            v58 = v68;
            if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v240.__r_.__value_.__l.__data_);
            }

            v66 = v68;
          }

          while (v70 > v69);
        }

        v71 = (v4 - 56);
        if (v4 - 56 != a1)
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v72 = *v71;
          *(a1 + 16) = *(v4 - 40);
          *a1 = v72;
          *(v4 - 33) = 0;
          *(v4 - 56) = 0;
          std::__tree<std::string>::__move_assign(a1 + 24, (v4 - 32));
          *(a1 + 48) = *(v4 - 8);
        }

        if (*(v4 - 33) < 0)
        {
          operator delete(*v71);
        }

        v73 = *&v286.__r_.__value_.__l.__data_;
        *(v4 - 40) = *(&v286.__r_.__value_.__l + 2);
        *v71 = v73;
        *(&v286.__r_.__value_.__s + 23) = 0;
        v286.__r_.__value_.__s.__data_[0] = 0;
        v74 = v4 - 24;
        std::__tree<std::string>::destroy(v4 - 32, *(v4 - 24));
        *(v4 - 32) = v287;
        v75 = v288;
        *(v4 - 24) = v288;
        v76 = v289;
        *(v4 - 16) = v289;
        if (v76)
        {
          v77 = 0;
          *(v75 + 2) = v74;
          v287 = &v288;
          v288 = 0;
          v289 = 0;
        }

        else
        {
          *(v4 - 32) = v74;
          v77 = v288;
        }

        *(v4 - 8) = v290;
        std::__tree<std::string>::destroy(&v287, v77);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v286.__r_.__value_.__l.__data_);
        }

LABEL_111:
        a4 = 0;
      }

      v15 = *v4;
      v286.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&v286.__r_.__value_.__l.__data_ = v15;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = 0;
      v16 = (v4 + 32);
      v17 = *(v4 + 32);
      v287 = *(v4 + 24);
      v288 = v17;
      v289 = *(v4 + 40);
      if (v289)
      {
        *(v17 + 16) = &v288;
        *(v4 + 24) = v16;
        *v16 = 0;
        *(v4 + 40) = 0;
      }

      else
      {
        v287 = &v288;
      }

      v18 = 0;
      v290 = *(v4 + 48);
      do
      {
        v19 = v4 + v18;
        if (*(v4 + v18 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v282, *(v19 + 56), *(v19 + 64));
        }

        else
        {
          v20 = *(v19 + 56);
          v282.__r_.__value_.__r.__words[2] = *(v19 + 72);
          *&v282.__r_.__value_.__l.__data_ = v20;
        }

        std::set<std::string>::set[abi:ne200100](&v283, (v4 + v18 + 80));
        v285 = *(v4 + v18 + 104);
        if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v277, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
        }

        else
        {
          v277 = v286;
        }

        std::set<std::string>::set[abi:ne200100](&v278, &v287);
        v21 = v290;
        v281 = v290;
        v22 = v285;
        std::__tree<std::string>::destroy(&v278, v279);
        if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v277.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::destroy(&v283, v284);
        if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v282.__r_.__value_.__l.__data_);
        }

        v18 += 56;
      }

      while (v22 > v21);
      v222 = v4 + v18;
      v23 = a2;
      if (v18 == 56)
      {
        v27 = a2;
        if (v222 < a2)
        {
          for (j = a2 - 56; ; j = v27 - 56)
          {
            if (*(j + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v273, *j, *(j + 8));
            }

            else
            {
              v29 = *j;
              v273.__r_.__value_.__r.__words[2] = *(j + 16);
              *&v273.__r_.__value_.__l.__data_ = v29;
            }

            std::set<std::string>::set[abi:ne200100](&v274, (j + 24));
            v276 = *(j + 48);
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v268, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v268 = v286;
            }

            v27 = j;
            std::set<std::string>::set[abi:ne200100](&v269, &v287);
            v30 = v290;
            v272 = v290;
            v31 = v276;
            std::__tree<std::string>::destroy(&v269, v270);
            if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v268.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v274, v275);
            if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v273.__r_.__value_.__l.__data_);
            }

            if (v31 > v30 || v222 >= v27)
            {
              break;
            }
          }
        }
      }

      else
      {
        do
        {
          if (*(v23 - 33) < 0)
          {
            std::string::__init_copy_ctor_external(&v263, *(v23 - 56), *(v23 - 48));
          }

          else
          {
            v24 = *(v23 - 56);
            v263.__r_.__value_.__r.__words[2] = *(v23 - 40);
            *&v263.__r_.__value_.__l.__data_ = v24;
          }

          std::set<std::string>::set[abi:ne200100](&v264, (v23 - 32));
          v267 = *(v23 - 8);
          if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v259, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
          }

          else
          {
            v259 = v286;
          }

          v23 -= 56;
          std::set<std::string>::set[abi:ne200100](&v260, &v287);
          v25 = v290;
          v262 = v290;
          v26 = v267;
          std::__tree<std::string>::destroy(&v260, v261);
          if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v259.__r_.__value_.__l.__data_);
          }

          std::__tree<std::string>::destroy(&v264, v265);
          if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v263.__r_.__value_.__l.__data_);
          }

          v27 = v23;
        }

        while (v26 <= v25);
      }

      v4 = v222;
      v218 = v27;
      if (v222 < v27)
      {
        v32 = v27;
        do
        {
          std::swap[abi:ne200100]<quasar::AppLmData::Oov>(v4, v32);
          v33 = v4;
          do
          {
            v4 = v33 + 56;
            if (*(v33 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v255, *(v33 + 56), *(v33 + 64));
            }

            else
            {
              *&v255.__r_.__value_.__l.__data_ = *v4;
              v255.__r_.__value_.__r.__words[2] = *(v33 + 72);
            }

            std::set<std::string>::set[abi:ne200100](&v256, (v33 + 80));
            v258 = *(v33 + 104);
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v251, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v251 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v252, &v287);
            v34 = v290;
            v254 = v290;
            v35 = v258;
            std::__tree<std::string>::destroy(&v252, v253);
            if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v251.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v256, v257);
            if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v255.__r_.__value_.__l.__data_);
            }

            v33 += 56;
          }

          while (v35 > v34);
          v36 = v32;
          do
          {
            v32 = (v36 - 56);
            if (*(v36 - 33) < 0)
            {
              std::string::__init_copy_ctor_external(&v247, *(v36 - 7), *(v36 - 6));
            }

            else
            {
              v37 = *v32;
              v247.__r_.__value_.__r.__words[2] = *(v36 - 5);
              *&v247.__r_.__value_.__l.__data_ = v37;
            }

            std::set<std::string>::set[abi:ne200100](&v248, v36 - 4);
            v250 = *(v36 - 2);
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v243, v286.__r_.__value_.__l.__data_, v286.__r_.__value_.__l.__size_);
            }

            else
            {
              v243 = v286;
            }

            std::set<std::string>::set[abi:ne200100](&v244, &v287);
            v38 = v290;
            v246 = v290;
            v39 = v250;
            std::__tree<std::string>::destroy(&v244, v245);
            if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v243.__r_.__value_.__l.__data_);
            }

            std::__tree<std::string>::destroy(&v248, v249);
            if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v247.__r_.__value_.__l.__data_);
            }

            v36 = (v36 - 56);
          }

          while (v39 <= v38);
        }

        while (v4 < v32);
      }

      v40 = (v4 - 56);
      if (v4 - 56 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v41 = *v40;
        *(a1 + 16) = *(v4 - 40);
        *a1 = v41;
        *(v4 - 33) = 0;
        *(v4 - 56) = 0;
        std::__tree<std::string>::__move_assign(a1 + 24, (v4 - 32));
        *(a1 + 48) = *(v4 - 8);
      }

      if (*(v4 - 33) < 0)
      {
        operator delete(*v40);
      }

      v42 = *&v286.__r_.__value_.__l.__data_;
      *(v4 - 40) = *(&v286.__r_.__value_.__l + 2);
      *v40 = v42;
      *(&v286.__r_.__value_.__s + 23) = 0;
      v286.__r_.__value_.__s.__data_[0] = 0;
      v43 = v4 - 24;
      std::__tree<std::string>::destroy(v4 - 32, *(v4 - 24));
      *(v4 - 32) = v287;
      v44 = v288;
      *(v4 - 24) = v288;
      v45 = v289;
      *(v4 - 16) = v289;
      if (v45)
      {
        v46 = 0;
        *(v44 + 2) = v43;
        v287 = &v288;
        v288 = 0;
        v289 = 0;
      }

      else
      {
        *(v4 - 32) = v43;
        v46 = v288;
      }

      *(v4 - 8) = v290;
      std::__tree<std::string>::destroy(&v287, v46);
      if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v286.__r_.__value_.__l.__data_);
      }

      if (v222 < v218)
      {
LABEL_110:
        std::__introsort<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *,false>(a1, v4 - 56, a3, a4 & 1);
        goto LABEL_111;
      }

      v47 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *>(a1, v4 - 56);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::AppLmData::getOrderedOovs(void)::$_0 &,quasar::AppLmData::Oov *>(v4, a2))
      {
        break;
      }

      if (!v47)
      {
        goto LABEL_110;
      }
    }

    a2 = v4 - 56;
    if (!v47)
    {
      continue;
    }

    break;
  }
}