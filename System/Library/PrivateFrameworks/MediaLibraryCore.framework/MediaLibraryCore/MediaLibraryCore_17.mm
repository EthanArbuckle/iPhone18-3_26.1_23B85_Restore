uint64_t mediaplatform::DatabaseStatement::step(sqlite3_stmt **this)
{
  v2 = sqlite3_step(this[3]);
  result = mediaplatform::DatabaseStatement::_checkSQLiteResult(this, v2);
  *(this + 14) = v2;
  return result;
}

uint64_t mediaplatform::DatabaseStatement::_checkSQLiteResult(uint64_t this, int a2)
{
  if ((a2 - 100) >= 2 && a2 != 0)
  {
    v4 = sqlite3_db_handle(*(this + 24));
    v5 = sqlite3_errmsg(v4);
    if ((a2 - 1) > 0x19)
    {
      v6 = 36;
    }

    else
    {
      v6 = *&asc_1D5AFEE50[4 * (a2 - 1)];
    }

    v9 = v6;
    exception = __cxa_allocate_exception(0x40uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, v5);
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(exception, &v9, &v8);
  }

  return this;
}

void sub_1D5907614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t mediaplatform::DatabaseStatement::reset(sqlite3_stmt **this)
{
  v2 = sqlite3_reset(this[3]);
  result = mediaplatform::DatabaseStatement::_checkSQLiteResult(this, v2);
  *(this + 14) = -1;
  return result;
}

uint64_t mediaplatform::DatabaseStatement::clearBindings(sqlite3_stmt **this)
{
  v2 = sqlite3_clear_bindings(this[3]);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(this, v2);
}

uint64_t mediaplatform::DatabaseStatement::finalize(sqlite3_stmt **this)
{
  result = sqlite3_finalize(this[3]);
  if (result)
  {
    if (result > 0x1A)
    {
      v3 = 36;
    }

    else
    {
      v3 = *&asc_1D5AFEE50[4 * (result - 1)];
    }

    v8 = v3;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(v7, &v8, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(exception, v7);
  }

  this[3] = 0;
  return result;
}

BOOL mediaplatform::DatabaseStatement::hasColumnValueData(mediaplatform::DatabaseStatement *this)
{
  v1 = *(this + 14);
  if (v1 == -1)
  {
    __assert_rtn("hasColumnValueData", "DatabaseStatement.cpp", 102, "_lastStepResult != -1");
  }

  return v1 == 100;
}

void mediaplatform::DatabaseStatement::sql(mediaplatform::DatabaseStatement *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<int>(uint64_t a1, int a2, int a3)
{
  v4 = sqlite3_bind_int(*(a1 + 24), a3 + 1, a2);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<unsigned int>(uint64_t a1, int a2, int a3)
{
  v4 = sqlite3_bind_int(*(a1 + 24), a3 + 1, a2);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::string>(uint64_t a1, char *a2, int a3)
{
  v3 = a2;
  v5 = *(a1 + 24);
  v6 = a2[23];
  if (v6 < 0)
  {
    v3 = *a2;
    v6 = *(a2 + 1);
  }

  v7 = sqlite3_bind_text(v5, a3 + 1, v3, v6, 0xFFFFFFFFFFFFFFFFLL);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v7);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::wstring>(uint64_t a1, void *a2, int a3)
{
  v3 = a2;
  v5 = *(a1 + 24);
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v3 = *a2;
    v6 = a2[1];
  }

  v7 = sqlite3_bind_text16(v5, a3 + 1, v3, v6, 0xFFFFFFFFFFFFFFFFLL);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v7);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<mediaplatform::Data>(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sqlite3_bind_blob(*(a1 + 24), a3 + 1, *(a2 + 24), *(a2 + 8), 0xFFFFFFFFFFFFFFFFLL);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<double>(uint64_t a1, int a2, double a3)
{
  v4 = sqlite3_bind_double(*(a1 + 24), a2 + 1, a3);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<float>(uint64_t a1, int a2, float a3)
{
  v4 = sqlite3_bind_double(*(a1 + 24), a2 + 1, a3);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<BOOL>(uint64_t a1, int a2, int a3)
{
  v4 = sqlite3_bind_int(*(a1 + 24), a3 + 1, a2);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<unsigned long>(uint64_t a1, sqlite3_int64 a2, int a3)
{
  v4 = sqlite3_bind_int64(*(a1 + 24), a3 + 1, a2);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<long long>(uint64_t a1, sqlite3_int64 a2, int a3)
{
  v4 = sqlite3_bind_int64(*(a1 + 24), a3 + 1, a2);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<unsigned long long>(uint64_t a1, sqlite3_int64 a2, int a3)
{
  v4 = sqlite3_bind_int64(*(a1 + 24), a3 + 1, a2);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<decltype(nullptr)>(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sqlite3_bind_null(*(a1 + 24), a3 + 1);

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<int>>(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0x100000000) != 0)
  {
    v4 = sqlite3_bind_int(*(a1 + 24), a3 + 1, a2);
  }

  else
  {
    v4 = sqlite3_bind_null(*(a1 + 24), a3 + 1);
  }

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<unsigned int>>(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0x100000000) != 0)
  {
    v4 = sqlite3_bind_int(*(a1 + 24), a3 + 1, a2);
  }

  else
  {
    v4 = sqlite3_bind_null(*(a1 + 24), a3 + 1);
  }

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

void mediaplatform::DatabaseStatement::bindParameter<std::optional<std::string>>(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    mediaplatform::DatabaseStatement::bindParameter<std::string>(a1, &__p, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = sqlite3_bind_null(*(a1 + 24), a3 + 1);

    mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v5);
  }
}

void sub_1D5907D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::DatabaseStatement::bindParameter<std::optional<std::wstring>>(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::wstring::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    mediaplatform::DatabaseStatement::bindParameter<std::wstring>(a1, &__p, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = sqlite3_bind_null(*(a1 + 24), a3 + 1);

    mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v5);
  }
}

void sub_1D5907E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 4 * __sz + 4;

  memmove(this, __s, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<mediaplatform::Data>>(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 40) == 1)
  {
    mediaplatform::Data::Data(&v8, *(a2 + 24), *(a2 + 8), 1);
    v5 = sqlite3_bind_blob(*(a1 + 24), a3 + 1, v10, n, 0xFFFFFFFFFFFFFFFFLL);
    result = mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v5);
    v8 = &unk_1F50DD860;
    if (v11 == 1)
    {
      result = v10;
      if (v10)
      {
        return MEMORY[0x1DA6EDD20](v10, 0x1000C8077774924);
      }
    }
  }

  else
  {
    v7 = sqlite3_bind_null(*(a1 + 24), a3 + 1);

    return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v7);
  }

  return result;
}

void sub_1D590800C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mediaplatform::Data::~Data(va);
  _Unwind_Resume(a1);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<double>>(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if (a3)
  {
    v5 = sqlite3_bind_double(*(a1 + 24), a4 + 1, *&a2);
  }

  else
  {
    v5 = sqlite3_bind_null(*(a1 + 24), a4 + 1);
  }

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v5);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<float>>(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0x100000000) != 0)
  {
    v4 = sqlite3_bind_double(*(a1 + 24), a3 + 1, *&a2);
  }

  else
  {
    v4 = sqlite3_bind_null(*(a1 + 24), a3 + 1);
  }

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<BOOL>>(uint64_t a1, __int16 a2, int a3)
{
  if ((a2 & 0x100) != 0)
  {
    v4 = sqlite3_bind_int(*(a1 + 24), a3 + 1, a2 & 1);
  }

  else
  {
    v4 = sqlite3_bind_null(*(a1 + 24), a3 + 1);
  }

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v4);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<unsigned long>>(uint64_t a1, sqlite3_int64 a2, char a3, int a4)
{
  if (a3)
  {
    v5 = sqlite3_bind_int64(*(a1 + 24), a4 + 1, a2);
  }

  else
  {
    v5 = sqlite3_bind_null(*(a1 + 24), a4 + 1);
  }

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v5);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<long long>>(uint64_t a1, sqlite3_int64 a2, char a3, int a4)
{
  if (a3)
  {
    v5 = sqlite3_bind_int64(*(a1 + 24), a4 + 1, a2);
  }

  else
  {
    v5 = sqlite3_bind_null(*(a1 + 24), a4 + 1);
  }

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v5);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<std::optional<unsigned long long>>(uint64_t a1, sqlite3_int64 a2, char a3, int a4)
{
  if (a3)
  {
    v5 = sqlite3_bind_int64(*(a1 + 24), a4 + 1, a2);
  }

  else
  {
    v5 = sqlite3_bind_null(*(a1 + 24), a4 + 1);
  }

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a1, v5);
}

uint64_t mediaplatform::DatabaseStatement::bindParameter<mediaplatform::DatabaseParameterList>(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v3 += 2;
      v7 = a3 + 1;
      result = (*(*v6 + 48))(v6, v5);
      a3 = v7;
    }

    while (v3 != v4);
  }

  return result;
}

_BYTE *mediaplatform::DatabaseStatement::columnValue<std::string>@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = sqlite3_column_text(*(a1 + 24), a2);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, v5);
}

size_t mediaplatform::DatabaseStatement::columnValue<std::wstring>@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = sqlite3_column_text16(*(a1 + 24), a2);
  result = wcslen(v4);
  if (result >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 5)
  {
    if ((result | 1) == 5)
    {
      v7 = 7;
    }

    else
    {
      v7 = (result | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(v7);
  }

  a3[23] = result;
  if (result)
  {
    result = memmove(a3, v4, 4 * result);
  }

  *&a3[4 * v6] = 0;
  return result;
}

mediaplatform::Data *mediaplatform::DatabaseStatement::columnValue<mediaplatform::Data>@<X0>(uint64_t a1@<X0>, int a2@<W1>, mediaplatform::Data *a3@<X8>)
{
  v6 = sqlite3_column_blob(*(a1 + 24), a2);
  v7 = sqlite3_column_bytes(*(a1 + 24), a2);

  return mediaplatform::Data::Data(a3, v6, v7, 1);
}

void mediaplatform::DatabaseStatement::columnValue<mediaplatform::DatabaseResultList>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *a3 = a2;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

uint64_t mediaplatform::DatabaseResultList::DatabaseResultList(uint64_t result, void *a2, int a3)
{
  *result = a3;
  v3 = a2[1];
  *(result + 8) = *a2;
  *(result + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *result = a3;
  v3 = a2[1];
  *(result + 8) = *a2;
  *(result + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t mediaplatform::DatabaseStatement::columnValue<std::optional<int>>(uint64_t a1, int a2)
{
  v4 = sqlite3_column_type(*(a1 + 24), a2);
  if (v4 > 4 || ((1 << v4) & 0x16) == 0)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int(*(a1 + 24), a2) | 0x100000000;
  }
}

uint64_t mediaplatform::DatabaseStatement::columnValueType(sqlite3_stmt **this, int a2)
{
  v2 = sqlite3_column_type(this[3], a2) - 1;
  if (v2 > 3)
  {
    return 5;
  }

  else
  {
    return dword_1D5AFB380[v2];
  }
}

_BYTE *mediaplatform::DatabaseStatement::columnValue<std::optional<std::string>>@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  result = sqlite3_column_type(*(a1 + 24), a2);
  if (result > 4 || ((1 << result) & 0x16) == 0)
  {
    v10 = 0;
    *a3 = 0;
  }

  else
  {
    v8 = sqlite3_column_text(*(a1 + 24), a2);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = "";
    }

    result = std::string::basic_string[abi:ne200100]<0>(a3, v9);
    v10 = 1;
  }

  a3[24] = v10;
  return result;
}

size_t mediaplatform::DatabaseStatement::columnValue<std::optional<std::wstring>>@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  result = sqlite3_column_type(*(a1 + 24), a2);
  if (result > 4 || ((1 << result) & 0x16) == 0)
  {
    v8 = 0;
    *a3 = 0;
  }

  else
  {
    result = mediaplatform::DatabaseStatement::columnValue<std::wstring>(a1, a2, a3);
    v8 = 1;
  }

  a3[24] = v8;
  return result;
}

mediaplatform::Data *mediaplatform::DatabaseStatement::columnValue<std::optional<mediaplatform::Data>>@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_type(*(a1 + 24), a2);
  if (result > 4 || ((1 << result) & 0x16) == 0)
  {
    *a3 = 0;
    *(a3 + 40) = 0;
  }

  else
  {
    result = mediaplatform::DatabaseStatement::columnValue<mediaplatform::Data>(a1, a2, v8);
    *a3 = &unk_1F50DD860;
    *(a3 + 24) = v10;
    *(a3 + 8) = v9;
    *(a3 + 32) = v11;
    *(a3 + 40) = 1;
  }

  return result;
}

uint64_t mediaplatform::DatabaseStatement::columnValue<std::optional<double>>(uint64_t a1, int a2)
{
  v4 = sqlite3_column_type(*(a1 + 24), a2);
  if (v4 > 4 || ((1 << v4) & 0x16) == 0)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_double(*(a1 + 24), a2);
  }
}

uint64_t mediaplatform::DatabaseStatement::columnValue<std::optional<float>>(uint64_t a1, int a2)
{
  v4 = sqlite3_column_type(*(a1 + 24), a2);
  if (v4 > 4 || ((1 << v4) & 0x16) == 0)
  {
    return 0;
  }

  *&v6 = sqlite3_column_double(*(a1 + 24), a2);
  return v6 | 0x100000000;
}

uint64_t mediaplatform::DatabaseStatement::columnValue<std::optional<BOOL>>(uint64_t a1, int a2)
{
  v4 = sqlite3_column_type(*(a1 + 24), a2);
  if (v4 > 4 || ((1 << v4) & 0x16) == 0)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = sqlite3_column_int(*(a1 + 24), a2) != 0;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

sqlite3_int64 mediaplatform::DatabaseStatement::columnValue<std::optional<unsigned long>>(uint64_t a1, int a2)
{
  v4 = sqlite3_column_type(*(a1 + 24), a2);
  if (v4 > 4 || ((1 << v4) & 0x16) == 0)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(*(a1 + 24), a2);
  }
}

sqlite3_int64 mediaplatform::DatabaseStatement::columnValue<std::optional<long long>>(uint64_t a1, int a2)
{
  v4 = sqlite3_column_type(*(a1 + 24), a2);
  if (v4 > 4 || ((1 << v4) & 0x16) == 0)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(*(a1 + 24), a2);
  }
}

_BYTE *mediaplatform::DatabaseStatement::columnName@<X0>(sqlite3_stmt **this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = sqlite3_column_name(this[3], a2);

  return std::string::basic_string[abi:ne200100]<0>(a3, v4);
}

uint64_t mediaplatform::DatabaseResultList::columnValueType(mediaplatform::DatabaseResultList *this, int a2)
{
  v2 = sqlite3_column_type(*(*(this + 1) + 24), a2) - 1;
  if (v2 > 3)
  {
    return 5;
  }

  else
  {
    return dword_1D5AFB380[v2];
  }
}

_BYTE *mediaplatform::DatabaseResultList::columnName@<X0>(mediaplatform::DatabaseResultList *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = sqlite3_column_name(*(*(this + 1) + 24), a2);

  return std::string::basic_string[abi:ne200100]<0>(a3, v4);
}

void mediaplatform::DatabaseParameterList::add(void *a1, __int128 *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (v3 >= v4)
  {
    v7 = a1[1];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::DatabaseParameterBase>>>(v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a1[1];
    v15 = a1[2] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    v17 = a1[1];
    a1[1] = v16;
    a1[2] = v6;
    a1[3] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a1[2] = v6;
}

void *mediaplatform::DatabaseBindParameter::DatabaseBindParameter(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_1F50DCF30;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_1F50DCF30;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void mediaplatform::MakeLowercase(uint64_t a1@<X0>, std::string *a2@<X8>)
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

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v4 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = a2->__r_.__value_.__r.__words[0];
    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2->__r_.__value_.__r.__words[0];
    }

    do
    {
      v6->__r_.__value_.__s.__data_[0] = __tolower(v6->__r_.__value_.__s.__data_[0]);
      v6 = (v6 + 1);
      v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v7 & 0x80u) == 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v7 & 0x80u) != 0)
      {
        v7 = a2->__r_.__value_.__l.__size_;
      }
    }

    while (v6 != (v8 + v7));
  }
}

void sub_1D5908CE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5908D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::~wstring_convert(va);
  _Unwind_Resume(a1);
}

void std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::to_bytes(std::string *this, uint64_t a2, std::string *a3, std::string *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  *(a2 + 184) = 0;
  if (!*(a2 + 48))
  {
    goto LABEL_70;
  }

  v7 = a3;
  v8 = (a4 - a3) >> 1;
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&this->__r_.__value_.__s + 23) = (a4 - a3) >> 1;
  if (a4 != a3)
  {
    bzero(this, v8);
  }

  this->__r_.__value_.__s.__data_[v8] = 0;
  if (v7 == a4)
  {
    v25 = *(a2 + 136);
    v68 = *(a2 + 120);
    v69 = v25;
    v26 = *(a2 + 168);
    v70 = *(a2 + 152);
    v71 = v26;
    v27 = *(a2 + 72);
    v64 = *(a2 + 56);
    v65 = v27;
    v28 = *(a2 + 104);
    v66 = *(a2 + 88);
    v67 = v28;
  }

  else
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = 22;
    }

    else
    {
      v10 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(this, v10, 0);
    v11 = *(a2 + 136);
    v68 = *(a2 + 120);
    v69 = v11;
    v12 = *(a2 + 168);
    v70 = *(a2 + 152);
    v71 = v12;
    v13 = *(a2 + 72);
    v64 = *(a2 + 56);
    v65 = v13;
    v14 = *(a2 + 88);
    v15 = *(a2 + 104);
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v17 = this;
    }

    else
    {
      v17 = this->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v18 = v17 + size;
    v66 = *(a2 + 88);
    v67 = v15;
    while (1)
    {
      v19 = (*(**(a2 + 48) + 24))(*(a2 + 48), &v64, v7, a4, &v61, v17, v18, &v60, v14);
      v20 = v61 == v7;
      *(a2 + 184) += (v61 - v7) >> 2;
      if (v20)
      {
        goto LABEL_68;
      }

      if (v19 != 1)
      {
        break;
      }

      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = this;
      }

      else
      {
        v21 = this->__r_.__value_.__r.__words[0];
      }

      v22 = v60 - v21;
      std::string::resize(this, 2 * (v60 - v21), 0);
      v23 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v23 & 0x80u) == 0)
      {
        v24 = this;
      }

      else
      {
        v24 = this->__r_.__value_.__r.__words[0];
      }

      v17 = (v24 + v22);
      if ((v23 & 0x80u) != 0)
      {
        v23 = this->__r_.__value_.__l.__size_;
      }

      v18 = v24 + v23;
      v7 = v61;
      if (v61 >= a4)
      {
        goto LABEL_68;
      }
    }

    if (!v19)
    {
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = this;
      }

      else
      {
        v34 = this->__r_.__value_.__r.__words[0];
      }

      std::string::resize(this, v60 - v34, 0);
      goto LABEL_43;
    }

    if (v19 != 3)
    {
      goto LABEL_68;
    }

    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = this;
    }

    else
    {
      v29 = this->__r_.__value_.__r.__words[0];
    }

    std::string::resize(this, v17 - v29, 0);
    v30 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v30 & 0x8000000000000000) != 0)
    {
      if (v7 == a4)
      {
        goto LABEL_43;
      }

      v30 = this->__r_.__value_.__l.__size_;
      v53 = this->__r_.__value_.__r.__words[2];
      v31 = (v53 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v33 = this->__r_.__value_.__r.__words[0];
      v32 = HIBYTE(v53);
    }

    else
    {
      if (v7 == a4)
      {
        goto LABEL_43;
      }

      v31 = 22;
      LOBYTE(v32) = *(&this->__r_.__value_.__s + 23);
      v33 = this;
    }

    v54 = a4 - v7;
    if (v33 > v7 || (&v33->__r_.__value_.__l.__data_ + v30 + 1) <= v7)
    {
      if (v31 - v30 < v54)
      {
        std::string::__grow_by(this, v31, v30 - v31 + v54, v30, v30, 0, 0);
        this->__r_.__value_.__l.__size_ = v30;
        LOBYTE(v32) = *(&this->__r_.__value_.__s + 23);
      }

      v55 = this;
      if ((v32 & 0x80) != 0)
      {
        v55 = this->__r_.__value_.__r.__words[0];
      }

      v56 = v55 + v30;
      memmove(v55 + v30, v7, v54);
      v56[v54] = 0;
      v57 = v54 + v30;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v57;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v57 & 0x7F;
      }
    }

    else
    {
      if (v54 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v54 > 0x16)
      {
        operator new();
      }

      v63 = v54;
      memmove(__dst, v7, v54);
      *(__dst + v54) = 0;
      if ((v63 & 0x80u) == 0)
      {
        v58 = __dst;
      }

      else
      {
        v58 = __dst[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v59 = v63;
      }

      else
      {
        v59 = __dst[1];
      }

      std::string::append(this, v58, v59);
      if (v63 < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

LABEL_43:
  v35 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v36 = this->__r_.__value_.__l.__size_;
  if ((v35 & 0x80u) == 0)
  {
    v37 = 22;
  }

  else
  {
    v37 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  std::string::resize(this, v37, 0);
  if ((v35 & 0x80u) == 0)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  v39 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v40 = v39 < 0;
  if (v39 >= 0)
  {
    v41 = this;
  }

  else
  {
    v41 = this->__r_.__value_.__r.__words[0];
  }

  v42 = v41 + v38;
  if (v40)
  {
    v43 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v43 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  for (i = &v42[v43]; ; i = v49 + v48)
  {
    v45 = (*(**(a2 + 48) + 40))(*(a2 + 48), &v64, v42, i, __dst);
    if (v45 != 1)
    {
      break;
    }

    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = this;
    }

    else
    {
      v46 = this->__r_.__value_.__r.__words[0];
    }

    v47 = (__dst[0] - v46);
    std::string::resize(this, 2 * (__dst[0] - v46), 0);
    v48 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v48 & 0x80u) == 0)
    {
      v49 = this;
    }

    else
    {
      v49 = this->__r_.__value_.__r.__words[0];
    }

    v42 = &v47[v49];
    if ((v48 & 0x80u) != 0)
    {
      v48 = this->__r_.__value_.__l.__size_;
    }
  }

  if (v45)
  {
    if (v45 != 3)
    {
LABEL_68:
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(this->__r_.__value_.__l.__data_);
      }

LABEL_70:
      if (*(a2 + 23) < 0)
      {
        v50 = *(a2 + 8);
        if (v50)
        {
          std::string::__init_copy_ctor_external(this, *a2, v50);
          goto LABEL_80;
        }
      }

      else if (*(a2 + 23))
      {
        *&this->__r_.__value_.__l.__data_ = *a2;
        this->__r_.__value_.__r.__words[2] = *(a2 + 16);
        goto LABEL_80;
      }

      std::__throw_range_error[abi:ne200100]("wstring_convert: to_bytes error");
    }
  }

  else
  {
    v42 = __dst[0];
  }

  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = this;
  }

  else
  {
    v51 = this->__r_.__value_.__r.__words[0];
  }

  std::string::resize(this, v42 - v51, 0);
LABEL_80:
  v52 = *MEMORY[0x1E69E9840];
}

void sub_1D590935C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_range_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::range_error::range_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E84C80E0, MEMORY[0x1E69E5268]);
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

uint64_t mediaplatform::StringsEqualCaseInsensitive(char *a1, char *a2)
{
  v2 = a1[23];
  v3 = *(a1 + 1);
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v2 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = *a2;
  if (v5 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  while (1)
  {
    v10 = __tolower(*v7);
    v11 = v10 == __tolower(*v9);
    result = v11;
    if (!v11)
    {
      break;
    }

    ++v7;
    ++v9;
    v13 = a1[23];
    if ((v13 & 0x80u) == 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a1 + 1);
    }

    if (v7 == &v14[v13])
    {
      return 1;
    }
  }

  return result;
}

void mediaplatform::RegexReplace(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
  }

  else
  {
    v7 = a1;
  }

  v8 = v7 + v6;
  *v71 = v7;
  *&v71[8] = v7 + v6;
  *&v71[16] = a2;
  *&v71[24] = 0;
  *&v73 = 0;
  *&v72[48] = 0;
  BYTE8(v73) = 0;
  v74 = 0uLL;
  LOBYTE(v75) = 0;
  BYTE8(v75) = 0;
  v76 = 0;
  memset(v72, 0, 41);
  memset(v66, 0, 17);
  *&v66[24] = 0;
  *&v66[32] = 0;
  LOBYTE(v67) = 0;
  BYTE8(v67) = 0;
  *&v68 = 0;
  memset(__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v7, (v7 + v6), __p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v72, v7, v8, __p, 0);
  if (*__p)
  {
    operator delete(*__p);
  }

  *__p = *v71;
  *&__p[12] = *&v71[12];
  *&__p[40] = 0;
  *v66 = 0;
  *&__p[32] = 0;
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&__p[32], *v72, *&v72[8], 0xAAAAAAAAAAAAAAABLL * ((*&v72[8] - *v72) >> 3));
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  *&v66[8] = *&v72[24];
  *&v66[24] = *&v72[40];
  while (*&__p[40] != *&__p[32])
  {
    memset(v78, 0, 24);
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(v78, *&__p[32], *&__p[40], 0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3));
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v82 = v70;
    *&v78[24] = *&v66[8];
    *&v78[40] = *&v66[24];
    v55 = 0;
    v56 = 0;
    v9 = *v78;
    v54 = 0;
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&v54, *v78, *&v78[8], 0xAAAAAAAAAAAAAAABLL * ((*&v78[8] - *v78) >> 3));
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v57 = *&v66[8];
    v58 = *&v66[24];
    v10 = *(a3 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v63);
    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (*(&v9 + 1) == v9)
    {
      v11 = &v78[24];
    }

    else
    {
      v11 = v9;
    }

    v12 = *v11;
    v13 = *(a4 + 23);
    if ((v13 & 0x80u) == 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a4 + 8);
    }

    std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v14 + v13, v7, v12, v12 - v7);
    if ((v64 & 0x80u) == 0)
    {
      v15 = v63;
    }

    else
    {
      v15 = v63[0];
    }

    if ((v64 & 0x80u) == 0)
    {
      v16 = v64;
    }

    else
    {
      v16 = v63[1];
    }

    if (v16)
    {
      v17 = *(a4 + 23);
      v18 = *a4;
      if ((v17 & 0x80u) == 0)
      {
        v19 = *(a4 + 23);
      }

      else
      {
        v19 = *(a4 + 8);
      }

      if ((v17 & 0x80u) == 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = *a4;
      }

      if (v20 > v15 || v20 + v19 + 1 <= v15)
      {
        if ((v17 & 0x80) != 0)
        {
          v24 = (*(a4 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
          v17 = *(a4 + 8);
          if (v24 - v17 >= v16)
          {
            goto LABEL_47;
          }

LABEL_45:
          std::string::__grow_by(a4, v24, v17 + v16 - v24, v17, v19, 0, v16);
          *(a4 + 8) = v17 + v16;
          v18 = *a4;
        }

        else
        {
          v18 = a4;
          v24 = 22;
          if (22 - v17 < v16)
          {
            goto LABEL_45;
          }

LABEL_47:
          if (v17 == v19)
          {
            v17 = v19;
          }

          else
          {
            memmove((v18 + v19 + v16), (v18 + v19), v17 - v19);
          }
        }

        v25 = v17 + v16;
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = v25;
        }

        else
        {
          *(a4 + 23) = v25 & 0x7F;
        }

        *(v18 + v25) = 0;
        memmove((v18 + v19), v15, v16);
        goto LABEL_54;
      }

      v21 = 0;
      memset(&v77, 0, sizeof(v77));
      do
      {
        std::string::push_back(&v77, *(v15 + v21++));
      }

      while (v16 != v21);
      size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v77;
      }

      else
      {
        v23 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v77.__r_.__value_.__l.__size_;
      }

      std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v16, v19, v23, v23 + size);
      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }
    }

LABEL_54:
    v26 = *v78;
    v27 = &v78[32];
    if (*&v78[8] != *v78)
    {
      v27 = (*v78 + 8);
    }

    v7 = *v27;
    if ((v64 & 0x80000000) == 0)
    {
      if (!*v78)
      {
        goto LABEL_59;
      }

LABEL_58:
      operator delete(v26);
      goto LABEL_59;
    }

    operator delete(v63[0]);
    if (v26)
    {
      goto LABEL_58;
    }

LABEL_59:
    v46 = 0;
    v47 = 0;
    v45 = 0;
    v29 = *&__p[32];
    v28 = *&__p[40];
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&v45, *&__p[32], *&__p[40], 0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3));
    v50 = v67;
    v51 = v68;
    v52 = v69;
    v48 = *&v66[8];
    v53 = v70;
    v49 = *&v66[24];
    v30 = *&__p[24];
    v31 = *&__p[24] | 0x800;
    *&__p[24] |= 0x800u;
    if (v28 == v29)
    {
      v32 = &v66[8];
    }

    else
    {
      v32 = v29;
    }

    v33 = v29 + 1;
    if (v28 == v29)
    {
      v33 = &v66[16];
    }

    v34 = *v33;
    v35 = *&__p[8];
    if (*v32 != *v33)
    {
      v36 = *v33;
LABEL_66:
      *&__p[24] = v31 | 0x80;
      *&v78[48] = 0;
      *&v79 = 0;
      BYTE8(v79) = 0;
      v80 = 0uLL;
      LOBYTE(v81) = 0;
      BYTE8(v81) = 0;
      v82 = 0;
      memset(v78, 0, 41);
      v37 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&__p[16], v36, v35, v78, v31 | 0x80u);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&__p[32], v36, v35, v78, (v31 & 0x800) != 0);
      if (*v78)
      {
        operator delete(*v78);
      }

      if ((v37 & 1) == 0)
      {
        v39 = *&__p[32];
        if (!*&__p[32])
        {
          goto LABEL_82;
        }

LABEL_81:
        operator delete(v39);
        goto LABEL_82;
      }

      *&v66[32] = v34;
      BYTE8(v67) = v67 != v34;
      goto LABEL_83;
    }

    if (*&__p[8] == v34)
    {
      if (v29)
      {
        v39 = v29;
        goto LABEL_81;
      }

LABEL_82:
      BYTE8(v69) = 0;
      *&__p[32] = 0u;
      memset(v66, 0, 25);
      *&v66[32] = 0;
      *&v67 = 0;
      BYTE8(v67) = 0;
      v68 = 0uLL;
      LOBYTE(v69) = 0;
      v70 = 0;
      goto LABEL_83;
    }

    *&v78[48] = 0;
    *&v79 = 0;
    BYTE8(v79) = 0;
    v80 = 0uLL;
    LOBYTE(v81) = 0;
    BYTE8(v81) = 0;
    v82 = 0;
    memset(v78, 0, 41);
    v38 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&__p[16], v34, *&__p[8], v78, v30 | 0x860u);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&__p[32], v34, v35, v78, 1);
    if (*v78)
    {
      operator delete(*v78);
    }

    if ((v38 & 1) == 0)
    {
      v36 = (&v34->first + 1);
      v31 = *&__p[24];
      v35 = *&__p[8];
      goto LABEL_66;
    }

LABEL_83:
    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }
  }

  if (*&__p[32])
  {
    operator delete(*&__p[32]);
  }

  v40 = *(a4 + 23);
  if ((v40 & 0x80u) == 0)
  {
    v41 = a4;
  }

  else
  {
    v41 = *a4;
  }

  if ((v40 & 0x80u) != 0)
  {
    v40 = *(a4 + 8);
  }

  v42 = a1;
  v43 = *(a1 + 23);
  if (v43 < 0)
  {
    v42 = *a1;
    v43 = *(a1 + 8);
  }

  std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v41 + v40, v7, v42 + v43, v42 + v43 - v7);
  if (*v72)
  {
    operator delete(*v72);
  }
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1D5909D94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, uint64_t a2, std::string *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (!__n_add)
    {
      return;
    }

    v10 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    if (!__n_add)
    {
      return;
    }

    v10 = this;
  }

  v11 = a2 - v10;
  if (v10 > a3 || (&v10->__r_.__value_.__l.__data_ + size + 1) <= a3)
  {

    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v11, a3, a4);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
    if (a3 == a4)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      do
      {
        std::string::push_back(&v16, *v7++);
      }

      while (v7 != a4);
      v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      v12 = v16.__r_.__value_.__l.__size_;
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v15 = &v16;
    }

    else
    {
      v15 = v13;
    }

    if ((v14 & 0x80u) == 0)
    {
      v12 = v14;
    }

    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v11, v15, v15 + v12);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1D5909EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void *std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = *result;
  v10 = result[1];
  v11 = v10;
  v12 = v10 - *result;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v14 = v8 - v13;
  if (v8 <= v13)
  {
    if (v8 < v13)
    {
      v11 = v9 + v7;
      result[1] = v9 + v7;
    }
  }

  else
  {
    v15 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v10) >> 3) < v14)
    {
      v32 = a4[6];
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v15 - v9) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v15 - v9) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v8;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v16);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v17 = 8 * (v7 >> 3) - 8 * (v12 >> 3);
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v17 -= 24;
    }

    while (v17);
    result[1] = v10 + 24 * v14;
    v11 = v10 + 24 * v14;
  }

  v18 = *result;
  if (v11 == *result)
  {
    v21 = a2 - v6;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 - v6;
    v23 = *a4;
    v22 = a4[1];
    do
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3);
      v25 = (v23 + v19);
      if (v24 <= v20)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = v25;
      }

      *(v18 + v19) = v21 + *v26;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v20)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v19);
      }

      *(*v5 + v19 + 8) = v21 + v27[1];
      v23 = *a4;
      v22 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v22 - *a4) >> 3) <= v20)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = (*a4 + v19);
      }

      v29 = *(v28 + 16);
      v18 = *v5;
      v30 = v5[1];
      result = (*v5 + v19);
      *(result + 16) = v29;
      ++v20;
      v19 += 24;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v30 - v18) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v31 = v21 + a4[6];
  v5[6] = v31;
  v5[7] = v21 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v21 + a4[9];
  v5[10] = v21 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v31;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    memset(v142, 0, 24);
    v54 = *(a1 + 40);
    if (!v54)
    {
LABEL_113:
      v66 = v142;
      goto LABEL_125;
    }

    v150.first = a3;
    v150.second = a3;
    v150.matched = 0;
    *v146 = 0;
    memset(&v146[8], 0, 32);
    v147 = 0u;
    v148 = 0u;
    memset(v149, 0, 21);
    std::vector<std::__state<char>>::push_back[abi:ne200100](v142, v146);
    if (v148)
    {
      operator delete(v148);
    }

    if (*&v146[32])
    {
      operator delete(*&v146[32]);
    }

    v55 = *&v142[8];
    *(*&v142[8] - 96) = 0;
    *(v55 - 88) = a2;
    *(v55 - 80) = a2;
    *(v55 - 72) = a3;
    std::vector<std::sub_match<char const*>>::resize((v55 - 64), *(a1 + 28), &v150);
    std::vector<std::pair<unsigned long,char const*>>::resize((*&v142[8] - 40), *(a1 + 32));
    v56 = *&v142[8];
    *(*&v142[8] - 16) = v54;
    *(v56 - 8) = a5;
    *(v56 - 4) = a6;
    v57 = 1;
    while (1)
    {
      if ((v57 & 0xFFF) == 0 && (v57 >> 12) >= a3 - a2)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v59 = (v56 - 16);
      v58 = *(v56 - 16);
      v60 = (v56 - 96);
      if (v58)
      {
        (*(*v58 + 16))(v58, v56 - 96);
      }

      v61 = *v60;
      if (*v60 > -994)
      {
        break;
      }

      if ((v61 + 995) >= 2)
      {
        if (v61 != -1000)
        {
          goto LABEL_220;
        }

        v62 = *(v56 - 80);
        if (((a5 & 0x20) == 0 || v62 != a2) && ((a5 & 0x1000) == 0 || v62 == a3))
        {
          v127 = *a4;
          *v127 = a2;
          *(v127 + 8) = v62;
          *(v127 + 16) = 1;
          v128 = *(v56 - 64);
          v129 = *(v56 - 56) - v128;
          if (v129)
          {
            v130 = 0xAAAAAAAAAAAAAAABLL * (v129 >> 3);
            v131 = (v128 + 16);
            v132 = 1;
            do
            {
              v133 = v127 + 24 * v132;
              *v133 = *(v131 - 1);
              v134 = *v131;
              v131 += 24;
              *(v133 + 16) = v134;
              v18 = v130 > v132++;
            }

            while (v18);
          }

          v54 = 1;
          goto LABEL_113;
        }

LABEL_106:
        v63 = *&v142[8] - 96;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*&v142[8] - 96));
        *&v142[8] = v63;
      }

LABEL_111:
      v56 = *&v142[8];
      ++v57;
      if (*v142 == *&v142[8])
      {
        v54 = 0;
        goto LABEL_113;
      }
    }

    if (v61 != -993)
    {
      if (v61 == -992)
      {
        v64 = *(v56 - 80);
        *v146 = *v60;
        *&v146[16] = v64;
        v147 = 0uLL;
        *&v146[32] = 0;
        std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v146[32], *(v56 - 64), *(v56 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v56 - 56) - *(v56 - 64)) >> 3));
        v148 = 0uLL;
        v149[0] = 0;
        std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v148, *(v56 - 40), *(v56 - 32), (*(v56 - 32) - *(v56 - 40)) >> 4);
        v65 = *v59;
        *(&v149[1] + 5) = *(v56 - 11);
        v149[1] = v65;
        (*(**v59 + 24))(*v59, 1, v56 - 96);
        (*(*v149[1] + 24))(v149[1], 0, v146);
        std::vector<std::__state<char>>::push_back[abi:ne200100](v142, v146);
        if (v148)
        {
          *(&v148 + 1) = v148;
          operator delete(v148);
        }

        if (*&v146[32])
        {
          *&v147 = *&v146[32];
          operator delete(*&v146[32]);
        }
      }

      else if (v61 != -991)
      {
LABEL_220:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }

      goto LABEL_111;
    }

    goto LABEL_106;
  }

  if (!*(a1 + 28))
  {
    memset(v142, 0, 48);
    v54 = *(a1 + 40);
    if (!v54)
    {
LABEL_212:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v142);
      return v54;
    }

    *v146 = 0;
    memset(&v146[8], 0, 32);
    v147 = 0uLL;
    v148 = 0uLL;
    memset(v149, 0, 21);
    std::deque<std::__state<char>>::push_back(v142, v146);
    if (v148)
    {
      operator delete(v148);
    }

    if (*&v146[32])
    {
      operator delete(*&v146[32]);
    }

    v73 = *&v142[8];
    v74 = *&v142[40] + *&v142[32] - 1;
    v75 = v74 / 0x2A;
    v76 = *(*&v142[8] + 8 * (v74 / 0x2A));
    v77 = 3 * (v74 % 0x2A);
    v78 = v76 + 32 * v77;
    *v78 = 0;
    *(v78 + 8) = a2;
    *(*(v73 + 8 * v75) + 32 * v77 + 16) = a2;
    *(*(v73 + 8 * v75) + 32 * v77 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v73 + 8 * v75) + 32 * v77 + 56), *(a1 + 32));
    v138 = 0;
    v79 = 0;
    v136 = 0;
    v140 = a3;
    v80 = (a3 - a2);
    v81 = *&v142[40];
    v82 = *&v142[8];
    v83 = *&v142[40] + *&v142[32] - 1;
    v84 = v83 / 0x2A;
    v85 = 3 * (v83 % 0x2A);
    *(*(*&v142[8] + 8 * v84) + 32 * v85 + 80) = v54;
    v86 = *(v82 + 8 * v84) + 32 * v85;
    *(v86 + 88) = a5;
    *(v86 + 92) = a6;
    v87 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v79 & 0xFFF) == 0 && (v79 >> 12) >= v80)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v89 = v81 + *&v142[32] - 1;
      v90 = (((v89 >> 1) * v87) >> 64) >> 4;
      v91 = *(*&v142[8] + 8 * v90) - 4032 * v90 + 96 * v89;
      v93 = (v91 + 80);
      v92 = *(v91 + 80);
      if (v92)
      {
        (*(*v92 + 16))(v92, v91);
      }

      v94 = *v91;
      if (*v91 <= -995)
      {
        switch(v94)
        {
          case -1000:
            v99 = *(v91 + 16);
            v101 = (a5 & 0x1000) == 0 || v99 == v140;
            v102 = v99 != a2 || (a5 & 0x20) == 0;
            if (!v102 || !v101)
            {
              goto LABEL_207;
            }

            v103 = &v99[-*(v91 + 8)];
            v104 = v136;
            if (v136 <= v103)
            {
              v104 = v103;
            }

            if (v138)
            {
              v103 = v104;
            }

            if (v103 == v80)
            {
              v105 = *&v142[8];
              v106 = *&v142[16];
              if (*&v142[16] == *&v142[8])
              {
                v106 = *&v142[8];
              }

              else
              {
                v107 = (((*&v142[32] >> 1) * v87) >> 64) >> 4;
                v108 = (*&v142[8] + 8 * v107);
                v109 = (*v108 - 4032 * v107 + 96 * *&v142[32]);
                v110 = v87;
                v111 = ((((*&v142[40] + *&v142[32]) >> 1) * v87) >> 64) >> 4;
                v112 = *(*&v142[8] + 8 * v111) - 4032 * v111 + 96 * (*&v142[40] + *&v142[32]);
                if (v109 != v112)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v109);
                    v109 += 12;
                    if ((v109 - *v108) == 4032)
                    {
                      v113 = v108[1];
                      ++v108;
                      v109 = v113;
                    }
                  }

                  while (v109 != v112);
                  v105 = *&v142[8];
                  v106 = *&v142[16];
                }

                v87 = v110;
              }

              *&v142[40] = 0;
              v116 = (v106 - v105) >> 3;
              if (v116 >= 3)
              {
                do
                {
                  operator delete(*v105);
                  v105 = (*&v142[8] + 8);
                  *&v142[8] = v105;
                  v116 = (*&v142[16] - v105) >> 3;
                }

                while (v116 > 2);
              }

              if (v116 == 1)
              {
                v117 = 21;
LABEL_198:
                *&v142[32] = v117;
              }

              else if (v116 == 2)
              {
                v117 = 42;
                goto LABEL_198;
              }

              v138 = 1;
              v136 = v80;
              break;
            }

            v136 = v103;
            std::deque<std::__state<char>>::pop_back(v142);
            v138 = 1;
            break;
          case -999:
            break;
          case -995:
            v95 = *&v142[32];
            v96 = *&v142[8];
            v97 = *&v142[16];
            if (!*&v142[32])
            {
              v98 = 42 * ((*&v142[16] - *&v142[8]) >> 3) - 1;
              if (*&v142[16] == *&v142[8])
              {
                v98 = 0;
              }

              if ((v98 - *&v142[40]) < 0x2A)
              {
                if (*&v142[16] - *&v142[8] < *&v142[24] - *v142)
                {
                  if (*&v142[8] != *v142)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v142[24] == *v142)
                {
                  v118 = 1;
                }

                else
                {
                  v118 = (*&v142[24] - *v142) >> 2;
                }

                *&v146[32] = v142;
                std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v118);
              }

              *&v142[32] = 42;
              *v146 = *(*&v142[16] - 8);
              *&v142[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v142, v146);
              v95 = *&v142[32];
              v96 = *&v142[8];
              v97 = *&v142[16];
            }

            v119 = (((v95 >> 1) * v87) >> 64) >> 4;
            v120 = (v96 + 8 * v119);
            v121 = *v120 - 4032 * v119 + 96 * v95;
            if (v97 == v96)
            {
              v122 = 0;
            }

            else
            {
              v122 = v121;
            }

            if (v122 == *v120)
            {
              v122 = *(v120 - 1) + 4032;
            }

            v123 = *(v91 + 16);
            *(v122 - 96) = *v91;
            *(v122 - 80) = v123;
            *(v122 - 56) = 0;
            *(v122 - 48) = 0;
            *(v122 - 64) = 0;
            *(v122 - 64) = *(v91 + 32);
            *(v122 - 48) = *(v91 + 48);
            *(v91 + 32) = 0;
            *(v91 + 40) = 0;
            *(v91 + 48) = 0;
            *(v122 - 40) = 0;
            *(v122 - 32) = 0;
            *(v122 - 24) = 0;
            *(v122 - 40) = *(v91 + 56);
            *(v122 - 24) = *(v91 + 72);
            *(v91 + 56) = 0;
            *(v91 + 64) = 0;
            *(v91 + 72) = 0;
            v124 = *v93;
            *(v122 - 11) = *(v91 + 85);
            *(v122 - 16) = v124;
            *&v142[32] = vaddq_s64(*&v142[32], xmmword_1D5AFB370);
            goto LABEL_207;
          default:
            goto LABEL_221;
        }
      }

      else
      {
        if (v94 > -993)
        {
          if (v94 == -992)
          {
            v114 = *(v91 + 16);
            *v146 = *v91;
            *&v146[16] = v114;
            v147 = 0uLL;
            *&v146[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v146[32], *(v91 + 32), *(v91 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v91 + 40) - *(v91 + 32)) >> 3));
            v148 = 0uLL;
            v149[0] = 0;
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v148, *(v91 + 56), *(v91 + 64), (*(v91 + 64) - *(v91 + 56)) >> 4);
            v115 = *v93;
            *(&v149[1] + 5) = *(v91 + 85);
            v149[1] = v115;
            (*(**(v91 + 80) + 24))(*(v91 + 80), 1, v91);
            (*(*v149[1] + 24))(v149[1], 0, v146);
            std::deque<std::__state<char>>::push_back(v142, v146);
            if (v148)
            {
              *(&v148 + 1) = v148;
              operator delete(v148);
            }

            if (*&v146[32])
            {
              *&v147 = *&v146[32];
              operator delete(*&v146[32]);
            }
          }

          else if (v94 != -991)
          {
LABEL_221:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_208;
        }

        if (v94 != -994)
        {
          if (v94 != -993)
          {
            goto LABEL_221;
          }

LABEL_207:
          std::deque<std::__state<char>>::pop_back(v142);
        }
      }

LABEL_208:
      v81 = *&v142[40];
      if (!*&v142[40])
      {
        if (v138)
        {
          v125 = *a4;
          *v125 = a2;
          *(v125 + 8) = &v136[a2];
          v54 = 1;
          *(v125 + 16) = 1;
        }

        else
        {
          v54 = 0;
        }

        goto LABEL_212;
      }
    }
  }

  memset(&v150, 0, sizeof(v150));
  *v146 = 0;
  memset(&v146[8], 0, 32);
  v147 = 0u;
  v148 = 0u;
  memset(v149, 0, 21);
  v11 = *(a1 + 40);
  if (!v11)
  {
LABEL_119:
    v54 = 0;
    goto LABEL_120;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v142 = 0;
  memset(&v142[8], 0, 48);
  *__p = 0uLL;
  memset(v144, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v150, v142);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v142[32])
  {
    operator delete(*&v142[32]);
  }

  v135 = a4;
  second = v150.second;
  *(v150.second - 24) = 0;
  *(second - 11) = a2;
  *(second - 10) = a2;
  v139 = a3;
  *(second - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((second - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v150.second - 40), *(a1 + 32));
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v137 = a2;
  v16 = (v139 - a2);
  v17 = v150.second;
  *(v150.second - 2) = v11;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v18 = (++v15 & 0xFFF) != 0 || (v15 >> 12) < v16;
    if (!v18)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v20 = v17 - 16;
    v19 = *(v17 - 2);
    v21 = v17 - 96;
    if (v19)
    {
      (*(*v19 + 16))(v19, v17 - 96);
    }

    v22 = *v21;
    if (*v21 > -994)
    {
      switch(v22)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v35 = *(v17 - 5);
          *v142 = *v21;
          *&v142[16] = v35;
          memset(&v142[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v142[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v144[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v36 = *v20;
          *(&v144[1] + 5) = *(v17 - 11);
          v144[1] = v36;
          (*(**v20 + 24))(*v20, 1, v17 - 96);
          (*(*v144[1] + 24))(v144[1], 0, v142);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v150, v142);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v142[32])
          {
            *&v142[40] = *&v142[32];
            operator delete(*&v142[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_219:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v22 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v22 != -1000)
      {
        goto LABEL_219;
      }

      v23 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v23 == v137 || (a5 & 0x1000) != 0 && v23 != v139)
      {
LABEL_40:
        v34 = v150.second - 96;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v150.second - 12);
        v150.second = v34;
        goto LABEL_45;
      }

      v24 = &v23[-*(v17 - 11)];
      if ((v14 & (v13 >= v24)) == 0)
      {
        v25 = *(v17 - 5);
        *v146 = *v21;
        *&v146[16] = v25;
        if (v146 != v21)
        {
          v27 = *(v17 - 8);
          v26 = *(v17 - 7);
          v28 = v26 - v27;
          v29 = *(&v147 + 1);
          v30 = *&v146[32];
          if (*(&v147 + 1) - *&v146[32] < v26 - v27)
          {
            if (*&v146[32])
            {
              *&v147 = *&v146[32];
              operator delete(*&v146[32]);
              v29 = 0;
              *&v146[32] = 0;
              v147 = 0uLL;
            }

            v31 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
            if (v31 <= 0xAAAAAAAAAAAAAAALL)
            {
              v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
              if (2 * v32 > v31)
              {
                v31 = 2 * v32;
              }

              if (v32 >= 0x555555555555555)
              {
                v33 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v33 = v31;
              }

              if (v33 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v33);
              }
            }

            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v37 = v147;
          if (v147 - *&v146[32] >= v28)
          {
            while (v27 != v26)
            {
              *v30 = *v27;
              *(v30 + 16) = *(v27 + 16);
              v27 += 24;
              v30 += 24;
            }
          }

          else
          {
            v38 = (v27 + v147 - *&v146[32]);
            if (v147 != *&v146[32])
            {
              do
              {
                *v30 = *v27;
                *(v30 + 16) = *(v27 + 16);
                v27 += 24;
                v30 += 24;
              }

              while (v27 != v38);
            }

            while (v38 != v26)
            {
              v39 = *v38;
              *(v37 + 16) = *(v38 + 2);
              *v37 = v39;
              v37 += 24;
              v38 = (v38 + 24);
            }

            v30 = v37;
          }

          *&v147 = v30;
          v41 = *(v17 - 5);
          v40 = *(v17 - 4);
          v42 = v40 - v41;
          v43 = v149[0];
          v44 = v148;
          if (v149[0] - v148 < (v40 - v41))
          {
            if (v148)
            {
              *(&v148 + 1) = v148;
              operator delete(v148);
              v43 = 0;
              v148 = 0uLL;
              v149[0] = 0;
            }

            v45 = v42 >> 4;
            if (!((v42 >> 4) >> 60))
            {
              if (v43 >> 3 > v45)
              {
                v45 = v43 >> 3;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFF0)
              {
                v46 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = v45;
              }

              if (!(v46 >> 60))
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v46);
              }
            }

            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v47 = *(&v148 + 1);
          if (*(&v148 + 1) - v148 >= v42)
          {
            while (v41 != v40)
            {
              *v44 = *v41;
              v44[1] = *(v41 + 1);
              v41 += 16;
              v44 += 2;
            }
          }

          else
          {
            v48 = &v41[*(&v148 + 1) - v148];
            if (*(&v148 + 1) != v148)
            {
              do
              {
                *v44 = *v41;
                v44[1] = *(v41 + 1);
                v41 += 16;
                v44 += 2;
              }

              while (v41 != v48);
            }

            while (v48 != v40)
            {
              v49 = *v48;
              v48 += 16;
              *v47++ = v49;
            }

            v44 = v47;
          }

          *(&v148 + 1) = v44;
        }

        v50 = *v20;
        *(&v149[1] + 5) = *(v20 + 5);
        v149[1] = v50;
        v13 = v24;
      }

      v51 = v150.second;
      if (v13 == v16)
      {
        first = v150.first;
        while (v51 != first)
        {
          v51 -= 96;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v51);
        }

        v150.second = first;
        v14 = 1;
        v13 = v16;
      }

      else
      {
        v53 = v150.second - 96;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v150.second - 12);
        v150.second = v53;
        v14 = 1;
      }
    }

LABEL_45:
    v17 = v150.second;
  }

  while (v150.first != v150.second);
  if ((v14 & 1) == 0)
  {
    goto LABEL_119;
  }

  v67 = *v135;
  *v67 = v137;
  *(v67 + 8) = &v13[v137];
  *(v67 + 16) = 1;
  if (v147 != *&v146[32])
  {
    v68 = 0xAAAAAAAAAAAAAAABLL * ((v147 - *&v146[32]) >> 3);
    v69 = (*&v146[32] + 16);
    v70 = 1;
    do
    {
      v71 = v67 + 24 * v70;
      *v71 = *(v69 - 1);
      v72 = *v69;
      v69 += 24;
      *(v71 + 16) = v72;
      v18 = v68 > v70++;
    }

    while (v18);
  }

  v54 = 1;
LABEL_120:
  if (v148)
  {
    *(&v148 + 1) = v148;
    operator delete(v148);
  }

  if (*&v146[32])
  {
    *&v147 = *&v146[32];
    operator delete(*&v146[32]);
  }

  v66 = &v150;
LABEL_125:
  *v146 = v66;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v146);
  return v54;
}

void sub_1D590B5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v11);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA6ED8C0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D590BEF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D590BF68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1DA6ED8C0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 42 * ((v5 - v6) >> 3) - 1;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40) + v9;
  if (v8 == v10)
  {
    if (v9 < 0x2A)
    {
      v11 = *(a1 + 24);
      v12 = &v11[-*a1];
      if (v7 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v19 = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v13);
    }

    *(a1 + 32) = v9 - 42;
    *&v18 = *v6;
    *(a1 + 8) = v6 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v18);
    v6 = *(a1 + 8);
    v10 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = *&v6[8 * (v10 / 0x2A)] - 4032 * (v10 / 0x2A) + 96 * v10;
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = 0;
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  result = *(a2 + 56);
  *(v14 + 56) = result;
  *(v14 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v17 = *(a2 + 80);
  *(v14 + 85) = *(a2 + 85);
  *(v14 + 80) = v17;
  ++*(a1 + 40);
  return result;
}

void sub_1D590C3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v11);
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

uint64_t std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void mediaplatform::Base16Representation(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = *(a1 + 24);
  while (v4 < *(a1 + 8))
  {
    std::string::push_back(a2, a0123456789abcd[*(v5 + v4) >> 4]);
    std::string::push_back(a2, a0123456789abcd[*(v5 + v4++) & 0xF]);
  }
}

void sub_1D590C9F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::TypedEntityClass<mlcore::Account>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::Account>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::Account>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::Account>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::Account>::sharedPointer(void)::__sharedPointer;
}

void mlcore::TypedEntityClass<mlcore::Account>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::Account>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::Account>::databaseTable()
{
  mediaplatform::Singleton<mlcore::AccountTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void *mediaplatform::Singleton<mlcore::AccountTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore12AccountTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::AccountTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::AccountTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D590CC78(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::AccountTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void sub_1D590CF84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::Account>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::Account>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::Account::~Account(mlcore::Account *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::AccountPropertyDSID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AccountPropertyDSID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AccountPropertyDSID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AccountPropertyDSID(void)::$_0 &&>>);
  }

  return mlcore::AccountPropertyDSID(void)::property;
}

void sub_1D590D3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AccountPropertyAppleID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AccountPropertyAppleID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AccountPropertyAppleID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AccountPropertyAppleID(void)::$_0 &&>>);
  }

  return mlcore::AccountPropertyAppleID(void)::property;
}

void sub_1D590D6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AccountPropertyAltDSID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AccountPropertyAltDSID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AccountPropertyAltDSID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AccountPropertyAltDSID(void)::$_0 &&>>);
  }

  return mlcore::AccountPropertyAltDSID(void)::property;
}

void sub_1D590D98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::Account::dsid(mlcore::Account *this)
{
  v2 = mlcore::AccountPropertyDSID(this);

  return mlcore::Entity::valueForProperty<long long>(this, v2);
}

void *mlcore::Account::setDSID(mlcore::Account *this, uint64_t a2)
{
  v5[0] = mlcore::AccountPropertyDSID(this);
  v5[1] = v5;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(this + 22, v5[0]);
  result[3] = a2;
  return result;
}

void mlcore::Account::appleID(mlcore::Account *this@<X0>, std::string *a2@<X8>)
{
  v4 = mlcore::AccountPropertyAppleID(this);

  mlcore::Entity::valueForProperty<std::string>(a2, this, v4);
}

void mlcore::Account::setAppleID(mlcore *a1, uint64_t a2)
{
  v4 = mlcore::AccountPropertyAppleID(a1);

  mlcore::Entity::setValueForProperty<std::string>(a1, a2, v4);
}

void mlcore::Account::altDSID(mlcore::Account *this@<X0>, std::string *a2@<X8>)
{
  v4 = mlcore::AccountPropertyAltDSID(this);

  mlcore::Entity::valueForProperty<std::string>(a2, this, v4);
}

void mlcore::Account::setAltDSID(mlcore *a1, uint64_t a2)
{
  v4 = mlcore::AccountPropertyAltDSID(a1);

  mlcore::Entity::setValueForProperty<std::string>(a1, a2, v4);
}

uint64_t mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::sharedPointer(void)::__sharedPointer;
}

uint64_t mlcore::PlaylistItemReactionPropertyPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistItemReactionPropertyPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistItemReactionPropertyPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistItemReactionPropertyPersistentID(void)::$_0 &&>>);
  }

  return mlcore::PlaylistItemReactionPropertyPersistentID(void)::property;
}

void sub_1D590DF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ContainerItemReactionTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore26ContainerItemReactionTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ContainerItemReactionTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ContainerItemReactionTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D590E110(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ContainerItemReactionTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D12D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::databaseTable()
{
  mediaplatform::Singleton<mlcore::ContainerItemReactionTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void sub_1D590E470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::PlaylistItemReaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::PlaylistItemReaction>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::PlaylistItemReaction::~PlaylistItemReaction(mlcore::PlaylistItemReaction *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::PlaylistItemReactionPropertyContainerItemPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistItemReactionPropertyContainerItemPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistItemReactionPropertyContainerItemPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistItemReactionPropertyContainerItemPersistentID(void)::$_0 &&>>);
  }

  return mlcore::PlaylistItemReactionPropertyContainerItemPersistentID(void)::property;
}

void sub_1D590E894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::PlaylistItemReactionPropertyPersonPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistItemReactionPropertyPersonPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistItemReactionPropertyPersonPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistItemReactionPropertyPersonPersistentID(void)::$_0 &&>>);
  }

  return mlcore::PlaylistItemReactionPropertyPersonPersistentID(void)::property;
}

void sub_1D590EBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::PlaylistItemReactionPropertyReactionText(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistItemReactionPropertyReactionText(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistItemReactionPropertyReactionText(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistItemReactionPropertyReactionText(void)::$_0 &&>>);
  }

  return mlcore::PlaylistItemReactionPropertyReactionText(void)::property;
}

void sub_1D590EEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::PlaylistItemReactionPropertyDate(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::PlaylistItemReactionPropertyDate(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::PlaylistItemReactionPropertyDate(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::PlaylistItemReactionPropertyDate(void)::$_0 &&>>);
  }

  return mlcore::PlaylistItemReactionPropertyDate(void)::property;
}

void sub_1D590F1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

double mlcore::PlaylistItemReaction::PlaylistItemReaction(mlcore::PlaylistItemReaction *this, uint64_t a2)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D4580;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D4580;
  return result;
}

uint64_t ChapterData_Create(void *a1)
{
  v2 = malloc_type_calloc(0x58uLL, 1uLL, 0x32C2F96DuLL);
  if (v2)
  {
    v3 = v2;
    *v2 = 0x163687064;
    v4 = JRAtomContainerCreate(v2 + 3);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v3[5] = 0;
      v5 = ChapterData_NewChapterInternal(v3, 0, 0, 0);
      if (!v5)
      {
LABEL_7:
        *a1 = v3;
        return v5;
      }
    }

    ChapterData_Dispose(v3);
    v3 = 0;
    goto LABEL_7;
  }

  return 0;
}

uint64_t ChapterData_NewChapterInternal(uint64_t a1, unsigned int a2, int a3, unsigned int *a4)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1667788900)
  {
    return 4294967246;
  }

  if (a2 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  if (a3)
  {
    v8 = (a1 + 32);
    if (!*(a1 + 32))
    {
      result = JRAtomContainerCreate((a1 + 32));
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    v8 = (a1 + 24);
  }

  v10 = *v8;
  v11 = JRCountChildrenOfType(v10, 0, 1667785072);
  if (v11 >= 1)
  {
    v12 = v11;
    v18 = 0;
    if (JRFindChildByIndex(v10, 0, 1667785072, v11, &v18))
    {
      v13 = v18;
      if (v18 >= v7)
      {
        while (1)
        {
          v19 = 0;
          v14 = v12;
          v15 = JRFindChildByIndex(v10, 0, 1667785072, v12, &v19);
          if (v15)
          {
            v13 = v19;
          }

          if (v13 < v7)
          {
            v16 = v12 + 1;
            if (a3)
            {
              return JRInsertChild(v10, 0, 0x63686170u, v7, v16, 0, 0, a4);
            }

            goto LABEL_25;
          }

          if (v13 == v7)
          {
            break;
          }

          --v12;
          if (v14 <= 1)
          {
            goto LABEL_20;
          }
        }

        if (!a4)
        {
          return 0;
        }

        v17 = v15;
        result = 0;
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    return 4294967246;
  }

LABEL_20:
  v16 = 0;
  if (a3)
  {
    return JRInsertChild(v10, 0, 0x63686170u, v7, v16, 0, 0, a4);
  }

LABEL_25:
  *(a1 + 64) = 0;
  *(a1 + 78) = 0;
  result = JRInsertChild(v10, 0, 0x63686170u, v7, v16, 0, 0, (a1 + 72));
  if (!result)
  {
    *(a1 + 68) = v7;
    *(a1 + 64) = 1;
    *(a1 + 76) = v16;
    *(a1 + 78) = 0;
    *(a1 + 80) = -1;
    ++*(a1 + 20);
    *(a1 + 16) = 1;
    if (a4)
    {
      result = 0;
      v17 = *(a1 + 72);
LABEL_30:
      *a4 = v17;
      return result;
    }

    return 0;
  }

  return result;
}

void ChapterData_Dispose(_DWORD *a1)
{
  if (*a1 == 1667788900)
  {
    JRAtomContainerRelease(*(a1 + 3));
    JRAtomContainerRelease(*(a1 + 4));
    v3 = *(a1 + 5);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 6);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 7);
    if (v5)
    {
      free(v5);
    }

    free(a1);
  }
}

uint64_t ChapterData_CreateWithFlattenedData(unsigned int a1, const void *a2, int8x8_t **a3)
{
  v14 = 0;
  v6 = ChapterData_Create(&v14);
  v7 = v14;
  if (v6)
  {
    v8 = v6;
    if (v14)
    {
LABEL_3:
      ChapterData_Dispose(v7);
      v7 = 0;
    }
  }

  else
  {
    if (!v14)
    {
      v8 = 4294967188;
      goto LABEL_12;
    }

    v9 = JRDataToAtomContainer(a1, a2);
    if (!v9)
    {
      v8 = 4294967246;
      goto LABEL_3;
    }

    v10 = v9;
    JRAtomContainerRelease(*&v7[3]);
    v7[3] = v10;
    v7[2].i32[1] = JRCountChildrenOfType(v10, 0, 1667785072);
    LODWORD(__n) = 0;
    AtomDataPtr = JRFindAndGetAtomDataPtr(*&v7[3], 0, 1751475314, 1, &__n);
    if (AtomDataPtr)
    {
      v12 = __n;
      if (__n >= 9)
      {
        v12 = 8;
        LODWORD(__n) = 8;
      }

      memcpy(&v7[1], AtomDataPtr, v12);
      v7[1] = vrev32_s8(v7[1]);
    }

    v8 = 0;
  }

LABEL_12:
  *a3 = v7;
  return v8;
}

uint64_t ChapterData_ExportFlattenedData(uint64_t a1, CFDataRef *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1667788900)
  {
    return 4294967246;
  }

  if (*(a1 + 16))
  {
    v4 = bswap32(*(a1 + 12));
    v7[0] = bswap32(*(a1 + 8));
    v7[1] = v4;
    JRAddOrInsertAtom(*(a1 + 24), 0, 0x68656472u, 8, v7);
    *(a1 + 16) = 0;
  }

  v5 = JRAtomContainerToCFData(*(a1 + 24));
  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

_DWORD *ChapterData_Retain(_DWORD *result)
{
  if (result)
  {
    if (*result == 1667788900)
    {
      ++result[1];
    }
  }

  return result;
}

void ChapterData_Release(_DWORD *a1)
{
  if (a1 && *a1 == 1667788900)
  {
    v1 = a1[1] - 1;
    a1[1] = v1;
    if (!v1)
    {
      ChapterData_Dispose(a1);
    }
  }
}

int8x8_t *ChapterData_CreateCopy(int8x8_t *result)
{
  theData = 0;
  v6 = 0;
  if (result)
  {
    if (result->i32[0] == 1667788900)
    {
      v1 = ChapterData_ExportFlattenedData(result, &theData);
      v2 = theData;
      if (!v1)
      {
        Length = CFDataGetLength(theData);
        BytePtr = CFDataGetBytePtr(v2);
        ChapterData_CreateWithFlattenedData(Length, BytePtr, &v6);
      }

      if (v2)
      {
        CFRelease(v2);
      }

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ChapterData_SetProperty(uint64_t a1, unsigned int a2, int a3, char a4, int a5, void *a6)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1667788900)
  {
    return 4294967246;
  }

  v7 = a2 <= 1 ? 1 : a2;
  if (a2 == -1)
  {
    return 4294967246;
  }

  ChapterAtom = ChapterData_GetChapterAtom(a1, v7, a4);
  v29 = ChapterAtom;
  if (!ChapterAtom)
  {
    return 4294967246;
  }

  v12 = ChapterAtom;
  if (a3 > 1886154594)
  {
    if (a3 == 1886154595)
    {
      v28[0] = 0;
      v28[1] = 0;
      v24 = *(a1 + 12);
      if ((v24 & 2) == 0)
      {
        *(a1 + 12) = v24 | 2;
        *(a1 + 16) = 1;
      }

      v25 = *(a1 + 48);
      if (v25)
      {
        free(v25);
      }

      *(a1 + 48) = 0;
      __memmove_chk();
      if (LODWORD(v28[0]) == 1768777060)
      {
        LODWORD(v28[0]) = 1684368745;
        HIDWORD(v28[0]) = bswap32(HIDWORD(v28[0]));
      }

      *(a1 + 78) = 0;
      v18 = *(a1 + 24);
      v22 = v28;
      v19 = v12;
      v20 = 1886154595;
      v21 = a5;
      goto LABEL_28;
    }

    if (a3 != 1970433056 && a3 != 1970433140)
    {
      goto LABEL_27;
    }

    v17 = *(a1 + 12);
    if ((v17 & 4) == 0)
    {
      *(a1 + 12) = v17 | 4;
      *(a1 + 16) = 1;
    }

    v15 = (a1 + 56);
    v14 = *(a1 + 56);
    if (!v14)
    {
      goto LABEL_26;
    }

LABEL_25:
    free(v14);
LABEL_26:
    *v15 = 0;
    goto LABEL_27;
  }

  if (a3 == 1851878757)
  {
    v23 = *(a1 + 12);
    if ((v23 & 1) == 0)
    {
      *(a1 + 12) = v23 | 1;
      *(a1 + 16) = 1;
    }

    v15 = (a1 + 40);
    v14 = *(a1 + 40);
    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (a3 != 1885561704)
  {
    if (a3 == 1885626740)
    {
      v13 = *(a1 + 12);
      if ((v13 & 2) == 0)
      {
        *(a1 + 12) = v13 | 2;
        *(a1 + 16) = 1;
      }

      v15 = (a1 + 48);
      v14 = *(a1 + 48);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_27:
    *(a1 + 78) = 0;
    v18 = *(a1 + 24);
    v19 = v12;
    v20 = a3;
    v21 = a5;
    v22 = a6;
LABEL_28:
    JRAddOrInsertAtom(v18, v19, v20, v21, v22);
    result = 0;
    *(a1 + 16) = 1;
    return result;
  }

  result = ChapterData_NewChapterInternal(a1, v7, 1, &v29);
  if (!result)
  {
    v26 = JRFindChildByIndex(*(a1 + 32), v29, 1885561704, 1, 0);
    v27 = *(a1 + 32);
    if (v26)
    {
      JRSetAtomData(v27, v26, a5, a6);
    }

    else
    {
      JRInsertChild(v27, v29, 0x70636368u, 0, 1, a5, a6, v28);
    }

    return 0;
  }

  return result;
}

unsigned int *ChapterData_GetChapterAtom(uint64_t a1, unsigned int a2, char a3)
{
  v14 = 1;
  if (*a1 != 1667788900)
  {
    return 0;
  }

  v13 = 0;
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  v5 = *(a1 + 64);
  if ((a3 & 1) == 0)
  {
    if (!*(a1 + 64) || *(a1 + 68) != v4)
    {
      v6 = JRFindChildByID(*(a1 + 24), 0, 1667785072, v4, &v14);
      v7 = v6;
      if (v6)
      {
        *(a1 + 68) = v4;
        *(a1 + 72) = v6;
        *(a1 + 76) = v14;
        *(a1 + 64) = 1;
        *(a1 + 78) = 0;
      }

      return v7;
    }

    return *(a1 + 72);
  }

  if (*(a1 + 64) && *(a1 + 78) && v4 >= *(a1 + 68) && v4 < *(a1 + 80))
  {
    return *(a1 + 72);
  }

  v7 = 0;
  v9 = -1;
  for (i = 1; ; ++i)
  {
    v11 = JRFindChildByIndex(*(a1 + 24), 0, 1667785072, i, &v13);
    if (!v11)
    {
      v12 = 0;
      if (!v7)
      {
        return v7;
      }

      goto LABEL_24;
    }

    if (v13 > v4)
    {
      break;
    }

    v9 = v13;
    v7 = v11;
  }

  v12 = v11;
  if (!v7)
  {
    return v7;
  }

LABEL_24:
  *(a1 + 68) = v9;
  *(a1 + 72) = v7;
  *(a1 + 76) = i - 1;
  *(a1 + 64) = 1;
  *(a1 + 78) = 1;
  if (v11)
  {
    *(a1 + 80) = v13;
    *(a1 + 84) = v12;
  }

  else
  {
    *(a1 + 80) = 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t ChapterData_CopyProperty(uint64_t a1, unsigned int a2, int a3, char a4, unsigned int a5, _WORD *a6)
{
  if (!a1 || *a1 != 1667788900)
  {
    return 4294967246;
  }

  v7 = a2;
  if (a2 <= 1)
  {
    a2 = 1;
  }

  if (v7 == -1)
  {
    return 4294967246;
  }

  if (a3 != 1970433140)
  {
    if (a3 == 1851878757)
    {

      return ChapterData_FindNameForTime(a1, a2, a4, a5, a6);
    }

    ChapterAtom = ChapterData_GetChapterAtom(a1, a2, a4);
    if (ChapterAtom)
    {
      v13 = JRFindChildByIndex(*(a1 + 24), ChapterAtom, a3, 1, 0);
      if (v13)
      {
        return JRCopyAtomDataToPtr(*(a1 + 24), v13, 1, a5, a6, 0);
      }
    }

    return 4294967246;
  }

  return ChapterData_FindURLTitleForTime(a1, a2, a4, a5, a6);
}

uint64_t ChapterData_FindNameForTime(uint64_t a1, unsigned int a2, int a3, unsigned int a4, _WORD *a5)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1667788900 || (*(a1 + 12) & 1) == 0)
  {
    return 4294967246;
  }

  if (a2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v11 = (a1 + 40);
  v10 = *(a1 + 40);
  if (!v10)
  {
    result = ChapterDataCacheTable_BuildTable(*(a1 + 24), 1851878757, (a1 + 40));
    if (result)
    {
      return result;
    }

    v10 = *v11;
  }

  EntryForTime = ChapterDataCacheTable_FindEntryForTime(v10, v9, a3, 0);
  if (!EntryForTime)
  {
    return 4294967246;
  }

  LODWORD(__n) = 0;
  v13 = JRFindChildByIndex(*(a1 + 24), 0, 1667785072, *EntryForTime, 0);
  if (!v13)
  {
    return 4294967246;
  }

  AtomDataPtr = JRFindAndGetAtomDataPtr(*(a1 + 24), v13, 1851878757, 1, &__n);
  if (!AtomDataPtr)
  {
    return 4294967246;
  }

  v15 = __n;
  if (__n > a4)
  {
    LODWORD(__n) = a4;
    v15 = a4;
  }

  memcpy(a5, AtomDataPtr, v15);
  if (v15 >= 2)
  {
    v16 = v15 >> 1;
    do
    {
      *a5 = bswap32(*a5) >> 16;
      ++a5;
      --v16;
    }

    while (v16);
  }

  return 0;
}

uint64_t ChapterData_FindURLTitleForTime(uint64_t a1, unsigned int a2, int a3, unsigned int a4, _WORD *a5)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1667788900 || (*(a1 + 12) & 4) == 0)
  {
    return 4294967246;
  }

  if (a2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v11 = (a1 + 56);
  v10 = *(a1 + 56);
  if (!v10)
  {
    result = ChapterDataCacheTable_BuildTable(*(a1 + 24), 1970433140, (a1 + 56));
    if (result)
    {
      return result;
    }

    v10 = *v11;
  }

  EntryForTime = ChapterDataCacheTable_FindEntryForTime(v10, v9, a3, 0);
  if (!EntryForTime)
  {
    return 4294967246;
  }

  LODWORD(__n) = 0;
  v13 = JRFindChildByIndex(*(a1 + 24), 0, 1667785072, *EntryForTime, 0);
  if (!v13)
  {
    return 4294967246;
  }

  AtomDataPtr = JRFindAndGetAtomDataPtr(*(a1 + 24), v13, 1970433140, 1, &__n);
  if (!AtomDataPtr)
  {
    return 4294967246;
  }

  v15 = __n;
  if (__n > a4)
  {
    LODWORD(__n) = a4;
    v15 = a4;
  }

  memcpy(a5, AtomDataPtr, v15);
  if (v15 >= 2)
  {
    v16 = v15 >> 1;
    do
    {
      *a5 = bswap32(*a5) >> 16;
      ++a5;
      --v16;
    }

    while (v16);
  }

  return 0;
}

uint64_t ChapterDataCacheTable_BuildTable(unsigned int *a1, int a2, void *a3)
{
  v6 = JRCountChildrenOfType(a1, 0, 1667785072);
  v7 = malloc_type_calloc(8 * (v6 - 1) + 16, 1uLL, 0x32C2F96DuLL);
  v8 = v7;
  if (v7)
  {
    v15 = 0;
    *v7 = v6;
    for (i = 1; ; ++i)
    {
      v16 = 0;
      v10 = JRFindChildByIndex(a1, 0, 1667785072, i, &v16);
      if (!v10)
      {
        break;
      }

      v11 = v16;
      if (JRFindAndGetAtomDataPtr(a1, v10, a2, 1, &v15))
      {
        v12 = v8[1];
        if (v12 >= *v8)
        {
          goto LABEL_10;
        }

        v13 = &v8[2 * v12 + 2];
        *v13 = i;
        *(v13 + 4) = v11;
        v8[1] = v12 + 1;
      }
    }

    if (v8[1])
    {
      result = 0;
      goto LABEL_12;
    }

LABEL_10:
    free(v8);
    v8 = 0;
    result = 4294967246;
  }

  else
  {
    result = 4294967188;
  }

LABEL_12:
  *a3 = v8;
  return result;
}

uint64_t ChapterDataCacheTable_FindEntryForTime(uint64_t a1, unsigned int a2, int a3, unsigned int *a4)
{
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  if (a3 < 0)
  {
    v4 += 150;
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 12);
    while (1)
    {
      v8 = *v7;
      v7 += 2;
      if (v8 > v4)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_12;
      }
    }

    LODWORD(v5) = v6;
    if (!v6)
    {
      return 0;
    }
  }

LABEL_12:
  v9 = v5 - 1;
  v10 = a1 + 8 * v9;
  result = v10 + 8;
  if ((a3 & 0x40000000) != 0 && v4 != *(v10 + 12))
  {
    return 0;
  }

  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

_DWORD *ChapterData_GetFlags(_DWORD *result)
{
  if (result)
  {
    if (*result == 1667788900)
    {
      return result[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *ChapterData_GetNumChapters(_DWORD *result)
{
  if (result)
  {
    if (*result == 1667788900)
    {
      return result[5];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ChapterData_GetIndChapterTime(uint64_t a1, int a2)
{
  if (!a2)
  {
    __assert_rtn("ChapterData_GetIndChapterTime", "ITChapterUtilities.c", 995, "inIndex >= kChapterIndex_First");
  }

  result = 0xFFFFFFFFLL;
  v4 = -1;
  if (a1 && *a1 == 1667788900)
  {
    JRFindChildByIndex(*(a1 + 24), 0, 1667785072, a2, &v4);
    if (v4 == 1)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t ChapterData_GetNameCookieForTime(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a1 || *a1 != 1667788900)
  {
    return 4294967246;
  }

  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    return 4294967246;
  }

  v7 = (a1 + 40);
  v6 = *(a1 + 40);
  if (!v6)
  {
    result = ChapterDataCacheTable_BuildTable(*(a1 + 24), 1851878757, v7);
    if (result)
    {
      return result;
    }

    v6 = *v7;
  }

  v8 = *(v6 + 4);
  if (v8)
  {
    v9 = 0;
    v10 = (v6 + 12);
    while (1)
    {
      v11 = *v10;
      v10 += 2;
      if (v11 > v3)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v8) = v9;
    if (!v9)
    {
      return 4294967246;
    }
  }

LABEL_18:
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t ChapterData_GetURLCookieForTime(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  if (!a1 || *a1 != 1667788900)
  {
    return 4294967246;
  }

  v13 = v4;
  v14 = v5;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  if ((*(a1 + 12) & 4) == 0)
  {
    return 4294967246;
  }

  v10 = (a1 + 56);
  v9 = *(a1 + 56);
  if (v9)
  {
LABEL_8:
    v12 = 0;
    if (ChapterDataCacheTable_FindEntryForTime(v9, v6, a3, &v12))
    {
      result = 0;
      *a4 = v12 + 1;
      return result;
    }

    return 4294967246;
  }

  result = ChapterDataCacheTable_BuildTable(*(a1 + 24), 1970433056, v10);
  if (!result)
  {
    v9 = *v10;
    goto LABEL_8;
  }

  return result;
}

uint64_t ChapterData_FindURLForTime(uint64_t a1, unsigned int a2, int a3, unsigned int a4, void *a5)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1667788900 || (*(a1 + 12) & 4) == 0)
  {
    return 4294967246;
  }

  if (a2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v11 = (a1 + 56);
  v10 = *(a1 + 56);
  if (!v10)
  {
    result = ChapterDataCacheTable_BuildTable(*(a1 + 24), 1970433056, (a1 + 56));
    if (result)
    {
      return result;
    }

    v10 = *v11;
  }

  EntryForTime = ChapterDataCacheTable_FindEntryForTime(v10, v9, a3, 0);
  if (!EntryForTime)
  {
    return 4294967246;
  }

  LODWORD(__n) = 0;
  v13 = JRFindChildByIndex(*(a1 + 24), 0, 1667785072, *EntryForTime, 0);
  if (!v13)
  {
    return 4294967246;
  }

  AtomDataPtr = JRFindAndGetAtomDataPtr(*(a1 + 24), v13, 1970433056, 1, &__n);
  if (!AtomDataPtr)
  {
    return 4294967246;
  }

  v15 = __n;
  if (__n > a4)
  {
    LODWORD(__n) = a4;
    v15 = a4;
  }

  memcpy(a5, AtomDataPtr, v15);
  return 0;
}

uint64_t ChapterData_GetPictureCookieForTime(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  if (!a1 || *a1 != 1667788900 || (*(a1 + 12) & 2) == 0)
  {
    return 4294967246;
  }

  v13 = v4;
  v14 = v5;
  if (a2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v11 = (a1 + 48);
  v10 = *(a1 + 48);
  if (!v10)
  {
    result = ChapterDataCacheTable_BuildTable(*(a1 + 24), 1886154595, v11);
    if (result)
    {
      return result;
    }

    v10 = *v11;
  }

  v12 = 0;
  if (!ChapterDataCacheTable_FindEntryForTime(v10, v9, a3, &v12))
  {
    return 4294967246;
  }

  result = 0;
  *a4 = v12 + 1;
  return result;
}

uint64_t mediaplatform::DatabaseErrorCodeFromSQLiteErrorCode(mediaplatform *this)
{
  if ((this - 1) > 0x19)
  {
    return 36;
  }

  else
  {
    return *&asc_1D5AFEE50[4 * (this - 1)];
  }
}

void mlcore::ExistsPredicate::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 72))(&v6);
  operator new();
}

void sub_1D5910960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<mediaplatform::SQLExistsExpression>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D25A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

double mlcore::ExistsPredicate::_allProperties@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 56) = 1065353216;
  return result;
}

void mlcore::ExistsPredicate::description(mlcore::ExistsPredicate *this@<X0>, std::string *a2@<X8>)
{
  (*(**(*(this + 1) + 8) + 40))(v9);
  v4 = *(this + 1);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 40))(__p);
  mediaplatform::FormatString<std::string,std::string>(a2, "exists in {0} ({1})", v9, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1D5910B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ExistsPredicate::~ExistsPredicate(mlcore::ExistsPredicate *this)
{
  *this = &unk_1F50D6A38;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D6A38;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *mlcore::ExistsPredicate::ExistsPredicate(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_1F50D6A38;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_1F50D6A38;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t mlcore::ExistsPredicate::query@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t NewSearchCriteriaList(int a1, void *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v4 = malloc_type_calloc(0x58uLL, 1uLL, 0x10A00403E596B7FuLL);
  if (v4)
  {
    result = 0;
    *(v4 + 56) = 0u;
    *(v4 + 9) = 0;
    *(v4 + 40) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 17) = 512;
    *(v4 + 3) = a1;
    *v4 = 0x1534C7374;
  }

  else
  {
    result = 4294967188;
  }

  *a2 = v4;
  return result;
}

uint64_t GetSearchCriteriaListOptions(_DWORD *a1, _DWORD *a2)
{
  result = 4294967246;
  if (a1 && a2 && *a1 == 1397519220)
  {
    result = 0;
    *a2 = a1[3];
  }

  return result;
}

void DisposeSearchCriteriaList(_DWORD *a1)
{
  if (a1)
  {
    if (*a1 == 1397519220)
    {
      v2 = a1[1];
      if (v2)
      {
        v3 = v2 - 1;
        a1[1] = v3;
        if (!v3)
        {
          v4 = *(a1 + 10);
          if (v4)
          {
            v5 = a1[4];
            if (v5)
            {
              v6 = 0;
              v7 = v4 + 2;
              do
              {
                if (*(v7 - 8))
                {
                  DisposeSearchCriteriaList(*v7);
                  v5 = a1[4];
                }

                ++v6;
                v7 += 3;
              }

              while (v6 < v5);
              v4 = *(a1 + 10);
            }

            free(v4);
          }

          DeleteStringCache((a1 + 6));

          free(a1);
        }
      }
    }
  }
}

uint64_t AppendSearchCriterion(_DWORD *a1, unsigned int a2, int a3, void *__s1, int a5)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1397519220)
  {
    return 4294967246;
  }

  HIDWORD(v8) = a5;
  LODWORD(v8) = a3;
  *(&v8 + 4) = a2 | 0x1000000000000;
  v7 = 0;
  result = AddStringToStringCache(a1 + 6, __s1, a5, (a5 + 3) & 0xFFFFFFFC, &v7);
  v9 = v7;
  if (!result)
  {
    return InsertElement(a1, &v8);
  }

  return result;
}

uint64_t InsertElement(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a1 + 20))
  {
    v6 = *(a1 + 80);
LABEL_7:
    result = 0;
    v9 = &v6[24 * v4];
    v10 = *a2;
    *(v9 + 2) = *(a2 + 2);
    *v9 = v10;
    ++*(a1 + 16);
    return result;
  }

  v5 = malloc_type_calloc(24 * (v4 + 3), 1uLL, 0x10200403ED2C137uLL);
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 80);
    if (v7)
    {
      memmove(v5, v7, 24 * *(a1 + 16));
      free(*(a1 + 80));
    }

    *(a1 + 80) = v6;
    v4 = *(a1 + 16);
    *(a1 + 20) += 3;
    goto LABEL_7;
  }

  return 4294967188;
}

uint64_t AppendUStringSearchCriterion(_DWORD *a1, char a2, int a3, unsigned __int16 *a4)
{
  if ((a2 & 0xF) != 0 && a4)
  {
    return AppendSearchCriterion(a1, a2, a3, a4 + 1, 2 * *a4);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t AppendValueRangeSearchCriterion(_DWORD *a1, __int16 a2, int a3, void *a4)
{
  if ((a2 & 0xFF1) == 0 || a4 == 0)
  {
    return 4294967246;
  }

  else
  {
    return AppendSearchCriterion(a1, a2, a3, a4, 68);
  }
}

uint64_t AppendNumericSearchCriterion(_DWORD *a1, __int16 a2, int a3, unint64_t a4)
{
  if ((a2 & 0xFF1) == 0)
  {
    return 4294967246;
  }

  v9[4] = v4;
  v9[5] = v5;
  __s1[1] = 0;
  memset(&v9[1], 0, 20);
  __s1[0] = a4;
  __s1[2] = 1;
  v8 = a4;
  v9[0] = 1;
  return AppendSearchCriterion(a1, a2, a3, __s1, 68);
}

double InitValueRangeCriteria(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = 0.0;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 52) = 0u;
    *a3 = a1;
    *(a3 + 16) = 1;
    *(a3 + 24) = a2;
    *(a3 + 40) = 1;
  }

  return result;
}

uint64_t AppendNestedSearchCriteriaList(_DWORD *a1, int a2, _DWORD *a3)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 4294967246;
      if (a3)
      {
        if (*a1 == 1397519220 && *a3 == 1397519220)
        {
          LODWORD(v6) = 0;
          DWORD1(v6) = a2;
          *(&v6 + 1) = 0x800000001;
          v7 = a3;
          result = InsertElement(a1, &v6);
          if (!result)
          {
            ++a3[1];
          }
        }
      }
    }
  }

  return result;
}

_DWORD *CountSearchCriteria(_DWORD *result)
{
  if (result)
  {
    if (*result == 1397519220)
    {
      return result[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GetSearchCriterionInfo(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = 4294967246;
  if (!a1 || !a3)
  {
    return v3;
  }

  if (*a1 != 1397519220)
  {
    return 4294967246;
  }

  if (*(a1 + 16) <= a2)
  {
    return 4294967246;
  }

  if (!*(a1 + 8))
  {
    return 4294967246;
  }

  v4 = *(a1 + 80);
  if (!v4)
  {
    return 4294967246;
  }

  v5 = v4 + 24 * a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = *(v5 + 4);
  v3 = *(v5 + 12);
  *(a3 + 24) = v3;
  *a3 = *v5;
  *(a3 + 4) = v6;
  *(a3 + 9) = *(v5 + 10);
  if (*(v5 + 8))
  {
    v3 = 0;
    *(a3 + 8) = 1;
    *(a3 + 16) = *(v5 + 16);
    return v3;
  }

  if (!v3)
  {
    *(a3 + 16) = v5 + 16;
    return v3;
  }

  return GetStringCachePtr(a1 + 24, *(v5 + 16), (a3 + 16), 0);
}

uint64_t GetExportedSearchCriteriaListSize(uint64_t a1)
{
  if (!a1 || *a1 != 1397519220)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return 136;
  }

  v2 = (*(a1 + 80) + 16);
  LODWORD(v3) = 136;
  do
  {
    if (*(v2 - 8))
    {
      ExportedSearchCriteriaListSize = GetExportedSearchCriteriaListSize(*v2);
    }

    else
    {
      ExportedSearchCriteriaListSize = *(v2 - 1);
    }

    v3 = v3 + ExportedSearchCriteriaListSize + (ExportedSearchCriteriaListSize & 1u) + 56;
    v2 += 3;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t LockSearchCriteriaList(uint64_t a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1397519220)
  {
    return 4294967246;
  }

  ++*(a1 + 8);
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = (v2 + 16);
      do
      {
        if (*(v5 - 8))
        {
          LockSearchCriteriaList(*v5);
          v3 = *(a1 + 16);
        }

        ++v4;
        v5 += 3;
      }

      while (v4 < v3);
    }
  }

  return 0;
}

uint64_t UnlockSearchCriteriaList(uint64_t a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1397519220)
  {
    return 4294967246;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 4294967246;
  }

  *(a1 + 8) = v2 - 1;
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v3 + 16);
      do
      {
        if (*(v6 - 8))
        {
          UnlockSearchCriteriaList(*v6);
          v4 = *(a1 + 16);
        }

        ++v5;
        v6 += 3;
      }

      while (v5 < v4);
    }
  }

  return 0;
}

uint64_t GetSearchCriterionInfoNumericValue(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      if (!*(a1 + 8))
      {
        v4 = *(a1 + 16);
        if (v4)
        {
          if (*(a1 + 24) == 68)
          {
            result = 0;
            *a2 = *v4;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSearchCriterionInfoBooleanValue(uint64_t a1, BOOL *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      if (!*(a1 + 8))
      {
        v4 = *(a1 + 16);
        if (v4)
        {
          if (*(a1 + 24) == 68)
          {
            result = 0;
            *a2 = *v4 != 0;
          }
        }
      }
    }
  }

  return result;
}

__n128 GetSearchCriterionInfoValueRange(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      if (!*(a1 + 8))
      {
        v2 = *(a1 + 16);
        if (v2)
        {
          if (*(a1 + 24) == 68)
          {
            *a2 = *v2;
            result = *(v2 + 16);
            v4 = *(v2 + 32);
            v5 = *(v2 + 48);
            *(a2 + 64) = *(v2 + 64);
            *(a2 + 32) = v4;
            *(a2 + 48) = v5;
            *(a2 + 16) = result;
          }
        }
      }
    }
  }

  return result;
}

void *ResolveValueRangeCriteriaValue(void *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    v2 = v1[1];
    if (v2)
    {
      return (result + v1[2] * v2);
    }
  }

  return result;
}

void *GetValueRangeCriteriaStartValue(void *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    v2 = v1[1];
    if (v2)
    {
      return (result + v1[2] * v2);
    }
  }

  return result;
}

uint64_t GetValueRangeCriteriaEndValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 24);
    v2 = *(v1 + 32);
    if (v2)
    {
      result += *(v1 + 40) * v2;
    }
  }

  return result;
}

uint64_t ImportSearchCriteriaList(const void *a1, unsigned int a2, _DWORD **a3)
{
  if (!a3)
  {
    return 4294967246;
  }

  *a3 = 0;
  if (!a1 || a2 < 0x88)
  {
    return 4294967246;
  }

  v5 = a2;
  v6 = malloc_type_malloc(a2, 0x2E30B976uLL);
  if (v6)
  {
    v7 = v6;
    memmove(v6, a1, v5);
    v8 = *v7;
    *v7 = bswap32(*v7);
    v9 = bswap32(*(v7 + 2)) >> 16;
    *(v7 + 2) = v9;
    *(v7 + 3) = bswap32(*(v7 + 3)) >> 16;
    v7[2] = bswap32(v7[2]);
    if (v8 != 1953713235 || v9 > 1)
    {
      appended = 4294967246;
    }

    else
    {
      v13 = *(v7 + 15);
      v14 = *(v7 + 14);
      v15 = malloc_type_calloc(0x58uLL, 1uLL, 0x10A00403E596B7FuLL);
      if (!v15)
      {
        appended = 4294967188;
LABEL_41:
        *a3 = 0;
        goto LABEL_42;
      }

      v16 = v13 != 0;
      if (v13)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      if (v14)
      {
        v16 = v17;
      }

      *(v15 + 56) = 0u;
      *(v15 + 9) = 0;
      *(v15 + 40) = 0u;
      *(v15 + 24) = 0u;
      *(v15 + 17) = 512;
      *(v15 + 3) = v16;
      *v15 = 0x1534C7374;
      *a3 = v15;
      if (v7[2])
      {
        v18 = 0;
        v19 = (v7 + 34);
        v20 = v7 + v5;
        v21 = 10;
        while (1)
        {
          v22 = vrev32_s8(*v19);
          *v19 = v22;
          v23 = bswap32(*(v19 + 52));
          *(v19 + 52) = v23;
          if (*(v19 + 8))
          {
            v26 = 0;
            appended = ImportSearchCriteriaList(v19 + 56, v23, &v26);
            if (!appended)
            {
              appended = AppendNestedSearchCriteriaList(*a3, *(v19 + 4), v26);
              DisposeSearchCriteriaList(v26);
            }
          }

          else
          {
            appended = ITSearchCriteriaEndianSwapProc(v22.i32[0], (v19 + 56), v23);
            v24 = *a3;
            if (appended)
            {
              goto LABEL_40;
            }

            appended = AppendSearchCriterion(v24, *(v19 + 4), *v19, (v19 + 56), *(v19 + 52));
          }

          if (appended)
          {
            break;
          }

          if (*(v19 + 9))
          {
            v24 = *a3;
            if (!*a3 || *v24 != 1397519220 || v18 >= *(v24 + 16))
            {
              appended = 4294967246;
              goto LABEL_40;
            }

            *(*(v24 + 80) + v21) = 0;
          }

          v25 = *(v19 + 52) + v19 + (*(v19 + 52) & 1);
          v19 = v25 + 56;
          if (((v25 + 56) & 2) != 0)
          {
            memmove((v25 + 54), (v25 + 56), v20 - v19);
            v19 -= 2;
          }

          ++v18;
          v21 += 24;
          if (v18 >= v7[2])
          {
            goto LABEL_36;
          }
        }

        v24 = *a3;
LABEL_40:
        DisposeSearchCriteriaList(v24);
        goto LABEL_41;
      }

LABEL_36:
      appended = 0;
    }

LABEL_42:
    free(v7);
    return appended;
  }

  return 4294967188;
}

uint64_t ITSearchCriteriaEndianSwapProc(int a1, int8x16_t *a2, unsigned int a3)
{
  v4 = a2;
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
    case 8:
    case 9:
    case 14:
    case 17:
    case 18:
    case 39:
    case 54:
    case 55:
    case 56:
    case 62:
    case 71:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 89:
    case 104:
    case 144:
    case 145:
    case 148:
    case 149:
      if (!a2)
      {
        return 4294967246;
      }

      if (a3 >= 2)
      {
        v7 = a3 >> 1;
        do
        {
          v4->i16[0] = bswap32(v4->u16[0]) >> 16;
          v4 = (v4 + 2);
          --v7;
        }

        while (v7);
      }

      return 0;
    case 5:
    case 6:
    case 7:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 53:
    case 57:
    case 58:
    case 59:
    case 60:
    case 63:
    case 67:
    case 68:
    case 69:
    case 73:
    case 77:
    case 90:
    case 91:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 117:
    case 118:
    case 125:
    case 133:
    case 134:
    case 136:
    case 140:
    case 141:
    case 142:
    case 154:
    case 156:
    case 183:
      result = 4294967246;
      if (a2 && a3 == 68)
      {
        goto LABEL_4;
      }

      return result;
    default:
      fwrite("ITSearchCriteriaEndianSwapProc(): Unknown match field\n", 0x36uLL, 1uLL, *MEMORY[0x1E69E9848]);
      if (a3 == 68)
      {
        if (v4)
        {
LABEL_4:
          result = 0;
          v6 = vrev64q_s8(v4[1]);
          *v4 = vrev64q_s8(*v4);
          v4[1] = v6;
          v4[2] = vrev64q_s8(v4[2]);
          return result;
        }

        return 4294967246;
      }

      if (!v4)
      {
        return 4294967246;
      }

      if (a3 < 2)
      {
        return 0;
      }

      v8 = a3 >> 1;
      result = 0;
      do
      {
        v4->i16[0] = bswap32(v4->u16[0]) >> 16;
        v4 = (v4 + 2);
        --v8;
      }

      while (v8);
      return result;
  }
}

uint64_t ExportSearchCriteriaList(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*a1 != 1397519220)
  {
    return 4294967246;
  }

  ExportedSearchCriteriaListSize = GetExportedSearchCriteriaListSize(a1);
  if (a4)
  {
    *a4 = ExportedSearchCriteriaListSize;
  }

  if (!a2)
  {
    return 0;
  }

  if (ExportedSearchCriteriaListSize > a3)
  {
    return 4294967246;
  }

  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v11 = *(a1 + 12);
  v10 = *(a1 + 16);
  if (v11)
  {
    *(a2 + 15) = 1;
  }

  if ((v11 & 2) != 0)
  {
    *(a2 + 14) = 1;
  }

  *a2 = 0x100010074734C53;
  *(a2 + 8) = bswap32(v10);
  if (!v10)
  {
    return 0;
  }

  v12 = 0;
  v13 = (a2 + 136);
  v14 = (*(a1 + 80) + 16);
  do
  {
    v20 = 0;
    *v13 = 0u;
    *(v13 + 1) = 0u;
    *(v13 + 2) = 0u;
    *(v13 + 6) = 0;
    *v13 = *(v14 - 2);
    v15 = *(v14 - 8);
    v13[8] = v15;
    v13[9] = *(v14 - 6) == 0;
    if (v15)
    {
      v16 = *v14;
      v17 = GetExportedSearchCriteriaListSize(*v14);
      v20 = v17;
      result = ExportSearchCriteriaList(v16, v13 + 56, v17, &v20);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v14 - 1);
      result = GetStringCacheString(a1 + 24, *v14, v13 + 56, 0, v20);
      if (result)
      {
        return result;
      }

      result = ITSearchCriteriaEndianSwapProc(*v13, (v13 + 56), v20);
      if (result)
      {
        return result;
      }
    }

    v18 = v20;
    v19 = &v13[v20 + 56];
    if (v20)
    {
      *v19++ = 0;
    }

    result = 0;
    *v13 = vrev32_s8(*v13);
    *(v13 + 13) = bswap32(v18);
    ++v12;
    v14 += 3;
    v13 = v19;
  }

  while (v12 < *(a1 + 16));
  return result;
}

mlcore::GeniusSimilaritiesTable *mlcore::GeniusSimilaritiesTable::GeniusSimilaritiesTable(mlcore::GeniusSimilaritiesTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "genius_similarities");
  std::string::basic_string[abi:ne200100]<0>(&v13, "genius_id");
  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v13;
  }

  v16 = 1;
  v17 = 0;
  v18 = 0;
  v14 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "data");
  v4 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = __p;
  }

  v6 = 0;
  v7 = 0;
  v8 = &unk_1F50DD860;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = &unk_1F50D7B40;
  mlcore::MediaTable<long long,mediaplatform::Data>::MediaTable(this, &v19, &v14, &v4);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  *this = &unk_1F50D40A8;
  return this;
}

void sub_1D5911CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v32 - 88) = v31;
  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v32 - 17) < 0)
  {
    operator delete(*(v32 - 40));
  }

  _Unwind_Resume(exception_object);
}

void mlcore::GeniusSimilaritiesTable::~GeniusSimilaritiesTable(mlcore::GeniusSimilaritiesTable *this)
{
  *this = &unk_1F50D84B0;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(this + 256);
  *(this + 26) = &unk_1F50D86E0;
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  *this = &unk_1F50D8F00;
  *(this + 20) = &unk_1F50D86E0;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D84B0;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(this + 256);
  *(this + 26) = &unk_1F50D86E0;
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  *this = &unk_1F50D8F00;
  *(this + 20) = &unk_1F50D86E0;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

void mlcore::GeniusSimilaritiesTable::persistentIDColumn(mlcore::GeniusSimilaritiesTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 239) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 27), *(this + 28));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 216);
    *(a2 + 24) = *(this + 29);
  }

  *(a2 + 32) = *(this + 60);
  *(a2 + 36) = *(this + 244);
  *(a2 + 44) = *(this + 63);
  *a2 = &unk_1F50D7AC0;
}

mediaplatform::Data *mlcore::GeniusSimilaritiesTable::dataColumn@<X0>(mlcore::GeniusSimilaritiesTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 287) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 33), *(this + 34));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 264);
    *(a2 + 24) = *(this + 35);
  }

  *(a2 + 32) = *(this + 72);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 292);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 40), *(this + 38), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D5912080(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

mlcore::ItemVideoTable *mlcore::ItemVideoTable::ItemVideoTable(mlcore::ItemVideoTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(v231, "item_video");
  std::string::basic_string[abi:ne200100]<0>(&v225, "item_pid");
  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
  }

  else
  {
    v227 = v225;
  }

  v228 = 1;
  v229 = 0;
  v230 = 0;
  v226 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v219, "video_quality");
  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v221, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    v221 = v219;
  }

  v222 = 16;
  v223 = 1;
  v224 = 0;
  v220 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&__s, "is_rental");
  v214 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = __s;
  }

  v216 = 16;
  v217 = 1;
  v218 = 0;
  v214 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v207, "has_chapter_data");
  v208 = &unk_1F50D86E0;
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v209, v207.__r_.__value_.__l.__data_, v207.__r_.__value_.__l.__size_);
  }

  else
  {
    v209 = v207;
  }

  v210 = 16;
  v211 = 1;
  v212 = 0;
  v208 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v201, "season_number");
  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v201.__r_.__value_.__l.__data_, v201.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v201;
  }

  v204 = 16;
  v205 = 1;
  v206 = 0;
  v202 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(v198, "episode_id");
  std::string::basic_string[abi:ne200100]<0>(v196, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v200, v198, v196);
  std::string::basic_string[abi:ne200100]<0>(v193, "network_name");
  std::string::basic_string[abi:ne200100]<0>(v191, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v195, v193, v191);
  std::string::basic_string[abi:ne200100]<0>(v188, "extended_content_rating");
  std::string::basic_string[abi:ne200100]<0>(v186, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v190, v188, v186);
  std::string::basic_string[abi:ne200100]<0>(v183, "movie_info");
  std::string::basic_string[abi:ne200100]<0>(v181, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v185, v183, v181);
  std::string::basic_string[abi:ne200100]<0>(&v175, "has_alternate_audio");
  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, v175.__r_.__value_.__l.__data_, v175.__r_.__value_.__l.__size_);
  }

  else
  {
    v177 = v175;
  }

  v178 = 16;
  v179 = 1;
  v180 = 0;
  v176 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v169, "has_subtitles");
  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v171, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v171 = v169;
  }

  v172 = 16;
  v173 = 1;
  v174 = 0;
  v170 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v163, "audio_language");
  v164 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v165, v163.__r_.__value_.__l.__data_, v163.__r_.__value_.__l.__size_);
  }

  else
  {
    v165 = v163;
  }

  v166 = 16;
  v167 = 1;
  v168 = 0;
  v164 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v157, "audio_track_index");
  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v157;
  }

  v160 = 16;
  v161 = 1;
  v162 = 0;
  v158 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v151, "audio_track_id");
  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v151;
  }

  v154 = 16;
  v155 = 1;
  v156 = 0;
  v152 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v145, "subtitle_language");
  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v145;
  }

  v148 = 16;
  v149 = 1;
  v150 = 0;
  v146 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v139, "subtitle_track_index");
  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v141 = v139;
  }

  v142 = 16;
  v143 = 1;
  v144 = 0;
  v140 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v133, "rental_duration");
  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v133.__r_.__value_.__l.__data_, v133.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v133;
  }

  v136 = 16;
  v137 = 1;
  v138 = 0;
  v134 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v127, "rental_playback_duration");
  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v127;
  }

  v130 = 16;
  v131 = 1;
  v132 = 0;
  v128 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v121, "rental_playback_date_started");
  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v121;
  }

  v124 = 16;
  v125 = 1;
  v126 = 0;
  v122 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v115, "rental_date_started");
  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v117, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v117 = v115;
  }

  v118 = 16;
  v119 = 1;
  v120 = 0;
  v116 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v109, "is_demo");
  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v109;
  }

  v112 = 16;
  v113 = 1;
  v114 = 0;
  v110 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v103, "has_hls");
  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
  }

  else
  {
    v105 = v103;
  }

  v106 = 16;
  v107 = 1;
  v108 = 0;
  v104 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(v100, "audio_track_locale");
  std::string::basic_string[abi:ne200100]<0>(v98, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v102, v100, v98);
  std::string::basic_string[abi:ne200100]<0>(&v92, "show_sort_type");
  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v92;
  }

  v95 = 16;
  v96 = 1;
  v97 = 0;
  v93 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v86, "episode_type");
  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v86;
  }

  v89 = 16;
  v90 = 1;
  v91 = 0;
  v87 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v83, "episode_type_display_name");
  std::string::basic_string[abi:ne200100]<0>(v81, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v85, v83, v81);
  std::string::basic_string[abi:ne200100]<0>(&v75, "episode_sub_sort_order");
  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = v75;
  }

  v78 = 16;
  v79 = 1;
  v80 = 0;
  v76 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v65, "hls_offline_playback_keys");
  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = v65;
  }

  v68 = 0;
  v69 = 0;
  v70 = &unk_1F50DD860;
  v71 = 0;
  v73 = 0;
  v72 = 0;
  v74 = 0;
  v66 = &unk_1F50D7B40;
  std::string::basic_string[abi:ne200100]<0>(&v59, "is_premium");
  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = v59;
  }

  v62 = 16;
  v63 = 1;
  v64 = 0;
  v60 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v53, "color_capability");
  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = v53;
  }

  v56 = 16;
  v57 = 1;
  v58 = 0;
  v54 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v47, "hls_color_capability");
  v48 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v49 = v47;
  }

  v50 = 16;
  v51 = 1;
  v52 = 0;
  v48 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v41, "hls_video_quality");
  v42 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = v41;
  }

  v44 = 16;
  v45 = 1;
  v46 = 0;
  v42 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(v38, "hls_playlist_url");
  std::string::basic_string[abi:ne200100]<0>(v36, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v40, v38, v36);
  std::string::basic_string[abi:ne200100]<0>(&v30, "audio_capability");
  v31 = &unk_1F50D86E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = v30;
  }

  v33 = 16;
  v34 = 1;
  v35 = 0;
  v31 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v24, "hls_audio_capability");
  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v24;
  }

  v27 = 16;
  v28 = 1;
  v29 = 0;
  v25 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v18, "hls_asset_traits");
  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v18;
  }

  v21 = 16;
  v22 = 1;
  v23 = 0;
  v19 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v15, "hls_key_server_url");
  std::string::basic_string[abi:ne200100]<0>(v13, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v17, v15, v13);
  std::string::basic_string[abi:ne200100]<0>(v10, "hls_key_cert_url");
  std::string::basic_string[abi:ne200100]<0>(v8, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v12, v10, v8);
  std::string::basic_string[abi:ne200100]<0>(v5, "hls_key_server_protocol");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v7, v5, __p);
  mlcore::MediaTable<long long,int,int,int,int,std::string,std::string,std::string,std::string,int,int,int,int,long long,int,int,int,int,int,int,int,int,std::string,long long,long long,std::string,long long,mediaplatform::Data,int,int,int,int,std::string,int,long long,long long,std::string,std::string,std::string>::MediaTable(this, v231, &v226, &v220, &v214, &v208, &v202, v200, v195, v190, v185, &v176, &v170, &v164, &v158, &v152, &v146, &v140, &v134, &v128, &v122, &v116, &v110, &v104, v102, &v93, &v87, v85, &v76, &v66, &v60, &v54, &v48, &v42, v40, &v31, &v25, &v19, v17, v12, v7);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v12);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v17);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v31 = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v40);
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  v42 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v48 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v66);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v85);
  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (v84 < 0)
  {
    operator delete(v83[0]);
  }

  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v102);
  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  if (v101 < 0)
  {
    operator delete(v100[0]);
  }

  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  v164 = &unk_1F50D86E0;
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v165.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v171.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v185);
  if (v182 < 0)
  {
    operator delete(v181[0]);
  }

  if (v184 < 0)
  {
    operator delete(v183[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v190);
  if (v187 < 0)
  {
    operator delete(v186[0]);
  }

  if (v189 < 0)
  {
    operator delete(v188[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v195);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v194 < 0)
  {
    operator delete(v193[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v200);
  if (v197 < 0)
  {
    operator delete(v196[0]);
  }

  if (v199 < 0)
  {
    operator delete(v198[0]);
  }

  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  v208 = &unk_1F50D86E0;
  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v209.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v207.__r_.__value_.__l.__data_);
  }

  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  if (v232 < 0)
  {
    operator delete(v231[0]);
  }

  *this = &unk_1F50D6FD0;
  return this;
}

void sub_1D5913B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, unint64_t a42, unint64_t a43, unint64_t a44, unint64_t a45, unint64_t a46, unint64_t a47, unint64_t a48, unint64_t a49, unint64_t a50, unint64_t a51, unint64_t a52, unint64_t a53, unint64_t a54, unint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58, unint64_t a59, uint64_t a60, uint64_t a61)
{
  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  STACK[0x358] = v67;
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  STACK[0x3A0] = v66;
  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x400]);
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  STACK[0x458] = v65;
  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  STACK[0x4A0] = v64;
  if (SLOBYTE(STACK[0x4BF]) < 0)
  {
    operator delete(STACK[0x4A8]);
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  STACK[0x4E8] = v63;
  if (SLOBYTE(STACK[0x507]) < 0)
  {
    operator delete(STACK[0x4F0]);
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  STACK[0x530] = v62;
  if (SLOBYTE(STACK[0x54F]) < 0)
  {
    operator delete(STACK[0x538]);
  }

  if (SLOBYTE(STACK[0x52F]) < 0)
  {
    operator delete(STACK[0x518]);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&STACK[0x578]);
  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(STACK[0x560]);
  }

  STACK[0x5E0] = v61;
  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x5DF]) < 0)
  {
    operator delete(STACK[0x5C8]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x640]);
  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(STACK[0x610]);
  }

  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(STACK[0x628]);
  }

  STACK[0x698] = a42;
  if (SLOBYTE(STACK[0x6B7]) < 0)
  {
    operator delete(STACK[0x6A0]);
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(STACK[0x680]);
  }

  STACK[0x6E0] = a43;
  if (SLOBYTE(STACK[0x6FF]) < 0)
  {
    operator delete(STACK[0x6E8]);
  }

  if (SLOBYTE(STACK[0x6DF]) < 0)
  {
    operator delete(STACK[0x6C8]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x740]);
  if (SLOBYTE(STACK[0x727]) < 0)
  {
    operator delete(STACK[0x710]);
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(STACK[0x728]);
  }

  STACK[0x798] = a44;
  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(STACK[0x7A0]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  STACK[0x7E0] = a45;
  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(STACK[0x7E8]);
  }

  if (SLOBYTE(STACK[0x7DF]) < 0)
  {
    operator delete(STACK[0x7C8]);
  }

  STACK[0x828] = a46;
  if (SLOBYTE(STACK[0x847]) < 0)
  {
    operator delete(STACK[0x830]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  STACK[0x870] = a47;
  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(STACK[0x878]);
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(STACK[0x858]);
  }

  STACK[0x8B8] = a48;
  if (SLOBYTE(STACK[0x8D7]) < 0)
  {
    operator delete(STACK[0x8C0]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  STACK[0x900] = a49;
  if (SLOBYTE(STACK[0x91F]) < 0)
  {
    operator delete(STACK[0x908]);
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(STACK[0x8E8]);
  }

  STACK[0x948] = a50;
  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(STACK[0x950]);
  }

  if (SLOBYTE(STACK[0x947]) < 0)
  {
    operator delete(STACK[0x930]);
  }

  STACK[0x990] = a51;
  if (SLOBYTE(STACK[0x9AF]) < 0)
  {
    operator delete(STACK[0x998]);
  }

  if (SLOBYTE(STACK[0x98F]) < 0)
  {
    operator delete(STACK[0x978]);
  }

  STACK[0x9D8] = a52;
  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(STACK[0x9E0]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  STACK[0xA20] = a53;
  if (SLOBYTE(STACK[0xA3F]) < 0)
  {
    operator delete(STACK[0xA28]);
  }

  if (SLOBYTE(STACK[0xA1F]) < 0)
  {
    operator delete(STACK[0xA08]);
  }

  STACK[0xA68] = a54;
  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(STACK[0xA70]);
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  STACK[0xAB0] = a55;
  if (SLOBYTE(STACK[0xACF]) < 0)
  {
    operator delete(STACK[0xAB8]);
  }

  if (SLOBYTE(STACK[0xAAF]) < 0)
  {
    operator delete(STACK[0xA98]);
  }

  STACK[0xAF8] = a56;
  if (SLOBYTE(STACK[0xB17]) < 0)
  {
    operator delete(STACK[0xB00]);
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(STACK[0xAE0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xB58]);
  if (SLOBYTE(STACK[0xB3F]) < 0)
  {
    operator delete(STACK[0xB28]);
  }

  if (SLOBYTE(STACK[0xB57]) < 0)
  {
    operator delete(STACK[0xB40]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xBC8]);
  if (SLOBYTE(STACK[0xBAF]) < 0)
  {
    operator delete(STACK[0xB98]);
  }

  if (SLOBYTE(STACK[0xBC7]) < 0)
  {
    operator delete(STACK[0xBB0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xC38]);
  if (SLOBYTE(STACK[0xC1F]) < 0)
  {
    operator delete(STACK[0xC08]);
  }

  if (SLOBYTE(STACK[0xC37]) < 0)
  {
    operator delete(STACK[0xC20]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0xCA8]);
  if (SLOBYTE(STACK[0xC8F]) < 0)
  {
    operator delete(STACK[0xC78]);
  }

  if (SLOBYTE(STACK[0xCA7]) < 0)
  {
    operator delete(STACK[0xC90]);
  }

  STACK[0xD00] = a57;
  if (SLOBYTE(STACK[0xD1F]) < 0)
  {
    operator delete(STACK[0xD08]);
  }

  if (SLOBYTE(STACK[0xCFF]) < 0)
  {
    operator delete(STACK[0xCE8]);
  }

  STACK[0xD48] = a58;
  if (SLOBYTE(STACK[0xD67]) < 0)
  {
    operator delete(STACK[0xD50]);
  }

  if (SLOBYTE(STACK[0xD47]) < 0)
  {
    operator delete(STACK[0xD30]);
  }

  STACK[0xD90] = a59;
  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(STACK[0xD98]);
  }

  if (SLOBYTE(STACK[0xD8F]) < 0)
  {
    operator delete(STACK[0xD78]);
  }

  *(v68 - 232) = a60;
  if (*(v68 - 201) < 0)
  {
    operator delete(*(v68 - 224));
  }

  if (*(v68 - 233) < 0)
  {
    operator delete(*(v68 - 256));
  }

  *(v68 - 160) = a61;
  if (*(v68 - 129) < 0)
  {
    operator delete(*(v68 - 152));
  }

  if (*(v68 - 161) < 0)
  {
    operator delete(*(v68 - 184));
  }

  if (*(v68 - 89) < 0)
  {
    operator delete(*(v68 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t mlcore::MediaTable<long long,int,int,int,int,std::string,std::string,std::string,std::string,int,int,int,int,long long,int,int,int,int,int,int,int,int,std::string,long long,long long,std::string,long long,mediaplatform::Data,int,int,int,int,std::string,int,long long,long long,std::string,std::string,std::string>::MediaTable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v41 = MEMORY[0x1EEE9AC00](a1);
  v44 = v43;
  v160 = v45;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v42;
  v159 = v53;
  v54 = v41;
  v332 = &unk_1F50D86E0;
  if (*(v42 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(v42 + 8), *(v42 + 16));
  }

  else
  {
    __s = *(v42 + 8);
  }

  v55 = *(v52 + 36);
  v334 = *(v52 + 32);
  v332 = &unk_1F50D8958;
  v335 = v55;
  v336 = *(v52 + 44);
  v328 = &unk_1F50D86E0;
  if (*(v51 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v329, *(v51 + 8), *(v51 + 16));
  }

  else
  {
    v329 = *(v51 + 8);
  }

  v330 = *(v51 + 32);
  v328 = &unk_1F50D8978;
  v331 = *(v51 + 36);
  v324 = &unk_1F50D86E0;
  if (*(v49 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v325, *(v49 + 8), *(v49 + 16));
  }

  else
  {
    v325 = *(v49 + 8);
  }

  v326 = *(v49 + 32);
  v324 = &unk_1F50D8978;
  v327 = *(v49 + 36);
  v320 = &unk_1F50D86E0;
  if (*(v47 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v321, *(v47 + 8), *(v47 + 16));
  }

  else
  {
    v321 = *(v47 + 8);
  }

  v322 = *(v47 + 32);
  v320 = &unk_1F50D8978;
  v323 = *(v47 + 36);
  v316 = &unk_1F50D86E0;
  if (*(v160 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, *(v160 + 8), *(v160 + 16));
  }

  else
  {
    v317 = *(v160 + 8);
  }

  v318 = *(v160 + 32);
  v316 = &unk_1F50D8978;
  v319 = *(v160 + 36);
  v311 = &unk_1F50D86E0;
  if (*(v44 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v312, *(v44 + 8), *(v44 + 16));
  }

  else
  {
    v312 = *(v44 + 8);
  }

  v313 = *(v44 + 32);
  v311 = &unk_1F50D89B8;
  v314 = *(v44 + 36);
  if (*(v44 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v315, *(v44 + 40), *(v44 + 48));
  }

  else
  {
    v315 = *(v44 + 40);
  }

  v306 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v307, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v307 = *(a9 + 8);
  }

  v308 = *(a9 + 32);
  v306 = &unk_1F50D89B8;
  v309 = *(a9 + 36);
  if (*(a9 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, *(a9 + 40), *(a9 + 48));
  }

  else
  {
    v310 = *(a9 + 40);
  }

  v301 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v302, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v302 = *(a10 + 8);
  }

  v303 = *(a10 + 32);
  v301 = &unk_1F50D89B8;
  v304 = *(a10 + 36);
  if (*(a10 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v305, *(a10 + 40), *(a10 + 48));
  }

  else
  {
    v305 = *(a10 + 40);
  }

  v296 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v297, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v297 = *(a11 + 8);
  }

  v298 = *(a11 + 32);
  v296 = &unk_1F50D89B8;
  v299 = *(a11 + 36);
  if (*(a11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v300, *(a11 + 40), *(a11 + 48));
  }

  else
  {
    v300 = *(a11 + 40);
  }

  v292 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v293, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v293 = *(a12 + 8);
  }

  v294 = *(a12 + 32);
  v292 = &unk_1F50D8978;
  v295 = *(a12 + 36);
  v288 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v289, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v289 = *(a13 + 8);
  }

  v290 = *(a13 + 32);
  v288 = &unk_1F50D8978;
  v291 = *(a13 + 36);
  v284 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v285, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v285 = *(a14 + 8);
  }

  v286 = *(a14 + 32);
  v284 = &unk_1F50D8978;
  v287 = *(a14 + 36);
  v280 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v281, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v281 = *(a15 + 8);
  }

  v56 = a16;
  v282 = *(a15 + 32);
  v280 = &unk_1F50D8978;
  v283 = *(a15 + 36);
  v275 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v276, *(a16 + 8), *(a16 + 16));
    v56 = a16;
  }

  else
  {
    v276 = *(a16 + 8);
  }

  v58 = (v56 + 36);
  v57 = *(v56 + 36);
  v277 = *(v56 + 32);
  v275 = &unk_1F50D8958;
  v278 = v57;
  v279 = *(v56 + 44);
  v271 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v272, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v272 = *(a17 + 8);
  }

  v273 = *(a17 + 32);
  v271 = &unk_1F50D8978;
  v274 = *(a17 + 36);
  v267 = &unk_1F50D86E0;
  v158 = v58;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v268, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v268 = *(a18 + 8);
  }

  v269 = *(a18 + 32);
  v267 = &unk_1F50D8978;
  v270 = *(a18 + 36);
  v263 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v264, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v264 = *(a19 + 8);
  }

  v265 = *(a19 + 32);
  v263 = &unk_1F50D8978;
  v266 = *(a19 + 36);
  v259 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v260, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v260 = *(a20 + 8);
  }

  v261 = *(a20 + 32);
  v259 = &unk_1F50D8978;
  v262 = *(a20 + 36);
  v255 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v256, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v256 = *(a21 + 8);
  }

  v257 = *(a21 + 32);
  v255 = &unk_1F50D8978;
  v258 = *(a21 + 36);
  v251 = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v252, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v252 = *(a22 + 8);
  }

  v253 = *(a22 + 32);
  v251 = &unk_1F50D8978;
  v254 = *(a22 + 36);
  v247 = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v248, *(a23 + 8), *(a23 + 16));
  }

  else
  {
    v248 = *(a23 + 8);
  }

  v249 = *(a23 + 32);
  v247 = &unk_1F50D8978;
  v250 = *(a23 + 36);
  v243 = &unk_1F50D86E0;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, *(a24 + 8), *(a24 + 16));
  }

  else
  {
    v244 = *(a24 + 8);
  }

  v245 = *(a24 + 32);
  v243 = &unk_1F50D8978;
  v246 = *(a24 + 36);
  v238 = &unk_1F50D86E0;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, *(a25 + 8), *(a25 + 16));
  }

  else
  {
    v239 = *(a25 + 8);
  }

  v240 = *(a25 + 32);
  v238 = &unk_1F50D89B8;
  v241 = *(a25 + 36);
  if (*(a25 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v242, *(a25 + 40), *(a25 + 48));
  }

  else
  {
    v242 = *(a25 + 40);
  }

  v59 = a26;
  v233 = &unk_1F50D86E0;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v234, *(a26 + 8), *(a26 + 16));
    v59 = a26;
  }

  else
  {
    v234 = *(a26 + 8);
  }

  v61 = (v59 + 36);
  v60 = *(v59 + 36);
  v235 = *(v59 + 32);
  v233 = &unk_1F50D8958;
  v236 = v60;
  v237 = *(v59 + 44);
  v228 = &unk_1F50D86E0;
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v229, *(a27 + 8), *(a27 + 16));
  }

  else
  {
    v229 = *(a27 + 8);
  }

  v62 = a28;
  v63 = *(a27 + 36);
  v230 = *(a27 + 32);
  v228 = &unk_1F50D8958;
  v231 = v63;
  v232 = *(a27 + 44);
  v223 = &unk_1F50D86E0;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v224, *(a28 + 8), *(a28 + 16));
    v62 = a28;
  }

  else
  {
    v224 = *(a28 + 8);
  }

  v225 = *(v62 + 32);
  v223 = &unk_1F50D89B8;
  v226 = *(v62 + 36);
  if (*(v62 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, *(v62 + 40), *(v62 + 48));
  }

  else
  {
    v227 = *(v62 + 40);
  }

  v218 = &unk_1F50D86E0;
  if (*(a29 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, *(a29 + 8), *(a29 + 16));
  }

  else
  {
    v219 = *(a29 + 8);
  }

  v64 = *(a29 + 36);
  v220 = *(a29 + 32);
  v218 = &unk_1F50D8958;
  v221 = v64;
  v222 = *(a29 + 44);
  v211 = &unk_1F50D86E0;
  if (*(a30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v212, *(a30 + 8), *(a30 + 16));
  }

  else
  {
    v212 = *(a30 + 8);
  }

  v213 = *(a30 + 32);
  v211 = &unk_1F50D89D8;
  v214 = *(a30 + 36);
  mediaplatform::Data::Data(&v215, *(a30 + 64), *(a30 + 48), 1);
  v207 = &unk_1F50D86E0;
  if (*(a31 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, *(a31 + 8), *(a31 + 16));
  }

  else
  {
    v208 = *(a31 + 8);
  }

  v209 = *(a31 + 32);
  v207 = &unk_1F50D8978;
  v210 = *(a31 + 36);
  v203 = &unk_1F50D86E0;
  if (*(a32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v204, *(a32 + 8), *(a32 + 16));
  }

  else
  {
    v204 = *(a32 + 8);
  }

  v205 = *(a32 + 32);
  v203 = &unk_1F50D8978;
  v206 = *(a32 + 36);
  v199 = &unk_1F50D86E0;
  if (*(a33 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v200, *(a33 + 8), *(a33 + 16));
  }

  else
  {
    v200 = *(a33 + 8);
  }

  v201 = *(a33 + 32);
  v199 = &unk_1F50D8978;
  v202 = *(a33 + 36);
  v195 = &unk_1F50D86E0;
  if (*(a34 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v196, *(a34 + 8), *(a34 + 16));
  }

  else
  {
    v196 = *(a34 + 8);
  }

  v197 = *(a34 + 32);
  v195 = &unk_1F50D8978;
  v198 = *(a34 + 36);
  v190 = &unk_1F50D86E0;
  if (*(a35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v191, *(a35 + 8), *(a35 + 16));
  }

  else
  {
    v191 = *(a35 + 8);
  }

  v192 = *(a35 + 32);
  v190 = &unk_1F50D89B8;
  v193 = *(a35 + 36);
  if (*(a35 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, *(a35 + 40), *(a35 + 48));
  }

  else
  {
    v194 = *(a35 + 40);
  }

  v186 = &unk_1F50D86E0;
  if (*(a36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, *(a36 + 8), *(a36 + 16));
  }

  else
  {
    v187 = *(a36 + 8);
  }

  v188 = *(a36 + 32);
  v186 = &unk_1F50D8978;
  v189 = *(a36 + 36);
  v181 = &unk_1F50D86E0;
  if (*(a37 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, *(a37 + 8), *(a37 + 16));
  }

  else
  {
    v182 = *(a37 + 8);
  }

  v65 = *(a37 + 36);
  v183 = *(a37 + 32);
  v66 = a38;
  v181 = &unk_1F50D8958;
  v184 = v65;
  v185 = *(a37 + 44);
  v176 = &unk_1F50D86E0;
  if (*(a38 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, *(a38 + 8), *(a38 + 16));
    v66 = a38;
  }

  else
  {
    v177 = *(a38 + 8);
  }

  v68 = (v66 + 36);
  v67 = *(v66 + 36);
  v178 = *(v66 + 32);
  v176 = &unk_1F50D8958;
  v179 = v67;
  v180 = *(v66 + 44);
  v171 = &unk_1F50D86E0;
  if (*(a39 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, *(a39 + 8), *(a39 + 16));
  }

  else
  {
    v172 = *(a39 + 8);
  }

  v173 = *(a39 + 32);
  v171 = &unk_1F50D89B8;
  v174 = *(a39 + 36);
  if (*(a39 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v175, *(a39 + 40), *(a39 + 48));
  }

  else
  {
    v175 = *(a39 + 40);
  }

  v166 = &unk_1F50D86E0;
  if (*(a40 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, *(a40 + 8), *(a40 + 16));
  }

  else
  {
    v167 = *(a40 + 8);
  }

  v168 = *(a40 + 32);
  v166 = &unk_1F50D89B8;
  v169 = *(a40 + 36);
  if (*(a40 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v170, *(a40 + 40), *(a40 + 48));
  }

  else
  {
    v170 = *(a40 + 40);
  }

  v161 = &unk_1F50D86E0;
  if (*(a41 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, *(a41 + 8), *(a41 + 16));
  }

  else
  {
    v162 = *(a41 + 8);
  }

  v163 = *(a41 + 32);
  v161 = &unk_1F50D89B8;
  v164 = *(a41 + 36);
  if (*(a41 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v165, *(a41 + 40), *(a41 + 48));
  }

  else
  {
    v165 = *(a41 + 40);
  }

  mediaplatform::DatabaseTableBase::DatabaseTableBase(v54, v159);
  *v54 = &unk_1F50D8BF0;
  *(v54 + 56) = 0;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  v506 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v507, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v507 = __s;
  }

  v508 = v334;
  v506 = &unk_1F50D8958;
  v509 = v335;
  v510 = v336;
  v502 = &unk_1F50D86E0;
  if (SHIBYTE(v329.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v503, v329.__r_.__value_.__l.__data_, v329.__r_.__value_.__l.__size_);
  }

  else
  {
    v503 = v329;
  }

  v504 = v330;
  v502 = &unk_1F50D8978;
  v505 = v331;
  v498 = &unk_1F50D86E0;
  if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v499, v325.__r_.__value_.__l.__data_, v325.__r_.__value_.__l.__size_);
  }

  else
  {
    v499 = v325;
  }

  v500 = v326;
  v498 = &unk_1F50D8978;
  v501 = v327;
  v494 = &unk_1F50D86E0;
  if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v495, v321.__r_.__value_.__l.__data_, v321.__r_.__value_.__l.__size_);
  }

  else
  {
    v495 = v321;
  }

  v496 = v322;
  v494 = &unk_1F50D8978;
  v497 = v323;
  v490 = &unk_1F50D86E0;
  if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v491, v317.__r_.__value_.__l.__data_, v317.__r_.__value_.__l.__size_);
  }

  else
  {
    v491 = v317;
  }

  v492 = v318;
  v490 = &unk_1F50D8978;
  v493 = v319;
  v485 = &unk_1F50D86E0;
  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v486, v312.__r_.__value_.__l.__data_, v312.__r_.__value_.__l.__size_);
  }

  else
  {
    v486 = v312;
  }

  v487 = v313;
  v485 = &unk_1F50D89B8;
  v488 = v314;
  if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v489, v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
  }

  else
  {
    v489 = v315;
  }

  v480 = &unk_1F50D86E0;
  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v481, v307.__r_.__value_.__l.__data_, v307.__r_.__value_.__l.__size_);
  }

  else
  {
    v481 = v307;
  }

  v482 = v308;
  v480 = &unk_1F50D89B8;
  v483 = v309;
  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v484, v310.__r_.__value_.__l.__data_, v310.__r_.__value_.__l.__size_);
  }

  else
  {
    v484 = v310;
  }

  v475 = &unk_1F50D86E0;
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v476, v302.__r_.__value_.__l.__data_, v302.__r_.__value_.__l.__size_);
  }

  else
  {
    v476 = v302;
  }

  v477 = v303;
  v475 = &unk_1F50D89B8;
  v478 = v304;
  if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v479, v305.__r_.__value_.__l.__data_, v305.__r_.__value_.__l.__size_);
  }

  else
  {
    v479 = v305;
  }

  v470 = &unk_1F50D86E0;
  if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v471, v297.__r_.__value_.__l.__data_, v297.__r_.__value_.__l.__size_);
  }

  else
  {
    v471 = v297;
  }

  v472 = v298;
  v470 = &unk_1F50D89B8;
  v473 = v299;
  if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v474, v300.__r_.__value_.__l.__data_, v300.__r_.__value_.__l.__size_);
  }

  else
  {
    v474 = v300;
  }

  v466 = &unk_1F50D86E0;
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v467, v293.__r_.__value_.__l.__data_, v293.__r_.__value_.__l.__size_);
  }

  else
  {
    v467 = v293;
  }

  v468 = v294;
  v466 = &unk_1F50D8978;
  v469 = v295;
  v462 = &unk_1F50D86E0;
  if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v463, v289.__r_.__value_.__l.__data_, v289.__r_.__value_.__l.__size_);
  }

  else
  {
    v463 = v289;
  }

  v464 = v290;
  v462 = &unk_1F50D8978;
  v465 = v291;
  v458 = &unk_1F50D86E0;
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v459, v285.__r_.__value_.__l.__data_, v285.__r_.__value_.__l.__size_);
  }

  else
  {
    v459 = v285;
  }

  v460 = v286;
  v458 = &unk_1F50D8978;
  v461 = v287;
  v454 = &unk_1F50D86E0;
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v455, v281.__r_.__value_.__l.__data_, v281.__r_.__value_.__l.__size_);
  }

  else
  {
    v455 = v281;
  }

  v456 = v282;
  v454 = &unk_1F50D8978;
  v457 = v283;
  v449 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v450, v276.__r_.__value_.__l.__data_, v276.__r_.__value_.__l.__size_);
  }

  else
  {
    v450 = v276;
  }

  v451 = v277;
  v449 = &unk_1F50D8958;
  v452 = v278;
  v453 = v279;
  v445 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v446, v272.__r_.__value_.__l.__data_, v272.__r_.__value_.__l.__size_);
  }

  else
  {
    v446 = v272;
  }

  v447 = v273;
  v445 = &unk_1F50D8978;
  v448 = v274;
  v441 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v442, v268.__r_.__value_.__l.__data_, v268.__r_.__value_.__l.__size_);
  }

  else
  {
    v442 = v268;
  }

  v443 = v269;
  v441 = &unk_1F50D8978;
  v444 = v270;
  v437 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v438, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
  }

  else
  {
    v438 = v264;
  }

  v439 = v265;
  v437 = &unk_1F50D8978;
  v440 = v266;
  v433 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v434, v260.__r_.__value_.__l.__data_, v260.__r_.__value_.__l.__size_);
  }

  else
  {
    v434 = v260;
  }

  v435 = v261;
  v433 = &unk_1F50D8978;
  v436 = v262;
  v429 = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v430, v256.__r_.__value_.__l.__data_, v256.__r_.__value_.__l.__size_);
  }

  else
  {
    v430 = v256;
  }

  v431 = v257;
  v429 = &unk_1F50D8978;
  v432 = v258;
  v425 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v426, v252.__r_.__value_.__l.__data_, v252.__r_.__value_.__l.__size_);
  }

  else
  {
    v426 = v252;
  }

  v427 = v253;
  v425 = &unk_1F50D8978;
  v428 = v254;
  v421 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v422, v248.__r_.__value_.__l.__data_, v248.__r_.__value_.__l.__size_);
  }

  else
  {
    v422 = v248;
  }

  v423 = v249;
  v421 = &unk_1F50D8978;
  v424 = v250;
  v417 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v418, v244.__r_.__value_.__l.__data_, v244.__r_.__value_.__l.__size_);
  }

  else
  {
    v418 = v244;
  }

  v419 = v245;
  v417 = &unk_1F50D8978;
  v420 = v246;
  v412 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v413, v239.__r_.__value_.__l.__data_, v239.__r_.__value_.__l.__size_);
  }

  else
  {
    v413 = v239;
  }

  v414 = v240;
  v412 = &unk_1F50D89B8;
  v415 = v241;
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v416, v242.__r_.__value_.__l.__data_, v242.__r_.__value_.__l.__size_);
  }

  else
  {
    v416 = v242;
  }

  v407 = &unk_1F50D86E0;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v408, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_);
  }

  else
  {
    v408 = v234;
  }

  v409 = v235;
  v407 = &unk_1F50D8958;
  v410 = v236;
  v411 = v237;
  v402 = &unk_1F50D86E0;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v403, v229.__r_.__value_.__l.__data_, v229.__r_.__value_.__l.__size_);
  }

  else
  {
    v403 = v229;
  }

  v404 = v230;
  v402 = &unk_1F50D8958;
  v405 = v231;
  v406 = v232;
  v397 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v398, v224.__r_.__value_.__l.__data_, v224.__r_.__value_.__l.__size_);
  }

  else
  {
    v398 = v224;
  }

  v399 = v225;
  v397 = &unk_1F50D89B8;
  v400 = v226;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v401, v227.__r_.__value_.__l.__data_, v227.__r_.__value_.__l.__size_);
  }

  else
  {
    v401 = v227;
  }

  v392 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v393, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    v393 = v219;
  }

  v394 = v220;
  v392 = &unk_1F50D8958;
  v395 = v221;
  v396 = v222;
  v387 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v388, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
  }

  else
  {
    v388 = v212;
  }

  v389 = v213;
  v387 = &unk_1F50D89D8;
  v390 = v214;
  mediaplatform::Data::Data(&v391, __src, __n, 1);
  v383 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v384, v208.__r_.__value_.__l.__data_, v208.__r_.__value_.__l.__size_);
  }

  else
  {
    v384 = v208;
  }

  v385 = v209;
  v383 = &unk_1F50D8978;
  v386 = v210;
  v379 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v380, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v380 = v204;
  }

  v381 = v205;
  v379 = &unk_1F50D8978;
  v382 = v206;
  v375 = &unk_1F50D86E0;
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v376, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
  }

  else
  {
    v376 = v200;
  }

  v377 = v201;
  v375 = &unk_1F50D8978;
  v378 = v202;
  v371 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v372, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    v372 = v196;
  }

  v373 = v197;
  v371 = &unk_1F50D8978;
  v374 = v198;
  v366 = &unk_1F50D86E0;
  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v367, v191.__r_.__value_.__l.__data_, v191.__r_.__value_.__l.__size_);
  }

  else
  {
    v367 = v191;
  }

  v368 = v192;
  v366 = &unk_1F50D89B8;
  v369 = v193;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v370, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v370 = v194;
  }

  v362 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v363, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    v363 = v187;
  }

  v364 = v188;
  v362 = &unk_1F50D8978;
  v365 = v189;
  v357 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v358, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v358 = v182;
  }

  v359 = v183;
  v357 = &unk_1F50D8958;
  v360 = v184;
  v361 = v185;
  v352 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v177;
  }

  v354 = v178;
  v352 = &unk_1F50D8958;
  v355 = v179;
  v356 = v180;
  v347 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v348, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v348 = v172;
  }

  v349 = v173;
  v347 = &unk_1F50D89B8;
  v350 = v174;
  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v351, v175.__r_.__value_.__l.__data_, v175.__r_.__value_.__l.__size_);
  }

  else
  {
    v351 = v175;
  }

  v342 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v343, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v343 = v167;
  }

  v344 = v168;
  v342 = &unk_1F50D89B8;
  v345 = v169;
  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v346, v170.__r_.__value_.__l.__data_, v170.__r_.__value_.__l.__size_);
  }

  else
  {
    v346 = v170;
  }

  v337 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v338, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v338 = v162;
  }

  v339 = v163;
  v337 = &unk_1F50D89B8;
  v340 = v164;
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v341, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
  }

  else
  {
    v341 = v165;
  }

  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>>::DatabaseColumnTuple(v54 + 80, &v506, &v502, &v498, &v494, &v490, &v485, &v480, &v475, &v470, &v466, &v462, &v458, &v454, &v449, &v445, &v441, &v437, &v433, &v429, &v425, &v421, &v417, &v412, &v407, &v402, &v397, &v392, &v387, &v383, &v379, &v375, &v371, &v366, &v362, &v357, &v352, &v347, &v342, &v337);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v337);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v342);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v347);
  v352 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v357 = &unk_1F50D86E0;
  if (SHIBYTE(v358.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v358.__r_.__value_.__l.__data_);
  }

  v362 = &unk_1F50D86E0;
  if (SHIBYTE(v363.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v363.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v366);
  v371 = &unk_1F50D86E0;
  if (SHIBYTE(v372.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v372.__r_.__value_.__l.__data_);
  }

  v375 = &unk_1F50D86E0;
  if (SHIBYTE(v376.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v376.__r_.__value_.__l.__data_);
  }

  v379 = &unk_1F50D86E0;
  if (SHIBYTE(v380.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v380.__r_.__value_.__l.__data_);
  }

  v383 = &unk_1F50D86E0;
  if (SHIBYTE(v384.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v384.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v387);
  v392 = &unk_1F50D86E0;
  if (SHIBYTE(v393.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v393.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v397);
  v402 = &unk_1F50D86E0;
  if (SHIBYTE(v403.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v403.__r_.__value_.__l.__data_);
  }

  v407 = &unk_1F50D86E0;
  if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v408.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v412);
  v417 = &unk_1F50D86E0;
  if (SHIBYTE(v418.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v418.__r_.__value_.__l.__data_);
  }

  v421 = &unk_1F50D86E0;
  if (SHIBYTE(v422.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v422.__r_.__value_.__l.__data_);
  }

  v425 = &unk_1F50D86E0;
  if (SHIBYTE(v426.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v426.__r_.__value_.__l.__data_);
  }

  v429 = &unk_1F50D86E0;
  if (SHIBYTE(v430.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v430.__r_.__value_.__l.__data_);
  }

  v433 = &unk_1F50D86E0;
  if (SHIBYTE(v434.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v434.__r_.__value_.__l.__data_);
  }

  v437 = &unk_1F50D86E0;
  if (SHIBYTE(v438.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v438.__r_.__value_.__l.__data_);
  }

  v441 = &unk_1F50D86E0;
  if (SHIBYTE(v442.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v442.__r_.__value_.__l.__data_);
  }

  v445 = &unk_1F50D86E0;
  if (SHIBYTE(v446.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v446.__r_.__value_.__l.__data_);
  }

  v449 = &unk_1F50D86E0;
  if (SHIBYTE(v450.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v450.__r_.__value_.__l.__data_);
  }

  v454 = &unk_1F50D86E0;
  if (SHIBYTE(v455.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v455.__r_.__value_.__l.__data_);
  }

  v458 = &unk_1F50D86E0;
  if (SHIBYTE(v459.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v459.__r_.__value_.__l.__data_);
  }

  v462 = &unk_1F50D86E0;
  if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v463.__r_.__value_.__l.__data_);
  }

  v466 = &unk_1F50D86E0;
  if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v467.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v470);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v475);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v480);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v485);
  v490 = &unk_1F50D86E0;
  if (SHIBYTE(v491.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v491.__r_.__value_.__l.__data_);
  }

  v494 = &unk_1F50D86E0;
  if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v495.__r_.__value_.__l.__data_);
  }

  v498 = &unk_1F50D86E0;
  if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v499.__r_.__value_.__l.__data_);
  }

  v502 = &unk_1F50D86E0;
  if (SHIBYTE(v503.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v503.__r_.__value_.__l.__data_);
  }

  v506 = &unk_1F50D86E0;
  if (SHIBYTE(v507.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v507.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v161);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v166);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v171);
  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  v186 = &unk_1F50D86E0;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v190);
  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  v199 = &unk_1F50D86E0;
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v211);
  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v223);
  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229.__r_.__value_.__l.__data_);
  }

  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v238);
  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v256.__r_.__value_.__l.__data_);
  }

  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v276.__r_.__value_.__l.__data_);
  }

  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v285.__r_.__value_.__l.__data_);
  }

  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v289.__r_.__value_.__l.__data_);
  }

  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v293.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v296);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v301);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v306);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v311);
  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v317.__r_.__value_.__l.__data_);
  }

  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v321.__r_.__value_.__l.__data_);
  }

  v324 = &unk_1F50D86E0;
  if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v325.__r_.__value_.__l.__data_);
  }

  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v329.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v329.__r_.__value_.__l.__data_);
  }

  v332 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  *v54 = &unk_1F50D81A0;
  *(v54 + 2144) = &unk_1F50D86E0;
  if (*(v52 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 2152), *(v52 + 8), *(v52 + 16));
  }

  else
  {
    v69 = *(v52 + 8);
    *(v54 + 2168) = *(v52 + 24);
    *(v54 + 2152) = v69;
  }

  *(v54 + 2176) = *(v52 + 32);
  *(v54 + 2144) = &unk_1F50D8958;
  v70 = *(v52 + 36);
  *(v54 + 2188) = *(v52 + 44);
  *(v54 + 2180) = v70;
  *(v54 + 2144) = &unk_1F50D7AC0;
  *(v54 + 2192) = &unk_1F50D86E0;
  if (*(v51 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 2200), *(v51 + 8), *(v51 + 16));
  }

  else
  {
    v71 = *(v51 + 8);
    *(v54 + 2216) = *(v51 + 24);
    *(v54 + 2200) = v71;
  }

  *(v54 + 2224) = *(v51 + 32);
  *(v54 + 2192) = &unk_1F50D8978;
  *(v54 + 2228) = *(v51 + 36);
  *(v54 + 2192) = &unk_1F50D7AE0;
  *(v54 + 2240) = &unk_1F50D86E0;
  v72 = (v54 + 2248);
  if (*(v49 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v72, *(v49 + 8), *(v49 + 16));
  }

  else
  {
    v73 = *(v49 + 8);
    *(v54 + 2264) = *(v49 + 24);
    *&v72->__r_.__value_.__l.__data_ = v73;
  }

  *(v54 + 2272) = *(v49 + 32);
  *(v54 + 2240) = &unk_1F50D8978;
  *(v54 + 2276) = *(v49 + 36);
  *(v54 + 2240) = &unk_1F50D7AE0;
  *(v54 + 2288) = &unk_1F50D86E0;
  v74 = (v54 + 2296);
  if (*(v47 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v74, *(v47 + 8), *(v47 + 16));
  }

  else
  {
    v75 = *(v47 + 8);
    *(v54 + 2312) = *(v47 + 24);
    *&v74->__r_.__value_.__l.__data_ = v75;
  }

  *(v54 + 2320) = *(v47 + 32);
  *(v54 + 2288) = &unk_1F50D8978;
  *(v54 + 2324) = *(v47 + 36);
  *(v54 + 2288) = &unk_1F50D7AE0;
  *(v54 + 2336) = &unk_1F50D86E0;
  v76 = (v54 + 2344);
  if (*(v160 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v76, *(v160 + 8), *(v160 + 16));
  }

  else
  {
    v77 = *(v160 + 8);
    *(v54 + 2360) = *(v160 + 24);
    *&v76->__r_.__value_.__l.__data_ = v77;
  }

  *(v54 + 2368) = *(v160 + 32);
  *(v54 + 2336) = &unk_1F50D8978;
  *(v54 + 2372) = *(v160 + 36);
  *(v54 + 2336) = &unk_1F50D7AE0;
  *(v54 + 2384) = &unk_1F50D86E0;
  if (*(v44 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 2392), *(v44 + 8), *(v44 + 16));
  }

  else
  {
    v78 = *(v44 + 8);
    *(v54 + 2408) = *(v44 + 24);
    *(v54 + 2392) = v78;
  }

  *(v54 + 2416) = *(v44 + 32);
  *(v54 + 2384) = &unk_1F50D89B8;
  *(v54 + 2420) = *(v44 + 36);
  v79 = (v54 + 2424);
  if (*(v44 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v79, *(v44 + 40), *(v44 + 48));
  }

  else
  {
    v80 = *(v44 + 40);
    *(v54 + 2440) = *(v44 + 56);
    *&v79->__r_.__value_.__l.__data_ = v80;
  }

  *(v54 + 2384) = &unk_1F50D7B20;
  *(v54 + 2448) = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 2456), *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v81 = *(a9 + 8);
    *(v54 + 2472) = *(a9 + 24);
    *(v54 + 2456) = v81;
  }

  *(v54 + 2480) = *(a9 + 32);
  *(v54 + 2448) = &unk_1F50D89B8;
  *(v54 + 2484) = *(a9 + 36);
  v82 = (v54 + 2488);
  if (*(a9 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v82, *(a9 + 40), *(a9 + 48));
  }

  else
  {
    v83 = *(a9 + 40);
    *(v54 + 2504) = *(a9 + 56);
    *&v82->__r_.__value_.__l.__data_ = v83;
  }

  *(v54 + 2448) = &unk_1F50D7B20;
  *(v54 + 2512) = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 2520), *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v84 = *(a10 + 8);
    *(v54 + 2536) = *(a10 + 24);
    *(v54 + 2520) = v84;
  }

  *(v54 + 2544) = *(a10 + 32);
  *(v54 + 2512) = &unk_1F50D89B8;
  *(v54 + 2548) = *(a10 + 36);
  v85 = (v54 + 2552);
  if (*(a10 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v85, *(a10 + 40), *(a10 + 48));
  }

  else
  {
    v86 = *(a10 + 40);
    *(v54 + 2568) = *(a10 + 56);
    *&v85->__r_.__value_.__l.__data_ = v86;
  }

  *(v54 + 2512) = &unk_1F50D7B20;
  *(v54 + 2576) = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 2584), *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v87 = *(a11 + 8);
    *(v54 + 2600) = *(a11 + 24);
    *(v54 + 2584) = v87;
  }

  *(v54 + 2608) = *(a11 + 32);
  *(v54 + 2576) = &unk_1F50D89B8;
  *(v54 + 2612) = *(a11 + 36);
  v88 = (v54 + 2616);
  if (*(a11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v88, *(a11 + 40), *(a11 + 48));
  }

  else
  {
    v89 = *(a11 + 40);
    *(v54 + 2632) = *(a11 + 56);
    *&v88->__r_.__value_.__l.__data_ = v89;
  }

  *(v54 + 2576) = &unk_1F50D7B20;
  *(v54 + 2640) = &unk_1F50D86E0;
  v90 = (v54 + 2648);
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v90, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v91 = *(a12 + 8);
    *(v54 + 2664) = *(a12 + 24);
    *&v90->__r_.__value_.__l.__data_ = v91;
  }

  *(v54 + 2672) = *(a12 + 32);
  *(v54 + 2640) = &unk_1F50D8978;
  *(v54 + 2676) = *(a12 + 36);
  *(v54 + 2640) = &unk_1F50D7AE0;
  *(v54 + 2688) = &unk_1F50D86E0;
  v92 = (v54 + 2696);
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v92, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v93 = *(a13 + 8);
    *(v54 + 2712) = *(a13 + 24);
    *&v92->__r_.__value_.__l.__data_ = v93;
  }

  *(v54 + 2720) = *(a13 + 32);
  *(v54 + 2688) = &unk_1F50D8978;
  *(v54 + 2724) = *(a13 + 36);
  *(v54 + 2688) = &unk_1F50D7AE0;
  *(v54 + 2736) = &unk_1F50D86E0;
  v94 = (v54 + 2744);
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v94, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v95 = *(a14 + 8);
    *(v54 + 2760) = *(a14 + 24);
    *&v94->__r_.__value_.__l.__data_ = v95;
  }

  *(v54 + 2768) = *(a14 + 32);
  *(v54 + 2736) = &unk_1F50D8978;
  *(v54 + 2772) = *(a14 + 36);
  *(v54 + 2736) = &unk_1F50D7AE0;
  *(v54 + 2784) = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 2792), *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v96 = *(a15 + 8);
    *(v54 + 2808) = *(a15 + 24);
    *(v54 + 2792) = v96;
  }

  *(v54 + 2816) = *(a15 + 32);
  *(v54 + 2784) = &unk_1F50D8978;
  *(v54 + 2820) = *(a15 + 36);
  *(v54 + 2784) = &unk_1F50D7AE0;
  *(v54 + 2832) = &unk_1F50D86E0;
  v97 = (v54 + 2840);
  v98 = a16;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v97, *(a16 + 8), *(a16 + 16));
    v98 = a16;
  }

  else
  {
    v99 = *(a16 + 8);
    *(v54 + 2856) = *(a16 + 24);
    *&v97->__r_.__value_.__l.__data_ = v99;
  }

  *(v54 + 2864) = *(v98 + 32);
  *(v54 + 2832) = &unk_1F50D8958;
  v100 = *v158;
  *(v54 + 2876) = *(v158 + 2);
  *(v54 + 2868) = v100;
  *(v54 + 2832) = &unk_1F50D7AC0;
  *(v54 + 2880) = &unk_1F50D86E0;
  v101 = (v54 + 2888);
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v101, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v102 = *(a17 + 8);
    *(v54 + 2904) = *(a17 + 24);
    *&v101->__r_.__value_.__l.__data_ = v102;
  }

  *(v54 + 2912) = *(a17 + 32);
  *(v54 + 2880) = &unk_1F50D8978;
  *(v54 + 2916) = *(a17 + 36);
  *(v54 + 2880) = &unk_1F50D7AE0;
  *(v54 + 2928) = &unk_1F50D86E0;
  v103 = (v54 + 2936);
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v103, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v104 = *(a18 + 8);
    *(v54 + 2952) = *(a18 + 24);
    *&v103->__r_.__value_.__l.__data_ = v104;
  }

  *(v54 + 2960) = *(a18 + 32);
  *(v54 + 2928) = &unk_1F50D8978;
  *(v54 + 2964) = *(a18 + 36);
  *(v54 + 2928) = &unk_1F50D7AE0;
  *(v54 + 2976) = &unk_1F50D86E0;
  v105 = (v54 + 2984);
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v105, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v106 = *(a19 + 8);
    *(v54 + 3000) = *(a19 + 24);
    *&v105->__r_.__value_.__l.__data_ = v106;
  }

  *(v54 + 3008) = *(a19 + 32);
  *(v54 + 2976) = &unk_1F50D8978;
  *(v54 + 3012) = *(a19 + 36);
  *(v54 + 2976) = &unk_1F50D7AE0;
  *(v54 + 3024) = &unk_1F50D86E0;
  v107 = (v54 + 3032);
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v107, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v108 = *(a20 + 8);
    *(v54 + 3048) = *(a20 + 24);
    *&v107->__r_.__value_.__l.__data_ = v108;
  }

  *(v54 + 3056) = *(a20 + 32);
  *(v54 + 3024) = &unk_1F50D8978;
  *(v54 + 3060) = *(a20 + 36);
  *(v54 + 3024) = &unk_1F50D7AE0;
  *(v54 + 3072) = &unk_1F50D86E0;
  v109 = (v54 + 3080);
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v109, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v110 = *(a21 + 8);
    *(v54 + 3096) = *(a21 + 24);
    *&v109->__r_.__value_.__l.__data_ = v110;
  }

  *(v54 + 3104) = *(a21 + 32);
  *(v54 + 3072) = &unk_1F50D8978;
  *(v54 + 3108) = *(a21 + 36);
  *(v54 + 3072) = &unk_1F50D7AE0;
  *(v54 + 3120) = &unk_1F50D86E0;
  v111 = (v54 + 3128);
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v111, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v112 = *(a22 + 8);
    *(v54 + 3144) = *(a22 + 24);
    *&v111->__r_.__value_.__l.__data_ = v112;
  }

  *(v54 + 3152) = *(a22 + 32);
  *(v54 + 3120) = &unk_1F50D8978;
  *(v54 + 3156) = *(a22 + 36);
  *(v54 + 3120) = &unk_1F50D7AE0;
  *(v54 + 3168) = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3176), *(a23 + 8), *(a23 + 16));
  }

  else
  {
    v113 = *(a23 + 8);
    *(v54 + 3192) = *(a23 + 24);
    *(v54 + 3176) = v113;
  }

  *(v54 + 3200) = *(a23 + 32);
  *(v54 + 3168) = &unk_1F50D8978;
  *(v54 + 3204) = *(a23 + 36);
  *(v54 + 3168) = &unk_1F50D7AE0;
  *(v54 + 3216) = &unk_1F50D86E0;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3224), *(a24 + 8), *(a24 + 16));
  }

  else
  {
    v114 = *(a24 + 8);
    *(v54 + 3240) = *(a24 + 24);
    *(v54 + 3224) = v114;
  }

  *(v54 + 3248) = *(a24 + 32);
  *(v54 + 3216) = &unk_1F50D8978;
  *(v54 + 3252) = *(a24 + 36);
  *(v54 + 3216) = &unk_1F50D7AE0;
  *(v54 + 3264) = &unk_1F50D86E0;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3272), *(a25 + 8), *(a25 + 16));
  }

  else
  {
    v115 = *(a25 + 8);
    *(v54 + 3288) = *(a25 + 24);
    *(v54 + 3272) = v115;
  }

  *(v54 + 3296) = *(a25 + 32);
  *(v54 + 3264) = &unk_1F50D89B8;
  *(v54 + 3300) = *(a25 + 36);
  v116 = (v54 + 3304);
  if (*(a25 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v116, *(a25 + 40), *(a25 + 48));
  }

  else
  {
    v117 = *(a25 + 40);
    *(v54 + 3320) = *(a25 + 56);
    *&v116->__r_.__value_.__l.__data_ = v117;
  }

  *(v54 + 3264) = &unk_1F50D7B20;
  *(v54 + 3328) = &unk_1F50D86E0;
  v118 = a26;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3336), *(a26 + 8), *(a26 + 16));
    v118 = a26;
  }

  else
  {
    v119 = *(a26 + 8);
    *(v54 + 3352) = *(a26 + 24);
    *(v54 + 3336) = v119;
  }

  *(v54 + 3360) = *(v118 + 32);
  *(v54 + 3328) = &unk_1F50D8958;
  v120 = *v61;
  *(v54 + 3372) = *(v61 + 2);
  *(v54 + 3364) = v120;
  *(v54 + 3328) = &unk_1F50D7AC0;
  *(v54 + 3376) = &unk_1F50D86E0;
  v121 = (v54 + 3384);
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v121, *(a27 + 8), *(a27 + 16));
  }

  else
  {
    v122 = *(a27 + 8);
    *(v54 + 3400) = *(a27 + 24);
    *&v121->__r_.__value_.__l.__data_ = v122;
  }

  *(v54 + 3408) = *(a27 + 32);
  *(v54 + 3376) = &unk_1F50D8958;
  v123 = *(a27 + 36);
  *(v54 + 3420) = *(a27 + 44);
  *(v54 + 3412) = v123;
  *(v54 + 3376) = &unk_1F50D7AC0;
  *(v54 + 3424) = &unk_1F50D86E0;
  v124 = a28;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3432), *(a28 + 8), *(a28 + 16));
    v124 = a28;
  }

  else
  {
    v125 = *(a28 + 8);
    *(v54 + 3448) = *(a28 + 24);
    *(v54 + 3432) = v125;
  }

  *(v54 + 3456) = *(v124 + 32);
  *(v54 + 3424) = &unk_1F50D89B8;
  *(v54 + 3460) = *(v124 + 36);
  v126 = (v54 + 3464);
  if (*(v124 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v126, *(v124 + 40), *(v124 + 48));
  }

  else
  {
    v127 = *(v124 + 40);
    *(v54 + 3480) = *(v124 + 56);
    *&v126->__r_.__value_.__l.__data_ = v127;
  }

  *(v54 + 3424) = &unk_1F50D7B20;
  *(v54 + 3488) = &unk_1F50D86E0;
  if (*(a29 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3496), *(a29 + 8), *(a29 + 16));
  }

  else
  {
    v128 = *(a29 + 8);
    *(v54 + 3512) = *(a29 + 24);
    *(v54 + 3496) = v128;
  }

  *(v54 + 3520) = *(a29 + 32);
  *(v54 + 3488) = &unk_1F50D8958;
  v129 = *(a29 + 36);
  *(v54 + 3532) = *(a29 + 44);
  *(v54 + 3524) = v129;
  *(v54 + 3488) = &unk_1F50D7AC0;
  *(v54 + 3536) = &unk_1F50D86E0;
  if (*(a30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3544), *(a30 + 8), *(a30 + 16));
  }

  else
  {
    v130 = *(a30 + 8);
    *(v54 + 3560) = *(a30 + 24);
    *(v54 + 3544) = v130;
  }

  *(v54 + 3568) = *(a30 + 32);
  *(v54 + 3536) = &unk_1F50D89D8;
  *(v54 + 3572) = *(a30 + 36);
  mediaplatform::Data::Data((v54 + 3576), *(a30 + 64), *(a30 + 48), 1);
  *(v54 + 3536) = &unk_1F50D7B40;
  *(v54 + 3616) = &unk_1F50D86E0;
  v131 = (v54 + 3624);
  if (*(a31 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v131, *(a31 + 8), *(a31 + 16));
  }

  else
  {
    v132 = *(a31 + 8);
    *(v54 + 3640) = *(a31 + 24);
    *&v131->__r_.__value_.__l.__data_ = v132;
  }

  *(v54 + 3648) = *(a31 + 32);
  *(v54 + 3616) = &unk_1F50D8978;
  *(v54 + 3652) = *(a31 + 36);
  *(v54 + 3616) = &unk_1F50D7AE0;
  *(v54 + 3664) = &unk_1F50D86E0;
  v133 = (v54 + 3672);
  if (*(a32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v133, *(a32 + 8), *(a32 + 16));
  }

  else
  {
    v134 = *(a32 + 8);
    *(v54 + 3688) = *(a32 + 24);
    *&v133->__r_.__value_.__l.__data_ = v134;
  }

  *(v54 + 3696) = *(a32 + 32);
  *(v54 + 3664) = &unk_1F50D8978;
  *(v54 + 3700) = *(a32 + 36);
  *(v54 + 3664) = &unk_1F50D7AE0;
  *(v54 + 3712) = &unk_1F50D86E0;
  v135 = (v54 + 3720);
  if (*(a33 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v135, *(a33 + 8), *(a33 + 16));
  }

  else
  {
    v136 = *(a33 + 8);
    *(v54 + 3736) = *(a33 + 24);
    *&v135->__r_.__value_.__l.__data_ = v136;
  }

  *(v54 + 3744) = *(a33 + 32);
  *(v54 + 3712) = &unk_1F50D8978;
  *(v54 + 3748) = *(a33 + 36);
  *(v54 + 3712) = &unk_1F50D7AE0;
  *(v54 + 3760) = &unk_1F50D86E0;
  v137 = (v54 + 3768);
  if (*(a34 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v137, *(a34 + 8), *(a34 + 16));
  }

  else
  {
    v138 = *(a34 + 8);
    *(v54 + 3784) = *(a34 + 24);
    *&v137->__r_.__value_.__l.__data_ = v138;
  }

  *(v54 + 3792) = *(a34 + 32);
  *(v54 + 3760) = &unk_1F50D8978;
  *(v54 + 3796) = *(a34 + 36);
  *(v54 + 3760) = &unk_1F50D7AE0;
  *(v54 + 3808) = &unk_1F50D86E0;
  if (*(a35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3816), *(a35 + 8), *(a35 + 16));
  }

  else
  {
    v139 = *(a35 + 8);
    *(v54 + 3832) = *(a35 + 24);
    *(v54 + 3816) = v139;
  }

  *(v54 + 3840) = *(a35 + 32);
  *(v54 + 3808) = &unk_1F50D89B8;
  *(v54 + 3844) = *(a35 + 36);
  v140 = (v54 + 3848);
  if (*(a35 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v140, *(a35 + 40), *(a35 + 48));
  }

  else
  {
    v141 = *(a35 + 40);
    *(v54 + 3864) = *(a35 + 56);
    *&v140->__r_.__value_.__l.__data_ = v141;
  }

  *(v54 + 3808) = &unk_1F50D7B20;
  *(v54 + 3872) = &unk_1F50D86E0;
  if (*(a36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3880), *(a36 + 8), *(a36 + 16));
  }

  else
  {
    v142 = *(a36 + 8);
    *(v54 + 3896) = *(a36 + 24);
    *(v54 + 3880) = v142;
  }

  *(v54 + 3904) = *(a36 + 32);
  *(v54 + 3872) = &unk_1F50D8978;
  *(v54 + 3908) = *(a36 + 36);
  *(v54 + 3872) = &unk_1F50D7AE0;
  *(v54 + 3920) = &unk_1F50D86E0;
  if (*(a37 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3928), *(a37 + 8), *(a37 + 16));
  }

  else
  {
    v143 = *(a37 + 8);
    *(v54 + 3944) = *(a37 + 24);
    *(v54 + 3928) = v143;
  }

  *(v54 + 3952) = *(a37 + 32);
  *(v54 + 3920) = &unk_1F50D8958;
  v144 = *(a37 + 36);
  *(v54 + 3964) = *(a37 + 44);
  *(v54 + 3956) = v144;
  *(v54 + 3920) = &unk_1F50D7AC0;
  *(v54 + 3968) = &unk_1F50D86E0;
  v145 = a38;
  if (*(a38 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 3976), *(a38 + 8), *(a38 + 16));
    v145 = a38;
  }

  else
  {
    v146 = *(a38 + 8);
    *(v54 + 3992) = *(a38 + 24);
    *(v54 + 3976) = v146;
  }

  *(v54 + 4000) = *(v145 + 32);
  *(v54 + 3968) = &unk_1F50D8958;
  v147 = *v68;
  *(v54 + 4012) = *(v68 + 2);
  *(v54 + 4004) = v147;
  *(v54 + 3968) = &unk_1F50D7AC0;
  *(v54 + 4016) = &unk_1F50D86E0;
  if (*(a39 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 4024), *(a39 + 8), *(a39 + 16));
  }

  else
  {
    v148 = *(a39 + 8);
    *(v54 + 4040) = *(a39 + 24);
    *(v54 + 4024) = v148;
  }

  *(v54 + 4048) = *(a39 + 32);
  *(v54 + 4016) = &unk_1F50D89B8;
  *(v54 + 4052) = *(a39 + 36);
  v149 = (v54 + 4056);
  if (*(a39 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v149, *(a39 + 40), *(a39 + 48));
  }

  else
  {
    v150 = *(a39 + 40);
    *(v54 + 4072) = *(a39 + 56);
    *&v149->__r_.__value_.__l.__data_ = v150;
  }

  *(v54 + 4016) = &unk_1F50D7B20;
  *(v54 + 4080) = &unk_1F50D86E0;
  if (*(a40 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 4088), *(a40 + 8), *(a40 + 16));
  }

  else
  {
    v151 = *(a40 + 8);
    *(v54 + 4104) = *(a40 + 24);
    *(v54 + 4088) = v151;
  }

  *(v54 + 4112) = *(a40 + 32);
  *(v54 + 4080) = &unk_1F50D89B8;
  *(v54 + 4116) = *(a40 + 36);
  v152 = (v54 + 4120);
  if (*(a40 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v152, *(a40 + 40), *(a40 + 48));
  }

  else
  {
    v153 = *(a40 + 40);
    *(v54 + 4136) = *(a40 + 56);
    *&v152->__r_.__value_.__l.__data_ = v153;
  }

  *(v54 + 4080) = &unk_1F50D7B20;
  *(v54 + 4144) = &unk_1F50D86E0;
  if (*(a41 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 4152), *(a41 + 8), *(a41 + 16));
  }

  else
  {
    v154 = *(a41 + 8);
    *(v54 + 4168) = *(a41 + 24);
    *(v54 + 4152) = v154;
  }

  *(v54 + 4176) = *(a41 + 32);
  *(v54 + 4144) = &unk_1F50D89B8;
  *(v54 + 4180) = *(a41 + 36);
  v155 = (v54 + 4184);
  if (*(a41 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v155, *(a41 + 40), *(a41 + 48));
  }

  else
  {
    v156 = *(a41 + 40);
    *(v54 + 4200) = *(a41 + 56);
    *&v155->__r_.__value_.__l.__data_ = v156;
  }

  *(v54 + 4144) = &unk_1F50D7B20;
  return v54;
}