void sub_1001D4950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, id location)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id xpc::dict::object_proxy::operator*(uint64_t a1)
{
  v2 = xpc::dict::operator*(*a1);
  v3 = xpc_dictionary_get_value(v2, *(a1 + 8));

  return v3;
}

void sub_1001D6640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a27)
  {
    (*(*a27 + 8))(a27);
  }

  if (v51 < 0)
  {
    operator delete(v49);
  }

  objc_destroyWeak((v52 - 184));
  _Unwind_Resume(a1);
}

_BYTE *CtrXPC::Result::toString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0xE)
  {
    v2 = "kInvalidErrorCode";
  }

  else
  {
    v2 = off_1004C8618[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void sub_1001D6DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, id location)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v16);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D736C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1001D79F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,boost::any>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
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

void std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *boost::any_cast<unsigned char>(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v3 = (*(*v2 + 16))(v2);
    }

    else
    {
    }

    v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == v5 || !strcmp(v4, v5))
    {
      return (*v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
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

void *boost::any_cast<std::string>(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v3 = (*(*v2 + 16))(v2);
    }

    else
    {
    }

    v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100447B36 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v4, (0x8000000100447B36 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      return (*v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *boost::any::holder<std::string>::holder(void *a1, __int128 *a2)
{
  *a1 = off_1004C1880;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void *std::map<std::string,boost::any>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,boost::any>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,boost::any>,std::__tree_node<std::__value_type<std::string,boost::any>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,boost::any>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,boost::any>,std::__tree_node<std::__value_type<std::string,boost::any>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,boost::any> const&>(v5, (v5 + 8), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,boost::any> const&>(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__construct_node<std::pair<std::string const,boost::any> const&>();
  }

  return v3;
}

std::string *std::pair<std::string const,boost::any>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  if (v5)
  {
    v5 = (*(*v5 + 24))(v5);
  }

  this[1].__r_.__value_.__r.__words[0] = v5;
  return this;
}

void sub_1001D8248(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,trackerInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,trackerInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,trackerInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1001D8528(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,trackerInfo>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,trackerInfo>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *OUTLINED_FUNCTION_2_6(uint64_t *result)
{
  v1 = *(result + 23);
  v2 = *result;
  return result;
}

void OUTLINED_FUNCTION_7_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void _GLOBAL__sub_I_ThreadNetworkManagerInstance_SM_extension_mm()
{
  v0 = objc_autoreleasePoolPush();
  qword_1004E5A58 = 0;
  qword_1004E5A50 = 0;
  ProvideEmacTracker = &qword_1004E5A50;
  __cxa_atexit(std::map<std::string,trackerInfo>::~map[abi:ne200100], &ProvideEmacTracker, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void setValueForBundle(const __CFString *a1, const void *a2, const char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFPreferencesSetAppValue(a1, a2, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

CFPropertyListRef copyValue(const __CFString *a1)
{
  result = CFPreferencesCopyAppValue(a1, @"com.apple.threadradiodData");
  if (!result)
  {

    return CFPreferencesCopyAppValue(a1, @"/System/Library/PrivateFrameworks/CoreThreadRadio.framework/com.apple.threadradiodData.plist");
  }

  return result;
}

CFPropertyListRef copyValueForBundle(const __CFString *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v4 = CFPreferencesCopyAppValue(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

const __CFString *synchronize(const char *cStr)
{
  result = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (result)
  {
    v2 = result;
    v3 = CFPreferencesAppSynchronize(result);
    CFRelease(v2);
    return (v3 != 0);
  }

  return result;
}

void saveStringValue(const char *cStr, const char *__s)
{
  if (__s && strlen(__s) >= 0xFB)
  {
    v4 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 67109634;
      *v11 = 250;
      *&v11[4] = 2080;
      *&v11[6] = cStr;
      v12 = 2080;
      v13 = __s;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Error: Input string value length is greater than %d. For key =>  %s . string value is => %s", &v10, 0x1Cu);
    }
  }

  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v6 = CFStringCreateWithCString(0, __s, 0x8000100u);
  v7 = v6;
  if (v5 && v6)
  {
    CFPreferencesSetAppValue(v5, v6, @"com.apple.threadradiodData");
    if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
    {
      v8 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        *v11 = cStr;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", &v10, 0xCu);
      }
    }

LABEL_15:
    CFRelease(v5);
    goto LABEL_16;
  }

  v9 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Failed to save saveStringValue due to null input.", &v10, 2u);
  }

  if (v5)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v7)
  {
    CFRelease(v7);
  }
}

void saveStringValueasNULL(const char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFPreferencesSetAppValue(v2, 0, @"com.apple.threadradiodData");
  if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
  {
    v3 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = cStr;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", &v4, 0xCu);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

BOOL saveDoubleValue(const char *cStr, double a2)
{
  valuePtr = a2;
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  v5 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v11 = "BOOL saveDoubleValue(const char *, double)";
    v12 = 1024;
    v13 = 134;
    v14 = 2080;
    v15 = cStr;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: - key = %s, v = %@", buf, 0x26u);
  }

  CFPreferencesSetAppValue(v3, v4, @"com.apple.threadradiodData");
  v6 = CFPreferencesAppSynchronize(@"com.apple.threadradiodData");
  if (v6)
  {
    if (!v3)
    {
      goto LABEL_11;
    }

LABEL_10:
    CFRelease(v3);
    goto LABEL_11;
  }

  v7 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "BOOL saveDoubleValue(const char *, double)";
    v12 = 1024;
    v13 = 139;
    v14 = 2080;
    v15 = cStr;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d: Failed to Sync key: %s", buf, 0x1Cu);
  }

  if (v3)
  {
    CFPreferencesSetAppValue(v3, 0, @"com.apple.threadradiodData");
    goto LABEL_10;
  }

LABEL_11:
  if (v4)
  {
    CFRelease(v4);
  }

  return v6 != 0;
}

void saveIntValue(const char *cStr, int a2)
{
  valuePtr = a2;
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v5 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = cStr;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "saveIntValue - key = %s, v = %@", buf, 0x16u);
  }

  CFPreferencesSetAppValue(v3, v4, @"com.apple.threadradiodData");
  if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
  {
    v6 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = cStr;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", buf, 0xCu);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void saveLLIntValueForBundleID(const char *cStr, uint64_t a2, const char *a3)
{
  valuePtr = a2;
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v6 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  v7 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = cStr;
    v12 = 2112;
    v13 = v6;
    v14 = 2048;
    v15 = valuePtr;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "saveLLIntValue - key = %s, v = %@, val = 0x%llx", buf, 0x20u);
  }

  setValueForBundle(v5, v6, a3);
  if ((synchronize(a3) & 1) == 0)
  {
    v8 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = cStr;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", buf, 0xCu);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void saveLLIntValueNULLForBundleID(const char *cStr, const char *a2)
{
  v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  setValueForBundle(v4, 0, a2);
  if ((synchronize(a2) & 1) == 0)
  {
    v5 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = cStr;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", &v6, 0xCu);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void saveIntValueasNULL(const char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFPreferencesSetAppValue(v2, 0, @"com.apple.threadradiodData");
  if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
  {
    v3 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = cStr;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", &v4, 0xCu);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t getIntValue(const char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  valuePtr = 0;
  v3 = copyValue(v2);
  v4 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = cStr;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "getIntValue - key = %s, v = %@", buf, 0x16u);
  }

  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return valuePtr;
}

uint64_t getLLIntValueForBundleID(const char *cStr, const char *a2)
{
  v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  valuePtr = 0;
  v5 = copyValueForBundle(v4, a2);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr);
    }
  }

  v8 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = cStr;
    v13 = 2112;
    v14 = v6;
    v15 = 2048;
    v16 = valuePtr;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "getLLIntValue - key = %s, v = %@, value = 0x%llx", buf, 0x20u);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return valuePtr;
}

double getDoubleValue(const char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  valuePtr = 0.0;
  v3 = copyValue(v2);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v10 = "double getDoubleValue(const char *)";
    v11 = 1024;
    v12 = 277;
    v13 = 2080;
    v14 = cStr;
    v15 = 2048;
    v16 = valuePtr;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d:  - key = %s, v = %f", buf, 0x26u);
  }

  return valuePtr;
}

__int128 *getStringValue(const char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v2 = &stringValue;
  stringValue = 0u;
  unk_1004E5A80 = 0u;
  xmmword_1004E5A90 = 0u;
  unk_1004E5AA0 = 0u;
  xmmword_1004E5AB0 = 0u;
  unk_1004E5AC0 = 0u;
  xmmword_1004E5AD0 = 0u;
  unk_1004E5AE0 = 0u;
  xmmword_1004E5AF0 = 0u;
  unk_1004E5B00 = 0u;
  xmmword_1004E5B10 = 0u;
  unk_1004E5B20 = 0u;
  xmmword_1004E5B30 = 0u;
  unk_1004E5B40 = 0u;
  xmmword_1004E5B50 = 0u;
  *(&xmmword_1004E5B50 + 10) = 0u;
  v3 = copyValue(v1);
  v4 = v3;
  if (!v3 || (v5 = CFGetTypeID(v3), v5 != CFStringGetTypeID()))
  {
    v2 = 0;
    if (!v1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!CFStringGetCString(v4, &stringValue, 250, 0x8000100u))
  {
    v2 = 0;
  }

  if (v1)
  {
LABEL_8:
    CFRelease(v1);
  }

LABEL_9:
  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

void getStringValueLocal(const char *cStr, char *a2, int a3)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v6 = copyValue(v5);
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      CFStringGetCString(v7, a2, a3, 0x8000100u);
      v9 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = a2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "getStringValueLocal: Read String: %s", &v10, 0xCu);
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

BOOL getBoolValue_isFeatureEnabled(const char *cStr, uint64_t a2)
{
  keyExistsAndHasValidFormat = 0;
  v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v4)
  {
    v5 = v4;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, @"com.apple.threadradiodData", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v7 = AppBooleanValue;
LABEL_11:
      CFRelease(v5);
      return v7 != 0;
    }

    v9 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      getBoolValue_isFeatureEnabled(cStr, v9);
    }

    keyExistsAndHasValidFormat = 0;
    v7 = CFPreferencesGetAppBooleanValue(v5, @"/System/Library/PrivateFrameworks/CoreThreadRadio.framework/com.apple.threadradiodData.plist", &keyExistsAndHasValidFormat);
    v10 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = "true";
      v16 = "getBoolValue_isFeatureEnabled";
      *buf = 136315906;
      v17 = 2080;
      if (!keyExistsAndHasValidFormat)
      {
        v13 = "false";
      }

      v18 = cStr;
      v19 = 2080;
      v20 = v13;
      v21 = 1024;
      v22 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: [%s]:Fallback to Frameworks, keyPresent = %s, Value = %d", buf, 0x26u);
    }

    if (keyExistsAndHasValidFormat)
    {
      goto LABEL_11;
    }

    v12 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      getBoolValue_isFeatureEnabled(a2, v12);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      getBoolValue_isFeatureEnabled(v8);
    }

    return 0;
  }

  return a2;
}

BOOL clearThreadConfiguration(void)
{
  v0 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "clearThreadConfiguration";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Entered in %s", &v6, 0xCu);
  }

  v1 = CFStringCreateWithCString(0, "TC", 0x8000100u);
  v2 = CFStringCreateWithCString(0, "com.apple.threadradiodData", 0x8000100u);
  CFPreferencesSetAppValue(v1, 0, v2);
  v3 = CFPreferencesAppSynchronize(@"com.apple.threadradiodData");
  if (!v3)
  {
    v4 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to Sync Thread Credentials ", &v6, 2u);
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

void saveThreadCredentials(int a1, uint64_t a2, const char *a3, unsigned __int8 *a4, const char *a5, int a6)
{
  valuePtr = a1;
  v23 = a2;
  v22 = a6;
  encode_data_into_string(a4, 16, v33, 0x24uLL, 0);
  v12 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67110402;
    *&buf[4] = a1;
    *&buf[8] = 2048;
    *&buf[10] = a2;
    *&buf[18] = 2080;
    *&buf[20] = a3;
    *&buf[28] = 2080;
    *&buf[30] = v33;
    *&buf[38] = 2080;
    *&buf[40] = a5;
    v31 = 1024;
    v32 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Saving TC as follows - PANID: %d, XPANID: %llu, NWName: %s, key: %s, PSKc: %s, ch = %d", buf, 0x36u);
  }

  *buf = *off_1004C8690;
  *&buf[16] = *off_1004C86A0;
  *&buf[32] = *off_1004C86B0;
  values[0] = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberLongLongType, &v23);
  values[2] = CFStringCreateWithCString(0, a3, 0x8000100u);
  values[3] = CFDataCreate(0, a4, 16);
  values[4] = CFStringCreateWithCString(0, a5, 0x8000100u);
  values[5] = CFNumberCreate(0, kCFNumberIntType, &v22);
  v13 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v25 = 138412546;
    v26 = v13;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Saving TC Dict (%@): %@", v25, 0x16u);
  }

  if (v13)
  {
    v15 = CFStringCreateWithCString(0, "TC", 0x8000100u);
    v16 = CFStringCreateWithCString(0, "com.apple.threadradiodData", 0x8000100u);
    v17 = v16;
    if (v15 && v16)
    {
      CFPreferencesSetAppValue(v15, v13, v16);
      if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
      {
        v18 = ThreadNetworkLoggingCategory(1u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Failed to Sync Thread Credentials", v25, 2u);
        }
      }

      CFRelease(v13);
    }

    else
    {
      v19 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Failed to save Thread Credentials", v25, 2u);
      }

      if (!v15)
      {
        goto LABEL_17;
      }
    }

    CFRelease(v15);
LABEL_17:
    if (v17)
    {
      CFRelease(v17);
    }
  }

  for (i = 0; i != 6; ++i)
  {
    v21 = values[i];
    if (v21)
    {
      CFRelease(v21);
      if (values[i])
      {
        CFRelease(*&buf[i * 8]);
      }
    }
  }
}

void saveThreadCredentialsAsString(const char *a1, const char *a2, const char *a3, const char *a4, const char *a5, int a6)
{
  valuePtr = a6;
  v12 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    *&buf[4] = a1;
    *&buf[12] = 2080;
    *&buf[14] = a2;
    *&buf[22] = 2080;
    *&buf[24] = a3;
    *v23 = 2080;
    *&v23[2] = a4;
    *&v23[10] = 2080;
    *&v23[12] = a5;
    v24 = 1024;
    v25 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Saving TC as follows - PANID: %s, XPANID: %s, NWName: %s, key: %s, PSKc: %s, ch = %d", buf, 0x3Au);
  }

  *buf = *off_1004C8690;
  *&buf[16] = *off_1004C86A0;
  *v23 = *off_1004C86B0;
  values[0] = CFStringCreateWithCString(0, a1, 0x8000100u);
  values[1] = CFStringCreateWithCString(0, a2, 0x8000100u);
  values[2] = CFStringCreateWithCString(0, a3, 0x8000100u);
  values[3] = CFStringCreateWithCString(0, a4, 0x8000100u);
  values[4] = CFStringCreateWithCString(0, a5, 0x8000100u);
  values[5] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v13 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v19 = 138412290;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Saving TC Dict: %@", v19, 0xCu);
  }

  if (v13)
  {
    CFPreferencesSetAppValue(@"TC", v13, @"com.apple.threadradiodData");
    if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
    {
      v15 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failed to Sync Thread Credentials", v19, 2u);
      }
    }

    CFRelease(v13);
  }

  for (i = 0; i != 48; ++i)
  {
    v17 = values[i];
    if (v17)
    {
      CFRelease(v17);
      if (values[i])
      {
        CFRelease(*&buf[i * 8]);
      }
    }
  }
}

void getStringValueFromDict(const __CFDictionary *a1, const char *a2, char *a3, int a4)
{
  value = 0;
  v7 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFDictionaryGetValueIfPresent(a1, v7, &value);
  if (value)
  {
    v8 = CFGetTypeID(value);
    if (v8 == CFStringGetTypeID())
    {
      CFStringGetCString(value, a3, a4, 0x8000100u);
      v9 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v12 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Read String: %s", buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void getIntValueFromDict(const __CFDictionary *a1, const char *a2, unsigned __int16 a3)
{
  valuePtr = a3;
  cf = 0;
  v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFDictionaryGetValueIfPresent(a1, v4, &cf);
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf, kCFNumberShortType, &valuePtr);
      v6 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v10 = valuePtr;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Read value: %d", buf, 8u);
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void getLongLongValueFromDict(const __CFDictionary *a1, const char *a2, uint64_t a3)
{
  cf = 0;
  valuePtr = a3;
  v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFDictionaryGetValueIfPresent(a1, v4, &cf);
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf, kCFNumberLongLongType, &valuePtr);
      v6 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v10 = valuePtr;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Read long long value: %llu", buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void getDataValueFromDict(const __CFDictionary *a1, const char *a2, unsigned __int8 *a3, unsigned int a4)
{
  value = 0;
  v7 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFDictionaryGetValueIfPresent(a1, v7, &value);
  if (value)
  {
    v8 = CFGetTypeID(value);
    if (v8 == CFDataGetTypeID())
    {
      v9 = a4;
      v19.location = 0;
      v19.length = a4;
      CFDataGetBytes(value, v19, a3);
      __chkstk_darwin(v10);
      v12 = &v15 - v11;
      encode_data_into_string(a3, v9, &v15 - v11, v13, 0);
      v14 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Read Data value: %s", buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void readThreadCredentials(uint64_t a1@<X8>)
{
  v2 = CFStringCreateWithCString(0, "TC", 0x8000100u);
  v3 = CFStringCreateWithCString(0, "com.apple.threadradiodData", 0x8000100u);
  v4 = CFPreferencesCopyAppValue(v2, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v5 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Read TC Dict: %@", &v7, 0xCu);
  }

  if (v4)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      getStringValueFromDict(v4, "networkName", (a1 + 16), 256);
      getStringValueFromDict(v4, "PSKc", (a1 + 288), 16);
      getIntValueFromDict(v4, "channel", *(a1 + 304));
      getIntValueFromDict(v4, "panid", *a1);
      getLongLongValueFromDict(v4, "xpanid", *(a1 + 8));
      getDataValueFromDict(v4, "masterKey", (a1 + 272), 0x10u);
    }

    CFRelease(v4);
  }
}

BOOL getCommissionerPassPhrase(uint64_t a1, uint64_t a2, std::string *a3)
{
  memset(&v23, 0, sizeof(v23));
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  std::string::append(&v23, v7, v8);
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

  std::string::append(&v23, v10, v11);
  v12 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (*(a1 + 23) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    v15 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v23.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    v25 = "getCommissionerPassPhrase";
    v26 = 2080;
    v27 = v13;
    v28 = 2080;
    v29 = v14;
    v30 = 2080;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : parameters - XPANID: %s, NWName: %s and key : %s", buf, 0x2Au);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v23;
  }

  else
  {
    v16 = v23.__r_.__value_.__r.__words[0];
  }

  StringValue = getStringValue(v16);
  if (StringValue)
  {
    v18 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = &v23;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v23.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v25 = "getCommissionerPassPhrase";
      v26 = 2080;
      v27 = StringValue;
      v28 = 2080;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : Value found %s, key is %s ", buf, 0x20u);
    }

    std::string::append(a3, StringValue);
  }

  else
  {
    v20 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = &v23;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v23.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v25 = "getCommissionerPassPhrase";
      v26 = 2080;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : Value not found, key is %s ", buf, 0x16u);
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return StringValue != 0;
}

void sub_1001DB55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void saveCommissionPassPhrasesAsString(const char *a1, const char *a2, const char *a3)
{
  memset(&v8, 0, sizeof(v8));
  std::string::append(&v8, a2);
  std::string::append(&v8, a1);
  v5 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = &v8;
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v10 = "saveCommissionPassPhrasesAsString";
    v11 = 2080;
    v12 = v6;
    v13 = 2080;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : Saving Credentials string as follows key: %s, PassPhrase : %s", buf, 0x20u);
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v8;
  }

  else
  {
    v7 = v8.__r_.__value_.__r.__words[0];
  }

  saveStringValue(v7, a3);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

BOOL removekeyEntryFromPlist(void)
{
  v14 = CFPreferencesCopyKeyList(@"com.apple.threadradiodData", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v0 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "removekeyEntryFromPlist";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s: Copied KeyList", buf, 0xCu);
  }

  if (v14)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v1 = v14;
    v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v15 objects:v23 count:16];
    v3 = v1;
    if (v2)
    {
      v4 = 0;
      v5 = *v16;
      do
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          if ([(__CFString *)v7 containsString:@"MyHome"])
          {
            CFPreferencesSetAppValue(v7, 0, @"com.apple.threadradiodData");
            v8 = ThreadNetworkLoggingCategory(1u);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              v9 = v7;
              v10 = [(__CFString *)v7 UTF8String];
              *buf = 136315394;
              v20 = "removekeyEntryFromPlist";
              v21 = 2080;
              v22 = v10;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Deleted key =>  %s", buf, 0x16u);
            }
          }

          else if (v4)
          {
            v4 = 1;
          }

          else
          {
            v4 = [(__CFString *)v7 isEqualToString:@"TC"];
          }
        }

        v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v2);

      if ((v4 & 1) == 0)
      {
LABEL_22:
        v11 = ThreadNetworkLoggingCategory(1u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v20 = "removekeyEntryFromPlist";
          v12 = "%s: function end. ";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
          goto LABEL_27;
        }

        goto LABEL_27;
      }

      CFPreferencesSetAppValue(@"TC", 0, @"com.apple.threadradiodData");
      v3 = ThreadNetworkLoggingCategory(1u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "removekeyEntryFromPlist";
        v21 = 2080;
        v22 = "TC";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Deleted key =>  %s", buf, 0x16u);
      }
    }

    goto LABEL_22;
  }

  v11 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "removekeyEntryFromPlist";
    v12 = "%s: Couldn't copy plist in NSArray object";
    goto LABEL_26;
  }

LABEL_27:

  return v14 != 0;
}

void getBoolValue_isFeatureEnabled(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "getBoolValue_isFeatureEnabled";
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: [%s]:KEY_NOT_FOUND in Preferences", &v2, 0x16u);
}

void getBoolValue_isFeatureEnabled(char a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "getBoolValue_isFeatureEnabled";
  v4 = 2080;
  v5 = "Thread:StateMachine:Wed:Enabled";
  v6 = 1024;
  v7 = a1 & 1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: [%s]:KEY_NOT_FOUND in Frameworks, fallback to Default:[%d]", &v2, 0x1Cu);
}

void getBoolValue_isFeatureEnabled(os_log_t log)
{
  v1 = 136315138;
  v2 = "getBoolValue_isFeatureEnabled";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s:Create CF String failed!", &v1, 0xCu);
}

void sub_1001DC224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001DC52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DC7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DCA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DD614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001DE198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_ThreadNetworkManagerInstance_syslog_extension_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id getUUIDAsStr(void)
{
  v10[0] = 0;
  v10[1] = 0;
  v0 = +[NSUUID UUID];
  [v0 getUUIDBytes:v10];

  v1 = [NSData dataWithBytes:v10 length:16];
  encode_data_into_string(v10, 16, v9, 0x24uLL, 0);
  v2 = [NSString stringWithUTF8String:v9];
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412546;
    v6 = v1;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Generated new uuid_temp: %@, full string: %@", &v5, 0x16u);
  }

  return v2;
}

id getUUIDAsByteArray(void)
{
  v6[0] = 0;
  v6[1] = 0;
  v0 = +[NSUUID UUID];
  [v0 getUUIDBytes:v6];

  v1 = [NSData dataWithBytes:v6 length:16];
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated new uuid_temp: %@", &v4, 0xCu);
  }

  return v1;
}

id generateNewXPANIDAsString(void)
{
  v0 = getUUIDAsStr();
  v1 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [v0 substringToIndex:16];
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new XPANID: %@, full string: %@", &v5, 0x16u);
  }

  v3 = [v0 substringToIndex:16];

  return v3;
}

unint64_t generateNewXPANIDAsInt(void)
{
  v0 = getUUIDAsByteArray();
  v3 = 0;
  [v0 getBytes:&v3 length:8];
  v3 = bswap64(v3);
  NSLog(@"Generated new XPANID Temp: %@, XPANID: 0x%016llx", v0, v3);
  v1 = v3;

  return v1;
}

id generatreNewNetworkName(void)
{
  v0 = [NSMutableString stringWithCapacity:0];
  v1 = arc4random();
  v2 = [NSString stringWithFormat:@"%s%d", "MyHome", v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31)) + 1];
  [v0 appendString:v2];

  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v6 = v0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Generated new Network Name: %@", buf, 0xCu);
  }

  return v0;
}

id generatreNewPANIDAsString(void)
{
  v0 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = scannedNetworkCount;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "generatreNewPANIDAsString: scannedNetworkCount: %d", buf, 8u);
  }

  do
  {
    v1 = arc4random() % 0xF000 + 4096;
    v2 = scannedNetworkCount;
    if (scannedNetworkCount < 1)
    {
      break;
    }

    v3 = 0;
    v4 = &scannedNetworks;
    do
    {
      v5 = *v4++;
      v3 |= v1 == v5;
      --v2;
    }

    while (v2);
  }

  while ((v3 & 1) != 0);
  v6 = [NSMutableString stringWithCapacity:0];
  v7 = [NSString stringWithFormat:@"0x%04X", v1];
  [v6 appendString:v7];

  v8 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v11 = v1;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Generated new PANID: %04x, %@", buf, 0x12u);
  }

  return v6;
}

uint64_t generatreNewPANIDAsInt(void)
{
  v0 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v8 = 67109120;
    v9 = scannedNetworkCount;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "generatreNewPANIDAsInt: scannedNetworkCount: %d", &v8, 8u);
  }

  do
  {
    v1 = arc4random() % 0xF000 + 4096;
    v2 = scannedNetworkCount;
    if (scannedNetworkCount < 1)
    {
      break;
    }

    v3 = 0;
    v4 = scannedNetworks;
    do
    {
      v5 = *v4++;
      v3 |= v1 == v5;
      --v2;
    }

    while (v2);
  }

  while ((v3 & 1) != 0);
  v6 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 67109120;
    v9 = v1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Generated new PANID: %04x", &v8, 8u);
  }

  return v1;
}

id generateCommisonerCredentialAsString(void)
{
  v0 = getUUIDAsStr();
  v1 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new CC %@ ", &v3, 0xCu);
  }

  return v0;
}

id generateNewMasterKeyAsString(void)
{
  v0 = getUUIDAsStr();
  v1 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new Master Key %@ ", &v3, 0xCu);
  }

  return v0;
}

id generateNewMasterKeyAsByteArray(void)
{
  v0 = [NSMutableData dataWithLength:16];
  if (SecRandomCopyBytes(kSecRandomDefault, [v0 length], objc_msgSend(v0, "mutableBytes")))
  {
    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      generateNewMasterKeyAsByteArray(v4);
    }

    __assert_rtn("generateNewMasterKeyAsByteArray", "ThreadNetworkManagerUtils.mm", 173, "false");
  }

  v1 = [[NSData alloc] initWithBytes:objc_msgSend(v0 length:{"bytes"), objc_msgSend(v0, "length")}];
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "form");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated the new Master Key :: %@ ", &v5, 0xCu);
  }

  return v1;
}

id generateNSStringfromCArray(unsigned __int8 *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [NSMutableString stringWithCapacity:2 * a2];
    if (a2)
    {
      v5 = a2;
      do
      {
        v6 = *v3++;
        v7 = [NSString stringWithFormat:@"%02lx", v6];
        [v4 appendString:v7];

        --v5;
      }

      while (v5);
    }

    v8 = [NSString stringWithString:v4];
  }

  else
  {
    v8 = +[NSString string];
  }

  return v8;
}

id getRandomAlphanumericPSKdWithLength(uint64_t a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithCapacity:a1];
  if (v1 >= 1)
  {
    do
    {
      [v2 appendFormat:@"%C", objc_msgSend(@"ABCDEFGHJKLMNPRSTUVWXY0123456789", "characterAtIndex:", arc4random() % objc_msgSend(@"ABCDEFGHJKLMNPRSTUVWXY0123456789", "length"))];
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t isNetworkConnected(void)
{
  v0 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
  v1 = v0;
  if (!v0)
  {
    return 0;
  }

  v2 = [v0 path];
  if ([v2 usesInterfaceType:1])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 path];
    v3 = [v4 usesInterfaceType:3];
  }

  return v3;
}

void stringToLowercase(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  v3 = *(a2 + 23);
  v4 = v3;
  v5 = (a2 + v3);
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = (*a2 + *(a2 + 8));
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (v7 != v6)
  {
    *v7 = __tolower(*v7);
    ++v7;
  }
}

void sub_1001DFA40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL stringEqualCaseInsensitive(uint64_t a1, uint64_t a2)
{
  stringToLowercase(a1, v13);
  stringToLowercase(a2, __p);
  v3 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = v13[1];
  }

  v5 = v12;
  v6 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v4 == v5)
  {
    if ((v14 & 0x80u) == 0)
    {
      v7 = v13;
    }

    else
    {
      v7 = v13[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = memcmp(v7, v8, v4) == 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p[0]);
  v3 = v14;
LABEL_17:
  if ((v3 & 0x80) != 0)
  {
    operator delete(v13[0]);
  }

  return v9;
}

void sub_1001DFB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void srputil_srp_mdns_proxyd_interface_init()
{
  if (srputil_srp_mdns_proxyd_interface_q)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    LOWORD(v6) = 0;
    v1 = "srp-mdns-proxyd Q is already active";
LABEL_7:
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, v1, &v6, 2u);
    goto LABEL_10;
  }

  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("wpantund.srp_mdns_proxyd.Interface.Queue", v2);
  srputil_srp_mdns_proxyd_interface_q = v3;
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  logging_obg = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    LOWORD(v6) = 0;
    v1 = "srp-mdns-proxyd Q Init Success";
    goto LABEL_7;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    srputil_srp_mdns_proxyd_interface_init_cold_1();
  }

LABEL_10:
  v5 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = cref;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "srp-mdns-proxyd cref at init: %p", &v6, 0xCu);
  }
}

void srputil_start_srp_mdns_proxyd()
{
  if (ncp_state == 8)
  {
    if (cref)
    {
      logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *__p = 134217984;
      *&__p[4] = cref;
      v1 = "srp-mdns-proxyd is already running, no need to start again, Cref: %p";
LABEL_14:
      v4 = logging_obg;
      v5 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v1, __p, v5);
      return;
    }

    if (start_cb_pending == 1)
    {
      logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *__p = 134217984;
      *&__p[4] = cref;
      v1 = "srp-mdns-proxyd start is already ongoing, no need to start again, Cref: %p";
      goto LABEL_14;
    }

    start_cb_pending = 1;
    v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Starting srp-mdns-proxyd", __p, 2u);
    }

    if (srputil_srp_mdns_proxyd_interface_q)
    {
      dispatch_async(srputil_srp_mdns_proxyd_interface_q, &__block_literal_global_10);
    }

    else
    {
      v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *__p = 0;
        v1 = "Starting srp-mdns-proxyd Failed: No Q";
        v4 = v7;
        v5 = 2;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      nl::wpantund::ncp_state_to_string(ncp_state, __p);
      v3 = v9 >= 0 ? __p : *__p;
      *buf = 136315394;
      v11 = v3;
      v12 = 2048;
      v13 = cref;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "srp-mdns-proxyd Thread is not associated , no need to start SRP, ncp_state = %s, Cref: %p", buf, 0x16u);
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void __srputil_start_srp_mdns_proxyd_block_invoke(id a1)
{
  logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6[0] = srputil_srp_mdns_proxyd_interface_q;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Starting srp-mdns-proxyd from Q: %@", &v5, 0xCu);
  }

  v2 = advertising_proxy_enable();
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __srputil_start_srp_mdns_proxyd_block_invoke_cold_1();
    }

    cref = 0;
    start_cb_pending = 0;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 67109376;
    LODWORD(v6[0]) = 0;
    WORD2(v6[0]) = 2048;
    *(v6 + 6) = cref;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting srp-mdns-proxyd Success: Err: %d, Cref: %p", &v5, 0x12u);
  }
}

void srputil_srp_mdns_proxyd_started_callback(uint64_t a1, uint64_t a2, int a3)
{
  log_domain = log_get_log_domain("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(log_domain, OS_LOG_TYPE_INFO))
  {
    v8 = 134218496;
    v9 = a1;
    v10 = 2048;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, log_domain, OS_LOG_TYPE_INFO, "srp-mdns-proxyd start Callback: conn_ref %p,  response %p,   err %d.", &v8, 0x1Cu);
  }

  if (a3)
  {
    cref = 0;
    ++b2b_srp_enable_failures;
    v7 = log_get_log_domain("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      srputil_srp_mdns_proxyd_started_callback(a2, a3, v7);
    }
  }

  else
  {
    b2b_srp_enable_failures = 0;
  }

  start_cb_pending = 0;
  if (!cref)
  {
    srputil_check_and_resume_srp_mdns_proxyd();
  }
}

void srputil_stop_srp_mdns_proxyd()
{
  v0 = cref;
  logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  v2 = os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO);
  if (v0)
  {
    if (v2)
    {
      *buf = 134217984;
      v11 = cref;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Stopping srp-mdns-proxyd, Cref: %p", buf, 0xCu);
    }

    if (srputil_srp_mdns_proxyd_interface_q)
    {
      dispatch_async(srputil_srp_mdns_proxyd_interface_q, &__block_literal_global_11);
    }

    else
    {
      v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        srputil_stop_srp_mdns_proxyd_cold_1();
      }
    }
  }

  else
  {
    if (v2)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " srp-mdns-proxyd is not running to stop it", buf, 2u);
    }

    std::string::basic_string[abi:ne200100]<0>(&v8, "Error");
    std::string::basic_string[abi:ne200100]<0>(&v6, "Error in Srp-mdns interaction");
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot stop srp-mdns-proxy in RCP as advertising proxy reference is null");
    AWDMetricsClient_TriggerAutoBugCaptures();
    if (v5 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }
  }
}

void sub_1001E03F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(exception_object);
}

void __srputil_stop_srp_mdns_proxyd_block_invoke(id a1)
{
  if (cref)
  {
    advertising_proxy_ref_dealloc();
    cref = 0;
    start_cb_pending = 0;
    logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = 138412546;
    v4 = srputil_srp_mdns_proxyd_interface_q;
    v5 = 2048;
    v6 = cref;
    v2 = "Stopped srp-mdns-proxyd from Q:%@, cref: %p";
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (!os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = 138412546;
    v4 = srputil_srp_mdns_proxyd_interface_q;
    v5 = 2048;
    v6 = cref;
    v2 = "Already stopped,cannot stop again srp-mdns-proxyd from Q:%@, cref: %p";
  }

  _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, v2, &v3, 0x16u);
}

void srputil_set_ncp_state(int a1)
{
  SystemUptimeInSec = getSystemUptimeInSec();
  DaemonUptimeInSec = getDaemonUptimeInSec();
  v4 = ncp_state;
  ncp_state = a1;
  logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    nl::wpantund::ncp_state_to_string(v4, v16);
    v6 = v17;
    v7 = v16[0];
    nl::wpantund::ncp_state_to_string(ncp_state, __p);
    v8 = v16;
    if (v6 < 0)
    {
      v8 = v7;
    }

    if (v15 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 134219010;
    v19 = SystemUptimeInSec;
    v20 = 2048;
    v21 = DaemonUptimeInSec;
    v22 = 2080;
    v23 = v8;
    v24 = 2080;
    v25 = v9;
    v26 = 2048;
    v27 = cref;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "[%llu, %llu] srp-mdns-proxyd NCP State changed from %s -> %s, cref: %p", buf, 0x34u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  if (v4 != 8 && ncp_state == 8)
  {
    if (cref)
    {
      v13 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v19 = cref;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[srp-mdns-proxyd] is already running with cref: %p, first stop it...", buf, 0xCu);
      }

      srputil_stop_srp_mdns_proxyd();
    }

    goto LABEL_23;
  }

  if (ncp_state != 8 && v4 == 8)
  {
    srputil_stop_srp_mdns_proxyd();
  }

  else if (ncp_state == 8 && !cref)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Starting [srp-mdns-proxyd] SRP as cref is NULL but Thread is Assosciated", buf, 2u);
    }

LABEL_23:
    srputil_start_srp_mdns_proxyd();
  }
}

void sub_1001E07F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void srputil_check_and_resume_srp_mdns_proxyd(void)
{
  log_domain = log_get_log_domain("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(log_domain, OS_LOG_TYPE_INFO))
  {
    nl::wpantund::ncp_state_to_string(ncp_state, __p);
    v1 = v12 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *v14 = v1;
    *&v14[8] = 2048;
    *&v14[10] = cref;
    v15 = 1024;
    v16 = b2b_srp_enable_failures;
    _os_log_impl(&_mh_execute_header, log_domain, OS_LOG_TYPE_INFO, " srp-mdns-proxyd resume called in state %s, cref: %p, b2b_srp_enable_failures: %d", buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (ncp_state == 8)
  {
    v2 = 3000000000;
    if (b2b_srp_enable_failures >= 8u)
    {
      v3 = 30;
    }

    else
    {
      v3 = 10;
    }

    v4 = 30000000000;
    if (b2b_srp_enable_failures < 8u)
    {
      v4 = 10000000000;
    }

    if (b2b_srp_enable_failures >= 5u)
    {
      v5 = v3;
    }

    else
    {
      v5 = 3;
    }

    if (b2b_srp_enable_failures >= 5u)
    {
      v2 = v4;
    }

    if (b2b_srp_enable_failures >= 3u)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    if (b2b_srp_enable_failures >= 3u)
    {
      v7 = v2;
    }

    else
    {
      v7 = 1000000000;
    }

    srputil_check_and_resume_srp_mdns_proxyd(void)::enabling_delay_timer = v6;
    v8 = dispatch_time(0, v7);
    v9 = log_get_log_domain("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v14 = srputil_check_and_resume_srp_mdns_proxyd(void)::enabling_delay_timer;
      *&v14[4] = 2048;
      *&v14[6] = cref;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Resuming srp-mdns-proxyd after %d sec, cref: %p", buf, 0x12u);
    }

    if (srputil_srp_mdns_proxyd_interface_q)
    {
      dispatch_after(v8, srputil_srp_mdns_proxyd_interface_q, &__block_literal_global_14);
    }

    else
    {
      v10 = log_get_log_domain("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        srputil_stop_srp_mdns_proxyd_cold_1();
      }
    }
  }
}

void ___Z40srputil_check_and_resume_srp_mdns_proxydv_block_invoke(id a1)
{
  log_domain = log_get_log_domain("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(log_domain, OS_LOG_TYPE_INFO))
  {
    v2 = 134217984;
    v3 = cref;
    _os_log_impl(&_mh_execute_header, log_domain, OS_LOG_TYPE_INFO, "Resuming srp-mdns-proxyd now, cref: %p", &v2, 0xCu);
  }

  srputil_start_srp_mdns_proxyd();
}

uint64_t srputil_set_stop()
{
  log_domain = log_get_log_domain("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(log_domain, OS_LOG_TYPE_INFO))
  {
    v8 = 134218240;
    v9 = cref;
    v10 = 2048;
    v11 = shutdown_cref;
    _os_log_impl(&_mh_execute_header, log_domain, OS_LOG_TYPE_INFO, "srp-mdns-proxyd: Calling advertising_proxy_start_thread_shutdown, cref: %p, shutdown_cref: %p", &v8, 0x16u);
  }

  if (!srputil_srp_mdns_proxyd_interface_q)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      srputil_set_stop_cold_2();
    }

    return 0;
  }

  dispatch_async(srputil_srp_mdns_proxyd_interface_q, &__block_literal_global_17);
  v1 = dispatch_time(0, 5000000000);
  v2 = dispatch_semaphore_wait(srp_semaphore, v1);
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      srputil_set_stop_cold_1();
    }

    return 0;
  }

  v6 = 1;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134218240;
    v9 = cref;
    v10 = 2048;
    v11 = shutdown_cref;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "srp-mdns-proxyd: Done with advertising_proxy_start_thread_shutdown, cref: %p, shutdown_cref: %p", &v8, 0x16u);
  }

  return v6;
}

intptr_t srputil_srp_start_threadstop_callback(uint64_t a1)
{
  log_domain = log_get_log_domain("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(log_domain, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "void srputil_srp_start_threadstop_callback(advertising_proxy_conn_ref, xpc_object_t, advertising_proxy_error_type)";
    v8 = 1024;
    *v9 = 235;
    *&v9[4] = 2048;
    *&v9[6] = a1;
    *&v9[14] = 2048;
    *&v9[16] = shutdown_cref;
    v10 = 2048;
    v11 = cref;
    _os_log_impl(&_mh_execute_header, log_domain, OS_LOG_TYPE_INFO, "%s:%d: srp-mdns-proxyd: Inside the srputil_srp_start_threadstop_callback, signaling srp_semaphore, shutdown_conn_ref: %p, shutdown_cref: %p, cref: %p", &v6, 0x30u);
  }

  if (a1)
  {
    advertising_proxy_ref_dealloc();
  }

  else
  {
    v3 = log_get_log_domain("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      srputil_srp_start_threadstop_callback();
    }
  }

  logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    v6 = 138412802;
    v7 = srputil_srp_mdns_proxyd_interface_q;
    v8 = 2048;
    *v9 = cref;
    *&v9[8] = 2048;
    *&v9[10] = shutdown_cref;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Dealloc srp-mdns-proxyd shutdown connection from Q:%@, cref: %p, shutdown_cref: %p", &v6, 0x20u);
  }

  shutdown_cref = 0;
  return dispatch_semaphore_signal(srp_semaphore);
}

void srputil_srp_mdns_proxyd_started_callback(uint64_t a1, int a2, os_log_t log)
{
  v3 = 134218752;
  v4 = cref;
  v5 = 2048;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  v9 = 1024;
  v10 = b2b_srp_enable_failures;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "srp-mdns-proxyd start Callback with failure: cref %p  response %p   err %d, b2b_srp_enable_failures: %d", &v3, 0x22u);
}

void srputil_set_stop_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void srputil_srp_start_threadstop_callback()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

dispatch_semaphore_t _GLOBAL__sub_I_ThreadNetworkManager_srputil_cpp()
{
  result = dispatch_semaphore_create(0);
  srp_semaphore = result;
  return result;
}

void sub_1001E1398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001E1C60(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

void ThreadNetworkManagerTopologyHandler_Init_Database(void)
{
  v0 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "ThreadNetworkManagerTopologyHandler_Init_Database";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Inside %s", &v1, 0xCu);
  }

  std::__list_imp<std::map<std::string,boost::any>>::clear(&database);
}

void ThreadNetworkManagerTopologyHandler_Update_ChildTableAddresses(any a1@<0:X0>, void *a2@<X8>)
{
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "ThreadNetworkManagerTopologyHandler_Update_ChildTableAddresses";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Inside %s", buf, 0xCu);
  }

  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  boost::any_cast<std::list<std::map<std::string,boost::any>>>(a1.var0, buf);
  std::list<std::map<std::string,boost::any>>::__move_assign(&v15, buf);
  std::__list_imp<std::map<std::string,boost::any>>::clear(buf);
  for (i = v16; i != &v15; i = i[1])
  {
    for (j = qword_10052D858; j != &database; j = j[1])
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "ExtAddress");
      v7 = std::map<std::string,boost::any>::at((j + 2), buf);
      v8 = any_to_uint64(v7, 0);
      if (v21 < 0)
      {
        operator delete(*buf);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "ExtAddress");
      v9 = std::map<std::string,boost::any>::at((i + 2), buf);
      v10 = any_to_uint64(v9, 0);
      if (v21 < 0)
      {
        operator delete(*buf);
      }

      if (v8 == v10)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "IPv6Addresses");
        v11 = std::map<std::string,boost::any>::at((i + 2), __p);
        std::pair<std::string,boost::any>::pair[abi:ne200100]<char const(&)[14],boost::any&,0>(buf, "IPv6Addresses", v11);
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::pair<std::string,boost::any>>((j + 2), buf);
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        if (v21 < 0)
        {
          operator delete(*buf);
        }

        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ThreadNetworkManagerTopologyHandler_Update_ChildTableAddresses";
    v19 = 2048;
    v20 = qword_10052D860;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s return database with size:%ld", buf, 0x16u);
  }

  std::list<std::map<std::string,boost::any>>::list(a2, &database);
  std::__list_imp<std::map<std::string,boost::any>>::clear(&v15);
}

uint64_t std::map<std::string,boost::any>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void ThreadNetworkManagerTopologyHandler_Update_ChildTable(any a1@<0:X0>, void *a2@<X8>)
{
  v5 = &v5;
  v6 = &v5;
  v7 = 0;
  boost::any_cast<std::list<std::map<std::string,boost::any>>>(a1.var0, buf);
  std::list<std::map<std::string,boost::any>>::__move_assign(&v5, buf);
  std::__list_imp<std::map<std::string,boost::any>>::clear(buf);
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "ThreadNetworkManagerTopologyHandler_Update_ChildTable";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Inside %s", buf, 0xCu);
  }

  ThreadNetworkManagerTopologyHandler_Init_Database();
  std::list<std::map<std::string,boost::any>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::map<std::string,boost::any>,void *>,std::__list_const_iterator<std::map<std::string,boost::any>,void *>>(&database, v6, &v5);
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ThreadNetworkManagerTopologyHandler_Update_ChildTable";
    v10 = 2048;
    v11 = qword_10052D860;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s return database with size:%ld", buf, 0x16u);
  }

  std::list<std::map<std::string,boost::any>>::list(a2, &database);
  std::__list_imp<std::map<std::string,boost::any>>::clear(&v5);
}

void sub_1001E27C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::map<std::string,boost::any>>::clear(va);
  _Unwind_Resume(a1);
}

void ThreadNetworkManagerTopologyHandler_Add_Child(any a1@<0:X0>, void *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  boost::any_cast<std::map<std::string,boost::any>>(a1.var0, buf);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v13, v14);
  v3 = *&buf[8];
  v13 = *buf;
  v14 = *&buf[8];
  v15 = *&buf[16];
  if (*&buf[16])
  {
    *(*&buf[8] + 16) = &v14;
    *buf = &buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v3 = 0;
  }

  else
  {
    v13 = &v14;
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(buf, v3);
  v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "ThreadNetworkManagerTopologyHandler_Add_Child";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Inside %s", buf, 0xCu);
  }

  v5 = qword_10052D858;
  if (qword_10052D858 == &database)
  {
LABEL_13:
    v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ThreadNetworkManagerTopologyHandler_Add_Child";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s added new child to database", buf, 0xCu);
    }

    std::__list_imp<std::map<std::string,boost::any>>::__create_node[abi:ne200100]<std::map<std::string,boost::any> const&>();
  }

  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "ExtAddress");
    v6 = std::map<std::string,boost::any>::at(&v13, buf);
    v7 = any_to_uint64(v6, 0);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "ExtAddress");
    v8 = std::map<std::string,boost::any>::at((v5 + 2), buf);
    v9 = any_to_uint64(v8, 0);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v7 == v9)
    {
      break;
    }

    v5 = v5[1];
    if (v5 == &database)
    {
      goto LABEL_13;
    }
  }

  v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "ThreadNetworkManagerTopologyHandler_Add_Child";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s found existing child with same ExtAddr", buf, 0xCu);
  }

  v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ThreadNetworkManagerTopologyHandler_Add_Child";
    *&buf[12] = 2048;
    *&buf[14] = qword_10052D860;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s return database with size:%ld", buf, 0x16u);
  }

  std::list<std::map<std::string,boost::any>>::list(a2, &database);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v13, v14);
}

void ThreadNetworkManagerTopologyHandler_Delete_Child(any a1@<0:X0>, void *a2@<X8>)
{
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  boost::any_cast<std::map<std::string,boost::any>>(a1.var0, buf);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v12, v13);
  v2 = *&buf[8];
  v12 = *buf;
  v13 = *&buf[8];
  v14 = *&buf[16];
  if (*&buf[16])
  {
    *(*&buf[8] + 16) = &v13;
    *buf = &buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v2 = 0;
  }

  else
  {
    v12 = &v13;
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(buf, v2);
  v3 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "ThreadNetworkManagerTopologyHandler_Delete_Child";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Inside %s", buf, 0xCu);
  }

  for (i = qword_10052D858; i != &database; i = i[1])
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "ExtAddress");
    v5 = std::map<std::string,boost::any>::at(&v12, buf);
    v6 = any_to_uint64(v5, 0);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "ExtAddress");
    v7 = std::map<std::string,boost::any>::at((i + 2), buf);
    v8 = any_to_uint64(v7, 0);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v6 == v8)
    {
      i = std::list<std::map<std::string,boost::any>>::erase(&database, i);
      v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "ThreadNetworkManagerTopologyHandler_Delete_Child";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s removed child from database", buf, 0xCu);
      }
    }
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ThreadNetworkManagerTopologyHandler_Delete_Child";
    *&buf[12] = 2048;
    *&buf[14] = qword_10052D860;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s return database with size:%ld", buf, 0x16u);
  }

  std::list<std::map<std::string,boost::any>>::list(a2, &database);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v12, v13);
}

void *std::list<std::map<std::string,boost::any>>::erase(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy((a2 + 2), a2[3]);
  operator delete(a2);
  return v4;
}

uint64_t std::pair<std::string,boost::any>::pair[abi:ne200100]<char const(&)[14],boost::any&,0>(uint64_t a1, char *a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  if (*a3)
  {
    v5 = (*(*v5 + 24))(v5);
  }

  *(a1 + 24) = v5;
  return a1;
}

void sub_1001E2F94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,boost::any>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *boost::any_cast<std::list<std::map<std::string,boost::any>>>(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v3 = (*(*v2 + 16))(v2);
    }

    else
    {
    }

    v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x80000001004441B3 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v4, (0x80000001004441B3 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      return (*v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::list<std::map<std::string,boost::any>>::__move_assign(uint64_t *a1, uint64_t *a2)
{
  std::__list_imp<std::map<std::string,boost::any>>::clear(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::pair<std::string,boost::any>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::list<std::map<std::string,boost::any>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::map<std::string,boost::any>,void *>,std::__list_const_iterator<std::map<std::string,boost::any>,void *>>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      if (v6 != v4)
      {
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,boost::any>,std::__tree_node<std::__value_type<std::string,boost::any>,void *> *,long>>(v6 + 2, *(v4 + 16), (v4 + 24));
      }

      v4 = *(v4 + 8);
      v6 = v6[1];
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    return std::list<std::map<std::string,boost::any>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::map<std::string,boost::any>,void *>,std::__list_const_iterator<std::map<std::string,boost::any>,void *>>(a1, a1, v4, a3);
  }

  else
  {

    return std::list<std::map<std::string,boost::any>>::erase(a1, v6, a1);
  }
}

uint64_t std::list<std::map<std::string,boost::any>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::map<std::string,boost::any>,void *>,std::__list_const_iterator<std::map<std::string,boost::any>,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    std::__list_imp<std::map<std::string,boost::any>>::__create_node[abi:ne200100]<std::map<std::string,boost::any> const&>();
  }

  return a2;
}

void sub_1001E33F0(void *a1)
{
  __cxa_begin_catch(a1);
  std::list<std::map<std::string,boost::any>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::map<std::string,boost::any>,void *>,std::__list_const_iterator<std::map<std::string,boost::any>,void *>>(v1);
  __cxa_rethrow();
}

void *std::list<std::map<std::string,boost::any>>::erase(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = *(*a3 + 8);
    v7 = *a2;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy((v4 + 2), v4[3]);
      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

uint64_t **std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,boost::any>,std::__tree_node<std::__value_type<std::string,boost::any>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          boost::any::operator=(v8 + 7, v9 + 7);
          leaf_high = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_multi<std::pair<std::string const,boost::any> const&>();
  }

  return result;
}

uint64_t *boost::any::operator=(uint64_t *a1, void *a2)
{
  if (*a2)
  {
    v3 = (*(**a2 + 24))(*a2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1001E3844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,boost::any>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,boost::any>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *boost::any_cast<std::map<std::string,boost::any>>(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v3 = (*(*v2 + 16))(v2);
    }

    else
    {
    }

    v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100444137 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v4, (0x8000000100444137 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      return (*v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::list<std::map<std::string,boost::any>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::map<std::string,boost::any>,void *>,std::__list_const_iterator<std::map<std::string,boost::any>,void *>>(char **a1)
{
  do
  {
    v2 = *a1;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy((a1 + 2), a1[3]);
    operator delete(a1);
    a1 = v2;
  }

  while (v2);
}

void _GLOBAL__sub_I_ThreadNetworkManagerTopologyHandler_mm()
{
  v0 = objc_autoreleasePoolPush();
  database = &database;
  qword_10052D858 = &database;
  qword_10052D860 = 0;
  __cxa_atexit(std::list<std::map<std::string,boost::any>>::~list, &database, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_1001E5088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  objc_destroyWeak((v11 + 32));
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x250]);
  objc_destroyWeak((v15 - 184));

  objc_destroyWeak((v15 - 152));
  _Unwind_Resume(a1);
}

void sub_1001E5634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (v25 < 0)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1001E5C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001E6B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v19 = *(v17 - 40);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E6D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = v16;

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_1001E7048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
  }

  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_1001E8594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void convert_ValMap_to_xpc_object(any a1@<0:X0>, const char *a2@<X1>, const char *a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "method", a3);
  xpc_dictionary_set_string(v8, "key", a2);
  if (!*a1.var0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<empty>");
    operator new();
  }

  append_to_xpc_object_by_value_type(v8, a1.var0);
  v9 = v8;
  v10 = v9;
  v11 = v9;
  if (!v9)
  {
    v11 = xpc_null_create();
  }

  v12 = v11;
  v13 = v12;
  *a4 = v12;
  if (v12)
  {
    if (xpc_get_type(v12) != &_xpc_type_dictionary)
    {
      *a4 = xpc_null_create();
    }
  }

  else
  {
    *a4 = xpc_null_create();
  }
}

void sub_1001E89F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t *a15)
{
  if (a15)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a15);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001E8F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  v31 = *(v29 - 80);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(v29 - 72);
  *(v29 - 72) = 0;

  if (v28 < 0)
  {
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void sub_1001E9FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  if (a26)
  {
    (*(*a26 + 8))(a26);
  }

  v64 = *(v62 - 200);
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = *(v62 - 192);
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = *(v62 - 184);
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = *(v62 - 176);
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  v68 = *(v62 - 168);
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  if (v57 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EB518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  if (a28)
  {
    (*(*a28 + 8))(a28);
  }

  if (a33)
  {
    (*(*a33 + 8))(a33);
  }

  if (a43)
  {
    (*(*a43 + 8))(a43);
  }

  if (a48)
  {
    (*(*a48 + 8))(a48);
  }

  v53 = *(v51 - 256);
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *(v51 - 216);
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(v51 - 176);
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(v51 - 168);
  *(v51 - 168) = 0;

  if (v50 < 0)
  {
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void sub_1001EC14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (v52 < 0)
  {
    operator delete(v51);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001ECBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (a30)
  {
    (*(*a30 + 8))(a30);
  }

  if (a38)
  {
    (*(*a38 + 8))(a38);
  }

  v49 = *(v47 - 176);
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(v47 - 168);
  *(v47 - 168) = 0;

  if (v46 < 0)
  {
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

void sub_1001ED978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EDAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EDE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 < 0)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EE0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (v17 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void sub_1001EE344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EE870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  v34 = *(v32 - 104);
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  if (v31 < 0)
  {
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_1001EEAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EF1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36)
{
  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (a35)
  {
    (*(*a35 + 8))(a35);
  }

  if (v37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EF618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v28 < 0)
  {
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EFB88(_Unwind_Exception *a1)
{
  v6 = v4;

  if (v5 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1001F0118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F069C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);

  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F0D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);

  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1001F28FC(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void tnmDumpRecord(THThreadNetworkCredentialsActiveDataSetRecord *a1)
{
  v1 = a1;
  v2 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 network];
  v3 = [v2 extendedPANID];
  if (v3)
  {
    v4 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 network];
    v5 = [v4 extendedPANID];
    v6 = [v5 bytes];
    v7 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 network];
    v8 = [v7 extendedPANID];
    v9 = [v8 length];
    ctu::hex(__p, v6, v9, v10);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "(unknown)");
  }

  v11 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "\t==== Credentials ====\n", buf, 2u);
  }

  v12 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 uniqueIdentifier];
  v13 = v12 == 0;

  if (!v13)
  {
    v14 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 uniqueIdentifier];
      v16 = [v15 UUIDString];
      v17 = v16;
      v18 = [v16 UTF8String];
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "\t\t  - UUID: \t\t%s\n", buf, 0xCu);
    }
  }

  v19 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 borderAgent];
  v20 = [v19 discriminatorId];
  if (v20)
  {
    v21 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 borderAgent];
    v22 = [v21 discriminatorId];
    v23 = v22;
    v24 = [v22 bytes];
    v25 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 borderAgent];
    v26 = [v25 discriminatorId];
    v27 = [v26 length];
    ctu::hex(buf, v24, v27, v28);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "(unknown)");
  }

  v29 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = buf;
    if (v139 < 0)
    {
      v30 = *buf;
    }

    *v134 = 136315138;
    *&v134[4] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "\t\t  -  Border Agent Discriminator ID : %s\n", v134, 0xCu);
  }

  v31 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 network];
    v33 = [v32 networkName];
    v34 = v33;
    if (!v33)
    {
      v33 = @"(unknown)";
    }

    v35 = [(__CFString *)v33 UTF8String];
    *v134 = 136315138;
    *&v134[4] = v35;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "\t\t  - Network Name: \t%s\n", v134, 0xCu);
  }

  v36 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = __p;
    if (v133 < 0)
    {
      v37 = __p[0];
    }

    *v134 = 136315138;
    *&v134[4] = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "\t\t  - Network XPANID: \t%s\n", v134, 0xCu);
  }

  v38 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
  v39 = [v38 PANID];
  v40 = v39 == 0;

  if (!v40)
  {
    v41 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v43 = [v42 PANID];
      v44 = v43;
      v45 = [v43 bytes];
      v46 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v47 = [v46 PANID];
      v48 = [v47 length];
      ctu::hex(v134, v45, v48, v49);
      if (v135 >= 0)
      {
        v50 = v134;
      }

      else
      {
        v50 = *v134;
      }

      *v136 = 136315138;
      v137 = v50;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "\t\t  - Network PANID: \t%s\n", v136, 0xCu);
      if (v135 < 0)
      {
        operator delete(*v134);
      }
    }
  }

  v51 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
  v52 = [v51 masterKey];
  v53 = v52 == 0;

  if (!v53)
  {
    v54 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v56 = [v55 masterKey];
      v57 = v56;
      v58 = [v56 bytes];
      v59 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v60 = [v59 masterKey];
      v61 = [v60 length];
      ctu::hex(v134, v58, v61, v62);
      if (v135 >= 0)
      {
        v63 = v134;
      }

      else
      {
        v63 = *v134;
      }

      *v136 = 136642819;
      v137 = v63;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "\t\t  - Master Key: \t%{sensitive}s\n", v136, 0xCu);
      if (v135 < 0)
      {
        operator delete(*v134);
      }
    }
  }

  v64 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
  v65 = [v64 PSKc];
  v66 = v65 == 0;

  if (!v66)
  {
    v67 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v69 = [v68 PSKc];
      v70 = v69;
      v71 = [v69 bytes];
      v72 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v73 = [v72 PSKc];
      v74 = [v73 length];
      ctu::hex(v134, v71, v74, v75);
      if (v135 >= 0)
      {
        v76 = v134;
      }

      else
      {
        v76 = *v134;
      }

      *v136 = 136642819;
      v137 = v76;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "\t\t  - PSKc: \t\t%{sensitive}s\n", v136, 0xCu);
      if (v135 < 0)
      {
        operator delete(*v134);
      }
    }
  }

  v77 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
  v78 = [v77 passPhrase];
  v79 = v78 == 0;

  if (!v79)
  {
    v80 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      v81 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v82 = [v81 passPhrase];
      v83 = v82;
      v84 = [v82 UTF8String];
      *v134 = 136315138;
      *&v134[4] = v84;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "\t\t  - Passphrase: \t%s\n", v134, 0xCu);
    }
  }

  v85 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
  v86 = [v85 channel];
  v87 = v86 == kTHNetworkChannel_None;

  if (!v87)
  {
    v88 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v89 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v90 = [v89 channel];
      *v134 = 67109120;
      *&v134[4] = v90;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "\t\t  - Network Channel: \t%u\n", v134, 8u);
    }
  }

  v91 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentialsDataSet];
  v92 = [v91 dataSetArray];
  if (v92)
  {
    v93 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentialsDataSet];
    v94 = [v93 dataSetArray];
    v95 = v94;
    v96 = [v94 bytes];
    v97 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentialsDataSet];
    v98 = [v97 dataSetArray];
    v99 = [v98 length];
    ctu::hex(v134, v96, v99, v100);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v134, "(unknown)");
  }

  v101 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
  {
    v102 = v134;
    if (v135 < 0)
    {
      v102 = *v134;
    }

    *v136 = 136642819;
    v137 = v102;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_INFO, "\t\t  - DataSet Credentials: %{sensitive}s\n", v136, 0xCu);
  }

  v103 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
  v104 = [v103 userInfo];
  v105 = v104 == 0;

  if (!v105)
  {
    v106 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      v107 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 credentials];
      v108 = [v107 userInfo];
      v109 = v108;
      v110 = [v108 UTF8String];
      *v136 = 136315138;
      v137 = v110;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "\t\t  - User Info: \t%s\n", v136, 0xCu);
    }
  }

  v111 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 keychainAccessGroup];
  v112 = v111 == 0;

  if (!v112)
  {
    v113 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
    {
      v114 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 keychainAccessGroup];
      v115 = v114;
      v116 = [v114 UTF8String];
      *v136 = 136315138;
      v137 = v116;
      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "\t\t  - Access Group: \t%s\n", v136, 0xCu);
    }
  }

  v117 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 creationDate];
  v118 = v117 == 0;

  if (!v118)
  {
    v119 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
    {
      v120 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 creationDate];
      v121 = [v120 description];
      v122 = v121;
      v123 = [v121 UTF8String];
      *v136 = 136315138;
      v137 = v123;
      _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, "\t\t  - Created on: \t%s\n", v136, 0xCu);
    }
  }

  v124 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 lastModificationDate];
  v125 = v124 == 0;

  if (!v125)
  {
    v126 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
    if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
    {
      v127 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v1 lastModificationDate];
      v128 = [v127 description];
      v129 = v128;
      v130 = [v128 UTF8String];
      *v136 = 136315138;
      v137 = v130;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_INFO, "\t\t  - Last modified on: \t%s\n", v136, 0xCu);
    }
  }

  v131 = log_get_logging_obg("com.apple.wpantund.tnm", "threadStart");
  if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
  {
    *v136 = 0;
    _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_INFO, "\t-----------------\n", v136, 2u);
  }

  if (v135 < 0)
  {
    operator delete(*v134);
  }

  if (v139 < 0)
  {
    operator delete(*buf);
  }

  if (v133 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001F3998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1001F3FCC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1001F42FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1001F4580(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F46A4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F5614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F5AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  v36 = *(v34 - 80);
  if (v36)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(v36);
  }

  if (*(v34 - 81) < 0)
  {
    operator delete(*(v34 - 104));
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F5D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F6394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F66E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1001F6D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1001F77B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  _Block_object_dispose(&a24, 8);
  v59 = a30;
  a30 = 0;

  if (a38)
  {
    (*(*a38 + 8))(a38);
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  v60 = *(v57 - 232);
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  if (v52 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1001F7BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __Block_byref_object_copy__307(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v3 = xpc_null_create();
  v4 = *(a2 + 48);
  *(a2 + 48) = v3;
}

void __Block_byref_object_dispose__308(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  v3 = *(a1 + 48);
}

void sub_1001F806C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1001F8428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1001F8B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F9170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1001F97D4(_Unwind_Exception *exception_object)
{
  if (v4 < 0)
  {
    operator delete(v2);
  }

  if (v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FB150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, int a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (*(v64 - 225) < 0)
  {
    operator delete(*(v64 - 248));
  }

  if (*(v64 - 169) < 0)
  {
    operator delete(*(v64 - 192));
  }

  if (a13 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1001FBEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, int a12, int a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (*(v61 - 169) < 0)
  {
    operator delete(*(v61 - 192));
  }

  if (a13 < 0)
  {
    operator delete(a10);
  }

  if (v56 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1001FE1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (v54 < 0)
  {
    operator delete(a15);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  _Unwind_Resume(a1);
}

void sub_1001FE9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1001FEDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1001FF894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10020020C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_100200A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (a24)
  {
    (*(*a24 + 8))(a24);
  }

  if (v41 < 0)
  {
    operator delete(v38);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100200D68(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10020115C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_1002015C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (*(v10 + 31) < 0)
  {
    operator delete(*(v10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_10020188C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (v19 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_100201B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19)
{
  v24 = *(v22 - 56);
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_100202B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100204128(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100204DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002058A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, char a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 137) < 0)
  {
    operator delete(*(v34 - 160));
  }

  if (a13 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_100206104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a14);
  }

  if (v32 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1002067EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_100206C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_100209108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (*(v42 - 201) < 0)
  {
    operator delete(*(v42 - 224));
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a35)
  {
    (*(*a35 + 8))(a35);
  }

  if (a39)
  {
    (*(*a39 + 8))(a39);
  }

  if (v39 < 0)
  {
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void sub_100209AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_100209DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020A818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = v16;

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_10020B2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (a29)
  {
    (*(*a29 + 8))(a29);
  }

  if (a36)
  {
    (*(*a36 + 8))(a36);
  }

  if (a43)
  {
    (*(*a43 + 8))(a43);
  }

  v52 = *(v50 - 152);
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(v50 - 120);
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  if (*(v49 + 31) < 0)
  {
    operator delete(*(v49 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_10020B730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020B9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_10020BDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_10020C440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v37 = *(v35 - 56);
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020C880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_10020F80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10020FB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v25 = *(v23 - 56);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  _Unwind_Resume(a1);
}

xpc::dict *xpc::dict::dict(xpc::dict *this, id *a2)
{
  v3 = *a2;
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

void xpc::dict::to_debug_string(xpc_object_t *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = xpc_copy_description(*this);
  std::string::basic_string[abi:ne200100]<0>(a2, v3);

  free(v3);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_100210500(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *boost::any_cast<unsigned int const>(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v3 = (*(*v2 + 16))(v2);
    }

    else
    {
    }

    v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == v5 || !strcmp(v4, v5))
    {
      return (*v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1002106B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *boost::any::holder<std::list<std::map<std::string,boost::any>>>::holder(void *result, void *a2)
{
  *result = off_1004C50E8;
  result[1] = result + 1;
  result[2] = result + 1;
  result[3] = 0;
  v2 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v3 = a2[1];
    v5 = *(*a2 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[1];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[1] = v4;
    *(v4 + 8) = result + 1;
    result[3] = v2;
    a2[2] = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2112;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_14_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void _GLOBAL__sub_I_ThreadNetworkManagerInstance_mm()
{
  v0 = objc_autoreleasePoolPush();
  std::string::basic_string[abi:ne200100]<0>(&mDaemonVersion, "Unknown");
  __cxa_atexit(&std::string::~string, &mDaemonVersion, &_mh_execute_header);
  std::string::basic_string[abi:ne200100]<0>(&mVendorVersion, "Unknown");
  __cxa_atexit(&std::string::~string, &mVendorVersion, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void threadSessionInfo::~threadSessionInfo(threadSessionInfo *this)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(this + 168, *(this + 22));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(this + 144, *(this + 19));
}

void sub_10021578C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  v19 = *(v17 - 40);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100216480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

void sub_100216964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v23 = v21;

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100216DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  _Unwind_Resume(a1);
}

void sub_100217010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002177AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1002179BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100217DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v26 = *(v24 - 80);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(v24 - 72);
  *(v24 - 72) = 0;

  if (v23 < 0)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1002183D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_10021866C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v18 < 0)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void sub_10021899C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100218C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100219148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1002195EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v26 = *(v24 - 80);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(v24 - 72);
  *(v24 - 72) = 0;

  if (v23 < 0)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1002197F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10021A794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v28 = *(v26 - 72);
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  if (v25 < 0)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_10021C020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10021C324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_ThreadNetworkManagerInstance_RCP2CAMetrics_extension_mm()
{
  v0 = objc_autoreleasePoolPush();
  *&dword_1004E5CC8 = 0u;
  *&qword_1004E5CD8 = 0u;
  *&qword_1004E5CE8 = 0u;
  *&dword_1004E5CF8 = 0u;
  *&qword_1004E5D08 = 0u;
  *&qword_1004E5D18 = 0u;
  *(&xmmword_1004E5D30 + 1) = 0;
  qword_1004E5D28 = @"Regular-Stop";
  *&xmmword_1004E5D30 = &xmmword_1004E5D30 + 8;
  qword_1004E5D58 = 0;
  qword_1004E5D50 = 0;
  qword_1004E5D40 = 0;
  qword_1004E5D48 = &qword_1004E5D50;
  __cxa_atexit(threadSessionInfo::~threadSessionInfo, threadSessionMetrics, &_mh_execute_header);
  byte_1004E5D70 = 0;
  qword_1004E5D78 = @"NA";
  qword_1004E5D80 = @"unknown";
  qword_1004E5D88 = @"unknown";
  qword_1004E5D90 = 0;
  __cxa_atexit(ThreadInfoBetweenRoles::~ThreadInfoBetweenRoles, &mThreadInfoBetweenRoles, &_mh_execute_header);
  qword_1004E5DE0 = 0;
  byte_1004E5DE8 = 0;
  qword_1004E5DF0 = 0;
  currentWEDInfo = 0u;
  *&qword_1004E5DC0 = 0u;
  __cxa_atexit(WEDInfoStruct::~WEDInfoStruct, &currentWEDInfo, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void ThreadNetworkLoggingCategory(unsigned int a1)
{
  if (ThreadNetworkLoggingCategory_onceToken != -1)
  {
    ThreadNetworkLoggingCategory_cold_1();
  }

  if (a1 >= 3)
  {
    __break(0x5512u);
    goto LABEL_9;
  }

  if (a1 == 2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v2 = ThreadNetworkLoggingCategory_logHandles[a1];

  v3 = v2;
}

void startThreadNetworkManagerBridge(void)
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("wpantund.TNM.Queue", v1);
  v3 = tnm_queue;
  tnm_queue = v2;

  if (!tnm_queue)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      startThreadNetworkManagerBridge(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v13 = dispatch_queue_create("periodicStats.TNM.Queue", v12);
  v14 = trigger_based_periodic_stats_collection_queue;
  trigger_based_periodic_stats_collection_queue = v13;

  if (!trigger_based_periodic_stats_collection_queue)
  {
    v15 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      startThreadNetworkManagerBridge(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v23 = [ThreadNetworkManagerInstance alloc];
  v24 = [(ThreadNetworkManagerInstance *)v23 init:tnm_queue statsQueue:trigger_based_periodic_stats_collection_queue];
  v25 = instance;
  instance = v24;

  if (!instance)
  {
    v26 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      startThreadNetworkManagerBridge(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  v34 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v36 = 136315394;
    v37 = "startThreadNetworkManagerBridge";
    v38 = 2112;
    v39 = instance;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s: Instance is initiated : %@, signalling semaphore.", &v36, 0x16u);
  }

  dispatch_semaphore_signal(instance_init_semaphore);
  v35 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = 136315138;
    v37 = "startThreadNetworkManagerBridge";
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s: instance semaphore is signalled...", &v36, 0xCu);
  }

  objc_autoreleasePoolPop(v0);
}

void threadNetworkManager_MsgHandlerBridge(const std::string::value_type *a1@<X0>, xpc::object *a2@<X1>, void **a3@<X8>)
{
  if (tnm_queue)
  {
    if (!instance)
    {
      v6 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "threadNetworkManager_MsgHandlerBridge";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: instance semaphore is waiting...", &buf, 0xCu);
      }

      dispatch_semaphore_wait(instance_init_semaphore, 0xFFFFFFFFFFFFFFFFLL);
    }

    v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1;
      if (a1[23] < 0)
      {
        v8 = *a1;
      }

      xpc::object::to_string(&buf, a2);
      if (v24 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      *v25 = 136315394;
      v26 = v8;
      v27 = 2080;
      v28 = p_buf;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TNM Handling command for client %s with inputs %s", v25, 0x16u);
      if (v24 < 0)
      {
        operator delete(buf);
      }
    }

    v10 = instance;
    if (a1[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *a1, *(a1 + 1));
    }

    else
    {
      v22 = *a1;
    }

    xpc::dict::dict(&v21, a2);
    if (v10)
    {
      [v10 threadNetworkManagerInstance_MsgHandler:&v22 message:&v21];
    }

    else
    {
      *a3 = 0;
    }

    v19 = v21;
    v21 = 0;

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = a1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TNM Msg received from client %s before TNM is started", &buf, 0xCu);
    }

    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
    }

    v14 = v13;
    v15 = v14;
    *a3 = v14;
    if (!v14 || xpc_get_type(v14) != &_xpc_type_dictionary)
    {
      v16 = xpc_null_create();
      v17 = *a3;
      *a3 = v16;
    }

    *&buf = a3;
    *(&buf + 1) = "ret";
    xpc::dict::object_proxy::operator=(&buf, &v20);
    v18 = v20;
    v20 = 0;
  }
}

void sub_10021EB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void xpc::dict::object_proxy::operator=(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = xpc_null_create();
  xpc::dict::object_proxy::operator=(a1, &v5, a2);
  v4 = v5;
  v5 = 0;
}

void startThreadNetworkManagerBridge(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%s: Failed to create tnm queue, unexpected scenario, asserting...", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%s: Failed to create periodicStats.TNM.Queue, unexpected scenario, asserting...", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%s: Failed to create Thread Network Manager Instance, unexpected scenario, asserting...", a5, a6, a7, a8, 2u);
}

void _GLOBAL__sub_I_ThreadNetworkManagerBridge_mm()
{
  v0 = objc_autoreleasePoolPush();
  instance_init_semaphore = dispatch_semaphore_create(0);

  objc_autoreleasePoolPop(v0);
}

void threadNetworkManager_MsgHandler(uint64_t a1, void **a2, uint64_t a3)
{
  IsThreadFeatureEnabled = ctrUtilIsThreadFeatureEnabled();
  logging_obg = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = IsThreadFeatureEnabled;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "threadNetworkManager_MsgHandler - os_feature_enabled : %d", &buf, 8u);
  }

  if ((IsThreadFeatureEnabled & 1) == 0)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "threadNetworkManager_MsgHandler";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: This functionality is disabled...", &buf, 0xCu);
    }

    v13 = xpc_null_create();
    if (*a3)
    {
      v14 = _Block_copy(*a3);
    }

    else
    {
      v14 = 0;
    }

    v16 = *(a3 + 8);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 1174405120;
    v29 = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke_0;
    v30 = &__block_descriptor_tmp_3;
    if (v14)
    {
      v17 = _Block_copy(v14);
    }

    else
    {
      v17 = 0;
    }

    v33 = 6;
    aBlock = v17;
    object = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object = xpc_null_create();
    }

    dispatch_async(v16, &buf);
    xpc_release(object);
    object = 0;
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v14)
    {
      _Block_release(v14);
    }

    goto LABEL_54;
  }

  v8 = tnm_queue == 0;
  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      threadNetworkManager_MsgHandler(v10);
    }

    v13 = xpc_null_create();
    if (*a3)
    {
      v15 = _Block_copy(*a3);
    }

    else
    {
      v15 = 0;
    }

    v21 = *(a3 + 8);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 1174405120;
    v29 = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke_0;
    v30 = &__block_descriptor_tmp_3;
    if (v15)
    {
      v22 = _Block_copy(v15);
    }

    else
    {
      v22 = 0;
    }

    v33 = 2;
    aBlock = v22;
    object = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object = xpc_null_create();
    }

    dispatch_async(v21, &buf);
    xpc_release(object);
    object = 0;
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v15)
    {
      _Block_release(v15);
    }

LABEL_54:
    xpc_release(v13);
    return;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "threadNetworkManager_MsgHandler";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: dispatching on msg bridge response handler ...", &buf, 0xCu);
  }

  v11 = tnm_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1174405120;
  v23[2] = ___Z31threadNetworkManager_MsgHandlerNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvhS7_EEE_block_invoke;
  v23[3] = &__block_descriptor_tmp_11;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v18 = *a2;
  v25 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v25 = xpc_null_create();
  }

  v19 = *a3;
  if (*a3)
  {
    v19 = _Block_copy(v19);
  }

  v20 = *(a3 + 8);
  v26 = v19;
  v27 = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  dispatch_async(v11, v23);
  if (v27)
  {
    dispatch_release(v27);
  }

  if (v26)
  {
    _Block_release(v26);
  }

  xpc_release(v25);
  v25 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10021F268(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___Z31threadNetworkManager_MsgHandlerNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvhS7_EEE_block_invoke(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v9 = *(a1 + 32);
  }

  v2 = *(a1 + 56);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  threadNetworkManager_MsgHandlerBridge(&v9, &object, &v10);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v3 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 72);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke_0;
  block[3] = &__block_descriptor_tmp_3;
  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  v14 = 0;
  aBlock = v7;
  v13 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v13 = xpc_null_create();
  }

  dispatch_async(v6, block);
  xpc_release(v13);
  v13 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v3);
  xpc_release(v10);
}

void sub_10021F4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *(a1 + 56) = xpc_null_create();
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 72);
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 32);

    operator delete(v4);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke_0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

void threadNetworkManager_MsgHandler(os_log_t log)
{
  v1 = 136315138;
  v2 = "threadNetworkManager_MsgHandler";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Returning error response handler ...", &v1, 0xCu);
}

double NetworkDiagnosticsReqTransmitReceive::NetworkDiagnosticsReqTransmitReceive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = a3;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  return result;
}

{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = a3;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  return result;
}

void NetworkDiagnosticsReqTransmitReceive::cleanup(NetworkDiagnosticsLogger **this, int a2, int a3)
{
  NetworkDiagnosticsLogger::cleanup(this[26], a2, a3, this + 11, this + 16, this + 21);
  if (a3)
  {
    *(this + 54) = 0;
    std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::clear(this + 1);
    std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::clear(this + 6);
    std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::clear(this + 11);
    std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::clear(this + 16);
    std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::clear(this + 21);
    this[29] = this[28];
    *(this + 124) = 0;
    *(this + 280) = 0;
  }
}

BOOL NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v8 = a2 + 23;
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v9 = inet_pton(30, a2, a3);
  if (v9 <= 0)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get(v8, v6, logging_obg);
    }
  }

  else
  {
    *(a3 + 32) = 16;
    *(a3 + 16) = 1;
    if (a4)
    {
      *(a3 + 17) = 8;
      *(a3 + 34) = 2;
      if (*(*a1 + 50) == 1)
      {
        *(a3 + 18) = 9;
        v10 = 3;
LABEL_11:
        *(a3 + 34) = v10;
      }
    }

    else
    {
      *(a3 + 17) = 4101;
      *(a3 + 19) = 8;
      *(a3 + 34) = 4;
      if (*(*a1 + 50) == 1)
      {
        *(a3 + 20) = 1033;
        v10 = 6;
        goto LABEL_11;
      }
    }
  }

  return v9 > 0;
}

BOOL NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_self_ncp(uint64_t a1, uint64_t *a2)
{
  *(a1 + 264) = *(a1 + 256);
  v4 = NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get(a1, a2, v7, 0);
  if (v4)
  {
    std::vector<Ctr_send_diagnostics_t>::push_back[abi:ne200100](a1 + 256, v7);
    *(a1 + 280) = 1;
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_self_ncp(a2, a1, logging_obg);
    }
  }

  return v4;
}

void std::vector<Ctr_send_diagnostics_t>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 2);
    v10 = v9 + 1;
    if (v9 + 1 > 0x71C71C71C71C71CLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 2);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x38E38E38E38E38ELL)
    {
      v12 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Ctr_send_diagnostics_t>>(a1, v12);
    }

    v13 = 36 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 8);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 36 * v9 + 36;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 8);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 36;
  }

  *(a1 + 8) = v8;
}

uint64_t NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_routers(NetworkDiagnosticsReqTransmitReceive *this)
{
  *(this + 33) = *(this + 32);
  v2 = *(this + 28);
  if (*(this + 29) == v2)
  {
LABEL_16:
    result = 1;
    *(this + 280) = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v11 = 0;
      getDestinationIPv6FromPrefixAndRloc16(*(v2 + 2 * v3), (*this + 6688), __p);
      *&v18[0] = *(this + 28) + 2 * v3;
      *(std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 1, *&v18[0]) + 12) = 1;
      v5 = NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get(this, __p, v18, 0);
      if (v5)
      {
        std::vector<Ctr_send_diagnostics_t>::push_back[abi:ne200100](this + 256, v18);
      }

      else
      {
        logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          v7 = __p;
          if (v11 < 0)
          {
            v7 = __p[0];
          }

          v8 = (*this + 6688);
          if (*(*this + 6711) < 0)
          {
            v8 = *v8;
          }

          *buf = 136315650;
          v13 = "send_networkdiagnostics_get_to_routers";
          v14 = 2080;
          v15 = v7;
          v16 = 2080;
          v17 = v8;
          _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "TDM: %s ERROR Cannot send network diagnostics get to neighbor router=%s MLPrefix=%s ", buf, 0x20u);
        }
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v5)
      {
        return 0;
      }

      v3 = ++v4;
      v2 = *(this + 28);
      if (v4 >= ((*(this + 29) - v2) >> 1))
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

void sub_10021FD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_children(NetworkDiagnosticsReqTransmitReceive *this)
{
  if (!*(this + 19) && !*(this + 24))
  {
    *(this + 249) = 1;
  }

  v2 = 1;
  if (*(*this + 44))
  {
    *(this + 54) = 3;
    *(this + 33) = *(this + 32);
    v3 = (this + 144);
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      v16 = 0;
      v17 = 0;
      __p = 0;
      getDestinationIPv6FromPrefixAndRloc16(v3[8], (*this + 6688), &__p);
      *v22 = v3 + 8;
      *(std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 6, v3 + 8) + 12) = 1;
      v4 = NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get(this, &__p, v22, 0);
      if (v4)
      {
        std::vector<Ctr_send_diagnostics_t>::push_back[abi:ne200100](this + 256, v22);
      }

      else
      {
        logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          p_p = &__p;
          if (v17 < 0)
          {
            p_p = __p;
          }

          *buf = 136315394;
          v19 = "send_networkdiagnostics_get_to_children";
          v20 = 2080;
          v21 = p_p;
          _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "TDM: %s Cannot send network diagnostics get to FED child node %s", buf, 0x16u);
        }
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p);
        if (!v4)
        {
          return 0;
        }
      }

      else if (!v4)
      {
        return 0;
      }
    }

    if (*(*this + 44) == 2)
    {
      v7 = (this + 184);
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        v16 = 0;
        v17 = 0;
        __p = 0;
        getDestinationIPv6FromPrefixAndRloc16(v7[8], (*this + 6688), &__p);
        *v22 = v7 + 8;
        *(std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(this + 6, v7 + 8) + 12) = 1;
        v8 = NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get(this, &__p, v22, 1);
        if (v8)
        {
          std::vector<Ctr_send_diagnostics_t>::push_back[abi:ne200100](this + 256, v22);
        }

        else
        {
          v9 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = &__p;
            if (v17 < 0)
            {
              v10 = __p;
            }

            *buf = 136315394;
            v19 = "send_networkdiagnostics_get_to_children";
            v20 = 2080;
            v21 = v10;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TDM: %s Cannot send network diagnostics get to SED child node %s", buf, 0x16u);
          }
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p);
        }

        if (!v8)
        {
          return 0;
        }
      }
    }

    else
    {
      v11 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(this + 19);
        v13 = *(this + 24);
        *v22 = 136315650;
        *&v22[4] = "send_networkdiagnostics_get_to_children";
        v23 = 2048;
        v24 = v12;
        v25 = 2048;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TDM: %s Send to all children not enabled. Exit here fedsetsize=%lu sedsetsize=%lu", v22, 0x20u);
      }
    }

    v2 = 1;
    *(this + 280) = 1;
  }

  return v2;
}

void NetworkDiagnosticsReqTransmitReceive::populate_pending_diag_req_destinations(void *a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = a3 + 3;
    do
    {
      if (((*(v6 + (v5 >> 3)) << (v5 & 7)) & 0x80) != 0 && getRloc16FromRouterId(v5) != a2)
      {
        Rloc16FromRouterId = getRloc16FromRouterId(v5);
        v9 = a1[29];
        v8 = a1[30];
        if (v9 >= v8)
        {
          v11 = a1[28];
          v12 = v9 - v11;
          v13 = (v9 - v11) >> 1;
          if (v13 <= -2)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v14 = v8 - v11;
          if (v14 <= v13 + 1)
          {
            v15 = v13 + 1;
          }

          else
          {
            v15 = v14;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>((a1 + 28), v16);
          }

          v17 = (v9 - v11) >> 1;
          v18 = (2 * v13);
          v19 = (2 * v13 - 2 * v17);
          *v18 = Rloc16FromRouterId;
          v10 = v18 + 1;
          memcpy(v19, v11, v12);
          v20 = a1[28];
          a1[28] = v19;
          a1[29] = v10;
          a1[30] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v9 = Rloc16FromRouterId;
          v10 = v9 + 2;
        }

        a1[29] = v10;
      }

      ++v5;
    }

    while (v5 != 63);
  }
}

BOOL NetworkDiagnosticsReqTransmitReceive::parse_rsp_tlvs(uint64_t a1, unsigned __int8 *a2, unsigned int a3, void *a4, _WORD *a5, _BYTE *a6)
{
  if (a2)
  {
    if (a3)
    {
      v12 = 0;
      v13 = a2;
      do
      {
        v14 = *v13;
        if (v14 > 7)
        {
          switch(v14)
          {
            case 8u:
              a4[3] = v13;
              break;
            case 9u:
              a4[4] = v13;
              break;
            case 0x10u:
              a4[2] = v13;
              break;
          }
        }

        else
        {
          switch(v14)
          {
            case 1u:
              *a5 = bswap32(*(v13 + 1)) >> 16;
              *a6 = 1;
              break;
            case 4u:
              a4[5] = v13;
              break;
            case 5u:
              a4[1] = v13;
              if (*(a1 + 216) == 1)
              {
                NetworkDiagnosticsReqTransmitReceive::populate_pending_diag_req_destinations(a1, *a5, v13);
              }

              break;
          }
        }

        v15 = v13[1];
        if (v15 == 255)
        {
          v16 = 3;
        }

        else
        {
          v16 = 1;
        }

        if (v15 == 255)
        {
          v19 = v13[2];
          v20 = v13[3];
          v15 = v20 | (v19 << 8);
          v18 = v20 | (v19 << 8);
          v17 = 3;
        }

        else
        {
          v17 = 1;
          v18 = v13[1];
        }

        v13 += v17 + v18 + 1;
        v21 = v12 + v16 + v15;
        v12 = v21 + 1;
      }

      while (a3 > (v21 + 1));
    }
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsReqTransmitReceive::parse_rsp_tlvs();
    }
  }

  return a2 != 0;
}

BOOL NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_self(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v3 = (a1 + 216);
  v4 = *(a1 + 216);
  if (v4 == 1)
  {
    *(a2 + 1) = 0;
    LOWORD(v11) = a3;
    v8 = *(a2 + 16);
    v12 = *a2;
    v13 = v8;
    v14 = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,NetworkDiagDataType>>((a1 + 8), &v11);
    NetworkDiagnosticsLogger::output_data_to_file(*(a1 + 208), a3, a2, v3, (a1 + 88), (a1 + 128), (a1 + 168));
    v11 = &v15;
    *(std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a1 + 8), &v15) + 25) = 1;
    if (*(a1 + 224) == *(a1 + 232))
    {
      if (*(a1 + 152) || *(a1 + 192))
      {
        NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_children(a1);
      }

      else
      {
        *(a1 + 248) = 257;
      }
    }

    else
    {
      *(a1 + 216) = 2;
      NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_routers(a1);
      *(a1 + 232) = *(a1 + 224);
    }
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_self(v3);
    }
  }

  return v4 == 1;
}

BOOL NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_routers(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v14 = a3;
  v3 = (a1 + 216);
  v4 = *(a1 + 216);
  if (v4 == 2)
  {
    *(a2 + 1) = 0;
    v15 = &v14;
    v7 = std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a1 + 8), &v14);
    v8 = *a2;
    v9 = *(a2 + 16);
    *(v7 + 7) = *(a2 + 32);
    *(v7 + 5) = v9;
    *(v7 + 3) = v8;
    NetworkDiagnosticsLogger::output_data_to_file(*(a1 + 208), v14, a2, v3, (a1 + 88), (a1 + 128), (a1 + 168));
    v15 = &v14;
    *(std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a1 + 8), &v14) + 25) = 1;
    v10 = *(a1 + 24);
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = 1;
    do
    {
      v11 &= *(v10 + 25);
      v10 = *v10;
    }

    while (v10);
    if (v11)
    {
LABEL_6:
      *(a1 + 248) = 1;
      NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_children(a1);
    }
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_routers(v3);
    }
  }

  return v4 == 2;
}

BOOL NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_children(uint64_t a1, uint64_t a2, unsigned __int16 a3, _BYTE *a4)
{
  v18 = a3;
  v4 = (a1 + 216);
  v5 = *(a1 + 216);
  if (v5 == 3)
  {
    *(a2 + 1) = 0;
    *buf = &v18;
    v9 = std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a1 + 48), &v18);
    v10 = *a2;
    v11 = *(a2 + 16);
    *(v9 + 7) = *(a2 + 32);
    *(v9 + 5) = v11;
    *(v9 + 3) = v10;
    NetworkDiagnosticsLogger::output_data_to_file(*(a1 + 208), v18, a2, v4, (a1 + 88), (a1 + 128), (a1 + 168));
    *buf = &v18;
    *(std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a1 + 48), &v18) + 25) = 1;
    *a4 = 1;
    v12 = *(a1 + 64);
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = 1;
    do
    {
      if ((*(v12 + 25) & 1) == 0)
      {
        logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v15 = *(v12 + 8);
          *buf = 136315394;
          *&buf[4] = "process_diag_rsp_from_children";
          v20 = 1024;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM: %s Still waiting for diag rsp from Child node Rloc16=0x%x ", buf, 0x12u);
        }

        v13 = 0;
        *a4 = 0;
      }

      v12 = *v12;
    }

    while (v12);
    if (v13)
    {
LABEL_10:
      *(a1 + 249) = 1;
    }
  }

  else
  {
    v16 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_children(v4);
    }
  }

  return v5 == 3;
}

BOOL NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response(NetworkDiagnosticsReqTransmitReceive *this, unsigned __int8 *a2, unsigned int a3)
{
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  v12 = 0;
  result = NetworkDiagnosticsReqTransmitReceive::parse_rsp_tlvs(this, a2, a3, v14, &v13, &v12);
  if (result)
  {
    if (v12)
    {
      v5 = *(this + 54);
      switch(v5)
      {
        case 3:
          if (!NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_children(this, v14, v13, &v11))
          {
            logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
            result = os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response();
            return 0;
          }

          break;
        case 2:
          if (!NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_routers(this, v14, v13))
          {
            v8 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
            result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response();
            return 0;
          }

          break;
        case 1:
          if (!NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_self(this, v14, v13))
          {
            v6 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
            result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response();
            return 0;
          }

          break;
        default:
          v9 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
          result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response(this + 54);
          return 0;
      }

      return 1;
    }

    v7 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response();
    return 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Ctr_send_diagnostics_t>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,NetworkDiagDataType>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,NetworkDiagDataType>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,NetworkDiagDataType>>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

unsigned int *OUTLINED_FUNCTION_2_7@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get(char *a1, void *a2, os_log_t log)
{
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "TDM: Bad destination IP address passed  %s", &v4, 0xCu);
}

void NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_self_ncp(uint64_t *a1, uint64_t a2, os_log_t log)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = (*a2 + 6688);
  if (*(*a2 + 6711) < 0)
  {
    v4 = *v4;
  }

  v5 = 136315650;
  v6 = "send_networkdiagnostics_get_to_self_ncp";
  v7 = 2080;
  v8 = v3;
  v9 = 2080;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "TDM: %s ERROR Cannot send network self dest =%s MLPrefix=%s ", &v5, 0x20u);
}

void NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_self(unsigned int *a1)
{
  OUTLINED_FUNCTION_2_7(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_routers(unsigned int *a1)
{
  OUTLINED_FUNCTION_2_7(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void NetworkDiagnosticsReqTransmitReceive::process_diag_rsp_from_children(unsigned int *a1)
{
  OUTLINED_FUNCTION_2_7(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response(unsigned int *a1)
{
  OUTLINED_FUNCTION_2_7(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1002219D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, boost::filesystem::detail::dir_itr_imp *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::~intrusive_ptr(&a18);
  operator delete(v18);
  _Unwind_Resume(a1);
}

uint64_t create_new_tdm_log_folder(uint64_t a1, uint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"%@", @"/var/mobile/Library/Logs/CrashReporter/CoreThread/topology"];
  v4 = +[NSFileManager defaultManager];
  v5 = fileManager;
  fileManager = v4;

  v14 = 0;
  v6 = [fileManager fileExistsAtPath:v3 isDirectory:&v14];
  if (v14)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      create_new_tdm_log_folder(v7, &v14);
    }

    goto LABEL_8;
  }

  v13 = 0;
  [fileManager createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v13];
  v8 = v13;
  if (!v8)
  {
LABEL_8:
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    v11 = v3;
    std::string::assign(a2, [v3 cStringUsingEncoding:4]);
    v10 = 1;
    goto LABEL_12;
  }

  v9 = v8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = @"/var/mobile/Library/Logs/CrashReporter/CoreThread/topology";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "error creating directory %@: %@", buf, 0x16u);
  }

  v10 = 0;
LABEL_12:

  return v10;
}

boost::filesystem::detail::dir_itr_imp **boost::filesystem::directory_iterator::directory_iterator(boost::filesystem::detail::dir_itr_imp **a1, std::string *a2, const boost::filesystem::path *a3, uint64_t a4, boost::system::error_code *a5)
{
  *a1 = 0;
  boost::filesystem::detail::directory_iterator_construct(a1, a2, a3, 0, a5);
  return a1;
}

uint64_t boost::filesystem::directory_iterator::dereference(boost::filesystem::directory_iterator *this)
{
  if (!*this || !*(boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::operator->(this) + 48))
  {
    boost::filesystem::directory_iterator::dereference();
  }

  return boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::operator->(this) + 8;
}

uint64_t boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::operator->(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "intrusive_ptr.hpp", 199, "px != 0");
  }

  return result;
}

BOOL boost::filesystem::directory_iterator::equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  if (*a1)
  {
    if (*(boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::operator->(a1) + 48))
    {
      return 0;
    }

    v2 = *a2;
  }

  return !v2 || *(boost::intrusive_ptr<boost::filesystem::detail::dir_itr_imp>::operator->(a2) + 48) == 0;
}

void create_new_tdm_log_folder(char a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = v2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Directory Already exists.Cannot create, isFile: %d, isDir: %d", v3, 0xEu);
}

void NetworkDiagnosticsPendingConfig::NetworkDiagnosticsPendingConfig(NetworkDiagnosticsPendingConfig *this)
{
  *(this + 8) = xmmword_100448450;
  *(this + 6) = 3610;
  *(this + 1) = 257;
  *(this + 3) = 1;
  *(this + 1) = 2;
  atomic_store(0, this);
}

{
  *(this + 8) = xmmword_100448450;
  *(this + 6) = 3610;
  *(this + 1) = 257;
  *(this + 3) = 1;
  *(this + 1) = 2;
  atomic_store(0, this);
}

void NetworkDiagnosticsPendingConfig::NetworkDiagnosticsPendingConfig(NetworkDiagnosticsPendingConfig *this, const NetworkDiagnosticsPendingConfig *a2)
{
  *(this + 8) = *(a2 + 8);
  *(this + 6) = *(a2 + 6);
  *(this + 1) = *(a2 + 1);
  *(this + 3) = *(a2 + 3);
  *(this + 1) = *(a2 + 1);
  v2 = atomic_load(a2);
  atomic_store(v2 & 1, this);
}

{
  *(this + 8) = *(a2 + 8);
  *(this + 6) = *(a2 + 6);
  *(this + 1) = *(a2 + 1);
  *(this + 3) = *(a2 + 3);
  *(this + 1) = *(a2 + 1);
  v2 = atomic_load(a2);
  atomic_store(v2 & 1, this);
}

__n128 NetworkDiagnosticsPendingConfig::operator=(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  v3 = atomic_load(a2);
  atomic_store(v3 & 1, a1);
  return result;
}

void NetworkDiagnosticsConfigDb::NetworkDiagnosticsConfigDb(NetworkDiagnosticsConfigDb *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 45) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  NetworkDiagnosticsLogFileDescriptors::NetworkDiagnosticsLogFileDescriptors((this + 368));
  *(this + 6616) = 0u;
  *(this + 829) = 0;
  *(this + 6664) = 0u;
  *(this + 6680) = 0u;
  *(this + 6696) = 0u;
  *(this + 6712) = 0u;
  *(this + 6721) = 0u;
  *(this + 6744) = 1;
  *(this + 1685) = 2;
  *(this + 5) = 0x200000E1ALL;
  *(this + 24) = 257;
  *(this + 50) = 1;
  *(this + 3) = 0xF0000000FLL;
  *(this + 4) = 0x3C00000014;
}

void sub_100222080(_Unwind_Exception *a1)
{
  NetworkDiagnosticsLogFileNames::~NetworkDiagnosticsLogFileNames(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t NetworkDiagnosticsConfigDb::update(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  *(a1 + 40) = *(a2 + 24);
  *(a1 + 48) = *(a2 + 1);
  *(a1 + 50) = *(a2 + 3);
  if ((*(a1 + 6736) & 1) == 0)
  {
    *(a1 + 44) = *(a2 + 4);
    *(a1 + 49) = *(a2 + 2);
  }

  return 1;
}

void NetworkDiagnosticsConfigDb::updateNCPProperties(uint64_t a1, const std::string *a2, const std::string *a3, const std::string *a4, __int16 a5, uint64_t a6, __int16 a7, __int16 a8, int a9)
{
  v16 = (a1 + 6688);
  std::string::operator=((a1 + 6688), a2);
  v17 = (a1 + 6712);
  std::string::operator=((a1 + 6712), a3);
  v18 = (a1 + 6664);
  std::string::operator=((a1 + 6664), a4);
  *(a1 + 6656) = a5;
  *(a1 + 6648) = a6;
  *(a1 + 6658) = a7;
  *(a1 + 6640) = a8;
  *(a1 + 6660) = a9;
  logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 6711) < 0)
    {
      v16 = *v16;
    }

    if (*(a1 + 6687) < 0)
    {
      v18 = *v18;
    }

    if (*(a1 + 6735) < 0)
    {
      v17 = *v17;
    }

    v20 = *(a1 + 6640);
    v21 = *(a1 + 6656);
    v22 = *(a1 + 6658);
    v23 = *(a1 + 6648);
    v24 = 136316930;
    v25 = v16;
    v26 = 2080;
    v27 = v18;
    v28 = 2080;
    v29 = v17;
    v30 = 1024;
    v31 = v20;
    v32 = 1024;
    v33 = v21;
    v34 = 1024;
    v35 = v22;
    v36 = 2048;
    v37 = v23;
    v38 = 1024;
    v39 = a9;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM: NetworkDiagnosticsConfigDb::updateNCPProperties mLPrefix=%s nwName=%s mLAddr=%s leaderRouterId=%d panId=%d channel=%d xPanId=%llu partitionId=%d", &v24, 0x42u);
  }
}

BOOL NetworkDiagnosticsConfigDb::initialize(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::append(&v153, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_network_diagnostics.txt");
  if ((v152 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v10 = v152;
  }

  else
  {
    v10 = v151;
  }

  v11 = std::string::append(&v154, p_p, v10);
  v12 = v11->__r_.__value_.__r.__words[0];
  v155[0] = v11->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
  v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v14 = v155[0];
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 71) = *(v155 + 7);
  *(a1 + 79) = v13;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = std::string::append(&v153, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_shell_output.txt");
  if ((v152 & 0x80u) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v21 = v152;
  }

  else
  {
    v21 = v151;
  }

  v22 = std::string::append(&v154, v20, v21);
  v23 = v22->__r_.__value_.__r.__words[0];
  v155[0] = v22->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
  v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v25 = v155[0];
  *(a1 + 80) = v23;
  *(a1 + 88) = v25;
  *(a1 + 95) = *(v155 + 7);
  *(a1 + 103) = v24;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v26 = *(a2 + 23);
  if (v26 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v26 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  v29 = std::string::append(&v153, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_legend.svg");
  if ((v152 & 0x80u) == 0)
  {
    v31 = &__p;
  }

  else
  {
    v31 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v32 = v152;
  }

  else
  {
    v32 = v151;
  }

  v33 = std::string::append(&v154, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v155[0] = v33->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v36 = v155[0];
  *(a1 + 104) = v34;
  *(a1 + 112) = v36;
  *(a1 + 119) = *(v155 + 7);
  *(a1 + 127) = v35;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v37 = *(a2 + 23);
  if (v37 >= 0)
  {
    v38 = a2;
  }

  else
  {
    v38 = *a2;
  }

  if (v37 >= 0)
  {
    v39 = *(a2 + 23);
  }

  else
  {
    v39 = *(a2 + 8);
  }

  v40 = std::string::append(&v153, v38, v39);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_counters.txt");
  if ((v152 & 0x80u) == 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v43 = v152;
  }

  else
  {
    v43 = v151;
  }

  v44 = std::string::append(&v154, v42, v43);
  v45 = v44->__r_.__value_.__r.__words[0];
  v155[0] = v44->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v44->__r_.__value_.__r.__words[1] + 7);
  v46 = HIBYTE(v44->__r_.__value_.__r.__words[2]);
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v47 = v155[0];
  *(a1 + 128) = v45;
  *(a1 + 136) = v47;
  *(a1 + 143) = *(v155 + 7);
  *(a1 + 151) = v46;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v48 = *(a2 + 23);
  if (v48 >= 0)
  {
    v49 = a2;
  }

  else
  {
    v49 = *a2;
  }

  if (v48 >= 0)
  {
    v50 = *(a2 + 23);
  }

  else
  {
    v50 = *(a2 + 8);
  }

  v51 = std::string::append(&v153, v49, v50);
  v52 = *&v51->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_about.txt");
  if ((v152 & 0x80u) == 0)
  {
    v53 = &__p;
  }

  else
  {
    v53 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v54 = v152;
  }

  else
  {
    v54 = v151;
  }

  v55 = std::string::append(&v154, v53, v54);
  v56 = v55->__r_.__value_.__r.__words[0];
  v155[0] = v55->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v55->__r_.__value_.__r.__words[1] + 7);
  v57 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v58 = v155[0];
  *(a1 + 152) = v56;
  *(a1 + 160) = v58;
  *(a1 + 167) = *(v155 + 7);
  *(a1 + 175) = v57;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v59 = *(a2 + 23);
  if (v59 >= 0)
  {
    v60 = a2;
  }

  else
  {
    v60 = *a2;
  }

  if (v59 >= 0)
  {
    v61 = *(a2 + 23);
  }

  else
  {
    v61 = *(a2 + 8);
  }

  v62 = std::string::append(&v153, v60, v61);
  v63 = *&v62->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v63;
  v62->__r_.__value_.__l.__size_ = 0;
  v62->__r_.__value_.__r.__words[2] = 0;
  v62->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_services_discovered.txt");
  if ((v152 & 0x80u) == 0)
  {
    v64 = &__p;
  }

  else
  {
    v64 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v65 = v152;
  }

  else
  {
    v65 = v151;
  }

  v66 = std::string::append(&v154, v64, v65);
  v67 = v66->__r_.__value_.__r.__words[0];
  v155[0] = v66->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v66->__r_.__value_.__r.__words[1] + 7);
  v68 = HIBYTE(v66->__r_.__value_.__r.__words[2]);
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v69 = v155[0];
  *(a1 + 176) = v67;
  *(a1 + 184) = v69;
  *(a1 + 191) = *(v155 + 7);
  *(a1 + 199) = v68;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v70 = *(a2 + 23);
  if (v70 >= 0)
  {
    v71 = a2;
  }

  else
  {
    v71 = *a2;
  }

  if (v70 >= 0)
  {
    v72 = *(a2 + 23);
  }

  else
  {
    v72 = *(a2 + 8);
  }

  v73 = std::string::append(&v153, v71, v72);
  v74 = *&v73->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_services_resolved.txt");
  if ((v152 & 0x80u) == 0)
  {
    v75 = &__p;
  }

  else
  {
    v75 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v76 = v152;
  }

  else
  {
    v76 = v151;
  }

  v77 = std::string::append(&v154, v75, v76);
  v78 = v77->__r_.__value_.__r.__words[0];
  v155[0] = v77->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v77->__r_.__value_.__r.__words[1] + 7);
  v79 = HIBYTE(v77->__r_.__value_.__r.__words[2]);
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v80 = v155[0];
  *(a1 + 200) = v78;
  *(a1 + 208) = v80;
  *(a1 + 215) = *(v155 + 7);
  *(a1 + 223) = v79;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v81 = *(a2 + 23);
  if (v81 >= 0)
  {
    v82 = a2;
  }

  else
  {
    v82 = *a2;
  }

  if (v81 >= 0)
  {
    v83 = *(a2 + 23);
  }

  else
  {
    v83 = *(a2 + 8);
  }

  v84 = std::string::append(&v153, v82, v83);
  v85 = *&v84->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v85;
  v84->__r_.__value_.__l.__size_ = 0;
  v84->__r_.__value_.__r.__words[2] = 0;
  v84->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_cache_table.txt");
  if ((v152 & 0x80u) == 0)
  {
    v86 = &__p;
  }

  else
  {
    v86 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v87 = v152;
  }

  else
  {
    v87 = v151;
  }

  v88 = std::string::append(&v154, v86, v87);
  v89 = v88->__r_.__value_.__r.__words[0];
  v155[0] = v88->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v88->__r_.__value_.__r.__words[1] + 7);
  v90 = HIBYTE(v88->__r_.__value_.__r.__words[2]);
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v91 = v155[0];
  *(a1 + 224) = v89;
  *(a1 + 232) = v91;
  *(a1 + 239) = *(v155 + 7);
  *(a1 + 247) = v90;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v92 = *(a2 + 23);
  if (v92 >= 0)
  {
    v93 = a2;
  }

  else
  {
    v93 = *a2;
  }

  if (v92 >= 0)
  {
    v94 = *(a2 + 23);
  }

  else
  {
    v94 = *(a2 + 8);
  }

  v95 = std::string::append(&v153, v93, v94);
  v96 = *&v95->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v96;
  v95->__r_.__value_.__l.__size_ = 0;
  v95->__r_.__value_.__r.__words[2] = 0;
  v95->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_fed_info.txt");
  if ((v152 & 0x80u) == 0)
  {
    v97 = &__p;
  }

  else
  {
    v97 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v98 = v152;
  }

  else
  {
    v98 = v151;
  }

  v99 = std::string::append(&v154, v97, v98);
  v100 = v99->__r_.__value_.__r.__words[0];
  v155[0] = v99->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v99->__r_.__value_.__r.__words[1] + 7);
  v101 = HIBYTE(v99->__r_.__value_.__r.__words[2]);
  v99->__r_.__value_.__l.__size_ = 0;
  v99->__r_.__value_.__r.__words[2] = 0;
  v99->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v102 = v155[0];
  *(a1 + 248) = v100;
  *(a1 + 256) = v102;
  *(a1 + 263) = *(v155 + 7);
  *(a1 + 271) = v101;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v103 = *(a2 + 23);
  if (v103 >= 0)
  {
    v104 = a2;
  }

  else
  {
    v104 = *a2;
  }

  if (v103 >= 0)
  {
    v105 = *(a2 + 23);
  }

  else
  {
    v105 = *(a2 + 8);
  }

  v106 = std::string::append(&v153, v104, v105);
  v107 = *&v106->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v107;
  v106->__r_.__value_.__l.__size_ = 0;
  v106->__r_.__value_.__r.__words[2] = 0;
  v106->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_sed_info.txt");
  if ((v152 & 0x80u) == 0)
  {
    v108 = &__p;
  }

  else
  {
    v108 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v109 = v152;
  }

  else
  {
    v109 = v151;
  }

  v110 = std::string::append(&v154, v108, v109);
  v111 = v110->__r_.__value_.__r.__words[0];
  v155[0] = v110->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v110->__r_.__value_.__r.__words[1] + 7);
  v112 = HIBYTE(v110->__r_.__value_.__r.__words[2]);
  v110->__r_.__value_.__l.__size_ = 0;
  v110->__r_.__value_.__r.__words[2] = 0;
  v110->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v113 = v155[0];
  *(a1 + 272) = v111;
  *(a1 + 280) = v113;
  *(a1 + 287) = *(v155 + 7);
  *(a1 + 295) = v112;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v114 = *(a2 + 23);
  if (v114 >= 0)
  {
    v115 = a2;
  }

  else
  {
    v115 = *a2;
  }

  if (v114 >= 0)
  {
    v116 = *(a2 + 23);
  }

  else
  {
    v116 = *(a2 + 8);
  }

  v117 = std::string::append(&v153, v115, v116);
  v118 = *&v117->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v118;
  v117->__r_.__value_.__l.__size_ = 0;
  v117->__r_.__value_.__r.__words[2] = 0;
  v117->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_router_info.txt");
  if ((v152 & 0x80u) == 0)
  {
    v119 = &__p;
  }

  else
  {
    v119 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v120 = v152;
  }

  else
  {
    v120 = v151;
  }

  v121 = std::string::append(&v154, v119, v120);
  v122 = v121->__r_.__value_.__r.__words[0];
  v155[0] = v121->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v121->__r_.__value_.__r.__words[1] + 7);
  v123 = HIBYTE(v121->__r_.__value_.__r.__words[2]);
  v121->__r_.__value_.__l.__size_ = 0;
  v121->__r_.__value_.__r.__words[2] = 0;
  v121->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  v124 = v155[0];
  *(a1 + 296) = v122;
  *(a1 + 304) = v124;
  *(a1 + 311) = *(v155 + 7);
  *(a1 + 319) = v123;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v125 = *(a2 + 23);
  if (v125 >= 0)
  {
    v126 = a2;
  }

  else
  {
    v126 = *a2;
  }

  if (v125 >= 0)
  {
    v127 = *(a2 + 23);
  }

  else
  {
    v127 = *(a2 + 8);
  }

  v128 = std::string::append(&v153, v126, v127);
  v129 = *&v128->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v128->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v129;
  v128->__r_.__value_.__l.__size_ = 0;
  v128->__r_.__value_.__r.__words[2] = 0;
  v128->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_network_diagnostics.dot");
  if ((v152 & 0x80u) == 0)
  {
    v130 = &__p;
  }

  else
  {
    v130 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v131 = v152;
  }

  else
  {
    v131 = v151;
  }

  v132 = std::string::append(&v154, v130, v131);
  v133 = v132->__r_.__value_.__r.__words[0];
  v155[0] = v132->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v132->__r_.__value_.__r.__words[1] + 7);
  v134 = HIBYTE(v132->__r_.__value_.__r.__words[2]);
  v132->__r_.__value_.__l.__size_ = 0;
  v132->__r_.__value_.__r.__words[2] = 0;
  v132->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v135 = v155[0];
  *(a1 + 320) = v133;
  *(a1 + 328) = v135;
  *(a1 + 335) = *(v155 + 7);
  *(a1 + 343) = v134;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v153, "/");
  v136 = *(a2 + 23);
  if (v136 >= 0)
  {
    v137 = a2;
  }

  else
  {
    v137 = *a2;
  }

  if (v136 >= 0)
  {
    v138 = *(a2 + 23);
  }

  else
  {
    v138 = *(a2 + 8);
  }

  v139 = std::string::append(&v153, v137, v138);
  v140 = *&v139->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v139->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v140;
  v139->__r_.__value_.__l.__size_ = 0;
  v139->__r_.__value_.__r.__words[2] = 0;
  v139->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "_nwdiag_legend.dot");
  if ((v152 & 0x80u) == 0)
  {
    v141 = &__p;
  }

  else
  {
    v141 = __p;
  }

  if ((v152 & 0x80u) == 0)
  {
    v142 = v152;
  }

  else
  {
    v142 = v151;
  }

  v143 = std::string::append(&v154, v141, v142);
  v144 = v143->__r_.__value_.__r.__words[0];
  v155[0] = v143->__r_.__value_.__l.__size_;
  *(v155 + 7) = *(&v143->__r_.__value_.__r.__words[1] + 7);
  v145 = HIBYTE(v143->__r_.__value_.__r.__words[2]);
  v143->__r_.__value_.__l.__size_ = 0;
  v143->__r_.__value_.__r.__words[2] = 0;
  v143->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  v146 = v155[0];
  *(a1 + 344) = v144;
  *(a1 + 352) = v146;
  *(a1 + 359) = *(v155 + 7);
  *(a1 + 367) = v145;
  if (v152 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  v147 = NetworkDiagnosticsConfigDb::openFiles(a1, a2);
  if (!v147)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsConfigDb::initialize(logging_obg);
    }
  }

  return v147;
}

void sub_100222F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

BOOL NetworkDiagnosticsConfigDb::openFiles(uint64_t a1, uint64_t *a2)
{
  if (create_new_tdm_log_folder(a2, a1 + 6616))
  {
    remove_old_files();
  }

  logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  result = os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR);
  if (result)
  {
    NetworkDiagnosticsConfigDb::openFiles(a2, logging_obg);
    return 0;
  }

  return result;
}

uint64_t NetworkDiagnosticsConfigDb::closeFiles(NetworkDiagnosticsConfigDb *this)
{
  v2 = (this + 368);
  if ((*(this + *(*(this + 46) - 24) + 400) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  if ((*(this + *(*(this + 685) - 24) + 5512) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 685) - 24) + 5480), *(this + *(*(this + 685) - 24) + 5512) | 4);
  }

  if ((*(this + *(*(this + 756) - 24) + 6080) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 756) - 24) + 6048), *(this + *(*(this + 756) - 24) + 6080) | 4);
  }

  if ((*(this + *(*(this + 259) - 24) + 2104) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 259) - 24) + 2072), *(this + *(*(this + 259) - 24) + 2104) | 4);
  }

  if ((*(this + *(*(this + 472) - 24) + 3808) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 472) - 24) + 3776), *(this + *(*(this + 472) - 24) + 3808) | 4);
  }

  if ((*(this + *(*(this + 543) - 24) + 4376) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 543) - 24) + 4344), *(this + *(*(this + 543) - 24) + 4376) | 4);
  }

  if ((*(this + *(*(this + 614) - 24) + 4944) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 614) - 24) + 4912), *(this + *(*(this + 614) - 24) + 4944) | 4);
  }

  if ((*(this + *(*(this + 330) - 24) + 2672) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 330) - 24) + 2640), *(this + *(*(this + 330) - 24) + 2672) | 4);
  }

  if ((*(this + *(*(this + 401) - 24) + 3240) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 401) - 24) + 3208), *(this + *(*(this + 401) - 24) + 3240) | 4);
  }

  if ((*(this + *(*(this + 188) - 24) + 1536) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 188) - 24) + 1504), *(this + *(*(this + 188) - 24) + 1536) | 4);
  }

  return 1;
}

void NetworkDiagnosticsLogFileDescriptors::NetworkDiagnosticsLogFileDescriptors(NetworkDiagnosticsLogFileDescriptors *this)
{
  *(this + 58) = 0;
  *this = v3;
  v4 = v2;
  *(this + *(v3 - 24)) = v2;
  v5 = (this + *(*this - 24));
  std::ios_base::init(v5, this + 8);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 129) = 0;
  *(this + 71) = v3;
  *(this + *(v3 - 24) + 568) = v4;
  v6 = (this + *(*(this + 71) - 24) + 568);
  std::ios_base::init(v6, this + 576);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 200) = 0;
  *(this + 142) = v3;
  *(this + *(v3 - 24) + 1136) = v4;
  v7 = (this + *(*(this + 142) - 24) + 1136);
  std::ios_base::init(v7, this + 1144);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 271) = 0;
  *(this + 213) = v3;
  *(this + *(v3 - 24) + 1704) = v4;
  v8 = (this + *(*(this + 213) - 24) + 1704);
  std::ios_base::init(v8, this + 1712);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 342) = 0;
  *(this + 284) = v3;
  *(this + *(v3 - 24) + 2272) = v4;
  v9 = (this + *(*(this + 284) - 24) + 2272);
  std::ios_base::init(v9, this + 2280);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 413) = 0;
  *(this + 355) = v3;
  *(this + *(v3 - 24) + 2840) = v4;
  v10 = (this + *(*(this + 355) - 24) + 2840);
  std::ios_base::init(v10, this + 2848);
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 484) = 0;
  *(this + 426) = v3;
  *(this + *(v3 - 24) + 3408) = v4;
  v11 = (this + *(*(this + 426) - 24) + 3408);
  std::ios_base::init(v11, this + 3416);
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 555) = 0;
  *(this + 497) = v3;
  *(this + *(v3 - 24) + 3976) = v4;
  v12 = (this + *(*(this + 497) - 24) + 3976);
  std::ios_base::init(v12, this + 3984);
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 626) = 0;
  *(this + 568) = v3;
  *(this + *(v3 - 24) + 4544) = v4;
  v13 = (this + *(*(this + 568) - 24) + 4544);
  std::ios_base::init(v13, this + 4552);
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 697) = 0;
  *(this + 639) = v3;
  *(this + *(v3 - 24) + 5112) = v4;
  v14 = (this + *(*(this + 639) - 24) + 5112);
  std::ios_base::init(v14, this + 5120);
  v14[1].__vftable = 0;
  v14[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 768) = 0;
  *(this + 710) = v3;
  *(this + *(v3 - 24) + 5680) = v4;
  v15 = (this + *(*(this + 710) - 24) + 5680);
  std::ios_base::init(v15, this + 5688);
  v15[1].__vftable = 0;
  v15[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
}

void sub_100224608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  std::ostream::~ostream();
  std::ios::~ios();
  std::ofstream::~ofstream(v16);
  std::ofstream::~ofstream(v15);
  std::ofstream::~ofstream(v17);
  std::ofstream::~ofstream(a9);
  std::ofstream::~ofstream(a10);
  std::ofstream::~ofstream(a11);
  std::ofstream::~ofstream(a12);
  std::ofstream::~ofstream(a13);
  std::ofstream::~ofstream(a14);
  std::ofstream::~ofstream(v14);
  _Unwind_Resume(a1);
}

void sub_100224738()
{
  std::ostream::~ostream();
  std::ios::~ios();
  JUMPOUT(0x100224708);
}

void sub_100224764()
{
  std::ostream::~ostream();
  std::ios::~ios();
  JUMPOUT(0x100224710);
}

void sub_100224790()
{
  std::ostream::~ostream();
  std::ios::~ios();
  JUMPOUT(0x100224718);
}

void sub_1002247BC()
{
  std::ostream::~ostream();
  std::ios::~ios();
  JUMPOUT(0x100224720);
}

void sub_1002247E0()
{
  std::ostream::~ostream();
  std::ios::~ios();
  JUMPOUT(0x100224728);
}

void sub_100224804()
{
  std::ostream::~ostream();
  std::ios::~ios();
  JUMPOUT(0x100224730);
}

void *std::ofstream::~ofstream(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void NetworkDiagnosticsLogFileNames::~NetworkDiagnosticsLogFileNames(void **this)
{
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}