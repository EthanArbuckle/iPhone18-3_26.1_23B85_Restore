void AABC::SetDeviceInSleeve(NSObject **this, char a2)
{
  v11 = this;
  v10 = a2;
  v2 = this[488];
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = ___ZN4AABC17SetDeviceInSleeveEb_block_invoke;
  v7 = &__block_descriptor_41_e5_v8__0l;
  v8 = v11;
  v9 = a2 & 1;
  dispatch_sync(v2, &block);
}

void AABCFactoryFunction(AABC *a1, const __CFAllocator *a2)
{
  if (AABCFactoryFunction::pred != -1)
  {
    dispatch_once(&AABCFactoryFunction::pred, &__block_literal_global_14);
  }

  AABC::alloc(a1, a2);
}

os_log_t __AABCFactoryFunction_block_invoke()
{
  result = os_log_create("com.apple.CoreBrightness.AABC", "default");
  _logHandle = result;
  return result;
}

AABC *AABC::alloc(AABC *this, const __CFAllocator *a2, AAB::UpdateCurveStrategy *a3)
{
  v12 = this;
  v11 = a2;
  v10 = MEMORY[0x1E12C3440](this, 4016, 0x10A1040A90B1919, 0);
  if (v10)
  {
    v7 = v10;
    v3 = *MEMORY[0x1E695E4A8];
    p_byte7 = &byte7;
    v9 = CFUUIDGetConstantUUIDWithBytes(v3, 0x96u, 0x5Fu, 0xC3u, 0xCBu, 0x16u, 0xB8u, 0x48u, 0x2Fu, 0xA6u, 0xC6u, 0x48u, 0x63u, 7u, 0x52u, 0x16u, 0xE9u);
    AABC::AABC(v7, v9, v11);
    return v7;
  }

  else
  {
    v6 = v11;
    if (v11)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return v10;
}

void AABC::AABC(AABC *this, const __CFUUID *a2, AAB::UpdateCurveStrategy *a3)
{
  AABC::AABC(this, a2, a3);
}

{
  v8 = *MEMORY[0x1E69E9840];
  AAB::AAB(this, a3);
  *this = &unk_1F599B890;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 161) = 0;
  *(this + 162) = 0;
  AABC::ALSFilter::ALSFilter((this + 168));
  AABC::ALSFilter::ALSFilter((this + 216));
  *(this + 264) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  std::bitset<3ul>::bitset[abi:de200100](this + 37, 0);
  *(this + 76) = -1.0;
  *(this + 308) = 0;
  *(this + 79) = 17;
  *(this + 90) = 0;
  *(this + 91) = 0;
  *(this + 92) = 1;
  *(this + 392) = 0;
  *(this + 393) = 0;
  *(this + 50) = 0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 432) = 0;
  *(this + 433) = 0;
  *(this + 434) = 0;
  *(this + 435) = 0;
  *(this + 436) = 0;
  *(this + 437) = 0;
  *(this + 110) = 0;
  *(this + 444) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 120) = 0;
  *(this + 121) = 0;
  *(this + 122) = 0;
  *(this + 496) = 0;
  *(this + 497) = 0;
  *(this + 125) = 0;
  *(this + 126) = 1;
  *(this + 127) = 1;
  *(this + 128) = 0;
  *(this + 129) = 0;
  *(this + 130) = 0;
  *(this + 131) = 0.5;
  *(this + 132) = 1138819072;
  *(this + 133) = 1138819072;
  *(this + 134) = -1.0;
  *(this + 135) = -1.0;
  *(this + 136) = -1.0;
  *(this + 137) = 1138819072;
  *(this + 140) = 0;
  *(this + 141) = 1;
  *(this + 146) = 255;
  *(this + 74) = 0;
  *(this + 150) = 0;
  *(this + 151) = 0;
  *(this + 152) = 0;
  *(this + 154) = 0;
  *(this + 155) = 0;
  *(this + 156) = 0;
  *(this + 628) = 0;
  memset(this + 632, 0, 0x28uLL);
  *(this + 168) = 0;
  *(this + 169) = 0;
  *(this + 85) = 0;
  *(this + 86) = 0;
  *(this + 87) = 1045220557;
  *(this + 176) = 0;
  *(this + 177) = 5.0;
  *(this + 178) = 1124859904;
  *(this + 179) = 1140457472;
  *(this + 180) = 5.0;
  *(this + 181) = 1124859904;
  *(this + 182) = 1140457472;
  *(this + 184) = 5;
  *(this + 1560) = 0;
  *(this + 721) = 0;
  *(this + 722) = 0;
  *(this + 723) = 0;
  *(this + 2896) = 0;
  *(this + 3328) = 0;
  *(this + 3409) = 0;
  *(this + 853) = 1;
  *(this + 3424) = 0;
  *(this + 3425) = 0;
  *(this + 3426) = 1;
  *(this + 857) = 0;
  *(this + 3432) = AABC::_defaultSettings;
  *(this + 3448) = xmmword_1DEACE5F0;
  *(this + 866) = 3;
  *(this + 3468) = 0;
  *(this + 3720) = 1;
  *(this + 466) = 0;
  *(this + 938) = 0;
  *(this + 3757) = 1;
  *(this + 940) = 3.0;
  *(this + 941) = 0;
  *(this + 942) = 0;
  *(this + 943) = 0;
  *(this + 944) = 0;
  *(this + 945) = 0;
  *(this + 946) = 0;
  *(this + 947) = 0;
  *(this + 474) = 0;
  *(this + 950) = 0;
  *(this + 951) = 1045220557;
  *(this + 952) = 1045220557;
  *(this + 953) = 981668463;
  *(this + 954) = 1036831949;
  *(this + 955) = 1036831949;
  *(this + 956) = 0;
  *(this + 479) = 0;
  *(this + 960) = 0;
  *(this + 961) = 1.0;
  *(this + 481) = os_log_create("com.apple.CoreBrightness.AABC", "LowPowerMode");
  *(this + 965) = 0;
  *(this + 483) = 1;
  *(this + 968) = 0;
  *(this + 486) = objc_alloc_init(CBLowPowerMode);
  *(this + 488) = 0;
  *(this + 3992) = 0;
  *(this + 500) = 0;
  *(this + 4008) = 0;
  _logHandle = os_log_create("com.apple.CoreBrightness.AABC", "default");
  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v7, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "[%x]: ", v7, 8u);
  }

  memset(this + 632, 0, 0x28uLL);
  *(this + 158) = 0;
  *(this + 167) = 0;
  *(this + 166) = *(this + 167);
  *(this + 162) = 0;
  *(this + 163) = 0;
  *(this + 164) = 0;
  *(this + 165) = 0;
  *(this + 3376) = 0;
  *(this + 423) = 0;
  *(this + 425) = 0x4072C00000000000;
  *(this + 424) = 0;
  *(this + 845) = 3;
  *(this + 3916) = 0;
  *(this + 980) = 0;
  *(this + 978) = 0;
  *(this + 3924) = 0;
  *(this + 464) = objc_alloc_init(ALSSelectionStats);
  *(this + 467) = objc_alloc_init(AABCHistograms);
  *(this + 468) = objc_alloc_init(ALSOcclusionStats);
  if (+[CBSoftWakeAABCDelegate isSupported])
  {
    v3 = objc_alloc_init(CBSoftWakeAABCDelegate);
  }

  else
  {
    v3 = 0;
  }

  *(this + 485) = v3;
  AABC::UpdateState(this, 0);
  *MEMORY[0x1E69E9840];
}

void AABC::operator delete(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v2 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v4, a1);
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_INFO, "%p", v4, 0xCu);
  }

  (*(*a1 + 32))(a1);
  CFAllocatorDeallocate(*MEMORY[0x1E695E480], a1);
  *MEMORY[0x1E69E9840];
}

void sub_1DEA4C800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AAB::AAB(AAB *this, AAB::UpdateCurveStrategy *a2)
{
  *this = &unk_1F599B920;
  *(this + 2) = 1070315492;
  *(this + 3) = 1031954742;
  *(this + 4) = 1070315492;
  *(this + 5) = 0;
  *(this + 6) = 1157234688;
  *(this + 7) = 1133903872;
  *(this + 8) = -1.0;
  *(this + 9) = -1.0;
  *(this + 8) = a2;
  std::mutex::mutex[abi:de200100](this + 9);
}

AABC::ALSFilter *AABC::ALSFilter::ALSFilter(AABC::ALSFilter *this)
{
  AABC::ALSFilter::ALSFilter(this);
  return this;
}

{
  std::vector<float>::vector[abi:de200100](this);
  result = this;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return result;
}

void *std::bitset<3ul>::bitset[abi:de200100](void *a1, char a2)
{
  std::bitset<3ul>::bitset[abi:de200100](a1, a2);
  return a1;
}

{
  std::__bitset<1ul,3ul>::__bitset(a1, a2);
  return a1;
}

void AABC::ALSFilter::~ALSFilter(AABC::ALSFilter *this)
{
  AABC::ALSFilter::~ALSFilter(this);
}

{
  std::vector<float>::~vector[abi:de200100](this);
}

void AAB::~AAB(AAB *this)
{
  *this = &unk_1F599B920;
  if (*(this + 8))
  {
    v1 = *(this + 8);
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }

  std::mutex::~mutex((this + 72));
}

void AABC::~AABC(AABC *this)
{
  v5 = *MEMORY[0x1E69E9840];
  *this = &unk_1F599B890;
  if (_logHandle)
  {
    v2 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v4, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEBUG, "[%x]: ", v4, 8u);
  }

  MEMORY[0x1E69E5920](*(this + 464));
  MEMORY[0x1E69E5920](*(this + 467));
  MEMORY[0x1E69E5920](*(this + 468));
  if (*(this + 485))
  {
    MEMORY[0x1E69E5920](*(this + 485));
    *(this + 485) = 0;
  }

  [*(this + 486) stop];
  [*(this + 486) deregisterNotificationBlockForCaller:?];
  [*(this + 19) stop];
  MEMORY[0x1E69E5920](*(this + 19));
  if (*(this + 500))
  {
    MEMORY[0x1E69E5920](*(this + 500));
  }

  AABC::ALSFilter::~ALSFilter((this + 216));
  AABC::ALSFilter::~ALSFilter((this + 168));
  AAB::~AAB(this);
  *MEMORY[0x1E69E9840];
}

{
  AABC::~AABC(this);
}

{
  AABC::~AABC(this);
  AABC::operator delete(this);
}

void sub_1DEA4D2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AABC::ArmFirstALSSampleTimer(AABC *this)
{
  v9 = *MEMORY[0x1E69E9840];
  __b[5] = this;
  if (!*(this + 150))
  {
    memset(__b, 0, 0x28uLL);
    __b[1] = this;
    if (_logHandle)
    {
      v5 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v5 = inited;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *&v1 = CFAbsoluteTimeGetCurrent();
      __os_log_helper_16_0_1_8_0(v8, v1);
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "ts=%f Arming first sample timeout", v8, 0xCu);
    }

    *(this + 74) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(this + 488));
    if (*(this + 74))
    {
      dispatch_set_context(*(this + 74), this);
      source = *(this + 74);
      v2 = dispatch_time(0, (*(this + 854) * 1000000000.0));
      dispatch_source_set_timer(source, v2, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_set_event_handler_f(*(this + 74), AABC::FirstALSSampleTimeout);
      dispatch_resume(*(this + 74));
    }
  }

  *MEMORY[0x1E69E9840];
}

void AABC::FirstALSSampleTimeout(AABC *this)
{
  v22 = *MEMORY[0x1E69E9840];
  valuePtr[1] = this;
  if (*(this + 47))
  {
    *valuePtr = mach_absolute_time() * *&AABC::_sMachTimebaseFactor;
    v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, valuePtr);
    if (v15)
    {
      CFDictionarySetValue(*(this + 47), @"EventTimestampFirstALSSampleTimeout", v15);
      if (_logHandle)
      {
        v12 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v12 = inited;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v21, valuePtr[0]);
        _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "ts=%f FirstALSSampleTimeout fired", v21, 0xCu);
      }

      CFRelease(v15);
    }
  }

  if (_logHandle)
  {
    v10 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v9 = init_default_corebrightness_log();
    }

    v10 = v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v20, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "[%x]: ", v20, 8u);
  }

  *(this + 434) = 1;
  if (*(this + 435))
  {
    *(this + 433) = 1;
  }

  if (_logHandle)
  {
    v8 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v7 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v7 = init_default_corebrightness_log();
    }

    v8 = v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 433))
    {
      v1 = "YES";
    }

    else
    {
      v1 = "NO";
    }

    __os_log_helper_16_2_2_8_32_8_0(v19, v1, COERCE__INT64(*(this + 854)));
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "TIMEOUT!! - Potentially busted ALS? %s!!! (timeout=%f)\n", v19, 0x16u);
  }

  if (*(this + 74))
  {
    if (!*(this + 150))
    {
      if (*(this + 169))
      {
        if (*(this + 57))
        {
          *(this + 158) = *(*(this + 57) + 52);
        }

        if (*(this + 160) && *(this + 158) < 0.05)
        {
          *(this + 158) = 1045220557;
        }

        *(this + 167) = 2;
        AABC::UpdateALSState(this, 17);
      }

      if (*(this + 126) && (*(this + 435) & 1) == 0)
      {
        *(this + 135) = 1138819072;
        *(this + 136) = 1138819072;
        *(this + 138) = 1138819072;
        *(this + 137) = 1138819072;
        AABC::_UpdateSemanticAmbientLightLevel(this, 0);
        ++*(this + 150);
        v14 = fminf(fmaxf(AABC::IlluminanceToLuminance(this, this + 264, *(this + 135), *(this + 138)), *(this + 180)), *(this + 182));
        if (_logHandle)
        {
          v6 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v5 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v5 = init_default_corebrightness_log();
          }

          v6 = v5;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *&v2 = CFAbsoluteTimeGetCurrent();
          __os_log_helper_16_0_3_8_0_8_0_8_0(v18, v2, COERCE__INT64(*(this + 135)), COERCE__INT64(v14));
          _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_INFO, "ts=%f Timeout waiting for first ALS sample _Esensor_trusted=%0.4f L=%0.4f. Switching to fast mode\n", v18, 0x20u);
        }

        AABC::UpdateDisplayBrightness_Block6(this, 0, 2, 0, v14);
      }
    }

    dispatch_release(*(this + 74));
    *(this + 74) = 0;
  }

  else
  {
    if (_logHandle)
    {
      v4 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v3 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v3 = init_default_corebrightness_log();
      }

      v4 = v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v17, 1);
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "[%x]: timer invalid", v17, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t AABC::open(AABC *this, io_registry_entry_t a2, int a3, void (*a4)(void *, const __CFString *, const void *), void *a5)
{
  v172 = *MEMORY[0x1E69E9840];
  v133 = this;
  v132 = a2;
  v131 = a3;
  v130 = a4;
  v129 = a5;
  if (_logHandle)
  {
    v53 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v53 = inited;
  }

  v128 = v53;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v171, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v128, type, "[%x]: ", v171, 8u);
  }

  v126 = MGGetSInt32Answer();
  *(this + 78) = v126;
  *(this + 47) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(this + 139) = 0;
  *(this + 1160) = 0;
  *(this + 291) = -1.0;
  *(this + 292) = -1.0;
  *(this + 293) = -1.0;
  *(this + 294) = -1.0;
  *(this + 295) = -1.0;
  *(this + 296) = -1.0;
  *(this + 297) = -1.0;
  if (v132)
  {
    if (CBU_IsR2RSupported())
    {
      *(this + 1160) = 1;
    }

    else
    {
      v125 = 0;
      v124 = load_int_from_edt(v132, @"crgb", &v125);
      if ((v124 & 1) != 0 && v125)
      {
        *(this + 1160) = 1;
      }
    }

    v123 = IORegistryEntrySearchCFProperty(v132, "IOService", @"ALSBrightenPdeltaSlow", *MEMORY[0x1E695E480], 3u);
    if (v123)
    {
      v51 = CFGetTypeID(v123);
      if (v51 == CFDataGetTypeID())
      {
        buffer = 0;
        v121 = v123;
        if (CFDataGetLength(v123) == 4)
        {
          v153 = 0;
          v152 = 4;
          v154 = 0;
          v155 = 4;
          v119 = 0;
          v120 = 4;
          v173.location = 0;
          v173.length = 4;
          CFDataGetBytes(v121, v173, &buffer);
          *(this + 954) = buffer / 65536.0;
          if (_logHandle)
          {
            v50 = _logHandle;
          }

          else
          {
            v49 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v50 = v49;
          }

          v118 = v50;
          v117 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_4_0_8_0(v170, 1, COERCE__INT64(*(this + 954)));
            _os_log_debug_impl(&dword_1DE8E5000, v118, v117, "[%x]: _Pthreshold_brighten_slow overriden to %f in ioreg", v170, 0x12u);
          }
        }
      }

      CFRelease(v123);
    }

    v123 = 0;
    v123 = IORegistryEntrySearchCFProperty(v132, "IOService", @"ALSBrightenPdeltaFast", *MEMORY[0x1E695E480], 3u);
    if (v123)
    {
      v48 = CFGetTypeID(v123);
      if (v48 == CFDataGetTypeID())
      {
        v116 = 0;
        v115 = v123;
        if (CFDataGetLength(v123) == 4)
        {
          v149 = 0;
          v148 = 4;
          v150 = 0;
          v151 = 4;
          v113 = 0;
          v114 = 4;
          v174.location = 0;
          v174.length = 4;
          CFDataGetBytes(v115, v174, &v116);
          *(this + 953) = v116 / 65536.0;
          if (_logHandle)
          {
            v47 = _logHandle;
          }

          else
          {
            v46 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v47 = v46;
          }

          v112 = v47;
          v111 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_4_0_8_0(v169, 1, COERCE__INT64(*(this + 953)));
            _os_log_debug_impl(&dword_1DE8E5000, v112, v111, "[%x]: _Pthreshold_brighten_fast overriden to %f in ioreg", v169, 0x12u);
          }
        }
      }

      CFRelease(v123);
    }

    v123 = 0;
    v123 = IORegistryEntrySearchCFProperty(v132, "IOService", @"ALSDimPdeltaSlow", *MEMORY[0x1E695E480], 3u);
    if (v123)
    {
      v45 = CFGetTypeID(v123);
      if (v45 == CFDataGetTypeID())
      {
        v110 = 0;
        v109 = v123;
        if (CFDataGetLength(v123) == 4)
        {
          v145 = 0;
          v144 = 4;
          v146 = 0;
          v147 = 4;
          v107 = 0;
          v108 = 4;
          v175.location = 0;
          v175.length = 4;
          CFDataGetBytes(v109, v175, &v110);
          *(this + 951) = v110 / 65536.0;
          if (_logHandle)
          {
            v44 = _logHandle;
          }

          else
          {
            v43 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v44 = v43;
          }

          v106 = v44;
          v105 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_4_0_8_0(v168, 1, COERCE__INT64(*(this + 951)));
            _os_log_debug_impl(&dword_1DE8E5000, v106, v105, "[%x]: _Pthreshold_dim_slow overriden to %f in ioreg", v168, 0x12u);
          }
        }
      }

      CFRelease(v123);
    }

    v123 = 0;
    v123 = IORegistryEntrySearchCFProperty(v132, "IOService", @"ALSRampLuxThreshold", *MEMORY[0x1E695E480], 3u);
    if (v123)
    {
      v42 = CFGetTypeID(v123);
      if (v42 == CFDataGetTypeID())
      {
        v104 = 0;
        v103 = v123;
        if (CFDataGetLength(v123) == 4)
        {
          v141 = 0;
          v140 = 4;
          v142 = 0;
          v143 = 4;
          v101 = 0;
          v102 = 4;
          v176.location = 0;
          v176.length = 4;
          CFDataGetBytes(v103, v176, &v104);
          *(this + 956) = v104;
          if (_logHandle)
          {
            v41 = _logHandle;
          }

          else
          {
            v40 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v41 = v40;
          }

          v100 = v41;
          v99 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_4_0_8_0(v167, 1, COERCE__INT64(*(this + 956)));
            _os_log_debug_impl(&dword_1DE8E5000, v100, v99, "[%x]: _AbsoluteLuxThreshold overriden to %f in ioreg", v167, 0x12u);
          }
        }
      }

      CFRelease(v123);
    }

    v123 = 0;
    v98 = 1;
    v123 = IORegistryEntrySearchCFProperty(v132, "IOService", @"AABNoDimming", *MEMORY[0x1E695E480], 3u);
    if (v123)
    {
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v123) && CFDataGetLength(v123) > 0)
      {
        v98 = *CFDataGetBytePtr(v123) == 0;
        if (_logHandle)
        {
          v38 = _logHandle;
        }

        else
        {
          v37 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v38 = v37;
        }

        v97 = v38;
        v96 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_1_4_0(v166, v98);
          _os_log_impl(&dword_1DE8E5000, v97, v96, "Full dimming overridden to %d in ioreg", v166, 8u);
        }
      }

      CFRelease(v123);
    }

    v123 = 0;
    v95 = 3;
    v123 = IORegistryEntrySearchCFProperty(v132, "IOService", @"AABDimPolicy", *MEMORY[0x1E695E480], 3u);
    if (v123)
    {
      v36 = CFDataGetTypeID();
      if (v36 == CFGetTypeID(v123) && CFDataGetLength(v123) > 0)
      {
        v95 = *CFDataGetBytePtr(v123);
        if (_logHandle)
        {
          v35 = _logHandle;
        }

        else
        {
          v34 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v35 = v34;
        }

        v94 = v35;
        v93 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_4_0(v165, 4, v98);
          _os_log_debug_impl(&dword_1DE8E5000, v94, v93, "[%x]: Dim policy overridden to %d", v165, 0xEu);
        }
      }

      CFRelease(v123);
    }

    v123 = 0;
    *(this + 136) = 0;
    v123 = IORegistryEntrySearchCFProperty(v132, "IOService", @"is-accessory", *MEMORY[0x1E695E480], 3u);
    if (v123)
    {
      v33 = CFDataGetTypeID();
      if (v33 == CFGetTypeID(v123) && CFDataGetLength(v123) > 0)
      {
        *(this + 136) = *CFDataGetBytePtr(v123) != 0;
        if (_logHandle)
        {
          v32 = _logHandle;
        }

        else
        {
          v31 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v32 = v31;
        }

        v92 = v32;
        v91 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_4_0(v164, 16, *(this + 136) & 1);
          _os_log_debug_impl(&dword_1DE8E5000, v92, v91, "[%x]: isAccessory ? %d\n", v164, 0xEu);
        }
      }

      CFRelease(v123);
    }

    v123 = 0;
    *(this + 860) = 1;
    if (v98)
    {
      if (_logHandle)
      {
        v30 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v29 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v29 = init_default_corebrightness_log();
        }

        v30 = v29;
      }

      v90 = v30;
      v89 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_4_0_4_0(v163, 4, v95);
        _os_log_debug_impl(&dword_1DE8E5000, v90, v89, "[%x]: Turning on dimming with policy %d", v163, 0xEu);
      }

      if (v95 < 8)
      {
        *(this + 860) = v95;
      }
    }

    else
    {
      *(this + 860) = 0;
    }

    *(this + 861) = *(this + 860);
    v123 = IORegistryEntrySearchCFProperty(v132, "IOService", @"min-curve-version", *MEMORY[0x1E695E480], 3u);
    if (v123)
    {
      v28 = CFGetTypeID(v123);
      if (v28 == CFDataGetTypeID())
      {
        v88 = 0;
        v87 = v123;
        if (CFDataGetLength(v123) == 4)
        {
          v137 = 0;
          v136 = 4;
          v138 = 0;
          v139 = 4;
          v85 = 0;
          v86 = 4;
          v177.location = 0;
          v177.length = 4;
          CFDataGetBytes(v87, v177, &v88);
          if (v88 > 5)
          {
            *(this + 184) = v88;
            if (_logHandle)
            {
              v27 = _logHandle;
            }

            else
            {
              v26 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v27 = v26;
            }

            v84 = v27;
            v83 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_1_4_0(v162, *(this + 184));
              _os_log_debug_impl(&dword_1DE8E5000, v84, v83, "Min curve version set to %d", v162, 8u);
            }
          }
        }
      }

      CFRelease(v123);
    }

    v123 = 0;
    v82 = 0;
    if ((load_int_from_edt(v132, @"supports-float-lux", &v82) & 1) == 0)
    {
      v82 = 0;
    }

    *(this + 3756) = v82 != 0;
    if (_logHandle)
    {
      v25 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v24 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v24 = init_default_corebrightness_log();
      }

      v25 = v24;
    }

    v81 = v25;
    v80 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v161, *(this + 3756) & 1);
      _os_log_debug_impl(&dword_1DE8E5000, v81, v80, "supports-float-lux=%d", v161, 8u);
    }
  }

  *(this + 91) = v131;
  *(this + 41) = -1;
  v79 = MGGetSInt32Answer();
  *(this + 41) = v79;
  if (*(this + 41) <= 0)
  {
    v72 = MGGetSInt32Answer();
    *(this + 41) = v72;
    if (_logHandle)
    {
      v19 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v18 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v18 = init_default_corebrightness_log();
      }

      v19 = v18;
    }

    oslog = v19;
    v70 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v158, *(this + 41));
      _os_log_debug_impl(&dword_1DE8E5000, oslog, v70, "Cover color: 0x%llX\n", v158, 0xCu);
    }

    if (*(this + 41) != -1)
    {
      v68 = MGGetSInt32Answer();
      v69 = v68;
      if (_logHandle)
      {
        v17 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v16 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v16 = init_default_corebrightness_log();
        }

        v17 = v16;
      }

      v67 = v17;
      v66 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v157, v69);
        _os_log_debug_impl(&dword_1DE8E5000, v67, v66, "Enclosure color: 0x%X\n", v157, 8u);
      }

      if (v69 != -1)
      {
        *(this + 41) |= v69 << 32;
      }
    }
  }

  else
  {
    if (_logHandle)
    {
      v23 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v22 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v22 = init_default_corebrightness_log();
      }

      v23 = v22;
    }

    v78 = v23;
    v77 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v160, *(this + 41));
      _os_log_debug_impl(&dword_1DE8E5000, v78, v77, "Cover color (new): 0x%llX\n", v160, 0xCu);
    }

    v75 = MGGetSInt32Answer();
    v76 = v75;
    if (_logHandle)
    {
      v21 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v20 = init_default_corebrightness_log();
      }

      v21 = v20;
    }

    v74 = v21;
    v73 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v159, v76);
      _os_log_debug_impl(&dword_1DE8E5000, v74, v73, "Enclosure color (new): 0x%X\n", v159, 8u);
    }

    if (v76 != -1)
    {
      *(this + 41) |= v76 << 32;
    }
  }

  v5 = +[CBAnalyticsScheduler sharedInstance];
  v60 = MEMORY[0x1E69E9820];
  v61 = -1073741824;
  v62 = 0;
  v63 = ___ZN4AABC4openEjiPFvPvPK10__CFStringPKvES0__block_invoke;
  v64 = &__block_descriptor_40_e5_v8__0l;
  v65 = this;
  *(this + 466) = [(CBAnalyticsScheduler *)v5 registerHandler:?];
  *(this + 123) = 0;
  if (*(this + 92))
  {
    v135 = &AABC::open(unsigned int,int,void (*)(void *,__CFString const*,void const*),void *)::pred;
    v134 = &__block_literal_global_189;
    if (AABC::open(unsigned int,int,void (*)(void *,__CFString const*,void const*),void *)::pred != -1)
    {
      dispatch_once(v135, v134);
    }

    v15 = MEMORY[0x1E695E480];
    keyCallBacks = MEMORY[0x1E695E9D8];
    *(this + 52) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    valueCallBacks = MEMORY[0x1E695E9E8];
    *(this + 53) = CFDictionaryCreateMutable(*v15, 0, keyCallBacks, MEMORY[0x1E695E9E8]);
    *(this + 43) = v130;
    *(this + 44) = v129;
    value = 0;
    *(this + 48) = CFDictionaryCreateMutable(*v15, 0, keyCallBacks, valueCallBacks);
    value = CFNumberCreate(*v15, kCFNumberFloatType, this + 3460);
    if (value)
    {
      CFDictionarySetValue(*(this + 48), @"ALSMaxDimDuration", value);
      CFRelease(value);
    }

    value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 3456);
    if (value)
    {
      CFDictionarySetValue(*(this + 48), @"ALSMaxBrightenDuration", value);
      CFRelease(value);
    }

    value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 3452);
    if (value)
    {
      CFDictionarySetValue(*(this + 48), @"ALSSpikeFilterDuration", value);
      CFRelease(value);
    }

    value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, this + 3440);
    if (value)
    {
      CFDictionarySetValue(*(this + 48), @"ALSDimPolicy", value);
      CFRelease(value);
    }

    theDict = *(this + 48);
    if (*(this + 862))
    {
      CFDictionarySetValue(theDict, @"ALSLockScreenAutoBrightness", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      CFDictionarySetValue(theDict, @"ALSLockScreenAutoBrightness", *MEMORY[0x1E695E4C0]);
    }

    valuePtr = 1;
    value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (value)
    {
      CFDictionarySetValue(*(this + 48), @"ALSAlgorithm", value);
      CFRelease(value);
    }

    v57 = 1036831949;
    value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v57);
    if (value)
    {
      CFDictionarySetValue(*(this + 47), @"ALSIntPeriod", value);
      CFRelease(value);
    }

    cf = IORegistryEntryCreateCFProperty(v132, @"AutoRateControl", *MEMORY[0x1E695E480], 0);
    if (cf)
    {
      *(this + 162) = GetCFBooleanValue(cf);
      CFRelease(cf);
    }

    v11 = *(this + 47);
    if (*(this + 162))
    {
      CFDictionarySetValue(v11, @"BoostPriority", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      CFDictionarySetValue(v11, @"BoostPriority", *MEMORY[0x1E695E4C0]);
    }

    CFDictionarySetValue(*(this + 48), @"AAPEnabled", *MEMORY[0x1E695E4D0]);
    OutlierRemovalDictionary = AABC::createOutlierRemovalDictionary(this, this + 3376);
    CFDictionarySetValue(*(this + 47), @"OutlierRemoval", OutlierRemovalDictionary);
    CFRelease(OutlierRemovalDictionary);
    *(this + 854) = 0.25;
    if (*(this + 136))
    {
      *(this + 855) = 2.0;
    }

    else
    {
      v6 = 4.0;
      if (!*(this + 162))
      {
        v6 = 30.0;
      }

      *(this + 855) = v6;
    }

    *(this + 3480) = 0;
    *(this + 3481) = 0;
    *(this + 871) = 0;
    *(this + 872) = 0;
    *(this + 873) = 0;
    *(this + 874) = 1.0;
    *(this + 875) = 1.0;
    *(this + 3596) = 0;
    *(this + 3597) = 0;
    *(this + 900) = 0;
    *(this + 901) = 0;
    *(this + 902) = 0;
    *(this + 903) = 1061997773;
    *(this + 904) = 1.0;
  }

  AABC::ParseCustomAABCurvesFromEDT(this, v132);
  if (_logHandle)
  {
    v10 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v9 = init_default_corebrightness_log();
    }

    v10 = v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (*(this + 92))
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    __os_log_helper_16_2_1_8_32(v156, v7);
    _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_INFO, "ambient adaptive brightness plugin _plugInEnabled=%s", v156, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return v132;
}

void ___ZN4AABC4openEjiPFvPvPK10__CFStringPKvES0__block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v1 = *(a1 + 32);
  v2 = *(v1 + 3904);
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = ___ZN4AABC4openEjiPFvPvPK10__CFStringPKvES0__block_invoke_2;
  v7 = &__block_descriptor_40_e5_v8__0l;
  v8 = v1;
  dispatch_async(v2, &block);
}

uint64_t ___ZN4AABC4openEjiPFvPvPK10__CFStringPKvES0__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(v2 + 3712) submit];
  [CBAnalytics curveLevel:*(v2 + 3412)];
  v3 = 0;
  if (*(v2 + 504))
  {
    v3 = *(v2 + 512) == 0;
  }

  [CBAnalytics autoBrightnessEnabled:v3 byUser:0];
  [*(v2 + 3736) submit];
  result = [*(v2 + 3744) submit];
  if (*(v2 + 161))
  {
    result = [CBAnalytics aliasingMitigationsCount:*(v2 + 3752)];
    *(v2 + 3752) = 0;
  }

  return result;
}

double ___ZN4AABC4openEjiPFvPvPK10__CFStringPKvES0__block_invoke_3(uint64_t a1)
{
  v6 = a1;
  v5 = a1;
  mach_timebase_info(&info);
  LODWORD(v1) = info.numer;
  LODWORD(v2) = info.denom;
  result = v1 / v2 * 0.000000001;
  AABC::_sMachTimebaseFactor = *&result;
  return result;
}

CFDictionaryRef AABC::createOutlierRemovalDictionary(uint64_t a1, _BYTE *a2)
{
  __dst[5] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E867CEE8, 0x28uLL);
  memset(__b, 0, sizeof(__b));
  if (*a2)
  {
    v4 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = *MEMORY[0x1E695E4C0];
  }

  __b[0] = v4;
  v3 = MEMORY[0x1E695E480];
  __b[1] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, a2 + 4);
  __b[2] = CFNumberCreate(*v3, kCFNumberDoubleType, a2 + 8);
  __b[3] = CFNumberCreate(*v3, kCFNumberDoubleType, a2 + 24);
  __b[4] = CFNumberCreate(*v3, kCFNumberDoubleType, a2 + 16);
  v5 = CFDictionaryCreate(*v3, __dst, __b, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(__b[4]);
  CFRelease(__b[3]);
  CFRelease(__b[2]);
  CFRelease(__b[1]);
  *MEMORY[0x1E69E9840];
  return v5;
}

void AABC::ParseCustomAABCurvesFromEDT(AABC *this, io_registry_entry_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = this;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (load_int_from_edt(a2, @"support-custom-curve", &v6))
  {
    if (v6)
    {
      v7 = load_float_array_from_edt(v9, @"low-curve-lux-points", &v8);
      if (v8)
      {
        if (v7 == 4)
        {
          memcpy(this + 1564, v8, 0x10uLL);
          free(v8);
          v8 = 0;
          v7 = load_float_array_from_edt(v9, @"low-curve-nits-points", &v8);
          if (v8)
          {
            if (v7 == 4)
            {
              memcpy(this + 1644, v8, 0x10uLL);
              free(v8);
              v8 = 0;
              *(this + 431) = 4;
              v7 = load_float_array_from_edt(v9, @"med-curve-lux-points", &v8);
              if (v8)
              {
                if (v7 == 4)
                {
                  memcpy(this + 1728, v8, 0x10uLL);
                  free(v8);
                  v8 = 0;
                  v7 = load_float_array_from_edt(v9, @"med-curve-nits-points", &v8);
                  if (v8)
                  {
                    if (v7 == 4)
                    {
                      memcpy(this + 1808, v8, 0x10uLL);
                      free(v8);
                      v8 = 0;
                      *(this + 472) = 4;
                      v7 = load_float_array_from_edt(v9, @"high-curve-lux-points", &v8);
                      if (v8)
                      {
                        if (v7 == 4)
                        {
                          memcpy(this + 1892, v8, 0x10uLL);
                          free(v8);
                          v8 = 0;
                          v7 = load_float_array_from_edt(v9, @"high-curve-nits-points", &v8);
                          if (v8)
                          {
                            if (v7 == 4)
                            {
                              memcpy(this + 1972, v8, 0x10uLL);
                              free(v8);
                              v8 = 0;
                              *(this + 513) = 4;
                              *(this + 1560) = 1;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (_logHandle)
  {
    v4 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v4 = inited;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 1560))
    {
      v2 = "success";
    }

    else
    {
      v2 = "failure";
    }

    __os_log_helper_16_2_1_8_32(v11, v2);
    _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Parsing AAB Curve from EDT: %s", v11, 0xCu);
  }

  if (v8)
  {
    free(v8);
    v8 = 0;
  }

  *MEMORY[0x1E69E9840];
}

void AABC::close(AABC *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v3 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v3 = inited;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v5, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "[%x]: ", v5, 8u);
  }

  AABC::CancelFirstSampleTimeout(this);
  [+[CBAnalyticsScheduler sharedInstance](CBAnalyticsScheduler removeHandler:"removeHandler:", *(this + 466)];
  if (*(this + 47))
  {
    CFRelease(*(this + 47));
    *(this + 47) = 0;
  }

  if (*(this + 474))
  {
    v1 = *(this + 474);
    if (v1)
    {
      MEMORY[0x1E12C4020](v1, 0x1000C4052888210);
    }

    *(this + 474) = 0;
  }

  if (*(this + 52))
  {
    CFRelease(*(this + 52));
    *(this + 52) = 0;
  }

  if (*(this + 53))
  {
    CFRelease(*(this + 53));
    *(this + 53) = 0;
  }

  *MEMORY[0x1E69E9840];
}

void AABC::registerDisplay(AABC *this, __Display *a2)
{
  v196 = *MEMORY[0x1E69E9840];
  v170 = this;
  v169 = a2;
  if (_logHandle)
  {
    v77 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v77 = inited;
  }

  oslog = v77;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v195, 4);
    _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "[%x]: ", v195, 8u);
  }

  if (v169 && !*(this + 50))
  {
    *(this + 50) = v169;
    number = 0;
    number = DisplayGetProperty(*(this + 50), @"DisplayProductLuminanceMax");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, this + 716);
    }

    number = DisplayGetProperty(*(this + 50), @"plt-logic-version");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberIntType, this + 3840);
    }

    number = DisplayGetProperty(*(this + 50), @"DisplayProductLuminanceMid");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, this + 712);
    }

    number = DisplayGetProperty(*(this + 50), @"DisplayProductLuminanceMin");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, this + 708);
    }

    number = DisplayGetProperty(*(this + 50), @"DisplayPanelLuminanceMax");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, this + 728);
    }

    number = DisplayGetProperty(*(this + 50), @"DisplayPanelLuminanceMid");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, this + 724);
    }

    number = DisplayGetProperty(*(this + 50), @"DisplayPanelLuminanceMin");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, this + 720);
    }

    number = DisplayGetProperty(*(this + 50), @"CBAODMinNits");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, this + 732);
    }

    BOOLean = DisplayGetProperty(*(this + 50), @"PreStrobeDropALSSamples");
    if (BOOLean)
    {
      *(this + 496) = CFBooleanGetValue(BOOLean) != 0;
    }

    number = DisplayGetProperty(*(this + 50), @"DisplayTypeA");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberIntType, this + 2884);
    }

    number = DisplayGetProperty(*(this + 50), @"DefaultCurveVersion");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberIntType, this + 2888);
    }

    number = DisplayGetProperty(*(this + 50), @"RaiseHighCurve");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberIntType, this + 2892);
    }

    v164 = 0;
    Property = DisplayGetProperty(*(this + 50), @"EDMSupported");
    if (Property)
    {
      v75 = 0;
      if (CFBooleanGetValue(Property))
      {
        v75 = +[CBExtendedDisplayMitigation isSupported];
      }

      v164 = v75;
    }

    if (v164)
    {
      v74 = objc_alloc_init(CBExtendedDisplayMitigation);
    }

    else
    {
      v74 = 0;
    }

    *(this + 487) = v74;
    if (_logHandle)
    {
      v73 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v72 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v72 = init_default_corebrightness_log();
      }

      v73 = v72;
    }

    v162 = v73;
    v161 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v194, v164);
      _os_log_debug_impl(&dword_1DE8E5000, v162, v161, "Extended display mitigation supported: %d", v194, 8u);
    }

    theDict = DisplayGetProperty(*(this + 50), @"AABConstraints");
    if (theDict)
    {
      number = CFDictionaryGetValue(theDict, @"EmaxAlgo");
      if (number)
      {
        CFNumberGetValue(number, kCFNumberFloatType, this + 1164);
      }

      number = CFDictionaryGetValue(theDict, @"LmaxAlgo");
      if (number)
      {
        CFNumberGetValue(number, kCFNumberFloatType, this + 1168);
      }

      number = CFDictionaryGetValue(theDict, @"E2");
      if (number)
      {
        CFNumberGetValue(number, kCFNumberFloatType, this + 1180);
      }

      number = CFDictionaryGetValue(theDict, @"L2");
      if (number)
      {
        CFNumberGetValue(number, kCFNumberFloatType, this + 1184);
      }

      number = CFDictionaryGetValue(theDict, @"E0b");
      if (number)
      {
        CFNumberGetValue(number, kCFNumberFloatType, this + 1172);
      }

      number = CFDictionaryGetValue(theDict, @"L0b");
      if (number)
      {
        CFNumberGetValue(number, kCFNumberFloatType, this + 1176);
      }

      number = CFDictionaryGetValue(theDict, @"EmaxThreshold");
      if (number)
      {
        CFNumberGetValue(number, kCFNumberFloatType, this + 1188);
      }
    }

    number = DisplayGetProperty(*(this + 50), @"DisplayBrightnessFactor");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, this + 408);
    }

    if (_logHandle)
    {
      v71 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v70 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v70 = init_default_corebrightness_log();
      }

      v71 = v70;
    }

    v159 = v71;
    v158 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v193, COERCE__INT64(*(this + 102)));
      _os_log_impl(&dword_1DE8E5000, v159, v158, "Initial factor %f", v193, 0xCu);
    }

    *(this + 4) = (100.0 - *(this + 177)) / 30.0;
    LogicalBrightness = DisplayGetLogicalBrightness(*(this + 50));
    *(this + 155) = LogicalBrightness;
    *(this + 154) = LogicalBrightness;
    *(this + 857) = DisplayGetLogicalBrightness(*(this + 50));
    *(this + 964) = ((*(this + 179) - *(this + 177)) / *(this + 3)) / 2.0;
    if (*(this + 297) <= 0.0)
    {
      if (*(this + 291) > 0.0)
      {
        *(this + 964) = *(this + 291);
      }
    }

    else
    {
      *(this + 964) = *(this + 297);
    }

    if (*(this + 294) > 0.0)
    {
      *(this + 4) = (*(this + 294) - *(this + 177)) / 30.0;
    }

    if (_logHandle)
    {
      v68 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v67 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v67 = init_default_corebrightness_log();
      }

      v68 = v67;
    }

    v157 = v68;
    v156 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v192, COERCE__INT64(*(this + 964)));
      _os_log_impl(&dword_1DE8E5000, v157, v156, "_Emax_logical: %0.4f", v192, 0xCu);
    }

    v155 = 0;
    v154 = 0;
    *(this + 902) = *(this + 964);
    *(this + 868) = *(this + 181);
    *(this + 869) = *(this + 181);
    *(this + 301) = 0;
    *(this + 300) = 0;
    *(this + 299) = 0;
    *(this + 298) = 0;
    v2 = *(this + 182);
    *(this + 305) = v2;
    *(this + 304) = v2;
    *(this + 303) = v2;
    *(this + 302) = v2;
    *(this + 153) = 0x40AC200000000000;
    *&v153[1] = 0;
    CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    *v153 = CFPreferencesGetAppBooleanValue(@"BrightnessRestrictionsFromPreferences", @"com.apple.CoreBrightness", 0) != 0;
    *(this + 444) = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"/var/mobile/Library/Preferences/com.apple.demo-settings", 0) != 0;
    v66 = *(this + 50);
    if (*(this + 444))
    {
      DisplaySetProperty(v66, @"CBStoreDemoModeIsPresent", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      DisplaySetProperty(v66, @"CBStoreDemoModeIsPresent", *MEMORY[0x1E695E4C0]);
    }

    if (*(this + 444) & 1) != 0 || (v153[0])
    {
      *&v153[1] = CFPreferencesCopyValue(@"BrightnessRestrictions", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      if (*&v153[1] && (v65 = CFGetTypeID(*&v153[1]), v65 == CFDictionaryGetTypeID()))
      {
        v155 = *&v153[1];
        v154 = 1;
        if (_logHandle)
        {
          v64 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v63 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v63 = init_default_corebrightness_log();
          }

          v64 = v63;
        }

        v152 = v64;
        v151 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          if (*(this + 444))
          {
            v3 = "YES";
          }

          else
          {
            v3 = "NO";
          }

          __os_log_helper_16_2_1_8_32(v191, v3);
          _os_log_impl(&dword_1DE8E5000, v152, v151, "BrightnessRestrictions were loaded from CFPreferences (StoreDemoMode = %s)", v191, 0xCu);
        }
      }

      else
      {
        if (_logHandle)
        {
          v62 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v61 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v61 = init_default_corebrightness_log();
          }

          v62 = v61;
        }

        v150 = v62;
        v149 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          if (*(this + 444))
          {
            v4 = "YES";
          }

          else
          {
            v4 = "NO";
          }

          __os_log_helper_16_2_1_8_32(v190, v4);
          _os_log_error_impl(&dword_1DE8E5000, v150, v149, "Failed to load BrightnessRestrictions from CFPreferences (StoreDemoMode = %s)", v190, 0xCu);
        }
      }
    }

    v148 = CFPreferencesCopyValue(@"DisplayOffTimeToRevertAABCurve", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v148 floatValue];
      *(this + 153) = v5;
      if (_logHandle)
      {
        v60 = _logHandle;
      }

      else
      {
        v59 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v60 = v59;
      }

      v147 = v60;
      v146 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        [v148 floatValue];
        __os_log_helper_16_0_1_8_0(v189, COERCE__INT64(v6));
        _os_log_impl(&dword_1DE8E5000, v147, v146, "Display off time to revert AAB curve were overriden to %f seconds.", v189, 0xCu);
      }
    }

    MEMORY[0x1E69E5920](v148);
    if (!v155)
    {
      v155 = DisplayGetProperty(*(this + 50), @"BrightnessRestrictions");
      if (v155)
      {
        v145 = CFDictionaryGetValue(v155, @"multi_point");
        if (v145)
        {
          v58 = CFGetTypeID(v145);
          if (v58 == CFNumberGetTypeID())
          {
            v154 = CFBooleanGetValue(v145) != 0;
          }
        }
      }
    }

    if (v154)
    {
      v144 = 0;
      v143 = 0;
      v142 = 0;
      v141 = 0;
      if (v155)
      {
        v140 = 0;
        v139 = 6;
        *&idx[1] = CFDictionaryGetValue(v155, @"min_thresholds");
        if (*&idx[1])
        {
          v57 = CFGetTypeID(*&idx[1]);
          if (v57 == CFArrayGetTypeID() && CFArrayGetCount(*&idx[1]) == v139)
          {
            for (idx[0] = 0; idx[0] < v139; ++idx[0])
            {
              *&v137[1] = CFArrayGetValueAtIndex(*&idx[1], idx[0]);
              if (*&v137[1])
              {
                TypeID = CFNumberGetTypeID();
                if (TypeID == CFGetTypeID(*&v137[1]))
                {
                  CFNumberGetValue(*&v137[1], kCFNumberFloatType, this + 4 * idx[0] + 3500);
                  ++v140;
                }
              }
            }

            if (v140 == v139)
            {
              v142 = 1;
            }
          }
        }

        v140 = 0;
        v139 = 6;
        *&idx[1] = CFDictionaryGetValue(v155, @"min_factors");
        if (*&idx[1])
        {
          v55 = CFGetTypeID(*&idx[1]);
          if (v55 == CFArrayGetTypeID() && CFArrayGetCount(*&idx[1]) == v139)
          {
            for (v137[0] = 0; v137[0] < v139; ++v137[0])
            {
              *&v136[1] = CFArrayGetValueAtIndex(*&idx[1], v137[0]);
              if (*&v136[1])
              {
                v54 = CFNumberGetTypeID();
                if (v54 == CFGetTypeID(*&v136[1]))
                {
                  CFNumberGetValue(*&v136[1], kCFNumberFloatType, this + 4 * v137[0] + 3524);
                  ++v140;
                }
              }
            }

            if (v140 == v139)
            {
              v141 = 1;
            }
          }
        }

        if (v142 & 1) != 0 && (v141)
        {
          v144 = 1;
        }

        v142 = 0;
        v141 = 0;
        v140 = 0;
        v139 = 6;
        *&idx[1] = CFDictionaryGetValue(v155, @"max_thresholds");
        if (*&idx[1])
        {
          v53 = CFGetTypeID(*&idx[1]);
          if (v53 == CFArrayGetTypeID() && CFArrayGetCount(*&idx[1]) == v139)
          {
            for (v136[0] = 0; v136[0] < v139; ++v136[0])
            {
              *&v135[1] = CFArrayGetValueAtIndex(*&idx[1], v136[0]);
              if (*&v135[1])
              {
                v52 = CFNumberGetTypeID();
                if (v52 == CFGetTypeID(*&v135[1]))
                {
                  CFNumberGetValue(*&v135[1], kCFNumberFloatType, this + 4 * v136[0] + 3616);
                  ++v140;
                }
              }
            }

            if (v140 == v139)
            {
              v142 = 1;
            }
          }
        }

        v140 = 0;
        v139 = 6;
        *&idx[1] = CFDictionaryGetValue(v155, @"max_factors");
        if (*&idx[1])
        {
          v51 = CFGetTypeID(*&idx[1]);
          if (v51 == CFArrayGetTypeID() && CFArrayGetCount(*&idx[1]) == v139)
          {
            for (v135[0] = 0; v135[0] < v139; ++v135[0])
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*&idx[1], v135[0]);
              if (ValueAtIndex)
              {
                v50 = CFNumberGetTypeID();
                if (v50 == CFGetTypeID(ValueAtIndex))
                {
                  CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, this + 4 * v135[0] + 3640);
                  ++v140;
                }
              }
            }

            if (v140 == v139)
            {
              v141 = 1;
            }
          }
        }

        if (v142 & 1) != 0 && (v141)
        {
          v143 = 1;
        }

        if (v144)
        {
          *(this + 3480) = 1;
          *(this + 3481) = 1;
          *(this + 871) = 2143289344;
          *(this + 872) = 2143289344;
          *(this + 873) = 2.5;
          *(this + 874) = 5.0;
          memcpy(this + 3548, this + 3500, 0x30uLL);
          v133 = 1.0;
          v132 = 6;
          if (*(this + 444))
          {
            v133 = *(this + 893);
          }

          for (i = 0; i < v132; ++i)
          {
            *(this + i + 893) = v133;
          }
        }

        else
        {
          *(this + 3480) = 0;
        }

        if (v143)
        {
          *(this + 3596) = 1;
          *(this + 3597) = 1;
          *(this + 900) = 2143289344;
          *(this + 901) = 2143289344;
          *(this + 902) = 2.5;
          *(this + 903) = 5.0;
          memcpy(this + 3664, this + 3616, 0x30uLL);
          valuePtr = 1.0;
          v129 = 6;
          *&idx[1] = CFDictionaryGetValue(v155, @"max_factor_aab_off");
          if (*(this + 444))
          {
            valuePtr = *(this + v129 + 921);
          }

          else if (*&idx[1])
          {
            v49 = CFGetTypeID(*&idx[1]);
            if (v49 == CFNumberGetTypeID())
            {
              CFNumberGetValue(*&idx[1], kCFNumberFloatType, &valuePtr);
              if (_logHandle)
              {
                v48 = _logHandle;
              }

              else
              {
                v47 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                v48 = v47;
              }

              v128 = v48;
              v127 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_0_1_8_0(v188, COERCE__INT64(valuePtr));
                _os_log_impl(&dword_1DE8E5000, v128, v127, "MAX - FACTOR AAB OFF %f", v188, 0xCu);
              }
            }
          }

          for (j = 0; j < v129; ++j)
          {
            *(this + j + 922) = valuePtr;
          }
        }

        else
        {
          *(this + 3596) = 0;
        }

        *&idx[1] = CFDictionaryGetValue(v155, @"max_rise_time_fast_threshold");
        if (*&idx[1])
        {
          v46 = CFGetTypeID(*&idx[1]);
          if (v46 == CFNumberGetTypeID())
          {
            CFNumberGetValue(*&idx[1], kCFNumberFloatType, this + 3600);
            if (_logHandle)
            {
              v45 = _logHandle;
            }

            else
            {
              v44 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v45 = v44;
            }

            v125 = v45;
            v124 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v187, COERCE__INT64(*(this + 900)));
              _os_log_impl(&dword_1DE8E5000, v125, v124, "MAX - RISE TIME FAST THRESHOLD %f", v187, 0xCu);
            }
          }
        }

        *&idx[1] = CFDictionaryGetValue(v155, @"max_rise_time_fast");
        if (*&idx[1])
        {
          v43 = CFGetTypeID(*&idx[1]);
          if (v43 == CFNumberGetTypeID())
          {
            CFNumberGetValue(*&idx[1], kCFNumberFloatType, this + 3604);
            if (_logHandle)
            {
              v42 = _logHandle;
            }

            else
            {
              v41 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v42 = v41;
            }

            v123 = v42;
            v122 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v186, COERCE__INT64(*(this + 901)));
              _os_log_impl(&dword_1DE8E5000, v123, v122, "MAX - RISE TIME FAST %f s", v186, 0xCu);
            }
          }
        }

        *&idx[1] = CFDictionaryGetValue(v155, @"max_rise_time");
        if (*&idx[1])
        {
          v40 = CFGetTypeID(*&idx[1]);
          if (v40 == CFNumberGetTypeID())
          {
            CFNumberGetValue(*&idx[1], kCFNumberFloatType, this + 3608);
            if (_logHandle)
            {
              v39 = _logHandle;
            }

            else
            {
              v38 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v39 = v38;
            }

            v121 = v39;
            v120 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v185, COERCE__INT64(*(this + 902)));
              _os_log_impl(&dword_1DE8E5000, v121, v120, "MAX - RISE TIME %f s", v185, 0xCu);
            }
          }
        }

        *&idx[1] = CFDictionaryGetValue(v155, @"max_fall_time");
        if (*&idx[1])
        {
          v37 = CFGetTypeID(*&idx[1]);
          if (v37 == CFNumberGetTypeID())
          {
            CFNumberGetValue(*&idx[1], kCFNumberFloatType, this + 3612);
            if (_logHandle)
            {
              v36 = _logHandle;
            }

            else
            {
              v35 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v36 = v35;
            }

            v119 = v36;
            v118 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v184, COERCE__INT64(*(this + 903)));
              _os_log_impl(&dword_1DE8E5000, v119, v118, "MAX - FALL TIME %f s", v184, 0xCu);
            }
          }
        }

        *&idx[1] = CFDictionaryGetValue(v155, @"min_rise_time");
        if (*&idx[1])
        {
          v34 = CFGetTypeID(*&idx[1]);
          if (v34 == CFNumberGetTypeID())
          {
            CFNumberGetValue(*&idx[1], kCFNumberFloatType, this + 3492);
            if (_logHandle)
            {
              v33 = _logHandle;
            }

            else
            {
              v32 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v33 = v32;
            }

            v117 = v33;
            v116 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v183, COERCE__INT64(*(this + 873)));
              _os_log_impl(&dword_1DE8E5000, v117, v116, "MIN - RISE TIME %f s", v183, 0xCu);
            }
          }
        }

        *&idx[1] = CFDictionaryGetValue(v155, @"min_fall_time");
        if (*&idx[1])
        {
          v31 = CFGetTypeID(*&idx[1]);
          if (v31 == CFNumberGetTypeID())
          {
            CFNumberGetValue(*&idx[1], kCFNumberFloatType, this + 3496);
            if (_logHandle)
            {
              v30 = _logHandle;
            }

            else
            {
              v29 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v30 = v29;
            }

            v115 = v30;
            v114 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v182, COERCE__INT64(*(this + 874)));
              _os_log_impl(&dword_1DE8E5000, v115, v114, "MIN - FALL TIME %f s", v182, 0xCu);
            }
          }
        }

        *&idx[1] = CFDictionaryGetValue(v155, @"pivoting_L");
        if (*&idx[1])
        {
          v28 = CFGetTypeID(*&idx[1]);
          if (v28 == CFNumberGetTypeID())
          {
            CFNumberGetValue(*&idx[1], kCFNumberFloatType, this + 3472);
            if (_logHandle)
            {
              v27 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v26 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v26 = init_default_corebrightness_log();
              }

              v27 = v26;
            }

            v113 = v27;
            v112 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v181, COERCE__INT64(*(this + 868)));
              _os_log_impl(&dword_1DE8E5000, v113, v112, "Pivoting at L = %f", v181, 0xCu);
            }

            *(this + 869) = *(this + 868);
          }
        }

        *&idx[1] = CFDictionaryGetValue(v155, @"pivoting_L_max");
        if (*&idx[1])
        {
          v25 = CFGetTypeID(*&idx[1]);
          if (v25 == CFNumberGetTypeID())
          {
            CFNumberGetValue(*&idx[1], kCFNumberFloatType, this + 3476);
            if (_logHandle)
            {
              v24 = _logHandle;
            }

            else
            {
              v23 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v24 = v23;
            }

            v111 = v24;
            v110 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v180, COERCE__INT64(*(this + 869)));
              _os_log_impl(&dword_1DE8E5000, v111, v110, "Max pivoting at L = %f", v180, 0xCu);
            }
          }
        }
      }
    }

    else if (v155)
    {
      v109 = CFDictionaryGetValue(v155, @"min_Factor");
      if (v109)
      {
        v108 = 0;
        CFNumberGetValue(v109, kCFNumberFloatType, &v108);
        *(this + 874) = v108;
        v107 = CFDictionaryGetValue(v155, @"min_enableTh");
        if (v107)
        {
          CFNumberGetValue(v107, kCFNumberFloatType, this + 3484);
        }

        v106 = CFDictionaryGetValue(v155, @"min_disableTh");
        if (v106)
        {
          CFNumberGetValue(v106, kCFNumberFloatType, this + 3488);
        }

        if (v107 && v106)
        {
          *(this + 3480) = 1;
        }

        v105 = CFDictionaryGetValue(v155, @"min_Factor_AABOff");
        if (v105)
        {
          CFNumberGetValue(v105, kCFNumberFloatType, this + 3500);
        }

        v106 = CFDictionaryGetValue(v155, @"min_disableTh_lowbound");
        if (v106)
        {
          CFNumberGetValue(v106, kCFNumberFloatType, this + 3492);
        }

        else
        {
          *(this + 873) = *(this + 872) - 200.0;
        }
      }

      v109 = CFDictionaryGetValue(v155, @"max_Factor");
      if (v109)
      {
        v104 = 0;
        CFNumberGetValue(v109, kCFNumberFloatType, &v104);
        *(this + 903) = v104;
        v103 = CFDictionaryGetValue(v155, @"max_enableTh");
        if (v103)
        {
          CFNumberGetValue(v103, kCFNumberFloatType, this + 3600);
        }

        v102 = CFDictionaryGetValue(v155, @"max_disableTh");
        if (v102)
        {
          CFNumberGetValue(v102, kCFNumberFloatType, this + 3604);
        }

        if (v103 && v102)
        {
          *(this + 3596) = 1;
        }

        v101 = CFDictionaryGetValue(v155, @"max_Factor_AABOff");
        if (v101)
        {
          CFNumberGetValue(v101, kCFNumberFloatType, this + 3616);
        }

        v102 = CFDictionaryGetValue(v155, @"max_disableTh_highbound");
        if (v102)
        {
          CFNumberGetValue(v102, kCFNumberFloatType, this + 3608);
        }
      }
    }

    if (*(this + 136))
    {
      if (*(this + 722) == 1)
      {
        *(this + 866) = 2;
        *(this + 35) = 2.0;
        v178 = xmmword_1DEACE600;
        v179 = -584398440;
        if (MGIsDeviceOfType())
        {
          *(this + 35) = 15.0;
        }
      }

      AABC::setupAABCurvesFromPlist(this);
      if (*(this + 136))
      {
        v22 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v22 = *MEMORY[0x1E695E4C0];
      }

      v100 = v22;
      DisplaySetProperty(*(this + 50), @"ProductTypeAccessory", v22);
      DisplayAccessoryInitializeBrightnessOverrides(*(this + 50));
    }

    if (*&v153[1])
    {
      CFRelease(*&v153[1]);
    }

    v99 = 0;
    *&v153[1] = CFPreferencesCopyValue(@"AABCurveCap", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    if (*&v153[1] && (v21 = CFGetTypeID(*&v153[1]), v21 == CFDictionaryGetTypeID()))
    {
      v99 = *&v153[1];
    }

    else
    {
      v99 = DisplayGetProperty(*(this + 50), @"AABCurveCap");
    }

    v98 = 0;
    v97 = 0;
    if (_logHandle)
    {
      v20 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v19 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v19 = init_default_corebrightness_log();
      }

      v20 = v19;
    }

    v96 = v20;
    v95 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v177, v99);
      _os_log_impl(&dword_1DE8E5000, v96, v95, "AAB Curve Cap = %p\n", v177, 0xCu);
    }

    if (v99)
    {
      v94 = 0;
      v93 = 4;
      *&v92[1] = CFDictionaryGetValue(v99, @"E");
      if (*&v92[1])
      {
        v18 = CFGetTypeID(*&v92[1]);
        if (v18 == CFArrayGetTypeID() && CFArrayGetCount(*&v92[1]) == v93)
        {
          for (v92[0] = 0; v92[0] < v93; ++v92[0])
          {
            *&v91[1] = CFArrayGetValueAtIndex(*&v92[1], v92[0]);
            if (*&v91[1])
            {
              v17 = CFNumberGetTypeID();
              if (v17 == CFGetTypeID(*&v91[1]))
              {
                CFNumberGetValue(*&v91[1], kCFNumberFloatType, this + 4 * v92[0] + 1192);
                ++v94;
              }
            }
          }

          if (v94 == v93)
          {
            v98 = 1;
          }
        }
      }

      v94 = 0;
      *&v92[1] = CFDictionaryGetValue(v99, @"L");
      if (*&v92[1])
      {
        v16 = CFGetTypeID(*&v92[1]);
        if (v16 == CFArrayGetTypeID() && CFArrayGetCount(*&v92[1]) == v93)
        {
          for (v91[0] = 0; v91[0] < v93; ++v91[0])
          {
            v90 = CFArrayGetValueAtIndex(*&v92[1], v91[0]);
            if (v90)
            {
              v15 = CFNumberGetTypeID();
              if (v15 == CFGetTypeID(v90))
              {
                CFNumberGetValue(v90, kCFNumberFloatType, this + 4 * v91[0] + 1208);
                ++v94;
                if (*(this + v91[0] + 302) < 0.0)
                {
                  *(this + v91[0] + 302) = *(this + 182);
                }

                if (*(this + v91[0] + 302) < *(this + 180))
                {
                  *(this + v91[0] + 302) = *(this + 180);
                }
              }
            }
          }

          if (v94 == v93)
          {
            v97 = 1;
          }
        }
      }

      v89 = CFDictionaryGetValue(v99, @"revertTime");
      if (v89)
      {
        v14 = CFNumberGetTypeID();
        if (v14 == CFGetTypeID(v89))
        {
          CFNumberGetValue(v89, kCFNumberDoubleType, this + 1224);
        }
      }
    }

    if (v98 & 1) != 0 && (v97)
    {
      if (_logHandle)
      {
        v13 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v12 = init_default_corebrightness_log();
        }

        v13 = v12;
      }

      v88 = v13;
      v87 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_8_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v176, COERCE__INT64(*(this + 298)), COERCE__INT64(*(this + 302)), COERCE__INT64(*(this + 299)), COERCE__INT64(*(this + 303)), COERCE__INT64(*(this + 300)), COERCE__INT64(*(this + 304)), COERCE__INT64(*(this + 301)), COERCE__INT64(*(this + 305)));
        _os_log_impl(&dword_1DE8E5000, v88, v87, "AAB Curve Cap found: (%f, %f) - (%f, %f) - (%f, %f) - (%f, %f)", v176, 0x52u);
      }

      *(this + 3409) = 1;
    }

    if (*&v153[1])
    {
      CFRelease(*&v153[1]);
    }

    if ((*(this + 392) & 1) == 0)
    {
      AABC::CreateDefaultCurves(this);
      *(this + 415) = CFAbsoluteTimeGetCurrent();
      if (_logHandle)
      {
        v11 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      v86 = v11;
      v85 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v175, COERCE__INT64(*(this + 268)), COERCE__INT64(*(this + 270)), COERCE__INT64(*(this + 269)), COERCE__INT64(*(this + 271)));
        _os_log_impl(&dword_1DE8E5000, v86, v85, "curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f", v175, 0x2Au);
      }

      if (_logHandle)
      {
        v9 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v8 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v8 = init_default_corebrightness_log();
        }

        v9 = v8;
      }

      v84 = v9;
      v83 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v174, COERCE__INT64(*(this + 264)), COERCE__INT64(*(this + 265)), COERCE__INT64(*(this + 266)), COERCE__INT64(*(this + 267)));
        _os_log_impl(&dword_1DE8E5000, v84, v83, "dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v174, 0x2Au);
      }

      *(this + 392) = 1;
      memset(values, 0, sizeof(values));
      for (k = 0; k < 3; ++k)
      {
        v81 = 1;
        memcpy(__dst, off_1E867CD78, sizeof(__dst));
        memset(__b, 0, sizeof(__b));
        __b[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v81);
        __b[1] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 104 * k + 760);
        __b[2] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 104 * k + 768);
        __b[3] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 104 * k + 764);
        __b[4] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 104 * k + 772);
        __b[5] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 104 * k + 744);
        __b[6] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 104 * k + 748);
        __b[7] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 104 * k + 752);
        __b[8] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 104 * k + 756);
        v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], __dst, __b, 9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        values[k] = v7;
        CFRelease(__b[8]);
        CFRelease(__b[7]);
        CFRelease(__b[6]);
        CFRelease(__b[5]);
        CFRelease(__b[4]);
        CFRelease(__b[3]);
        CFRelease(__b[2]);
        CFRelease(__b[1]);
        CFRelease(__b[0]);
      }

      value = CFArrayCreate(*MEMORY[0x1E695E480], values, 3, MEMORY[0x1E695E9C0]);
      for (m = 0; m < 3; ++m)
      {
        CFRelease(values[m]);
      }

      CFDictionarySetValue(*(this + 47), @"ALSDefaultCurves", value);
    }

    *(this + 84) = 1017370378;
    *(this + 85) = 0;
    AABC::setupDefaultsForAoT(this);
    if (*(this + 960) == 1)
    {
      operator new();
    }

    operator new();
  }

  *MEMORY[0x1E69E9840];
}

void AABC::setupAABCurvesFromPlist(AABC *this)
{
  v97 = *MEMORY[0x1E69E9840];
  v81 = this;
  theDict = 0;
  v79 = 0;
  filePath = 0;
  error = 0;
  resourceData = 0;
  errorCode = 0;
  url = 0;
  v73 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v79 = CFPreferencesCopyValue(@"CurveOverride", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (v79)
  {
    if (_logHandle)
    {
      v39 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v39 = inited;
    }

    oslog = v39;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v37 = type;
      __os_log_helper_16_0_0(v69);
      _os_log_impl(&dword_1DE8E5000, log, v37, "using curve data from user defaults", v69, 2u);
    }

LABEL_87:
    Value = CFDictionaryGetValue(v79, @"A");
    v73 = AABC::populateCurveValuesFromDictionary(this, Value, (this + 1232), 20);
    if (v73)
    {
      v2 = CFDictionaryGetValue(v79, @"B");
      v73 = AABC::populateCurveValuesFromDictionary(this, v2, (this + 1396), 20);
      if (v73)
      {
        if (_logHandle)
        {
          v11 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v10 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v10 = init_default_corebrightness_log();
          }

          v11 = v10;
        }

        v45 = v11;
        v44 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v3 = CFAbsoluteTimeGetCurrent();
          __os_log_helper_16_0_1_8_0(v82, COERCE__INT64(v3 - Current));
          _os_log_impl(&dword_1DE8E5000, v45, v44, "loading curves took %0.4fs", v82, 0xCu);
        }

        if (CFPreferencesGetAppBooleanValue(@"WriteCurveUserDefault", @"com.apple.CoreBrightness", 0))
        {
          AABC::writeCurveToUserDefaults(this, (this + 1232), @"CustomCurveA", v4);
          AABC::writeCurveToUserDefaults(this, (this + 1396), @"CustomCurveB", v5);
        }
      }

      else
      {
        if (_logHandle)
        {
          v15 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v14 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v14 = init_default_corebrightness_log();
          }

          v15 = v14;
        }

        v48 = v15;
        v47 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v12 = v48;
          v13 = v47;
          __os_log_helper_16_0_0(v46);
          _os_log_error_impl(&dword_1DE8E5000, v12, v13, "error reading curve B from plist", v46, 2u);
        }
      }
    }

    else
    {
      if (_logHandle)
      {
        v19 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v18 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v18 = init_default_corebrightness_log();
        }

        v19 = v18;
      }

      v51 = v19;
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v16 = v51;
        v17 = v50;
        __os_log_helper_16_0_0(v49);
        _os_log_error_impl(&dword_1DE8E5000, v16, v17, "error reading curve A from plist", v49, 2u);
      }
    }

    goto LABEL_117;
  }

  v68 = MGCopyAnswer();
  key = @"1";
  v95 = xmmword_1DEACE638;
  v96 = 1425254930;
  if (MGIsDeviceOfType())
  {
    key = @"1";
  }

  else
  {
    v93 = xmmword_1DEACE64C;
    v94 = 1899561076;
    if (MGIsDeviceOfType())
    {
      key = @"1";
    }

    else
    {
      v91 = xmmword_1DEACE660;
      v92 = -584398440;
      if (MGIsDeviceOfType())
      {
        key = @"2";
      }

      else
      {
        v89 = xmmword_1DEACE674;
        v90 = -879476163;
        if (MGIsDeviceOfType())
        {
          key = @"3";
        }

        else
        {
          if (_logHandle)
          {
            v35 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v34 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v34 = init_default_corebrightness_log();
            }

            v35 = v34;
          }

          v66 = v35;
          v65 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v32 = v66;
            v33 = v65;
            __os_log_helper_16_0_0(v64);
            _os_log_error_impl(&dword_1DE8E5000, v32, v33, "unknown model", v64, 2u);
          }
        }
      }
    }
  }

  if (_logHandle)
  {
    v31 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v30 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v30 = init_default_corebrightness_log();
    }

    v31 = v30;
  }

  v63 = v31;
  v62 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v88, key, v68);
    _os_log_impl(&dword_1DE8E5000, v63, v62, "loading curve from plist for model %@ and enclosure color %@", v88, 0x16u);
  }

  filePath = CFStringCreateWithCString(0, "/System/Library/PrivateFrameworks/CoreBrightness.framework/DefaultCurves.plist", 0x8000100u);
  url = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 0);
  CFURLCreateDataAndPropertiesFromResource(*MEMORY[0x1E695E480], url, &resourceData, 0, 0, &errorCode);
  if (errorCode)
  {
    if (_logHandle)
    {
      v29 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v28 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v28 = init_default_corebrightness_log();
      }

      v29 = v28;
    }

    v61 = v29;
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v87, filePath);
      _os_log_impl(&dword_1DE8E5000, v61, v60, "unable to open %@", v87, 0xCu);
    }
  }

  else
  {
    theDict = CFPropertyListCreateWithData(0, resourceData, 0, 0, &error);
    if (theDict)
    {
      v79 = CFDictionaryGetValue(theDict, key);
      if (v79)
      {
        if (!CFDictionaryGetCountOfKey(v79, v68))
        {
          if (_logHandle)
          {
            v23 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v22 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v22 = init_default_corebrightness_log();
            }

            v23 = v22;
          }

          v55 = v23;
          v54 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_2_1_8_64(v84, v68);
            _os_log_impl(&dword_1DE8E5000, v55, v54, "no entry found for color %@, using white instead", v84, 0xCu);
          }

          v68 = @"2";
        }

        v79 = CFDictionaryGetValue(v79, v68);
        if (v79)
        {
          goto LABEL_87;
        }

        if (_logHandle)
        {
          v21 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v20 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v20 = init_default_corebrightness_log();
          }

          v21 = v20;
        }

        v53 = v21;
        v52 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v83, v68);
          _os_log_impl(&dword_1DE8E5000, v53, v52, "no entry found for color %@", v83, 0xCu);
        }
      }

      else
      {
        if (_logHandle)
        {
          v25 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v24 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v24 = init_default_corebrightness_log();
          }

          v25 = v24;
        }

        v57 = v25;
        v56 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v85, key);
          _os_log_impl(&dword_1DE8E5000, v57, v56, "no entry found for accessory with index %@", v85, 0xCu);
        }
      }
    }

    else
    {
      if (_logHandle)
      {
        v27 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v26 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v26 = init_default_corebrightness_log();
        }

        v27 = v26;
      }

      v59 = v27;
      v58 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v86, error);
        _os_log_impl(&dword_1DE8E5000, v59, v58, "error reading plist: %@", v86, 0xCu);
      }

      if (error)
      {
        CFRelease(error);
      }
    }
  }

LABEL_117:
  if ((v73 & 1) == 0)
  {
    if (_logHandle)
    {
      v9 = _logHandle;
    }

    else
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v9 = v8;
    }

    v43 = v9;
    v42 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v6 = v43;
      v7 = v42;
      __os_log_helper_16_0_0(v41);
      _os_log_error_impl(&dword_1DE8E5000, v6, v7, "error reading default curve", v41, 2u);
    }
  }

  if (resourceData)
  {
    CFRelease(resourceData);
  }

  if (url)
  {
    CFRelease(url);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (filePath)
  {
    CFRelease(filePath);
  }

  *MEMORY[0x1E69E9840];
}

void *AABC::CreateDefaultCurves(AABC *this)
{
  v23 = this;
  if (*(this + 1560))
  {
    if (_logHandle)
    {
      v9 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v9 = inited;
    }

    v22 = v9;
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_1DE8E5000, log, type, "Creating AAB Curves from the customCurves.", v20, 2u);
    }

    for (i = 0; i < 3; ++i)
    {
      AAB::customCurveToCurve((this + 164 * i + 1564), v18);
      memcpy(this + 104 * i + 744, v18, 0x68uLL);
    }
  }

  else
  {
    if (_logHandle)
    {
      v5 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v4 = init_default_corebrightness_log();
      }

      v5 = v4;
    }

    v17 = v5;
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v17;
      v3 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_1DE8E5000, v2, v3, "No AAB curve present in EDT. Creating Default curves.", v15, 2u);
    }

    v14 = *(this + 178);
    if (*(this + 78) == 6)
    {
      v14 = 149.54;
    }

    for (j = 0; j < 3; ++j)
    {
      v12 = *(this + 177);
      if (*(this + 723) && j == 2)
      {
        v12 = 5.0;
      }

      AAB::DefaultCurve(this, j, *(this + 1160) & 1, this + 291, this + 1172, this + 295, v11, v12, v14, *(this + 182));
      memcpy(this + 104 * j + 744, v11, 0x68uLL);
    }
  }

  memcpy(this + 1056, this + 104 * *(this + 853) + 744, 0x68uLL);
  *(this + 288) = (*(**(this + 8) + 104))(*(this + 8));
  memcpy(this + 2904, this + 1056, 0x68uLL);
  memcpy(this + 3008, this + 1056, 0x68uLL);
  *(this + 776) = (*(**(this + 8) + 112))(*(this + 8));
  memcpy(this + 3112, this + 3008, 0x68uLL);
  (*(**(this + 8) + 80))(*(this + 8), this + 2904);
  (*(**(this + 8) + 88))(*(this + 8), this + 3112);
  result = memcpy(this + 3216, this + 1056, 0x68uLL);
  *(this + 834) = 0;
  *(this + 418) = 0;
  *(this + 419) = 0;
  *(this + 420) = 0;
  *(this + 842) = 0;
  return result;
}

void AABC::setupDefaultsForAoT(AABC *this)
{
  v52 = v89;
  v104 = *MEMORY[0x1E69E9840];
  v77 = this;
  v53 = this;
  if (CBU_IsWatch())
  {
    __n = 120;
    memcpy(__dst, &unk_1DEACE6C4, sizeof(__dst));
    memcpy(v87, &unk_1DEACE73C, sizeof(v87));
    v75 = MGGetSInt32Answer();
    v76 = v75;
    if (_logHandle)
    {
      v50 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v50 = inited;
    }

    oslog = v50;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v47 = type;
      buf = v86;
      __os_log_helper_16_0_1_4_0(v86, v76);
      _os_log_impl(&dword_1DE8E5000, oslog, type, "AOT Brightness Class used: %d", v86, 8u);
    }

    v3 = v53;
    v4 = &__dst[5 * v76];
    *(v53 + 2056) = *v4;
    *(v3 + 518) = v4[4];
    v5 = &v87[5 * v76];
    *(v3 + 2136) = *v5;
    *(v3 + 538) = v5[4];
    *(v3 + 554) = 5;
    v6 = &__dst[5 * v76];
    *(v3 + 2220) = *v6;
    *(v3 + 559) = v6[4];
    v7 = &v87[5 * v76];
    *(v3 + 2300) = *v7;
    *(v3 + 579) = v7[4];
    *(v3 + 595) = 5;
    v72 = v76;
    if (*(v3 + 723))
    {
      v72 = 3;
    }

    v8 = v53;
    v9 = &__dst[5 * v72];
    *(v53 + 149) = *v9;
    *(v8 + 600) = v9[4];
    v10 = &v87[5 * v72];
    *(v8 + 154) = *v10;
    *(v8 + 620) = v10[4];
    *(v8 + 636) = 5;
  }

  else
  {
    v1 = v53;
    v2 = v52;
    *(v52 + 29) = xmmword_1DEACE688;
    v103 = 1184645120;
    v98 = *(v1 + 177);
    v99 = 30.0;
    v100 = 1120141312;
    v101 = 1140457472;
    v102 = 1140457472;
    *(v1 + 2056) = *(v2 + 116);
    *(v1 + 518) = v103;
    *(v1 + 2136) = v2[6];
    *(v1 + 538) = v102;
    *(v1 + 554) = 5;
    *(v2 + 68) = xmmword_1DEACE69C;
    v97 = 1184645120;
    v92 = *(v1 + 177);
    v93 = 30.0;
    v94 = 1120141312;
    v95 = 1140457472;
    v96 = 1140457472;
    *(v1 + 2220) = *(v2 + 68);
    *(v1 + 559) = v97;
    *(v1 + 2300) = v2[3];
    *(v1 + 579) = v96;
    *(v1 + 595) = 5;
    *(v2 + 20) = xmmword_1DEACE6B0;
    v91 = 1184645120;
    v89[0] = *(v1 + 177);
    v89[1] = 30.0;
    v89[2] = 1120141312;
    v89[3] = 1140457472;
    v90 = 1140457472;
    *(v1 + 149) = *(v2 + 20);
    *(v1 + 600) = v91;
    *(v1 + 154) = *v2;
    *(v1 + 620) = v90;
    *(v1 + 636) = 5;
  }

  v11 = v53 + 164 * *(v53 + 853) + 2056;
  __len = 164;
  memcpy(v53 + 2548, v11, 0xA4uLL);
  __src = __b;
  memset(__b, 0, sizeof(__b));
  memcpy(v53 + 2712, __b, 0xA4uLL);
  *(v53 + 719) = 0;
  context = objc_autoreleasePoolPush();
  v45 = 0x1E695D000uLL;
  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i < *(v53 + 554); ++i)
  {
    v39 = v70;
    v40 = 0x1E696A000uLL;
    LODWORD(v12) = *(v53 + i + 514);
    [v70 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v12)}];
    v41 = v69;
    LODWORD(v13) = *(v53 + i + 534);
    [v69 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v13)}];
  }

  v84[0] = @"lux";
  v85[0] = v70;
  v84[1] = @"nits";
  v85[1] = v69;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
  MEMORY[0x1E69E5920](v70);
  MEMORY[0x1E69E5920](v69);
  v38 = 0x1E695D000uLL;
  v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (j = 0; j < *(v53 + 595); ++j)
  {
    v35 = v66;
    v36 = 0x1E696A000uLL;
    LODWORD(v14) = *(v53 + j + 555);
    [v66 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v14)}];
    v37 = v65;
    LODWORD(v15) = *(v53 + j + 575);
    [v65 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v15)}];
  }

  v82[0] = @"lux";
  v83[0] = v66;
  v82[1] = @"nits";
  v83[1] = v65;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
  MEMORY[0x1E69E5920](v66);
  MEMORY[0x1E69E5920](v65);
  v34 = 0x1E695D000uLL;
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (k = 0; k < *(v53 + 636); ++k)
  {
    v31 = v62;
    v32 = 0x1E696A000uLL;
    LODWORD(v16) = *(v53 + k + 596);
    [v62 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v16)}];
    v33 = v61;
    LODWORD(v17) = *(v53 + k + 616);
    [v61 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v17)}];
  }

  v80[0] = @"lux";
  v81[0] = v62;
  v80[1] = @"nits";
  v81[1] = v61;
  v24[11] = 0x1E695D000uLL;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
  MEMORY[0x1E69E5920](v62);
  *&v18 = MEMORY[0x1E69E5920](v61).n128_u64[0];
  v78[0] = @"CurveLevelLow";
  v79[0] = v67;
  v78[1] = @"CurveLevelMed";
  v79[1] = v63;
  v78[2] = @"CurveLevelHigh";
  v79[2] = v59;
  value = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:{3, v18}];
  CFDictionarySetValue(*(v53 + 47), @"AOTCurve", value);
  objc_autoreleasePoolPop(context);
  v57 = -1.0;
  v56 = -1.0;
  v55 = -1.0;
  v56 = *(v53 + 657);
  v57 = v56;
  v55 = *(v53 + *(v53 + 677) + 656);
  v29 = objc_alloc(MEMORY[0x1E695DF20]);
  v24[12] = 0x1E696A000uLL;
  *&v19 = v56;
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  *&v20 = v56;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  *&v21 = v55;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  LODWORD(v22) = *(v53 + 177);
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  LODWORD(v23) = *(v53 + 179);
  v30 = v24;
  v54 = [v29 initWithObjectsAndKeys:{v28, @"BrightnessCapabilitiesSafeDigitalMin", v25, @"BrightnessCapabilitiesAODmin", v26, @"BrightnessCapabilitiesAODmax", v27, @"BrightnessCapabilitiesActiveMin", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v23), @"BrightnessCapabilitiesActiveHWMax", 0}];
  if (v54)
  {
    CFDictionarySetValue(*(v53 + 48), @"BrightnessCapabilities", v54);
    MEMORY[0x1E69E5920](v54);
  }

  *MEMORY[0x1E69E9840];
}

void ___ZN4AABC15registerDisplayEP9__Display_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = 1;
  if (a2 != 50)
  {
    v5 = a2 == 70;
  }

  AABC::_UpdateEcoModeState(v4, v5);
  v2 = [v4[486] isAmbrosiaLevel];
  v3 = 0.95;
  if ((v2 & 1) == 0)
  {
    v3 = 1.0;
  }

  AABC::UpdateAmbrosiaFactor(v4, v3);
}

AABC *AABC::_UpdateEcoModeState(AABC *this, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = this;
  if ((a2 & 1) != (*(this + 3424) & 1))
  {
    if (_logHandle)
    {
      v5 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v5 = inited;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v2 = "ON";
      }

      else
      {
        v2 = "OFF";
      }

      __os_log_helper_16_2_1_8_32(v8, v2);
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "%s \n", v8, 0xCu);
    }

    *(v6 + 3424) = a2 & 1;
    if (*(v6 + 3424))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    this = AABC::SetAggressivity(v6, v3);
  }

  *MEMORY[0x1E69E9840];
  return this;
}

void AABC::UpdateAmbrosiaFactor(AABC *this, float a2)
{
  if (!float_equal(a2, *(this + 961)))
  {
    *(this + 961) = clamp(a2, 0.95, 1.0);
    AABC::_UpdateNitsRestrictions(this, *(this + 135), -1.0, 1);
    v3 = *(this + 50);
    v2 = AABC::AmbrosiaReductionToUserSlider(this, *(this + 961));
    DisplaySetSliderScaler(v3, v2);
  }
}

uint64_t AABC::unregisterDisplay(id *this, __Display *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v7, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "[%x]: ", v7, 8u);
  }

  [this[486] stop];
  result = [this[486] deregisterNotificationBlockForCaller:?];
  this[50] = 0;
  v3 = this[479];
  if (v3)
  {
    result = (*(*v3 + 24))(v3);
  }

  this[479] = 0;
  *MEMORY[0x1E69E9840];
  return result;
}

CBDigitizerFilter *AABC::newDigitizerFilterForALS(AABC *this, const AABC::ALS *a2)
{
  v4 = [[CBDigitizerFilter alloc] initWithALSNode:*(a2 + 5) andLogCategory:"lux"];
  [(CBFilter *)v4 scheduleWithDispatchQueue:*(this + 488)];
  return v4;
}

CBStrobeFilter *AABC::newStrobeFilterForALS(AABC *this, const AABC::ALS *a2)
{
  v3 = [[CBStrobeFilter alloc] initWithQueue:*(this + 488)];
  [(CBStrobeFilter *)v3 start];
  return v3;
}

_DWORD *AABC::resetMovingAverage(AABC *this)
{
  v3 = this;
  *(this + 35) = 0;
  v2 = 0;
  return std::array<float,3ul>::fill[abi:de200100](this + 268, &v2);
}

uint64_t __os_log_helper_16_2_3_4_0_8_64_8_32(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void AABC::ALS::~ALS(AABC::ALS *this)
{
  AABC::ALS::~ALS(this);
}

{
  std::vector<float>::~vector[abi:de200100](this + 17);
  std::vector<float>::~vector[abi:de200100](this + 12);
}

void *AABC::registerEndpoint(id *this, CBAPEndpoint *a2)
{
  v6 = this;
  v5 = a2;
  result = MEMORY[0x1E69E5928](a2);
  this[500] = result;
  if (*(this + 78) == 6)
  {
    AABC::sendCrossTalkConfigToDCP(this);
    result = AABC::sendAOTCurvesToDCP(this);
  }

  if (*(this + 78) == 1)
  {
    v4 = 0;
    return [this[500] sendCommand:232 inputBuffer:&v4 inputBufferSize:1];
  }

  return result;
}

void AABC::sendCrossTalkConfigToDCP(IOHIDServiceClientRef *this)
{
  valuePtr[1] = this;
  v26 = this;
  valuePtr[0] = 0;
  v51 = 0;
  v52 = 0;
  number = IOHIDServiceClientGetRegistryID(this[40]);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, valuePtr);
  }

  if (valuePtr[0])
  {
    context = objc_autoreleasePoolPush();
    v49 = 0;
    mainPort = *MEMORY[0x1E696CD60];
    v1 = IORegistryEntryIDMatching(valuePtr[0]);
    entry = IOServiceGetMatchingService(mainPort, v1);
    v49 = IORegistryEntryCreateCFProperty(entry, @"ALSSCalDBV", *MEMORY[0x1E695E480], 0);
    v25 = v49;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&v53[7] = [v49 unsignedIntValue];
      LOBYTE(v51) = 1;
    }

    v49 = IORegistryEntryCreateCFProperty(entry, @"ALSSNumRects", *MEMORY[0x1E695E480], 0);
    v22 = v49;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&v53[3] = [v49 unsignedIntValue];
      BYTE1(v51) = 1;
    }

    v49 = IORegistryEntryCreateCFProperty(entry, @"ALSSRGBCoefficients", *MEMORY[0x1E695E480], 0);
    v21 = v49;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v55;
      v41 = MEMORY[0x1E69E9820];
      v42 = -1073741824;
      v43 = 0;
      v44 = ___ZN4AABC24sendCrossTalkConfigToDCPEv_block_invoke;
      v45 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
      v46 = v55;
      [v49 enumerateObjectsUsingBlock:?];
      BYTE2(v51) = 1;
    }

    v40 = @"ALSSRect";
    v19 = &v8;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", 0}];
    v49 = IORegistryEntryCreateCFProperty(entry, @"ALSSRectConfig", *MEMORY[0x1E695E480], 0);
    v20 = v49;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      for (i = 0; i < *&v53[3]; ++i)
      {
        v17 = v49;
        v16 = v40;
        v2 = [v39 objectAtIndexedSubscript:i];
        v3 = [(__CFString *)v16 stringByAppendingString:v2];
        v37 = [v17 objectForKey:v3];
        v18 = v37;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [objc_msgSend(v37 objectAtIndexedSubscript:{0), "unsignedIntValue"}];
          v15 = &v53[3];
          *&v55[16 * i + 12] = v4;
          v5 = [objc_msgSend(v37 objectAtIndexedSubscript:{1), "unsignedIntValue"}];
          *&v15[16 * i + 88] = v5;
          v6 = [objc_msgSend(v37 objectAtIndexedSubscript:{2), "unsignedIntValue"}];
          *&v15[16 * i + 92] = v6;
          v7 = [objc_msgSend(v37 objectAtIndexedSubscript:{3), "unsignedIntValue"}];
          *&v15[16 * i + 96] = v7;
          HIBYTE(v51) = 1;
        }

        else
        {
          HIBYTE(v51) = 0;
        }
      }
    }

    v49 = IORegistryEntryCreateCFProperty(entry, @"ALSSWindowCoefficients", *MEMORY[0x1E695E480], 0);
    v14 = v49;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v54;
      v30 = MEMORY[0x1E69E9820];
      v31 = -1073741824;
      v32 = 0;
      v33 = ___ZN4AABC24sendCrossTalkConfigToDCPEv_block_invoke_2;
      v34 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
      v35 = v54;
      [v49 enumerateObjectsUsingBlock:?];
      v52 = 1;
    }

    objc_autoreleasePoolPop(context);
    if (std::all_of[abi:de200100]<BOOL *,AABC::sendCrossTalkConfigToDCP(void)::$_0>(&v51, v53))
    {
      [(__IOHIDServiceClient *)v26[500] sendCommand:232 inputBuffer:&v53[3] inputBufferSize:340];
    }

    else
    {
      if (_logHandle)
      {
        v13 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v13 = inited;
      }

      oslog = v13;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        *v10 = type;
        buf = v27;
        __os_log_helper_16_0_0(v27);
        _os_log_error_impl(&dword_1DE8E5000, log, v10[0], "No valid calibration for crosstalk, lux might be incorrect!", buf, 2u);
      }
    }
  }
}

uint64_t AABC::sendAOTCurvesToDCP(AABC *this)
{
  v4[21] = *MEMORY[0x1E69E9840];
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < *(this + 41 * i + 554); ++j)
    {
      *(&v4[7 * i] + j) = (*(this + 41 * i + j + 514) * 65536.0);
      *(&v4[7 * i + 3] + j) = (*(this + 41 * i + j + 534) * 65536.0);
    }

    v4[7 * i + 6] = *(this + 41 * i + 554);
  }

  result = [*(this + 500) sendCommand:228 inputBuffer:v4 inputBufferSize:168];
  *MEMORY[0x1E69E9840];
  return result;
}

void AABC::scheduleWithDispatchQueue(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  if (_logHandle)
  {
    v10 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v10 = inited;
  }

  v24 = v10;
  v23 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v28, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v24, v23, "[%x]: ", v28, 8u);
  }

  if (*(a1 + 368))
  {
    if (_logHandle)
    {
      v8 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    v22 = v8;
    v21 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v27, *(a1 + 3444));
      _os_log_debug_impl(&dword_1DE8E5000, v22, v21, "_settings._internal._dimPolicy=%x", v27, 8u);
    }

    *(a1 + 3904) = v25;
    if (!*(a1 + 648))
    {
      if (_logHandle)
      {
        v6 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v5 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v5 = init_default_corebrightness_log();
        }

        v6 = v5;
      }

      v20 = v6;
      v19 = 2;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v3 = v20;
        v4 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_debug_impl(&dword_1DE8E5000, v3, v4, "lockstate notification enabled \n", v18, 2u);
      }

      v2 = *(a1 + 3904);
      handler = MEMORY[0x1E69E9820];
      v13 = -1073741824;
      v14 = 0;
      v15 = ___ZN4AABC25scheduleWithDispatchQueueEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
      v16 = &__block_descriptor_40_e8_v12__0i8l;
      v17 = a1;
      notify_register_dispatch("com.apple.springboard.lockstate", (a1 + 3860), v2, &handler);
    }

    AABC::InitializeCPMSModule(a1);
    *(a1 + 152) = [[AccessoryDetection alloc] initWithAABC:a1];
    [*(a1 + 152) start];
  }

  *MEMORY[0x1E69E9840];
}

void AABC::CancelFastRampMode(CFAbsoluteTime *this)
{
  v9 = this;
  if (*(this + 169))
  {
    if (_logHandle)
    {
      v4 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v4 = inited;
    }

    v8 = v4;
    v7 = 1;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_impl(&dword_1DE8E5000, log, type, "end fast ramp mode", v6, 2u);
    }

    this[86] = CFAbsoluteTimeGetCurrent();
    *(this + 169) = 0;
    if (*(this + 90) == 2)
    {
      AABC::UpdateState(this, 3);
    }
  }
}

void AABC::InitializeCPMSModule(AABC *this)
{
  v71 = *MEMORY[0x1E69E9840];
  v64 = this;
  *(this + 495) = 0;
  *(this + 494) = 0;
  v62 = MGGetSInt32Answer();
  v63 = v62;
  if ((v62 == 6 || v63 == 1 || v63 == 3) && [MEMORY[0x1E6991F30] isCPMSSupported] == 1)
  {
    CPMSAPLTable = DisplayGetCPMSAPLTable(*(this + 50));
    if (CPMSAPLTable)
    {
      v60 = 1125842944;
      APLColumnOrDefault = DisplayGetAPLColumnOrDefault(*(this + 50), 0x64u);
      v58 = DisplayPhysicalBrightnessToPower(*(this + 50), APLColumnOrDefault, 155.0);
      APLIndex = DisplayGetAPLIndex(*(this + 50), APLColumnOrDefault);
      HDRAPLColumn = DisplayGetHDRAPLColumn(*(this + 50));
      v55 = DisplayPhysicalBrightnessToPower(*(this + 50), HDRAPLColumn, 155.0);
      v54 = DisplayGetAPLIndex(*(this + 50), HDRAPLColumn);
      if (_logHandle)
      {
        v17 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v17 = inited;
      }

      v53 = v17;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_3_4_0_8_0_4_0(v70, APLColumnOrDefault, COERCE__INT64(v58), APLIndex);
        _os_log_impl(&dword_1DE8E5000, v53, type, "CPMS InitializeCPMSModule, cltm/upo apl: %d, budgetMin: %f, apl_inndex: %d", v70, 0x18u);
      }

      if (_logHandle)
      {
        v15 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v14 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v14 = init_default_corebrightness_log();
        }

        v15 = v14;
      }

      oslog = v15;
      v50 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_3_4_0_8_0_4_0(v69, HDRAPLColumn, COERCE__INT64(v55), v54);
        _os_log_impl(&dword_1DE8E5000, oslog, v50, "CPMS InitializeCPMSModule, hdrapl: %d, hdrbudgetMin: %f, hdr_apl_inndex: %d", v69, 0x18u);
      }

      v12 = MEMORY[0x1E695E8B8];
      v13 = MEMORY[0x1E695E8B0];
      CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      cf = CFPreferencesCopyValue(@"CBCPMSPowerConstraints", @"com.apple.CoreBrightness", *v12, *v13);
      if (cf && (v11 = CFGetTypeID(cf), v11 == CFDictionaryGetTypeID()))
      {
        theDict = CFDictionaryGetValue(cf, @"CLTMRestriction");
        if (theDict)
        {
          number = CFDictionaryGetValue(theDict, @"Min");
          if (number)
          {
            CFNumberGetValue(number, kCFNumberIntType, this + 3984);
          }

          number = CFDictionaryGetValue(theDict, @"Max");
          if (number)
          {
            CFNumberGetValue(number, kCFNumberIntType, this + 3988);
          }
        }

        else
        {
          *(this + 996) = v58;
          *(this + 997) = *&CPMSAPLTable[50 * APLIndex + 103 + CPMSAPLTable[1] - 1];
        }

        theDict = CFDictionaryGetValue(cf, @"UPORestriction");
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"Min");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberIntType, this + 3968);
          }

          Value = CFDictionaryGetValue(theDict, @"Max");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberIntType, this + 3972);
          }
        }

        else
        {
          *(this + 992) = v58;
          *(this + 993) = *&CPMSAPLTable[50 * APLIndex + 103 + CPMSAPLTable[1] - 1];
        }

        theDict = CFDictionaryGetValue(cf, @"HDRRestriction");
        if (theDict)
        {
          v45 = CFDictionaryGetValue(theDict, @"Min");
          if (v45)
          {
            CFNumberGetValue(v45, kCFNumberIntType, this + 3976);
          }

          v45 = CFDictionaryGetValue(theDict, @"Max");
          if (v45)
          {
            CFNumberGetValue(v45, kCFNumberIntType, this + 3980);
          }
        }

        else
        {
          *(this + 994) = v55;
          *(this + 995) = *&CPMSAPLTable[50 * v54 + 103 + *CPMSAPLTable - 1];
        }
      }

      else
      {
        *(this + 992) = v58;
        *(this + 993) = *&CPMSAPLTable[50 * APLIndex + 103 + CPMSAPLTable[1] - 1];
        *(this + 996) = v58;
        *(this + 997) = *&CPMSAPLTable[50 * APLIndex + 103 + CPMSAPLTable[1] - 1];
        *(this + 994) = v55;
        *(this + 995) = *&CPMSAPLTable[50 * v54 + 103 + CPMSAPLTable[1] - 1];
      }

      if (cf)
      {
        CFRelease(cf);
      }

      *(this + 983) = -1.0;
      *(this + 984) = -1.0;
      *(this + 982) = -1.0;
      *(this + 987) = 5.0;
      *(this + 985) = 5.0;
      *(this + 986) = 5.0;
      if (_logHandle)
      {
        v10 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v9 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v9 = init_default_corebrightness_log();
        }

        v10 = v9;
      }

      v44 = v10;
      v43 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v7 = v44;
        v8 = v43;
        __os_log_helper_16_0_0(v42);
        _os_log_impl(&dword_1DE8E5000, v7, v8, "Registering CPMS Client", v42, 2u);
      }

      if (_logHandle)
      {
        v6 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v5 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v5 = init_default_corebrightness_log();
        }

        v6 = v5;
      }

      v41 = v6;
      v40 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_6_4_0_4_0_4_0_4_0_4_0_4_0(v68, *(this + 992), *(this + 993), *(this + 996), *(this + 997), *(this + 994), *(this + 995));
        _os_log_impl(&dword_1DE8E5000, v41, v40, "CPMS budgets[min/max]: UPO %d/%d, CLTM %d/%d, HDR %d/%d", v68, 0x26u);
      }

      *(this + 495) = [MEMORY[0x1E6991F30] sharedCPMSAgent];
      *(this + 494) = objc_alloc_init(MEMORY[0x1E6991F38]);
      if (*(this + 494))
      {
        [*(this + 494) setClientId:7];
        v39 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 994)];
        v38 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 995)];
        v37 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 992)];
        v36 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 993)];
        v35 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 996)];
        v34 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 997)];
        v33 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v39, v38, 0}];
        v32 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v37, v36, 0}];
        v31 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v35, v34, 0}];
        v1 = objc_alloc(MEMORY[0x1E695DF20]);
        v30 = [v1 initWithObjectsAndKeys:{v33, *MEMORY[0x1E6991F50], v32, *MEMORY[0x1E6991F40], v31, *MEMORY[0x1E6991F48], 0}];
        [*(this + 494) setPowerLevels:v30];
        [*(this + 494) setIsContinuous:1];
        [*(this + 494) setPowerBudgetUpdateMinimumPeriod:1000];
        v24 = MEMORY[0x1E69E9820];
        v25 = -1073741824;
        v26 = 0;
        v27 = ___ZN4AABC20InitializeCPMSModuleEv_block_invoke;
        v28 = &__block_descriptor_40_e22_v16__0__NSDictionary_8l;
        v29 = this;
        [*(this + 494) setNotificationCallback:?];
        [*(this + 494) setGetCurrentPower:&__block_literal_global_1043];
        v23 = [*(this + 495) registerClientWithDescription:*(this + 494) error:0];
        if ((v23 & 1) == 1)
        {
          if (_logHandle)
          {
            v4 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v3 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v3 = init_default_corebrightness_log();
            }

            v4 = v3;
          }

          v22 = v4;
          v21 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_66(v67, [*(this + 494) description]);
            _os_log_impl(&dword_1DE8E5000, v22, v21, "Successfully Registered CPMS Client\n%{public}@\n", v67, 0xCu);
          }

          v2 = *(this + 495);
          v65[0] = *MEMORY[0x1E6991F50];
          v66[0] = v38;
          v65[1] = *MEMORY[0x1E6991F40];
          v66[1] = v36;
          v65[2] = *MEMORY[0x1E6991F48];
          v66[2] = v34;
          v20 = [v2 copyPowerBudgetForRequest:objc_msgSend(MEMORY[0x1E695DF20] forClient:"dictionaryWithObjects:forKeys:count:" error:{v66, v65, 3), objc_msgSend(*(this + 494), "clientId"), 0}];
          if (v20)
          {
            [*(this + 495) acknowledgePowerBudget:v20 forClientId:objc_msgSend(*(this + 494) error:{"clientId"), 0}];
            MEMORY[0x1E69E5920](v20);
          }

          v19[0] = fmaxf(*&CPMSAPLTable[CPMSAPLTable[1] - 1 + 53], *(this + 182));
          v19[1] = v19[0];
          v19[2] = v19[0];
          DisplayUpdateCPMSBudget(*(this + 50), v19);
        }

        MEMORY[0x1E69E5920](v33);
        MEMORY[0x1E69E5920](v32);
        MEMORY[0x1E69E5920](v31);
        MEMORY[0x1E69E5920](v39);
        MEMORY[0x1E69E5920](v38);
        MEMORY[0x1E69E5920](v37);
        MEMORY[0x1E69E5920](v36);
        MEMORY[0x1E69E5920](v35);
        MEMORY[0x1E69E5920](v34);
        MEMORY[0x1E69E5920](v30);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void AABC::unscheduleFromDispatchQueue(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a1 + 368))
  {
    if (*(a1 + 3860))
    {
      notify_cancel(*(a1 + 3860));
    }

    if (_logHandle)
    {
      v2 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v2 = inited;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v3, 4);
      _os_log_debug_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEBUG, "[%x]: ", v3, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

CFDictionaryRef AABC::createCurvePrefsDictionary(uint64_t a1, void *a2)
{
  __dst[11] = *MEMORY[0x1E69E9840];
  v19 = a1;
  valuePtr = a2;
  memcpy(__dst, &off_1E867CE20, 0x58uLL);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = MEMORY[0x1E695E480];
  v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, valuePtr);
  v22 = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 4);
  v23 = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 8);
  callBacks = MEMORY[0x1E695E9C0];
  v17 = CFArrayCreate(*v4, &v21, 3, MEMORY[0x1E695E9C0]);
  CFRelease(v21);
  CFRelease(v22);
  CFRelease(v23);
  v21 = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 12);
  v22 = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 16);
  v23 = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 20);
  v16 = CFArrayCreate(*v4, &v21, 3, callBacks);
  CFRelease(v21);
  CFRelease(v22);
  CFRelease(v23);
  v15 = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 24);
  v14 = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 28);
  v13 = CFNumberCreate(*v4, kCFNumberIntType, valuePtr + 32);
  v21 = CFNumberCreate(*v4, kCFNumberIntType, valuePtr + 36);
  v22 = CFNumberCreate(*v4, kCFNumberIntType, valuePtr + 40);
  v23 = CFNumberCreate(*v4, kCFNumberIntType, valuePtr + 44);
  v12 = CFArrayCreate(*v4, &v21, 3, callBacks);
  CFRelease(v21);
  CFRelease(v22);
  CFRelease(v23);
  v11 = (*(valuePtr + 48) & 1) != 0;
  v10 = CFNumberCreate(*v4, kCFNumberIntType, &v11);
  v9 = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 52);
  v8 = CFNumberCreate(*v4, kCFNumberDoubleType, valuePtr + 56);
  v7 = CFNumberCreate(*v4, kCFNumberIntType, valuePtr + 64);
  cf = CFNumberCreate(*v4, kCFNumberFloatType, valuePtr + 68);
  __b[0] = v17;
  __b[1] = v16;
  __b[2] = v15;
  __b[3] = v14;
  __b[4] = v13;
  __b[5] = v12;
  __b[6] = v10;
  __b[7] = v9;
  __b[8] = v8;
  __b[9] = v7;
  __b[10] = cf;
  v5 = CFDictionaryCreate(*v4, __dst, __b, 11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(cf);
  CFRelease(v7);
  CFRelease(v8);
  CFRelease(v9);
  CFRelease(v10);
  CFRelease(v12);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  CFRelease(v17);
  *MEMORY[0x1E69E9840];
  return v5;
}

const void *AABC::readCurvePrefsFromDictionary(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  Value = CFDictionaryGetValue(a2, @"Eprefs");
  if (Value)
  {
    v18 = CFGetTypeID(Value);
    if (v18 == CFArrayGetTypeID())
    {
      ValueAtIndex = 0;
      for (i = 0; i < 3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
        if (ValueAtIndex)
        {
          v17 = CFGetTypeID(ValueAtIndex);
          if (v17 == CFNumberGetTypeID())
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, (v27 + 4 * i));
          }
        }
      }
    }
  }

  Value = CFDictionaryGetValue(v28, @"Lprefs");
  if (Value)
  {
    v16 = CFGetTypeID(Value);
    if (v16 == CFArrayGetTypeID())
    {
      v23 = 0;
      for (j = 0; j < 3; ++j)
      {
        v23 = CFArrayGetValueAtIndex(Value, j);
        if (v23)
        {
          v15 = CFGetTypeID(v23);
          if (v15 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v23, kCFNumberFloatType, (v27 + 12 + 4 * j));
          }
        }
      }
    }
  }

  Value = CFDictionaryGetValue(v28, @"Eoverride");
  if (Value)
  {
    v14 = CFGetTypeID(Value);
    if (v14 == CFNumberGetTypeID())
    {
      CFNumberGetValue(Value, kCFNumberFloatType, (v27 + 24));
    }
  }

  Value = CFDictionaryGetValue(v28, @"Loverride");
  if (Value)
  {
    v13 = CFGetTypeID(Value);
    if (v13 == CFNumberGetTypeID())
    {
      CFNumberGetValue(Value, kCFNumberFloatType, (v27 + 28));
    }
  }

  Value = CFDictionaryGetValue(v28, @"overridePref");
  if (Value)
  {
    v12 = CFGetTypeID(Value);
    if (v12 == CFNumberGetTypeID())
    {
      CFNumberGetValue(Value, kCFNumberIntType, (v27 + 32));
    }
  }

  Value = CFDictionaryGetValue(v28, @"age");
  if (Value)
  {
    v11 = CFGetTypeID(Value);
    if (v11 == CFArrayGetTypeID())
    {
      v21 = 0;
      for (k = 0; k < 3; ++k)
      {
        v21 = CFArrayGetValueAtIndex(Value, k);
        if (v21)
        {
          v10 = CFGetTypeID(v21);
          if (v10 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v21, kCFNumberIntType, (v27 + 36 + 4 * k));
          }
        }
      }
    }
  }

  Value = CFDictionaryGetValue(v28, @"justOverriddenBrightValue");
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      *(v27 + 48) = valuePtr != 0;
    }
  }

  Value = 0;
  Value = CFDictionaryGetValue(v28, @"thirdSlope");
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFNumberGetTypeID())
    {
      CFNumberGetValue(Value, kCFNumberFloatType, (v27 + 52));
    }
  }

  Value = 0;
  Value = CFDictionaryGetValue(v28, @"timestamp");
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(Value, kCFNumberDoubleType, (v27 + 56));
    }
  }

  *(v27 + 64) = 0;
  Value = 0;
  Value = CFDictionaryGetValue(v28, @"curveType");
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(Value, kCFNumberIntType, (v27 + 64));
    }
  }

  *(v27 + 68) = -1.0;
  Value = 0;
  result = CFDictionaryGetValue(v28, @"EmaxCap");
  Value = result;
  if (result)
  {
    v5 = CFGetTypeID(Value);
    TypeID = CFNumberGetTypeID();
    result = v5;
    if (v5 == TypeID)
    {
      return CFNumberGetValue(Value, kCFNumberFloatType, (v27 + 68));
    }
  }

  return result;
}

CFDictionaryRef AABC::createCurveDictionary(uint64_t a1, void *a2)
{
  __dst[11] = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  v6 = *(a1 + 736);
  memcpy(__dst, &off_1E867CE78, 0x58uLL);
  memset(__b, 0, sizeof(__b));
  v4 = MEMORY[0x1E695E480];
  __b[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v6);
  __b[1] = CFNumberCreate(*v4, kCFNumberFloatType, (a1 + 524));
  __b[2] = CFNumberCreate(*v4, kCFNumberFloatType, v7 + 16);
  __b[3] = CFNumberCreate(*v4, kCFNumberFloatType, v7 + 24);
  __b[4] = CFNumberCreate(*v4, kCFNumberFloatType, v7 + 20);
  __b[5] = CFNumberCreate(*v4, kCFNumberFloatType, v7 + 28);
  __b[6] = CFNumberCreate(*v4, kCFNumberFloatType, v7);
  __b[7] = CFNumberCreate(*v4, kCFNumberFloatType, v7 + 4);
  __b[8] = CFNumberCreate(*v4, kCFNumberFloatType, v7 + 8);
  __b[9] = CFNumberCreate(*v4, kCFNumberFloatType, v7 + 12);
  __b[10] = AABC::createCurvePrefsDictionary(a1, v7 + 32);
  v5 = CFDictionaryCreate(*v4, __dst, __b, 11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(__b[10]);
  CFRelease(__b[9]);
  CFRelease(__b[8]);
  CFRelease(__b[7]);
  CFRelease(__b[6]);
  CFRelease(__b[5]);
  CFRelease(__b[4]);
  CFRelease(__b[3]);
  CFRelease(__b[2]);
  CFRelease(__b[1]);
  CFRelease(__b[0]);
  *MEMORY[0x1E69E9840];
  return v5;
}

CFDictionaryRef AABC::createCurveDescriptorDictionary(uint64_t a1, _DWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E867CED0;
  v15 = @"badCurves";
  memset(values, 0, sizeof(values));
  for (i = 0; i < 3; ++i)
  {
    values[i] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &a2[2 * i + 2]);
  }

  v7 = CFArrayCreate(*MEMORY[0x1E695E480], values, 3, MEMORY[0x1E695E9C0]);
  for (j = 0; j < 3; ++j)
  {
    CFRelease(values[j]);
  }

  v11 = 0;
  cf = 0;
  v10 = v7;
  if (a2[8])
  {
    v4 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = *MEMORY[0x1E695E4C0];
  }

  v11 = v4;
  v3 = MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, a2);
  v5 = CFDictionaryCreate(*v3, keys, &v10, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(cf);
  CFRelease(v10);
  *MEMORY[0x1E69E9840];
  return v5;
}

const __CFNumber *AABC::readOutlierRemovalFromDictionary(uint64_t a1, const __CFDictionary *a2, BOOL *a3)
{
  Value = CFDictionaryGetValue(a2, @"enabled");
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFBooleanGetTypeID())
    {
      *a3 = CFBooleanGetValue(Value) != 0;
    }
  }

  v11 = CFDictionaryGetValue(a2, @"badCurvesToStick");
  if (v11)
  {
    v8 = CFGetTypeID(v11);
    if (v8 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v11, kCFNumberIntType, a3 + 4);
    }
  }

  v12 = CFDictionaryGetValue(a2, @"revertTime");
  if (v12)
  {
    v7 = CFGetTypeID(v12);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v12, kCFNumberDoubleType, a3 + 8);
    }
  }

  v13 = CFDictionaryGetValue(a2, @"resetTime");
  if (v13)
  {
    v6 = CFGetTypeID(v13);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v13, kCFNumberDoubleType, a3 + 24);
    }
  }

  result = CFDictionaryGetValue(a2, @"displayOffTime");
  v14 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    TypeID = CFNumberGetTypeID();
    result = v5;
    if (v5 == TypeID)
    {
      return CFNumberGetValue(v14, kCFNumberDoubleType, a3 + 16);
    }
  }

  return result;
}

const __CFNumber *AABC::readCurveDescriptorFromDictionary(uint64_t a1, const __CFDictionary *a2, _DWORD *a3)
{
  Value = CFDictionaryGetValue(a2, @"timestamps");
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(Value);
      for (idx = 0; idx < Count && idx < 3; ++idx)
      {
        cf = CFArrayGetValueAtIndex(Value, idx);
        if (cf)
        {
          v7 = CFGetTypeID(cf);
          if (v7 == CFNumberGetTypeID())
          {
            CFNumberGetValue(cf, kCFNumberDoubleType, &a3[2 * idx + 2]);
          }
        }
      }
    }
  }

  v13 = CFDictionaryGetValue(a2, @"reverted");
  if (v13)
  {
    v6 = CFGetTypeID(v13);
    if (v6 == CFBooleanGetTypeID())
    {
      a3[8] = CFBooleanGetValue(v13);
    }
  }

  result = CFDictionaryGetValue(a2, @"badCurves");
  v14 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    TypeID = CFNumberGetTypeID();
    result = v5;
    if (v5 == TypeID)
    {
      return CFNumberGetValue(v14, kCFNumberIntType, a3);
    }
  }

  return result;
}

void AABC::readCurveFromDictionary(uint64_t a1, const __CFDictionary *a2, float *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = a1;
  v33 = a2;
  v32 = a3;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a2, @"version");
  if (Value)
  {
    v19 = CFGetTypeID(Value);
    if (v19 == CFNumberGetTypeID())
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }
  }

  if (valuePtr < *(a1 + 736) || valuePtr > 6)
  {
    if (_logHandle)
    {
      v4 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v35, valuePtr);
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_INFO, "unsupported curve version %d", v35, 8u);
    }
  }

  else
  {
    v29 = *(a1 + 524);
    v28 = *(v32 + 4);
    v27 = *(v32 + 6);
    v26 = *(v32 + 5);
    v25 = *(v32 + 7);
    v24 = *v32;
    v23 = *(v32 + 1);
    v22 = *(v32 + 2);
    v21 = *(v32 + 3);
    Value = CFDictionaryGetValue(v33, @"S");
    if (Value)
    {
      v18 = CFGetTypeID(Value);
      if (v18 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v29);
      }
    }

    Value = CFDictionaryGetValue(v33, @"E1");
    if (Value)
    {
      v17 = CFGetTypeID(Value);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v28);
      }
    }

    Value = CFDictionaryGetValue(v33, @"L1");
    if (Value)
    {
      v16 = CFGetTypeID(Value);
      if (v16 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v27);
      }
    }

    Value = CFDictionaryGetValue(v33, @"E2");
    if (Value)
    {
      v15 = CFGetTypeID(Value);
      if (v15 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v26);
      }
    }

    Value = CFDictionaryGetValue(v33, @"L2");
    if (Value)
    {
      v14 = CFGetTypeID(Value);
      if (v14 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v25);
      }
    }

    Value = CFDictionaryGetValue(v33, @"E0a");
    if (Value)
    {
      v13 = CFGetTypeID(Value);
      if (v13 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v24);
      }
    }

    Value = CFDictionaryGetValue(v33, @"L0a");
    if (Value)
    {
      v12 = CFGetTypeID(Value);
      if (v12 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v23);
      }
    }

    Value = CFDictionaryGetValue(v33, @"E0b");
    if (Value)
    {
      v11 = CFGetTypeID(Value);
      if (v11 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v22);
      }
    }

    Value = CFDictionaryGetValue(v33, @"L0b");
    if (Value)
    {
      v10 = CFGetTypeID(Value);
      if (v10 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &v21);
      }
    }

    *(a1 + 524) = v29;
    *(v32 + 4) = v28;
    *(v32 + 6) = v27;
    *(v32 + 5) = v26;
    *(v32 + 7) = v25;
    *v32 = v24;
    *(v32 + 1) = v23;
    *(v32 + 2) = v22;
    *(v32 + 3) = v21;
    if (_logHandle)
    {
      v9 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v8 = init_default_corebrightness_log();
      }

      v9 = v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v37, COERCE__INT64(v32[4]), COERCE__INT64(v32[6]), COERCE__INT64(v32[5]), COERCE__INT64(v32[7]));
      _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f", v37, 0x2Au);
    }

    if (_logHandle)
    {
      v7 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v6 = init_default_corebrightness_log();
      }

      v7 = v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v36, COERCE__INT64(*v32), COERCE__INT64(v32[1]), COERCE__INT64(v32[2]), COERCE__INT64(v32[3]));
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v36, 0x2Au);
    }

    Value = CFDictionaryGetValue(v33, @"Prefs");
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFDictionaryGetTypeID())
      {
        AABC::readCurvePrefsFromDictionary(a1, Value, (v32 + 8));
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t AABC::writeOutlierRemovalPreferences(uint64_t this, int a2)
{
  if (*(this + 3376))
  {
    CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]);
    if (a2)
    {
      value = *MEMORY[0x1E695E4D0];
    }

    else
    {
      value = *MEMORY[0x1E695E4C0];
    }

    v2 = MEMORY[0x1E695E8A8];
    CFPreferencesSetAppValue(@"CBCurveSticks", value, *MEMORY[0x1E695E8A8]);
    return CFPreferencesAppSynchronize(*v2);
  }

  return this;
}

uint64_t __os_log_helper_16_2_3_4_0_8_64_8_64(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void AABC::setInternalProperty(AABC *this, __CFString *a2, void *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v68 = this;
  key = a2;
  value = a3;
  if (_logHandle)
  {
    v34 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v34 = inited;
  }

  oslog = v34;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_4_0_8_64_8_64(v78, 2, key, value);
    _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "[%x]: key=%@ property=%@", v78, 0x1Cu);
  }

  if (*(this + 92))
  {
    CFDictionarySetValue(*(this + 48), key, value);
    if (CFEqual(key, @"ALSSpikeFilterDuration"))
    {
      v32 = CFGetTypeID(value);
      if (v32 == CFNumberGetTypeID())
      {
        CFNumberGetValue(value, kCFNumberFloatType, this + 3452);
        if (_logHandle)
        {
          v31 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v30 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v30 = init_default_corebrightness_log();
          }

          v31 = v30;
        }

        v63 = v31;
        v62 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_8_0(v77, 2, COERCE__INT64(*(this + 863)));
          _os_log_debug_impl(&dword_1DE8E5000, v63, v62, "[%x]: updated spike filter history %fs", v77, 0x12u);
        }

        CFDictionaryApplyFunction(*(this + 52), AABC::ClearHistoryFunction, this);
      }
    }

    else if (CFEqual(key, @"ALSMaxBrightenDuration"))
    {
      if (_logHandle)
      {
        v29 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v28 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v28 = init_default_corebrightness_log();
        }

        v29 = v28;
      }

      v61 = v29;
      v60 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_4_0_8_64_8_64(v76, 2, key, value);
        _os_log_debug_impl(&dword_1DE8E5000, v61, v60, "[%x]: ALSMaxBrightenDuration key=%@ property=%@", v76, 0x1Cu);
      }

      v27 = CFGetTypeID(value);
      if (v27 == CFNumberGetTypeID())
      {
        if (_logHandle)
        {
          v26 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v25 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v25 = init_default_corebrightness_log();
          }

          v26 = v25;
        }

        v59 = v26;
        v58 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_3_4_0_8_64_8_64(v75, 2, key, value);
          _os_log_debug_impl(&dword_1DE8E5000, v59, v58, "[%x]: ALSMaxBrightenDuration2 key=%@ property=%@", v75, 0x1Cu);
        }

        CFNumberGetValue(value, kCFNumberFloatType, this + 3456);
        PerceptualLuminanceThresholding::SetBrightenDuration(*(this + 479), *(this + 864));
      }
    }

    else if (CFEqual(key, @"ALSMaxDimDuration"))
    {
      if (_logHandle)
      {
        v24 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v23 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v23 = init_default_corebrightness_log();
        }

        v24 = v23;
      }

      v57 = v24;
      v56 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_4_0_8_64_8_64(v74, 2, key, value);
        _os_log_debug_impl(&dword_1DE8E5000, v57, v56, "[%x]: ALSMaxDimDuration key=%@ property=%@", v74, 0x1Cu);
      }

      v22 = CFGetTypeID(value);
      if (v22 == CFNumberGetTypeID())
      {
        CFNumberGetValue(value, kCFNumberFloatType, this + 3460);
        PerceptualLuminanceThresholding::SetMaxDimDuration(*(this + 479), *(this + 865));
      }
    }

    else if (CFEqual(key, @"ALSBrightenPdeltaSlow"))
    {
      if (_logHandle)
      {
        v21 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v20 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v20 = init_default_corebrightness_log();
        }

        v21 = v20;
      }

      v55 = v21;
      v54 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_4_0_8_64_8_64(v73, 2, key, value);
        _os_log_debug_impl(&dword_1DE8E5000, v55, v54, "[%x]: ALSBrightenPdeltaSlow key=%@ property=%@", v73, 0x1Cu);
      }

      v19 = CFGetTypeID(value);
      if (v19 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(value, kCFNumberFloatType, &valuePtr))
        {
          *(this + 954) = valuePtr;
          *(this + 955) = valuePtr;
          PerceptualLuminanceThresholding::SetPthresholdBrighten(*(this + 479), valuePtr);
        }
      }
    }

    else if (CFEqual(key, @"PLT_X") || CFEqual(key, @"PLT_Y") || CFEqual(key, @"PLT_Z"))
    {
      v18 = CFGetTypeID(value);
      if (v18 == CFNumberGetTypeID())
      {
        v52 = 0.0;
        if (CFNumberGetValue(value, kCFNumberFloatType, &v52))
        {
          (***(this + 479))(*(this + 479), key, v52);
        }
      }
    }

    else if (CFEqual(key, @"ALSBrightenPdeltaFast"))
    {
      if (_logHandle)
      {
        v17 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v16 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v16 = init_default_corebrightness_log();
        }

        v17 = v16;
      }

      v51 = v17;
      v50 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_4_0_8_64_8_64(v72, 2, key, value);
        _os_log_debug_impl(&dword_1DE8E5000, v51, v50, "[%x]: ALSBrightenPdeltaFast key=%@ property=%@", v72, 0x1Cu);
      }

      v15 = CFGetTypeID(value);
      if (v15 == CFNumberGetTypeID())
      {
        v49 = 0;
        if (CFNumberGetValue(value, kCFNumberFloatType, &v49))
        {
          *(this + 953) = v49;
        }
      }
    }

    else if (CFEqual(key, @"ALSDimPdeltaSlow"))
    {
      if (_logHandle)
      {
        v14 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v13 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v13 = init_default_corebrightness_log();
        }

        v14 = v13;
      }

      v48 = v14;
      v47 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_4_0_8_64_8_64(v71, 2, key, value);
        _os_log_debug_impl(&dword_1DE8E5000, v48, v47, "[%x]: ALSDimPdeltaSlow key=%@ property=%@", v71, 0x1Cu);
      }

      v12 = CFGetTypeID(value);
      if (v12 == CFNumberGetTypeID())
      {
        v46 = 0.0;
        if (CFNumberGetValue(value, kCFNumberFloatType, &v46))
        {
          *(this + 951) = v46;
          *(this + 952) = v46;
          PerceptualLuminanceThresholding::SetPthresholdDim(*(this + 479), v46);
        }
      }
    }

    else if (CFEqual(key, @"ALSRampLuxThreshold"))
    {
      if (_logHandle)
      {
        v11 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      v45 = v11;
      v44 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_4_0_8_64_8_64(v70, 2, key, value);
        _os_log_debug_impl(&dword_1DE8E5000, v45, v44, "[%x]: ALSRampLuxThreshold key=%@ property=%@", v70, 0x1Cu);
      }

      v9 = CFGetTypeID(value);
      if (v9 == CFNumberGetTypeID())
      {
        v43 = 0;
        if (CFNumberGetValue(value, kCFNumberFloatType, &v43))
        {
          *(this + 956) = v43;
        }
      }
    }

    else if (CFEqual(key, @"ALSDimPolicy"))
    {
      v8 = CFGetTypeID(value);
      if (v8 == CFNumberGetTypeID())
      {
        v42 = 0;
        CFNumberGetValue(value, kCFNumberSInt32Type, &v42);
        *(this + 860) = v42;
        AABC::SetALSDimPolicy(this, *(this + 860));
        cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, this + 3440);
        if (cf)
        {
          CFDictionarySetValue(*(this + 48), @"ALSDimPolicy", cf);
          CFRelease(cf);
        }
      }
    }

    else if (CFEqual(key, @"ALSLockScreenAutoBrightness"))
    {
      *(this + 862) = GetCFBooleanValue(value);
      if (_logHandle)
      {
        v7 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v6 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v6 = init_default_corebrightness_log();
        }

        v7 = v6;
      }

      v40 = v7;
      v39 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_4_0_4_0(v69, 2, *(this + 862));
        _os_log_debug_impl(&dword_1DE8E5000, v40, v39, "[%x]: _settings._internal._lockScreenAutoBrightness=%x", v69, 0xEu);
      }
    }

    else if (CFEqual(key, @"AutoBrightnessProxEnabled"))
    {
      *(this + 3757) = GetCFBooleanValue(value) != 0;
    }

    else if (CFEqual(key, @"AutoBrightnessProxDelay"))
    {
      v5 = CFGetTypeID(value);
      if (v5 == CFNumberGetTypeID())
      {
        v38 = *(this + 940);
        if (CFNumberGetValue(value, kCFNumberFloatType, &v38))
        {
          *(this + 940) = v38;
        }
      }
    }

    else if (CFEqual(key, @"AutoBrightnessLogMask"))
    {
      v4 = CFGetTypeID(value);
      if (v4 == CFNumberGetTypeID())
      {
        v37 = *(this + 79);
        if (CFNumberGetValue(value, kCFNumberIntType, &v37))
        {
          *(this + 79) = v37 | 1;
        }
      }
    }

    else if (CFEqual(key, @"AutoBrightnessLuxFilter"))
    {
      v3 = CFGetTypeID(value);
      if (v3 == CFNumberGetTypeID())
      {
        v36 = *(this + 866);
        if (CFNumberGetValue(value, kCFNumberIntType, &v36))
        {
          if ((v36 & 0x80000000) == 0 && v36 <= 3)
          {
            *(this + 866) = v36;
          }
        }
      }
    }

    else if (CFEqual(key, @"AutoBrightnessResetAllLuxFilters"))
    {
      if (*(this + 264))
      {
        AABC::resetMovingAverage(this);
      }

      if (*(this + 161))
      {
        AABC::resetFilter(this, this + 27);
        *(this + 162) = 0;
      }

      AABC::resetMedianFilter(this);
    }
  }

  *MEMORY[0x1E69E9840];
}

void AABC::ClearHistoryFunction(AABC *this, __IOHIDServiceClient *a2, AABC::ALS *a3, AABC *a4)
{
  std::vector<float>::resize(a2 + 12, 0);
  if (*(a3 + 162))
  {
    if (*(a3 + 163) > 0.0 && *(a3 + 167) == 3 || *(a3 + 164) > 0.0 && *(a3 + 167) == 2 || *(a3 + 165) > 0.0 && *(a3 + 167) == 1)
    {
      *(a2 + 22) = (*(a3 + 863) / *(a3 + 158));
    }

    else
    {
      *(a2 + 22) = 0;
    }
  }

  else
  {
    *(a2 + 22) = (*(a3 + 863) / *(a3 + 158));
  }

  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  std::vector<float>::resize(a2 + 12, *(a2 + 22));
}

void std::vector<float>::resize(void *a1, unint64_t a2)
{
  v3 = std::vector<float>::size[abi:de200100](a1);
  if (v3 >= a2)
  {
    if (v3 > a2)
    {
      std::vector<float>::__destruct_at_end[abi:de200100](a1, *a1 + 4 * a2);
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v3);
  }
}

uint64_t AABC::SetALSDimPolicy(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 3444) = a2;
  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_4_0(v7, *(a1 + 3444));
    _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_INFO, "_settings._internal._dimPolicy=%x", v7, 8u);
  }

  v3 = *(a1 + 3444);
  if (v3)
  {
    if (v3 != 1)
    {
      switch(v3)
      {
        case 2:
          *(a1 + 3772) = 0;
          *(a1 + 3776) = 0;
          *(a1 + 3784) = 0;
          goto LABEL_22;
        case 3:
          goto LABEL_21;
        case 5:
        case 4:
          goto LABEL_22;
      }

      if (v3 != 7 && v3 != 6)
      {
LABEL_21:
        *(a1 + 3444) = 3;
        goto LABEL_22;
      }
    }

    *(a1 + 3772) = 0;
    *(a1 + 3776) = 0;
    *(a1 + 3784) = 0;
  }

LABEL_22:
  if (*(a1 + 3444) == 4 || *(a1 + 3444) == 5)
  {
    *(a1 + 3808) = 1045220557;
  }

  else
  {
    *(a1 + 3808) = *(a1 + 3804);
  }

  result = PerceptualLuminanceThresholding::SetPthresholdDim(*(a1 + 3832), *(a1 + 3808));
  *MEMORY[0x1E69E9840];
  return result;
}

void AABC::resetFilter(uint64_t a1, uint64_t *a2)
{
  v10 = a1;
  v9 = a2;
  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  v8 = v5;
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "RESETTING filter", v6, 2u);
  }

  std::vector<float>::clear[abi:de200100](v9);
  *(v9 + 20) = 0;
}

void AABC::UpdateSensorOverride(AABC *this, __IOHIDServiceClient *a2, AABC::ALS *a3, const void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  valuePtr = -1.0;
  v11 = CFGetTypeID(a3);
  if (v11 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
  }

  else
  {
    v10 = CFGetTypeID(v16);
    if (v10 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v16, @"AABSensorOverrideOrientation");
      v12 = CFDictionaryGetValue(v16, @"AABSensorOverrideValue");
      if (Value)
      {
        if (v12)
        {
          v9 = CFGetTypeID(Value);
          if (v9 == CFNumberGetTypeID())
          {
            v8 = CFGetTypeID(v12);
            if (v8 == CFNumberGetTypeID())
            {
              CFNumberGetValue(Value, kCFNumberIntType, &v15);
              CFNumberGetValue(v12, kCFNumberFloat32Type, &valuePtr);
            }
          }
        }
      }
    }
  }

  if (!v15 || *(v17 + 1) == v15)
  {
    if (valuePtr < 0.0)
    {
      *(v17 + 76) = 0;
      if (_logHandle)
      {
        v5 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v5 = inited;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v19, v15);
        _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Disable sensor override for ALS with orientation %d", v19, 8u);
      }
    }

    else
    {
      *(v17 + 18) = valuePtr;
      *(v17 + 76) = 1;
      if (_logHandle)
      {
        v7 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v6 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v6 = init_default_corebrightness_log();
        }

        v7 = v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_4_0_8_0(v20, v15, COERCE__INT64(valuePtr));
        _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "ALS with orientation %d has been overridden to %f Lux.", v20, 0x12u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void AABC::CancelRamp(AABC *this)
{
  if (*(this + 126) && *(this + 125) && (*(this + 628) & 1) != 0)
  {
    DisplayCancelVirtualFade(*(this + 50));
  }
}

void AABC::handleAODStateUpdateProperty(uint64_t a1, int a2, float a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v37 = a2;
  v36 = a3;
  BrightnessMinPhysical = _DisplayGetBrightnessMinPhysical(*(a1 + 400));
  AABC::NotifyCPMSWhenDisplayChangeState(a1, v37 == 0);
  if (v37 == 1)
  {
    *(a1 + 2876) = 2;
    if (*(a1 + 676))
    {
      AABC::CancelFastRampMode(a1);
    }

    if (*(a1 + 3880) && ([*(a1 + 3880) isActive] & 1) != 0)
    {
      [*(a1 + 3880) action:0];
      DisplaySetProperty(*(a1 + 400), @"CBSoftWakeActive", &unk_1F59C9390);
    }

    AABC::CancelFirstSampleTimeout(a1);
    *(a1 + 620) = DisplayGetLogicalBrightness(*(a1 + 400));
    v34 = AABC::LuminanceToIlluminance(a1, (a1 + 1056), *(a1 + 620));
    v33 = AABC::IlluminanceToLuminance(a1, v34, (a1 + 2548));
    if (v33 >= *(a1 + 620))
    {
      if (*(a1 + 624) < v34)
      {
        v33 = AABC::IlluminanceToLuminance(a1, *(a1 + 624), (a1 + 2548));
        if (_logHandle)
        {
          v18 = _logHandle;
        }

        else
        {
          v17 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v18 = v17;
        }

        v32 = v18;
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_8_0_8_0(v42, COERCE__INT64(*(a1 + 624)), COERCE__INT64(v33));
          _os_log_impl(&dword_1DE8E5000, v32, v31, "Target AOT Brightness >= Current brightness ; Using _Eprevious(: %f) instead: %f", v42, 0x16u);
        }
      }

      if (v33 > *(a1 + 620))
      {
        v33 = *(a1 + 620);
        if (_logHandle)
        {
          v16 = _logHandle;
        }

        else
        {
          v15 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v16 = v15;
        }

        v30 = v16;
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v41, COERCE__INT64(v33));
          _os_log_impl(&dword_1DE8E5000, v30, v29, "Target AOT Brightness >= Current brightness ; Capping to Current Brightness: %f", v41, 0xCu);
        }
      }
    }

    *(a1 + 2880) = *(a1 + 620);
    if (*(a1 + 512))
    {
      if (*(a1 + 444))
      {
        v33 = 200.0;
      }

      DisplaySetLogicalBrightnessWithFade(*(a1 + 400), 12296, AABC::_RampDoneCallback, a1, v33, v36);
    }

    else
    {
      AABC::SetBrightness(a1, v33, v36, 10, AABC::_RampDoneCallback, a1);
    }
  }

  else if (!v37)
  {
    v28 = 0.0;
    v27 = 0.0;
    v26 = 0.0;
    v25 = 0;
    v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
    v24 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v23, @"AOTState", 0}];
    AABC::setAlwaysOnProperty(a1, &cfstr_Aotstate.isa, v24);
    IOHIDServiceClientSetProperty(*(a1 + 320), @"AODALSMode", *MEMORY[0x1E695E4C0]);
    MEMORY[0x1E69E5920](v24);
    *&v3 = MEMORY[0x1E69E5920](v23).n128_u64[0];
    v22 = *(a1 + 2876);
    *(a1 + 2876) = 3;
    if (*(a1 + 512))
    {
      v27 = *(a1 + 2880);
      DisplaySetLogicalBrightnessWithFade(*(a1 + 400), 12296, AABC::_RampDoneCallback, a1, v27, v36);
    }

    else
    {
      v21 = 1;
      [*(a1 + 4000) sendCommand:230 inputBuffer:&v21 inputBufferSize:{1, v3}];
      v4 = *(a1 + 320);
      v25 = IOHIDServiceClientCopyEvent();
      if (v25)
      {
        if (*(a1 + 3756))
        {
          IOHIDEventGetDoubleValue();
          *&v5 = v5;
          IntegerValue = *&v5;
        }

        else
        {
          IntegerValue = IOHIDEventGetIntegerValue();
        }

        v26 = IntegerValue;
        CFRelease(v25);
      }

      *(a1 + 624) = v26;
      v6 = AABC::IlluminanceToLuminance(a1, (a1 + 1056), v26);
      v27 = fmaxf(BrightnessMinPhysical, v6);
      BrightnessMaxPhysical = _DisplayGetBrightnessMaxPhysical(*(a1 + 400));
      v27 = fminf(BrightnessMaxPhysical, v27);
      if (v22 == 1)
      {
        v20 = [*(a1 + 4000) copyProperty:@"CurrentBrightness"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v20 intValue] / 65536.0;
          if (_logHandle)
          {
            v13 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              inited = init_default_corebrightness_log();
            }

            v13 = inited;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_1_8_0(v40, COERCE__INT64(v28));
            _os_log_debug_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEBUG, "Exiting AOT, CurrentAoTNits: %f", v40, 0xCu);
          }
        }

        else
        {
          if (_logHandle)
          {
            v11 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v10 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v10 = init_default_corebrightness_log();
            }

            v11 = v10;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v8 = [objc_msgSend(objc_opt_class() "description")];
            __os_log_helper_16_2_1_8_32(v39, v8);
            _os_log_error_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_ERROR, "Returned property is not an NSNumber!, class: %s", v39, 0xCu);
          }
        }

        MEMORY[0x1E69E5920](v20);
        v9 = v28;
        *(a1 + 616) = v28;
        *(a1 + 620) = v9;
        AABC::SetBrightness(a1, v28, 0.0, 12296, 0, 0);
      }

      *(a1 + 616) = v27;
      AABC::SetBrightness(a1, v27, v36, 10, AABC::_RampDoneCallback, a1);
    }
  }

  DisplaySetState(*(a1 + 400), v37 == 0);
  *MEMORY[0x1E69E9840];
}

uint64_t ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a1;
  v5 = *(a1 + 48);
  v31 = a3;
  v30 = [a3 valueForKey:@"lux"];
  v29 = [v31 valueForKey:@"nits"];
  v28 = [v30 count];
  *(v5 + 2056 + 164 * *(*(*(a1 + 40) + 8) + 24) + 160) = v28;
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:v28];
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:v28];
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke_2;
  v21 = &unk_1E867D008;
  v24 = v5;
  v25 = v28;
  v23 = *(a1 + 40);
  v22 = v27;
  [v30 enumerateObjectsUsingBlock:?];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke_3;
  v12 = &unk_1E867D008;
  v15 = v5;
  v16 = v28;
  v14 = *(a1 + 40);
  v13 = v26;
  [v29 enumerateObjectsUsingBlock:?];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  [v7 setObject:v27 forKey:@"Lux"];
  [v7 setObject:v26 forKey:@"Nits"];
  [*(a1 + 32) setObject:v7 forKey:v35];
  result = a1;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v25 = *MEMORY[0x1E69E9840];
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a1;
  v12 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 56);
  v19 = &v12;
  v14 = &v12 - ((4 * v4 + 15) & 0x7F0);
  v18 = v5;
  [a2 floatValue];
  v6 = v13;
  v7 = v14;
  v17 = v8;
  *(v12 + 164 * *(*(*(v13 + 40) + 8) + 24) + 4 * v22 + 2056) = v8;
  *&v7[4 * v22] = vcvts_n_s32_f32(v17, 0x10uLL);
  v15 = *(v6 + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:*&v7[4 * v22]];
  result = [v15 addObject:v9];
  v16 = v19;
  v11 = __OFSUB__(*MEMORY[0x1E69E9840], v25);
  return result;
}

uint64_t ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v25 = *MEMORY[0x1E69E9840];
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a1;
  v12 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 56);
  v19 = &v12;
  v14 = &v12 - ((4 * v4 + 15) & 0x7F0);
  v18 = v5;
  [a2 floatValue];
  v6 = v13;
  v7 = v14;
  v17 = v8;
  *(v12 + 164 * *(*(*(v13 + 40) + 8) + 24) + 4 * v22 + 2136) = v8;
  *&v7[4 * v22] = vcvts_n_s32_f32(v17, 0x10uLL);
  v15 = *(v6 + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:*&v7[4 * v22]];
  result = [v15 addObject:v9];
  v16 = v19;
  v11 = __OFSUB__(*MEMORY[0x1E69E9840], v25);
  return result;
}

uint64_t __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = 0;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a6;
  return result;
}

void *AABC::AlignCurveTypeWithStrategy(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  result = (*(**(a1 + 64) + 104))(*(a1 + 64));
  if (result == 3 && v11[24] == 3 || (result = (*(**(a1 + 64) + 104))(*(a1 + 64)), result == 2) && v11[24] == 2 || (result = (*(**(a1 + 64) + 104))(*(a1 + 64)), result == 3) && !v12[24])
  {
    v10 = 1;
  }

  if (v10)
  {
    if (_logHandle)
    {
      v5 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v5 = inited;
    }

    v9 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_4_0_4_0(v14, v12[24], v11[24]);
      _os_log_impl(&dword_1DE8E5000, v9, v8, "Switch curve with alternative curve in order to align curves with update curve strategies. Curve = %d, Alternative curve = %d.", v14, 0xEu);
    }

    memcpy(__dst, v11, sizeof(__dst));
    memcpy(v11, v12, 0x68uLL);
    result = memcpy(v12, __dst, 0x68uLL);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AABC::getCurveUpdatesFromArray@<X0>(AABC *this@<X0>, objc_object *a2@<X1>, void *a3@<X8>)
{
  v15 = a3;
  v14 = this;
  v13 = a2;
  v5 = 0;
  v6 = &v5;
  v7 = 301989888;
  v8 = 72;
  v9 = __Block_byref_object_copy__18;
  v10 = __Block_byref_object_dispose__18;
  v11 = 0;
  std::list<AAB::CurveUpdate>::list[abi:de200100](v12);
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 enumerateObjectsUsingBlock:?];
    }
  }

  std::list<AAB::CurveUpdate>::list(a3, (v6 + 6));
  _Block_object_dispose(&v5, 8);
  return std::list<AAB::CurveUpdate>::~list(v12);
}

void AABC::revertToGoodCurve(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v24 = a2;
  memcpy((a1 + 1056), (a1 + 2904), 0x68uLL);
  if (((*(**(a1 + 64) + 64))(*(a1 + 64), a1 + 2904) & 1) == 0)
  {
    if (_logHandle)
    {
      v16 = _logHandle;
    }

    else
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v16 = v15;
    }

    oslog = v16;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v14 = type;
      __os_log_helper_16_0_0(v21);
      _os_log_impl(&dword_1DE8E5000, log, v14, "Baseline curve strategy does not have the capped curve available -> use default.", v21, 2u);
    }
  }

  memcpy((a1 + 1056), (a1 + 2904), 0x68uLL);
  if (((*(**(a1 + 64) + 72))(*(a1 + 64), a1 + 3112) & 1) == 0)
  {
    if (_logHandle)
    {
      v12 = _logHandle;
    }

    else
    {
      v11 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v12 = v11;
    }

    v20 = v12;
    v19 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v9 = v20;
      v10 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_1DE8E5000, v9, v10, "Alternative curve strategy does not have the alternative capped curve available -> use default.", v18, 2u);
    }
  }

  memcpy((a1 + 3008), (a1 + 3112), 0x68uLL);
  if (_logHandle)
  {
    v8 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v8 = inited;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_10_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v28, COERCE__INT64(*(a1 + 3112)), COERCE__INT64(*(a1 + 3120)), COERCE__INT64(*(a1 + 3128)), COERCE__INT64(*(a1 + 3132)), COERCE__INT64(*(a1 + 3116)), COERCE__INT64(*(a1 + 3124)), COERCE__INT64(*(a1 + 3136)), COERCE__INT64(*(a1 + 3140)), COERCE__INT64(*(a1 + 3196)), *(a1 + 3208));
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "revert alternative curve to alternative good curve: E0a %f, E0b %f, E1 %f, E2 %f, L0a %f, L0b %f, L1 %f, L2 %f, thirdSlope %f, type %d", v28, 0x62u);
  }

  if (_logHandle)
  {
    v6 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v5 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v5 = init_default_corebrightness_log();
    }

    v6 = v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_10_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v27, COERCE__INT64(*(a1 + 2904)), COERCE__INT64(*(a1 + 2912)), COERCE__INT64(*(a1 + 2920)), COERCE__INT64(*(a1 + 2924)), COERCE__INT64(*(a1 + 2908)), COERCE__INT64(*(a1 + 2916)), COERCE__INT64(*(a1 + 2928)), COERCE__INT64(*(a1 + 2932)), COERCE__INT64(*(a1 + 2988)), *(a1 + 3000));
    _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "revert curve to good curve: E0a %f, E0b %f, E1 %f, E2 %f, L0a %f, L0b %f, L1 %f, L2 %f, thirdSlope %f, type %d", v27, 0x62u);
  }

  if (_logHandle)
  {
    v4 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v3 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v3 = init_default_corebrightness_log();
    }

    v4 = v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    updated = AABCurveUpdateReasonToString(v24);
    __os_log_helper_16_2_1_8_66(v26, updated);
    _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "[Revert curve] %{public}@", v26, 0xCu);
  }

  AABC::setAABCurveUpdateReason(a1, v24);
  *MEMORY[0x1E69E9840];
}

void AABC::readOutlierRemovalPreferences(AABC *this)
{
  if (*(this + 3376))
  {
    v2 = MEMORY[0x1E695E8A8];
    CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]);
    cf = CFPreferencesCopyAppValue(@"CBCurveSticks", *v2);
    if (cf)
    {
      v1 = CFGetTypeID(cf);
      if (v1 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(cf))
        {
          *(this + 834) = *(this + 845);
        }
      }

      CFRelease(cf);
    }
  }
}

uint64_t ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke_742(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 24))
    {
      return [*(a3 + 24) setProperty:*(result + 32) forKey:*(result + 40)];
    }
  }

  return result;
}

void AABC::UpdateAutoBrightnessEnabledStatus(AABC *this, const __CFNumber *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = this;
  v11 = a2;
  CFBooleanValue = GetCFBooleanValue(a2);
  AABC::reportAutoBrightnessChangeToCoreAnalytics(this, CFBooleanValue != 0);
  if (_logHandle)
  {
    v4 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v4 = inited;
  }

  v9 = v4;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v13, CFBooleanValue);
    _os_log_impl(&dword_1DE8E5000, v9, v8, "autoBrightnessEnabled=%x", v13, 8u);
  }

  *(this + 128) = CFBooleanValue == 0;
  v7 = CFBooleanValue != 0;
  v6 = 0;
  DisplayUpdateAAPState(*(this + 50), &v6, 1, 1);
  if (CFBooleanValue)
  {
    *(this + 126) = 0;
  }

  AABC::SetAutoBrightnessState(this, CFBooleanValue);
  if (*(this + 128))
  {
    AABC::_UpdateNitsRestrictions(this, *(this + 135), -1.0, 1);
  }

  if (*(this + 43))
  {
    if (CFBooleanValue)
    {
      v2 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v2 = *MEMORY[0x1E695E4C0];
    }

    (*(this + 43))(*(this + 44), @"DisplayBrightnessAuto", v2);
  }

  *MEMORY[0x1E69E9840];
}

void AABC::SetDisplayOrientation(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 704) = a2;
  if (_logHandle)
  {
    v3 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v3 = inited;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_4_0_8_32_4_0(v5, 4, (&kOrientationString)[a2], a2);
    _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "[%x]: orientation=%s (%x)", v5, 0x18u);
  }

  *MEMORY[0x1E69E9840];
}

void AABC::SetUserBrightness(AABC *this, float a2, int a3)
{
  v131 = *MEMORY[0x1E69E9840];
  v113 = this;
  v112 = a2;
  v111 = a3;
  if (_logHandle)
  {
    v47 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v47 = inited;
  }

  oslog = v47;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v130, 4);
    _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "[%x]: ", v130, 8u);
  }

  if (*(this + 3328))
  {
    AABC::CancelFastRampMode(this);
  }

  if ([*(this + 486) isAmbrosiaLevel])
  {
    v108 = AABC::UserSliderToAmbrosiaReduction(this, v112);
    if (v108 > *(this + 961))
    {
      if (*(this + 481))
      {
        v45 = *(this + 481);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v44 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v44 = init_default_corebrightness_log();
        }

        v45 = v44;
      }

      v107 = v45;
      v106 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v129, COERCE__INT64(*(this + 961)), COERCE__INT64(v108));
        _os_log_impl(&dword_1DE8E5000, v107, v106, "Updating Ambrosia reduction. ambrosia_factor=%f slider_value=%f", v129, 0x16u);
      }

      AABC::UpdateAmbrosiaFactor(this, v108);
    }

    v105 = AABC::AmbrosiaReductionToUserSlider(this, *(this + 961));
    if (*(this + 481))
    {
      v43 = *(this + 481);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v42 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v42 = init_default_corebrightness_log();
      }

      v43 = v42;
    }

    v104 = v43;
    v103 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v128, COERCE__INT64(v112), COERCE__INT64(*(this + 961)), COERCE__INT64((v112 / v105)));
      _os_log_impl(&dword_1DE8E5000, v104, v103, "Scaling user slider. slider_value=%f ambrosia_factor=%f scaled=%f", v128, 0x20u);
    }

    v112 = v112 / v105;
  }

  *(this + 131) = v112;
  if (_logHandle)
  {
    v41 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v40 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v40 = init_default_corebrightness_log();
    }

    v41 = v40;
  }

  v102 = v41;
  v101 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_4_0_8_0(v127, 2, COERCE__INT64(*(this + 131)));
    _os_log_debug_impl(&dword_1DE8E5000, v102, v101, "[%x]: _S=%f", v127, 0x12u);
  }

  if (!*(this + 128))
  {
    v100 = *(this + 155);
    if (*(this + 50))
    {
      v100 = DisplaySliderToLogicalBrightness(*(this + 50), *(this + 131));
    }

    v3 = v100;
    *(this + 155) = v100;
    *(this + 154) = v3;
    if (*(this + 121) == 1.0)
    {
      memcpy(__dst, this + 1056, sizeof(__dst));
      if (v111)
      {
        memset(__b, 0, sizeof(__b));
        backtrace(__b, 20);
        memset(v125, 0, sizeof(v125));
        __str = v125;
        for (i = 0; i < 20 && __b[i]; ++i)
        {
          snprintf(__str, 0x100uLL, "%p ", __b[i]);
        }

        if (_logHandle)
        {
          v39 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v38 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v38 = init_default_corebrightness_log();
          }

          v39 = v38;
        }

        v96 = v39;
        v95 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          if (v111)
          {
            v4 = "commit";
          }

          else
          {
            v4 = ".";
          }

          __os_log_helper_16_2_4_8_0_8_0_8_0_8_32(v124, COERCE__INT64(*(this + 131)), COERCE__INT64(*(this + 135)), COERCE__INT64(v100), v4);
          _os_log_impl(&dword_1DE8E5000, v96, v95, "_S: %0.4f Esensor: %0.4f Luser: %0.4f %s", v124, 0x2Au);
        }

        if (_logHandle)
        {
          v37 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v36 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v36 = init_default_corebrightness_log();
          }

          v37 = v36;
        }

        v94 = v37;
        v93 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_32(v123, v125);
          _os_log_debug_impl(&dword_1DE8E5000, v94, v93, "backtrace=%s", v123, 0xCu);
        }

        if (*(this + 90) == 4)
        {
          AABC::UpdateState(this, 3);
          if ((*(this + 3376) & 1) != 0 && *(this + 834) && *(this + 834) < *(this + 845) && *(this + 842))
          {
            Current = CFAbsoluteTimeGetCurrent();
            v91 = 0;
            for (j = 0; j < *(this + 834); ++j)
            {
              if (Current > *(this + j + 418) + *(this + 425))
              {
                ++v91;
              }
            }

            if (v91)
            {
              v89 = 3 - v91;
              memmove(this + 3344, this + 8 * v91 + 3344, 8 * (3 - v91));
              bzero(this + 64 * (3 - v91) + 3344, 8 * v91);
              *(this + 834) -= v91;
              if (!*(this + 834))
              {
                AABC::revertToGoodCurve(this, 4);
                *(this + 842) = 0;
              }
            }
          }

          *(this + 943) = 0;
          *(this + 944) = 0;
          *(this + 151) = 0;
          *(this + 946) = *(this + 947);
          *(this + 140) = 0;
          AABC::_UpdateEsensorTrusted(this, *(this + 132));
          AABC::_UpdateEsensorFrontTrusted(this, *(this + 133));
          *(this + 152) = *(this + 135);
          if (*(this + 3916))
          {
            *(this + 980) = *(this + 135);
          }

          if (*(this + 3409))
          {
            if (*(this + 47))
            {
              v88 = AABC::IlluminanceToLuminance(this, this + 264, *(this + 135), *(this + 138));
              valuePtr = v100 - v88;
              v86 = AABC::IlluminanceToLuminance(this, this + 752, *(this + 135), *(this + 138));
              v85 = v100 - v86;
              if (_logHandle)
              {
                v35 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v34 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v34 = init_default_corebrightness_log();
                }

                v35 = v34;
              }

              v84 = v35;
              v83 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_0_10_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v122, COERCE__INT64(*(this + 135)), COERCE__INT64(*(this + 138)), COERCE__INT64(v88), COERCE__INT64(v100), COERCE__INT64(valuePtr), COERCE__INT64(*(this + 135)), COERCE__INT64(*(this + 138)), COERCE__INT64(v86), COERCE__INT64(v100), COERCE__INT64(v85));
                _os_log_impl(&dword_1DE8E5000, v84, v83, "Nits update: %f (capped %f) Lux => %f Nits -> %f Nits (Δ %f)\nAlternative Nits update: %f (capped %f) Lux => %f Nits -> %f Nits (Δ %f)", v122, 0x66u);
              }

              v33 = MEMORY[0x1E695E480];
              value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
              cf = CFNumberCreate(*v33, kCFNumberFloatType, &v85);
              CFDictionarySetValue(*(this + 47), @"AABCurveUpdateNitsDelta", value);
              CFDictionarySetValue(*(this + 47), @"AABCurveUpdateNitsDeltaAlternative", cf);
              CFRelease(value);
              CFRelease(cf);
            }

            LODWORD(v79) = *(this + 135);
            HIDWORD(v79) = *(this + 138);
            v80 = v100;
            v77 = v79;
            v78 = v100;
            AAB::UpdateCurve_Block3_WithCappedCurve_AlternativeCurve(this, __dst, this + 1192, this + 2904, this + 3008, this + 3112, *&v79, *(&v79 + 1), v100);
            if (_logHandle)
            {
              v32 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v31 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v31 = init_default_corebrightness_log();
              }

              v32 = v31;
            }

            v76 = v32;
            v75 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_8_4_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v121, *(this + 776), COERCE__INT64(*(this + 752)), COERCE__INT64(*(this + 753)), COERCE__INT64(*(this + 754)), COERCE__INT64(*(this + 755)), COERCE__INT64(*(this + 757)), COERCE__INT64(*(this + 759)), COERCE__INT64(*(this + 773)));
              _os_log_impl(&dword_1DE8E5000, v76, v75, "ALTERNATIVE CURVE [type = %d] - (%f, %f) - (%f, %f) - (%f, %f) - (%f)\n", v121, 0x4Eu);
            }

            if (_logHandle)
            {
              v30 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v29 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v29 = init_default_corebrightness_log();
              }

              v30 = v29;
            }

            v74 = v30;
            v73 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_8_4_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v120, *(this + 802), COERCE__INT64(*(this + 778)), COERCE__INT64(*(this + 779)), COERCE__INT64(*(this + 780)), COERCE__INT64(*(this + 781)), COERCE__INT64(*(this + 783)), COERCE__INT64(*(this + 785)), COERCE__INT64(*(this + 799)));
              _os_log_impl(&dword_1DE8E5000, v74, v73, "ALTERNATIVE GOOD CURVE [type = %d] - (%f, %f) - (%f, %f) - (%f, %f) - (%f)\n", v120, 0x4Eu);
            }

            if (_logHandle)
            {
              v28 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v27 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v27 = init_default_corebrightness_log();
              }

              v28 = v27;
            }

            v72 = v28;
            v71 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_8_4_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v119, SLODWORD(__dst[24]), COERCE__INT64(__dst[0]), COERCE__INT64(__dst[1]), COERCE__INT64(__dst[2]), COERCE__INT64(__dst[3]), COERCE__INT64(__dst[5]), COERCE__INT64(__dst[7]), COERCE__INT64(__dst[21]));
              _os_log_impl(&dword_1DE8E5000, v72, v71, "CURVE [type = %d] - (%f, %f) - (%f, %f) - (%f, %f) - (%f)\n", v119, 0x4Eu);
            }

            if (_logHandle)
            {
              v26 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v25 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v25 = init_default_corebrightness_log();
              }

              v26 = v25;
            }

            v70 = v26;
            v69 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_8_4_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v118, *(this + 750), COERCE__INT64(*(this + 726)), COERCE__INT64(*(this + 727)), COERCE__INT64(*(this + 728)), COERCE__INT64(*(this + 729)), COERCE__INT64(*(this + 731)), COERCE__INT64(*(this + 733)), COERCE__INT64(*(this + 747)));
              _os_log_impl(&dword_1DE8E5000, v70, v69, "GOOD CURVE [type = %d] - (%f, %f) - (%f, %f) - (%f, %f) - (%f)\n", v118, 0x4Eu);
            }

            if (_logHandle)
            {
              v24 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v23 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v23 = init_default_corebrightness_log();
              }

              v24 = v23;
            }

            v68 = v24;
            v67 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v117, COERCE__INT64(*(this + 272)), COERCE__INT64(*(this + 275)), COERCE__INT64(*(this + 273)), COERCE__INT64(*(this + 276)), COERCE__INT64(*(this + 274)), COERCE__INT64(*(this + 277)));
              _os_log_impl(&dword_1DE8E5000, v68, v67, "CURVE Prefs: (%f, %f), (%f, %f), (%f, %f)\n", v117, 0x3Eu);
            }

            if (_logHandle)
            {
              v22 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v21 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v21 = init_default_corebrightness_log();
              }

              v22 = v21;
            }

            v66 = v22;
            v65 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v116, COERCE__INT64(*(this + 734)), COERCE__INT64(*(this + 737)), COERCE__INT64(*(this + 735)), COERCE__INT64(*(this + 738)), COERCE__INT64(*(this + 736)), COERCE__INT64(*(this + 739)));
              _os_log_impl(&dword_1DE8E5000, v66, v65, "GOOD CURVE Prefs: (%f, %f), (%f, %f), (%f, %f)\n", v116, 0x3Eu);
            }
          }

          else
          {
            LODWORD(v63) = *(this + 135);
            HIDWORD(v63) = *(this + 138);
            v64 = v100;
            v61 = v63;
            v62 = v100;
            AAB::UpdateCurve_Block3(this, __dst, *&v63, *(&v63 + 1), v100);
          }

          v20 = v100;
          v5 = AABC::IlluminanceToLuminance(this, this + 264, *(this + 135), *(this + 138));
          *&v6 = v20;
          [CBAnalytics autoBrightnessUserChange:v20 > v5 lowPower:*(this + 3424) & 1, v6];
          memcpy(this + 1056, __dst, 0x68uLL);
          if (_logHandle)
          {
            v19 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v18 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v18 = init_default_corebrightness_log();
            }

            v19 = v18;
          }

          v60 = v19;
          v59 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            if (*(this + 135) <= *(this + 7))
            {
              v17 = "E1 & L1";
            }

            else
            {
              v17 = "E2 & L2";
            }

            __os_log_helper_16_2_5_8_0_8_0_8_0_8_0_8_32(v115, COERCE__INT64(*(this + 268)), COERCE__INT64(*(this + 270)), COERCE__INT64(*(this + 269)), COERCE__INT64(*(this + 271)), v17);
            _os_log_impl(&dword_1DE8E5000, v60, v59, "curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f  [updated %s]", v115, 0x34u);
          }

          if (_logHandle)
          {
            v16 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v15 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v15 = init_default_corebrightness_log();
            }

            v16 = v15;
          }

          v58 = v16;
          v57 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v114, COERCE__INT64(*(this + 264)), COERCE__INT64(*(this + 265)), COERCE__INT64(*(this + 266)), COERCE__INT64(*(this + 267)));
            _os_log_impl(&dword_1DE8E5000, v58, v57, "dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v114, 0x2Au);
          }

          if (*(this + 3376))
          {
            *(this + 3408) = 0;
            v56 = 0;
            if (AABC::isCurveGood(this, this + 1056))
            {
              memcpy(this + 2904, this + 1056, 0x68uLL);
              if (_logHandle)
              {
                v14 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v13 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v13 = init_default_corebrightness_log();
                }

                v14 = v13;
              }

              v55 = v14;
              v54 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                v11 = v55;
                v12 = v54;
                __os_log_helper_16_0_0(v53);
                _os_log_debug_impl(&dword_1DE8E5000, v11, v12, "Session curve is good", v53, 2u);
              }

              if ((v56 & 1) != 0 || !*(this + 834) || *(this + 834) == *(this + 845) || !*(this + 842))
              {
                *(this + 834) = 0;
                *(this + 842) = 0;
                *(this + 418) = 0;
                *(this + 419) = 0;
                *(this + 420) = 0;
              }
            }

            else
            {
              v52 = CFAbsoluteTimeGetCurrent();
              if (*(this + 834))
              {
                if (*(this + 834) < *(this + 845) && v52 > *(this + 418) + *(this + 423) && *(this + 842))
                {
                  *(this + (*(this + 834))++ + 418) = v52;
                  *(this + 842) = 0;
                }
              }

              else
              {
                *(this + *(this + 834) + 418) = v52;
                *(this + 834) = 1;
                *(this + 842) = 0;
              }
            }
          }
        }
      }

      else if (*(this + 90) == 3)
      {
        if (_logHandle)
        {
          v10 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v9 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v9 = init_default_corebrightness_log();
          }

          v10 = v9;
        }

        v51 = v10;
        v50 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v7 = v51;
          v8 = v50;
          __os_log_helper_16_0_0(v49);
          _os_log_debug_impl(&dword_1DE8E5000, v7, v8, "Cancel ramp, turning on auto-brightness", v49, 2u);
        }

        AABC::CancelRamp(this);
        AABC::UpdateState(this, 4);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void AABC::setAABCurveUpdateReason(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  valuePtr = a2;
  if (*(a1 + 376))
  {
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(*(a1 + 376), @"AABCurveUpdateReason", v6);
    if (_logHandle)
    {
      v4 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      updated = AABCurveUpdateReasonToString(valuePtr);
      __os_log_helper_16_2_1_8_66(v9, updated);
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "[aabParamsUpdateReason] %{public}@", v9, 0xCu);
    }

    CFRelease(v6);
  }

  *MEMORY[0x1E69E9840];
}

void *AABC::SetAggressivity(AABC *this, int a2)
{
  *(this + 141) = a2;
  result = [+[CBAODState sharedInstance](CBAODState AODState];
  if (!result)
  {
    return PerceptualLuminanceThresholding::SetAggressivity(*(this + 479), *(this + 141));
  }

  return result;
}

uint64_t std::bitset<3ul>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if (a2 >= 3)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/bitset:694: assertion __p < _Size failed: bitset::operator[] index out of bounds\n");
  }

  return std::__bitset<1ul,3ul>::__make_ref[abi:de200100](a1, v4);
}

uint64_t std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator=[abi:de200100](uint64_t result, char a2)
{
  if (a2)
  {
    **result |= *(result + 8);
  }

  else
  {
    **result &= ~*(result + 8);
  }

  return result;
}

uint64_t std::array<PMMitigationLevel,4ul>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/array:269: assertion __n < _Size failed: out-of-bounds access in std::array<T, N>\n");
  }

  return a1 + 8 * a2;
}

uint64_t AABC::populateCurveValuesFromDictionary(AABC *this, const __CFDictionary *a2, CustomCurve *a3, int a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v60 = this;
  v59 = a2;
  v58 = a3;
  v57 = a4;
  v55 = 0;
  ValueAtIndex = 0;
  v53 = 0;
  FloatFromDictionary = 0.0;
  v51 = 0.0;
  Count = 0;
  v49 = 0;
  CFArrayFromDictionary = GetCFArrayFromDictionary(a2, @"E");
  if (CFArrayFromDictionary)
  {
    v55 = GetCFArrayFromDictionary(v59, @"L");
    if (v55)
    {
      Count = CFArrayGetCount(CFArrayFromDictionary);
      if (CFArrayGetCount(v55) == Count)
      {
        if (Count)
        {
          if (Count <= v57)
          {
            for (idx = 0; idx < Count; ++idx)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v55, idx);
              v53 = CFArrayGetValueAtIndex(CFArrayFromDictionary, idx);
              if (!ValueAtIndex || !v53 || (v14 = CFGetTypeID(ValueAtIndex), v14 != CFNumberGetTypeID()) || (v13 = CFGetTypeID(v53), v13 != CFNumberGetTypeID()))
              {
                if (_logHandle)
                {
                  v10 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    inited = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    inited = init_default_corebrightness_log();
                  }

                  v10 = inited;
                }

                if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_0_1_4_0(v63, idx);
                  _os_log_error_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_ERROR, "invalid curve data at index %d", v63, 8u);
                }

                goto LABEL_104;
              }

              CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &v58->_L[idx]);
              CFNumberGetValue(v53, kCFNumberFloatType, &v58->_E[idx]);
              if (_logHandle)
              {
                v12 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v11 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v11 = init_default_corebrightness_log();
                }

                v12 = v11;
              }

              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_0_3_4_0_8_0_8_0(v64, idx, COERCE__INT64(v58->_E[idx]), COERCE__INT64(v58->_L[idx]));
                _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "[%d] nits(%f) = %f", v64, 0x1Cu);
              }
            }

            v58->size = Count;
            if (_logHandle)
            {
              v8 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v7 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v7 = init_default_corebrightness_log();
              }

              v8 = v7;
            }

            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_1_4_0(v62, v58->size);
              _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "curve size: %d", v62, 8u);
            }

            FloatFromDictionary = GetFloatFromDictionary(v59, @"m1");
            if (FloatFromDictionary > 0.0)
            {
              FloatFromDictionary = *(this + 177) + (FloatFromDictionary * (*(this + 179) - *(this + 177)));
            }

            v51 = GetFloatFromDictionary(v59, @"m2");
            if (v51 > 0.0)
            {
              v51 = *(this + 177) + (v51 * (*(this + 179) - *(this + 177)));
            }

            if (_logHandle)
            {
              v6 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v5 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v5 = init_default_corebrightness_log();
              }

              v6 = v5;
            }

            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_2_8_0_8_0(v61, COERCE__INT64(v51), COERCE__INT64(FloatFromDictionary));
              _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "minThreshold: %f maxThreshold: %f", v61, 0x16u);
            }

            if (FloatFromDictionary > 0.0)
            {
              for (i = 0; i < v58->size; ++i)
              {
                v58->_L[i] = fminf(FloatFromDictionary, v58->_L[i]);
              }
            }

            if (v51 > 0.0)
            {
              for (j = 0; j < v58->size; ++j)
              {
                v58->_L[j] = fmaxf(v51, v58->_L[j]);
              }
            }

            v49 = 1;
          }

          else
          {
            if (_logHandle)
            {
              v16 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v15 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v15 = init_default_corebrightness_log();
              }

              v16 = v15;
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_2_4_0_4_0(v65, v57, Count);
              _os_log_error_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_ERROR, "lux and nits array too large for display type (max: %d, actual: %d)", v65, 0xEu);
            }
          }
        }

        else
        {
          if (_logHandle)
          {
            v20 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v19 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v19 = init_default_corebrightness_log();
            }

            v20 = v19;
          }

          v39 = v20;
          v38 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v17 = v39;
            v18 = v38;
            __os_log_helper_16_0_0(v37);
            _os_log_error_impl(&dword_1DE8E5000, v17, v18, "lux and nits arrays are empty", v37, 2u);
          }
        }
      }

      else
      {
        if (_logHandle)
        {
          v24 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v23 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v23 = init_default_corebrightness_log();
          }

          v24 = v23;
        }

        oslog = v24;
        v41 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v21 = oslog;
          v22 = v41;
          __os_log_helper_16_0_0(v40);
          _os_log_error_impl(&dword_1DE8E5000, v21, v22, "lux and nits arrays differ in size", v40, 2u);
        }
      }
    }

    else
    {
      if (_logHandle)
      {
        v28 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v27 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v27 = init_default_corebrightness_log();
        }

        v28 = v27;
      }

      v45 = v28;
      v44 = 16;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v25 = v45;
        v26 = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_error_impl(&dword_1DE8E5000, v25, v26, "invalid or missing L (nits) array", v43, 2u);
      }
    }
  }

  else
  {
    if (_logHandle)
    {
      v32 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v31 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v31 = init_default_corebrightness_log();
      }

      v32 = v31;
    }

    v48 = v32;
    v47 = 16;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      log = v48;
      type = v47;
      __os_log_helper_16_0_0(v46);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "invalid or missing E (lux) array", v46, 2u);
    }
  }

LABEL_104:
  *MEMORY[0x1E69E9840];
  return v49 & 1;
}

CFTypeRef GetCFArrayFromDictionary(const __CFDictionary *a1, const __CFString *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  if (a1 && (v8 = CFGetTypeID(v15), v8 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(v15, v14);
    if (Value)
    {
      v7 = CFGetTypeID(Value);
      if (v7 == CFArrayGetTypeID())
      {
        return Value;
      }
    }
  }

  else
  {
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    v11 = v6;
    v10 = 16;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "GetCFArrayFromDictionary: ref is NULL or not a dictionary", v9, 2u);
    }
  }

  return v13;
}

float GetFloatFromDictionary(const __CFDictionary *a1, const __CFString *a2)
{
  v15 = a1;
  v14 = a2;
  valuePtr = 0.0;
  if (a1 && (v8 = CFGetTypeID(v15), v8 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(v15, v14);
    if (Value)
    {
      v7 = CFGetTypeID(Value);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
      }
    }
  }

  else
  {
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    v11 = v6;
    v10 = 16;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "GetCFNumberValueAsFloat: ref is NULL or not a dictionary", v9, 2u);
    }
  }

  return valuePtr;
}

void AABC::writeCurveToUserDefaults(AABC *this, CustomCurve *a2, const __CFString *a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v44 = this;
  v43 = a2;
  v42 = a3;
  size = a2->size;
  v40 = &v21;
  v29 = 8 * size;
  MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v30 = (&v21 - ((v29 + 15) & 0xFFFFFFFF0));
  v39 = v4;
  v31 = 512;
  if (v29 <= 0x200)
  {
    v5 = v29;
  }

  else
  {
    v5 = 512;
  }

  bzero(&v21 - ((v29 + 15) & 0xFFFFFFFF0), v5);
  v32 = size;
  v33 = 8 * size;
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v34 = (&v21 - ((v33 + 15) & 0xFFFFFFFF0));
  v38 = v32;
  if (v33 <= 0x200)
  {
    v11 = v33;
  }

  else
  {
    v11 = v10;
  }

  bzero(&v21 - ((v33 + 15) & 0xFFFFFFFF0), v11);
  for (i = 0; i < size; ++i)
  {
    v27 = MEMORY[0x1E695E480];
    v12 = *MEMORY[0x1E695E480];
    v28 = 12;
    v13 = CFNumberCreate(v12, kCFNumberFloatType, &v43->_E[i]);
    v14 = v27;
    v15 = v28;
    v30[i] = v13;
    v16 = CFNumberCreate(*v14, v15, &v43->_L[i]);
    v34[i] = v16;
  }

  v47 = 0;
  values = 0;
  v23 = MEMORY[0x1E695E480];
  v17 = *MEMORY[0x1E695E480];
  v22 = MEMORY[0x1E695E9C0];
  values = CFArrayCreate(v17, v30, size, MEMORY[0x1E695E9C0]);
  v47 = CFArrayCreate(*v23, v34, size, v22);
  *keys = xmmword_1E867D070;
  v36 = CFDictionaryCreate(*v23, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v24 = MEMORY[0x1E695E8B8];
  v18 = *MEMORY[0x1E695E8B8];
  v25 = MEMORY[0x1E695E8B0];
  v19 = *MEMORY[0x1E695E8B0];
  v26 = @"com.apple.CoreBrightness";
  CFPreferencesSetValue(v42, v36, @"com.apple.CoreBrightness", v18, v19);
  CFPreferencesSynchronize(v26, *v24, *v25);
  for (j = 0; j < size; ++j)
  {
    CFRelease(v30[j]);
    CFRelease(v34[j]);
  }

  CFRelease(values);
  CFRelease(v47);
  CFRelease(v36);
  v21 = v40;
  v20 = __OFSUB__(*MEMORY[0x1E69E9840], v48);
}

void ___ZN4AABC24getCurveUpdatesFromArrayEP11objc_object_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0.0;
    v21 = 0.0;
    v20 = -1;
    [v26 objectForKeyedSubscript:@"Lux"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v26 objectForKeyedSubscript:@"Nits"], objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v26, "objectForKeyedSubscript:", @"Timestamp"), objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [objc_msgSend(v26 objectForKeyedSubscript:{@"Lux", "floatValue"}];
      v22 = v4;
      [objc_msgSend(v26 objectForKeyedSubscript:{@"Nits", "floatValue"}];
      v21 = v5;
      v20 = [objc_msgSend(v26 objectForKeyedSubscript:{@"Timestamp", "longLongValue"}];
      if (_logHandle)
      {
        v8 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v8 = inited;
      }

      oslog = v8;
      v15 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v28, COERCE__INT64(v22), COERCE__INT64(v21), v20);
        _os_log_debug_impl(&dword_1DE8E5000, oslog, v15, "Adding curve update from ALS user preferences: %f %f %lld", v28, 0x20u);
      }

      v6 = (*(*(a1 + 32) + 8) + 48);
      v14.n128_u64[0] = __PAIR64__(LODWORD(v21), LODWORD(v22));
      v14.n128_u64[1] = v20;
      std::list<AAB::CurveUpdate>::push_back(v6, &v14);
    }

    else
    {
      if (_logHandle)
      {
        v12 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v11 = init_default_corebrightness_log();
        }

        v12 = v11;
      }

      v19 = v12;
      v18 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        log = v19;
        type = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Wrongly formatted BOLTS buffer", v17, 2u);
      }

      *v24 = 1;
    }
  }

  *MEMORY[0x1E69E9840];
}

void ___ZN4AABC17SetDeviceInSleeveEb_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 40))
    {
      v1 = "yes";
    }

    else
    {
      v1 = "no";
    }

    __os_log_helper_16_2_1_8_32(v5, v1);
    _os_log_error_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_ERROR, "deviceInSleeve=%s", v5, 0xCu);
  }

  *(v4 + 160) = *(a1 + 40) & 1;
  if (*(v4 + 160))
  {
    AABC::setFilterDuration(v4, v4 + 168, 4);
  }

  else
  {
    AABC::resetFilter(v4, (v4 + 168));
  }

  *MEMORY[0x1E69E9840];
}

void *std::vector<float>::vector[abi:de200100](void *a1, uint64_t *a2)
{
  std::vector<float>::vector[abi:de200100](a1, a2);
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<float>>::select_on_container_copy_construction[abi:de200100]<std::allocator<float>,void,0>();
  v4 = *a2;
  v5 = a2[1];
  v2 = std::vector<float>::size[abi:de200100](a2);
  std::vector<float>::__init_with_size[abi:de200100]<float *,float *>(a1, v4, v5, v2);
  return a1;
}

uint64_t std::vector<float>::begin[abi:de200100](uint64_t *a1)
{
  v1 = *a1;
  std::vector<float>::__add_alignment_assumption[abi:de200100]<float *,0>();
  return std::vector<float>::__make_iter[abi:de200100](a1, v2);
}

uint64_t std::vector<float>::end[abi:de200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  std::vector<float>::__add_alignment_assumption[abi:de200100]<float *,0>();
  return std::vector<float>::__make_iter[abi:de200100](a1, v2);
}

uint64_t std::array<float,3ul>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/array:269: assertion __n < _Size failed: out-of-bounds access in std::array<T, N>\n");
  }

  return a1 + 4 * a2;
}

float std::accumulate[abi:de200100]<float const*,float>(float *a1, float *a2, float a3)
{
  while (a1 != a2)
  {
    a3 = a3 + *a1++;
  }

  return a3;
}

uint64_t __os_log_helper_16_2_4_8_0_8_0_8_0_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 32;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_0_8_0_8_0_8_0_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 32;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_3_4_0_8_32_4_0(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t AABC::setAlwaysOnProperty(id *this, NSString *a2, objc_object *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = this;
  v16 = a2;
  v15 = a3;
  if ([(NSString *)a2 isEqualToString:@"CurrentBrightness"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (this[500])
      {
        v14 = [v15 intValue];
        if (_logHandle)
        {
          v8 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v8 = inited;
        }

        v13 = v8;
        v12 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_8_0_4_0(v19, COERCE__INT64(v14 / 65536.0), v14);
          _os_log_impl(&dword_1DE8E5000, v13, v12, "Setting CurrentBrightness to %f, %d (IOFixed)", v19, 0x12u);
        }

        [this[500] sendCommand:225 inputBuffer:&v14 inputBufferSize:4];
      }
    }
  }

  result = [v16 isEqualToString:@"AOTState"];
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      if (this[500])
      {
        v11 = 0;
        v10 = [v15 valueForKey:@"AOTState"];
        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if (result)
        {
          v11 = [v10 intValue];
          if (_logHandle)
          {
            v6 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v5 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v5 = init_default_corebrightness_log();
            }

            v6 = v5;
          }

          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v4 = v6;
            __os_log_helper_16_0_1_4_0(v18, v11);
            _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "Sending AOTState to DCP, aotState: %d", v18, 8u);
          }

          result = [this[500] sendCommand:227 inputBuffer:&v11 inputBufferSize:{4, v4}];
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return result;
}

void AABC::SetALSInterval(AABC *this, float a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v3 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v3 = inited;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_4_0_8_0(v6, 16, COERCE__INT64(a2));
    _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "[%x]: interval=%f", v6, 0x12u);
  }

  *(this + 158) = a2;
  AABC::UpdateALSState(this, 1);
  *MEMORY[0x1E69E9840];
}

uint64_t AABC::AutobrightnessOn_UpdateCurve(AABC *this)
{
  v12 = *MEMORY[0x1E69E9840];
  LogicalBrightness = DisplayGetLogicalBrightness(*(this + 50));
  *(this + 155) = LogicalBrightness;
  *(this + 154) = LogicalBrightness;
  AABC::_UpdateEsensorTrusted(this, *(this + 132));
  AABC::_UpdateEsensorFrontTrusted(this, *(this + 133));
  AAB::UpdateCurve_Block3(this, this + 1056, *(this + 135), *(this + 138), *(this + 155));
  if (_logHandle)
  {
    v7 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v7 = inited;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 135) <= *(this + 7))
    {
      v5 = "L1 & L2";
    }

    else
    {
      v5 = "E2 & L2";
    }

    __os_log_helper_16_2_5_8_0_8_0_8_0_8_0_8_32(v11, COERCE__INT64(*(this + 268)), COERCE__INT64(*(this + 270)), COERCE__INT64(*(this + 269)), COERCE__INT64(*(this + 271)), v5);
    _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f  [updated %s]", v11, 0x34u);
  }

  if (_logHandle)
  {
    v4 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v3 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v3 = init_default_corebrightness_log();
    }

    v4 = v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v10, COERCE__INT64(*(this + 264)), COERCE__INT64(*(this + 265)), COERCE__INT64(*(this + 266)), COERCE__INT64(*(this + 267)));
    _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v10, 0x2Au);
  }

  v9 = fminf(fmaxf(AABC::IlluminanceToLuminance(this, this + 264, *(this + 135), *(this + 138)), *(this + 180)), *(this + 182));
  *(this + 151) = v9;
  result = AABC::UpdateDisplayBrightness_Block6(this, 0, 2, 0, v9);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AABC::reportAutoBrightnessChangeToCoreAnalytics(AABC *this, char a2)
{
  result = [+[CBAODState sharedInstance](CBAODState isAODActive];
  if ((*(this + 3720) & 1) != (a2 & 1))
  {
    v3 = 0;
    if ((result & 1) == 0)
    {
      v3 = *(this + 120) != 0;
    }

    result = [CBAnalytics autoBrightnessEnabled:a2 & 1 byUser:v3];
    *(this + 3720) = a2 & 1;
  }

  return result;
}

void AABC::SetAutoBrightnessState(AABC *this, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = this;
  v33 = a2;
  if (_logHandle)
  {
    v17 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v17 = inited;
  }

  v32 = v17;
  v31 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v38, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v32, v31, "[%x]: ", v38, 8u);
  }

  if (*(this + 126) != v33)
  {
    if (*(this + 500) && *(this + 78) == 6)
    {
      v30 = v33 != 0;
      [*(this + 500) sendCommand:240 inputBuffer:&v30 inputBufferSize:1];
    }

    if (_logHandle)
    {
      v15 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v14 = init_default_corebrightness_log();
      }

      v15 = v14;
    }

    v29 = v15;
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v33)
      {
        v2 = "true";
      }

      else
      {
        v2 = "false";
      }

      if (*(this + 125))
      {
        v3 = "true";
      }

      else
      {
        v3 = "false";
      }

      __os_log_helper_16_2_2_8_32_8_32(v37, v2, v3);
      _os_log_impl(&dword_1DE8E5000, v29, v28, "autoBrightnessEnabled=%s _autoBrightnessActive=%s", v37, 0x16u);
    }

    if (v33 && *(this + 125))
    {
      AABC::setAABCurveUpdateReason(this, 3);
      LogicalBrightness = DisplayGetLogicalBrightness(*(this + 50));
      *(this + 155) = LogicalBrightness;
      *(this + 154) = LogicalBrightness;
      AABC::_UpdateEsensorTrusted(this, *(this + 132));
      AABC::_UpdateEsensorFrontTrusted(this, *(this + 133));
      if (_logHandle)
      {
        v13 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v12 = init_default_corebrightness_log();
        }

        v13 = v12;
      }

      v27 = v13;
      v26 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        if (*(this + 135) <= *(this + 7))
        {
          v11 = "L1 & L2";
        }

        else
        {
          v11 = "E2 & L2";
        }

        __os_log_helper_16_2_5_8_0_8_0_8_0_8_0_8_32(v36, COERCE__INT64(*(this + 268)), COERCE__INT64(*(this + 270)), COERCE__INT64(*(this + 269)), COERCE__INT64(*(this + 271)), v11);
        _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f  [updated %s]", v36, 0x34u);
      }

      if (_logHandle)
      {
        v10 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v9 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v9 = init_default_corebrightness_log();
        }

        v10 = v9;
      }

      v25 = v10;
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v35, COERCE__INT64(*(this + 264)), COERCE__INT64(*(this + 265)), COERCE__INT64(*(this + 266)), COERCE__INT64(*(this + 267)));
        _os_log_debug_impl(&dword_1DE8E5000, v25, v24, "dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v35, 0x2Au);
      }

      AABC::UpdateState(this, 3);
      v23 = AABC::IlluminanceToLuminance(this, this + 264, *(this + 135), *(this + 138));
      if (*(this + 3425))
      {
        v22 = AABC::IlluminanceToLuminance(this, this + 804, *(this + 135), *(this + 138));
        if ((*(this + 3426) & 1) == 0)
        {
          v23 = fminf(*(this + 857), v22);
        }
      }

      v23 = fminf(fmaxf(v23, *(this + 180)), *(this + 182));
      *(this + 151) = v23;
      *(this + 126) = v33;
      AABC::UpdateDisplayBrightness_Block6(this, 1, 2, 1, v23);
    }

    else
    {
      if (_logHandle)
      {
        v8 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v7 = init_default_corebrightness_log();
        }

        v8 = v7;
      }

      oslog = v8;
      v20 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v5 = oslog;
        v6 = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_debug_impl(&dword_1DE8E5000, v5, v6, "Cancel ramp, disabling auto-brightness", v19, 2u);
      }

      AABC::CancelRamp(this);
    }

    *(this + 126) = v33;
    *(this + 126) = 1;
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_2_3_4_0_8_32_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_32_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

float AABC::IlluminanceToLuminanceAggregated_AOD(uint64_t a1, AAB *a2, float *a3, float a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = AAB::IlluminanceToLuminance(a1, a3, a4);
  v9 = AAB::IlluminanceToLuminance(a2, a4, v4);
  v8 = fminf(v10, v9);
  if (_logHandle)
  {
    v7 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v7 = inited;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v13, COERCE__INT64(a4), COERCE__INT64(v10), COERCE__INT64(v9), COERCE__INT64(v8));
    _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "IlluminanceToLuminanceAggregated_AOD: E(Lux) = %f | normal L(Nits) = %f | AOD L(Nits) = %f >>> L %f", v13, 0x2Au);
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

float AABC::IlluminanceToLuminance(AABC *this, float a2, CustomCurve *a3)
{
  if (AABC::isAODCurveActive(this, [+[CBAODState AODState] sharedInstance])
  {
    return AABC::IlluminanceToLuminanceAggregated_AOD(this, (this + 2548), this + 264, a2);
  }

  else
  {
    return AAB::IlluminanceToLuminance(a3, a2, v3);
  }
}

uint64_t __os_log_helper_16_0_6_4_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 0;
  *(result + 1) = 6;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

uint64_t __os_log_helper_16_0_10_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *result = 0;
  *(result + 1) = 10;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 0;
  *(result + 73) = 8;
  *(result + 74) = a9;
  *(result + 82) = 0;
  *(result + 83) = 8;
  *(result + 84) = a10;
  *(result + 92) = 0;
  *(result + 93) = 4;
  *(result + 94) = a11;
  return result;
}

uint64_t AABC::IsProxEmulationTriggered(AABC *this, int *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = this;
  v25 = a2;
  v24 = 0;
  v23 = 0.5;
  if (*(this + 152) <= 250.0)
  {
    if (*(this + 152) > 100.0)
    {
      v23 = 0.4;
    }
  }

  else
  {
    v23 = 0.2;
  }

  *v25 = 0;
  if (*(this + 135) >= (v23 * *(this + 152)) || *(this + 135) >= 200.0)
  {
    if (_logHandle)
    {
      v8 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v8 = inited;
    }

    v18 = v8;
    v17 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v27, COERCE__INT64(*(this + 135)));
      _os_log_debug_impl(&dword_1DE8E5000, v18, v17, "Unrestricting prox emulation. E_sensor = %f", v27, 0xCu);
    }

    if (*(this + 140) == 1)
    {
      *(this + 154) = DisplayGetVirtualBrightness(*(this + 50));
    }

    *(this + 140) = 0;
    *(this + 153) = *(this + 135);
  }

  else if (*(this + 140) && (*(this + 140) != 2 || *(this + 135) > (*(this + 153) / 2.0) || *(this + 135) > (*(this + 153) - 5.0)))
  {
    if (*(this + 140) == 1 && *(this + 135) > (*(this + 153) * 2.0) && *(this + 135) > (*(this + 153) + 20.0))
    {
      if (_logHandle)
      {
        v10 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v9 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v9 = init_default_corebrightness_log();
        }

        v10 = v9;
      }

      v20 = v10;
      v19 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v28, COERCE__INT64(*(this + 152)), COERCE__INT64(*(this + 153)), COERCE__INT64(*(this + 135)));
        _os_log_debug_impl(&dword_1DE8E5000, v20, v19, "ALS possibly covered. E_maximum = %f, E_low = %f, E_sensor = %f", v28, 0x20u);
      }

      *(this + 154) = DisplayGetVirtualBrightness(*(this + 50));
      *(this + 140) = 2;
      *(this + 153) = *(this + 135);
    }
  }

  else
  {
    if (_logHandle)
    {
      v12 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v11 = init_default_corebrightness_log();
      }

      v12 = v11;
    }

    v22 = v12;
    v21 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v29, COERCE__INT64(*(this + 152)), COERCE__INT64(*(this + 153)), COERCE__INT64(*(this + 135)));
      _os_log_debug_impl(&dword_1DE8E5000, v22, v21, "ALS covered. Triggering prox emulation. E_maximum = %f, E_low = %f, E_sensor = %f", v29, 0x20u);
    }

    *(this + 140) = 1;
  }

  if (*(this + 140) == 1)
  {
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    oslog = v6;
    v15 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_debug_impl(&dword_1DE8E5000, v3, v4, "Restricting because of ALS covered", v14, 2u);
    }

    *v25 = 1;
    v24 = 1;
    *(this + 153) = fminf(*(this + 153), *(this + 135));
  }

  *MEMORY[0x1E69E9840];
  return v24;
}

void AABC::_UpdateNitsRestrictionsSinglePoint(AABC *this, float a2, float a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v29 = a2;
  v28 = a2;
  if (a3 < 0.0)
  {
    v31 = 2.5;
  }

  if (a2 < 0.0)
  {
    v28 = 0.0;
    v29 = 0.0;
  }

  if (*(this + 3480))
  {
    if (*(this + 128))
    {
      v27 = *(this + 875);
    }

    else
    {
      v27 = *(this + 874);
    }

    v26 = *(this + 873);
    if (v28 < *(this + 872))
    {
      if (v28 >= v26)
      {
        v4 = (v27 - 1.0) * ((v28 - *(this + 872)) + (*(this + 872) - v26)) / (*(this + 872) - v26) + 1.0;
        v25 = v4;
      }

      else
      {
        v25 = 1.0;
      }
    }

    else
    {
      v25 = v27;
    }

    RestrictionFactorTarget = DisplayGetRestrictionFactorTarget(*(this + 50), 1);
    v18 = 0;
    if (v28 > *(this + 871))
    {
      v18 = RestrictionFactorTarget < v27;
    }

    isTrustedOccluded = 0;
    if (v25 < RestrictionFactorTarget)
    {
      isTrustedOccluded = AABC::isTrustedOccluded(this);
    }

    if ((a4 & 1) != 0 || (v25 < RestrictionFactorTarget || v18) && (isTrustedOccluded & 1) == 0)
    {
      if (_logHandle)
      {
        v16 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v16 = inited;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v33, COERCE__INT64(v25), COERCE__INT64(v28));
        _os_log_debug_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEBUG, "Set minimum restriction %f for E=%f\n", v33, 0x16u);
      }

      if (v18)
      {
        v14 = v31;
      }

      else
      {
        v14 = v31 * 2.0;
      }

      DisplaySetRestrictionFactorWithFade(*(this + 50), 1, v25, v14, COERCE_FLOAT(*(this + 434)), COERCE_FLOAT(HIDWORD(*(this + 434))));
    }
  }

  if (*(this + 3596))
  {
    v22 = *(this + 900);
    if (*(this + 128))
    {
      v23 = *(this + 904);
    }

    else
    {
      v23 = *(this + 903);
    }

    if ([*(this + 487) isActive])
    {
      v13 = *(this + 50);
      [*(this + 487) getCap];
      v23 = fminf(v23, DisplayGetRestrictionFactorForNits(v13, 0, v5));
      v22 = *(this + 901);
    }

    if (v29 <= *(this + 901))
    {
      v12 = v23;
    }

    else
    {
      v12 = v23 + (1.0 - v23) * (v29 - *(this + 901)) / (*(this + 902) - *(this + 901));
    }

    v6 = v12;
    v21 = v6;
    if (v6 > 1.0)
    {
      v21 = 1.0;
    }

    v20 = DisplayGetRestrictionFactorTarget(*(this + 50), 0);
    v11 = 0;
    if (v29 < v22)
    {
      v11 = v20 > v23;
    }

    v10 = 0;
    if (v21 <= v20)
    {
      v10 = AABC::isTrustedOccluded(this);
    }

    if ((a4 & 1) != 0 || v21 > v20 || v11 && (v10 & 1) == 0)
    {
      if (_logHandle)
      {
        v9 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v8 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v8 = init_default_corebrightness_log();
        }

        v9 = v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v32, COERCE__INT64(v21), COERCE__INT64(v29));
        _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "Set maximum restriction %f for E=%f\n", v32, 0x16u);
      }

      if (v11)
      {
        v7 = v31 * 2.0;
      }

      else
      {
        v7 = v31;
      }

      DisplaySetRestrictionFactorWithFade(*(this + 50), 0, v21, v7, COERCE_FLOAT(*(this + 434)), COERCE_FLOAT(HIDWORD(*(this + 434))));
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t AABC::GetNitsBin(AABC *this, float a2)
{
  if (a2 >= 10.0)
  {
    if (a2 >= 75.0)
    {
      if (a2 >= 100.0)
      {
        if (a2 >= 125.0)
        {
          if (a2 >= 150.0)
          {
            if (a2 >= 250.0)
            {
              if (a2 >= 350.0)
              {
                if (a2 >= 450.0)
                {
                  if (a2 >= 550.0)
                  {
                    return 9;
                  }

                  else
                  {
                    return 8;
                  }
                }

                else
                {
                  return 7;
                }
              }

              else
              {
                return 6;
              }
            }

            else
            {
              return 5;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __os_log_helper_16_2_3_4_0_8_0_8_32(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_8_4_0_8_0_8_32_8_32_4_0_8_32_4_0_8_32(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  *result = 2;
  *(result + 1) = 8;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 32;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  *(result + 44) = 32;
  *(result + 45) = 8;
  *(result + 46) = a7;
  *(result + 54) = 0;
  *(result + 55) = 4;
  *(result + 56) = a8;
  *(result + 60) = 32;
  *(result + 61) = 8;
  *(result + 62) = a9;
  return result;
}

uint64_t __os_log_helper_16_0_7_4_0_4_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 0;
  *(result + 1) = 7;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 8;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 25) = 8;
  *(result + 26) = a5;
  *(result + 34) = 0;
  *(result + 35) = 8;
  *(result + 36) = a6;
  *(result + 44) = 0;
  *(result + 45) = 8;
  *(result + 46) = a7;
  *(result + 54) = 0;
  *(result + 55) = 8;
  *(result + 56) = a8;
  return result;
}

uint64_t __os_log_helper_16_2_2_4_0_8_32(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_6_4_0_8_0_8_32_8_32_8_0_4_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 32;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 49) = 4;
  *(result + 50) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_6_4_0_4_0_8_32_8_0_8_0_8_0(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 32;
  *(result + 15) = 8;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 25) = 8;
  *(result + 26) = a5;
  *(result + 34) = 0;
  *(result + 35) = 8;
  *(result + 36) = a6;
  *(result + 44) = 0;
  *(result + 45) = 8;
  *(result + 46) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_6_4_0_8_0_8_0_8_0_8_0_8_32(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 32;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_4_4_0_8_32_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_4_0_8_32_8_32(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 32;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void AABC::UpdateALSStateFunctionInternalAutoRate(uint64_t a1, __IOHIDServiceClient *a2, uint64_t a3, int *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  if (a4 && *v31 && *(*v31 + 364))
  {
    if (_logHandle)
    {
      v15 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v15 = inited;
    }

    v30 = v15;
    v29 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_3_4_0_4_0_4_0(v39, 16, v31[12], *(a1 + 480));
      _os_log_debug_impl(&dword_1DE8E5000, v30, v29, "[%x]: function=%x _displayState=%d", v39, 0x14u);
    }

    v28 = 0;
    if ((v31[12] & 1) != 0 && *(a1 + 644) != 1)
    {
      *(a1 + 644) = 1;
      v27 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 644));
      if (v27)
      {
        IOHIDServiceClientSetProperty(v33, @"IOHIDALSContinuousMode", v27);
        CFRelease(v27);
      }
    }

    if ((v31[12] & 4) != 0)
    {
      v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v31 + 4);
      if (v28)
      {
        if (_logHandle)
        {
          v13 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v12 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v12 = init_default_corebrightness_log();
          }

          v13 = v12;
        }

        v26 = v13;
        v25 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_4_0(v38, 16, v31[4]);
          _os_log_debug_impl(&dword_1DE8E5000, v26, v25, "[%x]: setting IOHIDALSTestMode %d", v38, 0xEu);
        }

        IOHIDServiceClientSetProperty(v33, @"IOHIDALSTestMode", v28);
        CFRelease(v28);
      }
    }

    if ((v31[12] & 0x10) != 0)
    {
      valuePtr = 0;
      valuePtr = *(a1 + 668);
      v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (v28)
      {
        IOHIDServiceClientSetProperty(v33, @"ALSIntegrationMode", v28);
        CFRelease(v28);
      }

      if (*(a1 + 668) != *(a1 + 664))
      {
        *(a1 + 664) = *(a1 + 668);
        v23 = 0.0;
        v22 = 0.0;
        switch(*(a1 + 668))
        {
          case 3:
            v23 = *(a1 + 652);
            v22 = *(v32 + 56);
            break;
          case 2:
            v23 = *(a1 + 656);
            v22 = *(v32 + 52);
            break;
          case 1:
            v23 = *(a1 + 660);
            v22 = *(v32 + 48);
            break;
          default:
            if (*(a1 + 668))
            {
              if (_logHandle)
              {
                v11 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v10 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v10 = init_default_corebrightness_log();
                }

                v11 = v10;
              }

              v21 = v11;
              v20 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                __os_log_helper_16_0_1_4_0(v37, 1);
                _os_log_debug_impl(&dword_1DE8E5000, v21, v20, "[%x]: INVALID Integration mode. Behaviour undefined!", v37, 8u);
              }

              *(v32 + 88) = 0;
              *(a1 + 3780) = 1;
            }

            else
            {
              *(a1 + 600) = 0;
              *(a1 + 540) = -1.0;
              *(a1 + 544) = -1.0;
              *(a1 + 536) = -1.0;
              *(a1 + 552) = 0;
              *(a1 + 548) = -1.0;
              AABC::_UpdateSemanticAmbientLightLevel(a1, 0);
              *(v32 + 164) = 0;
              *(a1 + 624) = 0;
            }

            break;
        }

        if (v23 <= 0.0)
        {
          *(v32 + 88) = 0;
          *(a1 + 3780) = v22 > 0.0;
          *(a1 + 632) = v22;
          *(a1 + 3788) = 0;
        }

        else
        {
          *(a1 + 3780) = (7.0 / v23);
          *(v32 + 88) = (*(a1 + 3452) / v23);
          *(a1 + 632) = v23;
          *(a1 + 3788) = (4.0 / v23);
        }

        if (*(a1 + 3792))
        {
          v9 = *(a1 + 3792);
          if (v9)
          {
            MEMORY[0x1E12C4020](v9, 0x1000C4052888210);
          }

          *(a1 + 3792) = 0;
        }

        *(a1 + 3772) = 0;
        *(a1 + 3776) = 0;
        if (*(a1 + 3780))
        {
          if (is_mul_ok(*(a1 + 3780), 4uLL))
          {
            v4 = 4 * *(a1 + 3780);
          }

          operator new[]();
        }

        std::vector<float>::resize((v32 + 96), 0);
        *(v32 + 80) = 0;
        *(v32 + 84) = 0;
        std::vector<float>::resize((v32 + 96), *(v32 + 88));
        *(a1 + 3784) = *(a1 + 3788);
        if (_logHandle)
        {
          v8 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v7 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v7 = init_default_corebrightness_log();
          }

          v8 = v7;
        }

        v19 = v8;
        v18 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_5_4_0_4_0_4_0_4_0_4_0(v36, 16, *(v32 + 4), *(a1 + 668), *(a1 + 3780), *(v32 + 88));
          _os_log_debug_impl(&dword_1DE8E5000, v19, v18, "[%x]: als->orientation=%d - _als.integrationMode=%d, _Lhistory_max=%u als->_Ehistory_max=%u", v36, 0x20u);
        }
      }
    }

    if ((v31[12] & 8) != 0)
    {
      v17 = (*(a1 + 620) * 65536.0);
      v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v17);
      if (v28)
      {
        if (_logHandle)
        {
          v6 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v5 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v5 = init_default_corebrightness_log();
          }

          v6 = v5;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_4_0(v35, 16, v31[3]);
          _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "[%x]: setting kIOHIDBacklightLevel %d", v35, 0xEu);
        }

        IOHIDServiceClientSetProperty(v33, @"IOHIDBacklightLevel", v28);
        CFRelease(v28);
      }
    }
  }

  else if (v31 && *v31 && !*(*v31 + 364) && !*(a1 + 668))
  {
    *(a1 + 3780) = 0;
    *(a1 + 600) = 0;
    *(a1 + 540) = -1.0;
    *(a1 + 544) = -1.0;
    *(a1 + 536) = -1.0;
    *(a1 + 552) = 0;
    *(a1 + 548) = -1.0;
    *(a1 + 624) = 0;
    *(a1 + 3788) = 0;
  }

  *MEMORY[0x1E69E9840];
}