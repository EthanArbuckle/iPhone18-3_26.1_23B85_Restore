uint64_t PluginsManager::get(PluginsManager *this)
{
  v2 = &__block_literal_global;
  if (atomic_load_explicit(&PluginsManager::get(void)::initOnce, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&PluginsManager::get(void)::initOnce, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<void({block_pointer}&&)(void)>>);
  }

  return PluginsManager::manager;
}

void PluginsManager::get_plugin_ptr(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34[19] = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 24));
  v8 = std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::find<std::string>(a1, a2);
  if (a1 + 8 == v8)
  {
    std::mutex::unlock((a1 + 24));
    if (a3 && ((os_variant_allows_internal_security_policies() & 1) != 0 || os_variant_is_darwinos()))
    {
      {
        std::string::basic_string[abi:ne200100]<0>(v23, "com.apple.diskimage-test-plugin.raw");
        v23[3] = rawTestPluginCreate;
        v23[4] = 0;
        std::string::basic_string[abi:ne200100]<0>(v24, "com.apple.diskimage-test-plugin.julio");
        v25 = JulioTestPluginCreate;
        v26 = 0;
        std::string::basic_string[abi:ne200100]<0>(v27, "com.apple.diskimage-plugin.nbd");
        v28 = amberPluginCreate;
        v29 = 0;
        std::string::basic_string[abi:ne200100]<0>(v30, "com.apple.diskimage-plugin.amber");
        v31 = amberPluginCreate;
        v32 = 16;
        std::map<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>::map[abi:ne200100](&register_internal_plugin(std::string const&)::internal_plugins, v23, 4);
        for (i = 0; i != -160; i -= 40)
        {
          if (v30[i + 23] < 0)
          {
            operator delete(*&v30[i]);
          }
        }

        __cxa_atexit(std::map<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>::~map[abi:ne200100], &register_internal_plugin(std::string const&)::internal_plugins, &dword_248DE0000);
      }

      if (std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::find<std::string>(&register_internal_plugin(std::string const&)::internal_plugins, a2) != &unk_27EECE550)
      {
        v23[0] = a2;
        v10 = std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&register_internal_plugin(std::string const&)::internal_plugins, a2);
        v12 = *(v10 + 56);
        v11 = *(v10 + 64);
        if (*(a2 + 23) >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        v14 = v12(v11);
        di_plugin_register(v13, v14);
      }

      PluginsManager::get_plugin_ptr(a1, a2, 0);
    }

    else
    {
      *&v21 = "*, diskimage_uio::diskimage_err> PluginsManager::get_plugin_ptr(const std::string &, BOOL)";
      *(&v21 + 1) = 63;
      v22 = 16;
      di_log::logger<di_log::log_printer<113ul>>::logger(v23, &v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Plugin ", 7);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v16, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, " is not registered", 18);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(v23);
      MEMORY[0x24C1ED6A0](v34);
      v18 = std::generic_category();
      *a4 = 45;
      *(a4 + 8) = v18;
      *(a4 + 16) = 0;
    }

    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *a4 = *(v8 + 56);
    *(a4 + 16) = 1;
    v9 = *MEMORY[0x277D85DE8];

    std::mutex::unlock((a1 + 24));
  }
}

void sub_248DE1D78(_Unwind_Exception *a1)
{
  v3 = (v1 + 143);
  v4 = -160;
  v5 = (v1 + 143);
  while (1)
  {
    v6 = *v5;
    v5 -= 40;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 40;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *di_log::logger<di_log::log_printer<113ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<113ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD2970;
  a1[45] = &unk_285BD2A70;
  a1[46] = &unk_285BD2A98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD2970;
  a1[45] = &unk_285BD29F8;
  a1[46] = &unk_285BD2A20;
  return a1;
}

void sub_248DE1F20(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<113ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

unsigned int *PluginsManager::create_plugin_image(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = *__error();
  if (DIForwardLogs())
  {
    v19[0] = 0;
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, OS_LOG_TYPE_DEFAULT);
    buf = 0x6704100402;
    v9 = "RO";
    v23 = "di_plugin_image_t *PluginsManager::create_plugin_image(const di_plugin_t &, int, const CFDictionaryRef)";
    v22 = 2080;
    if ((a3 & 3) != 0)
    {
      v9 = "RW";
    }

    v24 = 2080;
    v25 = v9;
    v26 = 2112;
    v27 = a4;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
      free(v11);
    }
  }

  else
  {
    v12 = getDIOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "RW";
      buf = 0x6704100402;
      v23 = "di_plugin_image_t *PluginsManager::create_plugin_image(const di_plugin_t &, int, const CFDictionaryRef)";
      v22 = 2080;
      if ((a3 & 3) == 0)
      {
        v13 = "RO";
      }

      v24 = 2080;
      v25 = v13;
      v26 = 2112;
      v27 = a4;
      _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Creating %s plugin instance with params: %@", &buf, 0x26u);
    }
  }

  *__error() = v7;
  v19[1] = a4;
  v20 = 0;
  LODWORD(v19[0]) = 16;
  HIDWORD(v19[0]) = a3;
  v14 = (*(a2 + 8))(v19, &v20);
  v15 = v14;
  if (v14 && *v14 <= 0x57)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](&buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "Plugin image struct size ", 25);
    MEMORY[0x24C1ED3A0](&buf, *v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, " is incompatible with the framework, expected at least ", 55);
    MEMORY[0x24C1ED3C0](&buf, 96);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, &buf, 0xFFFFFFA9);
  }

  verify_plugin_image(v14, v20);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_248DE2244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::ostringstream::~ostringstream(&a15, MEMORY[0x277D82828]);
  MEMORY[0x24C1ED6A0](&a29);
  if (v30)
  {
    __cxa_free_exception(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_248DE23D8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](v1);
  _Unwind_Resume(a1);
}

uint64_t verify_plugin_image(uint64_t result, __CFError *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    if (a2)
    {
      v8 = *__error();
      if (DIForwardLogs())
      {
        DIOSLog = getDIOSLog();
        os_log_type_enabled(DIOSLog, OS_LOG_TYPE_ERROR);
        *buf = 68158210;
        v17 = 71;
        v18 = 2080;
        v19 = "di_plugin_image_t *verify_plugin_image(di_plugin_image_t *, CFErrorRef)";
        v20 = 2114;
        v21 = a2;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
          free(v11);
        }
      }

      else
      {
        v12 = getDIOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158210;
          v17 = 71;
          v18 = 2080;
          v19 = "di_plugin_image_t *verify_plugin_image(di_plugin_image_t *, CFErrorRef)";
          v20 = 2114;
          v21 = a2;
          _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_ERROR, "%.*s: Failed initializing plugin: %{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v8;
      v13 = a2;
      Code = CFErrorGetCode(a2);
      if (Code < 0)
      {
        v15 = Code;
      }

      else
      {
        v15 = -Code;
      }

      CFRelease(v13);
      exception = __cxa_allocate_exception(0x40uLL);
      v4 = "Plugin initialization failed";
      v5 = v15;
    }

    else
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v4 = "Plugin bug: returned init failure without supplying the error";
      v5 = -14;
    }

LABEL_12:
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v4, v5);
  }

  if (!*(result + 8) || !*(result + 16) || !*(result + 24) || (*result < 0x60u || !*(result + 88)) && !*(result + 48) || !*(result + 56) || !*(result + 64))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = "Mandatory callbacks in the plugin's image struct are missing";
    v5 = -22;
    goto LABEL_12;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PluginsManager::decode_plugin_image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *__error();
  if (DIForwardLogs())
  {
    v16 = 0;
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 114;
    *&buf[8] = 2080;
    *&buf[10] = "di_plugin_image_t *PluginsManager::decode_plugin_image(const di_plugin_t &, const diskimage_decode_fn_t &, void *)";
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 114;
      *&buf[8] = 2080;
      *&buf[10] = "di_plugin_image_t *PluginsManager::decode_plugin_image(const di_plugin_t &, const diskimage_decode_fn_t &, void *)";
      _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Decoding plugin instance", buf, 0x12u);
    }
  }

  *__error() = v7;
  v16 = 0;
  v12 = *(a2 + 16);
  *buf = *a3;
  *&buf[16] = *(a3 + 16);
  v13 = v12(buf, a4, &v16);
  result = verify_plugin_image(v13, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PluginsManager::register_plugin(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    return 4294967274;
  }

  if (a3[1] != 1)
  {
    *&v12 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v12 + 1) = 31;
    v13 = 16;
    di_log::logger<di_log::log_printer<167ul>>::logger(&v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Plugin version ", 15);
    MEMORY[0x24C1ED3A0](&v15, a3[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " is incompatible with the framework, expected ", 46);
    MEMORY[0x24C1ED390](&v15, 1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(&v14);
    goto LABEL_6;
  }

  if (*a3 <= 0x27)
  {
    *&v12 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v12 + 1) = 31;
    v13 = 16;
    di_log::logger<di_log::log_printer<172ul>>::logger(&v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Plugin struct size ", 19);
    MEMORY[0x24C1ED3A0](&v15, *a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " is incompatible with the framework, expected at least ", 55);
    MEMORY[0x24C1ED3C0](&v15, 48);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(&v14);
LABEL_6:
    MEMORY[0x24C1ED6A0](v16);
    return 4294967209;
  }

  if (!*(a3 + 1) || !*(a3 + 2))
  {
    *&v12 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v12 + 1) = 31;
    v13 = 16;
    di_log::logger<di_log::log_printer<177ul>>::logger(&v14, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Mandatory callbacks in the plugin's struct are missing", 54);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(&v14);
    MEMORY[0x24C1ED6A0](v16);
    return 4294967274;
  }

  std::mutex::lock((a1 + 24));
  if (a1 + 8 == std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::find<std::string>(a1, a2))
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    operator new();
  }

  *&v12 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
  *(&v12 + 1) = 31;
  v13 = 16;
  di_log::logger<di_log::log_printer<183ul>>::logger(&v14, &v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Plugin ", 7);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " cannot be re-registered", 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(&v14);
  MEMORY[0x24C1ED6A0](v16);
  v4 = 4294967279;
  std::mutex::unlock((a1 + 24));
  return v4;
}

void sub_248DE2C6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__shared_weak_count::~__shared_weak_count(v24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x24C1ED730](v24, 0x10B3C401459F3A3);
  __cxa_begin_catch(a1);
  PluginsManager::register_plugin(std::string const&,_di_plugin_t *)::$_0::operator()(&a9, v23);
  __cxa_rethrow();
}

void sub_248DE2D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  di_log::logger<di_log::log_printer<191ul>>::~logger(va);
  std::mutex::unlock((v6 + 24));
  JUMPOUT(0x248DE2D6CLL);
}

void sub_248DE2D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<177ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void sub_248DE2D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  di_log::logger<di_log::log_printer<183ul>>::~logger(va);
  JUMPOUT(0x248DE2D3CLL);
}

void sub_248DE2D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<172ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<167ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<167ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD2B90;
  a1[45] = &unk_285BD2C90;
  a1[46] = &unk_285BD2CB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD2B90;
  a1[45] = &unk_285BD2C18;
  a1[46] = &unk_285BD2C40;
  return a1;
}

void sub_248DE2E78(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<167ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<172ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<172ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD2DB0;
  a1[45] = &unk_285BD2EB0;
  a1[46] = &unk_285BD2ED8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD2DB0;
  a1[45] = &unk_285BD2E38;
  a1[46] = &unk_285BD2E60;
  return a1;
}

void sub_248DE2FE4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<172ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<177ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<177ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD2FD0;
  a1[45] = &unk_285BD30D0;
  a1[46] = &unk_285BD30F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD2FD0;
  a1[45] = &unk_285BD3058;
  a1[46] = &unk_285BD3080;
  return a1;
}

void sub_248DE3150(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<177ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<183ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<183ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD31F0;
  a1[45] = &unk_285BD32F0;
  a1[46] = &unk_285BD3318;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD31F0;
  a1[45] = &unk_285BD3278;
  a1[46] = &unk_285BD32A0;
  return a1;
}

void sub_248DE32BC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<183ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<191ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<191ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD3410;
  a1[45] = &unk_285BD3510;
  a1[46] = &unk_285BD3538;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD3410;
  a1[45] = &unk_285BD3498;
  a1[46] = &unk_285BD34C0;
  return a1;
}

void sub_248DE3428(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<191ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void PluginsManager::release_plugin(uint64_t a1, void **a2)
{
  std::mutex::lock((a1 + 24));
  std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__erase_unique<std::string>(a1, a2);

  std::mutex::unlock((a1 + 24));
}

CFStringRef PluginsManager::copy_plugin_description(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PluginsManager::get_plugin_ptr(a1, a2, 1, &v10);
  if (v11 == 1)
  {
    if (*v10 >= 0x30u)
    {
      v5 = *(v10 + 40);
      if (v5)
      {

        return v5(a3);
      }
    }

    v7 = *(v10 + 24);
    if (v7)
    {
      v8 = v7(a3);
      CFRetain(v8);
      return v8;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  return CFStringCreateWithCString(0, v9, 0x8000100u);
}

void plugin_header::plugin_header(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v25[4] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
    *(a1 + 32) = *(a2 + 16);
    *(a1 + 16) = v11;
  }

  v12 = PluginsManager::get(a1);
  PluginsManager::get_plugin_ptr(v12, a2, 1, v21);
  if (v22)
  {
    v25[0] = &unk_285BD4170;
    v25[3] = v25;
    if (a6)
    {
      v14 = PluginsManager::get(v13);
      v15 = PluginsManager::decode_plugin_image(v14, v21[0], a5, a6);
      std::__function::__value_func<void ()(_di_plugin_image_t *)>::__value_func[abi:ne200100](v24, v25);
      std::shared_ptr<_di_plugin_image_t>::shared_ptr[abi:ne200100]<_di_plugin_image_t,std::function<void ()(_di_plugin_image_t*)>,0>(&v20, v15);
    }

    v16 = PluginsManager::get(v13);
    plugin_image = PluginsManager::create_plugin_image(v16, v21[0], a4, a3);
    std::__function::__value_func<void ()(_di_plugin_image_t *)>::__value_func[abi:ne200100](v23, v25);
    std::shared_ptr<_di_plugin_image_t>::shared_ptr[abi:ne200100]<_di_plugin_image_t,std::function<void ()(_di_plugin_image_t*)>,0>(&v20, plugin_image);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  v19 = *diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(v21);
  *exception = &unk_285BF4E60;
  *(exception + 8) = v19;
  exception[24] = 0;
  exception[48] = 0;
  *(exception + 7) = "Failed to get plugin instance";
}

void sub_248DE37EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(_di_plugin_image_t *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(_di_plugin_image_t *)>::~__value_func[abi:ne200100](v7 - 88);
  if (*(v6 + 39) < 0)
  {
    operator delete(*(v6 + 16));
  }

  v9 = *(v6 + 8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

uint64_t diskimage_uio::expected_ns::std::experimental::fundamentals_v3::expected<_di_plugin_t *,std::error_code>::error(uint64_t result)
{
  if (*(result + 16))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_285BD4148;
  }

  return result;
}

uint64_t plugin_header::get_uuid(plugin_header *this)
{
  v1 = *this;
  if (*v1 >= 0x60u && (v2 = *(v1 + 88)) != 0)
  {
    v3 = v2();
  }

  else
  {
    v3 = (*(v1 + 48))();
    CFRetain(v3);
  }

  v6 = v3;
  v4 = *&CFUUIDGetUUIDBytes(v3);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(&v6);
  return v4;
}

void sub_248DE3934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CFAutoRelease<__CFUUID const*>::~CFAutoRelease(va);
  _Unwind_Resume(a1);
}

void DiskImagePlugin::create_sync_ring(DiskImagePlugin *this)
{
  v2 = (this + 264);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN15DiskImagePlugin16create_sync_ringEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_18;
  v3[4] = this;
  v4 = v3;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<void({block_pointer}&&)(void)>>);
  }
}

uint64_t ___ZN15DiskImagePlugin16create_sync_ringEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4 = v1;
  v5 = v2;
  return std::optional<PluginRing>::emplace[abi:ne200100]<_di_plugin_image_t *,void (&)(io_rings_desc_t *,void *),DiskImagePlugin *,void>((v1 + 56), &v5, di_plugin_sync_cqe_callback, &v4);
}

uint64_t std::optional<PluginRing>::emplace[abi:ne200100]<_di_plugin_image_t *,void (&)(io_rings_desc_t *,void *),DiskImagePlugin *,void>(PluginRing *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 200) == 1)
  {
    PluginRing::~PluginRing(a1);
    *(v6 + 200) = 0;
  }

  v7 = *a2;
  v8 = *a4;
  result = PluginRing::PluginRing();
  *(result + 200) = 1;
  return result;
}

uint64_t DiskImagePlugin::sync_enter_and_wait(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PluginRing::set_dest_obj_id(a1 + 56, a2);
  *(a2 + 16) = a3 + 16;
  v6 = io_rings_enter(*(a1 + 104), 1, 0);
  if (v6)
  {
    v7 = v6;
    *&v9 = "DiskImagePlugin::sync_enter_and_wait(io_rings_sqe_t *, Context &)";
    *(&v9 + 1) = 36;
    v10 = 16;
    di_log::logger<di_log::log_printer<282ul>>::logger(v11, &v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "failed to enter SQE to the ring, ret code ", 42);
    MEMORY[0x24C1ED390](&v12, v7);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(v11);
    MEMORY[0x24C1ED6A0](&v13);
  }

  else
  {
    gcd::gcd_semaphore::wait((a3 + 24), 0xFFFFFFFFFFFFFFFFLL);
    return *(a3 + 16);
  }

  return v7;
}

void sub_248DE3B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<282ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<282ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<282ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD3630;
  a1[45] = &unk_285BD3730;
  a1[46] = &unk_285BD3758;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD3630;
  a1[45] = &unk_285BD36B8;
  a1[46] = &unk_285BD36E0;
  return a1;
}

void sub_248DE3C94(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<282ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImagePlugin::read(DiskImagePlugin *this, DiskImage::Context *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = PluginRing::try_sub_sqe_allocate((this + 56));
  if (v8)
  {
    v10 = v8;
    __p = 0;
    v46 = 0;
    v47 = 0;
    v11 = *(a4 + 17);
    v40 = a3;
    v12 = *(a3 + 17);
    v39 = (*(*this + 24))(this, v9);
    memset(v44, 0, sizeof(v44));
    (*(*this + 80))(v44, this);
    v13 = *(v40 + 26);
    v14 = (*(a4 + 26) - v13) & ~((*(a4 + 26) - v13) >> 63);
    if (*&v44[0] && (*(v40 + 104) != 1 || !*(v40 + 12)) && v11 - v12 >= *(&v44[0] + 1) * *&v44[0] + (v14 - 1 + *&v44[0]) / *&v44[0] * *&v44[0])
    {
      v15 = *(*(this + 2) + 32);
      if (v15)
      {
        v16 = v15();
        v17 = v13;
        if (v16)
        {
          v17 = v13 / v16 * v16;
        }
      }

      else
      {
        v17 = *(v40 + 26);
      }

      v14 = (v14 - 1 + v13 - v17 + *&v44[0]) / *&v44[0] * *&v44[0];
      v13 = v17;
    }

    v38 = v13;
    v36 = a4;
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v48, v40);
    v37 = v14 / v39;
    while (!sg_vec_ns::details::sg_vec_iterator::is_end_of_buffers(&v48))
    {
      sg_vec_ns::details::buffer_iterator::sync(v50);
      v20 = v50[7];
      v19 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v14 >= v52)
        {
          v21 = v52;
        }

        else
        {
          v21 = v14;
        }

        if (!v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          break;
        }
      }

      else
      {
        if (v14 >= v52)
        {
          v21 = v52;
        }

        else
        {
          v21 = v14;
        }

        if (!v21)
        {
          break;
        }
      }

      v22 = v46;
      if (v46 >= v47)
      {
        v24 = (v46 - __p) >> 4;
        v25 = v24 + 1;
        if ((v24 + 1) >> 60)
        {
          std::vector<iovec>::__throw_length_error[abi:ne200100]();
        }

        v26 = v47 - __p;
        if ((v47 - __p) >> 3 > v25)
        {
          v25 = v26 >> 3;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::allocator<iovec>::allocate_at_least[abi:ne200100](&__p, v27);
        }

        v28 = (16 * v24);
        *v28 = v20;
        v28[1] = v21;
        v23 = 16 * v24 + 16;
        v29 = v28 - (v46 - __p);
        memcpy(v29, __p, v46 - __p);
        v30 = __p;
        __p = v29;
        v46 = v23;
        v47 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v46 = v20;
        *(v22 + 1) = v21;
        v23 = (v22 + 16);
      }

      v46 = v23;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      sg_vec_ns::details::sg_vec_iterator::operator++(&v48, v41);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      v14 -= v21;
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    v31 = __p;
    *v10 = 2;
    *(v10 + 24) = v31;
    *(v10 + 32) = v38 / v39;
    *(v10 + 40) = 0;
    *(v10 + 48) = v37;
    v32 = DiskImagePlugin::sync_enter_and_wait(this, v10, a2);
    v33 = v32;
    if (v32 == v37)
    {
      sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v48, v40);
      v18 = v39 * v33;
      sg_vec_ns::details::sg_vec_iterator::operator+=(&v48, v39 * v33);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }
    }

    else if (v32 < 0)
    {
      v18 = v32;
    }

    else
    {
      v18 = -5;
    }

    if (*(v40 + 104) == 1 && *(v40 + 12))
    {
      crypto::to_aes_context(v40, 0, v56);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v54, v56);
      v55 = v39;
      Backend::Backend(v53);
      v53[0] = &unk_285BD38B0;
      v53[3] = -1;
      v53[5] = 0;
      v53[4] = 0;
      crypto::crypt_op::crypt_consecutive_vector_with_futures<sg_vec_ns::details::sg_vec_iterator>::crypt_consecutive_vector_with_futures(&v48, v54, v53, v40, v36, 0, 0);
    }

    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v18 = -35;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_248DE4180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(sg_vec_ns::details::sg_vec_iterator *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void crypto::to_aes_context(uint64_t a1@<X0>, int a2@<W1>, crypto::context::aes_xts *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2 == 0;
  v6 = *(a1 + 48);
  if (v6 == 3)
  {
    crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(v11, a2 == 0, a1 + 56, *(a1 + 88));
    crypto::context::aes_xts_ans_kdf2::aes_xts_ans_kdf2(a3);
    *(a3 + 36) = 2;
    crypto::context::aes_xts_ans_kdf2::~aes_xts_ans_kdf2(v11);
  }

  else if (v6 == 2)
  {
    crypto::context::aes_xts::aes_xts(v11, a2 == 0, a1 + 56, a1 + 72, *(a1 + 88));
    crypto::context::aes_xts::aes_xts(a3, v11);
    *(a3 + 36) = 1;
    v11[0] = &unk_285BD82F8;
    std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](&v14);
    v11[0] = &unk_285BD3848;
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  else
  {
    crypto::context::aes_iv::aes_iv(&v10, a1 + 72);
    crypto::context::aes_cbc::aes_cbc(v11, v5, a1 + 56, &v10, *(a1 + 88));
    crypto::context::aes_cbc::aes_cbc(a3, v11);
    *(a3 + 36) = 0;
    v11[0] = &unk_285BD82D0;
    std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](v15);
    v7 = v14;
    v14 = 0;
    if (v7)
    {
      MEMORY[0x24C1ED710](v7, 0x1000C8015230203);
    }

    v11[0] = &unk_285BD3848;
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    v8 = v10;
    v10 = 0;
    if (v8)
    {
      MEMORY[0x24C1ED710](v8, 0x1000C8015230203);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_248DE44B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  crypto::context::aes_cbc::~aes_cbc(va);
  if (a2)
  {
    MEMORY[0x24C1ED710](a2, 0x1000C8015230203);
  }

  _Unwind_Resume(a1);
}

void BackendNull::~BackendNull(BackendNull *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x24C1ED730);
}

uint64_t DiskImagePlugin::write(DiskImagePlugin *this, DiskImage::Context *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v112 = *MEMORY[0x277D85DE8];
  v10 = PluginRing::try_sub_sqe_allocate((this + 56));
  if (v9)
  {
    v11 = v9;
    __p = 0;
    v68 = 0;
    v69 = 0;
    v12 = (*(*this + 24))(this, v10);
    v13 = v12;
    v14 = *(a3 + 104) != 1 || *(a3 + 12) == 0;
    v44 = a2;
    v43 = v12;
    if (!v14)
    {
      sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v70, a3);
      v35 = *(a4 + 26) - *(a3 + 26);
      sg_vec_ns::details::sg_vec_iterator::operator+=(v70, v35 & ~(v35 >> 63));
      crypto::to_aes_context(a3, 1, &v99);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v110, &v99);
      v111 = v13;
      Backend::Backend(&v85);
      v85 = &unk_285BD38B0;
      v87 = -1;
      v89 = 0;
      v88 = 0;
      crypto::crypt_op::crypt_consecutive_vector_with_futures<sg_vec_ns::details::sg_vec_iterator>::crypt_consecutive_vector_with_futures(v77, v110, &v85, a3, a4, 1, 0);
    }

    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v56, a3);
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v45, a4);
    sg_entry::sg_entry(&v99, v56);
    v101 = v58;
    v102 = v59;
    v103 = v60;
    v104 = v61;
    v105 = v62;
    v15 = v63;
    v63 = 0uLL;
    v106 = v15;
    v107 = v64;
    v109 = v66;
    v108 = v65;
    sg_entry::sg_entry(&v85, v45);
    v16 = 0;
    v90 = v47;
    v91 = v48;
    v92 = v49;
    v93 = v50;
    v94 = v51;
    v17 = v52;
    v52 = 0uLL;
    v95 = v17;
    v96 = v53;
    v18 = v54;
    v98 = v55;
    v97 = v54;
    v77[0] = 0;
    v84 = 0;
    while (!sg_vec_ns::details::sg_vec_iterator::operator==(&v99, &v85))
    {
      if (v108 >= v18 || v16 == -1)
      {
        break;
      }

      if (DIDebugLogsEnabled())
      {
        *&v74 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/plugin_async_di.cpp:370:34)]";
        *(&v74 + 1) = 104;
        LODWORD(v75) = 2;
        di_log::logger<di_log::log_printer<624ul>>::logger(v70, &v74);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, "sg: ", 4);
        operator<<(&v72, &v99);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(v70);
        MEMORY[0x24C1ED6A0](&v73);
      }

      v70[0] = 0;
      v70[1] = v18;
      v71 = 2;
      trim_sg_to_interval(&v99, v70, &v74);
      v20 = v75;
      v21 = v68;
      if (v68 >= v69)
      {
        v23 = (v68 - __p) >> 4;
        v24 = v23 + 1;
        if ((v23 + 1) >> 60)
        {
          std::vector<iovec>::__throw_length_error[abi:ne200100]();
        }

        v25 = v69 - __p;
        if ((v69 - __p) >> 3 > v24)
        {
          v24 = v25 >> 3;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF0)
        {
          v26 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::allocator<iovec>::allocate_at_least[abi:ne200100](&__p, v26);
        }

        v27 = (16 * v23);
        *v27 = v74;
        v27[1] = v20;
        v22 = 16 * v23 + 16;
        v28 = (16 * v23 - (v68 - __p));
        memcpy(v28, __p, v68 - __p);
        v29 = __p;
        __p = v28;
        v68 = v22;
        v69 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v68 = v74;
        *(v21 + 1) = v20;
        v22 = (v21 + 16);
      }

      v68 = v22;
      if (v75 >= 0)
      {
        v30 = v75;
      }

      else
      {
        v30 = v75;
      }

      v31 = v30 >= 0 || v30 == 0;
      v32 = v31;
      if (v31)
      {
        v33 = v76;
        if (sg_vec_ns::should_create_new_sg_vec_ref(&v99, &v85, v76, v30))
        {
          sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v110, &v99);
          sg_vec_ns::generate_vec_ref(v110, &v85, v33, v30, 0xFFFFFFFFFFFFFFFFLL, v70);
          std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v77, v70);
          sg_vec_ref::~sg_vec_ref(v70);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v110);
          sg_vec_ref::begin(v77, v70);
          sg_vec_ns::details::sg_vec_iterator::operator=(&v99, v70);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v70);
          sg_vec_ref::end(v77, v70);
          sg_vec_ns::details::sg_vec_iterator::operator=(&v85, v70);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v70);
        }

        sg_vec_ns::details::sg_vec_iterator::operator+=(&v99, v30);
        v16 += v30;
      }

      else if (v75 < 0)
      {
        v4 = v75;
      }

      else
      {
        v4 = -v75;
      }

      if (*(&v74 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v74 + 1));
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v4 = v16;
LABEL_50:
    if (v84 == 1)
    {
      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v82);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }
    }

    if (*(&v95 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v95 + 1));
    }

    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    if (*(&v106 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v106 + 1));
    }

    if (v100)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
    }

    if (*(&v52 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v52 + 1));
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    if (*(&v63 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v63 + 1));
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    v36 = __p;
    v37 = *(a3 + 26) / v43;
    *v11 = 4;
    *(v11 + 24) = v36;
    *(v11 + 32) = v37;
    *(v11 + 40) = 0;
    *(v11 + 48) = v4 / v43;
    v38 = DiskImagePlugin::sync_enter_and_wait(this, v11, v44);
    v39 = -5;
    if (v38 < 0)
    {
      v39 = v38;
    }

    if (v38 == (v4 / v43))
    {
      v34 = v43 * v38;
    }

    else
    {
      v34 = v39;
    }

    v40 = *(a3 + 26);
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v34 = -35;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v34;
}

void sub_248DE4C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x200]);
  if (STACK[0x4D8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x4D8]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x540]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x8D0]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x9B0]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a14);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a42);
  if (__p)
  {
    a71 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t DiskImagePlugin::flush(uint64_t a1, uint64_t a2, int a3)
{
  PluginRing::try_sub_sqe_allocate((a1 + 56));
  if (!v6)
  {
    return 4294967261;
  }

  *v6 = 5;
  *(v6 + 24) = a3 + 1;

  return DiskImagePlugin::sync_enter_and_wait(a1, v6, a2);
}

uint64_t DiskImagePlugin::unmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  for (i = (a3 + 8); ; i += 2)
  {
    PluginRing::try_sub_sqe_allocate((a1 + 56));
    if (!v8)
    {
      break;
    }

    v9 = *(i - 1);
    v10 = *i;
    *v8 = 6;
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    result = DiskImagePlugin::sync_enter_and_wait(a1, v8, a2);
    if (result)
    {
      return result;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return 4294967261;
}

void DiskImagePlugin::sync_cqe_callback(DiskImagePlugin *this)
{
  PluginRing::get_next_cqe((this + 56), &v4);
  if (v6)
  {
    v2 = v4;
    v3 = v5;
    do
    {
      *v2 = v3;
      gcd::gcd_semaphore::signal((v2 + 8));
      PluginRing::get_next_cqe((this + 56), &v4);
      v2 = v4;
      v3 = v5;
    }

    while ((v6 & 1) != 0);
  }
}

unint64_t DiskImagePlugin::read_async(DiskImagePlugin *this, DiskImagePlugin::ContextPluginAsync *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  *__src = 0u;
  memset(v92, 0, 24);
  v89 = 0u;
  memset(v90, 0, sizeof(v90));
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v74, a3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v63, a4);
  sg_entry::sg_entry(&v104, v74);
  v59 = a3;
  v60 = this;
  v61 = a2;
  v106 = v76;
  v107 = v77;
  v108 = v78;
  v109 = v79;
  v110 = v80;
  v8 = v81;
  v81 = 0uLL;
  v111 = v8;
  v112 = v82;
  v114 = v84;
  v113 = v83;
  sg_entry::sg_entry(v93, v63);
  v9 = 0;
  v10 = 0;
  v95 = v65;
  v96 = v66;
  v97 = v67;
  v98 = v68;
  v99 = v69;
  v11 = v70;
  v70 = 0uLL;
  v100 = v11;
  v101 = v71;
  v12 = v72;
  v103 = v73;
  v102 = v72;
  LOBYTE(v126[0]) = 0;
  v133 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(&v104, v93))
  {
    if (v113 >= v12 || v10 == -1)
    {
      break;
    }

    if (DIDebugLogsEnabled())
    {
      *&v123 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/plugin_async_di.cpp:450:45)]";
      *(&v123 + 1) = 104;
      LODWORD(v124) = 2;
      di_log::logger<di_log::log_printer<624ul>>::logger(&v116, &v123);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v121, "sg: ", 4);
      operator<<(&v121, &v104);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(&v116);
      MEMORY[0x24C1ED6A0](&v122);
    }

    v116 = 0;
    v117 = v12;
    LOBYTE(v118) = 2;
    trim_sg_to_interval(&v104, &v116, &v123);
    v14 = __src[1];
    if (__src[1] >= *&v92[0])
    {
      v18 = (__src[1] - __src[0]) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        std::vector<iovec>::__throw_length_error[abi:ne200100]();
      }

      v20 = *&v92[0] - __src[0];
      if ((*&v92[0] - __src[0]) >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v120 = __src;
      if (v21)
      {
        std::allocator<std::shared_ptr<char>>::allocate_at_least[abi:ne200100](__src, v21);
      }

      v22 = 16 * v18;
      v23 = *(&v123 + 1);
      *(16 * v18) = v123;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = (v22 + 16);
      v24 = (v22 - (__src[1] - __src[0]));
      memcpy(v24, __src[0], __src[1] - __src[0]);
      v25 = __src[0];
      v26 = *&v92[0];
      __src[0] = v24;
      __src[1] = v17;
      *&v92[0] = 0;
      v118 = v25;
      v119 = v26;
      v117 = v25;
      v116 = v25;
      std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(&v116);
      v15 = v123;
    }

    else
    {
      v15 = v123;
      *__src[1] = v123;
      v16 = *(&v123 + 1);
      v14[1] = *(&v123 + 1);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v14 + 2;
    }

    __src[1] = v17;
    v27 = v124;
    v28 = *&v90[2];
    if (*&v90[2] >= *(&v90[2] + 1))
    {
      v30 = (*&v90[2] - *(&v90[1] + 1)) >> 4;
      v31 = v30 + 1;
      if ((v30 + 1) >> 60)
      {
        std::vector<iovec>::__throw_length_error[abi:ne200100]();
      }

      v32 = *(&v90[2] + 1) - *(&v90[1] + 1);
      if ((*(&v90[2] + 1) - *(&v90[1] + 1)) >> 3 > v31)
      {
        v31 = v32 >> 3;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF0)
      {
        v33 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        std::allocator<iovec>::allocate_at_least[abi:ne200100](&v90[1] + 8, v33);
      }

      v34 = (16 * v30);
      *v34 = v15;
      v34[1] = v27;
      v29 = 16 * v30 + 16;
      v35 = (16 * v30 - (*&v90[2] - *(&v90[1] + 1)));
      memcpy(v35, *(&v90[1] + 1), *&v90[2] - *(&v90[1] + 1));
      v36 = *(&v90[1] + 1);
      *(&v90[1] + 1) = v35;
      v90[2] = v29;
      if (v36)
      {
        operator delete(v36);
      }
    }

    else
    {
      **&v90[2] = v15;
      *(v28 + 8) = v27;
      v29 = v28 + 16;
    }

    *&v90[2] = v29;
    v37 = v124;
    if (v124 >= 0)
    {
      v38 = v124;
    }

    else
    {
      v38 = v124;
    }

    v39 = v38 >= 0 || v38 == 0;
    v40 = v39;
    if (v39)
    {
      v41 = v125;
      if ((v9 & 1) == 0)
      {
        v9 = 1;
      }

      if (sg_vec_ns::should_create_new_sg_vec_ref(&v104, v93, v125, v38))
      {
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v115, &v104);
        sg_vec_ns::generate_vec_ref(v115, v93, v41, v38, 0xFFFFFFFFFFFFFFFFLL, &v116);
        std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v126, &v116);
        sg_vec_ref::~sg_vec_ref(&v116);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v115);
        sg_vec_ref::begin(v126, &v116);
        sg_vec_ns::details::sg_vec_iterator::operator=(&v104, &v116);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v116);
        sg_vec_ref::end(v126, &v116);
        sg_vec_ns::details::sg_vec_iterator::operator=(v93, &v116);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v116);
      }

      sg_vec_ns::details::sg_vec_iterator::operator+=(&v104, v38);
      v10 += v38;
    }

    else
    {
      if (v124 >= 0)
      {
        v37 = -v124;
      }

      v62 = v37;
    }

    if (*(&v123 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v123 + 1));
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v62 = v10;
LABEL_60:
  if (v133 == 1)
  {
    if (v132)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v132);
    }

    if (v131)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v131);
    }

    if (v130)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v130);
    }

    if (v129)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v129);
    }

    if (v128)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v128);
    }

    if (v127)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v127);
    }
  }

  if (*(&v100 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v100 + 1));
  }

  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  }

  if (*(&v111 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v111 + 1));
  }

  if (v105)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v105);
  }

  if (*(&v70 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  if (*(&v81 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v81 + 1));
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  v42 = (v59 + 48);
  if (*(v59 + 104) == 1 && *(v59 + 12))
  {
    if (*(a2 + 96) == 1)
    {
      v43 = *v42;
      v44 = *(v59 + 4);
      v45 = *(v59 + 5);
      *(a2 + 11) = *(v59 + 12);
      *(a2 + 72) = v45;
      *(a2 + 56) = v44;
      *(a2 + 40) = v43;
    }

    else
    {
      sg_per_io_crypto::sg_per_io_crypto((a2 + 40), v42);
      *(a2 + 96) = 1;
    }
  }

  v46 = *(&v90[1] + 1);
  v47 = *(v59 + 26);
  v48 = (*(*v60 + 24))(v60);
  v49 = (*(*v60 + 24))(v60);
  LOBYTE(v85) = 2;
  *(&v86 + 1) = v46;
  v87 = v47 / v48;
  v50 = v62;
  LODWORD(v88) = v62 / v49;
  v51 = v61[3];
  if (v51 >= v61[4])
  {
    v56 = std::vector<di_async_sub_transaction_t>::__emplace_back_slow_path<di_async_sub_transaction_t>(v61 + 2, &v85);
    v57 = *&v92[1];
    v61[3] = v56;
    v50 = v62;
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }
  }

  else
  {
    v52 = v86;
    *v51 = v85;
    *(v51 + 16) = v52;
    v53 = v87;
    v54 = v88;
    v55 = v89;
    *(v51 + 80) = *&v90[0];
    *(v51 + 48) = v54;
    *(v51 + 64) = v55;
    *(v51 + 32) = v53;
    *(v51 + 88) = *(v90 + 8);
    *&v90[1] = 0;
    *(&v90[0] + 1) = 0;
    *(v51 + 104) = 0;
    *(v51 + 112) = 0;
    *(v51 + 120) = 0;
    *(v51 + 128) = 0;
    *(v51 + 104) = *(&v90[1] + 8);
    *(v51 + 120) = *(&v90[2] + 1);
    memset(&v90[1] + 8, 0, 24);
    *(v51 + 136) = 0;
    *(v51 + 144) = 0;
    *(v51 + 128) = *__src;
    *(v51 + 144) = *&v92[0];
    __src[0] = 0;
    __src[1] = 0;
    *&v92[0] = 0;
    *(v51 + 152) = *(v92 + 8);
    *&v92[1] = 0;
    *(&v92[0] + 1) = 0;
    v61[3] = v51 + 168;
  }

  v126[0] = __src;
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](v126);
  if (*(&v90[1] + 1))
  {
    *&v90[2] = *(&v90[1] + 1);
    operator delete(*(&v90[1] + 1));
  }

  if (*&v90[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v90[1]);
  }

  return v50;
}

void sub_248DE5684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x530]);
  if (STACK[0x808])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x808]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x878]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x290]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x370]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a13);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a41);
  di_async_sub_transaction_t::~di_async_sub_transaction_t(&a69);
  _Unwind_Resume(a1);
}

uint64_t DiskImagePlugin::subscribe_to_ring(DiskImagePlugin *this, io_rings_desc_t *a2)
{
  v3 = (*(*(this + 2) + 56))();
  if (v3)
  {

    io_rings_subscriber_subscribe(a2, v3);
  }

  return 4294967284;
}

void DiskImagePlugin::~DiskImagePlugin(DiskImagePlugin *this)
{
  *this = &unk_285BD1F98;
  if (*(this + 256) == 1)
  {
    PluginRing::~PluginRing((this + 56));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_285BD1F98;
  if (*(this + 256) == 1)
  {
    PluginRing::~PluginRing((this + 56));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x24C1ED730);
}

void DiskImage::create_image_info(DiskImage *this)
{
  exception = __cxa_allocate_exception(0x40uLL);
  DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Image info is not supported for the given image type", 0x16u);
}

double DiskImagePlugin::get_io_constraints@<D0>(DiskImagePlugin *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 2);
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5();
    v4 = *(this + 2);
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v4 + 40);
  if (v8 && (v9 = v8()) != 0 || (v9 = v6) != 0)
  {
    if (v6 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    *a2 = v10;
    a2[1] = v6 != 0;
    a2[2] = v9 + v9 * ((v6 - 1 + v9) / v9);
    a2[3] = 0;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

BOOL DiskImagePlugin::may_read_extra(DiskImagePlugin *this)
{
  (*(*this + 80))(v4);
  if (v4[0])
  {
    v1 = 0;
  }

  else
  {
    v1 = v4[1] == 0;
  }

  return !v1 || v4[2] != 0 || v4[3] != 0;
}

uint64_t DiskImage::read(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16[90] = *MEMORY[0x277D85DE8];
  sg_vec::sg_vec(v15, a3);
  sg_vec_ref::begin(v16, v12);
  v5 = sg_vec_ref::end(v16, v9);
  v6 = (*(*a1 + 152))(a1, a2, v12, v9, v5);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  sg_vec::~sg_vec(v15);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_248DE5C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a66);
  _Unwind_Resume(a1);
}

uint64_t DiskImage::write(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16[90] = *MEMORY[0x277D85DE8];
  sg_vec::sg_vec(v15, a3);
  sg_vec_ref::begin(v16, v12);
  v5 = sg_vec_ref::end(v16, v9);
  v6 = (*(*a1 + 160))(a1, a2, v12, v9, v5);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  sg_vec::~sg_vec(v15);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_248DE5D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a10);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a38);
  sg_vec::~sg_vec(&a66);
  _Unwind_Resume(a1);
}

uint64_t JulioTestPluginCreate(uint64_t a1)
{
  if (JulioTestPluginCreate(unsigned long long)::once != -1)
  {
    JulioTestPluginCreate();
  }

  v2 = JulioTestPluginCreate(unsigned long long)::JulioDiskImagePluginCreate;
  if (!JulioTestPluginCreate(unsigned long long)::JulioDiskImagePluginCreate)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t amberPluginCreate(uint64_t a1)
{
  if (amberPluginCreate(unsigned long long)::once != -1)
  {
    amberPluginCreate();
  }

  v2 = amberPluginCreate(unsigned long long)::AmberDiskImagePluginCreate;
  if (!amberPluginCreate(unsigned long long)::AmberDiskImagePluginCreate)
  {
    return 0;
  }

  return v2(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278F808A0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *___ZL21JulioTestPluginCreatey_block_invoke()
{
  v0 = dlopen("/AppleInternal/System/Library/libtest_plugin_shared_object.dylib", 5);
  if (v0)
  {
    result = dlsym(v0, "ramTestPluginCreate");
    JulioTestPluginCreate(unsigned long long)::JulioDiskImagePluginCreate = result;
    if (result)
    {
      return result;
    }

    *&v2 = "*JulioTestPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 22;
    v3 = 16;
    di_log::logger<di_log::log_printer<77ul>>::logger(v4, &v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Cannot find rawTestPluginCreate in libtest_plugin_shared_object.dylib ", 70);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(v4);
  }

  else
  {
    *&v2 = "*JulioTestPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 22;
    v3 = 16;
    di_log::logger<di_log::log_printer<72ul>>::logger(v4, &v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Cannot load libTestPlugin", 25);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(v4);
  }

  return MEMORY[0x24C1ED6A0](&v6);
}

void sub_248DE6174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<77ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<72ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<72ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD20D0;
  a1[45] = &unk_285BD21D0;
  a1[46] = &unk_285BD21F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD20D0;
  a1[45] = &unk_285BD2158;
  a1[46] = &unk_285BD2180;
  return a1;
}

void sub_248DE629C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<72ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<77ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<77ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD22F0;
  a1[45] = &unk_285BD23F0;
  a1[46] = &unk_285BD2418;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD22F0;
  a1[45] = &unk_285BD2378;
  a1[46] = &unk_285BD23A0;
  return a1;
}

void sub_248DE6408(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<77ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C1ED340](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x24C1ED350](v13);
  return a1;
}

void sub_248DE65B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C1ED350](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x248DE6590);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
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

void sub_248DE67E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t di_log::logger_buf<di_log::log_printer<72ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD2268;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DE68B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD2268;
  di_log::logger_buf<di_log::log_printer<72ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<72ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<72ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<72ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<72ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<72ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<72ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<72ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<72ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DE6E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<72ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 72;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 72;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

const void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void std::stringbuf::str[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
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
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t di_log::logger_buf<di_log::log_printer<77ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD2488;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DE736C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD2488;
  di_log::logger_buf<di_log::log_printer<77ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<77ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<77ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<77ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<77ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<77ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<77ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<77ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<77ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DE7910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<77ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 77;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 77;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void *___ZL17amberPluginCreatey_block_invoke()
{
  v0 = dlopen("/usr/lib/libAmber.dylib", 5);
  if (v0)
  {
    result = dlsym(v0, "AmberDiskImagePluginCreate");
    amberPluginCreate(unsigned long long)::AmberDiskImagePluginCreate = result;
    if (result)
    {
      return result;
    }

    *&v2 = "*amberPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 18;
    v3 = 16;
    di_log::logger<di_log::log_printer<58ul>>::logger(v4, &v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Cannot find AmberDiskImagePluginCreate in libAmber", 50);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(v4);
  }

  else
  {
    *&v2 = "*amberPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 18;
    v3 = 16;
    di_log::logger<di_log::log_printer<52ul>>::logger(v4, &v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Cannot load libAmber", 20);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(v4);
  }

  return MEMORY[0x24C1ED6A0](&v6);
}

void sub_248DE7C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<58ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<52ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<52ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD2530;
  a1[45] = &unk_285BD2630;
  a1[46] = &unk_285BD2658;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD2530;
  a1[45] = &unk_285BD25B8;
  a1[46] = &unk_285BD25E0;
  return a1;
}

void sub_248DE7D48(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<52ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<58ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<58ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD2750;
  a1[45] = &unk_285BD2850;
  a1[46] = &unk_285BD2878;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD2750;
  a1[45] = &unk_285BD27D8;
  a1[46] = &unk_285BD2800;
  return a1;
}

void sub_248DE7EB4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<58ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<52ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD26C8;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DE7FCC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD26C8;
  di_log::logger_buf<di_log::log_printer<52ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<52ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<52ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<52ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<52ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<52ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<52ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<52ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<52ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DE8570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<52ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 52;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 52;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<58ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD28E8;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DE882C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD28E8;
  di_log::logger_buf<di_log::log_printer<58ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<58ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<58ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<58ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<58ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<58ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<58ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<58ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<58ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DE8DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<58ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 58;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 58;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::map<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>::map[abi:ne200100](void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>> const&>(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>> const&>(void *a1, uint64_t a2, void **a3)
{
  result = *std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__construct_node<std::pair<std::string const,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>> const&>();
  }

  return result;
}

void **std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_248DE9314(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void *std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
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
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
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

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
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

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

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
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::find<std::string>(uint64_t a1, void **a2)
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
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_248DE98C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<113ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<113ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<113ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<113ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<113ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD2B08;
  di_log::logger_buf<di_log::log_printer<113ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<113ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<113ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DE9E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<113ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<113ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 113;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 113;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DiskImagesRuntimeException::DiskImagesRuntimeException(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &unk_285BF4E60;
  v6 = std::generic_category();
  *(a1 + 8) = a3;
  *(a1 + 16) = v6;
  std::ostringstream::str[abi:ne200100](a2, &v8);
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 1;
  return a1;
}

void DiskImagesRuntimeException::~DiskImagesRuntimeException(std::exception *this)
{
  this->__vftable = &unk_285BF4E60;
  if (LOBYTE(this[6].__vftable) == 1 && SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  DiskImagesRuntimeException::~DiskImagesRuntimeException(this);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void DiskImagesRuntimeException::DiskImagesRuntimeException(DiskImagesRuntimeException *this, const char *a2, unsigned int a3)
{
  *this = &unk_285BF4E60;
  v6 = std::generic_category();
  *(this + 1) = a3;
  *(this + 2) = v6;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 7) = a2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<167ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<167ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<167ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<167ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<167ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD2D28;
  di_log::logger_buf<di_log::log_printer<167ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<167ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<167ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DEA850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<167ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<167ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 167;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 167;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<172ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<172ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<172ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<172ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<172ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD2F48;
  di_log::logger_buf<di_log::log_printer<172ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<172ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<172ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DEAFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<172ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<172ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 172;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 172;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<177ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<177ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<177ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<177ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<177ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD3168;
  di_log::logger_buf<di_log::log_printer<177ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<177ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<177ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DEB780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<177ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<177ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 177;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 177;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<183ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<183ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<183ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<183ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<183ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD3388;
  di_log::logger_buf<di_log::log_printer<183ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<183ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<183ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DEBF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<183ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<183ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 183;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 183;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<191ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<191ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<191ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<191ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<191ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD35A8;
  di_log::logger_buf<di_log::log_printer<191ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<191ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<191ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DEC754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<191ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<191ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 191;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 191;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<282ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<282ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<282ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<282ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<282ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD37C8;
  di_log::logger_buf<di_log::log_printer<282ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<282ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<282ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DECEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<282ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<282ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 282;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 282;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(sg_vec_ns::details::sg_vec_iterator *this, const sg_vec_ns::details::sg_vec_iterator *a2)
{
  v3 = sg_entry::sg_entry(this, a2);
  *(v3 + 112) = *(a2 + 14);
  *(v3 + 120) = *(a2 + 15);
  *(v3 + 128) = *(a2 + 16);
  v4 = *(a2 + 136);
  v5 = *(a2 + 152);
  *(v3 + 168) = *(a2 + 168);
  *(v3 + 152) = v5;
  *(v3 + 136) = v4;
  v6 = *(a2 + 23);
  *(v3 + 176) = *(a2 + 22);
  *(v3 + 184) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 12);
  *(v3 + 192) = result;
  v8 = *(a2 + 26);
  *(v3 + 216) = *(a2 + 216);
  *(v3 + 208) = v8;
  return result;
}

uint64_t sg_entry::sg_entry(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  v5 = *(a2 + 28);
  *(a1 + 48) = 0;
  v6 = (a1 + 48);
  *(a1 + 28) = v5;
  *(a1 + 16) = v4;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    sg_per_io_crypto::sg_per_io_crypto(v6, (a2 + 48));
    *(a1 + 104) = 1;
  }

  return a1;
}

{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 16);
  v4 = *(a2 + 28);
  *(a1 + 48) = 0;
  v5 = (a1 + 48);
  *(v5 - 20) = v4;
  *(v5 - 2) = v3;
  v5[56] = 0;
  if (*(a2 + 104) == 1)
  {
    sg_per_io_crypto::sg_per_io_crypto(v5, (a2 + 48));
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_248DED22C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

double sg_vec_ns::details::buffer_iterator::sync(sg_vec_ns::details::buffer_iterator *this)
{
  sg_vec_ns::details::buffer_iterator::make_value(this, 1, &v6);
  v2 = v6;
  v6 = 0uLL;
  v3 = *(this + 8);
  *(this + 56) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v4 = *(&v6 + 1);
    result = *&v7;
    *(this + 72) = v7;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    result = *&v7;
    *(this + 72) = v7;
  }

  return result;
}

void std::allocator<iovec>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void crypto::context::aes_cbc::~aes_cbc(crypto::context::aes_cbc *this)
{
  *this = &unk_285BD82D0;
  std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](this + 14);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x24C1ED710](v2, 0x1000C8015230203);
  }

  *this = &unk_285BD3848;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_285BD82D0;
  std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](this + 14);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x24C1ED710](v2, 0x1000C8015230203);
  }

  *this = &unk_285BD3848;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x24C1ED730);
}

int *std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100](int *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>::operator()(result + 2, v1);
  }

  return result;
}

void crypto::context::aes_xts::~aes_xts(crypto::context::aes_xts *this)
{
  *this = &unk_285BD82F8;
  std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](this + 12);
  *this = &unk_285BD3848;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_285BD82F8;
  std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](this + 12);
  *this = &unk_285BD3848;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C1ED730);
}

int *std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100](int *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>::operator()(result + 2, v1);
  }

  return result;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 144) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 144);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285BD3888[v5])(&v6, a2);
    *(a1 + 144) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::context::aes_cbc,crypto::context::aes_xts,crypto::context::aes_xts_ans_kdf2>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 144);
  if (v2 != -1)
  {
    result = (off_285BD3870[v2])(&v3, result);
  }

  *(v1 + 144) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6crypto7context7aes_cbcENS9_7aes_xtsENS9_16aes_xts_ans_kdf2EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285BD82D0;
  std::unique_ptr<cccbc_ctx [],crypto::context::aes::cc_mode_deleter<cccbc_ctx,ccmode_cbc>>::reset[abi:ne200100]((a2 + 56));
  v3 = *(a2 + 48);
  *(a2 + 48) = 0;
  if (v3)
  {
    MEMORY[0x24C1ED710](v3, 0x1000C8015230203);
  }

  *a2 = &unk_285BD3848;
  v4 = *(a2 + 16);
  if (v4)
  {
    *(a2 + 24) = v4;

    operator delete(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6crypto7context7aes_cbcENS9_7aes_xtsENS9_16aes_xts_ans_kdf2EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285BD82F8;
  std::unique_ptr<ccxts_ctx [],crypto::context::aes::cc_mode_deleter<ccxts_ctx,ccmode_xts>>::reset[abi:ne200100]((a2 + 48));
  *a2 = &unk_285BD3848;
  v3 = *(a2 + 16);
  if (v3)
  {
    *(a2 + 24) = v3;

    operator delete(v3);
  }
}

uint64_t Backend::read(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 112 * v2;
  while (1)
  {
    v6 = (*(*a1 + 128))(a1, v4);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v4 += 112;
    v5 -= 112;
    if (!v5)
    {
      return 0;
    }
  }

  v7 = v6;
  *&v9 = "int Backend::read(const elements_t &)";
  *(&v9 + 1) = 17;
  v10 = 16;
  di_log::logger<di_log::log_printer<121ul>>::logger(v11, &v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Backend: failed reading element in vector", 41);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(v11);
  MEMORY[0x24C1ED6A0](&v13);
  return v7;
}

void sub_248DED8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<121ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t Backend::write(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 112 * v2;
  while (1)
  {
    v6 = (*(*a1 + 120))(a1, v4);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v4 += 112;
    v5 -= 112;
    if (!v5)
    {
      return 0;
    }
  }

  v7 = v6;
  *&v9 = "int Backend::write(const elements_t &)";
  *(&v9 + 1) = 18;
  v10 = 16;
  di_log::logger<di_log::log_printer<132ul>>::logger(v11, &v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Backend: failed writing element in vector", 41);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(v11);
  MEMORY[0x24C1ED6A0](&v13);
  return v7;
}

void sub_248DED9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<132ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void Backend::future_read(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  LOBYTE(v7) = 0;
  v8 = 0;
  v10 = &v11;
  v11 = &v7;
  v9 = 0;
  v3 = (*(*a1 + 128))(a1);
  v4 = v11;
  *v11 = v3;
  *(v4 + 4) = 1;
  lw_promise<int>::notify_future(&v11, v5);
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  if (v8 == 1)
  {
    *a2 = v7;
    *(a2 + 4) = 1;
  }

  v6 = v10;
  *(a2 + 16) = v10;
  if (v6)
  {
    *v6 = a2;
  }

  if (v11)
  {
    *(v11 + 2) = 0;
  }
}

void sub_248DEDAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    *(a12 + 16) = 0;
  }

  _Unwind_Resume(a1);
}

void Backend::future_write(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  LOBYTE(v7) = 0;
  v8 = 0;
  v10 = &v11;
  v11 = &v7;
  v9 = 0;
  v3 = (*(*a1 + 120))(a1);
  v4 = v11;
  *v11 = v3;
  *(v4 + 4) = 1;
  lw_promise<int>::notify_future(&v11, v5);
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  if (v8 == 1)
  {
    *a2 = v7;
    *(a2 + 4) = 1;
  }

  v6 = v10;
  *(a2 + 16) = v10;
  if (v6)
  {
    *v6 = a2;
  }

  if (v11)
  {
    *(v11 + 2) = 0;
  }
}

void sub_248DEDBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    *(a12 + 16) = 0;
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<Backend>::shared_ptr[abi:ne200100]<Backend,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void *di_log::logger<di_log::log_printer<121ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<121ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD39A0;
  a1[45] = &unk_285BD3AA0;
  a1[46] = &unk_285BD3AC8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD39A0;
  a1[45] = &unk_285BD3A28;
  a1[46] = &unk_285BD3A50;
  return a1;
}

void sub_248DEDD88(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<121ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<121ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD3B38;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DEDEA0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD3B38;
  di_log::logger_buf<di_log::log_printer<121ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<121ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<121ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<121ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<121ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<121ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<121ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<121ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<121ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DEE444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<121ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 121;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 121;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void *di_log::logger<di_log::log_printer<132ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<132ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD3BC0;
  a1[45] = &unk_285BD3CC0;
  a1[46] = &unk_285BD3CE8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD3BC0;
  a1[45] = &unk_285BD3C48;
  a1[46] = &unk_285BD3C70;
  return a1;
}

void sub_248DEE754(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<132ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<132ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD3D58;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DEE86C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD3D58;
  di_log::logger_buf<di_log::log_printer<132ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<132ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<132ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<132ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<132ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<132ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<132ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<132ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<132ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DEEE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<132ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 132;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 132;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void lw_promise<int>::notify_future(unint64_t *a1, const void *a2)
{
  v3 = *a1;
  if (*(v3 + 8))
  {
    tagged_ptr_lock = ref::details::_get_tagged_ptr_lock(v3, a2);
    std::mutex::lock(tagged_ptr_lock);
    if (*(*a1 + 8))
    {
      tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(*a1, v5);
      std::condition_variable::notify_all(tagged_ptr_cond);
    }

    std::mutex::unlock(tagged_ptr_lock);
  }
}

uint64_t std::vector<di_async_sub_transaction_t>::__emplace_back_slow_path<di_async_sub_transaction_t>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<di_async_sub_transaction_t>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  std::allocator_traits<std::allocator<di_async_sub_transaction_t>>::construct[abi:ne200100]<di_async_sub_transaction_t,di_async_sub_transaction_t,void,0>(a1, 168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = a1[1];
  v8 = 168 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<di_async_sub_transaction_t>,di_async_sub_transaction_t*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<di_async_sub_transaction_t>::~__split_buffer(&v13);
  return v12;
}

void sub_248DEF1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<di_async_sub_transaction_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<di_async_sub_transaction_t>>::construct[abi:ne200100]<di_async_sub_transaction_t,di_async_sub_transaction_t,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 64);
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 32) = v4;
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = *(a3 + 104);
  *(a2 + 120) = *(a3 + 120);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  result = *(a3 + 152);
  *(a2 + 152) = result;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  return result;
}

void std::allocator<di_async_sub_transaction_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<di_async_sub_transaction_t>,di_async_sub_transaction_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::allocator_traits<std::allocator<di_async_sub_transaction_t>>::construct[abi:ne200100]<di_async_sub_transaction_t,di_async_sub_transaction_t,void,0>(a1, a4, v7);
      v7 += 168;
      a4 = v12 + 168;
      v12 += 168;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<di_async_sub_transaction_t>>::destroy[abi:ne200100]<di_async_sub_transaction_t,void,0>(a1, v5);
      v5 += 168;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<di_async_sub_transaction_t>,di_async_sub_transaction_t*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<di_async_sub_transaction_t>>::destroy[abi:ne200100]<di_async_sub_transaction_t,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v6 = (a2 + 128);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(a2 + 104);
  if (v4)
  {
    *(a2 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 96);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<di_async_sub_transaction_t>,di_async_sub_transaction_t*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<di_async_sub_transaction_t>,di_async_sub_transaction_t*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<di_async_sub_transaction_t>,di_async_sub_transaction_t*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 168;
      std::allocator_traits<std::allocator<di_async_sub_transaction_t>>::destroy[abi:ne200100]<di_async_sub_transaction_t,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<di_async_sub_transaction_t>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<di_async_sub_transaction_t>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<di_async_sub_transaction_t>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    std::allocator_traits<std::allocator<di_async_sub_transaction_t>>::destroy[abi:ne200100]<di_async_sub_transaction_t,void,0>(v5, v4 - 168);
  }
}

void di_async_sub_transaction_t::~di_async_sub_transaction_t(di_async_sub_transaction_t *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = (this + 128);
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<char>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<char>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

__n128 DiskImage::default_extents_iterator_interface::_make_val@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[1];
  *a2 = result;
  a2[1].n128_u64[0] = this[2].n128_u64[0];
  a2[1].n128_u32[2] = 1;
  return result;
}

DiskImagePlugin::ContextPluginSync *DiskImagePlugin::ContextPluginSync::ContextPluginSync(DiskImagePlugin::ContextPluginSync *this, DiskImagePlugin *a2)
{
  *this = &unk_285BD3E48;
  *(this + 1) = a2;
  gcd::gcd_semaphore::gcd_semaphore((this + 24), 0);
  DiskImagePlugin::create_sync_ring(a2);
  return this;
}

void DiskImagePlugin::ContextPluginSync::~ContextPluginSync(NSObject **this)
{
  *this = &unk_285BD3E48;
  gcd::gcd_group::~gcd_group(this + 3);
}

{
  *this = &unk_285BD3E48;
  gcd::gcd_group::~gcd_group(this + 3);

  JUMPOUT(0x24C1ED730);
}

uint64_t *sg_vec::sg_vec(uint64_t *a1, uint64_t *a2)
{
  v21[15] = *MEMORY[0x277D85DE8];
  dummy_shared_ptr = details::get_dummy_shared_ptr();
  v5 = *a2;
  v6 = dummy_shared_ptr[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[4];
  v19 = v21;
  v21[0] = v5;
  v21[1] = v6;
  v21[2] = v7;
  v20 = xmmword_248F9C7F0;
  sg_vec_ns::details::sg_vec_data::sg_vec_data(a1, &v19);
  boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(&v19);
  v8 = a1[1];
  v19 = *a1;
  v9 = &v19[3 * v8];
  v10 = a1[19];
  v17 = a1[18];
  v18 = v9;
  v16 = &v17[v10];
  sg_vec_ref::sg_vec_ref((a1 + 26), &v19, &v18, &v17, &v16, a2[3], a2[2], *(a2 + 10));
  v13 = *(a2 + 12);
  v12 = (a2 + 6);
  v11 = v13;
  if (*(v12 + 56) == 1 && v11)
  {
    sg_vec_ref::attach_per_io_crypto((a1 + 26), v12);
  }

  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_248DEF99C(_Unwind_Exception *a1)
{
  sg_vec_ref::~sg_vec_ref((v1 + 208));
  sg_vec_ns::details::sg_vec_data::~sg_vec_data(v1);
  _Unwind_Resume(a1);
}

uint64_t sg_vec_ns::details::sg_vec_data::sg_vec_data(uint64_t a1, void *a2)
{
  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_248F9C800;
  boost::container::small_vector_base<std::pair<std::shared_ptr<char>,unsigned long>,void,void>::move_construct_impl(a1, a2);
  *(a1 + 144) = a1 + 168;
  v3 = *(a1 + 8);
  *(a1 + 152) = xmmword_248F9C800;
  boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_resize<boost::container::value_init_t,boost::move_detail::integral_constant<unsigned int,1u>>(a1 + 144, v3);
  return a1;
}

void sub_248DEFA4C(_Unwind_Exception *a1)
{
  if (v1[20])
  {
    if (v3 != *v2)
    {
      operator delete(*v2);
    }
  }

  boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(v1);
  _Unwind_Resume(a1);
}

sg_vec_ref *sg_vec_ref::attach_per_io_crypto(sg_vec_ref *this, const sg_per_io_crypto *a2)
{
  if (*(this + 256) == 1)
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    *(this + 31) = *(a2 + 6);
    *(this + 232) = v5;
    *(this + 216) = v4;
    *(this + 200) = v3;
  }

  else
  {
    sg_per_io_crypto::sg_per_io_crypto((this + 200), a2);
    *(this + 256) = 1;
  }

  sg_vec_ref::create_iterators(this);
  return this;
}

void sg_vec_ref::~sg_vec_ref(sg_vec_ref *this)
{
  v2 = *(this + 85);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 63);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 57);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sg_vec_ns::details::sg_vec_data::~sg_vec_data(sg_vec_ns::details::sg_vec_data *this)
{
  if (*(this + 20))
  {
    v2 = *(this + 18);
    if (this + 168 != v2)
    {
      operator delete(v2);
    }
  }

  boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(this);
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, this);
  __cxa_throw(exception, off_278F808A0, MEMORY[0x277D825F0]);
}

void boost::container::small_vector_base<std::pair<std::shared_ptr<char>,unsigned long>,void,void>::move_construct_impl(uint64_t a1, void *a2)
{
  v4 = (a2 + 3);
  v3 = *a2;
  if (v4 == v3)
  {
    boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::assign<boost::move_iterator<std::pair<std::shared_ptr<char>,unsigned long>*>>(a1, v3, v3 + 24 * a2[1]);

    boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(a2);
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = *(a2 + 1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::assign<boost::move_iterator<std::pair<std::shared_ptr<char>,unsigned long>*>>(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
  if (v5 <= a1[2])
  {
    boost::container::copy_assign_range_alloc_n<boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,boost::move_iterator<std::pair<std::shared_ptr<char>,unsigned long>*>,std::pair<std::shared_ptr<char>,unsigned long>*>(a1, a2, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3), *a1, a1[1]);
    a1[1] = v5;
  }

  else
  {
    if (v5 >= 0x555555555555556)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
    }

    v7 = operator new(a3 - a2);
    v8 = *a1;
    if (*a1)
    {
      boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(a1);
      if (a1 + 3 != v8)
      {
        operator delete(v8);
      }
    }

    a1[1] = 0;
    a1[2] = v5;
    *a1 = v7;

    boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_uninitialized_construct_at_end<boost::move_iterator<std::pair<std::shared_ptr<char>,unsigned long>*>>(a1, a2, a3);
  }
}

void boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

void *boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::priv_uninitialized_construct_at_end<boost::move_iterator<std::pair<std::shared_ptr<char>,unsigned long>*>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = *result + 24 * v3;
  v5 = v4;
  if (a2 != a3)
  {
    do
    {
      *v5 = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(v5 + 16) = *(a2 + 16);
      a2 += 24;
      v5 += 24;
    }

    while (a2 != a3);
    v3 = result[1];
  }

  result[1] = v3 - 0x5555555555555555 * ((v5 - v4) >> 3);
  return result;
}

void boost::container::copy_assign_range_alloc_n<boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,boost::move_iterator<std::pair<std::shared_ptr<char>,unsigned long>*>,std::pair<std::shared_ptr<char>,unsigned long>*>(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  v9 = a5 - a3;
  if (a5 >= a3)
  {
    if (a3)
    {
      v15 = a3;
      do
      {
        v16 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v17 = *(a4 + 8);
        *a4 = v16;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        *(a4 + 16) = *(v8 + 2);
        v8 = (v8 + 24);
        a4 += 24;
        --v15;
      }

      while (v15);
    }

    if (a5 != a3)
    {
      v18 = a3 - a5;
      v19 = (a4 + 8);
      do
      {
        if (*v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v19);
        }

        v19 += 3;
        v14 = __CFADD__(v18++, 1);
      }

      while (!v14);
    }
  }

  else
  {
    if (a5)
    {
      v10 = a2;
      v8 = (a2 + 24 * a5);
      v11 = a5;
      do
      {
        v12 = *v10;
        *v10 = 0;
        *(v10 + 1) = 0;
        v13 = *(a4 + 8);
        *a4 = v12;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        *(a4 + 16) = *(v10 + 2);
        v10 = (v10 + 24);
        a4 += 24;
        --v11;
      }

      while (v11);
    }

    if (a3 != a5)
    {
      do
      {
        *a4 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        *(a4 + 16) = *(v8 + 2);
        v8 = (v8 + 24);
        a4 += 24;
        v14 = __CFADD__(v9++, 1);
      }

      while (!v14);
    }
  }
}

void boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_resize<boost::container::value_init_t,boost::move_detail::integral_constant<unsigned int,1u>>(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 >= v3)
  {
    v5 = (*a1 + 8 * v3);
    if (*(a1 + 16) - v3 < v4)
    {
      boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_value_initialized_n_proxy<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long *>>(a1, v5, v4, &v6);
    }

    else
    {
      boost::container::expand_forward_and_insert_alloc<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long *,boost::container::dtl::insert_value_initialized_n_proxy<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long *>>(a1, v5, v5, v4);
      *(a1 + 8) += v4;
    }
  }

  else
  {
    *(a1 + 8) = a2;
  }
}

void boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_value_initialized_n_proxy<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long *>>(void **a1@<X0>, char *a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v9 >> 60)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v10);
  }

  v11 = v9;
  v12 = operator new(8 * v9);
  boost::container::vector<unsigned long,boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_value_initialized_n_proxy<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long *>>(a1, v12, v11, a2, a3);
  *a4 = *a1 + a2 - v8;
}

unint64_t boost::container::vector_alloc_holder<boost::container::small_vector_allocator<unsigned long,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0xFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xFFFFFFFFFFFFFFFLL - v4 < &a2[v3 - v4])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = &a2[v3];
  if (v8 < 0xFFFFFFFFFFFFFFFLL)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void *boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sg_vec_ref::create_iterators(sg_vec_ref *this)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v2, this, (this + 8), 1);
  sg_vec_ns::details::sg_vec_iterator::operator=(this + 496, &v2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v2, this, (this + 96), 0);
  sg_vec_ns::details::sg_vec_iterator::operator=(this + 272, &v2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t sg_vec_ns::details::sg_vec_iterator::operator=(uint64_t a1, uint64_t a2)
{
  sg_entry::operator=(a1, a2);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 152);
  v5 = *(a2 + 136);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 136) = v5;
  *(a1 + 152) = v4;
  v6 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v7 = *(a1 + 184);
  *(a1 + 176) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a1 + 192) = *(a2 + 192);
  v8 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v8;
  return a1;
}

{
  sg_entry::operator=(a1, a2);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 136);
  v5 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v5;
  *(a1 + 136) = v4;
  v7 = *(a2 + 176);
  v6 = *(a2 + 184);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 184);
  *(a1 + 176) = v7;
  *(a1 + 184) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 192) = *(a2 + 192);
  v9 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v9;
  return a1;
}

uint64_t sg_entry::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a2[1];
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = v6;
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[5];
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 64) = v8;
      *(a1 + 80) = v9;
      *(a1 + 48) = v7;
    }
  }

  else if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
  }

  else
  {
    sg_per_io_crypto::sg_per_io_crypto((a1 + 48), (a2 + 3));
    *(a1 + 104) = 1;
  }

  return a1;
}

void sg_vec::~sg_vec(sg_vec *this)
{
  v2 = *(this + 111);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 89);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 83);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 61);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 46);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 35);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 20))
  {
    v8 = *(this + 18);
    if (this + 168 != v8)
    {
      operator delete(v8);
    }
  }

  boost::container::vector<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::small_vector_allocator<std::pair<std::shared_ptr<char>,unsigned long>,boost::container::new_allocator<void>,void>,void>::~vector(this);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_248DF0438(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<191ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD35A8;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DF0510(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<113ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD2B08;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DF05F0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<167ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD2D28;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DF06B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<172ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD2F48;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DF0780(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<177ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD3168;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DF0848(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<183ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD3388;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DF0910(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<_di_plugin_t>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<_di_plugin_t>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t PluginsManager::register_plugin(std::string const&,_di_plugin_t *)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  *&v9 = "PluginsManager::register_plugin(const string &, di_plugin_t *)::(anonymous class)::operator()(di_plugin_t *) const";
  *(&v9 + 1) = 93;
  v10 = 0;
  di_log::logger<di_log::log_printer<187ul>>::logger(v11, &v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Unregistering plugin ", 21);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v5, v6);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(v11);
  result = MEMORY[0x24C1ED6A0](&v13);
  v8 = *(a2 + 32);
  if (v8)
  {
    return v8(a2);
  }

  return result;
}

void sub_248DF0BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<187ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<_di_plugin_t *,PluginsManager::register_plugin(std::string const&,_di_plugin_t *)::$_0,std::allocator<_di_plugin_t>>::~__shared_ptr_pointer(std::__shared_weak_count *this)
{
  this->__vftable = &unk_285BD3EB0;
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__shared_owners_);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

{
  this->__vftable = &unk_285BD3EB0;
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__shared_owners_);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_pointer<_di_plugin_t *,PluginsManager::register_plugin(std::string const&,_di_plugin_t *)::$_0,std::allocator<_di_plugin_t>>::__on_zero_shared(uint64_t a1)
{
  PluginsManager::register_plugin(std::string const&,_di_plugin_t *)::$_0::operator()(a1 + 32, *(a1 + 24));
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<_di_plugin_t *,PluginsManager::register_plugin(std::string const&,_di_plugin_t *)::$_0,std::allocator<_di_plugin_t>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *di_log::logger<di_log::log_printer<187ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<187ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BD3F18;
  a1[45] = &unk_285BD4018;
  a1[46] = &unk_285BD4040;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BD3F18;
  a1[45] = &unk_285BD3FA0;
  a1[46] = &unk_285BD3FC8;
  return a1;
}

void sub_248DF0EAC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<187ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<187ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD40B0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DF0FC4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BD40B0;
  di_log::logger_buf<di_log::log_printer<187ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void di_log::logger<di_log::log_printer<187ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<187ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<187ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<187ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<187ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<187ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<187ul>>::_sync(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v8 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<187ul>::log((a1 + 72), __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DF1568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<187ul>::log(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  if (DIForwardLogs())
  {
    DIOSLog = getDIOSLog();
    os_log_type_enabled(DIOSLog, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v18 = v4;
    v19 = 2080;
    v20 = v7;
    v21 = 2048;
    v22 = 187;
    v23 = 2082;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v18 = v4;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = 187;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_248DE0000, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__erase_unique<std::string>(uint64_t **a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<_di_plugin_t * (*)(unsigned long long),unsigned long long>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<_di_plugin_t>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void diskimage_uio::expected_ns::std::experimental::fundamentals_v3::bad_expected_access<void>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__function::__func<plugin_header::plugin_header(std::string const&,__CFDictionary const*,std::optional<int>,diskimage_decode_fn_t const&,void *)::$_0,std::allocator<plugin_header::plugin_header(std::string const&,__CFDictionary const*,std::optional<int>,diskimage_decode_fn_t const&,void *)::$_0>,void ()(_di_plugin_image_t *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v3 = *(*a2 + 72);
  if (v3)
  {
    return v3();
  }

  return result;
}

uint64_t std::__function::__func<plugin_header::plugin_header(std::string const&,__CFDictionary const*,std::optional<int>,diskimage_decode_fn_t const&,void *)::$_0,std::allocator<plugin_header::plugin_header(std::string const&,__CFDictionary const*,std::optional<int>,diskimage_decode_fn_t const&,void *)::$_0>,void ()(_di_plugin_image_t *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(_di_plugin_image_t *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(_di_plugin_image_t *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::shared_ptr<_di_plugin_image_t>::shared_ptr[abi:ne200100]<_di_plugin_image_t,std::function<void ()(_di_plugin_image_t*)>,0>(void *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  operator new();
}

void sub_248DF1ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    std::__function::__value_func<void ()(_di_plugin_image_t *)>::operator()[abi:ne200100](v9);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<_di_plugin_image_t *,std::function<void ()(_di_plugin_image_t *)>,std::allocator<_di_plugin_image_t>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BD4200;
  std::__function::__value_func<void ()(_di_plugin_image_t *)>::~__value_func[abi:ne200100](&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

{
  a1->__vftable = &unk_285BD4200;
  std::__function::__value_func<void ()(_di_plugin_image_t *)>::~__value_func[abi:ne200100](&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<_di_plugin_image_t *,std::function<void ()(_di_plugin_image_t *)>,std::allocator<_di_plugin_image_t>>::__on_zero_shared(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v4);
  return std::__function::__value_func<void ()(_di_plugin_image_t *)>::~__value_func[abi:ne200100](a1 + 32);
}

uint64_t std::__shared_ptr_pointer<_di_plugin_image_t *,std::function<void ()(_di_plugin_image_t *)>,std::allocator<_di_plugin_image_t>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(_di_plugin_image_t *)>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

const void **CFAutoRelease<__CFUUID const*>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<282ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BD37C8;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248DF2284(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(uint64_t a1, uint64_t a2, uint64_t a3, const sg_vec_ns::details::sg_vec_iterator *a4, const sg_vec_ns::details::sg_vec_iterator *a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v25[14] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D85FA0];
  v15 = *MEMORY[0x277D85FA0];
  v16 = *(a2 + 152);
  crypto::details::buffer_aligner::backend_op_to_different_buffer_fn(a6, v25);
  v17 = crypto::details::buffer_aligner::calc_total_sg_size<sg_vec_ns::details::sg_vec_iterator>(a4, a5, v15, v16, v25);
  crypto::details::sg_allocator::sg_allocator(a1, v17, *v14);
  std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](v25);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v22, a4);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v19, a5);
  v18 = std::distance[abi:ne200100]<sg_vec_ns::details::sg_vec_iterator>(v22, v19);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  *(a1 + 96) = v18;
  is_mul_ok(3 * v18, 0x18uLL);
  operator new[]();
}

void sub_248DF270C(_Unwind_Exception *a1)
{
  std::__function::__value_func<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::~__value_func[abi:ne200100](v2 + 32);
  std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](v3 - 208);
  fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_copy_op>::~fixed_size_vector_t(v1 + 25, v5);
  fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_crypt_op>::~fixed_size_vector_t(v1 + 22, v6);
  fixed_size_vector_t<lw_future_managed_setter<int,0>>::~fixed_size_vector_t(v1 + 19);
  fixed_size_vector_t<sg_entry>::~fixed_size_vector_t(v1 + 16);
  fixed_size_vector_t<lw_future<int>>::~fixed_size_vector_t(v1 + 13);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](v1, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100]((v1 + 1));
  _Unwind_Resume(a1);
}

void crypto::crypt_op::crypt_consecutive_vector::~crypt_consecutive_vector(crypto::crypt_op::crypt_consecutive_vector *this)
{
  (*(**(this + 9) + 152))(*(this + 9));
  fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_copy_op>::~fixed_size_vector_t(this + 25, v2);
  fixed_size_vector_t<crypto::crypt_op::crypt_consecutive_vector_base::micro_crypt_op>::~fixed_size_vector_t(this + 22, v3);
  v4 = *(this + 19);
  if (v4)
  {
    if (*(this + 21))
    {
      *(this + 21) = 0;
    }

    *(this + 19) = 0;
    MEMORY[0x24C1ED710](v4 - 16, 0x1022C8051CB810ALL);
  }

  fixed_size_vector_t<sg_entry>::~fixed_size_vector_t(this + 16);
  v5 = *(this + 13);
  if (v5)
  {
    if (*(this + 15))
    {
      *(this + 15) = 0;
    }

    *(this + 13) = 0;
    MEMORY[0x24C1ED710](v5 - 16, 0x1020C803EC5B5D7);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](this, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t crypto::details::buffer_aligner::calc_total_sg_size<sg_vec_ns::details::sg_vec_iterator>(const sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (sg_vec_ns::details::sg_vec_iterator::operator==(a1, a2))
  {
    return 0;
  }

  sg_entry::sg_entry(v37, a1);
  v11 = v39;
  container_it<sg_vec_ns::details::sg_vec_iterator>::container_it(v31, a1, a2);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v28, v31);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v25, &v34);
  v10 = 0;
  v12 = v11 / a3 * a3;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(v28, v25))
  {
    sg_entry::sg_entry(&v21, v28);
    v13 = *(a5 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v13 + 48))(v13, &v21))
    {
      v14 = v24 - v12 + v23;
      if (v14 % a3)
      {
        v15 = a3 - v14 % a3;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 + v14;
      v10 += v16;
      v12 += v16;
    }

    else
    {
      v17 = a3;
      if (v24 % a4)
      {
        goto LABEL_14;
      }

      if (v23 % a4)
      {
        v17 = 0;
LABEL_14:
        v18 = v17 + v10;
        if ((v23 + v24) % a4)
        {
          v19 = a3;
        }

        else
        {
          v19 = 0;
        }

        v10 = v18 + v19;
        v12 = (a4 - 1 + v23 + v24) / a4 * a4;
        goto LABEL_18;
      }

      v12 = v23 + v24;
    }

LABEL_18:
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    sg_vec_ns::details::sg_vec_iterator::operator++(v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  return v10;
}

void sub_248DF2AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a23);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a51);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&STACK[0x230]);
  v53 = *(v51 - 168);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  _Unwind_Resume(a1);
}

uint64_t std::distance[abi:ne200100]<sg_vec_ns::details::sg_vec_iterator>(sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v8, a1);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v5, a2);
  for (i = 0; !sg_vec_ns::details::sg_vec_iterator::operator==(v8, &v5); ++i)
  {
    sg_vec_ns::details::sg_vec_iterator::operator++(v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return i;
}

void sub_248DF2BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  _Unwind_Resume(a1);
}

void crypto::details::buffer_aligner::operator()<sg_vec_ns::details::sg_vec_iterator>(void *a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  container_it<sg_vec_ns::details::sg_vec_iterator>::container_it(v14, a2, a3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v11, v14);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v8, &v17);
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(v11, v8))
  {
    sg_entry::sg_entry(&v5, v11);
    v4 = crypto::details::buffer_aligner::try_append_to_last_sg(a1, &v5, 0);
    if (v4 != v7)
    {
      crypto::details::buffer_aligner::handle_unaligned_sg(a1, &v5, v4, 0);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    sg_vec_ns::details::sg_vec_iterator::operator++(v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_248DF2D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a23);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a51);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t *fixed_size_vector_t<lw_future_managed_setter<int,0>>::~fixed_size_vector_t(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (a1[2])
    {
      a1[2] = 0;
    }

    *a1 = 0;
    MEMORY[0x24C1ED710](v2 - 16, 0x1022C8051CB810ALL);
  }

  return a1;
}

uint64_t *fixed_size_vector_t<lw_future<int>>::~fixed_size_vector_t(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (a1[2])
    {
      a1[2] = 0;
    }

    *a1 = 0;
    MEMORY[0x24C1ED710](v2 - 16, 0x1020C803EC5B5D7);
  }

  return a1;
}

void *container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(void *a1)
{
  v2 = a1[51];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[29];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[23];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t container_it<sg_vec_ns::details::sg_vec_iterator>::container_it(uint64_t a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(a1, a2);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((a1 + 224), a3);
  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(sg_entry const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(crypto::crypt_op&,Backend &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(crypto::crypt_op&,Backend &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(crypto::crypt_op&,Backend &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(crypto::crypt_op&,Backend &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#1}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void *std::__function::__func<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(crypto::crypt_op&,Backend &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2},std::allocator<crypto::crypt_op::crypt_consecutive_vector::crypt_consecutive_vector<sg_vec_ns::details::sg_vec_iterator>(crypto::crypt_op&,Backend &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&,Backend::op,long long)::{lambda(char *,char *,unsigned long)#2}>,crypto::details::buffer_aligner::inout_t ()(char *,char *,unsigned long)>::operator()(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}