id ha_diagnostic_log()
{
  if (ha_diagnostic_log_onceToken != -1)
  {
    ha_diagnostic_log_cold_1();
  }

  v1 = ha_diagnostic_log_log;

  return v1;
}

void __destructor_8_s0_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_251283AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ha_diagnostic_log_block_invoke()
{
  ha_diagnostic_log_log = os_log_create("com.apple.HealthAlgorithms", "scandium");

  return MEMORY[0x2821F96F8]();
}

uint64_t ScandiumLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!ScandiumLibraryCore_frameworkLibrary)
  {
    ScandiumLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = ScandiumLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ScandiumLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ScandiumLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getSCProcessorClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  if (!ScandiumLibraryCore())
  {
    v10 = abort_report_np();
    free(v10);
  }

  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SCProcessor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSCProcessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v11 = __getSCProcessorClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0(v11, v12, v13, v14, v15, v16, v17, v18, a9);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t ha_sensitive_logging_is_enabled()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HKShowSensitiveLogItems"];

  return v1;
}

id ha_get_log()
{
  if (ha_get_log_onceToken != -1)
  {
    ha_get_log_cold_1();
  }

  v1 = ha_get_log_log;

  return v1;
}

uint64_t __ha_get_log_block_invoke()
{
  ha_get_log_log = os_log_create("com.apple.HealthAlgorithms", "framework");

  return MEMORY[0x2821F96F8]();
}

uint64_t HAFacialMetricsGenerateHashForTimestamp(double a1)
{
  *&v6[1] = a1;
  v1 = SecSHA1DigestCreate();
  v2 = v1;
  if (!v1)
  {
    v4 = ha_get_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      HAFacialMetricsGenerateHashForTimestamp_cold_2(v4);
    }

    goto LABEL_8;
  }

  v6[0] = 0;
  if ([v1 length] < 8)
  {
    v4 = ha_get_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      HAFacialMetricsGenerateHashForTimestamp_cold_1(v4);
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  [v2 getBytes:v6 length:8];
  v3 = v6[0];
LABEL_9:

  return v3;
}

void sub_251284CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>::~__value_func[abi:ne200100](&a16);
  std::__function::__value_func<BOOL ()(mimosa::Metadata const&)>::~__value_func[abi:ne200100](&a20);
  std::__function::__value_func<BOOL ()(mimosa::CodecVersion const&)>::~__value_func[abi:ne200100](v22 - 72);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_251284E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  std::__function::__value_func<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(mimosa::Metadata const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(mimosa::CodecVersion const&)>::~__value_func[abi:ne200100](va2);
  MEMORY[0x25306FDD0](v3, v2);
  _Unwind_Resume(a1);
}

void sub_251285038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x25306FDD0](v12, v13);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<mimosa::Decoder>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v1::Decoder,mimosa::v2::Decoder>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 96);
    std::__function::__value_func<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>::~__value_func[abi:ne200100](v2 + 64);
    std::__function::__value_func<BOOL ()(mimosa::Metadata const&)>::~__value_func[abi:ne200100](v2 + 32);
    std::__function::__value_func<BOOL ()(mimosa::CodecVersion const&)>::~__value_func[abi:ne200100](v2);

    JUMPOUT(0x25306FDD0);
  }

  return result;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

unint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame timestamp]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    v3 = (__PAIR128__(125 * v2 / 3uLL, 125 * v2) - 3 * (125 * v2 / 3uLL)) >> 64;
    v4 = -3 * v3 + 125 * v2;
    v5 = 3 * (v3 + 1) - 125 * v2;
    result = v3;
    if (v4 >= v5)
    {
      result = v3 + 1;
      if (v4 == v5)
      {
        return (v3 & 1) + v3;
      }
    }
  }

  else
  {
    v7 = 1953125 * v2;
    v8 = (1953125 * v2) >> 6;
    v9 = (1953125 * v2) & 0x3F;
    v10 = -1953125 * v2 + ((v8 + 1) << 6);
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = ((v7 >> 6) & 1) + v8;
    if (!v12)
    {
      v13 = v8 + 1;
    }

    if (v11)
    {
      return v13;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 124);
  v3 = 8;
  if ((v2 & 0x2000) != 0)
  {
    v3 = (8 * (*(a2 + 140) & 1)) | 4;
  }

  if ((*(a2 + 122) & 1) == 0)
  {
    v3 = 8 * (*(a2 + 140) & 1);
  }

  LODWORD(v4) = (v2 >> 14) & 2 | (8 * ((v2 >> 1) & 1));
  if ((v2 & 0x10080) != 0)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  return v3 | v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 124);
  v3 = 8;
  if ((v2 & 0x2000) != 0)
  {
    v3 = (8 * (*(a2 + 140) & 1)) | 4;
  }

  if ((*(a2 + 122) & 1) == 0)
  {
    v3 = 8 * (*(a2 + 140) & 1);
  }

  LODWORD(v4) = (v2 >> 14) & 2 | (8 * ((v2 >> 1) & 1));
  if ((v2 & 0x10080) != 0)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  return v3 | v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 132);
  v3 = 8;
  if ((v2 & 0x2000) != 0)
  {
    v3 = (8 * (*(a2 + 138) & 1)) | 4;
  }

  if ((*(a2 + 130) & 1) == 0)
  {
    v3 = 8 * (*(a2 + 138) & 1);
  }

  LODWORD(v4) = (v2 >> 14) & 2 | (8 * ((v2 >> 1) & 1));
  if ((v2 & 0x10080) != 0)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  return v3 | v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 132);
  v3 = 8;
  if ((v2 & 0x2000) != 0)
  {
    v3 = (8 * (*(a2 + 138) & 1)) | 4;
  }

  if ((*(a2 + 130) & 1) == 0)
  {
    v3 = 8 * (*(a2 + 138) & 1);
  }

  LODWORD(v4) = (v2 >> 14) & 2 | (8 * ((v2 >> 1) & 1));
  if ((v2 & 0x10080) != 0)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  return v3 | v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 132);
  v3 = 8;
  if ((v2 & 0x2000) != 0)
  {
    v3 = (8 * (*(a2 + 138) & 1)) | 4;
  }

  if ((*(a2 + 130) & 1) == 0)
  {
    v3 = 8 * (*(a2 + 138) & 1);
  }

  LODWORD(v4) = (v2 >> 14) & 2 | (8 * ((v2 >> 1) & 1));
  if ((v2 & 0x10080) != 0)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  return v3 | v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 132);
  v3 = 8;
  if ((v2 & 0x2000) != 0)
  {
    v3 = (8 * (*(a2 + 138) & 1)) | 4;
  }

  if ((*(a2 + 130) & 1) == 0)
  {
    v3 = 8 * (*(a2 + 138) & 1);
  }

  LODWORD(v4) = (v2 >> 14) & 2 | (8 * ((v2 >> 1) & 1));
  if ((v2 & 0x10080) != 0)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  return v3 | v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 132);
  v3 = 8;
  if ((v2 & 0x2000) != 0)
  {
    v3 = (8 * (*(a2 + 138) & 1)) | 4;
  }

  if ((*(a2 + 130) & 1) == 0)
  {
    v3 = 8 * (*(a2 + 138) & 1);
  }

  LODWORD(v4) = (v2 >> 14) & 2 | (8 * ((v2 >> 1) & 1));
  if ((v2 & 0x10080) != 0)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  return v3 | v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 132);
  v3 = 8;
  if ((v2 & 0x2000) != 0)
  {
    v3 = (8 * (*(a2 + 138) & 1)) | 4;
  }

  if ((*(a2 + 130) & 1) == 0)
  {
    v3 = 8 * (*(a2 + 138) & 1);
  }

  LODWORD(v4) = (v2 >> 14) & 2 | (8 * ((v2 >> 1) & 1));
  if ((v2 & 0x10080) != 0)
  {
    v4 = (v4 + 1);
  }

  else
  {
    v4 = v4;
  }

  return v3 | v4;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  v15 = 5647;
  v14 = 11;
  v4 = ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,2ul>,std::array<unsigned long long,2ul>>(&v14, &v15, (a2 + 112)) & 0xFFFFFFF7 | (8 * (v3 & 1));
  v13 = 9;
  if (ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,5ul>,std::array<unsigned long long,2ul>>(&v13, &unk_2512C6FD8, (a2 + 112)))
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v12 = 8;
  v11 = 6;
  v6 = ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,1ul>,std::array<unsigned long long,2ul>>(&v11, &v12, (a2 + 112));
  v7 = 0;
  if (v6)
  {
    result = v5 | 4;
  }

  else
  {
    result = v5;
  }

  while (1)
  {
    v9 = byte_2512C6FDD[v7];
    if (v9 < 0x40)
    {
      v10 = *(a2 + 112);
    }

    else
    {
      LOBYTE(v9) = v9 - 64;
      v10 = *(a2 + 120);
    }

    if ((v10 >> v9))
    {
      break;
    }

    if (++v7 == 22)
    {
      return result;
    }
  }

  return result | 8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  v15 = 5647;
  v14 = 11;
  v4 = ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,2ul>,std::array<unsigned long long,2ul>>(&v14, &v15, (a2 + 112)) & 0xFFFFFFF7 | (8 * (v3 & 1));
  v13 = 9;
  if (ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,5ul>,std::array<unsigned long long,2ul>>(&v13, &unk_2512C6FD8, (a2 + 112)))
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v12 = 8;
  v11 = 6;
  v6 = ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,1ul>,std::array<unsigned long long,2ul>>(&v11, &v12, (a2 + 112));
  v7 = 0;
  if (v6)
  {
    result = v5 | 4;
  }

  else
  {
    result = v5;
  }

  while (1)
  {
    v9 = byte_2512C6FDD[v7];
    if (v9 < 0x40)
    {
      v10 = *(a2 + 112);
    }

    else
    {
      LOBYTE(v9) = v9 - 64;
      v10 = *(a2 + 120);
    }

    if ((v10 >> v9))
    {
      break;
    }

    if (++v7 == 22)
    {
      return result;
    }
  }

  return result | 8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  v15 = 5647;
  v14 = 11;
  v4 = ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,2ul>,std::array<unsigned long long,2ul>>(&v14, &v15, (a2 + 112)) & 0xFFFFFFF7 | (8 * (v3 & 1));
  v13 = 9;
  if (ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,5ul>,std::array<unsigned long long,2ul>>(&v13, &unk_2512C6FD8, (a2 + 112)))
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v12 = 8;
  v11 = 6;
  v6 = ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,1ul>,std::array<unsigned long long,2ul>>(&v11, &v12, (a2 + 112));
  v7 = 0;
  if (v6)
  {
    result = v5 | 4;
  }

  else
  {
    result = v5;
  }

  while (1)
  {
    v9 = byte_2512C6FDD[v7];
    if (v9 < 0x40)
    {
      v10 = *(a2 + 112);
    }

    else
    {
      LOBYTE(v9) = v9 - 64;
      v10 = *(a2 + 120);
    }

    if ((v10 >> v9))
    {
      break;
    }

    if (++v7 == 22)
    {
      return result;
    }
  }

  return result | 8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame usage]::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  v15 = 5647;
  v14 = 11;
  v4 = ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,2ul>,std::array<unsigned long long,2ul>>(&v14, &v15, (a2 + 112)) & 0xFFFFFFF7 | (8 * (v3 & 1));
  v13 = 9;
  if (ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,5ul>,std::array<unsigned long long,2ul>>(&v13, &unk_2512C6FD8, (a2 + 112)))
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v12 = 8;
  v11 = 6;
  v6 = ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,1ul>,std::array<unsigned long long,2ul>>(&v11, &v12, (a2 + 112));
  v7 = 0;
  if (v6)
  {
    result = v5 | 4;
  }

  else
  {
    result = v5;
  }

  while (1)
  {
    v9 = byte_2512C6FDD[v7];
    if (v9 < 0x40)
    {
      v10 = *(a2 + 112);
    }

    else
    {
      LOBYTE(v9) = v9 - 64;
      v10 = *(a2 + 120);
    }

    if ((v10 >> v9))
    {
      break;
    }

    if (++v7 == 22)
    {
      return result;
    }
  }

  return result | 8;
}

BOOL ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,2ul>,std::array<unsigned long long,2ul>>(unsigned __int8 *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  if (v3 < 0x40)
  {
    v4 = *a3;
  }

  else
  {
    LOBYTE(v3) = v3 - 64;
    v4 = a3[1];
  }

  if (((v4 >> v3) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *(a2 + v5);
    if (v6 < 0x40)
    {
      v7 = *a3;
    }

    else
    {
      LOBYTE(v6) = v6 - 64;
      v7 = a3[1];
    }

    v8 = (1 << v6) & v7;
    result = v8 == 0;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 == 1;
    }

    ++v5;
  }

  while (!v10);
  return result;
}

BOOL ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,5ul>,std::array<unsigned long long,2ul>>(unsigned __int8 *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  if (v3 < 0x40)
  {
    v4 = *a3;
  }

  else
  {
    LOBYTE(v3) = v3 - 64;
    v4 = a3[1];
  }

  if (((v4 >> v3) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *(a2 + v5);
    if (v6 < 0x40)
    {
      v7 = *a3;
    }

    else
    {
      LOBYTE(v6) = v6 - 64;
      v7 = a3[1];
    }

    v8 = (1 << v6) & v7;
    result = v8 == 0;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 == 4;
    }

    ++v5;
  }

  while (!v10);
  return result;
}

BOOL ComputeServiceUtils::is_compute_service_enabled_directly<ComputeServiceUtils::compute_service,std::array<ComputeServiceUtils::compute_service,1ul>,std::array<unsigned long long,2ul>>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t *a3)
{
  v3 = *a1;
  v4 = a3[1];
  if (v3 < 0x40)
  {
    v5 = *a3;
  }

  else
  {
    LOBYTE(v3) = v3 - 64;
    v5 = a3[1];
  }

  if (((v5 >> v3) & 1) == 0)
  {
    return 0;
  }

  v6 = *a2;
  if (v6 < 0x40)
  {
    v4 = *a3;
  }

  else
  {
    LOBYTE(v6) = v6 - 64;
  }

  return ((v4 >> v6) & 1) == 0;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 208) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 210), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 216) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 218), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 216) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 218), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 192) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 194), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 192) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 194), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 192) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 194), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 184) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 186), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 184) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 186), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

HAPPGTemperatureSample *std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAPPGFrame temperatureSample]::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,std::__variant_detail::_Trait::PacketV2,std::__variant_detail::_Trait::PacketV3,std::__variant_detail::_Trait::PacketV4,std::__variant_detail::_Trait::PacketV5,std::__variant_detail::_Trait::PacketV6,std::__variant_detail::_Trait::PacketV7,std::__variant_detail::_Trait::PacketV8,std::__variant_detail::_Trait::PacketV9,std::__variant_detail::_Trait::PacketV10,std::__variant_detail::_Trait::PacketV11,std::__variant_detail::_Trait::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 184) == 1)
  {
    v4 = [HAPPGTemperatureSample alloc];
    *&v5 = vcvts_n_f32_s32(*(a2 + 186), 7uLL);
    v6 = [(HAPPGTemperatureSample *)v4 initWithDegreesCelsius:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void health_algorithms::PPGProcessor::Output::~Output(health_algorithms::PPGProcessor::Output *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
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

uint64_t std::__function::__value_func<BOOL ()(mimosa::CodecVersion const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(mimosa::Metadata const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(mimosa::CodecVersion const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(mimosa::Metadata const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v1::Decoder,mimosa::v2::Decoder>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 2728);
  if (v2 != -1)
  {
    result = (*(&off_286352568 + v2))(&v3, result);
  }

  *(v1 + 2728) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v17DecoderENS8_2v27DecoderEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SC_EEEEEEDcSG_DpT0_(uint64_t a1, mimosa::Metadata *a2)
{
  std::__function::__value_func<BOOL ()(mimosa::PacketV1 const&,double)>::~__value_func[abi:ne200100](a2 + 2696);
  std::__function::__value_func<BOOL ()(mimosa::Metadata const&)>::~__value_func[abi:ne200100](a2 + 2664);
  v3 = *(a2 + 321);
  if (v3)
  {
    *(a2 + 322) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 316);
  if (v4)
  {
    *(a2 + 317) = v4;
    operator delete(v4);
  }

  mimosa::Metadata::~Metadata(a2);
}

uint64_t std::__function::__value_func<BOOL ()(mimosa::PacketV1 const&,double)>::~__value_func[abi:ne200100](uint64_t a1)
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

void mimosa::Metadata::~Metadata(mimosa::Metadata *this)
{
  if (*(this + 224) == 1)
  {
    v2 = *(this + 25);
    if (v2)
    {
      *(this + 26) = v2;
      operator delete(v2);
    }

    v3 = *(this + 22);
    if (v3)
    {
      *(this + 23) = v3;
      operator delete(v3);
    }

    v4 = *(this + 19);
    if (v4)
    {
      *(this + 20) = v4;
      operator delete(v4);
    }
  }

  if (*(this + 144) == 1 && *(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

void mimosa::LightPathSemantics::~LightPathSemantics(mimosa::LightPathSemantics *this)
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

void mimosa::v2::Decoder::~Decoder(mimosa::v2::Decoder *this)
{
  mimosa::v2::PacketState::~PacketState((this + 104));
  std::__function::__value_func<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>::~__value_func[abi:ne200100](this + 72);
  std::__function::__value_func<BOOL ()(mimosa::Metadata const&)>::~__value_func[abi:ne200100](this + 40);
  std::__function::__value_func<BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12> const&)>::~__value_func[abi:ne200100](this + 8);
}

void mimosa::v2::PacketState::~PacketState(mimosa::v2::PacketState *this)
{
  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 1224);
  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 1184);
  v2 = *(this + 140);
  if (v2)
  {
    *(this + 141) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 1072);
  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 1032);
  v3 = *(this + 121);
  if (v3)
  {
    *(this + 122) = v3;
    operator delete(v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    *(this + 100) = v4;
    operator delete(v4);
  }

  v10 = (this + 752);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v5 = *(this + 86);
  if (v5)
  {
    *(this + 87) = v5;
    operator delete(v5);
  }

  v10 = (this + 656);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v6 = *(this + 46);
  if (v6)
  {
    *(this + 47) = v6;
    operator delete(v6);
  }

  v7 = *(this + 43);
  if (v7)
  {
    *(this + 44) = v7;
    operator delete(v7);
  }

  v10 = (this + 320);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v8 = *(this + 31);
  if (v8)
  {
    *(this + 32) = v8;
    operator delete(v8);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 208);
  v10 = (this + 184);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v9 = *(this + 15);
  if (v9)
  {
    *(this + 16) = v9;
    operator delete(v9);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 80);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned short>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned short>>::clear[abi:ne200100](uint64_t *a1)
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

uint64_t std::__function::__value_func<BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<health_algorithms::PPGProcessor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::~__hash_table(v2 + 16);
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x25306FDD0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        std::default_delete<hal9000::SignalProcessor>::operator()[abi:ne200100]((v2 + 4), v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::default_delete<hal9000::SignalProcessor>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x25306FDD0);
  }
}

void *std::__shared_ptr_emplace<std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>>::__shared_ptr_emplace[abi:ne200100]<std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::allocator<std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286352588;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100]((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286352588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25306FDD0);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 320) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 320);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_286352628[v5])(&v6, a2);
    *(a1 + 320) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 320);
  if (v2 != -1)
  {
    result = (off_2863525C8[v2])(&v3, result);
  }

  *(v1 + 320) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[20];
  if (v3)
  {
    a2[21] = v3;
    operator delete(v3);
  }

  v4 = a2[9];
  if (v4)
  {
    a2[10] = v4;
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[20];
  if (v3)
  {
    a2[21] = v3;
    operator delete(v3);
  }

  v4 = a2[9];
  if (v4)
  {
    a2[10] = v4;
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[20];
  if (v3)
  {
    a2[21] = v3;
    operator delete(v3);
  }

  v4 = a2[9];
  if (v4)
  {
    a2[10] = v4;
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[20];
  if (v3)
  {
    a2[21] = v3;
    operator delete(v3);
  }

  v4 = a2[9];
  if (v4)
  {
    a2[10] = v4;
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSO_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  std::vector<mimosa::OpticalSampleV1>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV1*,mimosa::OpticalSampleV1*>(v3 + 32, *(a2 + 32), *(a2 + 40), 0x8E38E38E38E38E39 * ((*(a2 + 40) - *(a2 + 32)) >> 2));
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(v3 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  result = *(a2 + 96);
  v5 = *(a2 + 128);
  *(v3 + 112) = *(a2 + 112);
  *(v3 + 128) = v5;
  *(v3 + 96) = result;
  return result;
}

void sub_251287EA4(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(v3 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(v3 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  *(v3 + 96) = *(a2 + 96);
  v4 = *(a2 + 112);
  v5 = *(a2 + 128);
  v6 = *(a2 + 160);
  *(v3 + 144) = *(a2 + 144);
  *(v3 + 160) = v6;
  *(v3 + 112) = v4;
  *(v3 + 128) = v5;
  v7 = *(a2 + 176);
  v8 = *(a2 + 192);
  v9 = *(a2 + 224);
  *(v3 + 208) = *(a2 + 208);
  *(v3 + 224) = v9;
  *(v3 + 176) = v7;
  *(v3 + 192) = v8;
  result = *(a2 + 240);
  v11 = *(a2 + 256);
  v12 = *(a2 + 272);
  *(v3 + 288) = *(a2 + 288);
  *(v3 + 256) = v11;
  *(v3 + 272) = v12;
  *(v3 + 240) = result;
  return result;
}

void sub_251287FB0(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(v3 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(v3 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v4 = *(a2 + 112);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 112) = v4;
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(v3 + 160) = *(a2 + 160);
  *(v3 + 176) = v7;
  *(v3 + 128) = v5;
  *(v3 + 144) = v6;
  v8 = *(a2 + 192);
  v9 = *(a2 + 208);
  v10 = *(a2 + 240);
  *(v3 + 224) = *(a2 + 224);
  *(v3 + 240) = v10;
  *(v3 + 192) = v8;
  *(v3 + 208) = v9;
  result = *(a2 + 256);
  v12 = *(a2 + 272);
  v13 = *(a2 + 304);
  *(v3 + 288) = *(a2 + 288);
  *(v3 + 304) = v13;
  *(v3 + 256) = result;
  *(v3 + 272) = v12;
  return result;
}

void sub_251288094(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(v3 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(v3 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v4 = *(a2 + 112);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 112) = v4;
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(v3 + 160) = *(a2 + 160);
  *(v3 + 176) = v7;
  *(v3 + 128) = v5;
  *(v3 + 144) = v6;
  v8 = *(a2 + 192);
  v9 = *(a2 + 208);
  v10 = *(a2 + 240);
  *(v3 + 224) = *(a2 + 224);
  *(v3 + 240) = v10;
  *(v3 + 192) = v8;
  *(v3 + 208) = v9;
  result = *(a2 + 256);
  v12 = *(a2 + 272);
  v13 = *(a2 + 304);
  *(v3 + 288) = *(a2 + 288);
  *(v3 + 304) = v13;
  *(v3 + 256) = result;
  *(v3 + 272) = v12;
  return result;
}

void sub_251288178(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(v3 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(v3 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v4 = *(a2 + 112);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 112) = v4;
  result = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(v3 + 160) = *(a2 + 160);
  *(v3 + 176) = v7;
  *(v3 + 128) = result;
  *(v3 + 144) = v6;
  return result;
}

void sub_25128823C(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(v3 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(v3 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  v6 = *(a2 + 144);
  *(v3 + 128) = *(a2 + 128);
  *(v3 + 144) = v6;
  *(v3 + 96) = v4;
  *(v3 + 112) = v5;
  v7 = *(a2 + 160);
  v8 = *(a2 + 176);
  v9 = *(a2 + 208);
  *(v3 + 192) = *(a2 + 192);
  *(v3 + 208) = v9;
  *(v3 + 160) = v7;
  *(v3 + 176) = v8;
  result = *(a2 + 224);
  v11 = *(a2 + 240);
  v12 = *(a2 + 272);
  *(v3 + 256) = *(a2 + 256);
  *(v3 + 272) = v12;
  *(v3 + 224) = result;
  *(v3 + 240) = v11;
  return result;
}

void sub_251288318(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(v3 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(v3 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v4 = *(a2 + 112);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 112) = v4;
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(v3 + 160) = *(a2 + 160);
  *(v3 + 176) = v7;
  *(v3 + 128) = v5;
  *(v3 + 144) = v6;
  v8 = *(a2 + 192);
  v9 = *(a2 + 208);
  v10 = *(a2 + 240);
  *(v3 + 224) = *(a2 + 224);
  *(v3 + 240) = v10;
  *(v3 + 192) = v8;
  *(v3 + 208) = v9;
  result = *(a2 + 256);
  v12 = *(a2 + 272);
  v13 = *(a2 + 288);
  *(v3 + 304) = *(a2 + 304);
  *(v3 + 272) = v12;
  *(v3 + 288) = v13;
  *(v3 + 256) = result;
  return result;
}

void sub_251288404(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN6mimosa8PacketV1ENS8_8PacketV2ENS8_8PacketV3ENS8_8PacketV4ENS8_8PacketV5ENS8_8PacketV6ENS8_8PacketV7ENS8_8PacketV8ENS8_8PacketV9ENS8_9PacketV10ENS8_9PacketV11ENS8_9PacketV12EEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlSV_E_JRKNS0_6__baseILSP_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(v3 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(v3 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v4 = *(a2 + 112);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 112) = v4;
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(v3 + 160) = *(a2 + 160);
  *(v3 + 176) = v7;
  *(v3 + 128) = v5;
  *(v3 + 144) = v6;
  v8 = *(a2 + 192);
  v9 = *(a2 + 208);
  v10 = *(a2 + 240);
  *(v3 + 224) = *(a2 + 224);
  *(v3 + 240) = v10;
  *(v3 + 192) = v8;
  *(v3 + 208) = v9;
  result = *(a2 + 256);
  v12 = *(a2 + 272);
  v13 = *(a2 + 288);
  *(v3 + 304) = *(a2 + 304);
  *(v3 + 272) = v12;
  *(v3 + 288) = v13;
  *(v3 + 256) = result;
  return result;
}

void sub_2512884F0(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<mimosa::OpticalSampleV1>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV1*,mimosa::OpticalSampleV1*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mimosa::OpticalSampleV1>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25128856C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mimosa::OpticalSampleV1>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::OpticalSampleV1>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::OpticalSampleV1>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2796B3BB0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mimosa::AccelSample>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25128873C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mimosa::AccelSample>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::AccelSample>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::AccelSample>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

mimosa::PacketV2 *mimosa::PacketV2::PacketV2(mimosa::PacketV2 *this, const mimosa::PacketV2 *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<mimosa::OpticalSampleV1>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV1*,mimosa::OpticalSampleV1*>(this + 32, *(a2 + 4), *(a2 + 5), 0x8E38E38E38E38E39 * ((*(a2 + 5) - *(a2 + 4)) >> 2));
  v4 = *(a2 + 56);
  *(this + 9) = 0;
  *(this + 56) = v4;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(this + 72, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v5 = *(a2 + 6);
  v6 = *(a2 + 8);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = v6;
  *(this + 6) = v5;
  v7 = *(a2 + 9);
  *(this + 20) = 0;
  *(this + 9) = v7;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(this + 160, *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 1);
  *(this + 92) = *(a2 + 92);
  v8 = *(a2 + 13);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = v8;
  v9 = *(a2 + 14);
  v10 = *(a2 + 15);
  v11 = *(a2 + 17);
  *(this + 16) = *(a2 + 16);
  *(this + 17) = v11;
  *(this + 14) = v9;
  *(this + 15) = v10;
  return this;
}

void sub_2512888F4(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_251288988(_Unwind_Exception *exception_object)
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

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t mimosa::PacketV3::PacketV3(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<mimosa::OpticalSampleV1>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV1*,mimosa::OpticalSampleV1*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0x8E38E38E38E38E39 * ((*(a2 + 40) - *(a2 + 32)) >> 2));
  v4 = *(a2 + 56);
  *(a1 + 72) = 0;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v5 = *(a2 + 96);
  v6 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v6;
  *(a1 + 96) = v5;
  v7 = *(a2 + 144);
  *(a1 + 160) = 0;
  *(a1 + 144) = v7;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1 + 160, *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 1);
  v8 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v8;
  return a1;
}

void sub_251288B10(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mimosa::PacketV4::PacketV4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<mimosa::OpticalSampleV1>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV1*,mimosa::OpticalSampleV1*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0x8E38E38E38E38E39 * ((*(a2 + 40) - *(a2 + 32)) >> 2));
  v4 = *(a2 + 56);
  *(a1 + 72) = 0;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v5 = *(a2 + 96);
  v6 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v6;
  *(a1 + 96) = v5;
  v7 = *(a2 + 144);
  *(a1 + 160) = 0;
  *(a1 + 144) = v7;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1 + 160, *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 1);
  v8 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v8;
  v9 = *(a2 + 248);
  v10 = *(a2 + 264);
  v11 = *(a2 + 280);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 264) = v10;
  *(a1 + 280) = v11;
  *(a1 + 248) = v9;
  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  return a1;
}

void sub_251288C64(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mimosa::PacketV5::PacketV5(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<mimosa::OpticalSampleV1>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV1*,mimosa::OpticalSampleV1*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0x8E38E38E38E38E39 * ((*(a2 + 40) - *(a2 + 32)) >> 2));
  v4 = *(a2 + 56);
  *(a1 + 72) = 0;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 2));
  v5 = *(a2 + 96);
  v6 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v6;
  *(a1 + 96) = v5;
  v7 = *(a2 + 144);
  *(a1 + 160) = 0;
  *(a1 + 144) = v7;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1 + 160, *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 1);
  v8 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v8;
  v10 = *(a2 + 280);
  v9 = *(a2 + 296);
  v11 = *(a2 + 264);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 280) = v10;
  *(a1 + 296) = v9;
  *(a1 + 264) = v11;
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  return a1;
}

void sub_251288DC8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mimosa::OpticalSampleV2>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_251288E5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mimosa::OpticalSampleV2>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::OpticalSampleV2>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::OpticalSampleV2>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__shared_ptr_emplace<mimosa::Metadata const>::__shared_ptr_emplace[abi:ne200100]<mimosa::Metadata const&,std::allocator<mimosa::Metadata>,0>(void *a1, const mimosa::Metadata *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286352698;
  mimosa::Metadata::Metadata((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<mimosa::Metadata const>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286352698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25306FDD0);
}

mimosa::Metadata *mimosa::Metadata::Metadata(mimosa::Metadata *this, const mimosa::Metadata *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *(this + 24) = *(a2 + 24);
  *(this + 1) = v5;
  *(this + 2) = v6;
  *this = v4;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 56), (a2 + 56));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 88), (a2 + 88));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 5, (a2 + 120));
  std::__optional_copy_base<mimosa::LightPathSemantics,false>::__optional_copy_base[abi:ne200100](this + 152, a2 + 152);
  memcpy(this + 232, a2 + 232, 0x8C8uLL);
  return this;
}

void sub_2512890C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 144) == 1 && *(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 112) == 1 && *(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_251289160(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
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

uint64_t std::__optional_copy_base<mimosa::LightPathSemantics,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 24, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 48, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_25128933C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  if (*(v1 + 72) == 1)
  {
    mimosa::LightPathSemantics::~LightPathSemantics(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2512893EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

os_log_t hal9000::get_signal_processor_log(hal9000 *this)
{
  result = hal9000::get_signal_processor_log(void)::log;
  if (!hal9000::get_signal_processor_log(void)::log)
  {
    result = os_log_create("com.apple.HealthAlgorithms", "SignalProcessor");
    hal9000::get_signal_processor_log(void)::log = result;
  }

  return result;
}

std::string *hal9000::SignalProcessor::SignalProcessor(std::string *this, __int128 *a2)
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

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *&this[3].__r_.__value_.__l.__data_ = *(a2 + 72);
  *&this[2].__r_.__value_.__r.__words[1] = v7;
  *&this[1].__r_.__value_.__r.__words[2] = v6;
  *&this[1].__r_.__value_.__l.__data_ = v5;
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = *(a2 + 120);
  this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
  *&this[5].__r_.__value_.__l.__data_ = v10;
  *&this[4].__r_.__value_.__r.__words[1] = v9;
  *&this[3].__r_.__value_.__r.__words[2] = v8;
  LODWORD(this[6].__r_.__value_.__l.__data_) = hal9000::SignalProcessor::find_watch_category(this, a2);
  this[6].__r_.__value_.__s.__data_[8] = 0;
  this[6].__r_.__value_.__s.__data_[12] = 0;
  this[6].__r_.__value_.__s.__data_[16] = 0;
  this[6].__r_.__value_.__s.__data_[20] = 0;
  this[7].__r_.__value_.__s.__data_[0] = 0;
  this[7].__r_.__value_.__s.__data_[4] = 0;
  this[7].__r_.__value_.__s.__data_[8] = 0;
  this[7].__r_.__value_.__s.__data_[12] = 0;
  this[7].__r_.__value_.__s.__data_[16] = 0;
  this[7].__r_.__value_.__s.__data_[20] = 0;
  return this;
}

uint64_t hal9000::SignalProcessor::find_watch_category(int a1, char *a2)
{
  v3 = a2 + 23;
  if (a2[23] < 0)
  {
    if (*(a2 + 1) == 5 && **a2 == 926036558 && *(*a2 + 4) == 98)
    {
      return 0;
    }

    if (*(a2 + 1) == 7 && **a2 == 926036558 && *(*a2 + 3) == 1346462263)
    {
      return 0;
    }

    if (*(a2 + 1) == 5 && **a2 == 926036558 && *(*a2 + 4) == 115)
    {
      return 0;
    }

    if (*(a2 + 1) == 7 && **a2 == 926036558 && *(*a2 + 3) == 1346466615)
    {
      return 0;
    }

    v12 = *(a2 + 1);
    if (v12 == 5)
    {
      if (**a2 == 942813774 && *(*a2 + 4) == 98)
      {
        return 0;
      }

      goto LABEL_60;
    }

    if (v12 != 7)
    {
      goto LABEL_60;
    }

    v7 = *a2;
  }

  else
  {
    v4 = a2[23];
    if (v4 == 5)
    {
      if (*a2 == 926036558 && a2[4] == 98)
      {
        return 0;
      }

      if (*a2 == 926036558 && a2[4] == 115)
      {
        return 0;
      }

      if (*a2 == 942813774 && a2[4] == 98)
      {
        return 0;
      }

      goto LABEL_60;
    }

    if (v4 != 7)
    {
      goto LABEL_60;
    }

    if (*a2 == 926036558 && *(a2 + 3) == 1346462263)
    {
      return 0;
    }

    if (*a2 == 926036558 && *(a2 + 3) == 1346466615)
    {
      return 0;
    }

    v7 = a2;
  }

  v13 = *v7;
  v14 = *(v7 + 3);
  if (v13 == 942813774 && v14 == 1346462264)
  {
    return 0;
  }

LABEL_60:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N228s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N228sAP"))
  {
    return 0;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N217b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N217bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N218b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N218bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N217s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N217sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N218s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N218sAP"))
  {
    return 1;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N208b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N208bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N207b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N207bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N208s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N208sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N207s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N207sAP"))
  {
    return 2;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N197b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N197bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N198b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N198bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N197s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N197sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N198s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N198sAP"))
  {
    return 3;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N187b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N187bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N188b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N188bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N187s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N187sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N188s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N188sAP"))
  {
    return 4;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N157b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N157bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N158b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N158bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N157s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N157sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N158s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N158sAP"))
  {
    return 5;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N243s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N243sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N244s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N244sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N243b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N243bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N244b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N244bAP"))
  {
    return 9;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N149s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N149sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N143s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N143sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N149b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N149bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N143b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N143bAP"))
  {
    return 10;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N140s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N140sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N142s") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N142sAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N140b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N140bAP") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N142b") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N142bAP"))
  {
    return 11;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N199") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N199AP"))
  {
    return 8;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N210") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N210AP"))
  {
    return 7;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N230") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "N230AP"))
  {
    return 6;
  }

  v21 = hal9000::get_signal_processor_log(void)::log;
  if (!hal9000::get_signal_processor_log(void)::log)
  {
    v21 = os_log_create("com.apple.HealthAlgorithms", "SignalProcessor");
    hal9000::get_signal_processor_log(void)::log = v21;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    hal9000::SignalProcessor::find_watch_category(v3, a2, v21);
  }

  return 12;
}

void hal9000::compute_tick_offsets(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 320);
  if (v4 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  __src[0] = &v25;
  (off_2863526D8[v4])(&__p, __src, a1);
  v6 = __p;
  v7 = v24;
  if (__p != v24)
  {
    if (a2)
    {
      v8 = *(v24 - 1);
      __src[1] = 0;
      v22 = 0;
      __src[0] = 0;
      v9 = (v8 + 1);
      do
      {
        v11 = *(v7 - 2);
        v7 -= 2;
        v10 = v11;
        if (v11)
        {
          v12 = 11.0;
          if ((v10 - 9) < 0xC)
          {
            __assert_rtn("get_ts_width_gemstone", "SignalProcessor.cpp", 129, "false");
          }
        }

        else
        {
          v12 = 0.0;
        }

        v25 = (v9 - v7[1]) * v12 + 0.0;
        std::vector<double>::insert(__src, __src[0], &v25);
        v6 = __p;
      }

      while (v7 != __p);
    }

    else
    {
      v14 = 0;
      LOBYTE(v15) = 0;
      __src[0] = 0;
      __src[1] = 0;
      v22 = 0;
      v16 = 0.0;
      v25 = 0.0;
      while (1)
      {
        v6 = __p;
        if (v7 == __p)
        {
          break;
        }

        v17 = v7;
        v19 = *(v7 - 2);
        v7 -= 2;
        v18 = v19;
        if ((a2 & 1) != 0 && v18 == v14 && *(v17 - 1) == v15)
        {
          v18 = v14;
        }

        else
        {
          if ((v18 - 12) >= 3)
          {
            if (v18)
            {
              v20 = 12.0;
              if ((v18 - 15) < 7)
              {
                __assert_rtn("get_ts_width_carnelian", "SignalProcessor.cpp", 90, "false");
              }
            }

            else
            {
              v20 = 0.0;
            }
          }

          else
          {
            v20 = 7.0;
          }

          v16 = v16 + v20;
          v25 = v16;
          if (a2)
          {
            LOBYTE(v15) = *(v17 - 1);
          }

          else
          {
            v18 = *v7;
            v15 = HIBYTE(*v7);
          }
        }

        LOBYTE(a2) = 1;
        std::vector<double>::insert(__src, __src[0], &v25);
        v14 = v18;
      }
    }

    v13 = v22;
    *a3 = *__src;
    a3[2] = v13;
  }

  if (v6)
  {
    v24 = v6;
    operator delete(v6);
  }
}

void sub_251289FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t hal9000::SignalProcessor::process@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int8x8_t a4@<D0>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  if (a1[156] == 1)
  {
    a1[156] = 0;
  }

  if (a1[164] == 1)
  {
    a1[164] = 0;
  }

  if (a1[172] == 1)
  {
    a1[172] = 0;
  }

  if (a1[180] == 1)
  {
    a1[180] = 0;
  }

  if (a1[188] == 1)
  {
    a1[188] = 0;
  }

  hal9000::SignalProcessor::populate_data_validity(a1, a2, a4);
  hal9000::SignalProcessor::perform_conversion(a1, a2, v7);

  return hal9000::SignalProcessor::populate_output(a1, a3);
}

_BYTE *hal9000::SignalProcessor::init(_BYTE *this)
{
  if (this[156] == 1)
  {
    this[156] = 0;
  }

  if (this[164] == 1)
  {
    this[164] = 0;
  }

  if (this[172] == 1)
  {
    this[172] = 0;
  }

  if (this[180] == 1)
  {
    this[180] = 0;
  }

  if (this[188] == 1)
  {
    this[188] = 0;
  }

  return this;
}

uint64_t hal9000::SignalProcessor::populate_data_validity(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  v4 = *(a2 + 12);
  result = hal9000::SignalProcessor::get_blank_sample_validity(a1, a2, a3);
  *(a1 + 148) = 0;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = result == 0;
  }

  if (!v6)
  {
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = result == 3;
    }

    if (v7)
    {
      v8 = 1;
    }

    else if (v4 || result != 1)
    {
      if (v4 || result != 2)
      {
        if (v4 != 8 || result)
        {
          if (v4 == 8 && result == 3)
          {
            v8 = 5;
          }

          else if (v4 == 8 && result == 1)
          {
            v8 = 6;
          }

          else if (v4 == 8 && result == 2)
          {
            v8 = 7;
          }

          else
          {
            if ((v4 == 8) != (v4 == 0))
            {
              hal9000::SignalProcessor::populate_data_validity();
            }

            v8 = 8;
          }
        }

        else
        {
          v8 = 4;
        }
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }

    *(a1 + 148) = v8;
  }

  *(a1 + 149) = result;
  return result;
}

void hal9000::SignalProcessor::perform_conversion(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  if (*(a1 + 148) == 8)
  {
    v3 = hal9000::get_signal_processor_log(void)::log;
    if (!hal9000::get_signal_processor_log(void)::log)
    {
      v3 = os_log_create("com.apple.HealthAlgorithms", "SignalProcessor");
      hal9000::get_signal_processor_log(void)::log = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v4 = "perform_conversion: PPG not valid";
      v5 = &v13;
LABEL_16:
      _os_log_impl(&dword_251282000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
    }
  }

  else
  {
    v8 = hal9000::SignalProcessor::compute_nr_coef(a1, a3);
    if ((v8 & 0x100000000) != 0)
    {
      v9 = *&v8;
      *(a1 + 152) = hal9000::SignalProcessor::get_idc(a1, *a2, *(a2 + 4), *(a2 + 16), 0) * *&v8;
      *(a1 + 156) = 1;
      if ((*(a1 + 148) | 4) == 7)
      {
        v3 = hal9000::get_signal_processor_log(void)::log;
        if (!hal9000::get_signal_processor_log(void)::log)
        {
          v3 = os_log_create("com.apple.HealthAlgorithms", "SignalProcessor");
          hal9000::get_signal_processor_log(void)::log = v3;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v4 = "perform_conversion: Blank slot invalid";
          v5 = buf;
          goto LABEL_16;
        }
      }

      else if (*(a1 + 149) == 3 && (*(a1 + 142) & 1) == 0)
      {
        v3 = hal9000::get_signal_processor_log(void)::log;
        if (!hal9000::get_signal_processor_log(void)::log)
        {
          v3 = os_log_create("com.apple.HealthAlgorithms", "SignalProcessor");
          hal9000::get_signal_processor_log(void)::log = v3;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v10 = 0;
          v4 = "perform_conversion: Blank slot not present";
          v5 = &v10;
          goto LABEL_16;
        }
      }

      else
      {

        hal9000::SignalProcessor::compute_noise_terms(a1, a2, v9);
      }
    }

    else
    {
      v3 = hal9000::get_signal_processor_log(void)::log;
      if (!hal9000::get_signal_processor_log(void)::log)
      {
        v3 = os_log_create("com.apple.HealthAlgorithms", "SignalProcessor");
        hal9000::get_signal_processor_log(void)::log = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v12 = 0;
        v4 = "perform_conversion: NRCoef not set";
        v5 = &v12;
        goto LABEL_16;
      }
    }
  }
}

uint64_t hal9000::SignalProcessor::populate_output(uint64_t result, uint64_t a2)
{
  v2 = *(result + 148);
  if (v2 != 8)
  {
    if (*(result + 156) == 1)
    {
      *a2 = *(result + 152);
      *(a2 + 4) = 1;
      v2 = *(result + 148);
    }

    if (v2 <= 8)
    {
      *(a2 + 8) = byte_2512C7CE0[v2];
    }

    v3 = *(result + 149);
    *(a2 + 9) = v3 == 1;
    if (v3 < 2 || v3 == 3 && *(result + 142) == 1)
    {
      v4 = *(result + 160);
      *(a2 + 16) = *(result + 164);
      *(a2 + 12) = v4;
      v5 = *(result + 168);
      *(a2 + 24) = *(result + 172);
      *(a2 + 20) = v5;
      v6 = *(result + 176);
      *(a2 + 32) = *(result + 180);
      *(a2 + 28) = v6;
      v7 = *(result + 184);
      *(a2 + 40) = *(result + 188);
      *(a2 + 36) = v7;
    }
  }

  return result;
}

uint64_t hal9000::SignalProcessor::get_ppg_sample_validity(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) == 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*(a2 + 12))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t hal9000::SignalProcessor::get_blank_sample_validity(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  if (hal9000::SignalProcessor::blank_data_is_absent(a1, a2, a3))
  {
    return 3;
  }

  else
  {
    blank_validity = hal9000::SignalProcessor::get_blank_validity(a1, a2, v5);
    if (blank_validity == 8)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (!blank_validity)
    {
      return 0;
    }
  }

  return v6;
}

BOOL hal9000::SignalProcessor::blank_data_is_absent(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  v3 = *(a1 + 139);
  if (!v3)
  {
    hal9000::SignalProcessor::blank_data_is_absent();
  }

  v5 = __clz(__rbit32(v3));
  second_pd_idx = hal9000::get_second_pd_idx(v3, a3);
  v7 = *(a2 + 24 + 8 * v5);
  result = v7 == 0;
  if (second_pd_idx != 255)
  {
    v9 = *(a2 + 24 + 8 * second_pd_idx);
    return !v7 || v9 == 0;
  }

  return result;
}

uint64_t hal9000::SignalProcessor::get_blank_validity(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  v3 = *(a1 + 139);
  if (!v3)
  {
    hal9000::SignalProcessor::blank_data_is_absent();
  }

  v5 = __clz(__rbit32(v3));
  second_pd_idx = hal9000::get_second_pd_idx(v3, a3);
  v7 = *(*(a2 + 24 + 8 * v5) + 12);
  if (!*(*(a2 + 24 + 8 * v5) + 12))
  {
    if (second_pd_idx == 255)
    {
      return 0;
    }

    else
    {
      return *(*(a2 + 24 + 8 * second_pd_idx) + 12);
    }
  }

  return v7;
}

uint64_t hal9000::get_second_pd_idx(hal9000 *this, int8x8_t a2)
{
  a2.i32[0] = this;
  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  if ((v2.i32[0] - 3) <= 0xFFFFFFFD)
  {
    hal9000::get_second_pd_idx();
  }

  v3 = 31 - __clz(this);
  if (v2.u8[0] == 1)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

unint64_t hal9000::SignalProcessor::compute_nr_coef(uint64_t a1, int8x8_t a2)
{
  if (!*(a1 + 136))
  {
    hal9000::SignalProcessor::compute_nr_coef();
  }

  v3 = *(a1 + 72);
  *v4.i32 = hal9000::SignalProcessor::get_opre_gain(a1, a2);
  v5 = *v4.i32;
  opre_ndce = hal9000::SignalProcessor::get_opre_ndce(a1, v4);
  hal9000::SignalProcessor::get_led_nl_poly_fit(a1);
  v8 = *(a1 + 24);
  v9 = 0.0;
  if (v8 <= 4)
  {
    v9 = flt_2512C7D14[v8];
  }

  v10 = (v5 / ((v3 * opre_ndce) * (v7 * v9))) * 1000000000.0;
  v11 = (LODWORD(v10) & 0x7FFFFFFFu) < 0x7F800000;
  if ((LODWORD(v10) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v10 = 0.0;
  }

  return LODWORD(v10) | (v11 << 32);
}

void hal9000::SignalProcessor::compute_noise_terms(uint64_t a1, uint64_t a2, float a3)
{
  *(a1 + 160) = hal9000::SignalProcessor::get_device_white_noise(a1, a2, a3);
  *(a1 + 164) = 1;
  *v6.i32 = hal9000::SignalProcessor::get_device_pink_noise(a1, a2, a3);
  *(a1 + 168) = v6.i32[0];
  *(a1 + 172) = 1;
  if ((*(a1 + 142) & 1) == 0)
  {
    *(a1 + 176) = hal9000::SignalProcessor::get_blank_idc(a1, a2, v6) * a3;
    *(a1 + 180) = 1;
    *&v7 = a3;
    *(a1 + 184) = hal9000::SignalProcessor::get_background_noise_offset(a1, a2, v7);
    *(a1 + 188) = 1;
  }
}

float hal9000::SignalProcessor::get_device_white_noise(hal9000::SignalProcessor *a1, uint64_t a2, float a3)
{
  *v6.i32 = hal9000::SignalProcessor::get_idc(a1, *a2, *(a2 + 4), *(a2 + 16), 0);
  v7 = *v6.i32;
  iamb = hal9000::SignalProcessor::get_iamb(a1, a2, v6);
  return (a3 * a3) * hal9000::SignalProcessor::get_circuit_noise_term1(a1, v7, iamb, *(a2 + 16));
}

float hal9000::SignalProcessor::get_device_pink_noise(hal9000::SignalProcessor *a1, uint64_t a2, float a3)
{
  idc = hal9000::SignalProcessor::get_idc(a1, *a2, *(a2 + 4), *(a2 + 16), 0);
  nled = hal9000::SignalProcessor::get_nled(a1);
  return (a3 * a3) * (((idc * 0.000005) * (idc * 0.000005)) + (((idc * 0.000005) * (idc * 0.000005)) + ((idc * nled) * (idc * nled))));
}

float hal9000::SignalProcessor::get_background_noise_offset(hal9000::SignalProcessor *a1, uint64_t a2, double a3)
{
  v4 = *&a3;
  iamb = hal9000::SignalProcessor::get_iamb(a1, a2, *&a3);
  blank_circuit_noise_tia_gain = hal9000::SignalProcessor::get_blank_circuit_noise_tia_gain(a1, a2);
  return (v4 * v4) * hal9000::SignalProcessor::get_circuit_noise_term1(a1, 0.0, iamb, blank_circuit_noise_tia_gain);
}

float hal9000::SignalProcessor::populate_nr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 148) != 8 && *(a1 + 156) == 1)
  {
    result = *(a1 + 152);
    *a2 = result;
    *(a2 + 4) = 1;
  }

  return result;
}

uint64_t hal9000::SignalProcessor::populate_is_saturated(uint64_t result, uint64_t a2)
{
  v2 = *(result + 148);
  if (v2 <= 8)
  {
    *(a2 + 8) = byte_2512C7CE0[v2];
  }

  return result;
}

uint64_t hal9000::SignalProcessor::populate_noise(uint64_t result, uint64_t a2)
{
  v2 = *(result + 149);
  if (v2 < 2 || v2 == 3 && *(result + 142) == 1)
  {
    v3 = *(result + 160);
    *(a2 + 16) = *(result + 164);
    *(a2 + 12) = v3;
    v4 = *(result + 168);
    *(a2 + 24) = *(result + 172);
    *(a2 + 20) = v4;
    v5 = *(result + 176);
    *(a2 + 32) = *(result + 180);
    *(a2 + 28) = v5;
    v6 = *(result + 184);
    *(a2 + 40) = *(result + 188);
    *(a2 + 36) = v6;
  }

  return result;
}

uint64_t hal9000::SignalProcessor::populate_new_noise(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  *(a2 + 16) = *(result + 164);
  *(a2 + 12) = v2;
  v3 = *(result + 168);
  *(a2 + 24) = *(result + 172);
  *(a2 + 20) = v3;
  v4 = *(result + 176);
  *(a2 + 32) = *(result + 180);
  *(a2 + 28) = v4;
  v5 = *(result + 184);
  *(a2 + 40) = *(result + 188);
  *(a2 + 36) = v5;
  return result;
}

float hal9000::SignalProcessor::get_opre_gain(hal9000::SignalProcessor *this, int8x8_t a2)
{
  v2 = *(this + 139);
  if (!*(this + 139))
  {
    hal9000::SignalProcessor::blank_data_is_absent();
  }

  second_pd_idx = hal9000::get_second_pd_idx(*(this + 139), a2);
  if (!*(this + 6))
  {
    return 1.0;
  }

  if (second_pd_idx == 255)
  {
    LOBYTE(v6) = __clz(__rbit32(v2));
  }

  else
  {
    v5 = *(this + 139) - 5;
    if (v5 >= 6 || ((0x33u >> v5) & 1) == 0)
    {
      hal9000::SignalProcessor::get_opre_gain();
    }

    v6 = 0x10200000000uLL >> (8 * (v5 & 0x1F));
  }

  v8 = this + 44;
  v9 = *(this + 60);
  if (*(this + 132) == 1)
  {
    if ((*(this + 60) & 1) == 0)
    {
      hal9000::SignalProcessor::get_opre_gain();
    }

    if ((*(this + 68) & 1) == 0)
    {
      hal9000::SignalProcessor::get_opre_gain();
    }

    if (v6 < 4u)
    {
      return *&v8[4 * v6] * (vcvts_n_f32_s32(*(this + v6 + 64), 8uLL) + 1.0);
    }

LABEL_22:
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  if ((*(this + 60) & 1) == 0)
  {
    hal9000::SignalProcessor::get_opre_gain();
  }

  if (v6 >= 4u)
  {
    goto LABEL_22;
  }

  return *&v8[4 * v6];
}

float hal9000::SignalProcessor::get_opre_ndce(hal9000::SignalProcessor *this, int8x8_t a2)
{
  v3 = *(this + 139);
  if (!v3)
  {
    hal9000::SignalProcessor::blank_data_is_absent();
  }

  v4 = __clz(__rbit32(v3));
  second_pd_idx = hal9000::get_second_pd_idx(v3, a2);
  if (second_pd_idx == 255)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *(this + second_pd_idx + 19);
  }

  return *(this + v4 + 19) + v6;
}

float hal9000::SignalProcessor::get_iled_corrected_mA(hal9000::SignalProcessor *this)
{
  hal9000::SignalProcessor::get_led_nl_poly_fit(this);
  v3 = *(this + 6);
  v4 = 0.0;
  if (v3 <= 4)
  {
    v4 = flt_2512C7D14[v3];
  }

  return v2 * v4;
}

float hal9000::SignalProcessor::get_idc(hal9000::SignalProcessor *this, int a2, int a3, unsigned int a4, int a5)
{
  if (*(this + 132) == 1)
  {
    v6 = a2 + 1000;
    v7 = a3 + 1000;
    if (!a5)
    {
      v7 = a3;
      v6 = a2;
    }

    dcs_counts_to_current_A = hal9000::SignalProcessor::get_dcs_counts_to_current_A(this, sqrtf((v6 * v6) + (v7 * v7)), a4);
    v9 = flt_2512C7608[*(this + 64) > 0x45u];
    return dcs_counts_to_current_A * ((v9 / hal9000::SignalProcessor::get_lpf_gain(this)) * 3.1416);
  }

  else
  {
    v11 = a2 - a3;

    return hal9000::SignalProcessor::get_dcs_counts_to_current_A(this, v11, a4);
  }
}

float hal9000::SignalProcessor::get_iamb(hal9000::SignalProcessor *this, uint64_t a2, int8x8_t a3)
{
  if (!*(this + 139))
  {
    hal9000::SignalProcessor::blank_data_is_absent();
  }

  if (*(this + 142) == 1)
  {
    ambient_counts_from_blank = *(a2 + 4);
    v6 = *(a2 + 16);
  }

  else
  {
    v7 = __clz(__rbit32(*(this + 139)));
    ambient_counts_from_blank = hal9000::SignalProcessor::get_ambient_counts_from_blank(this, a2, a3);
    v6 = *(*(a2 + 8 * v7 + 24) + 16);
  }

  return hal9000::SignalProcessor::get_dcs_counts_to_current_A(this, ambient_counts_from_blank, v6);
}

float hal9000::SignalProcessor::get_circuit_noise_term1(hal9000::SignalProcessor *this, float a2, float a3, hal9000 *a4)
{
  v8 = vcvts_n_f32_u32(*(this + 67), 1uLL);
  neb_system = hal9000::SignalProcessor::get_neb_system(this, v8);
  neb_tx = hal9000::SignalProcessor::get_neb_tx(this, v8);
  *&v11 = neb_system;
  thermal_noise = hal9000::SignalProcessor::get_thermal_noise(this, v11, a4);
  v13 = 0.000000035044;
  if (*(this + 6) != 4)
  {
    v13 = 0.0;
  }

  return ((thermal_noise + ((a3 * 3.204e-19) * neb_system)) + ((a2 * 3.204e-19) * neb_tx)) + (((v13 * a2) * (v13 * a2)) * neb_tx);
}

float hal9000::SignalProcessor::get_dcs_counts_to_current_A(hal9000::SignalProcessor *this, int a2, unsigned int a3)
{
  v3 = *(this + 6);
  v4 = 0.0;
  if (v3 <= 4)
  {
    v4 = flt_2512C7CEC[v3];
  }

  return ((v4 / 10150000.0) * a2) / a3;
}

float hal9000::SignalProcessor::get_lpf_gain(hal9000::SignalProcessor *this)
{
  if ((*(this + 132) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v1 = *(this + 130);
  if (v1 > 0x22)
  {
    if (*(this + 130) <= 0x29u)
    {
      if (v1 == 35)
      {
        return 0.8278;
      }

      else
      {
        if (v1 != 40)
        {
          goto LABEL_27;
        }

        return 0.7619;
      }
    }

    else
    {
      switch(v1)
      {
        case '*':
          return 0.7259;
        case '-':
          return 0.6574;
        case '.':
          return 0.6298;
        default:
          goto LABEL_27;
      }
    }
  }

  else if (*(this + 130) <= 0x18u)
  {
    if (v1 == 19)
    {
      return 0.9641;
    }

    else
    {
      if (v1 != 23)
      {
        goto LABEL_27;
      }

      return *"aTr?";
    }
  }

  else
  {
    switch(v1)
    {
      case 0x19u:
        return *"mVm?aTr?";
      case 0x1Cu:
        return 0.9047;
      case 0x1Fu:
        return 0.8708;
      default:
LABEL_27:
        hal9000::SignalProcessor::get_lpf_gain();
    }
  }
}

uint64_t hal9000::SignalProcessor::get_ambient_counts_from_blank(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  v4 = *(a1 + 139);
  if (!v4)
  {
    hal9000::SignalProcessor::blank_data_is_absent();
  }

  v6 = __clz(__rbit32(v4));
  second_pd_idx = hal9000::get_second_pd_idx(v4, a3);
  if (!*(a1 + 24))
  {
    if (second_pd_idx != 255)
    {
      hal9000::SignalProcessor::get_ambient_counts_from_blank();
    }

    v11 = *(a2 + 8 * v6 + 24);
    v12 = v11[1] + *v11;
    return (v12 / 2);
  }

  v8 = a2 + 24;
  v9 = *(a2 + 24 + 8 * v6);
  if ((*(a1 + 143) & 1) == 0)
  {
    v12 = v9[1] + *v9;
    if (second_pd_idx != 255)
    {
      v12 += **(v8 + 8 * second_pd_idx) + *(*(v8 + 8 * second_pd_idx) + 4);
    }

    return (v12 / 2);
  }

  v10 = v9[2];
  if (second_pd_idx != 255)
  {
    return (*(*(v8 + 8 * second_pd_idx) + 8) + v10);
  }

  return v10;
}

uint64_t hal9000::SignalProcessor::get_blank_circuit_noise_tia_gain(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 139))
  {
    hal9000::SignalProcessor::blank_data_is_absent();
  }

  if ((*(a1 + 142) & 1) == 0)
  {
    a2 = *(a2 + 8 * __clz(__rbit32(*(a1 + 139))) + 24);
  }

  return *(a2 + 16);
}

float hal9000::SignalProcessor::get_blank_idc(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  v3 = *(a1 + 139);
  if (!*(a1 + 139))
  {
    hal9000::SignalProcessor::blank_data_is_absent();
  }

  second_pd_idx = hal9000::get_second_pd_idx(*(a1 + 139), a3);
  if (*(a1 + 142) == 1)
  {
    hal9000::SignalProcessor::get_blank_idc();
  }

  v7 = second_pd_idx;
  v8 = a2 + 24;
  v9 = *(a2 + 24 + 8 * __clz(__rbit32(v3)));
  v10 = *v9;
  v11 = v9[1];
  blank_circuit_noise_tia_gain = hal9000::SignalProcessor::get_blank_circuit_noise_tia_gain(a1, a2);
  idc = hal9000::SignalProcessor::get_idc(a1, v10, v11, blank_circuit_noise_tia_gain, 1);
  if (v7 != 255)
  {
    if (!*(a1 + 24))
    {
      hal9000::SignalProcessor::get_blank_idc();
    }

    return idc + hal9000::SignalProcessor::get_idc(a1, **(v8 + 8 * v7), *(*(v8 + 8 * v7) + 4), blank_circuit_noise_tia_gain, 1);
  }

  return idc;
}

float hal9000::SignalProcessor::get_nled(hal9000::SignalProcessor *this)
{
  v2 = *(this + 6);
  if (v2 > 2)
  {
    if ((v2 - 3) >= 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = *(this + 141) == 0;
      v4 = flt_2512C7618;
      return v4[v3];
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v3 = *(this + 141) == 0;
        v4 = flt_2512C7610;
        return v4[v3];
      }

LABEL_12:
      hal9000::SignalProcessor::get_nled();
    }
  }

  return hal9000::SignalProcessor::get_nled_gemstone(this);
}

float hal9000::SignalProcessor::get_nled_gemstone(hal9000::SignalProcessor *this)
{
  v1 = *(this + 141);
  if (v1 >= 4)
  {
    hal9000::SignalProcessor::get_nled_gemstone();
  }

  return flt_2512C7DD0[v1];
}

float hal9000::SignalProcessor::get_adc_counts_to_current_factor(hal9000::SignalProcessor *this)
{
  v1 = *(this + 6);
  v2 = 0.0;
  if (v1 <= 4)
  {
    v2 = flt_2512C7CEC[v1];
  }

  return v2 / 10150000.0;
}

float hal9000::SignalProcessor::get_adc_ref(hal9000::SignalProcessor *this)
{
  v1 = *(this + 6);
  result = 0.0;
  if (v1 <= 4)
  {
    return flt_2512C7CEC[v1];
  }

  return result;
}

float hal9000::SignalProcessor::get_iled_current_mA(hal9000::SignalProcessor *this)
{
  v1 = *(this + 6);
  v2 = 0.0;
  if (v1 <= 4)
  {
    v2 = flt_2512C7D00[v1];
  }

  return v2 * *(this + 68);
}

float hal9000::SignalProcessor::get_idac(hal9000::SignalProcessor *this)
{
  v1 = *(this + 6);
  result = 0.0;
  if (v1 <= 4)
  {
    return flt_2512C7D00[v1];
  }

  return result;
}

void hal9000::SignalProcessor::get_led_nl_poly_fit(hal9000::SignalProcessor *this)
{
  v1 = *(this + 6);
  v2 = 0.0;
  if (v1 <= 4)
  {
    v2 = flt_2512C7D00[v1];
  }

  v3 = *(this + 7);
  v4 = *(this + 8);
  v6 = *(this + 9);
  v5 = *(this + 10);
  if ((v1 - 2) >= 3 && v1 <= 1)
  {
    powf(v2 * *(this + 68), 3.0);
  }
}

float hal9000::SignalProcessor::get_normfit_iled(hal9000::SignalProcessor *this)
{
  v1 = *(this + 6);
  result = 0.0;
  if (v1 <= 4)
  {
    return flt_2512C7D14[v1];
  }

  return result;
}

float hal9000::SignalProcessor::get_neb_system(hal9000::SignalProcessor *this, unsigned int a2)
{
  v2 = *(this + 6);
  v3 = 0.0;
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = 13600.0;
      }
    }

    else
    {
      v3 = 12780.0;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        goto LABEL_5;
      case 3:
        goto LABEL_10;
      case 4:
LABEL_5:
        if (*(this + 132) == 1)
        {
          LOWORD(v3) = *(this + 64);
          v3 = 2526600.0 / LODWORD(v3);
          return v3 / a2;
        }

LABEL_10:
        v3 = *"";
        break;
    }
  }

  return v3 / a2;
}

float hal9000::SignalProcessor::get_neb_system_sunstone3p75(hal9000::SignalProcessor *this, float a2)
{
  if (*(this + 132) != 1)
  {
    return *"";
  }

  LOWORD(a2) = *(this + 64);
  return 2526600.0 / LODWORD(a2);
}

float hal9000::SignalProcessor::get_neb_tx(hal9000::SignalProcessor *this, unsigned int a2)
{
  v2 = *(this + 6);
  v3 = 0.0;
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = 9200.0;
      }
    }

    else
    {
      v3 = 8640.0;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        goto LABEL_5;
      case 3:
        goto LABEL_10;
      case 4:
LABEL_5:
        if (*(this + 132) == 1)
        {
          LOWORD(v3) = *(this + 64);
          v3 = 1277400.0 / LODWORD(v3);
          return v3 / a2;
        }

LABEL_10:
        v3 = 9189.0;
        break;
    }
  }

  return v3 / a2;
}

float hal9000::SignalProcessor::get_neb_tx_sunstone3p75(hal9000::SignalProcessor *this, float a2)
{
  if (*(this + 132) != 1)
  {
    return 9189.0;
  }

  LOWORD(a2) = *(this + 64);
  return 1277400.0 / LODWORD(a2);
}

float hal9000::SignalProcessor::get_thermal_noise(hal9000::SignalProcessor *this, double a2, hal9000 *a3)
{
  v3 = a3;
  v4 = *&a2;
  pd_noise = hal9000::SignalProcessor::get_pd_noise(this, a3, *&a2);
  v7 = *&pd_noise;
  v8 = *(this + 6);
  if (v8 > 4)
  {
    lpf1_gain_sunstone3p75 = 0.0;
  }

  else if (((1 << v8) & 0xB) != 0)
  {
    lpf1_gain_sunstone3p75 = 1.0;
  }

  else
  {
    lpf1_gain_sunstone3p75 = hal9000::SignalProcessor::get_lpf1_gain_sunstone3p75(this);
  }

  return ((v7 * v7) / (((v3 * v3) * (lpf1_gain_sunstone3p75 * lpf1_gain_sunstone3p75)) * 1.4641)) * v4;
}

double hal9000::SignalProcessor::get_pd_noise(hal9000::SignalProcessor *this, hal9000 *a2, int8x8_t a3)
{
  if (hal9000::get_second_pd_idx(*(this + 139), a3) == 255)
  {

    return hal9000::SignalProcessor::get_vnth_pd(this, a2);
  }

  else
  {

    *&result = hal9000::SignalProcessor::get_vnth_2pd(this, a2);
  }

  return result;
}

double hal9000::SignalProcessor::get_lpf1_gain(hal9000::SignalProcessor *this)
{
  v1 = *(this + 6);
  if (v1 > 4)
  {
    return 0.0;
  }

  if (((1 << v1) & 0xB) != 0)
  {
    LODWORD(result) = 1.0;
  }

  else
  {
    *&result = hal9000::SignalProcessor::get_lpf1_gain_sunstone3p75(this);
  }

  return result;
}

double hal9000::SignalProcessor::get_vnth_pd(hal9000::SignalProcessor *this, hal9000 *a2)
{
  v2 = *(this + 6);
  if (v2 <= 1)
  {
    if (!v2)
    {
      *&result = hal9000::SignalProcessor::get_vnth_pd_carnelian(this, a2);
      return result;
    }

    if (v2 == 1)
    {
      *&result = hal9000::SignalProcessor::get_vnth_pd_gemstone(this, a2);
      return result;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        *&result = hal9000::SignalProcessor::get_pd_noise_sunstone2p5(this, a2);
        return result;
      case 3:
        *&result = hal9000::SignalProcessor::get_vnth_pd_sunstone3p5(this, a2);
        return result;
      case 4:
        *&result = hal9000::SignalProcessor::get_pd_noise_sunstone3p75(this, a2);
        return result;
    }
  }

  return 0.0;
}

float hal9000::SignalProcessor::get_vnth_2pd(hal9000::SignalProcessor *this, hal9000 *a2)
{
  v2 = *(this + 6);
  result = 0.0;
  if (v2 <= 2)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {

        return hal9000::SignalProcessor::get_pd_noise_sunstone2p5(this, a2);
      }

      else if (!v2)
      {
        hal9000::SignalProcessor::get_vnth_2pd();
      }

      return result;
    }

    tia_index_by_gain = hal9000::get_tia_index_by_gain(a2);
    v5 = &unk_2512C7D28;
    return v5[tia_index_by_gain];
  }

  if (v2 == 3)
  {
    tia_index_by_gain = hal9000::get_tia_index_by_gain(a2);
    v5 = &unk_2512C7D48;
    return v5[tia_index_by_gain];
  }

  if (v2 == 4)
  {

    return hal9000::SignalProcessor::get_pd_noise_sunstone3p75(this, a2);
  }

  return result;
}

float hal9000::SignalProcessor::get_pd_noise_sunstone2p5(hal9000::SignalProcessor *this, hal9000 *a2)
{
  tia_index_by_gain = hal9000::get_tia_index_by_gain(a2);
  second_pd_idx = hal9000::get_second_pd_idx(*(this + 139), v4);
  if (*(this + 132) != 1)
  {
    v7 = &hal9000::SignalProcessor::get_pd_noise_sunstone2p5const::noise_dcs;
    return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
  }

  v6 = *(this + 130);
  if (v6 > 0x22)
  {
    if (*(this + 130) <= 0x29u)
    {
      if (v6 == 35)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_sunstone2p5const::noise_77k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }

      if (v6 == 40)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_sunstone2p5const::noise_95k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }
    }

    else
    {
      if (v6 == 42 || v6 == 45)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_sunstone2p5const::noise_123k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }

      if (v6 == 46)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_sunstone2p5const::noise_131k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }
    }

    goto LABEL_24;
  }

  if (*(this + 130) <= 0x18u)
  {
    if (v6 == 19)
    {
      v7 = &hal9000::SignalProcessor::get_pd_noise_sunstone2p5const::noise_32k;
      return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
    }

    if (v6 == 23)
    {
      goto LABEL_16;
    }

LABEL_24:
    hal9000::SignalProcessor::get_pd_noise_sunstone2p5();
  }

  if (v6 == 25 || v6 == 28)
  {
LABEL_16:
    v7 = &hal9000::SignalProcessor::get_pd_noise_sunstone2p5const::noise_55k;
    return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
  }

  if (v6 != 31)
  {
    goto LABEL_24;
  }

  v7 = &hal9000::SignalProcessor::get_pd_noise_sunstone2p5const::noise_65k;
  return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
}

float hal9000::SignalProcessor::get_pd_noise_sunstone3p75(hal9000::SignalProcessor *this, hal9000 *a2)
{
  v3 = *(this + 36);
  if (!v3 || v3 == 6)
  {

    return hal9000::SignalProcessor::get_pd_noise_N22x(this, a2);
  }

  else
  {
    if (v3 != 1)
    {
      hal9000::SignalProcessor::get_pd_noise_sunstone3p75();
    }

    return hal9000::SignalProcessor::get_pd_noise_N21x(this, a2);
  }
}

uint64_t hal9000::get_tia_index_by_gain(hal9000 *this)
{
  if (this > 119999)
  {
    if (this > 239999)
    {
      if (this == 240000)
      {
        return 5;
      }

      else
      {
        if (this != 480000)
        {
          goto LABEL_20;
        }

        return 6;
      }
    }

    else if (this == 120000)
    {
      return 3;
    }

    else
    {
      if (this != 180000)
      {
        goto LABEL_20;
      }

      return 4;
    }
  }

  else if (this > 59999)
  {
    if (this == 60000)
    {
      return 1;
    }

    else
    {
      if (this != 90000)
      {
        goto LABEL_20;
      }

      return 2;
    }
  }

  else
  {
    if (this != 10000)
    {
      if (this == 30000)
      {
        return 0;
      }

LABEL_20:
      hal9000::get_tia_index_by_gain();
    }

    return 7;
  }
}

float hal9000::SignalProcessor::get_pd_noise_N21x(hal9000::SignalProcessor *this, hal9000 *a2)
{
  tia_index_by_gain = hal9000::get_tia_index_by_gain(a2);
  second_pd_idx = hal9000::get_second_pd_idx(*(this + 139), v4);
  if (*(this + 132) != 1)
  {
    v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_dcs;
    return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
  }

  v6 = *(this + 130);
  if (v6 > 0x22)
  {
    if (*(this + 130) <= 0x29u)
    {
      if (v6 == 35)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_77k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }

      if (v6 == 40)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_95k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }
    }

    else
    {
      switch(v6)
      {
        case '*':
          v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_104k;
          return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
        case '-':
          v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_123k;
          return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
        case '.':
          v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_131k;
          return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }
    }

LABEL_27:
    hal9000::SignalProcessor::get_pd_noise_N21x();
  }

  if (*(this + 130) <= 0x18u)
  {
    if (v6 == 19)
    {
      v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_32k;
      return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
    }

    if (v6 == 23)
    {
      v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_40k;
      return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
    }

    goto LABEL_27;
  }

  if (v6 == 25)
  {
    v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_47k;
    return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
  }

  if (v6 == 28)
  {
    v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_55k;
    return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
  }

  if (v6 != 31)
  {
    goto LABEL_27;
  }

  v7 = &hal9000::SignalProcessor::get_pd_noise_N21xconst::noise_65k;
  return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
}

float hal9000::SignalProcessor::get_pd_noise_N22x(hal9000::SignalProcessor *this, hal9000 *a2)
{
  tia_index_by_gain = hal9000::get_tia_index_by_gain(a2);
  second_pd_idx = hal9000::get_second_pd_idx(*(this + 139), v4);
  if (*(this + 132) != 1)
  {
    v7 = &hal9000::SignalProcessor::get_pd_noise_N22xconst::noise_dcs;
    return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
  }

  v6 = *(this + 130);
  if (v6 > 0x22)
  {
    if (*(this + 130) <= 0x29u)
    {
      if (v6 == 35)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_N22xconst::noise_77k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }

      if (v6 == 40)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_N22xconst::noise_95k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }
    }

    else
    {
      if (v6 == 42 || v6 == 45)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_N22xconst::noise_110k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }

      if (v6 == 46)
      {
        v7 = &hal9000::SignalProcessor::get_pd_noise_N22xconst::noise_131k;
        return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
      }
    }

    goto LABEL_24;
  }

  if (*(this + 130) <= 0x18u)
  {
    if (v6 == 19)
    {
      v7 = &hal9000::SignalProcessor::get_pd_noise_N22xconst::noise_32k;
      return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
    }

    if (v6 == 23)
    {
      goto LABEL_17;
    }

LABEL_24:
    hal9000::SignalProcessor::get_pd_noise_N22x();
  }

  if (v6 == 25)
  {
LABEL_17:
    v7 = &hal9000::SignalProcessor::get_pd_noise_N22xconst::noise_47k;
    return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
  }

  if (v6 != 28 && v6 != 31)
  {
    goto LABEL_24;
  }

  v7 = &hal9000::SignalProcessor::get_pd_noise_N22xconst::noise_65k;
  return v7[8 * (second_pd_idx != 255) + tia_index_by_gain];
}

float hal9000::SignalProcessor::get_lpf1_gain_sunstone3p75(hal9000::SignalProcessor *this)
{
  result = 1.0;
  if (*(this + 132) == 1)
  {
    v2 = *(this + 130);
    if (v2 > 0x22)
    {
      if (*(this + 130) <= 0x29u)
      {
        if (v2 == 35)
        {
          return 0.888;
        }

        else
        {
          if (v2 != 40)
          {
            goto LABEL_26;
          }

          return 0.844;
        }
      }

      else
      {
        switch(v2)
        {
          case '*':
            return 0.8196;
          case '-':
            return 0.7724;
          case '.':
            return 0.753;
          default:
            goto LABEL_26;
        }
      }
    }

    else if (*(this + 130) <= 0x18u)
    {
      if (v2 == 19)
      {
        return 0.977;
      }

      else
      {
        if (v2 != 23)
        {
          goto LABEL_26;
        }

        return 0.9656;
      }
    }

    else
    {
      switch(v2)
      {
        case 0x19u:
          return 0.953;
        case 0x1Cu:
          return 0.9385;
        case 0x1Fu:
          return 0.9163;
        default:
LABEL_26:
          hal9000::SignalProcessor::get_lpf1_gain_sunstone3p75();
      }
    }
  }

  return result;
}

void *hal9000::extract_subframe_types<mimosa::OpticalSamplesV1Subpacket>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<std::pair<hal9000::SubframeType,unsigned char>>::reserve(a2, 0x8E38E38E38E38E39 * ((*(a1 + 24) - *(a1 + 16)) >> 2));
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v9 = a2;
  while (v6 != v5)
  {
    v7 = *(v6 + 4);
    if (v7 >= 0x15)
    {
      __assert_rtn("get_subframe_type", "SignalProcessor.cpp", 274, "false");
    }

    v8 = v7 | (*(v6 + 32) << 8);
    result = std::back_insert_iterator<std::vector<std::pair<hal9000::SubframeType,unsigned char>>>::operator=[abi:ne200100](&v9, &v8);
    v6 += 36;
  }

  return result;
}

void sub_25128BF84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<hal9000::SubframeType,unsigned char>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(result, a2);
    }

    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::back_insert_iterator<std::vector<std::pair<hal9000::SubframeType,unsigned char>>>::operator=[abi:ne200100](uint64_t *a1, _WORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 1;
    if (v8 <= -2)
    {
      std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(*a1, v11);
    }

    v12 = (2 * v8);
    *v12 = *a2;
    v7 = 2 * v8 + 2;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;
  return a1;
}

void *hal9000::extract_subframe_types<mimosa::OpticalSamplesV2Subpacket>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<std::pair<hal9000::SubframeType,unsigned char>>::reserve(a2, (*(a1 + 24) - *(a1 + 16)) >> 5);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  for (i = a2; v6 != v5; v6 += 32)
  {
    if ((*(v6 + 30) & 4) == 0)
    {
      __assert_rtn("get_subframe_type", "SignalProcessor.cpp", 286, "false");
    }

    v7 = (*(v6 + 24) << 8) | 0x15;
    result = std::back_insert_iterator<std::vector<std::pair<hal9000::SubframeType,unsigned char>>>::operator=[abi:ne200100](&i, &v7);
  }

  return result;
}

void sub_25128C1D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double *std::vector<double>::insert(void *a1, char *__src, double *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<double>::emplace_back<double const&>(&v26, a3);
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
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
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

void sub_25128C390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double std::__split_buffer<double>::emplace_back<double const&>(void *a1, double *a2)
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
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2796B3BB8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(id ***a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if ([*(***a1 + 7) length] > 0x19)
  {
    [*(**v3 + 7) getBytes:a2 length:26];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 9)];
    v6 = [v5 stringValue];
    v7 = **v3;
    v8 = v7[4];
    v7[4] = v6;

    v9 = *v3;
    *(**v3 + 3) = *(a2 + 10);
    *(*v9 + 4) = *(a2 + 14);
    v10 = objc_alloc(MEMORY[0x277CCAB10]);
    v11 = *(a2 + 18);
    v12 = [MEMORY[0x277CCAE30] milliwatts];
    v13 = [v10 initWithDoubleValue:v12 unit:v11];
    v14 = **v3;
    v15 = v14[5];
    v14[5] = v13;

    v16 = objc_alloc(MEMORY[0x277CCAB10]);
    v17 = *(a2 + 22);
    v18 = [MEMORY[0x277CCAE30] milliwatts];
    v19 = [v16 initWithDoubleValue:v18 unit:v17];
    v20 = **v3;
    v21 = v20[6];
    v20[6] = v19;

    v22 = [*(**v3 + 7) length];
    v23 = ((v22 - 26) * 0x8618618618618619) >> 64;
    v24 = (v23 + ((v22 - 26 - v23) >> 1)) >> 4;
    if (v22 - 26 == 21 * v24)
    {
      v28 = *v3;
      *(**v3 + 8) = v24;
      *(*v28 + 9) = 26;
      v29 = [*v28 sessionIntervalV0WithStartTime:*(a2 + 1)];
      v30 = **v3;
      v31 = v30[3];
      v30[3] = v29;

      result = 1;
      goto LABEL_10;
    }

    v25 = ha_get_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>();
    }
  }

  else
  {
    v4 = ha_get_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(v32, [*(**v3 + 7) length]);
    }
  }

  result = 0;
LABEL_10:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(id ***a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if ([*(***a1 + 7) length] > 0x1A)
  {
    [*(**v3 + 7) getBytes:a2 length:27];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 9)];
    v6 = [v5 stringValue];
    v7 = **v3;
    v8 = v7[4];
    v7[4] = v6;

    v9 = *v3;
    *(**v3 + 3) = *(a2 + 10);
    *(*v9 + 4) = *(a2 + 14);
    v10 = objc_alloc(MEMORY[0x277CCAB10]);
    v11 = *(a2 + 18);
    v12 = [MEMORY[0x277CCAE30] milliwatts];
    v13 = [v10 initWithDoubleValue:v12 unit:v11];
    v14 = **v3;
    v15 = v14[5];
    v14[5] = v13;

    v16 = objc_alloc(MEMORY[0x277CCAB10]);
    v17 = *(a2 + 22);
    v18 = [MEMORY[0x277CCAE30] milliwatts];
    v19 = [v16 initWithDoubleValue:v18 unit:v17];
    v20 = **v3;
    v21 = v20[6];
    v20[6] = v19;

    v22 = [*(**v3 + 7) length];
    v23 = ((v22 - 27) * 0x8618618618618619) >> 64;
    v24 = (v23 + ((v22 - 27 - v23) >> 1)) >> 4;
    if (v22 - 27 == 21 * v24)
    {
      v28 = *v3;
      *(**v3 + 8) = v24;
      *(*v28 + 9) = 27;
      v29 = [*v28 sessionIntervalV0WithStartTime:*(a2 + 1)];
      v30 = **v3;
      v31 = v30[3];
      v30[3] = v29;

      result = 1;
      goto LABEL_10;
    }

    v25 = ha_get_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>();
    }
  }

  else
  {
    v4 = ha_get_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(v32, [*(**v3 + 7) length]);
    }
  }

  result = 0;
LABEL_10:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(id ***a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if ([*(***a1 + 7) length] > 0x1E)
  {
    [*(**v3 + 7) getBytes:a2 length:31];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 9)];
    v6 = [v5 stringValue];
    v7 = **v3;
    v8 = v7[4];
    v7[4] = v6;

    v9 = *v3;
    *(**v3 + 3) = *(a2 + 10);
    *(*v9 + 4) = *(a2 + 14);
    v10 = objc_alloc(MEMORY[0x277CCAB10]);
    v11 = *(a2 + 22);
    v12 = [MEMORY[0x277CCAE30] milliwatts];
    v13 = [v10 initWithDoubleValue:v12 unit:v11];
    v14 = **v3;
    v15 = v14[5];
    v14[5] = v13;

    v16 = objc_alloc(MEMORY[0x277CCAB10]);
    v17 = *(a2 + 26);
    v18 = [MEMORY[0x277CCAE30] milliwatts];
    v19 = [v16 initWithDoubleValue:v18 unit:v17];
    v20 = **v3;
    v21 = v20[6];
    v20[6] = v19;

    v22 = [*(**v3 + 7) length];
    v23 = ((v22 - 31) * 0x8618618618618619) >> 64;
    v24 = (v23 + ((v22 - 31 - v23) >> 1)) >> 4;
    if (v22 - 31 == 21 * v24)
    {
      v28 = *v3;
      *(**v3 + 8) = v24;
      *(*v28 + 9) = 31;
      v29 = [*v28 sessionIntervalV0WithStartTime:*(a2 + 1)];
      v30 = **v3;
      v31 = v30[3];
      v30[3] = v29;

      result = 1;
      goto LABEL_10;
    }

    v25 = ha_get_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>();
    }
  }

  else
  {
    v4 = ha_get_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(v32, [*(**v3 + 7) length]);
    }
  }

  result = 0;
LABEL_10:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 4) = a3;
  *(result + 12) = 2048;
  *(result + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_25128E850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_25128E958(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25128EB48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25128F054(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25128F5D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25128FC24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25128FFB8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2512905D0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_251290A28(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_251290D78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_251291200(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_251291824(_Unwind_Exception *a1)
{
  v8 = v4;

  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v7 - 96));

  _Unwind_Resume(a1);
}

void sub_251291AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = HAMenstrualAlgorithmsDayStreamProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_251291FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25129261C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_251292A60(_Unwind_Exception *a1)
{
  v7 = v3;

  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v6 - 96));

  _Unwind_Resume(a1);
}

void sub_251292C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = HAMenstrualAlgorithmsHistoricalAnalyzer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_251293154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

float health_algorithms::correct_v4_coeffs(uint64_t a1, float result, double a3, double a4, double a5, double a6)
{
  if (*a1 == 4)
  {
    v6 = 0;
    v7 = *(a1 + 24);
    LODWORD(a4) = *(a1 + 76);
    LODWORD(a5) = *(a1 + 128);
    LODWORD(a6) = *(a1 + 180);
    v8 = vmlaq_f32(vdupq_lane_s32(*&a6, 0), xmmword_2512C7E00, vmlaq_f32(vdupq_lane_s32(*&a5, 0), xmmword_2512C7E00, vmlaq_n_f32(vdupq_lane_s32(*&a4, 0), xmmword_2512C7E00, v7)));
    v27 = vmulq_f32(vbicq_s8(v8, vcltzq_f32(v8)), xmmword_2512C7E10);
    v9 = *&a6 + ((*&a5 + ((*&a4 + (v7 * 180.0)) * 180.0)) * 180.0);
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    v28 = v9 * 10.0;
    v25 = 0;
    v26 = 0;
    v10 = &health_algorithms::correct_v4_coeffs(mimosa::OpREv5 &)::M_RD0;
    do
    {
      v11 = 0;
      v12 = *(&v25 + v6);
      do
      {
        v12 = v12 + (v27.f32[v11] * *&v10[v11 * 4]);
        ++v11;
      }

      while (v11 != 5);
      *(&v25 + v6++) = v12;
      v10 += 20;
    }

    while (v6 != 3);
    v13 = 0;
    v14 = HIDWORD(v25);
    *(a1 + 24) = v25;
    *(a1 + 76) = v14;
    v15 = HIDWORD(v26);
    *(a1 + 128) = v26;
    *(a1 + 180) = v15;
    v16 = *(a1 + 36);
    v17 = *(a1 + 88);
    LODWORD(a5) = *(a1 + 140);
    LODWORD(a6) = *(a1 + 192);
    v18 = vmlaq_f32(vdupq_lane_s32(*&a6, 0), xmmword_2512C7E00, vmlaq_f32(vdupq_lane_s32(*&a5, 0), xmmword_2512C7E00, vmlaq_n_f32(vdupq_lane_s32(v17, 0), xmmword_2512C7E00, v16)));
    v27 = vmulq_f32(vbicq_s8(v18, vcltzq_f32(v18)), xmmword_2512C7E20);
    v19 = *&a6 + ((*&a5 + ((*v17.i32 + (v16 * 180.0)) * 180.0)) * 180.0);
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    v28 = v19 * 0.0555;
    v25 = 0;
    v26 = 0;
    v20 = &health_algorithms::correct_v4_coeffs(mimosa::OpREv5 &)::M_RD3;
    do
    {
      v21 = 0;
      v22 = *(&v25 + v13);
      do
      {
        v22 = v22 + (v27.f32[v21] * *&v20[v21 * 4]);
        ++v21;
      }

      while (v21 != 5);
      *(&v25 + v13++) = v22;
      v20 += 20;
    }

    while (v13 != 3);
    v23 = HIDWORD(v25);
    *(a1 + 36) = v25;
    *(a1 + 88) = v23;
    v24 = HIDWORD(v26);
    result = *&v26;
    *(a1 + 140) = v26;
    *(a1 + 192) = v24;
  }

  return result;
}

os_log_t get_ppg_processor_log(void)
{
  result = get_ppg_processor_log(void)::log;
  if (!get_ppg_processor_log(void)::log)
  {
    result = os_log_create("com.apple.HealthAlgorithms", "PPGProcessor");
    get_ppg_processor_log(void)::log = result;
  }

  return result;
}

uint64_t health_algorithms::PPGProcessor::PPGProcessor(uint64_t result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1065353216;
  do
  {
    v4 = result + v3;
    *(v4 + 56) = 0;
    *(v4 + 76) = 0;
    v3 += 24;
  }

  while (v3 != 96);
  v5 = *a2;
  if (*(v5 + 2476) == 1 && !*(v5 + 2472) && *(v5 + 232) == 4)
  {
    std::allocate_shared[abi:ne200100]<mimosa::Metadata,std::allocator<mimosa::Metadata>,mimosa::Metadata const&,0>();
  }

  return result;
}

void sub_2512935D4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::~__hash_table(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void health_algorithms::PPGProcessor::raw_ppg_datums_for_packet(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *health_algorithms::PPGProcessor::raw_ppg_datums_for_packet@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<health_algorithms::PPGProcessor::RawPPGDatum>::reserve(a2, 0x8E38E38E38E38E39 * ((*(a1 + 40) - *(a1 + 32)) >> 2));
  v5 = *(a1 + 128);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 32);
  v31 = a2;
  if (v6 != v7)
  {
    v9 = (v8 + 35);
    do
    {
      v10 = *v6;
      v11 = (v5 & 0x40) != 0 && *(v9 - 1) == 1 || (v10 - 16) < 0xA;
      v12 = *(v9 - 7) - 1;
      if (v12 >= 8u || ((0x8Bu >> v12) & 1) == 0)
      {
        __assert_rtn("operator()", "PPGProcessor.cpp", 600, "false");
      }

      v13 = *(v9 - 27);
      LODWORD(v15) = *(v9 - 35);
      DWORD1(v15) = v13;
      DWORD2(v15) = *(v9 - 19);
      BYTE12(v15) = 0;
      v16 = 0;
      v17 = 0;
      v18 = *(v9 - 15);
      v19 = *(v9 - 11);
      v20 = *(v9 - 5);
      v21 = v10 >> 1;
      v14 = (10000 * *v9);
      v22 = *(v9 - 3);
      v23 = health_algorithms::index_for_tia_gain(v14);
      v24 = 1 << (v10 & 1);
      v25 = 0x300000002000100uLL >> (8 * v12);
      if (v10 >= 0x3E)
      {
        std::__throw_out_of_range[abi:ne200100]("array::at");
      }

      v26 = health_algorithms::PPGProcessor::raw_ppg_datums_for_packet(mimosa::PacketV3 const&)::carnelian_measurement_index_to_emitter[v10 >> 1];
      v27 = v11;
      v28 = (v10 < 0x18) & (0xC30000u >> v10);
      v29 = (*(a1 + 112) >> (v10 >> 1)) & 1;
      v30 = 0;
      result = std::back_insert_iterator<std::vector<health_algorithms::PPGProcessor::RawPPGDatum>>::operator=[abi:ne200100](&v31, &v15);
      ++v6;
      v9 += 36;
    }

    while (v6 != v7);
  }

  return result;
}

{
  return health_algorithms::PPGProcessor::extract_datums(a1 + 16, a1 + 144, *(a1 + 112), a2);
}

{
  return health_algorithms::PPGProcessor::extract_datums(a1 + 16, a1 + 144, *(a1 + 112), a2);
}

{
  return health_algorithms::PPGProcessor::raw_ppg_datums_for_optical_samples(a1 + 16, *(a1 + 112), a2);
}

{
  return health_algorithms::PPGProcessor::raw_ppg_datums_for_optical_samples(a1 + 16, *(a1 + 128), a2);
}

{
  return health_algorithms::PPGProcessor::raw_ppg_datums_for_optical_samples(a1 + 16, *(a1 + 128), a2);
}

{
  return health_algorithms::PPGProcessor::raw_ppg_datums_for_optical_samples(a1 + 16, *(a1 + 128), a2);
}

{
  return health_algorithms::PPGProcessor::raw_ppg_datums_for_optical_samples(a1 + 16, *(a1 + 128), a2);
}

void sub_251293828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<health_algorithms::PPGProcessor::RawPPGDatum>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<health_algorithms::PPGProcessor::RawPPGDatum>>(result, a2);
    }

    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *health_algorithms::PPGProcessor::raw_ppg_datums_for_optical_samples@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = std::vector<health_algorithms::PPGProcessor::RawPPGDatum>::reserve(a3, (*(a1 + 24) - *(a1 + 16)) >> 5);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  for (i = a3; v8 != v7; v8 += 32)
  {
    v9 = *(v8 + 29);
    if (v9 > 0x2D || (v10 = *(v8 + 22), v10 > 0x1FF))
    {
      v11 = 0;
      v13 = 0;
      LOWORD(v12) = 0;
    }

    else
    {
      v11 = *(v8 + 22);
      v12 = v10 >> 8;
      v13 = 1;
    }

    v14 = *(v8 + 12);
    *&v15 = *v8;
    DWORD2(v15) = *(v8 + 8);
    WORD6(v15) = v11 | (v12 << 8);
    BYTE14(v15) = v9;
    v16 = v13;
    v17 = 0;
    v18 = *(v8 + 14);
    v19 = *(v8 + 18);
    v20 = v14 >> 2;
    v21 = *(v8 + 24);
    v22 = health_algorithms::index_for_tia_gain((10000 * *(v8 + 28)));
    v23 = *(v8 + 27);
    v24 = *(v8 + 26);
    v25 = *(v8 + 25);
    v26 = v14 > 0xC7;
    is_light_path_redacted_for_gemstone_and_newer = health_algorithms::is_light_path_redacted_for_gemstone_and_newer(*(v8 + 12));
    v28 = (a2 >> (v14 >> 2)) & 1;
    v29 = (*(v8 + 30) & 2) != 0;
    result = std::back_insert_iterator<std::vector<health_algorithms::PPGProcessor::RawPPGDatum>>::operator=[abi:ne200100](&i, &v15);
  }

  return result;
}

void sub_251293A80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *health_algorithms::PPGProcessor::extract_datums@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = 0x8E38E38E38E38E39 * ((*(a1 + 24) - *(a1 + 16)) >> 2);
  if (v6 != (*(a2 + 24) - *(a2 + 16)) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "element count mismatch between OpticalSamplesV1Subpacket and OpticalDecoderV2Subpacket");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = std::vector<health_algorithms::PPGProcessor::RawPPGDatum>::reserve(a4, v6);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a2 + 16);
  for (i = a4; v11 != v10; ++v12)
  {
    v13 = *(v11 + 28) - 1;
    if (v13 >= 8u || ((0x8Bu >> v13) & 1) == 0)
    {
      __assert_rtn("operator()", "PPGProcessor.cpp", 754, "false");
    }

    v14 = *v12;
    v15 = v14 >> 2;
    v16 = *(v11 + 8);
    LODWORD(v19) = *v11;
    DWORD1(v19) = v16;
    DWORD2(v19) = *(v11 + 16);
    BYTE12(v19) = 0;
    v20 = 0;
    v21 = 0;
    v22 = *(v11 + 20);
    v23 = *(v11 + 24);
    v24 = *(v11 + 30);
    v26 = *(v11 + 32);
    v17 = (10000 * *(v11 + 35));
    v25 = v14 >> 2;
    v27 = health_algorithms::index_for_tia_gain(v17);
    if (v14 >= 0xC8)
    {
      std::__throw_out_of_range[abi:ne200100]("array::at");
    }

    v28 = health_algorithms::PPGProcessor::extract_datums(mimosa::OpticalSamplesV1Subpacket const&,mimosa::OpticalDecoderV2Subpacket const&,unsigned long long)::light_path_to_photodiodes_table[v14];
    v29 = 0x300000002000100uLL >> (8 * v13);
    v30 = health_algorithms::PPGProcessor::extract_datums(mimosa::OpticalSamplesV1Subpacket const&,mimosa::OpticalDecoderV2Subpacket const&,unsigned long long)::measurement_index_to_emitter_table[v15];
    v31 = 0;
    is_light_path_redacted_for_gemstone_and_newer = health_algorithms::is_light_path_redacted_for_gemstone_and_newer(v14);
    v33 = (a3 >> v15) & 1;
    v34 = 0;
    result = std::back_insert_iterator<std::vector<health_algorithms::PPGProcessor::RawPPGDatum>>::operator=[abi:ne200100](&i, &v19);
    v11 += 36;
  }

  return result;
}

void sub_251293CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  v12 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

unint64_t health_algorithms::PPGProcessor::update_blank_samples(unint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = (result + 76);
    do
    {
      if (*(v2 + 44) == 255 && (*(v2 + 48) & 1) == 0)
      {
        v12 = *(v2 + 42);
        result = std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,8ul>,true>(&v12, 0, 8uLL);
        if (result > 4)
        {
          health_algorithms::PPGProcessor::update_blank_samples();
        }

        v5 = 0;
        v6 = v12;
        v7 = v4;
        do
        {
          if ((*&v6 >> v5))
          {
            v8 = *(v2 + 34);
            v9 = health_algorithms::tia_gain_table[*(v2 + 41)];
            v10 = *v7;
            v11 = *(v2 + 8);
            *(v7 - 20) = *v2;
            *(v7 - 3) = v11;
            *(v7 - 4) = v8;
            *(v7 - 1) = v9;
            if ((v10 & 1) == 0)
            {
              *v7 = 1;
            }
          }

          ++v5;
          v7 += 24;
        }

        while (v5 != 4);
      }

      v2 += 56;
    }

    while (v2 != v3);
  }

  return result;
}

void health_algorithms::PPGProcessor::make_processor(uint64_t *a1, uint64_t a2, int a3, char a4)
{
  v4 = *a1;
  if ((*(*a1 + 144) & 1) == 0)
  {
    health_algorithms::PPGProcessor::make_processor();
  }

  if (!a3)
  {
    if (*(v4 + 143) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 120), *(v4 + 128));
    }

    else
    {
      __p = *(v4 + 120);
    }

    v80 = 0;
    v10 = *(a2 + 44);
    if (v10 < 6)
    {
      v11 = health_algorithms::compute_carnelian_calibration_slice(unsigned char)::led_nl_coeff_c[v10];
      v82 = health_algorithms::compute_carnelian_calibration_slice(unsigned char)::led_nl_coeff_b[v10];
      v83 = v11;
      v12 = health_algorithms::compute_carnelian_calibration_slice(unsigned char)::led_nl_coeff_d[v10];
      v81 = 0;
      v84 = v12;
      LOBYTE(v85) = 0;
      v89 = 0;
      LOBYTE(v90) = 0;
      v91 = 0;
      *v92 = dword_2512C7EB0[v10 < 2];
      *&v92[4] = health_algorithms::compute_carnelian_calibration_slice(unsigned char)::n_dce_cal[v10];
      v92[20] = 0;
      v94 = 0;
      LOBYTE(v95) = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = *(a2 + 32);
      v100 = *(a2 + 36);
      v101 = *(a2 + 40);
      v102 = *(a2 + 42);
      v103 = 2 * (v10 < 2);
      v104 = 0;
      v105 = a4;
      operator new();
    }

    __assert_rtn("compute_carnelian_calibration_slice", "PPGProcessor.cpp", 270, "led < 6");
  }

  if ((*(v4 + 2476) & 1) == 0)
  {
    health_algorithms::PPGProcessor::make_processor();
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 14);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (*(v4 + 143) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v4 + 120), *(v4 + 128));
        v4 = *a1;
        v27 = *(*a1 + 2476);
        v80 = 3;
        if ((v27 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }

      else
      {
        __p = *(v4 + 120);
        v80 = 3;
      }

      if (*(v4 + 2472) == 1)
      {
        v28 = *(a2 + 44);
        if (v28 > 0xC)
        {
          v72 = "led < static_cast<uint8_t>(OpticalTransmitIndex::SIZE)";
          v73 = 344;
        }

        else
        {
          v29 = *(a2 + 41);
          if (v29 < 8)
          {
            v30 = health_algorithms::led_to_wavelength_index(3, *(a2 + 44));
            v31 = (v4 + 4 * v28);
            v81 = v31[59];
            v82 = v31[72];
            v83 = v31[85];
            v84 = v31[98];
            v32 = (v4 + 4 * v29);
            v33 = v32[119];
            v34 = v32[127];
            v35 = v32[135];
            v85 = v32[111];
            v86 = v33;
            v87 = v34;
            v88 = v35;
            v89 = 1;
            LOBYTE(v90) = 0;
            v91 = 0;
            LODWORD(v36) = *(v4 + 4 * v30 + 1596);
            v37 = v4 + 16 * v28;
            LODWORD(v38) = *(v37 + 1624);
            DWORD1(v36) = *(v37 + 1612);
            *(&v36 + 1) = *(v37 + 1616);
            *v92 = v36;
            v39 = v4 + 24 * v30;
            DWORD1(v38) = *(v39 + 1820);
            v40 = *(v39 + 1840);
            *(&v38 + 1) = *(v39 + 1824);
            *&v92[16] = v38;
            *v93 = *(v39 + 1832);
            *&v93[8] = v40;
            v94 = 1;
            v95 = *(v4 + 1916);
            v96 = 1;
            v97 = 0;
            v98 = 0;
            v99 = *(a2 + 32);
            v100 = *(a2 + 36);
            v101 = *(a2 + 40);
            v102 = *(a2 + 42);
            v103 = health_algorithms::led_to_wavelength_index(3, *(a2 + 44));
            v104 = 0;
            v105 = a4;
            operator new();
          }

          v72 = "tia_gain_index < 8";
          v73 = 345;
        }

        __assert_rtn("compute_calibration_slice", "PPGProcessor.cpp", v73, v72);
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    if (*(v4 + 143) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 120), *(v4 + 128));
      v4 = *a1;
      v55 = *(*a1 + 2476);
      v80 = 4;
      if ((v55 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }
    }

    else
    {
      __p = *(v4 + 120);
      v80 = 4;
    }

    if (*(v4 + 2472) == 2)
    {
      v56 = *(a2 + 44);
      if (v56 > 0xC)
      {
        v77 = "led < static_cast<uint8_t>(OpticalTransmitIndex::SIZE)";
        v78 = 375;
      }

      else if (v56 == 4)
      {
        v77 = "led != 4";
        v78 = 376;
      }

      else
      {
        v57 = *(a2 + 41);
        if (v57 < 8)
        {
          v58 = health_algorithms::led_to_wavelength_index(4, *(a2 + 44));
          v59 = (v4 + 4 * v56);
          v81 = v59[59];
          v82 = v59[72];
          v83 = v59[85];
          v84 = v59[98];
          v60 = (v4 + 4 * v57);
          v61 = v60[119];
          v62 = v60[127];
          v63 = v60[135];
          v85 = v60[111];
          v86 = v61;
          v87 = v62;
          v88 = v63;
          v89 = 1;
          LOBYTE(v90) = 0;
          v91 = 0;
          LODWORD(v64) = *(v4 + 4 * v58 + 1532);
          v65 = v4 + 16 * v56;
          LODWORD(v66) = *(v65 + 1560);
          DWORD1(v64) = *(v65 + 1548);
          *(&v64 + 1) = *(v65 + 1552);
          *v92 = v64;
          v67 = v4 + 24 * v58;
          v68 = *(v67 + 1776);
          DWORD1(v66) = *(v67 + 1756);
          *(&v66 + 1) = *(v67 + 1760);
          *&v92[16] = v66;
          *v93 = *(v67 + 1768);
          *&v93[8] = v68;
          v94 = 1;
          v95 = *(v4 + 1828);
          v96 = 1;
          if (v8)
          {
            v69 = (v4 + 320 * v58 + 10 * v57 + health_algorithms::mdm_frequency_to_index(4, v9));
            LODWORD(v69) = v69[572] | (v69[652] << 8) | (v69[732] << 16) | (v69[812] << 24);
            v91 = 1;
            v90 = v69;
          }

          v97 = 0;
          v98 = 0;
          v99 = *(a2 + 32);
          v100 = *(a2 + 36);
          v101 = *(a2 + 40);
          v102 = *(a2 + 42);
          v103 = health_algorithms::led_to_wavelength_index(4, *(a2 + 44));
          v104 = 0;
          v105 = a4;
          operator new();
        }

        v77 = "tia_gain_index < 8";
        v78 = 377;
      }

      __assert_rtn("compute_calibration_slice", "PPGProcessor.cpp", v78, v77);
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (a3 == 1)
  {
    if (*(v4 + 143) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 120), *(v4 + 128));
      v4 = *a1;
      v13 = *(*a1 + 2476);
      v80 = 1;
      if ((v13 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }
    }

    else
    {
      __p = *(v4 + 120);
      v80 = 1;
    }

    if (!*(v4 + 2472))
    {
      v14 = *(a2 + 44);
      if (v14 > 0xC)
      {
        v70 = "led < static_cast<uint8_t>(OpticalTransmitIndex::SIZE)";
        v71 = 307;
      }

      else
      {
        v15 = *(a2 + 41);
        if (v15 < 8)
        {
          v16 = health_algorithms::led_to_wavelength_index(1, *(a2 + 44));
          v17 = (v4 + 4 * v14);
          v81 = v17[59];
          v82 = v17[72];
          v83 = v17[85];
          v84 = v17[98];
          v18 = (v4 + 4 * v15);
          v19 = v18[119];
          v20 = v18[127];
          v21 = v18[135];
          v85 = v18[111];
          v86 = v19;
          v87 = v20;
          v88 = v21;
          v89 = 1;
          LOBYTE(v90) = 0;
          v91 = 0;
          LODWORD(v22) = *(v4 + 4 * v16 + 764);
          v23 = v4 + 16 * v14;
          LODWORD(v24) = *(v23 + 792);
          DWORD1(v22) = *(v23 + 780);
          *(&v22 + 1) = *(v23 + 784);
          *v92 = v22;
          v95 = *(v4 + 1052);
          v96 = 1;
          v25 = v4 + 16 * v16;
          *&v22 = *(v25 + 992);
          v26 = *(v25 + 1000);
          *&v93[4] = 0;
          v94 = 1;
          DWORD1(v24) = *(v25 + 988);
          *(&v24 + 1) = v22;
          *&v92[16] = v24;
          *v93 = v26;
          v97 = 0;
          v98 = 0;
          v99 = *(a2 + 32);
          v100 = *(a2 + 36);
          v101 = *(a2 + 40);
          v102 = *(a2 + 42);
          v103 = health_algorithms::led_to_wavelength_index(1, *(a2 + 44));
          v104 = 0;
          v105 = a4;
          operator new();
        }

        v70 = "tia_gain_index < 8";
        v71 = 308;
      }

      __assert_rtn("compute_calibration_slice", "PPGProcessor.cpp", v71, v70);
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (*(v4 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 120), *(v4 + 128));
    v4 = *a1;
    v41 = *(*a1 + 2476);
    v80 = 2;
    if ((v41 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    __p = *(v4 + 120);
    v80 = 2;
  }

  if (*(v4 + 2472) != 4)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v42 = *(a2 + 44);
  if (v42 > 0xC)
  {
    v74 = "led < to_underlying(OpticalTransmitIndex::SIZE)";
    v75 = 200;
  }

  else
  {
    if ((0x1E03u >> v42))
    {
      v43 = *(a2 + 41);
      if (v43 < 8)
      {
        v44 = qword_2512C8118[v42];
        v45 = qword_2512C8180[v42];
        v46 = (v4 + 4 * v45);
        v81 = v46[59];
        v82 = v46[65];
        v83 = v46[71];
        v84 = v46[77];
        v47 = (v4 + 4 * v43);
        v48 = v47[91];
        v49 = v47[99];
        v50 = v47[107];
        v85 = v47[83];
        v86 = v48;
        v87 = v49;
        v88 = v50;
        v89 = 1;
        LOBYTE(v90) = 0;
        v91 = 0;
        LODWORD(v51) = *(v4 + 4 * v44 + 1100);
        v52 = v4 + 16 * v45;
        v53 = *(v52 + 1120);
        DWORD1(v51) = *(v52 + 1108);
        *(&v51 + 1) = *(v52 + 1112);
        *v92 = v51;
        *&v92[16] = v53;
        v92[20] = 0;
        v94 = 0;
        LOBYTE(v95) = 0;
        v96 = 0;
        if (v8)
        {
          v54 = (v4 + 320 * v44 + 10 * v43 + health_algorithms::mdm_frequency_to_index(2, v9));
          LODWORD(v54) = v54[460] | (v54[540] << 8) | (v54[620] << 16) | (v54[700] << 24);
          v91 = 1;
          v90 = v54;
          LODWORD(v42) = *(a2 + 44);
        }

        v97 = 0;
        v98 = 0;
        v99 = *(a2 + 32);
        v100 = *(a2 + 36);
        v101 = *(a2 + 40);
        v102 = *(a2 + 42);
        v103 = health_algorithms::led_to_wavelength_index(2, v42);
        v104 = 0;
        v105 = a4;
        operator new();
      }

      v74 = "tia_gain_index < mimosa::OpRTv1::gain_count";
      v75 = 425;
      v76 = "compute_calibration_slice";
LABEL_60:
      __assert_rtn(v76, "PPGProcessor.cpp", v75, v74);
    }

    v74 = "cal_led != Sunstone2p5OpticalLedIdx::S2P5_INVALID";
    v75 = 226;
  }

  v76 = "sunstone2p5_led_to_idx";
  goto LABEL_60;
}

void sub_251294854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x25306FDD0](v14, 0x1012C40419E608ALL);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t health_algorithms::led_to_wavelength_index(int a1, unsigned int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 == 2)
  {
    if (a2 >= 0xD)
    {
      health_algorithms::led_to_wavelength_index();
    }

    if (a2 >= 2)
    {
      result = 0;
    }

    else
    {
      result = 3;
    }
  }

  else if (a1)
  {
    if (a2 >= 0xD)
    {
      health_algorithms::led_to_wavelength_index();
    }

    v4 = 33686018;
    v5 = 3;
    v6 = 16843009;
    result = *(&v4 + a2);
  }

  else
  {
    if (a2 >= 6)
    {
      health_algorithms::led_to_wavelength_index();
    }

    result = 2 * (a2 < 2);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void health_algorithms::PPGProcessor::process_packet(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a3;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v87 = *a1 + 232;
  v4 = *(a2 + 320);
  if (v4 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = a2;
  v6 = a1;
  *&v81 = &v87;
  v7 = (off_2863527C0[v4])(&v81);
  v8 = *v6;
  if (!v7 || *(v8 + 2476) == 1) && (*(v8 + 144))
  {
    v9 = *(v5 + 320);
    if (v9 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *&v81 = &v87;
    v78 = (off_286352820[v9])(&v81, v5);
    hal9000::compute_tick_offsets(v5, v7, &v102);
    v10 = *(v5 + 320);
    if (v10 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *&v81 = &v87;
    (off_286352880[v10])(&v100, &v81, v5);
    v11 = v102;
    v12 = v103 - v102;
    if (v12 != 0x6DB6DB6DB6DB6DB7 * ((v101 - v100) >> 3))
    {
      __assert_rtn("process_packet", "PPGProcessor.cpp", 1049, "tick_offsets.size() == datums.size()");
    }

    if (v103 != v102)
    {
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = v100 + 24;
      do
      {
        v14 = *v11++;
        *v13 = v14;
        v13 += 7;
        --v12;
      }

      while (v12);
    }

    health_algorithms::PPGProcessor::update_blank_samples(v6, &v100);
    v15 = 0;
    v98 = 0u;
    v99 = 0u;
    v16 = &v98;
    do
    {
      if (BYTE4(v6[v15 + 9]))
      {
        v17 = &v6[v15 + 7];
      }

      else
      {
        v17 = 0;
      }

      *v16++ = v17;
      v15 += 3;
    }

    while (v15 != 12);
    v18 = *(v5 + 320);
    if (v18 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *&v81 = &v87;
    v79 = (off_2863528E0[v18])(&v81, v5);
    v19 = *(v5 + 320);
    if (v19 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *&v81 = &v87;
    v20 = (off_286352940[v19])(&v81, v5);
    v21 = v100;
    v22 = v101;
    if (v100 != v101)
    {
      do
      {
        if ((v21[47] & 1) != 0 || (*(v21 + 17) & 0xFFF7) != 0)
        {
          LODWORD(v81) = (v21[44] << 16) | (v21[42] << 8) | v21[45];
          std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__erase_unique<unsigned int>(v6 + 2, &v81);
        }

        v21 += 56;
      }

      while (v21 != v22);
      v21 = v100;
      v22 = v101;
    }

    if (v21 != v22)
    {
      v23 = 0;
      while (1)
      {
        v24 = &v21[v23];
        if (v21[v23 + 44] == 255 || (v24[46] & 1) != 0 || (v21[v23 + 47] & 1) != 0 || (*&v21[v23 + 34] & 0xFFF7) != 0)
        {
          break;
        }

        v23 += 56;
        if (&v21[v23] == v22)
        {
          goto LABEL_45;
        }
      }

      if (v24 != v22)
      {
        for (i = v24 + 56; i != v22; i += 56)
        {
          if (i[44] != 255 && (i[46] & 1) == 0 && (i[47] & 1) == 0 && (*(i + 17) & 0xFFF7) == 0)
          {
            v26 = *i;
            v27 = *(i + 1);
            v28 = *(i + 2);
            v24[48] = i[48];
            *(v24 + 1) = v27;
            *(v24 + 2) = v28;
            *v24 = v26;
            v24 += 56;
          }
        }
      }

      if (v24 != v22)
      {
        v101 = v24;
      }
    }

LABEL_45:
    for (j = v6[4]; j; j = *j)
    {
      while (v20 - j[3] <= 999999999)
      {
        j = std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::erase(v6 + 2, j);
        if (!j)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_50:
    v30 = *(v5 + 320);
    if (v30 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    *&v81 = &v87;
    v71 = (off_2863529A0[v30])(&v81, v5);
    v31 = v100;
    v77 = v101;
    if (v100 != v101)
    {
      v75 = v6;
      v76 = v5;
      v74 = v7;
      v72 = v3;
      v73 = v20;
      do
      {
        LODWORD(v87) = (v31[44] << 16) | (v31[42] << 8) | v31[45];
        v32 = std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::find<unsigned int>(v6 + 2, &v87);
        if (!v32 || *(v32 + 20) != *(v31 + 16))
        {
          *&v81 = v20;
          health_algorithms::PPGProcessor::make_processor(v6, v31, v7, v71);
        }

        v33 = v32[4];
        v34 = *v31;
        v35 = *(v31 + 2);
        v36 = *(v31 + 17);
        v83 = v98;
        DWORD2(v81) = v35;
        *&v81 = v34;
        WORD6(v81) = v36;
        LODWORD(v34) = health_algorithms::tia_gain_table[v31[41]];
        v84 = v99;
        v86 = BYTE4(v79);
        LODWORD(v82) = v34;
        v85 = v79;
        hal9000::SignalProcessor::process(v33, &v81, &v87, *&v98);
        v37 = health_algorithms::wavelength_table[health_algorithms::led_to_wavelength_index(v7, v31[44])];
        LOWORD(v81) = v37;
        *(&v81 + 1) = v31;
        v38 = *(v5 + 320);
        if (v38 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v104 = &v81;
        v39 = (off_286352A00[v38])(&v104, v5);
        v40 = *(v31 + 3);
        v80 = v37;
        if (v78)
        {
          v41 = v40 * 1953125.0;
          v42 = (__PAIR128__((v41 * 0.015625), *&v41) - COERCE_UNSIGNED_INT64((v41 * 0.015625) * 64.0)) >> 64;
          v43 = v42 + 1;
          v44 = v41 - v42 * 64.0;
          v45 = (v42 + 1) * 64.0;
        }

        else
        {
          v41 = v40 * 125.0;
          v42 = (__PAIR128__((v41 / 3.0), *&v41) - COERCE_UNSIGNED_INT64((v41 / 3.0) * 3.0)) >> 64;
          v43 = v42 + 1;
          v44 = v41 - v42 * 3.0;
          v45 = (v42 + 1) * 3.0;
        }

        v46 = v45 - v41;
        if (v44 == v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = -127;
        }

        if (v44 > v46)
        {
          v47 = 1;
        }

        if (v44 < v46)
        {
          v47 = -1;
        }

        if (v47 == 1)
        {
          v42 = v43;
        }

        else if (v47 != 255)
        {
          v42 += v42 & 1;
        }

        v48 = v20 - v42;
        v49 = v31[44];
        v50 = v31[42];
        v51 = v31[45];
        v52 = *(v31 + 16);
        LODWORD(v104) = v87;
        BYTE4(v104) = BYTE4(v87);
        v53 = v88;
        v54 = v89;
        *(&v81 + 2) = v90;
        v55 = (v92 << 24) | (v93 << 56);
        BYTE6(v81) = v91;
        v56 = (v94 << 24) | (v95 << 56);
        v57 = (v96 << 24) | (v97 << 56);
        v58 = v3[1];
        v59 = v3[2];
        if (v58 >= v59)
        {
          v61 = *v3;
          v62 = (v58 - *v3) >> 6;
          v63 = v62 + 1;
          if ((v62 + 1) >> 58)
          {
            std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
          }

          v64 = v59 - v61;
          if (v64 >> 5 > v63)
          {
            v63 = v64 >> 5;
          }

          if (v64 >= 0x7FFFFFFFFFFFFFC0)
          {
            v65 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<health_algorithms::PPGProcessor::PPGOutputSignal>>(v72, v65);
          }

          v66 = v62 << 6;
          *v66 = v48;
          *(v66 + 8) = v49;
          *(v66 + 9) = v50;
          *(v66 + 10) = v51;
          *(v66 + 12) = v52;
          *(v66 + 14) = v80;
          *(v66 + 16) = v39;
          *(v66 + 20) = v104;
          *(v66 + 24) = BYTE4(v104);
          *(v66 + 28) = v53;
          *(v66 + 29) = v54;
          *(v66 + 30) = v81;
          *(v66 + 33) = *(&v81 + 3);
          *(v66 + 37) = v55;
          *(v66 + 45) = v56;
          *(v66 + 53) = v57;
          v60 = (v62 << 6) + 64;
          v67 = *(v72 + 8) - *v72;
          v68 = ((v62 << 6) - v67);
          memcpy(v68, *v72, v67);
          v69 = *v72;
          *v72 = v68;
          *(v72 + 8) = v60;
          *(v72 + 16) = 0;
          v3 = v72;
          if (v69)
          {
            operator delete(v69);
          }
        }

        else
        {
          *v58 = v48;
          *(v58 + 8) = v49;
          *(v58 + 9) = v50;
          *(v58 + 10) = v51;
          *(v58 + 12) = v52;
          *(v58 + 14) = v80;
          *(v58 + 16) = v39;
          *(v58 + 20) = v104;
          *(v58 + 24) = BYTE4(v104);
          *(v58 + 28) = v53;
          *(v58 + 29) = v54;
          *(v58 + 30) = v81;
          *(v58 + 33) = *(&v81 + 3);
          *(v58 + 37) = v55;
          *(v58 + 45) = v56;
          v60 = v58 + 64;
          *(v58 + 53) = v57;
        }

        v6 = v75;
        v5 = v76;
        v7 = v74;
        v20 = v73;
        v3[1] = v60;
        v31 += 56;
      }

      while (v31 != v77);
    }

    health_algorithms::PPGProcessor::compute_accel_output(v5, &v81);
    v70 = v3[3];
    if (v70)
    {
      v3[4] = v70;
      operator delete(v70);
    }

    *(v3 + 3) = v81;
    v3[5] = v82;
    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if (v102)
    {
      v103 = v102;
      operator delete(v102);
    }
  }
}

void sub_251295230(_Unwind_Exception *a1)
{
  v4 = *(v2 - 176);
  if (v4)
  {
    *(v2 - 168) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 152);
  if (v5)
  {
    *(v2 - 144) = v5;
    operator delete(v5);
  }

  health_algorithms::PPGProcessor::Output::~Output(v1);
  _Unwind_Resume(a1);
}

void health_algorithms::PPGProcessor::compute_accel_output(uint64_t a1@<X1>, void **a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v52 = 0;
  v3 = *(a1 + 320);
  if (v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v53 = &v47;
  (off_286352AC0[v3])(&v48, &v53);
  if (v49 == v50)
  {
    *a2 = *__p;
LABEL_51:
    a2[2] = v52;
    a2 = __p;
    goto LABEL_52;
  }

  std::vector<health_algorithms::PPGProcessor::AccelOutputSignal>::reserve(__p, 0xCCCCCCCCCCCCCCCDLL * ((v50 - v49) >> 2));
  v46 = health_algorithms::PPGProcessor::determine_interpolated_accel_scheme(a1);
  v6 = v49;
  v5 = v50;
  if (v49 == v50)
  {
LABEL_29:
    v22 = __p[1];
    if (__p[0] == __p[1])
    {
      *a2 = __p[0];
      a2[1] = v22;
    }

    else
    {
      v23 = *(a1 + 320);
      if (v23 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v53 = &v47;
      if ((off_286352B20[v23])(&v53, a1))
      {
        v24 = 125 * v48 / 3 - (3 * (125 * v48 / 3) > 125 * v48);
        v25 = -3 * v24 + 125 * v48;
        v26 = 3 * (v24 + 1) - 125 * v48;
        v27 = v24;
        if (v25 >= v26)
        {
          v27 = v24 + 1;
          if (v25 == v26)
          {
            v27 = (v24 & 1) + v24;
          }
        }
      }

      else
      {
        v28 = 1953125 * v48;
        v29 = 1953125 * v48 + 63;
        if (1953125 * v48 >= 0)
        {
          v29 = 1953125 * v48;
        }

        v30 = (v29 >> 6) - ((v29 & 0xFFFFFFFFFFFFFFC0) > v28);
        v31 = v28 - (v30 << 6);
        v32 = -1953125 * v48 + ((v30 + 1) << 6);
        v33 = v31 == v32;
        v34 = v31 < v32;
        v27 = (v30 & 1) + v30;
        if (!v33)
        {
          v27 = v30 + 1;
        }

        if (v34)
        {
          v27 = v30;
        }
      }

      v35 = __p[0];
      v36 = __p[1];
      v37 = __p[1] - __p[0];
      if (__p[1] != __p[0])
      {
        v38 = 0;
        v39 = v37 - 24;
        v40 = ((v37 - 24) / 0x18uLL + 2) & 0x1FFFFFFFFFFFFFFELL;
        v41 = vdupq_n_s64(v39 / 0x18);
        v42 = __p[1] - 48;
        v43 = 0x3B9ACA00u / *(__p[0] + 4);
        do
        {
          v44 = v27 - v38 * v43;
          v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v38), xmmword_2512C7ED0)));
          if (v45.i8[0])
          {
            v42[3] = v44;
          }

          if (v45.i8[4])
          {
            *v42 = v44 - v43;
          }

          v38 += 2;
          v42 -= 6;
        }

        while (v40 != v38);
      }

      *a2 = v35;
      a2[1] = v36;
    }

    goto LABEL_51;
  }

  v7 = 0;
  v8 = v49 + 20;
  v9 = vdup_n_s32(0x37800000u);
  while (1)
  {
    v10 = &v6[v7];
    if (v6[v7 + 16] == 1)
    {
      if (v10[6] || !*&v6[v7 + 14])
      {
        break;
      }

      v11 = __p[1];
      if (__p[1] >= v52)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v52 - __p[0]) >> 3) > v14)
        {
          v14 = 0x5555555555555556 * ((v52 - __p[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v52 - __p[0]) >> 3) >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<health_algorithms::PPGProcessor::AccelOutputSignal>>(__p, v15);
        }

        v16 = (8 * ((__p[1] - __p[0]) >> 3));
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        v12 = (24 * v13 + 24);
        v17 = v16 - (__p[1] - __p[0]);
        memcpy(v17, __p[0], __p[1] - __p[0]);
        v18 = __p[0];
        __p[0] = v17;
        __p[1] = v12;
        v52 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *__p[1] = 0;
        v11[1] = 0;
        v12 = (v11 + 3);
        v11[2] = 0;
      }

      __p[1] = v12;
      *(v12 - 12) = vmul_f32(vcvt_f32_s32(*&v6[v7]), v9);
      *(v12 - 1) = *&v6[v7 + 8] * 0.000015259;
      v19 = *&v6[v7 + 14];
      *(v12 - 8) = v19;
      v5 = v50;
      if (v50 == &v8[v7])
      {
        v20 = __p[0];
        if (v10 != v49 && v46 == 1)
        {
          v21 = *(__p[0] + 4);
          if (v19 != v21)
          {
            *(v12 - 8) = v21;
            v19 = v21;
          }
        }
      }

      else
      {
        v20 = __p[0];
      }

      if (v20[4] != v19)
      {
        break;
      }
    }

    v7 += 20;
    if (&v6[v7] == v5)
    {
      goto LABEL_29;
    }
  }

LABEL_52:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_251295764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health_algorithms::PPGProcessor::determine_interpolated_accel_scheme(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_286352A60[v1])(&v4, a1);
}

void *std::vector<health_algorithms::PPGProcessor::AccelOutputSignal>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<health_algorithms::PPGProcessor::AccelOutputSignal>>(result, a2);
    }

    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<health_algorithms::PPGProcessor::RawPPGDatum>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::back_insert_iterator<std::vector<health_algorithms::PPGProcessor::RawPPGDatum>>::operator=[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *v4) >> 3);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x492492492492492)
    {
      std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *v4) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x249249249249249)
    {
      v14 = 0x492492492492492;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<health_algorithms::PPGProcessor::RawPPGDatum>>(*a1, v14);
    }

    v15 = 56 * v11;
    v16 = *a2;
    v17 = a2[1];
    v18 = a2[2];
    *(v15 + 48) = *(a2 + 6);
    *(v15 + 16) = v17;
    *(v15 + 32) = v18;
    *v15 = v16;
    v10 = 56 * v11 + 56;
    v19 = *(v4 + 8) - *v4;
    v20 = v15 - v19;
    memcpy((v15 - v19), *v4, v19);
    v21 = *v4;
    *v4 = v20;
    *(v4 + 8) = v10;
    *(v4 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    *(v5 + 48) = *(a2 + 6);
    *(v5 + 16) = v8;
    *(v5 + 32) = v9;
    *v5 = v7;
    v10 = v5 + 56;
  }

  *(v4 + 8) = v10;
  return a1;
}

uint64_t health_algorithms::index_for_tia_gain(health_algorithms *this)
{
  if (this > 119999)
  {
    if (this > 239999)
    {
      if (this == 240000)
      {
        return 6;
      }

      else
      {
        if (this != 480000)
        {
          goto LABEL_20;
        }

        return 7;
      }
    }

    else if (this == 120000)
    {
      return 4;
    }

    else
    {
      if (this != 180000)
      {
        goto LABEL_20;
      }

      return 5;
    }
  }

  else if (this > 59999)
  {
    if (this == 60000)
    {
      return 2;
    }

    else
    {
      if (this != 90000)
      {
        goto LABEL_20;
      }

      return 3;
    }
  }

  else
  {
    if (this != 10000)
    {
      if (this == 30000)
      {
        return 1;
      }

LABEL_20:
      health_algorithms::index_for_tia_gain();
    }

    return 0;
  }
}

BOOL health_algorithms::is_light_path_redacted_for_gemstone_and_newer(health_algorithms *this)
{
  v1 = this;
  result = 1;
  if ((v1 - 89) > 0xE || ((1 << (v1 - 89)) & 0x7F85) == 0)
  {
    return (v1 - 188) < 8;
  }

  return result;
}

uint64_t health_algorithms::mdm_frequency_to_index(int a1, int a2)
{
  if (a1 != 4 && a1 != 2)
  {
    health_algorithms::mdm_frequency_to_index();
  }

  if (a2 == 46)
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 45)
  {
    v3 = 8;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 42)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3;
  }

  if (a2 == 40)
  {
    v5 = 6;
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 35)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 41)
  {
    v4 = v6;
  }

  if (a2 == 31)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (a2 == 28)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 == 25)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (a2 == 23)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (a2 <= 27)
  {
    v8 = v10;
  }

  if (a2 <= 34)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<mimosa::Visitor<health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_0,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_1,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_2,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_3,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_4,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_5,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_6,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_7,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_8,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_9,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_10,health_algorithms::determine_hardware_generation(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,std::optional<std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1>> const&)::$_11>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 2244) == 1 && *(v1 + 2240) == 2)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 210), 7uLL);
  if (*(a2 + 208) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 218), 7uLL);
  if (*(a2 + 216) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 218), 7uLL);
  if (*(a2 + 216) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 194), 7uLL);
  if (*(a2 + 192) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 194), 7uLL);
  if (*(a2 + 192) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 194), 7uLL);
  if (*(a2 + 192) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 186), 7uLL);
  if (*(a2 + 184) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 186), 7uLL);
  if (*(a2 + 184) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = vcvts_n_f32_s32(*(a2 + 186), 7uLL);
  if (*(a2 + 184) == 1)
  {
    return LODWORD(v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_4> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 12))
  {
    *&v3 = v2 * 125.0;
    result = (__PAIR128__((*&v3 / 3.0), v3) - COERCE_UNSIGNED_INT64((*&v3 / 3.0) * 3.0)) >> 64;
    v5 = result + 1;
    v6 = *&v3 - result * 3.0;
    v7 = (result + 1) * 3.0 - *&v3;
    v8 = v6 == v7;
    v9 = v6 < v7;
    v10 = v6 <= v7;
  }

  else
  {
    *&v11 = v2 * 1953125.0;
    result = (__PAIR128__((*&v11 * 0.015625), v11) - COERCE_UNSIGNED_INT64((*&v11 * 0.015625) * 64.0)) >> 64;
    v5 = result + 1;
    v12 = *&v11 - result * 64.0;
    v13 = (result + 1) * 64.0 - *&v11;
    v8 = v12 == v13;
    v9 = v12 < v13;
    v10 = v12 <= v13;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = -127;
  }

  if (!v10)
  {
    v14 = 1;
  }

  if (v9)
  {
    v14 = -1;
  }

  if (v14 == 1)
  {
    return v5;
  }

  if (v14 != 255)
  {
    result += result & 1;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::find<unsigned int>(void *a1, unsigned int *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,health_algorithms::PPGProcessor::SignalProcessorAndFriends>(void *a1, unsigned int *a2)
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

void std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 32;
    v4 = *(__p + 4);
    *(__p + 4) = 0;
    if (v4)
    {
      std::default_delete<hal9000::SignalProcessor>::operator()[abi:ne200100](v3, v4);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

float std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, __int128 *a2)
{
  v3 = *a1;
  v7 = *a2;
  v8 = a2[1];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<mimosa::OpticalSampleV1>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV1*,mimosa::OpticalSampleV1*>(&v9, *(a2 + 4), *(a2 + 5), 0x8E38E38E38E38E39 * ((*(a2 + 5) - *(a2 + 4)) >> 2));
  v12 = *(a2 + 56);
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(&__p, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v4 = a2[7];
  v16 = a2[6];
  v17 = v4;
  v18 = a2[8];
  v5 = *v3;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v5;
}

void sub_251297248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, const mimosa::PacketV2 *a2)
{
  v2 = *a1;
  mimosa::PacketV2::PacketV2(&v6, a2);
  v3 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV2Subpacket>(&v13, *(*(v2 + 1) + 38));
  v4 = *v2;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  result = v4;
  if ((v3 & 0x100000000) != 0)
  {
    return *&v3;
  }

  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, uint64_t a2)
{
  v2 = *a1;
  mimosa::PacketV3::PacketV3(v5, a2);
  v3 = *v2;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v3;
}

float std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, uint64_t a2)
{
  v2 = *a1;
  mimosa::PacketV4::PacketV4(v6, a2);
  v3 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV2Subpacket>(&v13, *(*(v2 + 1) + 38));
  v4 = *v2;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  result = v4;
  if ((v3 & 0x100000000) != 0)
  {
    return *&v3;
  }

  return result;
}

void sub_251297408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mimosa::PacketV2::~PacketV2(va);
  _Unwind_Resume(a1);
}

float std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, uint64_t a2)
{
  v2 = *a1;
  mimosa::PacketV5::PacketV5(&v6, a2);
  v3 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV3Subpacket>(&v13, *(*(v2 + 1) + 38));
  v4 = *v2;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  result = v4;
  if ((v3 & 0x100000000) != 0)
  {
    return *&v3;
  }

  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, __int128 *a2)
{
  v3 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(&v15, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  v18 = *(a2 + 56);
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(&__p, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v4 = a2[17];
  v28[4] = a2[16];
  v28[5] = v4;
  v29 = *(a2 + 36);
  v5 = a2[13];
  v28[0] = a2[12];
  v28[1] = v5;
  v6 = a2[15];
  v28[2] = a2[14];
  v28[3] = v6;
  v7 = a2[9];
  v24 = a2[8];
  v25 = v7;
  v8 = a2[11];
  v26 = a2[10];
  v27 = v8;
  v9 = a2[7];
  v22 = a2[6];
  v23 = v9;
  v10 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV2Subpacket>(v28 + 8, *(*(v3 + 1) + 38));
  v11 = *v3;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  result = v11;
  if ((v10 & 0x100000000) != 0)
  {
    return *&v10;
  }

  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, __int128 *a2)
{
  v3 = *a1;
  v14 = *a2;
  v15 = a2[1];
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(&v16, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  v19 = *(a2 + 56);
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(&__p, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v4 = a2[17];
  v29[4] = a2[16];
  v29[5] = v4;
  v5 = a2[19];
  v29[6] = a2[18];
  v29[7] = v5;
  v6 = a2[13];
  v29[0] = a2[12];
  v29[1] = v6;
  v7 = a2[15];
  v29[2] = a2[14];
  v29[3] = v7;
  v8 = a2[9];
  v25 = a2[8];
  v26 = v8;
  v9 = a2[11];
  v27 = a2[10];
  v28 = v9;
  v10 = a2[7];
  v23 = a2[6];
  v24 = v10;
  v11 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV3Subpacket>(v29 + 8, *(*(v3 + 1) + 38));
  v12 = *v3;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  result = v12;
  if ((v11 & 0x100000000) != 0)
  {
    return *&v11;
  }

  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, __int128 *a2)
{
  v3 = *a1;
  v14 = *a2;
  v15 = a2[1];
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(&v16, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  v19 = *(a2 + 56);
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(&__p, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v4 = a2[17];
  v29[4] = a2[16];
  v29[5] = v4;
  v5 = a2[19];
  v29[6] = a2[18];
  v29[7] = v5;
  v6 = a2[13];
  v29[0] = a2[12];
  v29[1] = v6;
  v7 = a2[15];
  v29[2] = a2[14];
  v29[3] = v7;
  v8 = a2[9];
  v25 = a2[8];
  v26 = v8;
  v9 = a2[11];
  v27 = a2[10];
  v28 = v9;
  v10 = a2[7];
  v23 = a2[6];
  v24 = v10;
  v11 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV3Subpacket>(v29 + 8, *(*(v3 + 1) + 38));
  v12 = *v3;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  result = v12;
  if ((v11 & 0x100000000) != 0)
  {
    return *&v11;
  }

  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, __int128 *a2)
{
  v3 = *a1;
  v9 = *a2;
  v10 = a2[1];
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(&v11, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  v14 = *(a2 + 56);
  v16 = 0;
  v17 = 0;
  __p = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(&__p, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v4 = a2[7];
  v18 = a2[6];
  v19 = v4;
  v5 = a2[11];
  v22 = a2[10];
  v23 = v5;
  v6 = a2[9];
  v20 = a2[8];
  v21 = v6;
  v7 = *v3;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v7;
}

void sub_251297948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, __int128 *a2)
{
  v3 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(&v15, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  v18 = *(a2 + 56);
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(&__p, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v4 = a2[15];
  v28[2] = a2[14];
  v28[3] = v4;
  v5 = a2[17];
  v28[4] = a2[16];
  v28[5] = v5;
  v6 = a2[11];
  v26 = a2[10];
  v27 = v6;
  v7 = a2[13];
  v28[0] = a2[12];
  v28[1] = v7;
  v8 = a2[7];
  v22 = a2[6];
  v23 = v8;
  v9 = a2[9];
  v24 = a2[8];
  v25 = v9;
  v10 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV2Subpacket>(v28, *(*(v3 + 1) + 38));
  v11 = *v3;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  result = v11;
  if ((v10 & 0x100000000) != 0)
  {
    return *&v10;
  }

  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, __int128 *a2)
{
  v3 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(&v15, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  v18 = *(a2 + 56);
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(&__p, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v4 = a2[17];
  v28[4] = a2[16];
  v28[5] = v4;
  v28[6] = a2[18];
  v29 = *(a2 + 38);
  v5 = a2[13];
  v28[0] = a2[12];
  v28[1] = v5;
  v6 = a2[15];
  v28[2] = a2[14];
  v28[3] = v6;
  v7 = a2[9];
  v24 = a2[8];
  v25 = v7;
  v8 = a2[11];
  v26 = a2[10];
  v27 = v8;
  v9 = a2[7];
  v22 = a2[6];
  v23 = v9;
  v10 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV3Subpacket>(v28, *(*(v3 + 1) + 38));
  v11 = *v3;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  result = v11;
  if ((v10 & 0x100000000) != 0)
  {
    return *&v10;
  }

  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::process_packet(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_7> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>(unsigned __int16 **a1, __int128 *a2)
{
  v3 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<mimosa::OpticalSampleV2>::__init_with_size[abi:ne200100]<mimosa::OpticalSampleV2*,mimosa::OpticalSampleV2*>(&v15, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  v18 = *(a2 + 56);
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(&__p, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  v4 = a2[17];
  v28[4] = a2[16];
  v28[5] = v4;
  v28[6] = a2[18];
  v29 = *(a2 + 38);
  v5 = a2[13];
  v28[0] = a2[12];
  v28[1] = v5;
  v6 = a2[15];
  v28[2] = a2[14];
  v28[3] = v6;
  v7 = a2[9];
  v24 = a2[8];
  v25 = v7;
  v8 = a2[11];
  v26 = a2[10];
  v27 = v8;
  v9 = a2[7];
  v22 = a2[6];
  v23 = v9;
  v10 = health_algorithms::get_effective_wavelength<mimosa::WavelengthV3Subpacket>(v28, *(*(v3 + 1) + 38));
  v11 = *v3;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  result = v11;
  if ((v10 & 0x100000000) != 0)
  {
    return *&v10;
  }

  return result;
}