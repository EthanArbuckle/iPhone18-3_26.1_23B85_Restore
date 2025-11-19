float **std::valarray<float>::operator=<std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>>(float **a1, uint64_t a2)
{
  v6 = std::__val_expr<std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>>::size[abi:de200100](a2);
  if (std::valarray<float>::size[abi:de200100](a1) != v6)
  {
    std::valarray<float>::resize(a1, v6, 0.0);
  }

  v5 = *a1;
  for (i = 0; i != v6; ++i)
  {
    *v5++ = std::__val_expr<std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>>::operator[][abi:de200100](a2, i);
  }

  return a1;
}

void *std::valarray<float>::valarray(void *a1, _DWORD *a2, unint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v11 = a1;
  *a1 = 0;
  a1[1] = 0;
  if (v8)
  {
    std::allocator<float>::allocator[abi:de200100](&v7);
    v3 = std::allocator<float>::allocate[abi:de200100](&v7, v8);
    a1[1] = v3;
    *a1 = v3;
    for (i = v8; i; --i)
    {
      *a1[1] = *v9;
      a1[1] += 4;
      ++v9;
    }
  }

  return v11;
}

{
  std::valarray<float>::valarray(a1, a2, a3);
  return a1;
}

uint64_t __os_log_helper_16_0_12_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *result = 0;
  *(result + 1) = 12;
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
  *(result + 93) = 8;
  *(result + 94) = a11;
  *(result + 102) = 0;
  *(result + 103) = 8;
  *(result + 104) = a12;
  *(result + 112) = 0;
  *(result + 113) = 8;
  *(result + 114) = a13;
  return result;
}

uint64_t *std::valarray<float>::__assign_range(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a3 - a2;
  if (std::valarray<float>::size[abi:de200100](a1) == v7)
  {
    std::copy[abi:de200100]<float const*,float *>(v9, v8, *a1);
  }

  else
  {
    v3 = std::valarray<float>::size[abi:de200100](a1);
    std::valarray<float>::__clear(a1, v3);
    std::allocator<float>::allocator[abi:de200100](&v6);
    *a1 = std::allocator<float>::allocate[abi:de200100](&v6, v7);
    a1[1] = *a1 + 4 * v7;
    std::uninitialized_copy[abi:de200100]<float const*,float *>(v9, v8, *a1);
  }

  return a1;
}

uint64_t *std::valarray<float>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  else
  {
    return std::valarray<float>::__assign_range(a1, *a2, a2[1]);
  }
}

double __DisplayFastEDRUpdateFade(double a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 - *(a3 + 8)) / *a3;
  if (v6 >= 1.0)
  {
    *(a3 + 20) = *(a3 + 16);
    result = 0.0;
    *a3 = 0;
  }

  else
  {
    v3 = -v6;
    v5 = *(a3 + 24);
    *&result = v5 * powf(fabsf(v5 / *(a3 + 16)), v3);
    *(a3 + 20) = LODWORD(result);
  }

  return result;
}

void *std::valarray<float>::~valarray(void *a1)
{
  std::valarray<float>::~valarray(a1);
  return a1;
}

{
  v3 = std::valarray<float>::size[abi:de200100](a1);
  std::valarray<float>::__clear(a1, v3);
  return a1;
}

void std::valarray<float>::__clear(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  if (*a1)
  {
    while (*(a1 + 8) != *a1)
    {
      *(a1 + 8) -= 4;
    }

    std::allocator<float>::allocator[abi:de200100](&v3);
    std::allocator<float>::deallocate[abi:de200100](&v3, *a1, v4);
    *(a1 + 8) = 0;
    *a1 = 0;
  }
}

uint64_t __os_log_helper_16_2_11_8_32_8_32_4_0_4_0_4_0_4_0_8_0_8_0_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  *result = 2;
  *(result + 1) = 11;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  *(result + 34) = 0;
  *(result + 35) = 4;
  *(result + 36) = a6;
  *(result + 40) = 0;
  *(result + 41) = 4;
  *(result + 42) = a7;
  *(result + 46) = 0;
  *(result + 47) = 8;
  *(result + 48) = a8;
  *(result + 56) = 0;
  *(result + 57) = 8;
  *(result + 58) = a9;
  *(result + 66) = 0;
  *(result + 67) = 8;
  *(result + 68) = a10;
  *(result + 76) = 0;
  *(result + 77) = 8;
  *(result + 78) = a11;
  *(result + 86) = 0;
  *(result + 87) = 4;
  *(result + 88) = a12;
  return result;
}

float **std::valarray<float>::operator=<std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>>(float **a1, uint64_t a2)
{
  v6 = std::__val_expr<std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>>::size[abi:de200100](a2);
  if (std::valarray<float>::size[abi:de200100](a1) != v6)
  {
    std::valarray<float>::resize(a1, v6, 0.0);
  }

  v5 = *a1;
  for (i = 0; i != v6; ++i)
  {
    *v5++ = std::__val_expr<std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>>::operator[][abi:de200100](a2, i);
  }

  return a1;
}

uint64_t ___ZN4AABC14enumerateALSesEU13block_pointerFvP20__IOHIDServiceClientPNS_3ALSEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

void __DisplayFadeUpdateFade(double a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a1 - *(a3 + 8);
  v7 = v8 / *a3;
  if (v7 >= 1.0)
  {
    v4 = fmin(1.0, *(a3 + 16));
    *(a3 + 20) = v4;
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v11, *&a1, *&v8, *a3, *&v7, COERCE__INT64(*(a3 + 24)), COERCE__INT64(*(a3 + 16)));
      _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "now=%f delta=%f fade->period=%f portion=%f fade->Pstart=%f fade->Ptarget=%f [finished]\n", v11, 0x3Eu);
    }

    if (*(a3 + 32))
    {
      (*(a3 + 32))(*(a3 + 40));
    }

    *a3 = 0;
  }

  else
  {
    v3 = fmin(1.0, *(a3 + 24) + (*(a3 + 16) - *(a3 + 24)) * v7);
    *(a3 + 20) = v3;
  }

  *MEMORY[0x1E69E9840];
}

uint64_t AABC::HandleDigitizerEvent(AABC *this, __IOHIDServiceClient *a2, __IOHIDEvent *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = ___ZN4AABC20HandleDigitizerEventEP20__IOHIDServiceClientP12__IOHIDEvent_block_invoke;
  v8 = &__block_descriptor_56_e35_v24__0____IOHIDServiceClient__8_v16l;
  v9 = this;
  v10 = a3;
  v11 = a2;
  return AABC::enumerateALSes(this, &v4);
}

void ___ZN4AABC20HandleDigitizerEventEP20__IOHIDServiceClientP12__IOHIDEvent_block_invoke(void *a1, uint64_t a2, id *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a1;
  v7 = a1[4];
  if (a3)
  {
    if (v13[3])
    {
      v11 = [[CBHIDEvent alloc] initWithHIDEvent:a1[5] andService:a1[6]];
      [v13[3] filterEvent:v11];
      MEMORY[0x1E69E5920](v11);
      if ((AABC::ALS::isTouchObstructed(v13) & 1) != 0 && v13 == *(v7 + 56))
      {
        if (*(v7 + 154) < *(v7 + 155))
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

          v10 = v6;
          v9 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            log = v10;
            type = v9;
            __os_log_helper_16_0_0(v8);
            _os_log_impl(&dword_1DE8E5000, log, type, "Cancel ramp, touch mitigation", v8, 2u);
          }

          AABC::CancelRamp(v7);
        }

        DisplayCancelRestrictionFactorFade(*(v7 + 50), 1);
      }
    }
  }
}

void AABC::registerService(AABC *this, __IOHIDServiceClient *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = this;
  v31 = a2;
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

  v30 = v10;
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v35, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v30, v29, "[%x]: ", v35, 8u);
  }

  if (v31)
  {
    v28 = IOHIDServiceClientCopyProperty(v31, @"Built-In");
    if (v28)
    {
      if (v28 == *MEMORY[0x1E695E4D0])
      {
        v27 = IOHIDServiceClientCopyProperty(v31, @"DeviceUsagePairs");
        if (v27)
        {
          v8 = CFGetTypeID(v27);
          if (v8 == CFArrayGetTypeID())
          {
            v26 = 0;
            theArray = v27;
            for (i = 0; ; ++i)
            {
              v7 = i;
              if (v7 >= CFArrayGetCount(theArray))
              {
                break;
              }

              if (IOHIDServiceClientConformsTo(v31, 0xFF00u, 4u))
              {
                operator new();
              }

              if (IOHIDServiceClientConformsTo(v31, 0xFF00u, 8u))
              {
                v23 = 1;
                v22 = IOHIDServiceClientCopyProperty(v31, @"Placement");
                if (v22)
                {
                  v6 = CFGetTypeID(v22);
                  if (v6 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v22, kCFNumberSInt32Type, &v23);
                  }
                }

                if (v22)
                {
                  CFRelease(v22);
                }

                if (v23 == 1)
                {
                  *(this + 59) = v31;
                  if (_logHandle)
                  {
                    v5 = _logHandle;
                  }

                  else
                  {
                    v4 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                    v5 = v4;
                  }

                  v21 = v5;
                  v20 = OS_LOG_TYPE_DEBUG;
                  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
                  {
                    __os_log_helper_16_2_3_4_0_8_64_8_32(v34, 8, v31, (&kDimPolicyStr)[*(this + 861)]);
                    _os_log_debug_impl(&dword_1DE8E5000, v21, v20, "[%x]: _prox=%@ _settings._internal._dimPolicy=%s", v34, 0x1Cu);
                  }
                }
              }

              if (IOHIDServiceClientConformsTo(v31, 0xDu, 4u) || IOHIDServiceClientConformsTo(v31, 0xDu, 0xCu))
              {
                *(this + 58) = v31;
                v26 = 1;
                if (_logHandle)
                {
                  v3 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v2 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v2 = init_default_corebrightness_log();
                  }

                  v3 = v2;
                }

                v19 = v3;
                v18 = OS_LOG_TYPE_DEBUG;
                if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
                {
                  __os_log_helper_16_2_2_4_0_8_64(v33, 32, *(this + 58));
                  _os_log_debug_impl(&dword_1DE8E5000, v19, v18, "[%x]: _digitizer=%@", v33, 0x12u);
                }
              }
            }

            if (v26)
            {
              v12 = MEMORY[0x1E69E9820];
              v13 = -1073741824;
              v14 = 0;
              v15 = ___ZN4AABC15registerServiceEP20__IOHIDServiceClient_block_invoke;
              v16 = &__block_descriptor_40_e35_v24__0____IOHIDServiceClient__8_v16l;
              v17 = this;
              AABC::enumerateALSes(this, &v12);
            }
          }
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }

      CFRelease(v28);
    }
  }

  *MEMORY[0x1E69E9840];
}

CBDigitizerFilter *___ZN4AABC15registerServiceEP20__IOHIDServiceClient_block_invoke(CBDigitizerFilter *result, uint64_t a2, const AABC::ALS *a3)
{
  if (a3)
  {
    if (!*(a3 + 3))
    {
      result = AABC::newDigitizerFilterForALS(*&result->_firstDigitizerEvent, a3);
      *(a3 + 3) = result;
    }
  }

  return result;
}

uint64_t AABC::getALSSensorTypeFromService(id *this, __IOHIDServiceClient *a2)
{
  v3 = [this[52] objectForKey:a2];
  if (v3)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t get_value_from_cfdata<unsigned int>(const void *a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  *buffer = 0;
  if (a1)
  {
    v3 = CFGetTypeID(v7);
    if (v3 == CFDataGetTypeID() && CFDataGetLength(v7) == 4)
    {
      v9 = 0;
      v8 = 4;
      v10 = 0;
      v11 = 4;
      v12.location = 0;
      v12.length = 4;
      CFDataGetBytes(v7, v12, buffer);
      v5 = 1;
    }
  }

  *v6 = *buffer;
  return v5 & 1;
}

uint64_t get_value_from_cfdata<int>(const void *a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  *buffer = 0;
  if (a1)
  {
    v3 = CFGetTypeID(v7);
    if (v3 == CFDataGetTypeID() && CFDataGetLength(v7) == 4)
    {
      v9 = 0;
      v8 = 4;
      v10 = 0;
      v11 = 4;
      v12.location = 0;
      v12.length = 4;
      CFDataGetBytes(v7, v12, buffer);
      v5 = 1;
    }
  }

  *v6 = *buffer;
  return v5 & 1;
}

uint64_t load_int_from_edt(io_registry_entry_t a1, const __CFString *a2, _DWORD *a3)
{
  value_from = 0;
  cf = IORegistryEntrySearchCFProperty(a1, "IOService", a2, *MEMORY[0x1E695E480], 3u);
  if (cf)
  {
    value_from = get_value_from_cfdata<int>(cf, a3);
    CFRelease(cf);
  }

  return value_from & 1;
}

uint64_t load_uint_from_edt(io_registry_entry_t a1, const __CFString *a2, _DWORD *a3)
{
  value_from = 0;
  cf = IORegistryEntrySearchCFProperty(a1, "IOService", a2, *MEMORY[0x1E695E480], 3u);
  if (cf)
  {
    value_from = get_value_from_cfdata<unsigned int>(cf, a3);
    CFRelease(cf);
  }

  return value_from & 1;
}

float load_fixed_float_from_edt(io_registry_entry_t a1, const __CFString *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = NAN;
  cf = IORegistryEntrySearchCFProperty(a1, "IOService", a2, *MEMORY[0x1E695E480], 3u);
  if (cf)
  {
    v3 = 0;
    if (get_integer_from_cfdata(cf, &v3))
    {
      v5 = v3 / 65536.0;
    }

    CFRelease(cf);
  }

  return v5;
}

uint64_t CBU_IsR2RSupported()
{
  CBU_IsR2RSupported_result = 1;
  if (CBU_IsR2RSupported_once != -1)
  {
    dispatch_once(&CBU_IsR2RSupported_once, &__block_literal_global_102);
  }

  return CBU_IsR2RSupported_result & 1;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void AABC::RampDoneCallback(AABC *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = this;
  *(this + 628) = 0;
  *(this + 155) = DisplayGetVirtualBrightness(*(this + 50));
  v10[1] = *(this + 155);
  v10[0] = 1;
  DisplayUpdateAAPState(*(this + 50), v10, 1, 0);
  AABC::UpdateALSState(this, 8);
  if (*(this + 126) && *(this + 125))
  {
    DeviceBrightness = DisplayGetDeviceBrightness(*(this + 50));
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
      __os_log_helper_16_2_3_8_32_8_0_8_0(v13, "ALS", COERCE__INT64(DeviceBrightness), COERCE__INT64(*(this + 155)));
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: End Ramp: L_device = %0.4f L_current = %0.4f", v13, 0x20u);
    }
  }

  else
  {
    if (_logHandle)
    {
      v2 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v1 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v1 = init_default_corebrightness_log();
      }

      v2 = v1;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v12, COERCE__INT64(*(this + 155)));
      _os_log_debug_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEBUG, "End Ramp: _L_current = %0.4f", v12, 0xCu);
    }
  }

  if (*(this + 719) == 2)
  {
    *(this + 719) = 1;
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:(*(this + 155) * 65536.0)];
    AABC::setAlwaysOnProperty(this, &cfstr_Currentbrightn.isa, v8);
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 719)];
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"AOTState", 0}];
    AABC::setAlwaysOnProperty(this, &cfstr_Aotstate.isa, v6);
    IOHIDServiceClientSetProperty(*(this + 40), @"AODALSMode", *MEMORY[0x1E695E4D0]);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
  }

  else if (*(this + 719) == 3)
  {
    AABC::UpdateState(this, 2);
    AABC::BeginFastRampMode(this, *(this + 855), 0.2);
    *(this + 719) = 0;
  }

  *MEMORY[0x1E69E9840];
}

void __DisplaySetAAPFactorWithFade(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, float a4, float a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a5 = *(a1 + 376);
  }

  *(a1 + 12400) = a5;
  if (*(a1 + 12400) == 0.0)
  {
    *(a1 + 12424) = a4;
    *(a1 + 12416) = a4;
    *(a1 + 12420) = a4;
    __DisplaySetAAPFactor(a1, a4);
    if (a2)
    {
      a2(a3);
    }
  }

  else if (*(a1 + 12392) != a4)
  {
    *(a1 + 12440) = a2;
    *(a1 + 12448) = a3;
    *(a1 + 12408) = CFAbsoluteTimeGetCurrent();
    v8 = *(a1 + 12488);
    if (v8 == 0.0)
    {
      v8 = 0.100000001;
    }

    *(a1 + 12420) = *(a1 + 12392);
    *(a1 + 12424) = *(a1 + 12392);
    *(a1 + 12416) = a4;
    HIDWORD(v5) = HIDWORD(v8);
    *&v5 = v8;
    __DisplayStartFadeWithType(a1, 10, v5);
  }

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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(v14, "AAP", COERCE__INT64(*(a1 + 12424)), COERCE__INT64(*(a1 + 12416)), *(a1 + 12400), 0);
    _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_INFO, "[BRT update: %s]: %f -> %f t: %f interval: %0.2f", v14, 0x34u);
  }

  *MEMORY[0x1E69E9840];
}

void AABC::UpdateALSState(CFDictionaryRef *this, int a2)
{
  v6 = this;
  v5 = a2;
  memset(__b, 0, sizeof(__b));
  __b[0] = this;
  memcpy(&__b[1], this + 79, 0x28uLL);
  LODWORD(__b[6]) = v5;
  theDict = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], this[52]);
  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, AABC::UpdateALSStateFunction, __b);
    CFRelease(theDict);
  }
}

void AABC::UpdateALSStateFunction(__IOHIDServiceClient *a1, AABC::ALS *a2, uint64_t *a3)
{
  if (*(*a3 + 648))
  {
    AABC::UpdateALSStateFunctionInternalAutoRate(*a3, a1, a2, a3);
  }

  else
  {
    AABC::UpdateALSStateFunctionInternalNoAutoRate(*a3, a1, a2, a3);
  }
}

void AABC::UpdateALSStateFunctionInternalNoAutoRate(uint64_t a1, __IOHIDServiceClient *a2, AABC::ALS *a3, float *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  if (a4 && *v33 && *(*v33 + 364))
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

    v32 = v15;
    v31 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_3_4_0_4_0_4_0(v41, 16, *(v33 + 12), *(a1 + 480));
      _os_log_debug_impl(&dword_1DE8E5000, v32, v31, "[%x]: function=%x _displayState=%d", v41, 0x14u);
    }

    if (*(a1 + 437))
    {
      AABC::lazyLoadIntegrationTimes(a1, v35, v34);
    }

    v30 = 0;
    if (v33[12])
    {
      if (*(a1 + 644) != 1)
      {
        *(a1 + 644) = 1;
        v29 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 644));
        if (v29)
        {
          IOHIDServiceClientSetProperty(v35, @"IOHIDALSContinuousMode", v29);
          CFRelease(v29);
        }
      }

      if (v33[2] != *(v34 + 40))
      {
        *(v34 + 40) = v33[2];
        v28 = "";
        v27 = 0;
        if (*(v34 + 40) == *(v34 + 12))
        {
          v28 = "(super-fast mode)";
        }

        else if (*(v34 + 40) == *(v34 + 13))
        {
          v28 = "(fast mode)";
          v27 = 2;
        }

        else if (*(v34 + 40) == *(v34 + 14))
        {
          v28 = "(slow mode)";
        }

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
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_0_8_34(v40, COERCE__INT64(*(v34 + 40)), v28);
          _os_log_impl(&dword_1DE8E5000, v26, v25, "setting report interval: %fs %{public}s", v40, 0x16u);
        }

        valuePtr = 0;
        valuePtr = (*(v34 + 40) * 1000000.0);
        v30 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        if (v30)
        {
          IOHIDServiceClientSetProperty(v35, @"ReportInterval", v30);
          CFRelease(v30);
        }

        if (*(v34 + 40) <= 0.0)
        {
          *(a1 + 3780) = 0;
          *(v34 + 22) = 0;
          *(a1 + 600) = 0;
          *(a1 + 540) = -1.0;
          *(a1 + 544) = -1.0;
          *(a1 + 536) = -1.0;
          *(a1 + 552) = 0;
          *(a1 + 548) = -1.0;
          AABC::_UpdateSemanticAmbientLightLevel(a1, 0);
          *(v34 + 41) = 0;
          *(a1 + 624) = 0;
          *(a1 + 3788) = 0;
        }

        else
        {
          *(a1 + 3780) = (7.0 / *(a1 + 632));
          if (v27 <= 0)
          {
            *(v34 + 22) = (*(a1 + 3452) / *(a1 + 632));
          }

          else
          {
            *(v34 + 22) = v27;
          }

          *(a1 + 3788) = (4.0 / *(a1 + 632));
        }

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

        v23 = v11;
        v22 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_4_4_0_8_0_4_0_4_0(v39, 16, COERCE__INT64(*(v34 + 40)), *(a1 + 3780), *(v34 + 22));
          _os_log_debug_impl(&dword_1DE8E5000, v23, v22, "[%x]: als->_alsCurrentInterval=%f, _Lhistory_max=%u als->_Ehistory_max=%u", v39, 0x1Eu);
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

        std::vector<float>::resize(v34 + 12, 0);
        *(v34 + 20) = 0;
        *(v34 + 21) = 0;
        std::vector<float>::resize(v34 + 12, *(v34 + 22));
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

        *(a1 + 3784) = *(a1 + 3788);
      }
    }

    if ((v33[12] & 4) != 0)
    {
      v30 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v33 + 4);
      if (v30)
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
          __os_log_helper_16_0_2_4_0_4_0(v38, 16, *(v33 + 4));
          _os_log_debug_impl(&dword_1DE8E5000, oslog, v20, "[%x]: setting IOHIDALSTestMode %d", v38, 0xEu);
        }

        IOHIDServiceClientSetProperty(v35, @"IOHIDALSTestMode", v30);
        CFRelease(v30);
      }

      if (*(v33 + 4))
      {
        if (*(*v33 + 484) > 0.0 && *(v34 + 40) < 0.05)
        {
          *(v34 + 40) = 1045220557;
          v19 = 0;
          v19 = (*(v34 + 40) * 1000000.0);
          v30 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v19);
          if (v30)
          {
            IOHIDServiceClientSetProperty(v35, @"ReportInterval", v30);
            CFRelease(v30);
          }
        }
      }
    }

    if ((v33[12] & 0x10) != 0)
    {
      v18 = 0;
      v18 = *(a1 + 668);
      v30 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v18);
      if (v30)
      {
        IOHIDServiceClientSetProperty(v35, @"ALSIntegrationMode", v30);
        CFRelease(v30);
      }
    }

    if ((v33[12] & 8) != 0)
    {
      v17 = (*(a1 + 620) * 65536.0);
      v30 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v17);
      if (v30)
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
          __os_log_helper_16_0_2_4_0_4_0(v37, 16, *(v33 + 3));
          _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "[%x]: setting kIOHIDBacklightLevel %d", v37, 0xEu);
        }

        IOHIDServiceClientSetProperty(v35, @"IOHIDBacklightLevel", v30);
        CFRelease(v30);
      }
    }
  }

  else if (v33 && *v33 && !*(*v33 + 364) && v33[2] <= 0.0)
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

uint64_t __os_log_helper_16_2_3_8_32_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void SetBLDriverNitsValueIfNotInLPM(uint64_t a1, int a2)
{
  if ((*(a1 + 1504) & 1) == 0)
  {
    SetBLDriverNitsValue(a1, a2);
  }

  *(a1 + 1508) = a2;
}

void SetBLDriverNitsValue(float *a1, int a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v49 = a1;
  valuePtr = a2;
  if (_logHandle)
  {
    v11 = _logHandle;
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

    v11 = inited;
  }

  v47 = v11;
  v46 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v50, COERCE__INT64((valuePtr / 65536.0)));
    _os_log_debug_impl(&dword_1DE8E5000, v47, v46, "Setting BL nits value to %f", v50, 0xCu);
  }

  v49[381] = valuePtr / 65536.0;
  if (v49[379])
  {
    if ((*(v49 + 321) & 1) != 0 || (CBU_ForceFrameAfterBrightnessUpdate() & 1) == 0)
    {
      v41 = valuePtr / 65536.0;
      v40 = v49[383];
      if (v41 >= v40 || valuePtr <= 0)
      {
        if (valuePtr > 0)
        {
          v5 = *(v49 + 18);
          v26 = MEMORY[0x1E69E9820];
          v27 = -1073741824;
          v28 = 0;
          v29 = __SetBLDriverNitsValue_block_invoke_2;
          v30 = &__block_descriptor_40_e5_v8__0l;
          v31 = v49;
          dispatch_async(v5, &v26);
        }

        v6 = CFGetAllocator(v49);
        cf = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
        if (cf)
        {
          __DisplaySetBLDriverProperty(v49, @"brightness-nits", cf);
          CFRelease(cf);
          SetIOMFBBrightness(v49, valuePtr, 0);
        }

        if (!valuePtr)
        {
          v7 = *(v49 + 18);
          v19 = MEMORY[0x1E69E9820];
          v20 = -1073741824;
          v21 = 0;
          v22 = __SetBLDriverNitsValue_block_invoke_3;
          v23 = &__block_descriptor_40_e5_v8__0l;
          v24 = v49;
          dispatch_async(v7, &v19);
        }
      }

      else
      {
        v3 = *(v49 + 18);
        block = MEMORY[0x1E69E9820];
        v34 = -1073741824;
        v35 = 0;
        v36 = __SetBLDriverNitsValue_block_invoke;
        v37 = &__block_descriptor_44_e5_v8__0l;
        v38 = v49;
        v39 = v41;
        dispatch_async(v3, &block);
        valuePtr = (v40 * 65536.0);
        v4 = CFGetAllocator(v49);
        v32 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
        if (v32)
        {
          __DisplaySetBLDriverProperty(v49, @"brightness-nits", v32);
          CFRelease(v32);
          SetIOMFBBrightness(v49, valuePtr, 0);
        }
      }
    }

    else
    {
      v45 = valuePtr / 65536.0;
      v44 = v49[383];
      v43 = 1.0;
      if (v45 < v44 && valuePtr > 0)
      {
        valuePtr = (v44 * 65536.0);
        v43 = v45 / v49[383];
      }

      v2 = CFGetAllocator(v49);
      v42 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      if (v42)
      {
        __DisplaySetBLDriverProperty(v49, @"brightness-nits", v42);
        CFRelease(v42);
        SetIOMFBBrightness(v49, valuePtr, 0);
      }

      SetWiggledDigitalDimmingScalar(v49, v43);
    }
  }

  else
  {
    v8 = CFGetAllocator(v49);
    v18 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    if (v18)
    {
      __DisplaySetBLDriverProperty(v49, @"brightness-nits", v18);
      CFRelease(v18);
      SetIOMFBBrightness(v49, valuePtr, 0);
      if (*(v49 + 321) & 1) == 0 && (CBU_ForceFrameAfterBrightnessUpdate())
      {
        v9 = *(v49 + 18);
        v12 = MEMORY[0x1E69E9820];
        v13 = -1073741824;
        v14 = 0;
        v15 = __SetBLDriverNitsValue_block_invoke_4;
        v16 = &__block_descriptor_40_e5_v8__0l;
        v17 = v49;
        dispatch_async(v9, &v12);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void SetIOMFBBrightness(_BYTE *a1, int a2, char a3)
{
  v25 = a1;
  valuePtr = a2;
  v23 = a3;
  if (a1[321])
  {
    if (*(v25 + 232) & 1) == 0 || (v23)
    {
      if (*(v25 + 120))
      {
        v3 = *(v25 + 120);
        block = MEMORY[0x1E69E9820];
        v16 = -1073741824;
        v17 = 0;
        v18 = __SetIOMFBBrightness_block_invoke;
        v19 = &__block_descriptor_45_e5_v8__0l;
        v20 = v25;
        v21 = valuePtr;
        v22 = v23 & 1;
        dispatch_async(v3, &block);
      }

      else
      {
        SendSyncDBVNotification(v25, v23 & 1, valuePtr / 65536.0);
      }

      *(v25 + 140) = valuePtr;
    }

    else
    {
      *(v25 + 236) = valuePtr;
    }
  }

  else
  {
    v4 = CFGetAllocator(v25);
    cf = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
    if (!cf)
    {
      return;
    }

    if (*(v25 + 108))
    {
      if (*(v25 + 136))
      {
        v13 = valuePtr;
        if (*(v25 + 140) != valuePtr)
        {
          if ((*(v25 + 232) & 1) != 0 && (v23 & 1) == 0)
          {
            *(v25 + 236) = v13;
            CFRelease(cf);
            return;
          }

          if (*(v25 + 120))
          {
            CFRetain(cf);
            v5 = *(v25 + 120);
            v6 = MEMORY[0x1E69E9820];
            v7 = -1073741824;
            v8 = 0;
            v9 = __SetIOMFBBrightness_block_invoke_2;
            v10 = &__block_descriptor_48_e5_v8__0l;
            v11 = v25;
            v12 = cf;
            dispatch_async(v5, &v6);
          }

          else
          {
            IORegistryEntrySetCFProperty(*(v25 + 108), @"IOMFBBrightnessLevel", cf);
          }

          *(v25 + 140) = v13;
        }
      }
    }

    CFRelease(cf);
  }
}

void AABC::HandleKeyboardEvent(AABC *this, __IOHIDServiceClient *a2, __IOHIDEvent *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  IntegerValue = IOHIDEventGetIntegerValue();
  v22 = IOHIDEventGetIntegerValue();
  v21 = IOHIDEventGetIntegerValue();
  v20 = 0;
  if (_logHandle)
  {
    v18 = _logHandle;
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

    v18 = inited;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_4_0_8_0_8_0_8_0(v31, 2, IntegerValue, v22, v21);
    _os_log_debug_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_DEBUG, "[%x]: downEvent=%lx usagePage=%lx usage=%lx", v31, 0x26u);
  }

  if (v22 == 12)
  {
    switch(v21)
    {
      case 48:
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

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v30, IntegerValue);
          _os_log_debug_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEBUG, "downEvent=%lx usagePage=kHIDPage_Consumer usage=kHIDUsage_Csmr_Power", v30, 0xCu);
        }

        if (IntegerValue)
        {
          v20 = 1;
        }

        break;
      case 64:
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

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v28, IntegerValue);
          _os_log_debug_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEBUG, "downEvent=%lx usagePage=kHIDPage_Consumer usage=kHIDUsage_Csmr_Menu", v28, 0xCu);
        }

        if (IntegerValue)
        {
          v20 = 1;
        }

        break;
      case 547:
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

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v29, IntegerValue);
          _os_log_debug_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEBUG, "downEvent=%lx usagePage=kHIDPage_Consumer usage=kHIDUsage_Csmr_ACHome", v29, 0xCu);
        }

        if (IntegerValue)
        {
          v20 = 1;
        }

        break;
    }
  }

  else if (v22 == 65289)
  {
    if (v21 == 1)
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

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v27, IntegerValue);
        _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "downEvent=%lx usagePage=kHIDPage_AppleVendorSmartCover usage=kHIDUsage_AppleVendorSmartCover_Open", v27, 0xCu);
      }

      if (IntegerValue)
      {
        *(this + 968) = 2;
      }

      else
      {
        *(this + 968) = 1;
      }
    }

    else if (v21 == 2)
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

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v26, IntegerValue);
        _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "downEvent=%lx usagePage=kHIDPage_AppleVendorSmartCover usage=kHIDUsage_AppleVendorSmartCover_Flap1", v26, 0xCu);
      }

      if (*(this + 968) != 1)
      {
        if (IntegerValue)
        {
          *(this + 968) = 3;
        }

        else
        {
          *(this + 968) = 2;
          v20 = 1;
        }
      }
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
      __os_log_helper_16_0_1_4_0(v25, *(this + 968));
      _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "usagePage=kHIDPage_AppleVendorSmartCover SmartCoverState=%d", v25, 8u);
    }
  }

  if (*(this + 126) && (v20 & 1) != 0 && !*(this + 120))
  {
    if (*(this + 57))
    {
      *(this + 158) = *(*(this + 57) + 48);
    }

    if (*(this + 160) && *(this + 158) < 0.05)
    {
      *(this + 158) = 1045220557;
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
      __os_log_helper_16_0_1_8_0(v24, COERCE__INT64(*(this + 158)));
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Keyboard/Cover event -> turn on ALS sensor with interval %f.", v24, 0xCu);
    }

    *(this + 167) = 1;
    AABC::UpdateALSState(this, 17);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t std::vector<float>::emplace_back<float const&>(void *a1, float *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = std::vector<float>::__emplace_back_slow_path<float const&>(a1, a2);
  }

  else
  {
    std::vector<float>::__construct_one_at_end[abi:de200100]<float const&>(a1, a2);
    v5 = v4 + 4;
  }

  a1[1] = v5;
  return v5 - 4;
}

void AABC::SetAutoBrightnessStatus(AABC *this, int a2, float a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = this;
  v34 = a2;
  v33 = a3;
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
    __os_log_helper_16_0_1_4_0(v40, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v32, v31, "[%x]: ", v40, 8u);
  }

  v34 |= *(this + 862) | 1;
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

  v30 = v15;
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_4_0_8_32_8_0(v39, 2, "true", COERCE__INT64(v33));
    _os_log_debug_impl(&dword_1DE8E5000, v30, v29, "[%x]: active=%s duration=%f", v39, 0x1Cu);
  }

  if (*(this + 125) == v34)
  {
    if (*(this + 126) && *(this + 125) && v33 > 0.0)
    {
      AABC::UpdateState(this, 2);
      AABC::BeginFastRampMode(this, v33, 0.2);
    }
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
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v12 = init_default_corebrightness_log();
      }

      v13 = v12;
    }

    v28 = v13;
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 126))
      {
        v3 = "true";
      }

      else
      {
        v3 = "false";
      }

      __os_log_helper_16_2_3_8_32_8_32_8_0(v38, v3, "true", COERCE__INT64(*(this + 135)));
      _os_log_impl(&dword_1DE8E5000, v28, v27, "_autoBrightnessEnabled=%s active=%s _Esensor_trusted=%f", v38, 0x20u);
    }

    if (*(this + 126))
    {
      if (v33 <= 0.0)
      {
        if (*(this + 862))
        {
          AABC::UpdateState(this, 3);
        }

        else
        {
          *(this + 175) = 1;
          AABC::UpdateState(this, 2);
          AABC::BeginFastRampMode(this, *(this + 855), 0.2);
        }
      }

      else
      {
        AABC::UpdateState(this, 2);
        AABC::BeginFastRampMode(this, v33, 0.2);
      }

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

      v26 = v11;
      v25 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_4_0_4_0(v37, 2, *(this + 150));
        _os_log_debug_impl(&dword_1DE8E5000, v26, v25, "[%x]: _Esamples=%x", v37, 0xEu);
      }

      if (*(this + 150))
      {
        v24 = fminf(fmaxf(AABC::IlluminanceToLuminance(this, this + 264, *(this + 135), *(this + 138)), *(this + 180)), *(this + 182));
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

        v23 = v9;
        v22 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_8_0(v36, 2, COERCE__INT64(v24));
          _os_log_debug_impl(&dword_1DE8E5000, v23, v22, "[%x]: L=%f", v36, 0x12u);
        }

        AABC::UpdateDisplayBrightness_Block6(this, 1, 2, 0, v24);
        *(this + 151) = 0;
      }
    }

    else
    {
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

      v21 = v7;
      v20 = 1;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v4 = v21;
        v5 = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_impl(&dword_1DE8E5000, v4, v5, "Cancel ramp, manual brightness", v19, 2u);
      }

      AABC::CancelRamp(this);
      AABC::UpdateState(this, 1);
    }

    *(this + 125) = v34;
  }

  *MEMORY[0x1E69E9840];
}

void ___ZN4AABC25scheduleWithDispatchQueueEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  notify_get_state(*(v3 + 965), v3 + 483);
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
    __os_log_helper_16_0_2_4_0_8_0(v4, 2, *(v3 + 483));
    _os_log_debug_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEBUG, "[%x]: _lockState=%llx", v4, 0x12u);
  }

  if (!*(v3 + 483))
  {
    if (*(v3 + 175))
    {
      AABC::CancelFastRampMode(v3);
      *(v3 + 175) = 0;
    }

    *(v3 + 950) = 0;
  }

  *MEMORY[0x1E69E9840];
}

void AABC::HandleProxEvent(AABC *this, __IOHIDServiceClient *a2, __IOHIDEvent *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = this;
  v27 = a2;
  v26 = a3;
  IntegerValue = IOHIDEventGetIntegerValue();
  if (AABC::ignoreProxEventsInAOD(this, [+[CBAODState AODState] sharedInstance])
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

    v24 = v15;
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      log = v24;
      type = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_impl(&dword_1DE8E5000, log, type, "Ongoing AOD transition IN/OUT -> Ignoring Prox Events!!", v22, 2u);
    }
  }

  else if ((IntegerValue & 0x200) != 0 || (IntegerValue & 0x40) != 0 || (IntegerValue & 0x100) != 0)
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
      __os_log_helper_16_0_2_4_0_4_0(v30, 64, IntegerValue);
      _os_log_debug_impl(&dword_1DE8E5000, v21, v20, "[%x]: setting _proxState = kProxTriggered (proxMask=%x)", v30, 0xEu);
    }

    *(this + 942) = 1;
    if (*(this + 3757))
    {
      if (*(this + 154) < *(this + 155))
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

        v19 = v9;
        v18 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v19;
          v7 = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_impl(&dword_1DE8E5000, v6, v7, "Cancel ramp, prox. mitigation", v17, 2u);
        }

        AABC::CancelRamp(this);
      }

      DisplayCancelRestrictionFactorFade(*(this + 50), 1);
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_4_0_4_0(v29, 64, IntegerValue);
      _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "[%x]: setting _proxState = kProxReleased (proxMask=%x)", v29, 0xEu);
    }

    if (*(this + 169))
    {
      *(this + 942) = 0;
    }

    else
    {
      *(this + 942) = 2;
      v3 = IOHIDEventGetTimeStamp() * *&AABC::_sMachTimebaseFactor;
      *(this + 941) = v3;
    }
  }

  *MEMORY[0x1E69E9840];
}

BOOL AABC::ignoreProxEventsInAOD(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (a2 != 2)
  {
    v3 = 1;
    if (a2 != 3)
    {
      return a2 == 1;
    }
  }

  return v3;
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void __DisplayFadeUpdateRestrictionFactorFade(double a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = a1 - *(a3 + 8);
  v8 = v10 / *a3;
  if (*(a3 + 20) == *(a3 + 16))
  {
    v8 = 1.0;
  }

  if (v8 >= 1.0)
  {
    *(a3 + 20) = *(a3 + 16);
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
      __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v13, *&a1, *&v10, *a3, *&v8, COERCE__INT64(*(a3 + 24)), COERCE__INT64(*(a3 + 16)));
      _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "now=%f delta=%f fade->period=%f portion=%f fade->Fstart=%f fade->Ftarget=%f [finished]\n", v13, 0x3Eu);
    }

    if (*(a3 + 40))
    {
      (*(a3 + 40))(*(a3 + 48));
    }

    *a3 = 0;
  }

  else
  {
    if (*(a3 + 24) >= *(a3 + 16))
    {
      v9 = 1.0 - (1.0 - v8) * (1.0 - v8) * (1.0 - v8);
    }

    else
    {
      v9 = v8 * v8 * v8;
    }

    v3 = *(a3 + 24) + (*(a3 + 16) - *(a3 + 24)) * v9;
    *(a3 + 20) = v3;
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
      __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v14, *&a1, *&v10, *a3, *&v9, COERCE__INT64(*(a3 + 24)), COERCE__INT64(*(a3 + 16)), COERCE__INT64(*(a3 + 20)));
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "now=%f delta=%f fade->period=%f portion=%f fade->Fstart=%f fade->Ftarget=%f Factor=%f\n", v14, 0x48u);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_0_4_8_0_4_0_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  return result;
}

uint64_t CFXEnableBlueLightReduction(uint64_t result, char a2, float a3, float a4)
{
  v9 = result;
  if (!*(result + 104))
  {
    result = CFXInitializeBlueLightReduction(result);
  }

  if (*(v9 + 104) && ((a2 & 1) != 0 || a3 != **(v9 + 104) || (*(*(v9 + 104) + 48) & 1) != 0))
  {
    if (a3 > 0.0 && (*(v9 + 1648) & 1) == 0 || a3 == 0.0 && (*(v9 + 1648) & 1) != 0)
    {
      v8 = mach_absolute_time();
      v7 = MachTimeToSeconds((v8 - *(v9 + 1640)));
      if (*(v9 + 1648))
      {
        *(v9 + 1624) = *(v9 + 1624) + v7;
      }

      else
      {
        *(v9 + 1632) = *(v9 + 1632) + v7;
      }

      *(v9 + 1640) = v8;
      *(v9 + 1648) = a3 > 0.0;
    }

    **(v9 + 104) = a3;
    v6 = fminf(fmaxf(a3, 0.0), 1.0);
    if (*(*(v9 + 104) + 44) >= 0.0)
    {
      v6 = *(*(v9 + 104) + 44);
    }

    v4 = (v6 * *(*(v9 + 104) + 28)) + (1.0 - v6) * *(v9 + 2124);
    _CFXCCT2xy_Shifted(v9, (*(v9 + 104) + 20), v4);
    CFXChromaticity2Tristimulus((*(v9 + 104) + 20), (*(v9 + 104) + 8), 150.0);
    if (a4 < 0.0)
    {
      v5 = *(*(v9 + 104) + 4);
    }

    else
    {
      v5 = a4;
    }

    _CFXSetNativeWhitePointCorrection(v9, a3 > 0.0, 2, v5);
    result = _CFXUpdateBLRTarget(v9, v5);
    *(*(v9 + 104) + 48) = 0;
  }

  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_7_4_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 0;
  *(result + 1) = 7;
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
  *(result + 58) = 0;
  *(result + 59) = 8;
  *(result + 60) = a8;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_4_0_8_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void AABC::SetDisplayFactor(AABC *this, float a2, char a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v64 = this;
  v63 = a2;
  v62 = a3;
  if (_logHandle)
  {
    v27 = _logHandle;
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

    v27 = inited;
  }

  v61 = v27;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_4_0(v71, COERCE__INT64(v63), v62 & 1);
    _os_log_impl(&dword_1DE8E5000, v61, type, "Factor=%0.4f reasonActivateALS=%d", v71, 0x12u);
  }

  v59 = *(this + 122);
  if (v62)
  {
    if (*(this + 122) > 0.0 || v63 == *(this + 121))
    {
      goto LABEL_151;
    }
  }

  else
  {
    *(this + 122) = v63;
  }

  if (v63 != *(this + 121) || v63 != v59)
  {
    v58 = *(this + 121);
    *(this + 121) = v63;
    *(this + 120) = *(this + 121) > 0.0;
    if ((v58 == 0.0 || v59 == 0.0) && *(this + 121) > 0.0)
    {
      *(this + 140) = 0;
      *(this + 152) = 0;
      *(this + 153) = 0;
      if (*(this + 500) && (*(this + 78) == 6 || *(this + 78) == 1))
      {
        v57 = 0;
        [*(this + 500) sendCommand:233 inputBuffer:&v57 inputBufferSize:1];
      }

      if ((*(this + 3376) & 1) != 0 && *(this + 834) && *(this + 834) < *(this + 845))
      {
        if (*(this + 842))
        {
          AABC::revertToGoodCurve(this, 4);
          *(this + 842) = 1;
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current > *(this + (*(this + 834) - 1) + 418) + *(this + 423) && Current > *(this + 415) + *(this + 424))
          {
            AABC::revertToGoodCurve(this, 4);
            *(this + 842) = 1;
          }
        }
      }

      if (*(this + 3409))
      {
        v55 = CFAbsoluteTimeGetCurrent();
        if (v55 - *(this + 415) >= *(this + 153))
        {
          AABC::revertToGoodCurve(this, 1);
        }
      }

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

      v54 = v25;
      v53 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v70, COERCE__INT64(*(this + 268)), COERCE__INT64(*(this + 270)), COERCE__INT64(*(this + 269)), COERCE__INT64(*(this + 271)));
        _os_log_debug_impl(&dword_1DE8E5000, v54, v53, "curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f", v70, 0x2Au);
      }

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

      v52 = v23;
      v51 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v69, COERCE__INT64(*(this + 264)), COERCE__INT64(*(this + 265)), COERCE__INT64(*(this + 266)), COERCE__INT64(*(this + 267)));
        _os_log_debug_impl(&dword_1DE8E5000, v52, v51, "dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v69, 0x2Au);
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

      v50 = v21;
      v49 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v19 = 0;
        if (*(this + 59))
        {
          v19 = *(this + 3757);
        }

        if (v19)
        {
          v3 = "yes";
        }

        else
        {
          v3 = "no";
        }

        __os_log_helper_16_2_2_8_32_8_32(v68, v3, (&kDimPolicyStr)[*(this + 861)]);
        _os_log_debug_impl(&dword_1DE8E5000, v50, v49, "prox mitigation: %s dimPolicy: %s", v68, 0x16u);
      }

      *(this + 950) = 0;
      if (*(this + 862))
      {
        AABC::SetAutoBrightnessStatus(this, 1, *(this + 855));
      }

      AABC::UpdateState(this, 2);
      AABC::BeginFastRampMode(this, *(this + 855), 0.2);
      if (*(this + 150))
      {
        v48 = AABC::IlluminanceToLuminance(this, this + 264, *(this + 135), *(this + 138));
        if (*(this + 3425))
        {
          v47 = AABC::IlluminanceToLuminance(this, this + 804, *(this + 135), *(this + 138));
          v48 = fminf(v48, v47);
          if ((*(this + 3426) & 1) == 0)
          {
            v48 = fminf(*(this + 857), v47);
          }
        }

        v48 = fminf(fmaxf(v48, *(this + 180)), *(this + 182));
        AABC::UpdateDisplayBrightness_Block6(this, 0, 2, 0, v48);
      }

      else
      {
        if ((*(this + 144) & 1) != 0 && *(this + 56) && *(*(this + 56) + 40))
        {
          LODWORD(v4) = 0.5;
          v46 = [*(*(this + 56) + 40) copyALSEventWithinTimeout:v4];
          if (v46)
          {
            if (_logHandle)
            {
              v18 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v17 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v17 = init_default_corebrightness_log();
              }

              v18 = v17;
            }

            v45 = v18;
            v44 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_2_1_8_66(v67, v46);
              _os_log_impl(&dword_1DE8E5000, v45, v44, "Use copied event: %{public}@", v67, 0xCu);
            }

            AABC::HandleALSEvent(this, *(this + 40), [v46 event]);
            MEMORY[0x1E69E5920](v46);
          }

          if (!*(this + 150) && (*(this + 436) & 1) != 0)
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
            v42 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_8_0(v66, COERCE__INT64(*(this + 854)));
              _os_log_error_impl(&dword_1DE8E5000, oslog, v42, "Copy event failed => arm first ALS sample TIMEOUT routine (timeout=%f)", v66, 0xCu);
            }
          }
        }

        if (!*(this + 150))
        {
          AABC::ArmFirstALSSampleTimer(this);
        }
      }

      v41[0] = std::bitset<3ul>::operator[][abi:de200100](this + 296, 1uLL);
      v41[1] = v5;
      std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator=[abi:de200100](v41, 0);
      AABC::evaluateAABRearConditions(this);
    }

    else if (*(this + 121) == 1.0)
    {
      *(this + 140) = 0;
      *(this + 151) = 0;
      *(this + 152) = 0;
      *(this + 153) = 0;
      v40 = AABC::IlluminanceToLuminance(this, this + 264, *(this + 135), *(this + 138));
      if (*(this + 3425))
      {
        v39 = AABC::IlluminanceToLuminance(this, this + 804, *(this + 135), *(this + 138));
        v40 = fminf(v40, v39);
        if ((*(this + 3426) & 1) == 0)
        {
          v40 = fminf(*(this + 857), v39);
        }
      }

      v40 = fminf(fmaxf(v40, *(this + 180)), *(this + 182));
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

      v38 = v14;
      v37 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_4_0_8_0(v65, 2, COERCE__INT64(v40));
        _os_log_debug_impl(&dword_1DE8E5000, v38, v37, "[%x]: L=%f", v65, 0x12u);
      }

      if (*(this + 126) && *(this + 125))
      {
        AABC::UpdateDisplayBrightness_Block6(this, 0, 2, 0, v40);
      }
    }

    else if (*(this + 121) == 0.0)
    {
      v36[0] = std::bitset<3ul>::operator[][abi:de200100](this + 296, 1uLL);
      v36[1] = v6;
      std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator=[abi:de200100](v36, 1);
      AABC::evaluateAABRearConditions(this);
      AABC::CancelFirstSampleTimeout(this);
      if (*(this + 78) == 6 && *(this + 719) == 1 && *(this + 40))
      {
        v35 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        v34 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v35, @"AOTState", 0}];
        AABC::setAlwaysOnProperty(this, &cfstr_Aotstate.isa, v34);
        IOHIDServiceClientSetProperty(*(this + 40), @"AODALSMode", *MEMORY[0x1E695E4C0]);
        MEMORY[0x1E69E5920](v34);
        MEMORY[0x1E69E5920](v35);
      }

      AABC::UpdateState(this, 0);
      [*(this + 464) updateStatsDisplayOff];
      v33 = mach_absolute_time();
      v7 = v33 * *&AABC::_sMachTimebaseFactor;
      *(this + 168) = v7;
      if (*(this + 126))
      {
        v8 = *(this + 125);
      }

      *(this + 85) = 0;
      if (*(this + 3409) & 1) != 0 && (*(this + 3328))
      {
        *(this + 415) = CFAbsoluteTimeGetCurrent();
        if (_logHandle)
        {
          v12 = _logHandle;
        }

        else
        {
          v11 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v12 = v11;
        }

        v32 = v12;
        v31 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v9 = v32;
          v10 = v31;
          __os_log_helper_16_0_0(v30);
          _os_log_impl(&dword_1DE8E5000, v9, v10, "User interacted in the session. Resetting counter for AAB cap\n", v30, 2u);
        }
      }

      if (*(this + 3376))
      {
        *(this + 415) = CFAbsoluteTimeGetCurrent();
      }

      if (*(this + 53))
      {
        CFDictionaryRemoveAllValues(*(this + 53));
        *(this + 432) = 0;
        *(this + 434) = 0;
        *(this + 435) = 0;
      }

      if (*(this + 3328))
      {
        *(this + 3328) = 0;
      }

      if (*(this + 485) && ([*(this + 485) isActive] & 1) != 0)
      {
        [*(this + 485) action:0];
      }

      AABC::_UpdateNitsRestrictions(this, -1.0, 0.2, 1);
      if (*(this + 500) && (*(this + 78) == 6 || *(this + 78) == 1) && ![+[CBSILState isSILActive] sharedInstance]
      {
        v29 = 0;
        [*(this + 500) sendCommand:234 inputBuffer:&v29 inputBufferSize:1];
        DisplaySetDCPPowerAssertionForAOT(*(this + 50), 0);
        *(this + 4008) = 0;
      }

      if (*(this + 160))
      {
        AABC::resetFilter(this, this + 21);
      }

      if (*(this + 264))
      {
        AABC::resetMovingAverage(this);
      }

      if (*(this + 161))
      {
        AABC::resetFilter(this, this + 27);
        *(this + 162) = 0;
      }
    }
  }

LABEL_151:
  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_0_2_8_0_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_1_4_0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_0_2_4_0_4_0(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

void AABC::UpdateState(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = a1;
  v26 = a2;
  if (*(a1 + 360) != a2)
  {
    if (_logHandle)
    {
      v14 = _logHandle;
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

      v14 = inited;
    }

    v25 = v14;
    v24 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_4_0_8_32_8_32(v29, 1, (&kAABStateStr)[*(a1 + 360)], (&kAABStateStr)[v26]);
      _os_log_debug_impl(&dword_1DE8E5000, v25, v24, "[%x]: _state=%s -> state=%s", v29, 0x1Cu);
    }

    *(a1 + 360) = v26;
    v23 = 0;
    v22 = 0;
    v12 = *(a1 + 360);
    if (v12)
    {
      switch(v12)
      {
        case 1:
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

          v18 = v7;
          v17 = 1;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v4 = v18;
            v5 = v17;
            __os_log_helper_16_0_0(v16);
            _os_log_impl(&dword_1DE8E5000, v4, v5, "Cancel ramp, manual brightness (slider moving)", v16, 2u);
          }

          AABC::CancelRamp(a1);
          v23 |= 0x11u;
          if (*(a1 + 456))
          {
            *(a1 + 632) = *(*(a1 + 456) + 56);
          }

          *(a1 + 668) = 3;
          break;
        case 2:
          if (*(a1 + 456))
          {
            *(a1 + 3820) = *(a1 + 3812);
            PerceptualLuminanceThresholding::SetPthresholdBrighten(*(a1 + 3832), *(a1 + 3820));
            *(a1 + 3808) = 1045220557;
            PerceptualLuminanceThresholding::SetPthresholdDim(*(a1 + 3832), *(a1 + 3808));
            v23 |= 0x11u;
            if (*(a1 + 600))
            {
              *(a1 + 632) = *(*(a1 + 456) + 52);
              *(a1 + 668) = 2;
            }

            else
            {
              *(a1 + 632) = *(*(a1 + 456) + 48);
              *(a1 + 668) = 1;
            }
          }

          break;
        case 3:
          if (*(a1 + 456))
          {
            *(a1 + 3820) = *(a1 + 3816);
            PerceptualLuminanceThresholding::SetPthresholdBrighten(*(a1 + 3832), *(a1 + 3820));
            if (*(a1 + 3444) == 4 || *(a1 + 3444) == 5)
            {
              *(a1 + 3808) = 1045220557;
            }

            else
            {
              *(a1 + 3808) = *(a1 + 3804);
            }

            PerceptualLuminanceThresholding::SetPthresholdDim(*(a1 + 3832), *(a1 + 3808));
            if (*(a1 + 408) <= 0.0)
            {
              *(a1 + 408) = 1.0;
              *(a1 + 360) = 0;
              *(a1 + 676) = 1;
            }

            else
            {
              v23 |= 0x11u;
            }

            *(a1 + 632) = *(*(a1 + 456) + 56);
            *(a1 + 668) = 3;
          }

          break;
        case 4:
          v23 |= 0x11u;
          if (*(a1 + 456))
          {
            *(a1 + 632) = *(*(a1 + 456) + 56);
          }

          *(a1 + 668) = 3;
          break;
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

      v21 = v11;
      v20 = 1;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v8 = v21;
        v9 = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_impl(&dword_1DE8E5000, v8, v9, "Cancel ramp, auto-brightness off", v19, 2u);
      }

      AABC::CancelRamp(a1);
      v23 |= 0x11u;
      *(a1 + 632) = 0;
      *(a1 + 668) = 0;
      v22 = 1;
    }

    if ((v22 & 1) == 0 && *(a1 + 640) && *(a1 + 632) < 0.05)
    {
      *(a1 + 632) = 1045220557;
    }

    if (v23)
    {
      AABC::UpdateALSState(a1, v23);
    }

    if (_logHandle)
    {
      v3 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v2 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v2 = init_default_corebrightness_log();
      }

      v3 = v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_4_0_8_0_8_0_8_0(v28, 2, COERCE__INT64(*(a1 + 632)), COERCE__INT64(*(a1 + 3820)), COERCE__INT64(*(a1 + 3808)));
      _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "[%x]: _als.interval=%f _Pthreshold_brighten=%f _Pthreshold_dim=%f", v28, 0x26u);
    }
  }

  *MEMORY[0x1E69E9840];
}

float AABC::BeginFastRampMode(CFAbsoluteTime *this, float a2, float a3)
{
  v10 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_1_8_0(v9, COERCE__INT64(a2));
    _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "begin fast ramp mode for %.1fs", v9, 0xCu);
  }

  this[85] = CFAbsoluteTimeGetCurrent();
  this[86] = this[85] + a2;
  *(this + 169) = 1;
  result = a3;
  *(this + 174) = a3;
  *MEMORY[0x1E69E9840];
  return result;
}

void AABC::SetBrightness(AABC *this, float a2, float a3, int a4, void (*a5)(void *), uint64_t a6)
{
  v15 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_3_4_0_8_0_8_0(v14, 1, COERCE__INT64(a2), COERCE__INT64(a3));
    _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "[%x]: L=%f duration=%f", v14, 0x1Cu);
  }

  if (*(this + 126) && *(this + 125))
  {
    DisplaySetVirtualBrightnessWithFade(*(this + 50), a4, a5, a6, a2, a3);
  }

  *MEMORY[0x1E69E9840];
}

void DisplaySetVirtualBrightnessWithFade(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v34 = a1;
  v33 = a5;
  v32 = a2;
  v31 = a6;
  v30 = a3;
  v29 = a4;
  if (*(a1 + 40))
  {
    v6 = *(v34 + 144);
    v19 = MEMORY[0x1E69E9820];
    v20 = -1073741824;
    v21 = 0;
    v22 = __DisplaySetVirtualBrightnessWithFade_block_invoke;
    v23 = &__block_descriptor_64_e5_v8__0l;
    v24 = v34;
    v27 = v33;
    v28 = v31;
    v25 = v30;
    v26 = v29;
    disp_dispatch_sync(v6, &v19);
  }

  else
  {
    v7 = *(v34 + 144);
    v8 = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __DisplaySetVirtualBrightnessWithFade_block_invoke_2;
    v12 = &__block_descriptor_68_e5_v8__0l;
    v13 = v34;
    v16 = v33;
    v17 = v32;
    v18 = v31;
    v14 = v30;
    v15 = v29;
    disp_dispatch_sync(v7, &v8);
  }
}

void _DisplaySetLogicalBrightnessWithFade(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4, float a5, float a6)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1 + 1252) = a5;
  *(a1 + 1336) = a6;
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, COERCE__INT64(a5), COERCE__INT64(a6));
    _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "L=%f fadePeriod=%f\n", v17, 0x16u);
  }

  if (a6 == 0.0 || a5 == 0.0)
  {
    v8 = 0;
    if (*(a1 + 1384) != 0.0)
    {
      v8 = 0;
      if (*(a1 + 1400) > 0.0)
      {
        v8 = *(a1 + 1400) < 1.0;
      }
    }

    v7 = 0;
    if (*(a1 + 1384) == 0.0)
    {
      v7 = 0;
      if (*(a1 + 348) > 0.0)
      {
        v7 = *(a1 + 348) < 1.0;
      }
    }

    if (v8 || v7)
    {
      *(a1 + 1256) = a5;
    }

    else
    {
      __DisplaySetLogicalBrightnessWithFadeInternal(a1, a2 | 0x1000, 0, 0, a5, 0.0);
    }

    if (a3)
    {
      a3(a4);
    }
  }

  else if (a2 & 0x10) != 0 && (_DisplayRampIsRunning(a1))
  {
    *(a1 + 1352) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 1252));
  }

  else
  {
    v6 = *(a1 + 1336);
    __DisplaySetLogicalBrightnessWithFadeInternal(a1, a2, a3, a4, *(a1 + 1252), v6);
  }

  *MEMORY[0x1E69E9840];
}

void __DisplaySetLogicalBrightnessWithFadeInternal(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a6 = *(a1 + 376);
  }

  v14 = 0.0;
  if (a6 == 0.0)
  {
    v13 = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 1256));
    *(a1 + 1336) = 0;
    *(a1 + 1356) = v13;
    *(a1 + 1360) = v13;
    *(a1 + 1352) = v13;
    __DisplaySetLogicalBrightnessInternal(a1, a2 | 0x1000, a5);
  }

  else
  {
    *(a1 + 1328) = a2;
    *(a1 + 1368) = a3;
    *(a1 + 1376) = a4;
    *(a1 + 1344) = CFAbsoluteTimeGetCurrent();
    *(a1 + 1336) = a6;
    if (_logHandle)
    {
      v11 = _logHandle;
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

      v11 = inited;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v21, *(a1 + 1336), *(a1 + 1344), *(a1 + 12480));
      _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEFAULT, "fadePeriod=%f startTime=%f display->fade.timer=%p\n", v21, 0x20u);
    }

    v14 = (a5 - *(a1 + 1256)) / a6;
    UpdateFrequency = __DisplayGetUpdateFrequency(a1, v14);
    *(a1 + 1356) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 1256));
    *(a1 + 1360) = *(a1 + 1356);
    *(a1 + 1352) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a5);
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v20, COERCE__INT64(*(a1 + 1256)), COERCE__INT64(a5), COERCE__INT64(*(a1 + 1360)), COERCE__INT64(*(a1 + 1352)), COERCE__INT64(a6), COERCE__INT64(v14), COERCE__INT64(UpdateFrequency));
      _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "Begin ramping logical brightness: begin ramping L: %0.2f -> L: %0.2f Brightness: %f -> %f t: %f rate: %0.2f nits/s %0.2fhz", v20, 0x48u);
    }

    if ((a2 & 0x80) != 0)
    {
      UpdateFrequency = 120.0;
    }

    __DisplayStartFadeWithType(a1, 3, 1.0 / UpdateFrequency);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(v19, "Logical Brightness", COERCE__INT64(*(a1 + 1360)), COERCE__INT64(*(a1 + 1352)), *(a1 + 1336), COERCE__INT64(v14));
    _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_INFO, "[BRT update: %s]: %f -> %f t: %f rate: %0.2f nits/s", v19, 0x34u);
  }

  *MEMORY[0x1E69E9840];
}

float _DisplayGetBrightnessMaxPhysical(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v1 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = ___DisplayGetBrightnessMaxPhysical_block_invoke;
  v8 = &unk_1E867C928;
  v9 = &v11;
  v10 = v16;
  disp_dispatch_sync(v1, &v4);
  v3 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v3;
}

float _DisplayGetBrightnessMinPhysical(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v1 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = ___DisplayGetBrightnessMinPhysical_block_invoke;
  v8 = &unk_1E867C928;
  v10 = v16;
  v9 = &v11;
  disp_dispatch_sync(v1, &v4);
  v3 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v3;
}

void AABC::evaluateAABRearConditions(id *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = this;
  if ([this[36] isRearALSSupported])
  {
    v22 = [this[36] started];
    v12 = 0;
    if (std::bitset<3ul>::none[abi:de200100](this + 37))
    {
      v12 = v22 ^ 1;
    }

    v21 = v12 & 1;
    v11 = 0;
    if (std::bitset<3ul>::any[abi:de200100](this + 37))
    {
      v11 = v22;
    }

    v20 = v11 & 1;
    v19 = @"none";
    if (v21)
    {
      [this[36] startSampling];
      v19 = @"starting";
    }

    else if (v20)
    {
      [this[36] stopSampling];
      v19 = @"stopping";
    }

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

    v18 = v10;
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      log = v18;
      type = v17;
      v16[0] = std::bitset<3ul>::operator[][abi:de200100]((this + 37), 0);
      v16[1] = v1;
      v5 = std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator BOOL[abi:de200100](v16);
      v15[0] = std::bitset<3ul>::operator[][abi:de200100]((this + 37), 1uLL);
      v15[1] = v2;
      v6 = std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator BOOL[abi:de200100](v15);
      v14[0] = std::bitset<3ul>::operator[][abi:de200100]((this + 37), 2uLL);
      v14[1] = v3;
      v4 = std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator BOOL[abi:de200100](v14);
      __os_log_helper_16_2_5_4_0_4_0_4_0_4_0_8_64(v24, v5, v6, v4, v22 & 1, v19);
      _os_log_impl(&dword_1DE8E5000, log, type, "Grimaldi; { aod_forbidden: %d, factor_forbidden: %d, property_forbidden: %d, isStarted: %d, state_change: %@ }", v24, 0x24u);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_2_5_4_0_4_0_4_0_4_0_8_64(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  *(result + 20) = 0;
  *(result + 21) = 4;
  *(result + 22) = a5;
  *(result + 26) = 64;
  *(result + 27) = 8;
  *(result + 28) = a6;
  return result;
}

void AABC::NotifyCPMSWhenDisplayChangeState(AABC *this, char a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E6991F30] isCPMSSupported] == 1)
  {
    if (a2)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 995)];
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 997)];
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(this + 993)];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:?];
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
    }

    if (*(this + 495) && *(this + 494))
    {
      v2 = *(this + 495);
      v9[0] = *MEMORY[0x1E6991F50];
      v10[0] = v7;
      v9[1] = *MEMORY[0x1E6991F40];
      v10[1] = v5;
      v9[2] = *MEMORY[0x1E6991F48];
      v10[2] = v6;
      v4 = [v2 copyPowerBudgetForRequest:objc_msgSend(MEMORY[0x1E695DF20] forClient:"dictionaryWithObjects:forKeys:count:" error:{v10, v9, 3), objc_msgSend(*(this + 494), "clientId"), 0}];
      if (v4 && (a2 & 1) != 0)
      {
        AABC::ProcessCPMSBudget(this, v4);
      }

      MEMORY[0x1E69E5920](v4);
    }

    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
  }

  *MEMORY[0x1E69E9840];
}

void _DisplayUpdateWeakCapOnFactorChange(uint64_t a1, float a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  if (*(a1 + 348) < 1.0 && v25 == 1.0)
  {
    if (*(v26 + 524) < *(v26 + 1312) && *(v26 + 528) > *(v26 + 524))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v2 = Current - *(v26 + 536) - *(v26 + 544);
      v23 = fmaxf(v2, 0.0);
      v22 = *(v26 + 552) - *(v26 + 544);
      v3 = v23;
      v4 = v22;
      v23 = fminf(v3, v4);
      v5 = v23 / v22;
      v21 = v5 * (*(v26 + 528) - *(v26 + 524));
      *(v26 + 528) = *(v26 + 528) - v21;
      *(v26 + 592) = 0;
      v20 = _DisplayLuminanceToPerceptualLuminanceInternal(v26, *(v26 + 528));
      *(v26 + 612) = v20;
      *(v26 + 616) = v20;
      *(v26 + 608) = v20;
      if (_logHandle)
      {
        v11 = _logHandle;
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

        v11 = inited;
      }

      v19 = v11;
      v18 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v27, COERCE__INT64(*(v26 + 528)));
        _os_log_debug_impl(&dword_1DE8E5000, v19, v18, "Display: Update weak cap to %f on factor change", v27, 0xCu);
      }

      *(v26 + 576) = Current;
    }
  }

  else if (*(v26 + 348) == 1.0 && v25 < 1.0)
  {
    v17 = *(v26 + 584) & 1;
    v16 = CFAbsoluteTimeGetCurrent();
    if (v16 - *(v26 + 576) > *(v26 + 560))
    {
      v17 = 1;
    }

    if (v17)
    {
      *(v26 + 536) = v16;
      *(v26 + 584) = 0;
      if (_logHandle)
      {
        v9 = _logHandle;
      }

      else
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v9 = v8;
      }

      oslog = v9;
      v14 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v6 = oslog;
        v7 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_debug_impl(&dword_1DE8E5000, v6, v7, "Weak cap: Resetting timer\n", v13, 2u);
      }
    }

    if (*(v26 + 524) < *(v26 + 1312))
    {
      *(v26 + 592) = 0;
      v12 = _DisplayLuminanceToPerceptualLuminanceInternal(v26, *(v26 + 528));
      *(v26 + 612) = v12;
      *(v26 + 616) = v12;
      *(v26 + 608) = v12;
    }
  }

  *MEMORY[0x1E69E9840];
}

void _DisplaySetFactorWithFade(uint64_t a1, float a2, float a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a3 = *(a1 + 376);
  }

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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, COERCE__INT64(a2), COERCE__INT64(a3));
    _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "factor: %f fadePeriod: %f", v17, 0x16u);
  }

  if (a2 != *(a1 + 348) || *(a1 + 1384) > 0.0)
  {
    if ((*(a1 + 12282) & 1) == 0)
    {
      *(a1 + 12392) = 0;
    }

    *(a1 + 96) = 0;
    if (a3 == 0.0)
    {
      _DisplaySetBrightnessFactor(a1, a2);
      *(a1 + 1404) = a2;
      *(a1 + 1408) = a2;
      *(a1 + 1400) = a2;
      *(a1 + 1384) = 0;
      v11 = *(a1 + 1252);
      *(a1 + 1488) = *(a1 + 1492);
      v10 = 4098;
      if (*(a1 + 348) == 1.0)
      {
        v10 = 4106;
      }

      __DisplaySetLogicalBrightnessWithFadeInternal(a1, v10 | 0x2000, 0, 0, v11, 0.0);
    }

    else
    {
      *(a1 + 1424) = 0;
      *(a1 + 1432) = 0;
      *(a1 + 1384) = a3;
      *(a1 + 1392) = CFAbsoluteTimeGetCurrent();
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
        __os_log_helper_16_0_3_8_0_8_0_8_0(v16, *(a1 + 1384), *(a1 + 1392), *(a1 + 12480));
        _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "fadePeriod=%f startTime=%f display->fade.timer=%p\n", v16, 0x20u);
      }

      *(a1 + 1404) = *(a1 + 348);
      *(a1 + 1408) = *(a1 + 348);
      *(a1 + 1400) = a2;
      *&v3 = 1.0 / 60.0;
      __DisplayStartFadeWithType(a1, 1, v3);
    }

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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v15, "Factor", COERCE__INT64(*(a1 + 1408)), COERCE__INT64(*(a1 + 1400)), *(a1 + 1384));
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %f -> %f t: %f", v15, 0x2Au);
    }
  }

  *MEMORY[0x1E69E9840];
}

double CFXClearReport(uint64_t a1)
{
  if (a1)
  {
    return _CFXClearReport(a1);
  }

  return result;
}

double _CFXClearReport(uint64_t a1)
{
  if (a1)
  {
    __memset_chk();
    v2 = mach_absolute_time();
    *(a1 + 1016) = v2;
    *(a1 + 1232) = v2;
    *(a1 + 1228) = *(a1 + 224);
    *(a1 + 1640) = v2;
    if (*(a1 + 104) && **(a1 + 104) > 0.0)
    {
      *(a1 + 1648) = 1;
    }

    *(a1 + 1744) = v2;
    if (*(a1 + 96))
    {
      *(a1 + 1736) = (**(a1 + 96) * 10.0);
      if (*(a1 + 1736) > 9)
      {
        *(a1 + 1736) = 9;
      }
    }

    result = v2;
    *(a1 + 1776) = v2;
    *(a1 + 1616) = v2;
  }

  return result;
}

uint64_t __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
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
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void DisplaySetReflectedBrightnessWithFade(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v20 = a1;
  v19 = a4;
  v18 = a5;
  v17 = a2;
  v16 = a3;
  if (*(a1 + 380))
  {
    v18 = *(v20 + 376);
  }

  if ((*(v20 + 12282) & 1) == 0)
  {
    v5 = *(v20 + 144);
    v6 = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __DisplaySetReflectedBrightnessWithFade_block_invoke;
    v10 = &__block_descriptor_64_e5_v8__0l;
    v11 = v20;
    v14 = v18;
    v15 = v19;
    v12 = v17;
    v13 = v16;
    disp_dispatch_sync(v5, &v6);
  }
}

float two_dimensional_interpolation(float *a1, unint64_t a2, float *a3, unint64_t a4, uint64_t a5, float a6, float a7)
{
  v30 = a6;
  v29 = a7;
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  if (!a1 || !v26 || !v24 || v27 < 2 || v25 < 2)
  {
    return NAN;
  }

  v30 = clamp(v30, *v28, v28[v27 - 1]);
  v29 = clamp(v29, *v26, v26[v25 - 1]);
  v23 = 0;
  v22 = 0;
  find_bound(v28, v27, &v23, &v22, v30);
  v21 = 0;
  v20 = 0;
  find_bound(v26, v25, &v21, &v20, v29);
  v19 = v28[v23];
  v18 = v28[v22];
  v17 = v26[v21];
  v16 = v26[v20];
  v15 = 1.0;
  if (!float_equal((v18 - v19) * (v16 - v17), 0.0))
  {
    v15 = 1.0 / ((v18 - v19) * (v16 - v17));
  }

  v14 = ((v18 - v30) * (v29 - v17)) * v15;
  v13 = ((v30 - v19) * (v16 - v29)) * v15;
  v12 = ((v30 - v19) * (v29 - v17)) * v15;
  v9 = ((v18 - v30) * (v16 - v29)) * v15;
  v8 = matrix_element(v24, v21, v23, v27);
  v10 = (v14 * matrix_element(v24, v20, v23, v27)) + (v9 * v8);
  v11 = v10 + (v13 * matrix_element(v24, v21, v22, v27));
  return v11 + (v12 * matrix_element(v24, v20, v22, v27));
}

float *find_bound(float *result, unint64_t a2, void *a3, unint64_t *a4, float a5)
{
  if (result && a2)
  {
    if (a5 >= *result)
    {
      if (a5 < result[a2 - 1])
      {
        for (i = 1; i < a2; ++i)
        {
          if (a5 >= result[i - 1] && a5 < result[i])
          {
            *a3 = i - 1;
            *a4 = i;
            return result;
          }
        }
      }

      else
      {
        *a3 = a2 - 2;
        *a4 = a2 - 1;
      }
    }

    else
    {
      *a3 = 0;
      *a4 = 1;
    }
  }

  else
  {
    *a3 = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t AABC::lazyLoadIntegrationTimes(AABC *this, __IOHIDServiceClient *a2, AABC::ALS *a3)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = 0;
  v19 = IOHIDServiceClientCopyProperty(a2, @"Calibrated");
  if (v19)
  {
    v11 = CFGetTypeID(v19);
    if (v11 == CFBooleanGetTypeID())
    {
      if (GetCFBooleanValue(v19))
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

        v18 = v10;
        v17 = 1;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          log = v18;
          type = v17;
          __os_log_helper_16_0_0(v16);
          _os_log_impl(&dword_1DE8E5000, log, type, "Driver has been calibrated -> setting integration times.", v16, 2u);
        }

        v13 = IOHIDServiceClientCopyProperty(v22, @"ALSSuperFastIntegrationTime");
        if (v13)
        {
          v6 = CFGetTypeID(v13);
          if (v6 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v13, kCFNumberFloatType, v21 + 12);
            v21[12] = v21[12] / 1000000.0;
          }
        }

        if (v13)
        {
          CFRelease(v13);
        }

        v14 = IOHIDServiceClientCopyProperty(v22, @"ALSFastIntegrationTime");
        if (v14)
        {
          v5 = CFGetTypeID(v14);
          if (v5 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v14, kCFNumberFloatType, v21 + 13);
            v21[13] = v21[13] / 1000000.0;
          }
        }

        if (v14)
        {
          CFRelease(v14);
        }

        v15 = IOHIDServiceClientCopyProperty(v22, @"ALSSlowIntegrationTime");
        if (v15)
        {
          v4 = CFGetTypeID(v15);
          if (v4 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v15, kCFNumberFloatType, v21 + 14);
            v21[14] = v21[14] / 1000000.0;
          }
        }

        if (v15)
        {
          CFRelease(v15);
        }

        *(this + 437) = 0;
        v20 = 1;
      }
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v20 & 1;
}

void *createCustomCurve@<X0>(const float *a1@<X0>, const float *a2@<X1>, unsigned int a3@<W2>, _DWORD *a4@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    __assert_rtn("createCustomCurve", "CBSoftWake.mm", 19, "size < INT_MAX");
  }

  if (a3 >= 0x14)
  {
    __assert_rtn("createCustomCurve", "CBSoftWake.mm", 20, "size < 20");
  }

  memcpy(a4, a1, 4 * a3);
  result = memcpy(a4 + 20, a2, 4 * a3);
  a4[40] = a3;
  return result;
}

uint64_t canTransition(uint64_t a1, uint64_t a2)
{
  if (a1 || (v4 = 1, a2 != 1))
  {
    v3 = 0;
    if (a1 == 1)
    {
      v3 = a2 == 0;
    }

    v4 = v3;
  }

  return v4 & 1;
}

__CFString *AABCurveUpdateReasonToString(int a1)
{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"user adjustment";
    case 1:
      return @"AAB capping";
    case 2:
      return @"reset after in-App adjustment";
    case 3:
      return @"AAB reset";
    case 4:
      return @"Outlier removal";
  }

  return v2;
}

{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"user adjustment";
    case 1:
      return @"AAB capping";
    case 2:
      return @"reset after in-App adjustment";
    case 3:
      return @"AAB reset";
    case 4:
      return @"Outlier removal";
  }

  return v2;
}

{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"user adjustment";
    case 1:
      return @"AAB capping";
    case 2:
      return @"reset after in-App adjustment";
    case 3:
      return @"AAB reset";
    case 4:
      return @"Outlier removal";
  }

  return v2;
}

{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"user adjustment";
    case 1:
      return @"AAB capping";
    case 2:
      return @"reset after in-App adjustment";
    case 3:
      return @"AAB reset";
    case 4:
      return @"Outlier removal";
  }

  return v2;
}

{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"user adjustment";
    case 1:
      return @"AAB capping";
    case 2:
      return @"reset after in-App adjustment";
    case 3:
      return @"AAB reset";
    case 4:
      return @"Outlier removal";
  }

  return v2;
}

void *dumpCArrayIntoDictionary(unint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:a1];
  for (i = 0; i < a1; ++i)
  {
    [v4 setObject:(*(a2 + 16))(a2 forKey:{i), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%tu", i)}];
  }

  return v4;
}

uint64_t __os_log_helper_16_2_2_8_32_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void *std::valarray<float>::valarray(void *a1, float *a2, unint64_t a3)
{
  std::valarray<float>::valarray(a1, a2, a3);
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  std::valarray<float>::resize(a1, a3, *a2);
  return a1;
}

uint64_t std::valarray<float>::operator[][abi:de200100](void *a1, unint64_t a2)
{
  if (a2 >= std::valarray<float>::size[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/valarray:830: assertion __i < size() failed: valarray::operator[] index out of bounds\n");
  }

  return *a1 + 4 * a2;
}

{
  if (a2 >= std::valarray<float>::size[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/valarray:825: assertion __i < size() failed: valarray::operator[] index out of bounds\n");
  }

  return *a1 + 4 * a2;
}

uint64_t std::operator/[abi:de200100]<std::valarray<float>,0>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v10 = a2;
  v3 = std::valarray<float>::size[abi:de200100](a1);
  std::__scalar_expr<float>::__scalar_expr[abi:de200100](&v8, a2, v3);
  std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>::_BinaryOp[abi:de200100](v12, &v9, a1, &v8);
  result = std::__val_expr<std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>>::__val_expr[abi:de200100](a3, v12);
  *MEMORY[0x1E69E9840];
  return result;
}

void *std::operator/[abi:de200100]<std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v10 = a2;
  v3 = std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>::size[abi:de200100](a1);
  std::__scalar_expr<float>::__scalar_expr[abi:de200100](&v8, a2, v3);
  std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>::_BinaryOp[abi:de200100](v12, &v9, a1, &v8);
  result = std::__val_expr<std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>>::__val_expr[abi:de200100](a3, v12);
  *MEMORY[0x1E69E9840];
  return result;
}

__n128 *std::operator-[abi:de200100]<std::valarray<float>,std::valarray<float>,0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>::_BinaryOp[abi:de200100](&v8, &v5, a1, a2);
  result = std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>::__val_expr[abi:de200100](a3, &v8);
  *MEMORY[0x1E69E9840];
  return result;
}

__n128 *std::operator>[abi:de200100]<std::valarray<float>,std::valarray<float>,0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>::_BinaryOp[abi:de200100](&v8, &v5, a1, a2);
  result = std::__val_expr<std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>>::__val_expr[abi:de200100](a3, &v8);
  *MEMORY[0x1E69E9840];
  return result;
}

BOOL std::__val_expr<std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>>::max[abi:de200100](uint64_t a1)
{
  v7 = std::__val_expr<std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>>::size[abi:de200100](a1);
  if (v7)
  {
    v2 = std::__val_expr<std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>>::operator[][abi:de200100](a1, 0);
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  for (i = 1; i < v7; ++i)
  {
    v4 = std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>::operator[][abi:de200100](a1, i);
    if (v6 < v4)
    {
      v6 = v4;
    }
  }

  return v6;
}

_DWORD *std::min[abi:de200100]<int,std::__less<void,void>>(_DWORD *a1, _DWORD *a2)
{
  if (std::__less<void,void>::operator()[abi:de200100]<int,int>(&v6, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

_DWORD *std::max[abi:de200100]<int,std::__less<void,void>>(_DWORD *a1, _DWORD *a2)
{
  if (std::__less<void,void>::operator()[abi:de200100]<int,int>(&v6, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

double CoreBrightness::MitigationState::MitigationState(CoreBrightness::MitigationState *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 5;
  *(this + 3) = 60;
  *(this + 4) = 5;
  *(this + 5) = 3;
  *(this + 6) = 4.0;
  *(this + 7) = 3.0;
  *(this + 8) = 3.0;
  *(this + 9) = 15;
  *(this + 10) = 3;
  *(this + 11) = *(this + 9);
  *(this + 12) = *(this + 10);
  *(this + 7) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 26) = 0;
  return result;
}

void std::valarray<float>::resize(void *a1, unint64_t a2, float a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v3 = std::valarray<float>::size[abi:de200100](a1);
  std::valarray<float>::__clear(a1, v3);
  if (v9)
  {
    std::allocator<float>::allocator[abi:de200100](&v7);
    v4 = std::allocator<float>::allocate[abi:de200100](&v7, v9);
    a1[1] = v4;
    *a1 = v4;
    for (i = v9; i; --i)
    {
      *a1[1] = v8;
      a1[1] += 4;
    }
  }
}

uint64_t std::allocator<float>::allocator[abi:de200100](uint64_t a1)
{
  std::allocator<float>::allocator[abi:de200100](a1);
  return a1;
}

{
  std::__non_trivial_if<true>::__non_trivial_if[abi:de200100]();
  return a1;
}

void *std::allocator<float>::allocate[abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<float>>::max_size[abi:de200100]<std::allocator<float>,void,0>())
  {
    std::__throw_bad_array_new_length[abi:de200100]();
  }

  return std::__libcpp_allocate[abi:de200100]<float>(a2, 4uLL);
}

void std::__libcpp_deallocate[abi:de200100]<float>(void *a1, uint64_t a2, unint64_t a3)
{
  if (std::__is_overaligned_for_new[abi:de200100](a3))
  {
    std::__libcpp_operator_delete[abi:de200100]<float *,std::align_val_t>(a1, a3);
  }

  else
  {
    std::__libcpp_operator_delete[abi:de200100]<float *>(a1);
  }
}

void std::__non_trivial_if<true>::__non_trivial_if[abi:de200100]()
{
  ;
}

{
  ;
}

{
  ;
}

{
  ;
}

{
  ;
}

{
  ;
}

void std::__throw_bad_array_new_length[abi:de200100]()
{
  v1 = MEMORY[0x1E69E52A8];
  exception = __cxa_allocate_exception(8uLL);
  std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(exception, MEMORY[0x1E69E5420], v1);
}

void *std::__libcpp_allocate[abi:de200100]<float>(uint64_t a1, std::align_val_t a2)
{
  v3 = 4 * a1;
  if (!std::__is_overaligned_for_new[abi:de200100](a2))
  {
    std::__libcpp_operator_new[abi:de200100]<float>();
  }

  return std::__libcpp_operator_new[abi:de200100]<float,unsigned long,std::align_val_t>(v3, a2);
}

void *std::__scalar_expr<float>::__scalar_expr[abi:de200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

__n128 std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>::_BinaryOp[abi:de200100](__n128 *a1, uint64_t a2, unint64_t a3, __n128 *a4)
{
  a1->n128_u64[1] = a3;
  result = *a4;
  a1[1] = *a4;
  return result;
}

__n128 std::__val_expr<std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>>::__val_expr[abi:de200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

float std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  v4 = std::valarray<float>::operator[][abi:de200100](*(a1 + 8), a2);
  v2 = std::__scalar_expr<float>::operator[][abi:de200100](a1 + 16);
  return std::divides<float>::operator()[abi:de200100](a1, v4, v2);
}

uint64_t std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>::_BinaryOp[abi:de200100](uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 8) = a3;
  *(result + 16) = a4;
  return result;
}

__n128 std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>::__val_expr[abi:de200100](__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

void *std::__val_expr<std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>>::__val_expr[abi:de200100](void *a1, const void *a2)
{
  std::__val_expr<std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>>::__val_expr[abi:de200100](a1, a2);
  return a1;
}

{
  memcpy(a1, a2, 0x30uLL);
  return a1;
}

__n128 std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>::_BinaryOp[abi:de200100](uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  *(a1 + 8) = *a3;
  *(a1 + 24) = *(a3 + 16);
  result = *a4;
  *(a1 + 32) = *a4;
  return result;
}

float std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>::operator[][abi:de200100](a1 + 8, a2);
  v2 = std::__scalar_expr<float>::operator[][abi:de200100](a1 + 32);
  return std::divides<float>::operator()[abi:de200100](a1, &v5, v2);
}

float std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  v4 = std::valarray<float>::operator[][abi:de200100](*(a1 + 8), a2);
  v2 = std::valarray<float>::operator[][abi:de200100](*(a1 + 16), a2);
  return std::minus<float>::operator()[abi:de200100](a1, v4, v2);
}

uint64_t std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>::_BinaryOp[abi:de200100](uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 8) = a3;
  *(result + 16) = a4;
  return result;
}

__n128 std::__val_expr<std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>>::__val_expr[abi:de200100](__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

BOOL std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>::operator[][abi:de200100](uint64_t a1, unint64_t a2)
{
  v4 = std::valarray<float>::operator[][abi:de200100](*(a1 + 8), a2);
  v2 = std::valarray<float>::operator[][abi:de200100](*(a1 + 16), a2);
  return std::greater<float>::operator()[abi:de200100](a1, v4, v2);
}

uint64_t std::__uninitialized_copy[abi:de200100]<float,float const*,float const*,float *,std::__always_false>(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v7 = a1;
  v6 = a2;
  v5[1] = a3;
  for (v5[0] = a3; ; v5[0] += 4)
  {
    LOBYTE(v4) = 0;
    if (v7 != v6)
    {
      v4 = std::__always_false::operator()[abi:de200100]<float *&>() ^ 1;
    }

    if ((v4 & 1) == 0)
    {
      break;
    }

    *v5[0] = *v7++;
  }

  std::pair<float const*,float *>::pair[abi:de200100]<float const*,float *,0>(&v8, &v7, v5);
  return v8;
}

void *std::pair<float const*,float *>::pair[abi:de200100]<float const*,float *,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__copy_move_unwrap_iters[abi:de200100]<std::__copy_impl,float const*,float const*,float *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = std::__unwrap_range[abi:de200100]<float const*,float const*>(a1, a2);
  v14 = v3;
  v7 = v3;
  std::__unwrap_iter[abi:de200100]<float *,std::__unwrap_iter_impl<float *,true>,0>();
  v11 = std::__copy_impl::operator()[abi:de200100]<float const,float,0>(&v10, v13, v7, v4);
  v12 = v5;
  v9 = std::__rewrap_range[abi:de200100]<float const*,float const*,float const*>(v17, v11);
  v8 = std::__rewrap_iter[abi:de200100]<float *,float *,std::__unwrap_iter_impl<float *,true>>(v15, v12);
  return std::make_pair[abi:de200100]<float const*,float *>(&v9, &v8);
}

uint64_t std::__unwrap_range_impl<float const*,float const*>::__unwrap[abi:de200100](uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[1] = a2;
  std::__unwrap_iter[abi:de200100]<float const*,std::__unwrap_iter_impl<float const*,true>,0>();
  v6[0] = v2;
  std::__unwrap_iter[abi:de200100]<float const*,std::__unwrap_iter_impl<float const*,true>,0>();
  v5 = v3;
  std::pair<float const*,float const*>::pair[abi:de200100]<float const*,float const*,0>(&v7, v6, &v5);
  return v7;
}

void *std::pair<float const*,float const*>::pair[abi:de200100]<float const*,float const*,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__copy_trivial_impl[abi:de200100]<float const,float>(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 4;
  std::__constexpr_memmove[abi:de200100]<float,float const,0>(a3, a1, v5);
  v4 = &v6[4 * v5];
  return std::make_pair[abi:de200100]<float const*&,float *>(v7, &v4);
}

void *std::__constexpr_memmove[abi:de200100]<float,float const,0>(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 4 * (a3 - 1) + 4);
  }

  return a1;
}

void *std::pair<float const*,float *>::pair[abi:de200100]<float const*&,float *,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

id getMLFeatureValueClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLFeatureValueClass_softClass;
  v13 = getMLFeatureValueClass_softClass;
  if (!getMLFeatureValueClass_softClass)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLFeatureValueClass_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLFeatureValueClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLModelClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLModelClass_softClass;
  v13 = getMLModelClass_softClass;
  if (!getMLModelClass_softClass)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLModelClass_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLModelClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLPredictionOptionsClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLPredictionOptionsClass_softClass;
  v13 = getMLPredictionOptionsClass_softClass;
  if (!getMLPredictionOptionsClass_softClass)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLPredictionOptionsClass_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLPredictionOptionsClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLArrayBatchProviderClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLArrayBatchProviderClass_softClass;
  v13 = getMLArrayBatchProviderClass_softClass;
  if (!getMLArrayBatchProviderClass_softClass)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLArrayBatchProviderClass_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLArrayBatchProviderClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getMLFeatureValueClass_block_invoke(uint64_t a1)
{
  CoreMLLibrary();
  Class = objc_getClass("MLFeatureValue");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLFeatureValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreMLLibrary()
{
  v2 = 0;
  v1 = CoreMLLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t CoreMLLibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = CoreMLLibraryCore_frameworkLibrary;
  v9 = CoreMLLibraryCore_frameworkLibrary;
  if (!CoreMLLibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __CoreMLLibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __CoreMLLibraryCore_block_invoke(&v2);
  }

  return CoreMLLibraryCore_frameworkLibrary;
}

uint64_t __CoreMLLibraryCore_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary = result;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __getMLModelClass_block_invoke(uint64_t a1)
{
  CoreMLLibrary();
  Class = objc_getClass("MLModel");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLPredictionOptionsClass_block_invoke(uint64_t a1)
{
  CoreMLLibrary();
  Class = objc_getClass("MLPredictionOptions");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLPredictionOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLArrayBatchProviderClass_block_invoke(uint64_t a1)
{
  CoreMLLibrary();
  Class = objc_getClass("MLArrayBatchProvider");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getMLArrayBatchProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void StockholmALSCoExEnableNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  if (a2)
  {
    v12 = v16;
    v5 = *(v16 + 16);
    block = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __StockholmALSCoExEnableNotificationHandler_block_invoke;
    v10 = &unk_1E867B480;
    v11 = v16;
    dispatch_sync(v5, &block);
  }
}

void StockholmALSCoExDisableNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  if (a2)
  {
    v12 = v16;
    v5 = *(v16 + 16);
    block = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __StockholmALSCoExDisableNotificationHandler_block_invoke;
    v10 = &unk_1E867B480;
    v11 = v16;
    dispatch_sync(v5, &block);
  }
}

uint64_t __StockholmALSCoExEnableNotificationHandler_block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 8))
  {
    v5 = *(*(a1 + 32) + 8);
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
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "StockholmCoEx Color samples swallowing ON", v7, 2u);
  }

  return [*(a1 + 32) setDropALSColorSamples:1];
}

uint64_t __StockholmALSCoExDisableNotificationHandler_block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 8))
  {
    v5 = *(*(a1 + 32) + 8);
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
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "StockholmCoEx Color samples swallowing OFF", v7, 2u);
  }

  return [*(a1 + 32) setDropALSColorSamples:0];
}

BOOL isBrightnessAdjustmentPossible(NSDictionary *a1)
{
  [-[NSDictionary objectForKeyedSubscript:](a1 objectForKeyedSubscript:{@"MinNits", "floatValue"}];
  v4 = v1;
  [-[NSDictionary objectForKeyedSubscript:](a1 objectForKeyedSubscript:{@"MaxNits", "floatValue"}];
  return vabds_f32(v4, v2) > 0.5;
}

uint64_t __os_log_helper_16_2_2_8_32_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_13_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  *result = 0;
  *(result + 1) = 13;
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
  *(result + 93) = 8;
  *(result + 94) = a11;
  *(result + 102) = 0;
  *(result + 103) = 8;
  *(result + 104) = a12;
  *(result + 112) = 0;
  *(result + 113) = 8;
  *(result + 114) = a13;
  *(result + 122) = 0;
  *(result + 123) = 4;
  *(result + 124) = a14;
  return result;
}

uint64_t __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_22_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_32_8_0_8_0_8_32_8_32_8_0_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  result = a13;
  *a1 = 2;
  *(a1 + 1) = 22;
  *(a1 + 2) = 0;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 0;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 0;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 0;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 32;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 0;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 0;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 32;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 32;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 0;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 32;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 0;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 0;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 0;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 0;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  return result;
}

void sub_1DE953C00(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj)
{
  *(v9 - 32) = a1;
  *(v9 - 36) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v9 - 32));
}

uint64_t __os_log_helper_16_2_4_8_32_8_32_8_32_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_32_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_2_4_0_8_0(uint64_t result, int a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_3_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  return result;
}

void sub_1DE95C3CC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  *(v10 - 24) = a1;
  *(v10 - 28) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v10 - 24));
}

void sub_1DE95C800(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id obj)
{
  *(v11 - 24) = a1;
  *(v11 - 28) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v11 - 24));
}

uint64_t __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 0;
  *(result + 1) = 6;
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
  return result;
}

void sub_1DE961A20(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj)
{
  *(v13 - 56) = a1;
  *(v13 - 60) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v13 - 56));
}

uint64_t std::vector<float>::push_back[abi:de200100](void *a1, float *a2)
{
  return std::vector<float>::emplace_back<float const&>(a1, a2);
}

{
  return std::vector<float>::emplace_back<float>(a1, a2);
}

uint64_t std::vector<float>::back[abi:de200100](void *a1)
{
  if (std::vector<float>::empty[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:430: assertion !empty() failed: back() called on an empty vector\n");
  }

  return a1[1] - 4;
}

uint64_t __os_log_helper_16_0_4_4_0_8_0_4_0_8_0(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 8;
  *(result + 26) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_7_4_0_8_0_8_32_8_32_8_0_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
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
  *(result + 49) = 8;
  *(result + 50) = a7;
  *(result + 58) = 0;
  *(result + 59) = 8;
  *(result + 60) = a8;
  return result;
}

uint64_t std::vector<float>::operator[][abi:de200100](void *a1, unint64_t a2)
{
  if (a2 >= std::vector<float>::size[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:403: assertion __n < size() failed: vector[] index out of bounds\n");
  }

  return *a1 + 4 * a2;
}

uint64_t std::vector<float>::front[abi:de200100](void *a1)
{
  if (std::vector<float>::empty[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:422: assertion !empty() failed: front() called on an empty vector\n");
  }

  return *a1;
}

uint64_t *std::vector<float>::~vector[abi:de200100](uint64_t *a1)
{
  std::vector<float>::~vector[abi:de200100](a1);
  return a1;
}

{
  v3[1] = a1;
  std::vector<float>::__destroy_vector::__destroy_vector[abi:de200100](v3, a1);
  std::vector<float>::__destroy_vector::operator()[abi:de200100](v3);
  return a1;
}

void *std::vector<float>::vector[abi:de200100](void *a1)
{
  std::vector<float>::vector[abi:de200100](a1);
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator<float>::allocator[abi:de200100](a1);
  return a1;
}

void *std::vector<float>::__construct_one_at_end[abi:de200100]<float const&>(uint64_t a1, float *a2)
{
  v8 = a1;
  v7 = a2;
  std::vector<float>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v5, a1, 1);
  std::__to_address[abi:de200100]<float>();
  std::allocator_traits<std::allocator<float>>::construct[abi:de200100]<float,float const&,void,0>(a1, v2, v7);
  v6 += 4;
  return std::vector<float>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v5);
}

uint64_t std::vector<float>::__emplace_back_slow_path<float const&>(void *a1, float *a2)
{
  v12 = a1;
  v11 = a2;
  v2 = std::vector<float>::size[abi:de200100](a1);
  v7 = std::vector<float>::__recommend[abi:de200100](a1, v2 + 1);
  v3 = std::vector<float>::size[abi:de200100](a1);
  std::__split_buffer<float>::__split_buffer(v9, v7, v3, a1);
  std::__to_address[abi:de200100]<float>();
  std::allocator_traits<std::allocator<float>>::construct[abi:de200100]<float,float const&,void,0>(a1, v4, v11);
  v10 += 4;
  std::vector<float>::__swap_out_circular_buffer(a1, v9);
  v6 = a1[1];
  std::__split_buffer<float>::~__split_buffer(v9);
  return v6;
}

void *std::vector<float>::_ConstructTransaction::_ConstructTransaction[abi:de200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 4 * a3;
  return result;
}

float std::construct_at[abi:de200100]<float,float const&,float *>(_DWORD *a1, float *a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t std::vector<float>::__recommend[abi:de200100](void *a1, uint64_t a2)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = std::vector<float>::max_size[abi:de200100](a1);
  if (v8[0] > v7)
  {
    std::vector<float>::__throw_length_error[abi:de200100]();
  }

  v2 = std::vector<float>::capacity[abi:de200100](a1);
  v6 = v2;
  if (v2 >= v7 / 2)
  {
    return v7;
  }

  v5 = 2 * v6;
  return *std::max[abi:de200100]<unsigned long>(&v5, v8);
}

void **std::__split_buffer<float>::__split_buffer(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  std::__split_buffer<float>::__split_buffer(a1, a2, a3, a4);
  return a1;
}

{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = std::__allocate_at_least[abi:de200100]<std::allocator<float>>(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 4 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 4 * v9;
  return a1;
}

void std::vector<float>::__swap_out_circular_buffer(uint64_t *a1, uint64_t *a2)
{
  std::vector<float>::__annotate_delete[abi:de200100]();
  v9 = a2[1] + 4 * ((a1[1] - *a1) / -4);
  v2 = *a1;
  std::__to_address[abi:de200100]<float>();
  v6 = v3;
  v4 = a1[1];
  std::__to_address[abi:de200100]<float>();
  v7 = v5;
  std::__to_address[abi:de200100]<float>();
  std::__uninitialized_allocator_relocate[abi:de200100]<std::allocator<float>,float *>(a1, v6, v7);
  a2[1] = v9;
  a1[1] = *a1;
  std::swap[abi:de200100]<float *>(a1, a2 + 1);
  std::swap[abi:de200100]<float *>(a1 + 1, a2 + 2);
  std::swap[abi:de200100]<float *>(a1 + 2, a2 + 3);
  *a2 = a2[1];
  std::vector<float>::size[abi:de200100](a1);
  std::vector<float>::__annotate_new[abi:de200100]();
}

void **std::__split_buffer<float>::~__split_buffer(void **a1)
{
  std::__split_buffer<float>::~__split_buffer(a1);
  return a1;
}

{
  std::__split_buffer<float>::clear[abi:de200100](a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    v4 = std::__split_buffer<float>::capacity[abi:de200100](a1);
    std::allocator_traits<std::allocator<float>>::deallocate[abi:de200100](v2, v3, v4);
  }

  return a1;
}

uint64_t std::vector<float>::max_size[abi:de200100](uint64_t a1)
{
  v3[1] = a1;
  v3[0] = std::allocator_traits<std::allocator<float>>::max_size[abi:de200100]<std::allocator<float>,void,0>();
  v2 = std::numeric_limits<long>::max[abi:de200100]();
  return *std::min[abi:de200100]<unsigned long>(v3, &v2);
}

void *std::min[abi:de200100]<unsigned long,std::__less<void,void>>(void *a1, void *a2)
{
  if (std::__less<void,void>::operator()[abi:de200100]<unsigned long,unsigned long>(&v6, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void std::__throw_length_error[abi:de200100](const char *a1)
{
  v1 = MEMORY[0x1E69E5278];
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:de200100](exception, a1);
  __cxa_throw(exception, off_1E867AFE8, v1);
}

void sub_1DE963EA4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  *(v11 - 16) = a1;
  *(v11 - 20) = a2;
  __cxa_free_exception(a11);
  _Unwind_Resume(*(v11 - 16));
}

std::logic_error *std::length_error::length_error[abi:de200100](std::logic_error *a1, const char *a2)
{
  std::length_error::length_error[abi:de200100](a1, a2);
  return a1;
}

{
  std::logic_error::logic_error(a1, a2);
  result = a1;
  a1->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void *std::max[abi:de200100]<unsigned long,std::__less<void,void>>(void *a1, void *a2)
{
  if (std::__less<void,void>::operator()[abi:de200100]<unsigned long,unsigned long>(&v6, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void *std::__uninitialized_allocator_relocate[abi:de200100]<std::allocator<float>,float *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__to_address[abi:de200100]<float>();
  __dst = v3;
  std::__to_address[abi:de200100]<float>();
  return memcpy(__dst, v4, 4 * ((a3 - a2) / 4));
}

uint64_t *std::swap[abi:de200100]<float *>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void std::__split_buffer<float>::__destruct_at_end[abi:de200100](uint64_t a1, uint64_t a2)
{
  std::__split_buffer<float>::__destruct_at_end[abi:de200100](a1, a2);
}

{
  while (a2 != *(a1 + 16))
  {
    v3 = *(a1 + 32);
    *(a1 + 16) -= 4;
    std::__to_address[abi:de200100]<float>();
    std::allocator_traits<std::allocator<float>>::destroy[abi:de200100]<float,void,0>(v3, v2);
  }
}

void std::__destroy_at[abi:de200100]<float,0>(uint64_t a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:65: assertion __loc != nullptr failed: null pointer given to destroy_at\n");
  }
}

void std::vector<float>::__destroy_vector::operator()[abi:de200100](uint64_t **a1)
{
  if (**a1)
  {
    std::vector<float>::clear[abi:de200100](*a1);
    v1 = *a1;
    std::vector<float>::__annotate_delete[abi:de200100]();
    v4 = *a1;
    v3 = **a1;
    v2 = std::vector<float>::capacity[abi:de200100](*a1);
    std::allocator_traits<std::allocator<float>>::deallocate[abi:de200100](v4, v3, v2);
  }
}

void std::vector<float>::clear[abi:de200100](uint64_t *a1)
{
  std::vector<float>::size[abi:de200100](a1);
  std::vector<float>::__base_destruct_at_end[abi:de200100](a1, *a1);
  std::vector<float>::__annotate_shrink[abi:de200100]();
}

void std::vector<float>::__base_destruct_at_end[abi:de200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); a2 != i; i -= 4)
  {
    std::__to_address[abi:de200100]<float>();
    std::allocator_traits<std::allocator<float>>::destroy[abi:de200100]<float,void,0>(a1, v2);
  }

  *(a1 + 8) = a2;
}

uint64_t findBin(float *a1, void *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = a2;
  v5 = std::vector<CBBOLTS::Bin>::begin[abi:de200100](a2);
  v4 = std::vector<CBBOLTS::Bin>::end[abi:de200100](v6);
  while (!std::operator==[abi:de200100]<CBBOLTS::Bin *>(&v5, &v4))
  {
    v3 = std::__wrap_iter<CBBOLTS::Bin *>::operator*[abi:de200100](&v5);
    if (CBBOLTS::Bin::curveUpdateSatisfiesCondition(v3, v8))
    {
      return v3;
    }

    std::__wrap_iter<CBBOLTS::Bin *>::operator++[abi:de200100](&v5);
  }

  return std::vector<CBBOLTS::Bin>::front[abi:de200100](v7);
}

uint64_t std::vector<CBBOLTS::Bin>::begin[abi:de200100](uint64_t *a1)
{
  v1 = *a1;
  std::vector<CBBOLTS::Bin>::__add_alignment_assumption[abi:de200100]<CBBOLTS::Bin*,0>();
  return std::vector<CBBOLTS::Bin>::__make_iter[abi:de200100](a1, v2);
}

{
  v1 = *a1;
  std::vector<CBBOLTS::Bin>::__add_alignment_assumption[abi:de200100]<CBBOLTS::Bin*,0>();
  return std::vector<CBBOLTS::Bin>::__make_iter[abi:de200100](a1, v2);
}

uint64_t std::vector<CBBOLTS::Bin>::end[abi:de200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  std::vector<CBBOLTS::Bin>::__add_alignment_assumption[abi:de200100]<CBBOLTS::Bin*,0>();
  return std::vector<CBBOLTS::Bin>::__make_iter[abi:de200100](a1, v2);
}

{
  v1 = *(a1 + 8);
  std::vector<CBBOLTS::Bin>::__add_alignment_assumption[abi:de200100]<CBBOLTS::Bin*,0>();
  return std::vector<CBBOLTS::Bin>::__make_iter[abi:de200100](a1, v2);
}

BOOL CBBOLTS::Bin::curveUpdateSatisfiesCondition(uint64_t a1, float *a2)
{
  v3 = 0;
  if (*a2 >= *(a1 + 24))
  {
    return *a2 < *(a1 + 28);
  }

  return v3;
}

uint64_t std::vector<CBBOLTS::Bin>::front[abi:de200100](void *a1)
{
  if (std::vector<CBBOLTS::Bin>::empty[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:422: assertion !empty() failed: front() called on an empty vector\n");
  }

  return *a1;
}

uint64_t CBBOLTS::Bin::push(void *a1, unint64_t a2, unint64_t a3)
{
  v5.n128_u64[0] = a2;
  v5.n128_u64[1] = a3;
  while (std::list<AAB::CurveUpdate>::size[abi:de200100](a1) >= a1[5])
  {
    std::list<AAB::CurveUpdate>::pop_front(a1);
  }

  return std::list<AAB::CurveUpdate>::push_back(a1, &v5);
}

void std::list<AAB::CurveUpdate>::pop_front(uint64_t a1)
{
  if (std::list<AAB::CurveUpdate>::empty[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/list:1319: assertion !empty() failed: list::pop_front() called with empty list\n");
  }

  std::__list_imp<AAB::CurveUpdate>::__unlink_nodes(*(a1 + 8), *(a1 + 8));
  --*(a1 + 16);
  std::__list_node_base<AAB::CurveUpdate,void *>::__as_node[abi:de200100]();
  std::__list_imp<AAB::CurveUpdate>::__delete_node[abi:de200100](a1, v1);
}

uint64_t std::list<AAB::CurveUpdate>::push_back(void *a1, __n128 *a2)
{
  std::__list_imp<AAB::CurveUpdate>::__create_node[abi:de200100]<AAB::CurveUpdate>(a1, 0, 0, a2);
  std::__list_node<AAB::CurveUpdate,void *>::__as_link[abi:de200100]();
  result = std::list<AAB::CurveUpdate>::__link_nodes_at_back(a1, v2, v2);
  ++a1[2];
  return result;
}

{
  std::__list_imp<AAB::CurveUpdate>::__create_node[abi:de200100]<AAB::CurveUpdate const&>(a1, 0, 0, a2);
  std::__list_node<AAB::CurveUpdate,void *>::__as_link[abi:de200100]();
  result = std::list<AAB::CurveUpdate>::__link_nodes_at_back(a1, v2, v2);
  ++a1[2];
  return result;
}

uint64_t *CBBOLTS::serializeBins@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v28 = a1;
  v27 = 0;
  std::vector<AAB::CurveUpdate>::vector[abi:de200100](a2);
  v26[1] = v28;
  v26[0] = std::vector<CBBOLTS::Bin>::begin[abi:de200100](v28);
  v25 = std::vector<CBBOLTS::Bin>::end[abi:de200100](v28);
  while (!std::operator==[abi:de200100]<CBBOLTS::Bin const*>(v26, &v25))
  {
    v24 = std::__wrap_iter<CBBOLTS::Bin const*>::operator*[abi:de200100](v26);
    CBBOLTS::Bin::updates(v24, v22);
    v4 = std::list<AAB::CurveUpdate>::size[abi:de200100](v22);
    std::list<AAB::CurveUpdate>::~list(v22);
    for (i = v4; ; ++i)
    {
      v3 = i;
      if (v3 >= *(CBBOLTS::Bin::configuration(v24) + 16))
      {
        break;
      }

      v21.n128_u64[0] = *(CBBOLTS::Bin::configuration(v24) + 8);
      v21.n128_u64[1] = -1;
      std::vector<AAB::CurveUpdate>::push_back[abi:de200100](a2, &v21);
    }

    std::__wrap_iter<CBBOLTS::Bin const*>::operator++[abi:de200100](v26);
  }

  std::vector<AAB::CurveUpdate>::vector[abi:de200100](v20);
  v19 = v28;
  v18 = std::vector<CBBOLTS::Bin>::begin[abi:de200100](v28);
  v17 = std::vector<CBBOLTS::Bin>::end[abi:de200100](v19);
  while (!std::operator==[abi:de200100]<CBBOLTS::Bin const*>(&v18, &v17))
  {
    v16 = std::__wrap_iter<CBBOLTS::Bin const*>::operator*[abi:de200100](&v18);
    CBBOLTS::Bin::updates(v16, v15);
    v15[3] = v15;
    v14 = std::list<AAB::CurveUpdate>::begin[abi:de200100](v15);
    v13 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
    while (std::operator!=[abi:de200100](&v14, &v13))
    {
      v12 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](&v14);
      std::vector<AAB::CurveUpdate>::push_back[abi:de200100](v20, v12);
      std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v14);
    }

    std::list<AAB::CurveUpdate>::~list(v15);
    std::__wrap_iter<CBBOLTS::Bin const*>::operator++[abi:de200100](&v18);
  }

  v11 = std::vector<AAB::CurveUpdate>::begin[abi:de200100](v20);
  v10 = std::vector<AAB::CurveUpdate>::end[abi:de200100](v20);
  std::sort[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>(v11, v10);
  v8 = std::vector<AAB::CurveUpdate>::end[abi:de200100](a2);
  std::__wrap_iter<AAB::CurveUpdate const*>::__wrap_iter[abi:de200100]<AAB::CurveUpdate*,0>(&v9, &v8);
  v7 = std::vector<AAB::CurveUpdate>::begin[abi:de200100](v20);
  v6 = std::vector<AAB::CurveUpdate>::end[abi:de200100](v20);
  std::vector<AAB::CurveUpdate>::insert[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate*>,0>(a2, v9, v7, v6);
  v27 = 1;
  result = std::vector<AAB::CurveUpdate>::~vector[abi:de200100](v20);
  if ((v27 & 1) == 0)
  {
    return std::vector<AAB::CurveUpdate>::~vector[abi:de200100](a2);
  }

  return result;
}

void *std::vector<AAB::CurveUpdate>::vector[abi:de200100](void *a1)
{
  std::vector<AAB::CurveUpdate>::vector[abi:de200100](a1);
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator<AAB::CurveUpdate>::allocator[abi:de200100](a1);
  return a1;
}

uint64_t std::list<AAB::CurveUpdate>::~list(uint64_t a1)
{
  std::list<AAB::CurveUpdate>::~list(a1);
  return a1;
}

{
  std::__list_imp<AAB::CurveUpdate>::~__list_imp(a1);
  return a1;
}

uint64_t std::vector<AAB::CurveUpdate>::push_back[abi:de200100](void *a1, __n128 *a2)
{
  return std::vector<AAB::CurveUpdate>::emplace_back<AAB::CurveUpdate>(a1, a2);
}

{
  return std::vector<AAB::CurveUpdate>::emplace_back<AAB::CurveUpdate const&>(a1, a2);
}

uint64_t std::list<AAB::CurveUpdate>::begin[abi:de200100](uint64_t a1)
{
  return std::__list_imp<AAB::CurveUpdate>::begin[abi:de200100](a1);
}

{
  return std::__list_imp<AAB::CurveUpdate>::begin[abi:de200100](a1);
}

uint64_t std::list<AAB::CurveUpdate>::end[abi:de200100]()
{
  return std::__list_imp<AAB::CurveUpdate>::end[abi:de200100]();
}

{
  return std::__list_imp<AAB::CurveUpdate>::end[abi:de200100]();
}

BOOL std::operator!=[abi:de200100](void *a1, void *a2)
{
  return !std::operator==[abi:de200100](a1, a2);
}

{
  return !std::operator==[abi:de200100](a1, a2);
}

{
  return std::operator!=[abi:de200100](a1, a2);
}

{
  return !std::operator==[abi:de200100](a1, a2);
}

uint64_t std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](uint64_t *a1)
{
  v1 = *a1;
  std::__list_node_base<AAB::CurveUpdate,void *>::__as_node[abi:de200100]();
  return std::__list_node<AAB::CurveUpdate,void *>::__get_value[abi:de200100](v2);
}

void std::sort[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  std::__sort_impl[abi:de200100]<std::_ClassicAlgPolicy,std::__wrap_iter<AAB::CurveUpdate *>,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>(a1, a2, &v2);
}

uint64_t std::vector<AAB::CurveUpdate>::begin[abi:de200100](uint64_t *a1)
{
  v1 = *a1;
  std::vector<AAB::CurveUpdate>::__add_alignment_assumption[abi:de200100]<AAB::CurveUpdate*,0>();
  return std::vector<AAB::CurveUpdate>::__make_iter[abi:de200100](a1, v2);
}

uint64_t std::vector<AAB::CurveUpdate>::end[abi:de200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  std::vector<AAB::CurveUpdate>::__add_alignment_assumption[abi:de200100]<AAB::CurveUpdate*,0>();
  return std::vector<AAB::CurveUpdate>::__make_iter[abi:de200100](a1, v2);
}

uint64_t *std::vector<AAB::CurveUpdate>::~vector[abi:de200100](uint64_t *a1)
{
  std::vector<AAB::CurveUpdate>::~vector[abi:de200100](a1);
  return a1;
}

{
  v3[1] = a1;
  std::vector<AAB::CurveUpdate>::__destroy_vector::__destroy_vector[abi:de200100](v3, a1);
  std::vector<AAB::CurveUpdate>::__destroy_vector::operator()[abi:de200100](v3);
  return a1;
}

void CBBOLTS::addCurveUpdateToBuffer(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v14.n128_u64[0] = a2;
  v14.n128_u64[1] = a3;
  v13 = a1;
  if (!*(a1 + 24) || std::list<AAB::CurveUpdate>::empty[abi:de200100](a1 + 88))
  {
    while (std::list<AAB::CurveUpdate>::size[abi:de200100](a1 + 88) >= *(a1 + 80))
    {
      std::list<AAB::CurveUpdate>::pop_front(a1 + 88);
    }

    std::list<AAB::CurveUpdate>::push_back((a1 + 88), &v14);
  }

  else
  {
    dispatch_source_cancel(*(a1 + 24));
    dispatch_release(*(a1 + 24));
    *(a1 + 24) = 0;
    *std::list<AAB::CurveUpdate>::back[abi:de200100]((a1 + 88)) = v14;
  }

  if (*(a1 + 16))
  {
    *(a1 + 24) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 16));
    source = *(a1 + 24);
    v3 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(source, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    v4 = *(a1 + 24);
    handler = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = ___ZN7CBBOLTS22addCurveUpdateToBufferEN3AAB11CurveUpdateE_block_invoke;
    v11 = &__block_descriptor_40_e5_v8__0l;
    v12 = a1;
    dispatch_source_set_event_handler(v4, &handler);
    dispatch_resume(*(a1 + 24));
  }
}

uint64_t std::list<AAB::CurveUpdate>::back[abi:de200100](uint64_t *a1)
{
  if (std::list<AAB::CurveUpdate>::empty[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/list:786: assertion !empty() failed: list::back called on empty list\n");
  }

  v1 = *a1;
  std::__list_node_base<AAB::CurveUpdate,void *>::__as_node[abi:de200100]();
  return std::__list_node<AAB::CurveUpdate,void *>::__get_value[abi:de200100](v2);
}

void ___ZN7CBBOLTS22addCurveUpdateToBufferEN3AAB11CurveUpdateE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_cancel(*(v1 + 24));
  dispatch_release(*(v1 + 24));
  *(v1 + 24) = 0;
}

BOOL CBBOLTS::binUpdates@<W0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v17 = a3;
  v16 = a1;
  v15 = a2;
  v14 = 0;
  std::vector<CBBOLTS::Bin>::vector[abi:de200100](a3);
  v3 = std::vector<CBBOLTS::BinConfiguration>::size[abi:de200100](v15);
  std::vector<CBBOLTS::Bin>::reserve(a3, v3);
  v13[1] = v15;
  v13[0] = std::vector<CBBOLTS::BinConfiguration>::begin[abi:de200100](v15);
  v12 = std::vector<CBBOLTS::BinConfiguration>::end[abi:de200100](v15);
  while (!std::operator==[abi:de200100]<CBBOLTS::BinConfiguration const*>(v13, &v12))
  {
    v11 = std::__wrap_iter<CBBOLTS::BinConfiguration const*>::operator*[abi:de200100](v13);
    std::vector<CBBOLTS::Bin>::emplace_back<CBBOLTS::BinConfiguration const&>(a3, v11);
    std::__wrap_iter<CBBOLTS::BinConfiguration const*>::operator++[abi:de200100](v13);
  }

  v10[1] = v16;
  v10[0] = std::list<AAB::CurveUpdate>::begin[abi:de200100](v16);
  v9 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
  while (1)
  {
    result = std::operator!=[abi:de200100](v10, &v9);
    if (!result)
    {
      break;
    }

    v8 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](v10);
    Bin = findBin(v8, a3);
    v7 = *v8;
    CBBOLTS::Bin::push(Bin, *v8, *(v8 + 8));
    std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](v10);
  }

  return result;
}

void *std::vector<CBBOLTS::Bin>::vector[abi:de200100](void *a1)
{
  std::vector<CBBOLTS::Bin>::vector[abi:de200100](a1);
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator<CBBOLTS::Bin>::allocator[abi:de200100](a1);
  return a1;
}

void **std::vector<CBBOLTS::Bin>::reserve(void *a1, unint64_t a2)
{
  v8 = a1;
  v7 = a2;
  result = std::vector<CBBOLTS::Bin>::capacity[abi:de200100](a1);
  if (a2 > result)
  {
    if (v7 > std::vector<CBBOLTS::Bin>::max_size[abi:de200100](a1))
    {
      std::vector<CBBOLTS::Bin>::__throw_length_error[abi:de200100]();
    }

    v3 = std::vector<CBBOLTS::Bin>::size[abi:de200100](a1);
    std::__split_buffer<CBBOLTS::Bin>::__split_buffer(v6, v7, v3, a1);
    std::vector<CBBOLTS::Bin>::__swap_out_circular_buffer(a1, v6);
    return std::__split_buffer<CBBOLTS::Bin>::~__split_buffer(v6);
  }

  return result;
}

uint64_t std::vector<CBBOLTS::BinConfiguration>::begin[abi:de200100](uint64_t *a1)
{
  v1 = *a1;
  std::vector<CBBOLTS::BinConfiguration>::__add_alignment_assumption[abi:de200100]<CBBOLTS::BinConfiguration*,0>();
  return std::vector<CBBOLTS::BinConfiguration>::__make_iter[abi:de200100](a1, v2);
}

uint64_t std::vector<CBBOLTS::BinConfiguration>::end[abi:de200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  std::vector<CBBOLTS::BinConfiguration>::__add_alignment_assumption[abi:de200100]<CBBOLTS::BinConfiguration*,0>();
  return std::vector<CBBOLTS::BinConfiguration>::__make_iter[abi:de200100](a1, v2);
}

uint64_t std::vector<CBBOLTS::Bin>::emplace_back<CBBOLTS::BinConfiguration const&>(void *a1, __n128 *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = std::vector<CBBOLTS::Bin>::__emplace_back_slow_path<CBBOLTS::BinConfiguration const&>(a1, a2);
  }

  else
  {
    std::vector<CBBOLTS::Bin>::__construct_one_at_end[abi:de200100]<CBBOLTS::BinConfiguration const&>(a1, a2);
    v5 = v4 + 48;
  }

  a1[1] = v5;
  return v5 - 48;
}

uint64_t *std::vector<CBBOLTS::Bin>::~vector[abi:de200100](uint64_t *a1)
{
  std::vector<CBBOLTS::Bin>::~vector[abi:de200100](a1);
  return a1;
}

{
  v3[1] = a1;
  std::vector<CBBOLTS::Bin>::__destroy_vector::__destroy_vector[abi:de200100](v3, a1);
  std::vector<CBBOLTS::Bin>::__destroy_vector::operator()[abi:de200100](v3);
  return a1;
}

float CBBOLTS::setCurveBasedOnModelPrediction(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(a2 "objectAtIndexedSubscript:"floatValue"")];
  *a1 = v3;
  [objc_msgSend(a2 "objectAtIndexedSubscript:"floatValue"")];
  *(a1 + 8) = v4;
  [objc_msgSend(a2 "objectAtIndexedSubscript:"floatValue"")];
  *(a1 + 20) = v5;
  [objc_msgSend(a2 "objectAtIndexedSubscript:"floatValue"")];
  v12 = v6;
  [objc_msgSend(a3 objectAtIndexedSubscript:{0), "floatValue"}];
  *(a1 + 4) = v7;
  [objc_msgSend(a3 objectAtIndexedSubscript:{1), "floatValue"}];
  *(a1 + 12) = v8;
  [objc_msgSend(a3 objectAtIndexedSubscript:{2), "floatValue"}];
  *(a1 + 28) = v9;
  [objc_msgSend(a3 objectAtIndexedSubscript:{3), "floatValue"}];
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a1 + 12) - (((*(a1 + 28) - *(a1 + 12)) / (*(a1 + 20) - *(a1 + 8))) * *(a1 + 8));
  *(a1 + 84) = (v10 - *(a1 + 28)) / (v12 - *(a1 + 20));
  *(a1 + 32) = *a1;
  *(a1 + 36) = 0;
  *(a1 + 40) = *(a1 + 20);
  *(a1 + 44) = *(a1 + 4);
  *(a1 + 48) = 0;
  *(a1 + 52) = *(a1 + 28);
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 88) = CFAbsoluteTimeGetCurrent();
  *(a1 + 96) = 3;
  result = 150000.0;
  *(a1 + 100) = 1209170944;
  return result;
}

uint64_t CBBOLTS::CBBOLTS(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v24 = a1;
  AAB::PreferenceUpdateCurveStrategy::PreferenceUpdateCurveStrategy(a1);
  *a1 = &unk_1F599B9F8;
  *(a1 + 8) = os_log_create("com.apple.CoreBrightness.CBBOLTS", "default");
  *(a1 + 16) = dispatch_queue_create("CBBOLTS", 0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<CBBOLTS::BinConfiguration>::vector[abi:de200100]((a1 + 56), a4);
  *(a1 + 80) = v21;
  std::list<AAB::CurveUpdate>::list[abi:de200100]((a1 + 88));
  if (!*(a1 + 8))
  {
    v11 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v19 = v11;
    v18 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create CBBOLTS log handle", v17, 2u);
    }
  }

  if (!*(a1 + 16))
  {
    if (*(a1 + 8))
    {
      v8 = *(a1 + 8);
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

    v16 = v8;
    v15 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v5 = v16;
      v6 = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_1DE8E5000, v5, v6, "Failed to create CBBOLTS queue", v14, 2u);
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 40) = MEMORY[0x1E69E5928](v22);
  *(a1 + 216) = 0;
  return v24;
}

{
  CBBOLTS::CBBOLTS(a1, a2, a3, a4);
  return a1;
}

{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v24 = a1;
  AAB::PreferenceUpdateCurveStrategy::PreferenceUpdateCurveStrategy(a1);
  *a1 = &unk_1F599B9F8;
  *(a1 + 8) = os_log_create("com.apple.CoreBrightness.CBBOLTS", "default");
  *(a1 + 16) = dispatch_queue_create("CBBOLTS", 0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<CBBOLTS::BinConfiguration>::vector[abi:de200100]((a1 + 56), a4);
  *(a1 + 80) = v21;
  std::list<AAB::CurveUpdate>::list[abi:de200100]((a1 + 88));
  if (!*(a1 + 8))
  {
    v11 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v19 = v11;
    v18 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create CBBOLTS log handle", v17, 2u);
    }
  }

  if (!*(a1 + 16))
  {
    if (*(a1 + 8))
    {
      v8 = *(a1 + 8);
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

    v16 = v8;
    v15 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v5 = v16;
      v6 = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_1DE8E5000, v5, v6, "Failed to create CBBOLTS queue", v14, 2u);
    }
  }

  *(a1 + 48) = MEMORY[0x1E69E5928](v22);
  *(a1 + 40) = 0;
  *(a1 + 216) = 0;
  return v24;
}

{
  CBBOLTS::CBBOLTS(a1, a2, a3, a4);
  return a1;
}

AAB::PreferenceUpdateCurveStrategy *AAB::PreferenceUpdateCurveStrategy::PreferenceUpdateCurveStrategy(AAB::PreferenceUpdateCurveStrategy *this)
{
  AAB::UpdateCurveStrategy::UpdateCurveStrategy(this);
  result = this;
  *this = &unk_1F599BDA0;
  return result;
}

{
  AAB::PreferenceUpdateCurveStrategy::PreferenceUpdateCurveStrategy(this);
  return this;
}

void *std::list<AAB::CurveUpdate>::list[abi:de200100](void *a1)
{
  std::list<AAB::CurveUpdate>::list[abi:de200100](a1);
  return a1;
}

{
  std::__list_imp<AAB::CurveUpdate>::__list_imp(a1);
  return a1;
}

uint64_t *std::vector<CBBOLTS::BinConfiguration>::~vector[abi:de200100](uint64_t *a1)
{
  std::vector<CBBOLTS::BinConfiguration>::~vector[abi:de200100](a1);
  return a1;
}

{
  v3[1] = a1;
  std::vector<CBBOLTS::BinConfiguration>::__destroy_vector::__destroy_vector[abi:de200100](v3, a1);
  std::vector<CBBOLTS::BinConfiguration>::__destroy_vector::operator()[abi:de200100](v3);
  return a1;
}

void AAB::PreferenceUpdateCurveStrategy::~PreferenceUpdateCurveStrategy(AAB::PreferenceUpdateCurveStrategy *this)
{
  AAB::UpdateCurveStrategy::~UpdateCurveStrategy(this);
}

{
  AAB::PreferenceUpdateCurveStrategy::~PreferenceUpdateCurveStrategy(this);
}

{
  AAB::PreferenceUpdateCurveStrategy::~PreferenceUpdateCurveStrategy(this);
  MEMORY[0x1E12C4020](this, 0x81C40B8603338);
}

void CBBOLTS::~CBBOLTS(CBBOLTS *this)
{
  v9 = this;
  v10 = this;
  *this = &unk_1F599B9F8;
  if (*(this + 2))
  {
    v1 = *(this + 2);
    block = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = ___ZN7CBBOLTSD2Ev_block_invoke;
    v7 = &__block_descriptor_40_e5_v8__0l;
    v8 = this;
    dispatch_sync(v1, &block);
    dispatch_release(*(this + 2));
    *(this + 2) = 0;
  }

  else
  {
    if (*(this + 3))
    {
      dispatch_source_cancel(*(this + 3));
      dispatch_release(*(this + 3));
      *(this + 3) = 0;
    }

    if (*(this + 4))
    {
      dispatch_source_cancel(*(this + 4));
      dispatch_release(*(this + 4));
      *(this + 4) = 0;
    }

    MEMORY[0x1E69E5920](*(this + 5));
    MEMORY[0x1E69E5920](*(this + 6));
  }

  std::list<AAB::CurveUpdate>::~list(this + 88);
  std::vector<CBBOLTS::BinConfiguration>::~vector[abi:de200100](this + 7);
  AAB::PreferenceUpdateCurveStrategy::~PreferenceUpdateCurveStrategy(this);
}

{
  CBBOLTS::~CBBOLTS(this);
}

{
  CBBOLTS::~CBBOLTS(this);
  MEMORY[0x1E12C4020](this, 0x10A1C40123D1288);
}

double ___ZN7CBBOLTSD2Ev_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    dispatch_source_cancel(*(v2 + 24));
    dispatch_release(*(v2 + 24));
    *(v2 + 24) = 0;
  }

  if (*(v2 + 32))
  {
    dispatch_source_cancel(*(v2 + 32));
    dispatch_release(*(v2 + 32));
    *(v2 + 32) = 0;
  }

  MEMORY[0x1E69E5920](*(v2 + 40));
  *&result = MEMORY[0x1E69E5920](*(v2 + 48)).n128_u64[0];
  return result;
}

void sub_1DE968764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a18)
  {
    MEMORY[0x1E12C4020](a15, a14);
  }

  _Unwind_Resume(a1);
}

void *std::vector<CBBOLTS::BinConfiguration>::vector[abi:de200100](void *a1, uint64_t a2, uint64_t a3)
{
  std::vector<CBBOLTS::BinConfiguration>::vector[abi:de200100](a1, a2, a3);
  return a1;
}

{
  v8[0] = a2;
  v8[1] = a3;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator<CBBOLTS::BinConfiguration>::allocator[abi:de200100](a1);
  v5 = std::initializer_list<CBBOLTS::BinConfiguration>::begin[abi:de200100](v8);
  v6 = std::initializer_list<CBBOLTS::BinConfiguration>::end[abi:de200100](v8);
  v3 = std::initializer_list<CBBOLTS::BinConfiguration>::size[abi:de200100](v8);
  std::vector<CBBOLTS::BinConfiguration>::__init_with_size[abi:de200100]<CBBOLTS::BinConfiguration const*,CBBOLTS::BinConfiguration const*>(a1, v5, v6, v3);
  return a1;
}

uint64_t CBBOLTS::loadModel(CBBOLTS *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = this;
  if (!*(this + 5))
  {
    if (*(this + 1))
    {
      v17 = *(this + 1);
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

    v29 = v17;
    v28 = 1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      log = v29;
      type = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_impl(&dword_1DE8E5000, log, type, "Loading BOLTS ML model.", v27, 2u);
    }

    if (*(this + 1))
    {
      v13 = *(this + 1);
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
    v25 = 1;
    v24 = 0xEEEEB0B5B2B2EEEELL;
    if (os_signpost_enabled(v13))
    {
      v9 = v26;
      v10 = v25;
      spid = v24;
      __os_log_helper_16_0_0(v23);
      _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v9, v10, spid, "LoadBOLTSModel", &unk_1DEAD656F, v23, 2u);
    }

    *(this + 5) = CBBOLTS::initializeMLABModelFromURL(*(this + 6), v1);
    if (*(this + 1))
    {
      v8 = *(this + 1);
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
    v21 = 2;
    v20 = 0xEEEEB0B5B2B2EEEELL;
    if (os_signpost_enabled(v8))
    {
      v4 = v22;
      v5 = v21;
      v6 = v20;
      __os_log_helper_16_0_0(v19);
      _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v4, v5, v6, "LoadBOLTSModel", &unk_1DEAD656F, v19, 2u);
    }
  }

  if (*(this + 5))
  {
    v31 = 1;
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

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v32, *(this + 6));
      _os_log_error_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_ERROR, "Failed to create model using URL %@", v32, 0xCu);
    }

    v31 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v31 & 1;
}

uint64_t CBBOLTS::initializeMLABModelFromURL(CBBOLTS *this, NSURL *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = this;
  v7 = 0;
  v6 = objc_alloc_init(getMLModelConfigurationClass());
  [v6 setComputeUnits:0];
  v2 = [MLAB alloc];
  v5 = [(MLAB *)v2 initWithContentsOfURL:v8 configuration:v6 error:&v7];
  MEMORY[0x1E69E5920](v6);
  if (v5 && !v7)
  {
    v9 = v5;
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

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v10, v7);
      _os_log_error_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_ERROR, "Error during model initialisation: %@", v10, 0xCu);
    }

    MEMORY[0x1E69E5920](v5);
    v9 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v9;
}

void CBBOLTS::unloadModel(dispatch_source_t *this, float a2)
{
  v13 = this;
  v12 = a2;
  if (this[4])
  {
    dispatch_source_cancel(this[4]);
    dispatch_release(this[4]);
    this[4] = 0;
  }

  if (this[2])
  {
    this[4] = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, this[2]);
    source = this[4];
    v2 = dispatch_time(0, (v12 * 1000000000.0));
    dispatch_source_set_timer(source, v2, 0xFFFFFFFFFFFFFFFFLL, 0);
    v3 = this[4];
    handler = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = ___ZN7CBBOLTS11unloadModelEf_block_invoke;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = this;
    dispatch_source_set_event_handler(v3, &handler);
    dispatch_resume(this[4]);
  }
}

void ___ZN7CBBOLTS11unloadModelEf_block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v5 = *(a1 + 32);
  dispatch_source_cancel(*(v5 + 32));
  dispatch_release(*(v5 + 32));
  *(v5 + 32) = 0;
  if (*(v5 + 40))
  {
    if (*(v5 + 8))
    {
      v4 = *(v5 + 8);
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
      _os_log_impl(&dword_1DE8E5000, log, type, "Unloading BOLTS ML model.", v6, 2u);
    }

    MEMORY[0x1E69E5920](*(v5 + 40));
    *(v5 + 40) = 0;
  }
}

uint64_t CBBOLTS::compileModel(CBBOLTS *this, NSString *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = this;
  v27 = dispatch_semaphore_create(0);
  if (v27)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 1375731712;
    v20 = 48;
    v21 = __Block_byref_object_copy__3;
    v22 = __Block_byref_object_dispose__3;
    v23 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 1375731712;
    v13 = 48;
    v14 = __Block_byref_object_copy__3;
    v15 = __Block_byref_object_dispose__3;
    v16 = 0;
    [getMLModelClass() compileModelAtURL:objc_msgSend(MEMORY[0x1E695DFF8] completionHandler:{"fileURLWithPath:", v28)}];
    dsema = v27;
    v2 = dispatch_time(0, 2000000000);
    v9 = dispatch_semaphore_wait(dsema, v2);
    if (!v18[5] || v11[5] || v9)
    {
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
        __os_log_helper_16_2_1_8_64(v30, v11[5]);
        _os_log_error_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_ERROR, "Failed to compile model: %@", v30, 0xCu);
      }

      MEMORY[0x1E69E5920](v18[5]);
      MEMORY[0x1E69E5920](v11[5]);
      v29 = 0;
    }

    else
    {
      MEMORY[0x1E69E5920](v11[5]);
      v29 = v18[5];
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v17, 8);
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

    v26 = v8;
    v25 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create model compilation semaphore", v24, 2u);
    }

    v29 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t getMLModelClass(void)
{
  v8 = 0;
  v9 = &v8;
  v10 = 1375731712;
  v11 = 48;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = std::atomic_load_explicit[abi:de200100]<void *>(&getMLModelClass(void)::softClass, 0);
  if (!v9[5])
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = ___ZL15getMLModelClassv_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v8;
    ___ZL15getMLModelClassv_block_invoke(&v2);
  }

  v1 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v1;
}

intptr_t ___ZN7CBBOLTS12compileModelEP8NSString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 40) = MEMORY[0x1E69E5928](a2);
  *(*(*(a1 + 48) + 8) + 40) = MEMORY[0x1E69E5928](a3);
  return dispatch_semaphore_signal(*(a1 + 32));
}

void CBBOLTS::createFromUncompiledModelPath(CBBOLTS *this, NSString *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = CBBOLTS::compileModel(this, a2);
  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v5, v4);
    _os_log_debug_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_DEBUG, "MLAB path %@", v5, 0xCu);
  }

  CBBOLTS::createUsingModelURL(v4, v2);
}

uint64_t CBBOLTS::makePrediction(uint64_t a1, uint64_t *a2, float a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v71 = a1;
  v70 = a2;
  v69 = a3;
  CBBOLTS::serializeBins(a2, v68);
  if (*(a1 + 8))
  {
    v36 = *(a1 + 8);
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

    v36 = inited;
  }

  v67 = v36;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    log = v67;
    v34 = type;
    __os_log_helper_16_0_0(v65);
    _os_log_impl(&dword_1DE8E5000, log, v34, "==== MLAB INPUT =====", v65, 2u);
  }

  if (*(a1 + 8))
  {
    v32 = *(a1 + 8);
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

  v64 = v32;
  v63 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v64;
    v30 = v63;
    __os_log_helper_16_0_0(v62);
    _os_log_impl(&dword_1DE8E5000, v29, v30, "Lux Nits Timestamp", v62, 2u);
  }

  v61[1] = v68;
  v61[0] = std::vector<AAB::CurveUpdate>::begin[abi:de200100](v68);
  v60 = std::vector<AAB::CurveUpdate>::end[abi:de200100](v68);
  while (!std::operator==[abi:de200100]<AAB::CurveUpdate *>(v61, &v60))
  {
    v59 = std::__wrap_iter<AAB::CurveUpdate *>::operator*[abi:de200100](v61);
    if (*(a1 + 8))
    {
      v28 = *(a1 + 8);
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

    v58 = v28;
    v57 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v82, COERCE__INT64(*v59), COERCE__INT64(*(v59 + 4)), *(v59 + 8));
      _os_log_impl(&dword_1DE8E5000, v58, v57, "%f %f %lld", v82, 0x20u);
    }

    std::__wrap_iter<AAB::CurveUpdate *>::operator++[abi:de200100](v61);
  }

  if (*(a1 + 8))
  {
    v26 = *(a1 + 8);
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

  v56 = v26;
  v55 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v56;
    v24 = v55;
    __os_log_helper_16_0_0(v54);
    _os_log_impl(&dword_1DE8E5000, v23, v24, "=====================", v54, 2u);
  }

  v22 = objc_alloc(getMLMultiArrayClass());
  v81[0] = &unk_1F59C8CE8;
  v81[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:std::vector<AAB::CurveUpdate>::size[abi:de200100](v68)];
  v81[2] = &unk_1F59C8D00;
  v53 = [v22 initWithShape:objc_msgSend(MEMORY[0x1E695DEC8] dataType:"arrayWithObjects:count:" error:{v81, 3), 65568, 0}];
  for (i = 0; i < std::vector<AAB::CurveUpdate>::size[abi:de200100](v68); ++i)
  {
    v20 = MEMORY[0x1E696AD98];
    LODWORD(v3) = *std::vector<AAB::CurveUpdate>::operator[][abi:de200100](v68, i);
    v21 = [v20 numberWithFloat:v3];
    v80[0] = &unk_1F59C8D18;
    v80[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:i];
    v80[2] = &unk_1F59C8D18;
    [v53 setObject:v21 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v80, 3)}];
    v18 = MEMORY[0x1E696AD98];
    LODWORD(v4) = *(std::vector<AAB::CurveUpdate>::operator[][abi:de200100](v68, i) + 4);
    v19 = [v18 numberWithFloat:v4];
    v79[0] = &unk_1F59C8D18;
    v79[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:i];
    v79[2] = &unk_1F59C8CE8;
    [v53 setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v79, 3)}];
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{*(std::vector<AAB::CurveUpdate>::operator[][abi:de200100](v68, i) + 8)}];
    v78[0] = &unk_1F59C8D18;
    v78[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:i];
    v78[2] = &unk_1F59C8D30;
    [v53 setObject:v17 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v78, 3)}];
  }

  v16 = objc_alloc(getMLMultiArrayClass());
  v77[0] = &unk_1F59C8CE8;
  v77[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:std::vector<AAB::CurveUpdate>::size[abi:de200100](v68)];
  v51 = [v16 initWithShape:objc_msgSend(MEMORY[0x1E695DEC8] dataType:"arrayWithObjects:count:" error:{v77, 2), 65568, 0}];
  v15 = objc_alloc(getMLMultiArrayClass());
  v76[0] = &unk_1F59C8CE8;
  v76[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:std::vector<AAB::CurveUpdate>::size[abi:de200100](v68)];
  v50 = [v15 initWithShape:objc_msgSend(MEMORY[0x1E695DEC8] dataType:"arrayWithObjects:count:" error:{v76, 2), 65568, 0}];
  v14 = objc_alloc(getMLMultiArrayClass());
  v75[0] = &unk_1F59C8CE8;
  v75[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:std::vector<AAB::CurveUpdate>::size[abi:de200100](v68)];
  v49 = [v14 initWithShape:objc_msgSend(MEMORY[0x1E695DEC8] dataType:"arrayWithObjects:count:" error:{v75, 2), 65568, 0}];
  for (j = 0; j < std::vector<AAB::CurveUpdate>::size[abi:de200100](v68); ++j)
  {
    [v51 setObject:&unk_1F59C8D18 atIndexedSubscript:j];
    [v50 setObject:&unk_1F59C8D18 atIndexedSubscript:j];
    [v49 setObject:&unk_1F59C8D18 atIndexedSubscript:j];
  }

  v47 = 0;
  v46 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if (CBBOLTS::loadModel(a1))
  {
    v46 = [*(a1 + 40) predictionFromInput_x:v53 target_lux:v50 target_nits:v49 target_weight:v51 error:&v47];
    if (v47)
    {
      if (*(a1 + 8))
      {
        v13 = *(a1 + 8);
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

      oslog = v13;
      v43 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v74, v47);
        _os_log_error_impl(&dword_1DE8E5000, oslog, v43, "Failed to make a prediction: %@", v74, 0xCu);
      }

      v72 = 0;
      v42 = 1;
      goto LABEL_71;
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      v11 = *(a1 + 8);
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

    v41 = v11;
    v40 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v8 = v41;
      v9 = v40;
      __os_log_helper_16_0_0(v39);
      _os_log_error_impl(&dword_1DE8E5000, v8, v9, "Failed to load model.", v39, 2u);
    }
  }

  CBBOLTS::unloadModel(a1, v69);
  v38 = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 8))
  {
    v7 = *(a1 + 8);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v73, COERCE__INT64(v38 - Current));
    _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_INFO, "Loading ML model + prediction took %f seconds", v73, 0xCu);
  }

  v72 = v46;
  v42 = 1;
LABEL_71:
  std::vector<AAB::CurveUpdate>::~vector[abi:de200100](v68);
  *MEMORY[0x1E69E9840];
  return v72;
}

uint64_t getMLMultiArrayClass(void)
{
  v8 = 0;
  v9 = &v8;
  v10 = 1375731712;
  v11 = 48;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = std::atomic_load_explicit[abi:de200100]<void *>(&getMLMultiArrayClass(void)::softClass, 0);
  if (!v9[5])
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = ___ZL20getMLMultiArrayClassv_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v8;
    ___ZL20getMLMultiArrayClassv_block_invoke(&v2);
  }

  v1 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v1;
}

uint64_t std::vector<AAB::CurveUpdate>::operator[][abi:de200100](void *a1, unint64_t a2)
{
  if (a2 >= std::vector<AAB::CurveUpdate>::size[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:403: assertion __n < size() failed: vector[] index out of bounds\n");
  }

  return *a1 + 16 * a2;
}

uint64_t *CBBOLTS::UpdateCurveAndCappedCurve(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v46 = a1;
  v45 = a2;
  v44 = a3;
  v43 = a4;
  CBBOLTS::binUpdates(a2, (a1 + 56), v42);
  if (*(a1 + 8))
  {
    v23 = *(a1 + 8);
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

    v23 = inited;
  }

  v41 = v23;
  v40 = 1;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    log = v41;
    type = v40;
    __os_log_helper_16_0_0(v39);
    _os_log_impl(&dword_1DE8E5000, log, type, "----- Binning -----", v39, 2u);
  }

  if (*(a1 + 8))
  {
    v19 = *(a1 + 8);
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

  v38 = v19;
  v37 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v16 = v38;
    v17 = v37;
    __os_log_helper_16_0_0(v36);
    _os_log_impl(&dword_1DE8E5000, v16, v17, "Bin Lux Nits Timestamp", v36, 2u);
  }

  for (i = 0; ; ++i)
  {
    v15 = i;
    if (v15 >= std::vector<CBBOLTS::Bin>::size[abi:de200100](v42))
    {
      break;
    }

    v4 = std::vector<CBBOLTS::Bin>::operator[][abi:de200100](v42, i);
    CBBOLTS::Bin::updates(v4, v34);
    v34[3] = v34;
    v33 = std::list<AAB::CurveUpdate>::begin[abi:de200100](v34);
    v32 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
    while (std::operator!=[abi:de200100](&v33, &v32))
    {
      v31 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](&v33);
      if (*(a1 + 8))
      {
        v14 = *(a1 + 8);
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

      oslog = v14;
      v29 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v48, i, COERCE__INT64(*v31), COERCE__INT64(*(v31 + 4)), *(v31 + 8));
        _os_log_impl(&dword_1DE8E5000, oslog, v29, "%lu %f %f %lld", v48, 0x2Au);
      }

      std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v33);
    }

    std::list<AAB::CurveUpdate>::~list(v34);
  }

  if (*(a1 + 8))
  {
    v12 = *(a1 + 8);
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

  v28 = v12;
  v27 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v9 = v28;
    v10 = v27;
    __os_log_helper_16_0_0(v26);
    _os_log_impl(&dword_1DE8E5000, v9, v10, "-------------------", v26, 2u);
  }

  v43[24] = 3;
  memcpy((a1 + 224), v43, 0x68uLL);
  context = objc_autoreleasePoolPush();
  Prediction = CBBOLTS::makePrediction(a1, v42, 5.0);
  if (Prediction)
  {
    CBBOLTS::setCurveBasedOnModelPrediction(a1 + 224, [Prediction LTM_output_E], objc_msgSend(Prediction, "LTM_output_L"));
    *(a1 + 216) = 1;
    if (*(a1 + 8))
    {
      v7 = *(a1 + 8);
    }

    else
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v7 = v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v47, COERCE__INT64(*(a1 + 224)), COERCE__INT64(*(a1 + 232)), COERCE__INT64(*(a1 + 240)), COERCE__INT64(*(a1 + 244)), COERCE__INT64(*(a1 + 228)), COERCE__INT64(*(a1 + 236)), COERCE__INT64(*(a1 + 248)), COERCE__INT64(*(a1 + 252)), COERCE__INT64(*(a1 + 308)));
      _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "User adjustment -> predict LTM curve: E0a %f, E0b %f, E1 %f, E2 %f, L0a %f, L0b %f, L1 %f, L2 %f, thirdSlope %f", v47, 0x5Cu);
    }
  }

  objc_autoreleasePoolPop(context);
  result = std::vector<CBBOLTS::Bin>::~vector[abi:de200100](v42);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::vector<CBBOLTS::Bin>::operator[][abi:de200100](void *a1, unint64_t a2)
{
  if (a2 >= std::vector<CBBOLTS::Bin>::size[abi:de200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:403: assertion __n < size() failed: vector[] index out of bounds\n");
  }

  return *a1 + 48 * a2;
}

uint64_t *CBBOLTS::UpdateCurveWithPrediction(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v40[4] = a1;
  v40[3] = a2;
  CBBOLTS::binUpdates(a2, (a1 + 56), v40);
  if (*(a1 + 8))
  {
    v21 = *(a1 + 8);
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

    v21 = inited;
  }

  v39 = v21;
  v38 = 1;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    log = v39;
    type = v38;
    __os_log_helper_16_0_0(v37);
    _os_log_impl(&dword_1DE8E5000, log, type, "----- Binning -----", v37, 2u);
  }

  if (*(a1 + 8))
  {
    v17 = *(a1 + 8);
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

  v36 = v17;
  v35 = 1;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v14 = v36;
    v15 = v35;
    __os_log_helper_16_0_0(v34);
    _os_log_impl(&dword_1DE8E5000, v14, v15, "Bin Lux Nits Timestamp", v34, 2u);
  }

  for (i = 0; ; ++i)
  {
    v13 = i;
    if (v13 >= std::vector<CBBOLTS::Bin>::size[abi:de200100](v40))
    {
      break;
    }

    v2 = std::vector<CBBOLTS::Bin>::operator[][abi:de200100](v40, i);
    CBBOLTS::Bin::updates(v2, v32);
    v32[3] = v32;
    v31 = std::list<AAB::CurveUpdate>::begin[abi:de200100](v32);
    v30 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
    while (std::operator!=[abi:de200100](&v31, &v30))
    {
      v29 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](&v31);
      if (*(a1 + 8))
      {
        v12 = *(a1 + 8);
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

      oslog = v12;
      v27 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v42, i, COERCE__INT64(*v29), COERCE__INT64(*(v29 + 4)), *(v29 + 8));
        _os_log_impl(&dword_1DE8E5000, oslog, v27, "%lu %f %f %lld", v42, 0x2Au);
      }

      std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v31);
    }

    std::list<AAB::CurveUpdate>::~list(v32);
  }

  if (*(a1 + 8))
  {
    v10 = *(a1 + 8);
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

  v26 = v10;
  v25 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v7 = v26;
    v8 = v25;
    __os_log_helper_16_0_0(v24);
    _os_log_impl(&dword_1DE8E5000, v7, v8, "-------------------", v24, 2u);
  }

  context = objc_autoreleasePoolPush();
  Prediction = CBBOLTS::makePrediction(a1, v40, 2.0);
  if (Prediction)
  {
    CBBOLTS::setCurveBasedOnModelPrediction(a1 + 224, [Prediction LTM_output_E], objc_msgSend(Prediction, "LTM_output_L"));
    *(a1 + 216) = 1;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 8);
    }

    else
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v5 = v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v41, COERCE__INT64(*(a1 + 224)), COERCE__INT64(*(a1 + 232)), COERCE__INT64(*(a1 + 240)), COERCE__INT64(*(a1 + 244)), COERCE__INT64(*(a1 + 228)), COERCE__INT64(*(a1 + 236)), COERCE__INT64(*(a1 + 248)), COERCE__INT64(*(a1 + 252)), COERCE__INT64(*(a1 + 308)));
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Restore from user updates sequence -> predict LTM curve: E0a %f, E0b %f, E1 %f, E2 %f, L0a %f, L0b %f, L1 %f, L2 %f, thirdSlope %f", v41, 0x5Cu);
    }
  }

  objc_autoreleasePoolPop(context);
  result = std::vector<CBBOLTS::Bin>::~vector[abi:de200100](v40);
  *MEMORY[0x1E69E9840];
  return result;
}

void CBBOLTS::UpdateCurves_Internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = a1;
  v42 = a2;
  v41 = a3;
  if (*(a1 + 8))
  {
    v17 = *(a1 + 8);
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

  v40 = v17;
  v39 = 1;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    log = v40;
    type = v39;
    __os_log_helper_16_0_0(v38);
    _os_log_impl(&dword_1DE8E5000, log, type, "+++++ User adjustments buffer +++++", v38, 2u);
  }

  if (*(a1 + 8))
  {
    v13 = *(a1 + 8);
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

  v37 = v13;
  v36 = 1;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v10 = v37;
    v11 = v36;
    __os_log_helper_16_0_0(v35);
    _os_log_impl(&dword_1DE8E5000, v10, v11, "Lux Nits Timestamp", v35, 2u);
  }

  v34[1] = a1 + 88;
  v34[0] = std::list<AAB::CurveUpdate>::begin[abi:de200100](a1 + 88);
  v33 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
  while (std::operator!=[abi:de200100](v34, &v33))
  {
    v32 = std::__list_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](v34);
    if (*(a1 + 8))
    {
      v9 = *(a1 + 8);
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

    v31 = v9;
    v30 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v44, COERCE__INT64(*v32), COERCE__INT64(*(v32 + 4)), *(v32 + 8));
      _os_log_impl(&dword_1DE8E5000, v31, v30, "%f %f %lld", v44, 0x20u);
    }

    std::__list_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](v34);
  }

  if (*(a1 + 8))
  {
    v7 = *(a1 + 8);
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

  v29 = v7;
  v28 = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v4 = v29;
    v5 = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_impl(&dword_1DE8E5000, v4, v5, "+++++++++++++++++++++++++++++++++++", v27, 2u);
  }

  v3 = *(a1 + 16);
  block = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = ___ZN7CBBOLTS21UpdateCurves_InternalERN3AAB5CurveEPS1__block_invoke;
  v23 = &__block_descriptor_56_e5_v8__0l;
  v24 = a1;
  v25 = v42;
  v26 = v41;
  dispatch_async(v3, &block);
  *MEMORY[0x1E69E9840];
}

uint64_t std::__list_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](uint64_t *a1)
{
  v1 = *a1;
  std::__list_node_base<AAB::CurveUpdate,void *>::__as_node[abi:de200100]();
  return std::__list_node<AAB::CurveUpdate,void *>::__get_value[abi:de200100](v2);
}

void CBBOLTS::UpdateCurve(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v21 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v22 = a6;
  v20 = a1;
  v19 = a2;
  v18 = a3;
  if (*(a1 + 16))
  {
    v6 = *(a1 + 16);
    block = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = ___ZN7CBBOLTS11UpdateCurveEP3AABNS0_21CurveUpdateParametersERNS0_5CurveE_block_invoke;
    v12 = &__block_descriptor_68_e5_v8__0l;
    v13 = a1;
    v16 = v21;
    v17 = v22;
    v14 = v19;
    v15 = v18;
    dispatch_sync(v6, &block);
  }
}

void ___ZN7CBBOLTS11UpdateCurveEP3AABNS0_21CurveUpdateParametersERNS0_5CurveE_block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  LODWORD(v5) = *(a1 + 56);
  HIDWORD(v5) = *(a1 + 64);
  LocalizedTimestamp = getLocalizedTimestamp();
  CBBOLTS::addCurveUpdateToBuffer(v4, v5, LocalizedTimestamp);
  v2 = *(a1 + 56);
  LODWORD(v1) = v2;
  AAB::PreferenceUpdateCurveStrategy::UpdateCurve(v1, *(&v2 + 1), *(a1 + 64), v4, *(a1 + 40), *(a1 + 48));
  CBBOLTS::UpdateCurves_Internal(v4, *(a1 + 48), 0);
  CBBOLTS::saveBufferToPreferences(v4);
}

uint64_t getLocalizedTimestamp(void)
{
  Current = CFAbsoluteTimeGetCurrent();
  v0 = [objc_msgSend(MEMORY[0x1E695DFE8] "localTimeZone")];
  return (Current + v0 + *MEMORY[0x1E695E468]);
}

void CBBOLTS::saveBufferToPreferences(NSObject **this)
{
  v9 = this;
  if (this[2])
  {
    v1 = this[2];
    block = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = ___ZNK7CBBOLTS23saveBufferToPreferencesEv_block_invoke;
    v7 = &__block_descriptor_40_e5_v8__0l;
    v8 = this;
    dispatch_async(v1, &block);
  }
}

void CBBOLTS::UpdateCurveAndCappedCurve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8)
{
  v27 = __PAIR64__(LODWORD(a7), LODWORD(a6));
  v28 = a8;
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  if (*(a1 + 16))
  {
    v8 = *(a1 + 16);
    block = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = ___ZN7CBBOLTS25UpdateCurveAndCappedCurveEP3AABNS0_21CurveUpdateParametersERNS0_5CurveERKNS0_8CurveCapES4__block_invoke;
    v14 = &__block_descriptor_84_e5_v8__0l;
    v15 = a1;
    v20 = v27;
    v21 = v28;
    v16 = v25;
    v17 = v24;
    v18 = v22;
    v19 = v23;
    dispatch_sync(v8, &block);
  }
}

void ___ZN7CBBOLTS25UpdateCurveAndCappedCurveEP3AABNS0_21CurveUpdateParametersERNS0_5CurveERKNS0_8CurveCapES4__block_invoke(uint64_t a1)
{
  v5 = *(a1 + 32);
  LODWORD(v6) = *(a1 + 72);
  HIDWORD(v6) = *(a1 + 80);
  LocalizedTimestamp = getLocalizedTimestamp();
  CBBOLTS::addCurveUpdateToBuffer(v5, v6, LocalizedTimestamp);
  if (CBBOLTS::useBOLTS(v5))
  {
    v2 = *(a1 + 72);
    LODWORD(v1) = v2;
    AAB::PreferenceUpdateCurveStrategy::UpdateCurve(v1, *(&v2 + 1), *(a1 + 80), v5, *(a1 + 40), *(a1 + 48));
    CBBOLTS::UpdateCurves_Internal(v5, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v3 = *(a1 + 72);
    LODWORD(v1) = v3;
    AAB::PreferenceUpdateCurveStrategy::UpdateCurveAndCappedCurve(v5, *(a1 + 40), *(a1 + 48), *(a1 + 64), *(a1 + 56), v1, *(&v3 + 1), *(a1 + 80));
    *(*(a1 + 56) + 96) = 3;
    memcpy(v5 + 224, *(a1 + 56), 0x68uLL);
    memcpy(v5 + 112, v5 + 224, 0x68uLL);
  }

  CBBOLTS::saveBufferToPreferences(v5);
}

BOOL CBBOLTS::useBOLTS(CBBOLTS *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = this;
  v18 = std::list<AAB::CurveUpdate>::size[abi:de200100](this + 88) > 5;
  CBBOLTS::binUpdates(this + 88, this + 7, v17);
  v16 = 0;
  v15[1] = v17;
  v15[0] = std::vector<CBBOLTS::Bin>::begin[abi:de200100](v17);
  v14 = std::vector<CBBOLTS::Bin>::end[abi:de200100](v17);
  while (!std::operator==[abi:de200100]<CBBOLTS::Bin *>(v15, &v14))
  {
    v13 = std::__wrap_iter<CBBOLTS::Bin *>::operator*[abi:de200100](v15);
    CBBOLTS::Bin::updates(v13, v12);
    v9 = std::list<AAB::CurveUpdate>::size[abi:de200100](v12);
    std::list<AAB::CurveUpdate>::~list(v12);
    if (v9)
    {
      ++v16;
    }

    std::__wrap_iter<CBBOLTS::Bin *>::operator++[abi:de200100](v15);
  }

  v11 = v16 > 2;
  if (*(this + 1))
  {
    v8 = *(this + 1);
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
    v6 = 0;
    if (v18)
    {
      v6 = v11;
    }

    v1 = "Use";
    if (!v6)
    {
      v1 = "Don't use";
    }

    v5 = v1;
    v2 = std::list<AAB::CurveUpdate>::size[abi:de200100](this + 88);
    __os_log_helper_16_2_3_8_32_4_0_4_0(v20, v5, v2, v16);
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "%s the BOLTS curve update strategy. Num of adjustments = %d; Num of updated Bins = %d", v20, 0x18u);
  }

  v4 = 0;
  if (v18)
  {
    v4 = v11;
  }

  std::vector<CBBOLTS::Bin>::~vector[abi:de200100](v17);
  *MEMORY[0x1E69E9840];
  return v4;
}

void *std::list<AAB::CurveUpdate>::list(void *a1, uint64_t a2)
{
  std::list<AAB::CurveUpdate>::list(a1, a2);
  return a1;
}

{
  v8 = a1;
  v7 = a2;
  v9 = a1;
  std::allocator_traits<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::select_on_container_copy_construction[abi:de200100]<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>,void,0>();
  std::__list_imp<AAB::CurveUpdate>::__list_imp(a1);
  v6 = std::list<AAB::CurveUpdate>::begin[abi:de200100](v7);
  v5 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
  while (std::operator!=[abi:de200100](&v6, &v5))
  {
    v3 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](&v6);
    std::list<AAB::CurveUpdate>::push_back(a1, v3);
    std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](&v6);
  }

  return v9;
}

void CBBOLTS::SetCurveUpdates(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  std::list<AAB::CurveUpdate>::operator=(a1 + 88, a2);
  while (std::list<AAB::CurveUpdate>::size[abi:de200100](a1 + 88) > *(a1 + 80))
  {
    std::list<AAB::CurveUpdate>::pop_front(a1 + 88);
  }

  v2 = *(a1 + 16);
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = ___ZN7CBBOLTS15SetCurveUpdatesERNSt3__14listIN3AAB11CurveUpdateENS0_9allocatorIS3_EEEE_block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  dispatch_async(v2, &block);
}

uint64_t std::list<AAB::CurveUpdate>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::__list_imp<AAB::CurveUpdate>::__copy_assign_alloc[abi:de200100]();
    v5 = std::list<AAB::CurveUpdate>::begin[abi:de200100](a2);
    v4 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
    std::list<AAB::CurveUpdate>::assign<std::__list_const_iterator<AAB::CurveUpdate,void *>,0>(a1, v5, v4);
  }

  return a1;
}

BOOL ___ZN7CBBOLTS15SetCurveUpdatesERNSt3__14listIN3AAB11CurveUpdateENS0_9allocatorIS3_EEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (CBBOLTS::useBOLTS(v2))
  {
    CBBOLTS::UpdateCurveWithPrediction(v2, v2 + 88);
    memcpy(v2 + 112, v2 + 224, 0x68uLL);
  }

  CBBOLTS::saveBufferToPreferences(v2);
  result = CBBOLTS::useBOLTS(v2);
  if (!result)
  {
    *(v2 + 216) = 0;
  }

  return result;
}

uint64_t CBBOLTS::cappedCurve(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 16);
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = ___ZN7CBBOLTS11cappedCurveERN3AAB5CurveE_block_invoke;
  v9 = &unk_1E867B990;
  v11 = v19;
  v12 = a2;
  v10 = &v13;
  dispatch_sync(v2, &block);
  v4 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v4 & 1;
}

void **___ZN7CBBOLTS11cappedCurveERN3AAB5CurveE_block_invoke(void **result)
{
  v1 = result;
  v2 = result[5];
  if (v2[216])
  {
    result = memcpy(result[6], v2 + 112, 0x68uLL);
    *(*(v1[4] + 1) + 24) = 1;
  }

  return result;
}

void CBBOLTS::setCappedCurve(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = ___ZN7CBBOLTS14setCappedCurveERN3AAB5CurveE_block_invoke;
  v7 = &__block_descriptor_48_e5_v8__0l;
  v8 = v11;
  v9 = a2;
  dispatch_sync(v2, &v3);
}

void ___ZN7CBBOLTS14setCappedCurveERN3AAB5CurveE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  memcpy((v3 + 112), *(a1 + 40), 0x68uLL);
  *(v3 + 208) = 3;
  memcpy((v3 + 224), (v3 + 112), 0x68uLL);
  if (*(v3 + 8))
  {
    v2 = *(v3 + 8);
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v4, COERCE__INT64(*(v3 + 112)), COERCE__INT64(*(v3 + 120)), COERCE__INT64(*(v3 + 128)), COERCE__INT64(*(v3 + 132)), COERCE__INT64(*(v3 + 116)), COERCE__INT64(*(v3 + 124)), COERCE__INT64(*(v3 + 136)), COERCE__INT64(*(v3 + 140)), COERCE__INT64(*(v3 + 196)));
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "Setting capped LTM curve: E0a %f, E0b %f, E1 %f, E2 %f, L0a %f, L0b %f, L1 %f, L2 %f, thirdSlope %f", v4, 0x5Cu);
  }

  *MEMORY[0x1E69E9840];
}

void CBBOLTS::preservePreferences(NSObject **this)
{
  v9 = this;
  v2 = this[2];
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = ___ZN7CBBOLTS19preservePreferencesEv_block_invoke;
  v7 = &__block_descriptor_40_e5_v8__0l;
  v8 = this;
  dispatch_async(v2, &v3);
}

void ___ZN7CBBOLTS19preservePreferencesEv_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  memcpy((v3 + 112), (v3 + 224), 0x68uLL);
  if (*(v3 + 8))
  {
    v2 = *(v3 + 8);
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v4, COERCE__INT64(*(v3 + 224)), COERCE__INT64(*(v3 + 232)), COERCE__INT64(*(v3 + 240)), COERCE__INT64(*(v3 + 244)), COERCE__INT64(*(v3 + 228)), COERCE__INT64(*(v3 + 236)), COERCE__INT64(*(v3 + 248)), COERCE__INT64(*(v3 + 252)), COERCE__INT64(*(v3 + 308)));
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "Preserve current LTM curve: E0a %f, E0b %f, E1 %f, E2 %f, L0a %f, L0b %f, L1 %f, L2 %f, thirdSlope %f", v4, 0x5Cu);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

void CBBOLTS::Reset(NSObject **this)
{
  v9 = this;
  if (this[1])
  {
    v4 = this[1];
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
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "Reseting buffer", v6, 2u);
  }

  CBBOLTS::resetBuffer(this);
}

void CBBOLTS::resetBuffer(NSObject **this)
{
  v9 = this;
  if (this[2])
  {
    v1 = this[2];
    block = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = ___ZN7CBBOLTS11resetBufferEv_block_invoke;
    v7 = &__block_descriptor_40_e5_v8__0l;
    v8 = this;
    dispatch_sync(v1, &block);
  }
}

uint64_t CBBOLTS::switchModel(NSObject **this, NSURL *a2)
{
  v14 = this;
  v13 = a2;
  if (this[2])
  {
    v12 = CBBOLTS::initializeMLABModelFromURL(v13, a2);
    if (v12)
    {
      v2 = this[2];
      block = MEMORY[0x1E69E9820];
      v6 = -1073741824;
      v7 = 0;
      v8 = ___ZN7CBBOLTS11switchModelEP5NSURL_block_invoke;
      v9 = &unk_1E867B9D8;
      v11 = this;
      v10 = v12;
      dispatch_sync(v2, &block);
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t ___ZN7CBBOLTS11switchModelEP5NSURL_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  MEMORY[0x1E69E5920](*(v3 + 40));
  result = a1;
  *(v3 + 40) = *(a1 + 32);
  return result;
}

uint64_t ___ZN7CBBOLTS11resetBufferEv_block_invoke(uint64_t a1)
{
  v5[3] = a1;
  v5[2] = a1;
  v2 = *(a1 + 32);
  *(v2 + 216) = 0;
  std::initializer_list<AAB::CurveUpdate>::initializer_list[abi:de200100](v5);
  std::list<AAB::CurveUpdate>::operator=[abi:de200100](v2 + 88, v5[0], v5[1]);
  v3 = MEMORY[0x1E695E8B8];
  v4 = MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"BOLTSBuffer", 0, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  return CFPreferencesSynchronize(@"com.apple.CoreBrightness", *v3, *v4);
}

uint64_t std::list<AAB::CurveUpdate>::operator=[abi:de200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v5 = std::initializer_list<AAB::CurveUpdate>::begin[abi:de200100](v7);
  v3 = std::initializer_list<AAB::CurveUpdate>::end[abi:de200100](v7);
  std::list<AAB::CurveUpdate>::assign<AAB::CurveUpdate const*,0>(a1, v5, v3);
  return a1;
}

uint64_t getMLModelConfigurationClass(void)
{
  v8 = 0;
  v9 = &v8;
  v10 = 1375731712;
  v11 = 48;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = std::atomic_load_explicit[abi:de200100]<void *>(&getMLModelConfigurationClass(void)::softClass, 0);
  if (!v9[5])
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = ___ZL28getMLModelConfigurationClassv_block_invoke;
    v6 = &unk_1E867B4F8;
    v7 = &v8;
    ___ZL28getMLModelConfigurationClassv_block_invoke(&v2);
  }

  v1 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v1;
}

void ___ZNK7CBBOLTS23saveBufferToPreferencesEv_block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a1;
  v7 = *(a1 + 32);
  context = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x1E695DF70] array];
  v10[1] = v7 + 88;
  v10[0] = std::list<AAB::CurveUpdate>::begin[abi:de200100](v7 + 88);
  v9 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
  while (std::operator!=[abi:de200100](v10, &v9))
  {
    v8 = std::__list_const_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](v10);
    v5 = v11;
    v14[0] = @"Lux";
    LODWORD(v1) = *v8;
    v15[0] = [MEMORY[0x1E696AD98] numberWithFloat:v1];
    v14[1] = @"Nits";
    LODWORD(v2) = *(v8 + 4);
    v15[1] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
    v14[2] = @"Timestamp";
    v15[2] = [MEMORY[0x1E696AD98] numberWithLongLong:*(v8 + 8)];
    [v5 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, v14, 3)}];
    std::__list_const_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](v10);
  }

  v3 = MEMORY[0x1E695E8B8];
  v4 = MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"BOLTSBuffer", v11, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.CoreBrightness", *v3, *v4);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

void CBBOLTS::loadBufferFromPreferences(NSObject **this)
{
  v9 = this;
  if (this[2])
  {
    v1 = this[2];
    block = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = ___ZN7CBBOLTS25loadBufferFromPreferencesEv_block_invoke;
    v7 = &__block_descriptor_40_e5_v8__0l;
    v8 = this;
    dispatch_async(v1, &block);
  }
}

uint64_t *___ZN7CBBOLTS25loadBufferFromPreferencesEv_block_invoke(uint64_t a1)
{
  v6[3] = a1;
  v6[2] = a1;
  v2 = *(a1 + 32);
  std::initializer_list<AAB::CurveUpdate>::initializer_list[abi:de200100](v6);
  std::list<AAB::CurveUpdate>::operator=[abi:de200100](v2 + 88, v6[0], v6[1]);
  v3 = MEMORY[0x1E695E8B8];
  v4 = MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v5 = CFPreferencesCopyValue(@"BOLTSBuffer", @"com.apple.CoreBrightness", *v3, *v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 enumerateObjectsUsingBlock:?];
  }

  while (std::list<AAB::CurveUpdate>::size[abi:de200100](v2 + 88) > *(v2 + 10))
  {
    std::list<AAB::CurveUpdate>::pop_front(v2 + 88);
  }

  MEMORY[0x1E69E5920](v5);
  result = CBBOLTS::useBOLTS(v2);
  if (result)
  {
    return CBBOLTS::UpdateCurveWithPrediction(v2, v2 + 88);
  }

  return result;
}

void ___ZN7CBBOLTS25loadBufferFromPreferencesEv_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a1;
  v12 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0.0;
    v20 = 0.0;
    v19 = -1;
    [v25 objectForKeyedSubscript:@"Lux"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v25 objectForKeyedSubscript:@"Nits"], objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v25, "objectForKeyedSubscript:", @"Timestamp"), objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [objc_msgSend(v25 objectForKeyedSubscript:{@"Lux", "floatValue"}];
      v21 = v4;
      [objc_msgSend(v25 objectForKeyedSubscript:{@"Nits", "floatValue"}];
      v20 = v5;
      v19 = [objc_msgSend(v25 objectForKeyedSubscript:{@"Timestamp", "longLongValue"}];
      if (*(v12 + 8))
      {
        v7 = *(v12 + 8);
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

      oslog = v7;
      v14 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v27, COERCE__INT64(v21), COERCE__INT64(v20), v19);
        _os_log_debug_impl(&dword_1DE8E5000, oslog, v14, "Adding curve update from preferences: %f %f %lld", v27, 0x20u);
      }

      v13.n128_u64[0] = __PAIR64__(LODWORD(v20), LODWORD(v21));
      v13.n128_u64[1] = v19;
      std::list<AAB::CurveUpdate>::push_back((v12 + 88), &v13);
    }

    else
    {
      if (*(v12 + 8))
      {
        v11 = *(v12 + 8);
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

      v18 = v11;
      v17 = 16;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        log = v18;
        type = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Wrongly formatted BOLTS buffer", v16, 2u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t std::vector<CBBOLTS::Bin>::__make_iter[abi:de200100](uint64_t a1, uint64_t a2)
{
  std::__wrap_iter<CBBOLTS::Bin *>::__wrap_iter[abi:de200100](&v3, a2);
  return v3;
}

{
  std::__wrap_iter<CBBOLTS::Bin const*>::__wrap_iter[abi:de200100](&v3, a2);
  return v3;
}

uint64_t std::allocator<AAB::CurveUpdate>::allocator[abi:de200100](uint64_t a1)
{
  std::allocator<AAB::CurveUpdate>::allocator[abi:de200100](a1);
  return a1;
}

{
  std::__non_trivial_if<true>::__non_trivial_if[abi:de200100]();
  return a1;
}

void std::__list_imp<AAB::CurveUpdate>::clear(uint64_t a1)
{
  if (!std::__list_imp<AAB::CurveUpdate>::empty[abi:de200100](a1))
  {
    v4 = *(a1 + 8);
    v3 = std::__list_imp<AAB::CurveUpdate>::__end_as_link[abi:de200100]();
    std::__list_imp<AAB::CurveUpdate>::__unlink_nodes(v4, *v3);
    *(a1 + 16) = 0;
    while (v4 != v3)
    {
      std::__list_node_base<AAB::CurveUpdate,void *>::__as_node[abi:de200100]();
      v4 = *(v4 + 8);
      std::__list_imp<AAB::CurveUpdate>::__delete_node[abi:de200100](a1, v1);
    }
  }
}

uint64_t std::__list_imp<AAB::CurveUpdate>::__end_as_link[abi:de200100]()
{
  std::__list_node_base<AAB::CurveUpdate,void *>::__self[abi:de200100]();
  std::__list_node_pointer_traits<AAB::CurveUpdate,void *>::__unsafe_link_pointer_cast[abi:de200100]();
  return result;
}

uint64_t std::__list_imp<AAB::CurveUpdate>::__unlink_nodes(uint64_t result, uint64_t a2)
{
  *(*result + 8) = *(a2 + 8);
  **(a2 + 8) = *result;
  return result;
}

void std::__list_imp<AAB::CurveUpdate>::__delete_node[abi:de200100](uint64_t a1, void *a2)
{
  v2 = std::__list_node<AAB::CurveUpdate,void *>::__get_value[abi:de200100](a2);
  std::allocator_traits<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::destroy[abi:de200100]<AAB::CurveUpdate,void,0>(a1, v2);
  std::__destroy_at[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>,0>(a2);
  std::allocator_traits<std::allocator<std::__list_node<AAB::CurveUpdate,void *>>>::deallocate[abi:de200100](a1, a2, 1);
}

uint64_t std::__destroy_at[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>,0>(uint64_t a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:65: assertion __loc != nullptr failed: null pointer given to destroy_at\n");
  }

  return std::__list_node<AAB::CurveUpdate,void *>::~__list_node[abi:de200100](a1);
}

void std::__destroy_at[abi:de200100]<AAB::CurveUpdate,0>(uint64_t a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:65: assertion __loc != nullptr failed: null pointer given to destroy_at\n");
  }
}

void std::__libcpp_deallocate[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *>>(void *a1, uint64_t a2, unint64_t a3)
{
  if (std::__is_overaligned_for_new[abi:de200100](a3))
  {
    std::__libcpp_operator_delete[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *> *,std::align_val_t>(a1, a3);
  }

  else
  {
    std::__libcpp_operator_delete[abi:de200100]<std::__list_node<AAB::CurveUpdate,void *> *>(a1);
  }
}

uint64_t std::vector<AAB::CurveUpdate>::emplace_back<AAB::CurveUpdate>(void *a1, __n128 *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = std::vector<AAB::CurveUpdate>::__emplace_back_slow_path<AAB::CurveUpdate>(a1, a2);
  }

  else
  {
    std::vector<AAB::CurveUpdate>::__construct_one_at_end[abi:de200100]<AAB::CurveUpdate>(a1, a2);
    v5 = v4 + 16;
  }

  a1[1] = v5;
  return v5 - 16;
}

void *std::vector<AAB::CurveUpdate>::__construct_one_at_end[abi:de200100]<AAB::CurveUpdate>(uint64_t a1, __n128 *a2)
{
  v8 = a1;
  v7 = a2;
  std::vector<AAB::CurveUpdate>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v5, a1, 1);
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  std::allocator_traits<std::allocator<AAB::CurveUpdate>>::construct[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,void,0>(a1, v2, v7);
  v6 += 16;
  return std::vector<AAB::CurveUpdate>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v5);
}

uint64_t std::vector<AAB::CurveUpdate>::__emplace_back_slow_path<AAB::CurveUpdate>(void *a1, __n128 *a2)
{
  v12 = a1;
  v11 = a2;
  v2 = std::vector<AAB::CurveUpdate>::size[abi:de200100](a1);
  v7 = std::vector<AAB::CurveUpdate>::__recommend[abi:de200100](a1, v2 + 1);
  v3 = std::vector<AAB::CurveUpdate>::size[abi:de200100](a1);
  std::__split_buffer<AAB::CurveUpdate>::__split_buffer(v9, v7, v3, a1);
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  std::allocator_traits<std::allocator<AAB::CurveUpdate>>::construct[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,void,0>(a1, v4, v11);
  v10 += 16;
  std::vector<AAB::CurveUpdate>::__swap_out_circular_buffer(a1, v9);
  v6 = a1[1];
  std::__split_buffer<AAB::CurveUpdate>::~__split_buffer(v9);
  return v6;
}

void *std::vector<AAB::CurveUpdate>::_ConstructTransaction::_ConstructTransaction[abi:de200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 16 * a3;
  return result;
}

__n128 std::construct_at[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate,AAB::CurveUpdate*>(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t std::vector<AAB::CurveUpdate>::__recommend[abi:de200100](void *a1, uint64_t a2)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = std::vector<AAB::CurveUpdate>::max_size[abi:de200100](a1);
  if (v8[0] > v7)
  {
    std::vector<AAB::CurveUpdate>::__throw_length_error[abi:de200100]();
  }

  v2 = std::vector<AAB::CurveUpdate>::capacity[abi:de200100](a1);
  v6 = v2;
  if (v2 >= v7 / 2)
  {
    return v7;
  }

  v5 = 2 * v6;
  return *std::max[abi:de200100]<unsigned long>(&v5, v8);
}

void **std::__split_buffer<AAB::CurveUpdate>::__split_buffer(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  std::__split_buffer<AAB::CurveUpdate>::__split_buffer(a1, a2, a3, a4);
  return a1;
}

{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = std::__allocate_at_least[abi:de200100]<std::allocator<AAB::CurveUpdate>>(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 16 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 16 * v9;
  return a1;
}

void std::vector<AAB::CurveUpdate>::__swap_out_circular_buffer(uint64_t *a1, uint64_t *a2)
{
  std::vector<AAB::CurveUpdate>::__annotate_delete[abi:de200100]();
  v9 = a2[1] + 16 * ((a1[1] - *a1) / -16);
  v2 = *a1;
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  v6 = v3;
  v4 = a1[1];
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  v7 = v5;
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  std::__uninitialized_allocator_relocate[abi:de200100]<std::allocator<AAB::CurveUpdate>,AAB::CurveUpdate*>(a1, v6, v7);
  a2[1] = v9;
  a1[1] = *a1;
  std::swap[abi:de200100]<AAB::CurveUpdate *>(a1, a2 + 1);
  std::swap[abi:de200100]<AAB::CurveUpdate *>(a1 + 1, a2 + 2);
  std::swap[abi:de200100]<AAB::CurveUpdate *>(a1 + 2, a2 + 3);
  *a2 = a2[1];
  std::vector<AAB::CurveUpdate>::size[abi:de200100](a1);
  std::vector<AAB::CurveUpdate>::__annotate_new[abi:de200100]();
}

void **std::__split_buffer<AAB::CurveUpdate>::~__split_buffer(void **a1)
{
  std::__split_buffer<AAB::CurveUpdate>::~__split_buffer(a1);
  return a1;
}

{
  std::__split_buffer<AAB::CurveUpdate>::clear[abi:de200100](a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    v4 = std::__split_buffer<AAB::CurveUpdate>::capacity[abi:de200100](a1);
    std::allocator_traits<std::allocator<AAB::CurveUpdate>>::deallocate[abi:de200100](v2, v3, v4);
  }

  return a1;
}

uint64_t std::vector<AAB::CurveUpdate>::max_size[abi:de200100](uint64_t a1)
{
  v3[1] = a1;
  v3[0] = std::allocator_traits<std::allocator<AAB::CurveUpdate>>::max_size[abi:de200100]<std::allocator<AAB::CurveUpdate>,void,0>();
  v2 = std::numeric_limits<long>::max[abi:de200100]();
  return *std::min[abi:de200100]<unsigned long>(v3, &v2);
}

void *std::allocator<AAB::CurveUpdate>::allocate[abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<AAB::CurveUpdate>>::max_size[abi:de200100]<std::allocator<AAB::CurveUpdate>,void,0>())
  {
    std::__throw_bad_array_new_length[abi:de200100]();
  }

  return std::__libcpp_allocate[abi:de200100]<AAB::CurveUpdate>(a2, 8uLL);
}

void *std::__libcpp_allocate[abi:de200100]<AAB::CurveUpdate>(uint64_t a1, std::align_val_t a2)
{
  v3 = 16 * a1;
  if (!std::__is_overaligned_for_new[abi:de200100](a2))
  {
    std::__libcpp_operator_new[abi:de200100]<AAB::CurveUpdate>();
  }

  return std::__libcpp_operator_new[abi:de200100]<AAB::CurveUpdate,unsigned long,std::align_val_t>(v3, a2);
}

void *std::__uninitialized_allocator_relocate[abi:de200100]<std::allocator<AAB::CurveUpdate>,AAB::CurveUpdate*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  __dst = v3;
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  return memcpy(__dst, v4, 16 * ((a3 - a2) / 16));
}

uint64_t *std::swap[abi:de200100]<AAB::CurveUpdate *>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void std::__split_buffer<AAB::CurveUpdate>::__destruct_at_end[abi:de200100](uint64_t a1, uint64_t a2)
{
  std::__split_buffer<AAB::CurveUpdate>::__destruct_at_end[abi:de200100](a1, a2);
}

{
  while (a2 != *(a1 + 16))
  {
    v3 = *(a1 + 32);
    *(a1 + 16) -= 16;
    std::__to_address[abi:de200100]<AAB::CurveUpdate>();
    std::allocator_traits<std::allocator<AAB::CurveUpdate>>::destroy[abi:de200100]<AAB::CurveUpdate,void,0>(v3, v2);
  }
}

void std::__libcpp_deallocate[abi:de200100]<AAB::CurveUpdate>(void *a1, uint64_t a2, unint64_t a3)
{
  if (std::__is_overaligned_for_new[abi:de200100](a3))
  {
    std::__libcpp_operator_delete[abi:de200100]<AAB::CurveUpdate *,std::align_val_t>(a1, a3);
  }

  else
  {
    std::__libcpp_operator_delete[abi:de200100]<AAB::CurveUpdate *>(a1);
  }
}

uint64_t std::vector<AAB::CurveUpdate>::emplace_back<AAB::CurveUpdate const&>(void *a1, __n128 *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = std::vector<AAB::CurveUpdate>::__emplace_back_slow_path<AAB::CurveUpdate const&>(a1, a2);
  }

  else
  {
    std::vector<AAB::CurveUpdate>::__construct_one_at_end[abi:de200100]<AAB::CurveUpdate const&>(a1, a2);
    v5 = v4 + 16;
  }

  a1[1] = v5;
  return v5 - 16;
}

void *std::vector<AAB::CurveUpdate>::__construct_one_at_end[abi:de200100]<AAB::CurveUpdate const&>(uint64_t a1, __n128 *a2)
{
  v8 = a1;
  v7 = a2;
  std::vector<AAB::CurveUpdate>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v5, a1, 1);
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  std::allocator_traits<std::allocator<AAB::CurveUpdate>>::construct[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate const&,void,0>(a1, v2, v7);
  v6 += 16;
  return std::vector<AAB::CurveUpdate>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v5);
}

uint64_t std::vector<AAB::CurveUpdate>::__emplace_back_slow_path<AAB::CurveUpdate const&>(void *a1, __n128 *a2)
{
  v12 = a1;
  v11 = a2;
  v2 = std::vector<AAB::CurveUpdate>::size[abi:de200100](a1);
  v7 = std::vector<AAB::CurveUpdate>::__recommend[abi:de200100](a1, v2 + 1);
  v3 = std::vector<AAB::CurveUpdate>::size[abi:de200100](a1);
  std::__split_buffer<AAB::CurveUpdate>::__split_buffer(v9, v7, v3, a1);
  std::__to_address[abi:de200100]<AAB::CurveUpdate>();
  std::allocator_traits<std::allocator<AAB::CurveUpdate>>::construct[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate const&,void,0>(a1, v4, v11);
  v10 += 16;
  std::vector<AAB::CurveUpdate>::__swap_out_circular_buffer(a1, v9);
  v6 = a1[1];
  std::__split_buffer<AAB::CurveUpdate>::~__split_buffer(v9);
  return v6;
}

__n128 std::construct_at[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate const&,AAB::CurveUpdate*>(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  result = *a2;
  *a1 = *a2;
  return result;
}

void std::__sort_impl[abi:de200100]<std::_ClassicAlgPolicy,std::__wrap_iter<AAB::CurveUpdate *>,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__debug_randomize_range[abi:de200100]<std::_ClassicAlgPolicy,std::__wrap_iter<AAB::CurveUpdate *>,std::__wrap_iter<AAB::CurveUpdate *>>();
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__unwrap_iter_impl<std::__wrap_iter<AAB::CurveUpdate *>,true>,0>(a1);
  v7 = v3;
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__unwrap_iter_impl<std::__wrap_iter<AAB::CurveUpdate *>,true>,0>(a2);
  std::__sort_dispatch[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>(v7, v4, a3);
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__unwrap_iter_impl<std::__wrap_iter<AAB::CurveUpdate *>,true>,0>(a1);
  v8 = v5;
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<AAB::CurveUpdate *>,std::__unwrap_iter_impl<std::__wrap_iter<AAB::CurveUpdate *>,true>,0>(a2);
  std::__check_strict_weak_ordering_sorted[abi:de200100]<AAB::CurveUpdate *,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>(v8, v6, a3);
}

void std::__check_strict_weak_ordering_sorted[abi:de200100]<AAB::CurveUpdate *,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>::__debug_less[abi:de200100](&v13, a3);
  if (!std::is_sorted[abi:de200100]<AAB::CurveUpdate *,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0>>(a1, a2, v13))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:36: assertion (std::is_sorted<_RandomAccessIterator, _Comp_ref>(__first, __last, _Comp_ref(__comp))) failed: The range is not sorted after the sort, your comparator is not a valid strict-weak ordering\n");
  }

  if ((v15 - v16) / 16 <= 100)
  {
    v4 = (v15 - v16) / 16;
  }

  else
  {
    v4 = 100;
  }

  for (i = 0; i < v4; i = j)
  {
    for (j = i + 1; ; ++j)
    {
      LOBYTE(v3) = 0;
      if (j < v4)
      {
        v3 = !CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v14, v16 + 16 * i, v16 + 16 * j);
      }

      if (!v3)
      {
        break;
      }
    }

    for (k = i; k < j; ++k)
    {
      for (m = i; m <= k; ++m)
      {
        if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v14, v16 + 16 * m, v16 + 16 * k))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:50: assertion !__comp(*(__first + __a), *(__first + __b)) failed: Your comparator is not a valid strict-weak ordering\n");
        }

        if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v14, v16 + 16 * k, v16 + 16 * m))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:52: assertion !__comp(*(__first + __b), *(__first + __a)) failed: Your comparator is not a valid strict-weak ordering\n");
        }
      }
    }

    for (n = i; n < j; ++n)
    {
      for (ii = j; ii < v4; ++ii)
      {
        if (!CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v14, v16 + 16 * n, v16 + 16 * ii))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:59: assertion __comp(*(__first + __a), *(__first + __b)) failed: Your comparator is not a valid strict-weak ordering\n");
        }

        if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v14, v16 + 16 * ii, v16 + 16 * n))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:61: assertion !__comp(*(__first + __b), *(__first + __a)) failed: Your comparator is not a valid strict-weak ordering\n");
        }
      }
    }
  }
}

uint64_t std::__log2i[abi:de200100]<long>(unint64_t a1)
{
  if (a1)
  {
    return 63 - std::__libcpp_clz[abi:de200100](a1);
  }

  else
  {
    return 0;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = 24;
  v14 = 128;
  while (1)
  {
    v13 = v19 - v20;
    if (v13 <= 1)
    {
      break;
    }

    switch(v13)
    {
      case 2:
        if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v18, --v19, v20))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v20, &v19);
        }

        goto LABEL_34;
      case 3:
        std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v20, v20 + 1, --v19, v18);
        goto LABEL_34;
      case 4:
        std::__sort4[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v20, v20 + 1, v20 + 2, --v19, v18);
        goto LABEL_34;
      case 5:
        std::__sort5[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v20, v20 + 1, v20 + 2, v20 + 3, --v19, v18);
        goto LABEL_34;
    }

    if (v13 < 24)
    {
      if (v16)
      {
        std::__insertion_sort[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *>(v20, v19, v18);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *>(v20, v19, v18);
      }

      break;
    }

    if (!v17)
    {
      std::__partial_sort[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,AAB::CurveUpdate *>(v20, v19, v19, v18);
      break;
    }

    --v17;
    v12 = v13 / 2;
    if (v13 <= 128)
    {
      std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(&v20[v12], v20, v19 - 1, v18);
    }

    else
    {
      std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v20, &v20[v12], v19 - 1, v18);
      std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v20 + 1, &v20[v12 - 1], v19 - 2, v18);
      std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v20 + 2, &v20[v12 + 1], v19 - 3, v18);
      std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(&v20[v12 - 1], &v20[v12], &v20[v12 + 1], v18);
      v11 = &v20[v12];
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *>(&v20, &v11);
    }

    if ((v16 & 1) != 0 || CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v18, &v20[-1], v20))
    {
      v21 = std::__partition_with_equals_on_right[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>(v20, v19, v18);
      v22 = v5;
      v9 = v21;
      if ((v5 & 1) == 0)
      {
        goto LABEL_33;
      }

      v8 = std::__insertion_sort_incomplete[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *>(v20, v21, v18);
      if (std::__insertion_sort_incomplete[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *>(v9 + 1, v19, v18))
      {
        if (v8)
        {
          break;
        }

        v19 = v9;
      }

      else if (v8)
      {
        v20 = v9 + 1;
      }

      else
      {
LABEL_33:
        std::__introsort<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,false>(v20, v9, v18, v17, v16 & 1);
        v16 = 0;
        v20 = v9 + 1;
      }
    }

    else
    {
      v6 = v20;
      v7 = v19;
      std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::__debug_less[abi:de200100](&v10, v18);
      v20 = std::__partition_with_equals_on_left[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>>(v6, v7, v10);
    }
  }

LABEL_34:
  *MEMORY[0x1E69E9840];
}

unint64_t std::__libcpp_clz[abi:de200100](unint64_t a1)
{
  return __clz(a1);
}

{
  return __clz(a1);
}

uint64_t std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a4, a2, a1))
  {
    if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a4, v6, v7))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v8, &v6);
      v9 = 1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v8, &v7);
      if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a4, v6, v7))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v7, &v6);
      }

      v9 = 1;
    }
  }

  else if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a4, v6, v7))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v7, &v6);
    if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a4, v7, v8))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v8, &v7);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

double std::__sort4[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t a5)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(a1, a2, a3, a5);
  if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a5, v7, v8))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v8, &v7);
    if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a5, v8, v9))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v9, &v8);
      if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a5, v9, v10))
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v10, &v9);
      }
    }
  }

  return result;
}

double std::__sort5[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t a6)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  std::__sort4[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(a1, a2, a3, a4, a6);
  if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a6, v8, v9))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v9, &v8);
    if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a6, v9, v10))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v10, &v9);
      if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a6, v10, v11))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v11, &v10);
        if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(a6, v11, v12))
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v12, &v11);
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *>(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v11 = result;
  v10 = a2;
  v9 = a3;
  if (result != a2)
  {
    for (i = v11 + 1; i != v10; ++i)
    {
      v7 = i - 1;
      result = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v9, i, (i - 1));
      if (result)
      {
        v6 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&i);
        v5 = v7;
        v7 = i;
        do
        {
          v3 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v5);
          *v7 = *v3;
          v7 = v5;
          result = 0;
          v4 = 0;
          if (v5 != v11)
          {
            result = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v9, &v6, --v5);
            v4 = result;
          }
        }

        while ((v4 & 1) != 0);
        *v7 = v6;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *>(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v11 = result;
  v10 = a2;
  v9 = a3;
  if (result != a2)
  {
    v8 = (v11 - 16);
    for (i = (v11 + 16); i != v10; ++i)
    {
      v6 = i - 1;
      result = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v9, i, (i - 1));
      if (result)
      {
        v5 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&i);
        v4 = v6;
        v6 = i;
        do
        {
          v3 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v4);
          *v6 = *v3;
          v6 = v4;
          if (v4 == v8)
          {
            std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:293: assertion __k != __leftmost failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
          }

          result = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v9, &v5, --v4);
        }

        while ((result & 1) != 0);
        *v6 = v5;
      }
    }
  }

  return result;
}

uint64_t std::__partial_sort[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,AAB::CurveUpdate *>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  if (a1 == a2)
  {
    return std::_IterOps<std::_ClassicAlgPolicy>::next[abi:de200100]<AAB::CurveUpdate *>(v12, v11);
  }

  std::__debug_randomize_range[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *,AAB::CurveUpdate *>();
  v5 = v13;
  v6 = v12;
  v7 = v11;
  std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::__debug_less[abi:de200100](&v8, v10);
  v9 = std::__partial_sort_impl[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>,AAB::CurveUpdate *,AAB::CurveUpdate *>(v5, v6, v7, &v8);
  std::__debug_randomize_range[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *,AAB::CurveUpdate *>();
  return v9;
}

__n128 *std::__partition_with_equals_on_left[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>>(__n128 *a1, __n128 *a2, uint64_t a3)
{
  v12 = a3;
  v11 = a1;
  v10 = a2;
  v9 = a1;
  v8 = a2;
  v7 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v11);
  if (std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(&v12, &v7, &v10[-1]))
  {
    do
    {
      if (++v11 == v8)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:669: assertion __first != __end failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }
    }

    while (!std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(&v12, &v7, v11));
  }

  else
  {
    do
    {
      ++v11;
      LOBYTE(v5) = 0;
      if (v11 < v10)
      {
        v5 = !std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(&v12, &v7, v11);
      }
    }

    while (v5);
  }

  if (v11 < v10)
  {
    do
    {
      if (v10 == v9)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:682: assertion __last != __begin failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }

      --v10;
    }

    while (std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(&v12, &v7, v10));
  }

  while (v11 < v10)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v11, &v10);
    do
    {
      if (++v11 == v8)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:692: assertion __first != __end failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }
    }

    while (!std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(&v12, &v7, v11));
    do
    {
      if (v10 == v9)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:697: assertion __last != __begin failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }

      --v10;
    }

    while (std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(&v12, &v7, v10));
  }

  v6 = v11 - 1;
  if (v9 != &v11[-1])
  {
    v3 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v6);
    *v9 = *v3;
  }

  *v6 = v7;
  return v11;
}

__n128 *std::__bitset_partition[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>(__n128 *a1, __n128 *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v19[0] = a1;
  v18 = a2;
  v17 = a3;
  if (a2 - a1 < 3)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:499: assertion __last - __first >= difference_type(3) failed: \n");
  }

  v16 = v19[0];
  v15 = v18;
  v14 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(v19);
  if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v17, &v14, &v18[-1]))
  {
    do
    {
      if (++v19[0] == v15)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:512: assertion __first != __end failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }
    }

    while (!CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v17, &v14, v19[0]));
  }

  else
  {
    do
    {
      ++v19[0];
      LOBYTE(v8) = 0;
      if (v19[0] < v18)
      {
        v8 = !CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v17, &v14, v19[0]);
      }
    }

    while (v8);
  }

  if (v19[0] < v18)
  {
    do
    {
      if (v18 == v16)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:525: assertion __last != __begin failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }

      --v18;
    }

    while (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v17, &v14, v18));
  }

  v13 = v19[0] >= v18;
  if (v19[0] < v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(v19, &v18);
    ++v19[0];
  }

  v12 = v18 - 1;
  v11 = 0;
  v10 = 0;
  while (v12 - v19[0] >= 127)
  {
    if (!v11)
    {
      std::__populate_left_bitset[abi:de200100]<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,AAB::CurveUpdate>(v19[0], v17, &v14, &v11);
    }

    if (!v10)
    {
      std::__populate_right_bitset[abi:de200100]<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,AAB::CurveUpdate>(v12, v17, &v14, &v10);
    }

    std::__swap_bitmap_pos[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *>(v19[0], v12, &v11, &v10);
    if (v11)
    {
      v3 = 0;
    }

    else
    {
      v3 = 64;
    }

    v19[0] += v3;
    if (v10)
    {
      v4 = 0;
    }

    else
    {
      v4 = 64;
    }

    v12 -= v4;
  }

  std::__bitset_partition_partial_blocks[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,AAB::CurveUpdate>(v19, &v12, v17, &v14, &v11, &v10);
  std::__swap_bitmap_pos_within[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *>(v19, &v12, &v11, &v10);
  v9 = v19[0] - 1;
  if (v16 != &v19[0][-1])
  {
    v5 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v9);
    *v16 = *v5;
  }

  *v9 = v14;
  v21 = std::make_pair[abi:de200100]<AAB::CurveUpdate *&,BOOL &>(&v9, &v13);
  v22 = v6;
  v19[1] = v21;
  LOBYTE(v20) = v6;
  *MEMORY[0x1E69E9840];
  return v21;
}

__n128 *std::__partition_with_equals_on_right[abi:de200100]<std::_ClassicAlgPolicy,AAB::CurveUpdate *,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>(__n128 *a1, __n128 *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v14[0] = a1;
  v13 = a2;
  v12 = a3;
  if (a2 - a1 < 3)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:591: assertion __last - __first >= difference_type(3) failed: \n");
  }

  v11 = v14[0];
  v10 = v13;
  v9 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(v14);
  do
  {
    if (++v14[0] == v10)
    {
      std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:603: assertion __first != __end failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
    }
  }

  while (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v12, v14[0], &v9));
  if (v11 == &v14[0][-1])
  {
    do
    {
      LOBYTE(v6) = 0;
      if (v14[0] < v13)
      {
        v6 = !CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v12, --v13, &v9);
      }
    }

    while (v6);
  }

  else
  {
    do
    {
      if (v13 == v11)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:615: assertion __last != __begin failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }

      --v13;
    }

    while (!CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v12, v13, &v9));
  }

  v8 = v14[0] >= v13;
  while (v14[0] < v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(v14, &v13);
    do
    {
      if (++v14[0] == v10)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:633: assertion __first != __end failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }
    }

    while (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v12, v14[0], &v9));
    do
    {
      if (v13 == v11)
      {
        std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/sort.h:638: assertion __last != __begin failed: Would read out of bounds, does your comparator satisfy the strict-weak ordering requirement?\n");
      }

      --v13;
    }

    while (!CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v12, v13, &v9));
  }

  v7 = v14[0] - 1;
  if (v11 != &v14[0][-1])
  {
    v3 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v7);
    *v11 = *v3;
  }

  *v7 = v9;
  v16 = std::make_pair[abi:de200100]<AAB::CurveUpdate *&,BOOL &>(&v7, &v8);
  v17 = v4;
  v14[1] = v16;
  LOBYTE(v15) = v4;
  *MEMORY[0x1E69E9840];
  return v16;
}

BOOL std::__insertion_sort_incomplete[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *>(__n128 *a1, __n128 *a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v6 = a2 - a1;
  if (v6 <= 1)
  {
    return 1;
  }

  else
  {
    switch(v6)
    {
      case 2uLL:
        if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v13, --v14, v15))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&v15, &v14);
        }

        v16 = 1;
        break;
      case 3uLL:
        std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v15, v15 + 1, v14 - 1, v13);
        v16 = 1;
        break;
      case 4uLL:
        std::__sort4[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v15, v15 + 1, v15 + 2, v14 - 1, v13);
        v16 = 1;
        break;
      case 5uLL:
        std::__sort5[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v15, v15 + 1, v15 + 2, v15 + 3, v14 - 1, v13);
        v16 = 1;
        break;
      default:
        v12 = v15 + 2;
        std::__sort3[abi:de200100]<std::_ClassicAlgPolicy,CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &,AAB::CurveUpdate *,0>(v15, v15 + 1, v15 + 2, v13);
        v11 = 8;
        v10 = 0;
        for (i = v15 + 3; i != v14; ++i)
        {
          if (CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v13, i, v12))
          {
            v8 = *std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&i);
            v7 = v12;
            v12 = i;
            do
            {
              v3 = std::_IterOps<std::_ClassicAlgPolicy>::__iter_move[abi:de200100]<AAB::CurveUpdate *&,0>(&v7);
              *v12 = *v3;
              v12 = v7;
              v5 = 0;
              if (v7 != v15)
              {
                v5 = CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0::operator()(v13, &v8, --v7);
              }
            }

            while (v5);
            *v12 = v8;
            if (++v10 == 8)
            {
              return ++i == v14;
            }
          }

          v12 = i;
        }

        v16 = 1;
        break;
    }
  }

  return v16;
}

__n128 std::swap[abi:de200100]<AAB::CurveUpdate>(__n128 *a1, __n128 *a2)
{
  v3 = *a1;
  *a1 = *a2;
  result = v3;
  *a2 = v3;
  return result;
}

__n128 *std::__partial_sort_impl[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>,AAB::CurveUpdate *,AAB::CurveUpdate *>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  if (a1 == a2)
  {
    return std::_IterOps<std::_ClassicAlgPolicy>::next[abi:de200100]<AAB::CurveUpdate *>(v9, v8);
  }

  std::__make_heap[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &,AAB::CurveUpdate *>(v10, v9, v7);
  v6 = v9 - v10;
  for (i = v9; i != v8; ++i)
  {
    if (std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &>::operator()[abi:de200100]<AAB::CurveUpdate,AAB::CurveUpdate>(v7, i, v10))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:de200100]<AAB::CurveUpdate *&,AAB::CurveUpdate *&>(&i, &v10);
      std::__sift_down[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &,AAB::CurveUpdate *>(v10, v7, v6, v10);
    }
  }

  std::__sort_heap[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &,AAB::CurveUpdate *>(v10, v9, v7);
  return i;
}

void std::__make_heap[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &,AAB::CurveUpdate *>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1;
  v6 = a2;
  v5[1] = a3;
  std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &>::__debug_less[abi:de200100](v5, a3);
  v4 = (v6 - v7) / 16;
  if (v4 > 1)
  {
    for (i = (v4 - 2) / 2; (i & 0x8000000000000000) == 0; --i)
    {
      std::__sift_down[abi:de200100]<std::_ClassicAlgPolicy,std::__debug_less<std::__debug_less<CBBOLTS::serializeBins(std::vector<CBBOLTS::Bin> const&)::$_0 &> &> &,AAB::CurveUpdate *>(v7, v5, v4, (v7 + 16 * i));
    }
  }
}