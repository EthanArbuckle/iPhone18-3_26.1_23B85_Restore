BOOL AABC::ignoreALSEventsInAOD(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (a2 != 2)
  {
    v3 = 1;
    if (a2 != 3)
    {
      return a2 == 4;
    }
  }

  return v3;
}

uint64_t AABC::ALS::isStrobePolluted(id *this)
{
  v2 = 0;
  if (this[4])
  {
    v2 = [this[4] isPolluted];
  }

  return v2 & 1;
}

void AABC::CancelFirstSampleTimeout(dispatch_object_t *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (this[74])
  {
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

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *&v1 = CFAbsoluteTimeGetCurrent();
      __os_log_helper_16_0_1_8_0(v5, v1);
      _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "ts=%f Cancelling first sample timeout", v5, 0xCu);
    }

    dispatch_release(this[74]);
    this[74] = 0;
  }

  *MEMORY[0x1E69E9840];
}

void AABC::unregisterService(CFMutableDictionaryRef *this, __IOHIDServiceClient *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = this;
  v9 = a2;
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

  v8 = v3;
  v7 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v11, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v8, v7, "[%x]: ", v11, 8u);
  }

  if (this[58] && this[58] == v9)
  {
    this[58] = 0;
  }

  if (this[59] && this[59] == v9)
  {
    this[59] = 0;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(this[52], v9, &value))
  {
    v5 = value;
    if (*(value + 3))
    {
      MEMORY[0x1E69E5920](*(value + 3));
    }

    if (*(v5 + 5))
    {
      MEMORY[0x1E69E5920](*(v5 + 5));
    }

    if (*(v5 + 4))
    {
      [*(v5 + 4) stop];
      MEMORY[0x1E69E5920](*(v5 + 4));
    }

    if (v5)
    {
      AABC::ALS::~ALS(v5);
      MEMORY[0x1E12C4020](v5, 0x10A0C4081DC907ALL);
    }

    CFDictionaryRemoveValue(this[52], v9);
    if (this[53])
    {
      CFDictionaryRemoveValue(this[53], v9);
    }
  }

  *MEMORY[0x1E69E9840];
}

void *std::vector<float>::__construct_at_end<float *,float *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  std::vector<float>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v6, a1, a4);
  v7 = std::__uninitialized_allocator_copy[abi:de200100]<std::allocator<float>,float *,float *,float *>(a1, v10, v9, v7);
  return std::vector<float>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v6);
}

float AABC::addToFilter(AABC *this, AABC::ALSFilter *a2, float a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  if (std::vector<float>::size[abi:de200100](a2))
  {
    if (CFAbsoluteTimeGetCurrent() >= *(v7 + 4))
    {
      v5 = *(v7 + 20);
      *(v7 + 20) = v5 % std::vector<float>::size[abi:de200100](v7);
      v4 = std::vector<float>::operator[][abi:de200100](v7, *(v7 + 20));
      result = v6;
      *v4 = v6;
    }

    else
    {
      std::vector<float>::push_back[abi:de200100](v7, &v6);
    }

    ++*(v7 + 20);
  }

  else
  {
    *(v7 + 4) = CFAbsoluteTimeGetCurrent() + *(v7 + 12);
    std::vector<float>::push_back[abi:de200100](v7, &v6);
    ++*(v7 + 20);
  }

  return result;
}

void AABC::_UpdateEsensorFrontTrusted(AABC *this, float a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 136) != a2)
  {
    v6 = fminf(a2, *(this + 964));
    if (*(this + 43) && *(this + 136) != SLODWORD(v6))
    {
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 544);
      if (v5)
      {
        (*(this + 43))(*(this + 44), @"TrustedFrontLux", v5);
        CFRelease(v5);
      }

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

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v7, COERCE__INT64(*(this + 136)));
        _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "trusted front Lux: %f", v7, 0xCu);
      }
    }

    *(this + 136) = v6;
  }

  *MEMORY[0x1E69E9840];
}

float AABC::calculate95thPercentile(AABC *this, AABC::ALSFilter *a2)
{
  v7[4] = this;
  v7[3] = a2;
  std::vector<float>::vector[abi:de200100](v7, a2);
  v6 = std::vector<float>::begin[abi:de200100](v7);
  v5 = std::vector<float>::end[abi:de200100](v7);
  std::sort[abi:de200100]<std::__wrap_iter<float *>>(v6, v5);
  v2 = std::vector<float>::size[abi:de200100](v7);
  v4 = *std::vector<float>::operator[][abi:de200100](v7, (vcvtpd_u64_f64(v2 * 0.95) - 1));
  std::vector<float>::~vector[abi:de200100](v7);
  return v4;
}

uint64_t AABC::isTrustedOccluded(id **this)
{
  if (!this[59] || (*(this + 3757) & 1) == 0 || (v3 = 1, !*(this + 942)))
  {
    isTouchObstructed = 0;
    if (this[56])
    {
      isTouchObstructed = AABC::ALS::isTouchObstructed(this[56]);
    }

    v3 = isTouchObstructed;
  }

  return v3 & 1;
}

uint64_t AABC::_UpdateAggregateFunction(AABC *this, __IOHIDServiceClient *a2, AABC::ALS *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 == *(this + 56))
  {
    if (*(a3 + 41) > *(this + 135) || (AABC::isTrustedOccluded(this) & 1) == 0)
    {
      AABC::_UpdateEsensorTrusted(this, *(a3 + 41));
    }

    if (AABC::ALS::isFront(a3) && (*(a3 + 41) > *(this + 136) || (AABC::isTrustedOccluded(this) & 1) == 0))
    {
      AABC::_UpdateEsensorFrontTrusted(this, *(a3 + 41));
    }

    LODWORD(v3) = *(a3 + 41);
    [*(this + 464) updateTimeWithOrientation:*(a3 + 1) andPlacement:*a3 andLux:v3];
  }

  else
  {
    if (*(a3 + 41) > *(this + 135))
    {
      *(this + 56) = a3;
      AABC::_UpdateEsensorTrusted(this, *(a3 + 41));
      LODWORD(v4) = *(a3 + 41);
      [*(this + 464) recordALSSwapWithOrientation:*(a3 + 1) andPlacement:*a3 andLux:v4];
    }

    if (AABC::ALS::isFront(a3) && *(a3 + 41) > *(this + 136))
    {
      AABC::_UpdateEsensorFrontTrusted(this, *(a3 + 41));
    }
  }

  if (*(a3 + 41) > *(this + 132))
  {
    *(this + 132) = *(a3 + 41);
  }

  if (AABC::ALS::isFront(a3) && *(a3 + 41) > *(this + 133))
  {
    *(this + 133) = *(a3 + 41);
  }

  *(this + 152) = fmaxf(*(a3 + 41), *(this + 152));
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    log = v9;
    __os_log_helper_16_0_6_4_0_8_0_8_0_8_0_8_0_8_0(v12, 16, COERCE__INT64(*(a3 + 41)), COERCE__INT64(*(this + 135)), COERCE__INT64(*(this + 132)), COERCE__INT64(*(this + 136)), COERCE__INT64(*(this + 133)));
    _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "[%x]: _Esensor_filtered=%0.4f _Esensor_trusted=%0.4f _Esensor_aggregated=%0.4f _Esensor_front_trusted=%0.4f _Esensor_front_aggregated=%0.4f", v12, 0x3Au);
  }

  LODWORD(v5) = *(a3 + 41);
  result = [*(this + 464) updateStatsWithOrientation:*(a3 + 1) andLux:*a3 andPlacement:{v5, log}];
  *MEMORY[0x1E69E9840];
  return result;
}

void AABC::_ReportEsensorAggregated(AABC *this)
{
  if (*(this + 134) != *(this + 132))
  {
    *(this + 134) = *(this + 132);
    if (*(this + 43))
    {
      cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 528);
      if (cf)
      {
        (*(this + 43))(*(this + 44), @"Lux", cf);
        CFRelease(cf);
      }
    }
  }
}

void AABC::_UpdateNitsRestrictions(AABC *this, float a2, float a3, char a4)
{
  if (*(this + 3597))
  {
    AABC::_UpdateNitsRestrictionsMultiPoint(this, a2, a3, a4 & 1);
  }

  else
  {
    AABC::_UpdateNitsRestrictionsSinglePoint(this, fminf(a2, *(this + 964)), a3, a4 & 1);
  }
}

void AABC::_UpdateNitsRestrictionsMultiPoint(AABC *this, float a2, float a3, char a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v60 = this;
  v59 = a2;
  v58 = a3;
  v57 = a4;
  v56 = a2;
  v55 = a2;
  v54 = 0;
  if (a2 < 0.0)
  {
    v55 = 0.0;
    v56 = 0.0;
  }

  if (*(this + 128) || !*(this + 127))
  {
    v54 = 1;
  }

  if (*(this + 3480))
  {
    v53 = 0.0;
      ;
    }

    if (i)
    {
      if (i == 6)
      {
        v53 = *(this + 12 * v54 + 886);
      }

      else
      {
        v51 = *(this + 12 * v54 + i + 875) - *(this + 12 * v54 + i + 874);
        v50 = *(this + 12 * v54 + i + 881) - *(this + 12 * v54 + i + 880);
        v49 = (v59 - *(this + 12 * v54 + i + 874)) / v51;
        v53 = *(this + 12 * v54 + i + 880) + (v49 * v50);
      }
    }

    else
    {
      v53 = *(this + 12 * v54 + 881);
    }

    RestrictionFactorTarget = DisplayGetRestrictionFactorTarget(*(this + 50), 1);
    v47 = v53 - RestrictionFactorTarget;
    isTrustedOccluded = 0;
    if ((v53 - RestrictionFactorTarget) < 0.0)
    {
      isTrustedOccluded = AABC::isTrustedOccluded(this);
    }

    v46 = isTrustedOccluded & 1;
    if ((v57 & 1) != 0 || fabsf(v47) >= 0.01 && (v46 & 1) == 0)
    {
      v45 = 1;
      if (v53 > *(this + 12 * v54 + 881) + 0.005 && v53 < *(this + 12 * v54 + 886) - 0.005 && (v57 & 1) == 0 && (fabsf(v47) / RestrictionFactorTarget) < 0.1)
      {
        if (_logHandle)
        {
          v22 = _logHandle;
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

          v22 = inited;
        }

        v44 = v22;
        v43 = 2;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          log = v44;
          type = v43;
          __os_log_helper_16_0_0(v42);
          _os_log_debug_impl(&dword_1DE8E5000, log, type, "Skipping set of minimum restriction due to relative threshold\n", v42, 2u);
        }

        v45 = 0;
      }

      if (v45)
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

        v41 = v18;
        v40 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_2_8_0_8_0(v63, COERCE__INT64(v53), COERCE__INT64(v55));
          _os_log_impl(&dword_1DE8E5000, v41, v40, "Set minimum restriction %f for E=%f\n", v63, 0x16u);
        }

        v39 = v58;
        if (v58 < 0.0)
        {
          if (v47 <= 0.0)
          {
            v16 = *(this + 874);
          }

          else
          {
            v16 = *(this + 873);
          }

          v39 = v16;
        }

        v4 = *(this + 50);
        v38 = *(this + 434);
        DisplaySetRestrictionFactorWithFade(v4, 1, v53, v39, *&v38, *(&v38 + 1));
      }
    }
  }

  if (*(this + 3596))
  {
    v37 = 0.0;
      ;
    }

    if (j)
    {
      if (j == 6)
      {
        v37 = *(this + 12 * v54 + 915);
      }

      else
      {
        v35 = *(this + 12 * v54 + j + 904) - *(this + 12 * v54 + j + 903);
        v34 = *(this + 12 * v54 + j + 910) - *(this + 12 * v54 + j + 909);
        v33 = (v59 - *(this + 12 * v54 + j + 903)) / v35;
        v37 = *(this + 12 * v54 + j + 909) + (v33 * v34);
      }
    }

    else
    {
      v37 = *(this + 12 * v54 + 910);
    }

    if ([*(this + 486) isAmbrosiaLevel])
    {
      v37 = v37 * *(this + 961);
    }

    v32 = DisplayGetRestrictionFactorTarget(*(this + 50), 0);
    v31 = v37 - v32;
    v15 = 0;
    if ((v37 - v32) < 0.0)
    {
      v15 = AABC::isTrustedOccluded(this);
    }

    v30 = v15 & 1;
    if ((v57 & 1) != 0 || fabsf(v31) >= 0.01 && (v30 & 1) == 0)
    {
      v29 = 1;
      v5 = v37;
      if (v37 > *(this + 12 * v54 + 910) + 0.005)
      {
        v5 = v37;
        if (v37 < *(this + 12 * v54 + 915) - 0.005 && (v57 & 1) == 0)
        {
          v5 = (fabsf(v31) / v32);
          if (v5 < 0.1)
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

            v28 = v14;
            v27 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v11 = v28;
              v12 = v27;
              __os_log_helper_16_0_0(v26);
              _os_log_debug_impl(&dword_1DE8E5000, v11, v12, "Skipping set of maximum restriction due to relative threshold\n", v26, 2u);
            }

            v29 = 0;
          }
        }
      }

      if (v29)
      {
        if ([*(this + 486) isAmbrosiaLevel])
        {
          if (*(this + 481))
          {
            v10 = *(this + 481);
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
            __os_log_helper_16_0_3_8_0_8_0_8_0(v62, COERCE__INT64(v37), COERCE__INT64(v56), COERCE__INT64(*(this + 961)));
            _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_INFO, "Set maximum restriction %f for E=%f (scaled by %f)", v62, 0x20u);
          }
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

          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_0_2_8_0_8_0(v61, COERCE__INT64(v37), COERCE__INT64(v56));
            _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_INFO, "Set maximum restriction %f for E=%f", v61, 0x16u);
          }
        }

        v25 = v58;
        if (v58 < 0.0)
        {
          if (v31 <= 0.0)
          {
            v25 = *(this + 903);
          }

          else
          {
            v25 = *(this + 902);
            LOBYTE(v6) = 0;
            if (!std::__math::isnan[abi:de200100](*(this + 900)))
            {
              v6 = !std::__math::isnan[abi:de200100](*(this + 901));
            }

            if (v6 && v37 >= *(this + 900))
            {
              v25 = *(this + 901);
            }
          }
        }

        DisplaySetRestrictionFactorWithFade(*(this + 50), 0, v37, v25, COERCE_FLOAT(*(this + 434)), COERCE_FLOAT(HIDWORD(*(this + 434))));
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

float __DisplayGetRestrictionFactorTarget_block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(*(a1 + 40) + 1008);
  }

  else
  {
    v2 = *(*(a1 + 40) + 1080);
  }

  result = v2;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  return result;
}

float DisplayGetRestrictionFactorTarget(uint64_t a1, char a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayGetRestrictionFactorTarget_block_invoke;
  v9 = &unk_1E867CA40;
  v10 = &v13;
  v12 = a2 & 1;
  v11 = v19;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t AABC::ALS::isTouchObstructed(id *this)
{
  v2 = 0;
  if (this[3])
  {
    v2 = [this[3] isObstructed];
  }

  return v2 & 1;
}

void AABC::_UpdateEsensorTrusted(AABC *this, float a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v52 = this;
  v51 = a2;
  v50 = -1.0;
  *(this + 308) = 0;
  if ([*(this + 36) isRearALSSupported] & 1) != 0 && (objc_msgSend(*(this + 36), "started"))
  {
    v49 = v51;
    if (*(this + 128) || *(this + 169))
    {
      v49 = -1.0;
    }

    *&v2 = v49;
    [*(this + 36) checkSensorEnablementConditions:v2];
    v48 = [*(this + 36) copyParam:@"lux"];
    if (v48)
    {
      [v48 floatValue];
      v47 = v3;
      MEMORY[0x1E69E5920](v48);
      v46 = fminf(fmaxf(AABC::IlluminanceToLuminance(this, this + 804, v49, fminf(v49, *(this + 964))), *(this + 180)), *(this + 182));
      [*(this + 36) nitsRatio];
      v45 = v4;
      v44 = fminf(v4 * v46, *(this + 182));
      v43 = AABC::LuminanceToIlluminance(this, this + 804, v44);
      v47 = fminf(v47, 8079.0);
      *&v5 = v49;
      *&v6 = v47;
      *&v7 = v43;
      v42 = [*(this + 36) shouldUseRearLuxFrontLux:v5 rearLux:v6 andCap:v7];
      if (v42)
      {
        v50 = fminf(v47, v43);
        v51 = v47;
        *(this + 308) = 1;
      }

      if (v50 != *(this + 76))
      {
        *(this + 76) = v50;
        if (*(this + 135) == v51 && v51 >= 0.001)
        {
          v8 = v51 - 0.001;
          v51 = v8;
        }
      }

      if (*(this + 47))
      {
        v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
        context = objc_autoreleasePoolPush();
        *&v9 = v49;
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v9), @"frontLux"}];
        *&v10 = v47;
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v10), @"rearLux"}];
        *&v11 = v46;
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v11), @"frontNits-Default"}];
        *&v12 = v44;
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v12), @"rearNits-Default"}];
        *&v13 = v51;
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v13), @"finalLux"}];
        *&v14 = v50;
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v14), @"cappedLuxForAAB"}];
        *&v15 = AABC::IlluminanceToLuminance(this, this + 264, v49, fminf(v49, *(this + 964)));
        v40 = LODWORD(v15);
        v39 = -1.0;
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v15), @"frontNits"}];
        if (*(this + 308))
        {
          *&v16 = AABC::IlluminanceToLuminance(this, this + 264, v50, fminf(v50, *(this + 964)));
          v39 = *&v16;
        }

        else
        {
          LODWORD(v16) = v40;
        }

        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v16), @"finalNits"}];
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(this + 308) & 1), @"rearLuxInUse"}];
        *&v17 = v39;
        [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v17), @"rearNits"}];
        v38 = [*(this + 36) copyParam:@"GainChanged"];
        if (v38)
        {
          [v41 setObject:v38 forKey:@"gainChanged"];
        }

        objc_autoreleasePoolPop(context);
        CFDictionarySetValue(*(this + 47), @"RLuxStats", v41);
        if (*(this + 43))
        {
          (*(this + 43))(*(this + 44), @"RLuxStats", v41);
        }

        MEMORY[0x1E69E5920](v41);
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
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v28 = inited;
      }

      v37 = v28;
      v36 = 2;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        log = v37;
        type = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_debug_impl(&dword_1DE8E5000, log, type, "AABRear: Lux not available", v35, 2u);
      }
    }
  }

  v34 = 0;
  if (!float_equal(*(this + 135), v51))
  {
    *(this + 135) = v51;
    *&v33[1] = v51;
    v33[0] = 2;
    DisplayUpdateAAPState(*(this + 50), v33, 1, 1);
    *(this + 138) = fminf(*(this + 135), *(this + 964));
    if (v50 >= 0.0)
    {
      *(this + 138) = fminf(*(this + 138), v50);
    }

    if (*(this + 3756))
    {
      v24 = v51;
    }

    else
    {
      v24 = truncf(v51);
    }

    v32 = fmaxf(v24, 0.0);
    if (vabds_f32(v32, *(this + 137)) > 0.001)
    {
      *(this + 137) = v32;
      v34 = 1;
      if (*(this + 43))
      {
        v31 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, this + 548);
        if (v31)
        {
          (*(this + 43))(*(this + 44), @"TrustedLux", v31);
          CFRelease(v31);
        }
      }
    }

    AABC::_UpdateSemanticAmbientLightLevel(this, 255);
    if (*(this + 3916))
    {
      if (*(this + 135) <= *(this + 980) && *(this + 121) >= 1.0)
      {
        if (*(this + 135) < (*(this + 980) - 100.0) && *(this + 135) < (*(this + 980) * 0.1))
        {
          *(this + 980) = *(this + 135);
          if (!*(this + 128))
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

            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_1_8_0(v54, COERCE__INT64(*(this + 135)));
              _os_log_debug_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEBUG, "Resetting weak cap in lux = %f\n", v54, 0xCu);
            }

            DisplayUpdateWeakCapOnSignificantAmbientChange(*(this + 50));
          }
        }
      }

      else
      {
        *(this + 980) = *(this + 135);
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

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v55, COERCE__INT64(*(this + 135)));
          _os_log_debug_impl(&dword_1DE8E5000, v23, OS_LOG_TYPE_DEBUG, "Updating weak cap Emax = %f\n", v55, 0xCu);
        }
      }
    }
  }

  if (v34)
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

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v53, COERCE__INT64(*(this + 135)), COERCE__INT64(*(this + 138)));
      _os_log_impl(&dword_1DE8E5000, v19, OS_LOG_TYPE_DEFAULT, "trusted Lux: %f, trusted capped Lux: %f", v53, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t convertMachToNanoSeconds(uint64_t a1)
{
  if (!dword_1ECDDDD6C)
  {
    mach_timebase_info(&convertMachToNanoSeconds_sTimebaseInfo);
  }

  return a1 * (convertMachToNanoSeconds_sTimebaseInfo / dword_1ECDDDD6C);
}

void __DisplaySetCurrentAmbient_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = a1;
  v30 = a1;
  v29 = *(*(a1 + 32) + 1192) != *(a1 + 40);
  v28 = *(a1 + 40) - *(*(a1 + 32) + 1192);
  *(*(a1 + 32) + 1192) = *(a1 + 40);
  v27 = 0;
  if (*(*(a1 + 32) + 1517) & 1) != 0 && (_DisplayBDMAvailable(*(a1 + 32)))
  {
    v26 = *(*(a1 + 32) + 1168);
    BrightDotCap = _DisplayGetBrightDotCap(*(a1 + 32), *(*(a1 + 32) + 1192));
    v27 = v26 != BrightDotCap;
    if (v26 != BrightDotCap)
    {
      if (v28 < 850.0)
      {
        v24 = *(*(a1 + 32) + 1172);
        v23 = BrightDotCap - v26;
        if ((BrightDotCap - v26) <= v24)
        {
          if (v23 < -v24)
          {
            v23 = -v24;
          }
        }

        else
        {
          v23 = v24;
        }

        *(*(a1 + 32) + 1168) = *(*(a1 + 32) + 1168) + v23;
      }

      else
      {
        *(*(a1 + 32) + 1168) = BrightDotCap;
      }
    }
  }

  if (v29)
  {
    v22 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (a1 + 40));
    if (v22)
    {
      CFDictionarySetValue(*(*(a1 + 32) + 192), @"TrustedLux", v22);
      (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"TrustedLux", v22);
      CFRelease(v22);
    }
  }

  if (v27)
  {
    v1 = *(*(a1 + 32) + 1248) / 65536.0;
    SendSyncDBVNotification(*(a1 + 32), 0, v1);
    v21 = __DisplayLogicalToPhysicalBrightness(*(a1 + 32), *(*(a1 + 32) + 1256));
    v20 = _DisplayLogicalToSliderBrightnessInternal(*(a1 + 32), *(*(a1 + 32) + 1256));
    v2 = *(a1 + 32);
    v3 = *(v2 + 1248) / 65536.0;
    __DisplayUpdateSlider(v2, v20, v21, v3);
  }

  if (v29 || v27)
  {
    v4 = *(*(a1 + 32) + 1500);
    v19 = _DisplayComputeEDRNitsCap(*(a1 + 32));
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

    oslog = v10;
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_5_8_0_8_0_4_0_8_0_8_0(v33, COERCE__INT64(*(*(a1 + 32) + 1500)), COERCE__INT64(v19), *(*(a1 + 32) + 12600), COERCE__INT64(*(*(a1 + 32) + 1192)), COERCE__INT64(*(*(a1 + 32) + 12528)));
      _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Ambient change - SetLibEDRBrightness - physicalBrightness:%f, maxLum: %f, edrState: %d, lux: %f, brightness boost: %f\n", v33, 0x30u);
    }

    SetLibEDRBrightness(*(a1 + 32), *(*(a1 + 32) + 1500), v19, *(*(a1 + 32) + 1192), *(*(a1 + 32) + 12528));
  }

  if ((DisplayHasDCP(*(a1 + 32)) & 1) != 0 && ![+[CBAODState isAODActive]&& *(*(a1 + 32) + 108) sharedInstance]
  {
    *(*(a1 + 32) + 12744 + 4 * (*(*(a1 + 32) + 12732))++) = *(*(a1 + 32) + 1192);
    *(*(a1 + 32) + 12732) %= *(*(a1 + 32) + 12740);
    if (*(*(a1 + 32) + 12736) < *(*(a1 + 32) + 12740))
    {
      ++*(*(a1 + 32) + 12736);
    }

    v16 = *(*(a1 + 32) + 1192);
    if (*(*(a1 + 32) + 12736) > 1u)
    {
      __base = malloc_type_malloc(4 * *(*(a1 + 32) + 12736), 0x100004052888210uLL);
      if (__base)
      {
        v5 = *(*(a1 + 32) + 12736);
        __memcpy_chk();
        qsort(__base, *(*(a1 + 32) + 12736), 4uLL, _DisplayCompareFloats);
        v16 = *(__base + *(*(a1 + 32) + 12736) / 2u);
        free(__base);
      }
    }

    if (v16 >= 0.0 && v16 != *(*(a1 + 32) + 12944))
    {
      *(*(a1 + 32) + 12944) = v16;
      v14 = fminf(v16, 30000.0);
      v13 = (v14 * 65536.0);
      v6 = CFGetAllocator(*(a1 + 32));
      property = CFNumberCreate(v6, kCFNumberSInt32Type, &v13);
      if (property)
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
          __os_log_helper_16_0_2_8_0_8_0(v32, COERCE__INT64(*(*(a1 + 32) + 1192)), COERCE__INT64((v13 / 65536.0)));
          _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "Set capped lux to IOMFB %f (%f)", v32, 0x16u);
        }

        IORegistryEntrySetCFProperty(*(*(a1 + 32) + 108), @"AmbientBrightness", property);
        CFRelease(property);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t _DisplayCompareFloats(float *a1, float *a2)
{
  if (*a1 >= *a2)
  {
    return *a1 > *a2;
  }

  else
  {
    return -1;
  }
}

void DisplaySetCurrentAmbient(uint64_t a1, float a2)
{
  v11 = a1;
  v10 = a2;
  if (a1)
  {
    if (*(v11 + 144))
    {
      v2 = *(v11 + 144);
      v3 = MEMORY[0x1E69E9820];
      v4 = -1073741824;
      v5 = 0;
      v6 = __DisplaySetCurrentAmbient_block_invoke;
      v7 = &__block_descriptor_44_e5_v8__0l;
      v8 = v11;
      v9 = v10;
      disp_dispatch_sync(v2, &v3);
    }
  }
}

float AABC::IlluminanceToLuminance(uint64_t a1, float *a2, float a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v45 = a1;
  v44 = a3;
  v43 = a2;
  if (*(a1 + 136))
  {
    v42 = 0.0;
    if (_logHandle)
    {
      v23 = _logHandle;
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
    v40 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v54, *(a1 + 1392));
      _os_log_debug_impl(&dword_1DE8E5000, v41, v40, "CustomCurveA size %d", v54, 8u);
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

    v39 = v21;
    v38 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v53, *(a1 + 1556));
      _os_log_debug_impl(&dword_1DE8E5000, v39, v38, "CustomCurveB size %d", v53, 8u);
    }

    if (*(a1 + 2884))
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

      v37 = v19;
      v36 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v52, COERCE__INT64(*(a1 + 1312 + 4 * (*(a1 + 1392) - 1))));
        _os_log_debug_impl(&dword_1DE8E5000, v37, v36, "Max L point of CustomCurveA is %f", v52, 0xCu);
      }

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

      v35 = v17;
      v34 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v51, COERCE__INT64(*(a1 + 1232 + 4 * (*(a1 + 1392) - 1))));
        _os_log_debug_impl(&dword_1DE8E5000, v35, v34, "Max E point of CustomCurveA is %f", v51, 0xCu);
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

      v33 = v15;
      v32 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v50, COERCE__INT64(v44));
        _os_log_debug_impl(&dword_1DE8E5000, v33, v32, "CustomCurve E=%f", v50, 0xCu);
      }

      v42 = AAB::IlluminanceToLuminance((a1 + 1232), v44, v3);
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

      oslog = v13;
      v30 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v49, COERCE__INT64(*(a1 + 1476 + 4 * (*(a1 + 1556) - 1))));
        _os_log_debug_impl(&dword_1DE8E5000, oslog, v30, "Max L point of CustomCurveB is %f", v49, 0xCu);
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

      v29 = v11;
      v28 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v48, COERCE__INT64(*(a1 + 1396 + 4 * (*(a1 + 1556) - 1))));
        _os_log_debug_impl(&dword_1DE8E5000, v29, v28, "Max E point of CustomCurveB is %f", v48, 0xCu);
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

      v27 = v9;
      v26 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v47, COERCE__INT64(v44));
        _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "CustomCurve E=%f", v47, 0xCu);
      }

      v42 = AAB::IlluminanceToLuminance((a1 + 1396), v44, v4);
    }

    v46 = v42;
  }

  else if (AABC::isAODCurveActive(a1, [+[CBAODState AODState] sharedInstance])
  {
    v46 = AABC::IlluminanceToLuminanceAggregated_AOD(a1, (a1 + 2548), (a1 + 1056), v44);
  }

  else if (*(a1 + 3880) && ([*(a1 + 3880) isActive] & 1) != 0)
  {
    v7 = *(a1 + 3880);
    if (v7)
    {
      [v7 curve];
    }

    else
    {
      memset(__b, 0, 0xA4uLL);
    }

    v46 = AAB::IlluminanceToLuminance(__b, v44, v5);
  }

  else
  {
    v46 = AAB::IlluminanceToLuminance(a1, v43, v44);
  }

  *MEMORY[0x1E69E9840];
  return v46;
}

float AABC::IlluminanceToLuminance(uint64_t a1, float *a2, float a3, float a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (a2[25] > 0.0)
  {
    v9 = fminf(a2[25], a3);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v13, COERCE__INT64(a3), COERCE__INT64(a4), COERCE__INT64(a2[25]), COERCE__INT64(v9));
    _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "E %f, Ecapped %f, EmaxCap %f => finalE %f", v13, 0x2Au);
  }

  v5 = AABC::IlluminanceToLuminance(a1, a2, v9);
  *MEMORY[0x1E69E9840];
  return v5;
}

BOOL AABC::isAODCurveActive(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (a2 != 1)
  {
    return a2 == 3;
  }

  return v3;
}

float AAB::IlluminanceToLuminance(uint64_t a1, float *a2, float a3)
{
  (*(*a1 + 16))(a1, "%s: inputs: (_E1 = %0.2f, _L1 = %0.4f) (_E2 = %0.2f, _L2 = %0.4f) E=%0.2f", "IlluminanceToLuminance", a2[4], a2[6], a2[5], a2[7], a3);
  (*(*a1 + 16))(a1, "%s:    dark (E0a = %0.2f, L0a = %0.4f) (E0b = %0.2f, L0b = %0.4f)", "IlluminanceToLuminance", *a2, a2[1], a2[2], a2[3]);
  if (a3 >= a2[2])
  {
    if (a3 >= a2[5])
    {
      v6 = a2[21];
      v5 = a2[7] - (v6 * a2[5]);
    }

    else
    {
      v6 = (a2[7] - a2[6]) / (a2[5] - a2[4]);
      v5 = a2[6];
    }
  }

  else
  {
    v6 = (a2[3] - a2[1]) / (a2[2] - *a2);
    v5 = a2[1];
  }

  v7 = fmaxf(v5 + (v6 * a3), 0.0);
  (*(*a1 + 16))(a1, "%s: (E2=%f) E=%f * slope=%f + offset=%f  L=%f", "IlluminanceToLuminance", a2[5], a3, v6, v5, v7);
  (*(*a1 + 16))(a1, "%s: outputs: L=%f", "IlluminanceToLuminance", v7);
  return v7;
}

void DisplaySetABBrightnessForPowerReport(uint64_t a1, char a2, float a3)
{
  v14 = a1;
  v13 = a3;
  v12 = a2;
  v3 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __DisplaySetABBrightnessForPowerReport_block_invoke;
  v8 = &__block_descriptor_45_e5_v8__0l;
  v9 = v14;
  v10 = a3;
  v11 = a2 & 1;
  disp_dispatch_sync(v3, &v4);
}

void __DisplaySetABBrightnessForPowerReport_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1272) = *(a1 + 40);
  if (*(a1 + 44))
  {
    __DisplaySetLogicalBrightnessInternal(*(a1 + 32), 0x2000, *(*(a1 + 32) + 1256));
  }
}

float _DisplayLuminanceToPerceptualLuminanceInternal(uint64_t a1, float a2)
{
  v4 = fminf(fmaxf(a2, *(a1 + 1320)), *(a1 + 1312));
  v3 = logf(*(a1 + 1312) / *(a1 + 1320));
  return (logf(v4 / *(a1 + 1312)) / v3) + 1.0;
}

float _DisplayGetBrightDotCap(uint64_t a1, float a2)
{
  v12 = *(a1 + 1544);
  v11 = _DisplayBDMAvailable(a1);
  if (*(a1 + 1517) & 1) != 0 && (v11)
  {
    v10 = *(a1 + 1152);
    v9 = *(a1 + 1156);
    v8 = *(a1 + 1160);
    v7 = *(a1 + 1164);
    if (a2 > v10)
    {
      v2 = *(a1 + 1152);
      v3 = *(a1 + 1160);
      if (a2 >= v8)
      {
        v5 = *(a1 + 1160);
        return fminf(v7, v12);
      }

      else
      {
        v4 = *(a1 + 1152);
        return fminf(v9 + (((a2 - v10) * (v7 - v9)) / (v8 - v10)), v12);
      }
    }

    else
    {
      return fminf(v9, v12);
    }
  }

  return v12;
}

uint64_t AABC::UpdateDisplayBrightness_Block6(uint64_t a1, int a2, int a3, char a4, float a5)
{
  v98 = *MEMORY[0x1E69E9840];
  v87 = a1;
  v86 = a5;
  v85 = a2;
  v84 = a3;
  v83 = a4;
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

  v82 = v50;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v97, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v82, type, "[%x]: ", v97, 8u);
  }

  if (_logHandle)
  {
    v48 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v47 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v47 = init_default_corebrightness_log();
    }

    v48 = v47;
  }

  v80 = v48;
  v79 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    if (v85)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    __os_log_helper_16_2_6_4_0_8_0_8_32_8_32_8_0_4_0(v96, 512, COERCE__INT64(v86), v5, (&kDimRestrictionStr)[v84], COERCE__INT64(*(a1 + 540)), v83 & 1);
    _os_log_debug_impl(&dword_1DE8E5000, v80, v79, "[%x]: inputs: L=%f (shouldRamp=%s dimRestriction=%s _Esensor_trusted=%f) curveChanged=%d", v96, 0x36u);
  }

  if (*(a1 + 676) && (v83 & 1) == 0)
  {
    v84 = 0;
  }

  v78 = 0;
  if (*(a1 + 504) && *(a1 + 500) && *(a1 + 508))
  {
    v77 = 10;
    v76 = (v83 & 1) != 0;
    v75 = 0.0;
    if (*(a1 + 620) == 0.0)
    {
      *(a1 + 620) = *(a1 + 720);
    }

    v74 = v86;
    WeakCap = *(a1 + 728);
    if (*(a1 + 3916))
    {
      WeakCap = DisplayGetWeakCap(*(a1 + 400));
      if (_logHandle)
      {
        v46 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v45 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v45 = init_default_corebrightness_log();
        }

        v46 = v45;
      }

      v72 = v46;
      v71 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v95, COERCE__INT64(WeakCap));
        _os_log_debug_impl(&dword_1DE8E5000, v72, v71, "Weak cap read at %f", v95, 0xCu);
      }

      v74 = fminf(v74, WeakCap);
    }

    if (v85)
    {
      if (_logHandle)
      {
        v44 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v43 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v43 = init_default_corebrightness_log();
        }

        v44 = v43;
      }

      v70 = v44;
      v69 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_6_4_0_4_0_8_32_8_0_8_0_8_0(v94, 512, *(a1 + 676), (&kDimRestrictionStr)[v84], COERCE__INT64(v74), COERCE__INT64(*(a1 + 620)), COERCE__INT64(*(a1 + 604)));
        _os_log_debug_impl(&dword_1DE8E5000, v70, v69, "[%x]: _fastRampMode=%x dimRestriction=%s L_newtarget=%f _L_current=%f _L_minimum=%f", v94, 0x36u);
      }

      if (v84)
      {
        if (v84 == 1)
        {
          v74 = fmaxf(v74, *(a1 + 604));
        }
      }

      else
      {
        v74 = fmaxf(v74, *(a1 + 616));
      }

      v68 = DisplayLuminanceToPerceptualLuminance(*(a1 + 400), v74);
      v67 = DisplayLuminanceToPerceptualLuminance(*(a1 + 400), *(a1 + 616));
      if ([+[CBAODState isAODActive] sharedInstance]
      {
        [+[CBAODState sharedInstance](CBAODState minAODNits];
        v40 = v6;
        [+[CBAODState sharedInstance](CBAODState maxAODNits];
        v68 = BULuminanceToPerceptual(v74, v40, v7);
        v42 = *(a1 + 616);
        [+[CBAODState sharedInstance](CBAODState minAODNits];
        v41 = v8;
        [+[CBAODState sharedInstance](CBAODState maxAODNits];
        v67 = BULuminanceToPerceptual(v42, v41, v9);
      }

      VirtualBrightness = DisplayGetVirtualBrightness(*(a1 + 400));
      v65 = DisplayLuminanceToPerceptualLuminance(*(a1 + 400), VirtualBrightness);
      v64 = v68 - v67;
      v63 = vabds_f32(*(a1 + 540), *(a1 + 624));
      if (*(a1 + 624) == 0.0)
      {
        v39 = *(a1 + 540);
      }

      else
      {
        v39 = *(a1 + 540) / *(a1 + 624);
      }

      v62 = v39;
      v61 = *(a1 + 3824);
      if (*(a1 + 676) && *(a1 + 624) == 0.0)
      {
        v61 = fmaxf(v61, 2.0);
      }

      if (v63 > v61)
      {
        v38 = 1;
        if ((v76 & 1) == 0)
        {
          v10.n128_f32[0] = v67;
          v11.n128_f32[0] = v65;
          v12.n128_f32[0] = v68;
          v13.n128_f32[0] = v63;
          v14.n128_f32[0] = v62;
          v38 = (*(**(a1 + 3832) + 8))(*(a1 + 3832), *(a1 + 628) & 1, *(a1 + 308) & 1, *(a1 + 3800) == 0, v10, v11, v12, v13, v14);
        }

        v76 = v38 & 1;
        if ((*(a1 + 3916) & 1) != 0 && v64 > 0.0 && v74 >= WeakCap)
        {
          v76 = 1;
        }
      }

      if ((*(a1 + 3924) & 1) != 0 && (v76 & 1) == 0)
      {
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

        v60 = v37;
        v59 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v60;
          v35 = v59;
          __os_log_helper_16_0_0(v58);
          _os_log_impl(&dword_1DE8E5000, v34, v35, "Forcing backlight update due to weakCap change.", v58, 2u);
        }

        v76 = 1;
      }

      if (*(a1 + 3992))
      {
        if (_logHandle)
        {
          v33 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v32 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v32 = init_default_corebrightness_log();
          }

          v33 = v32;
        }

        oslog = v33;
        v56 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v30 = oslog;
          v31 = v56;
          __os_log_helper_16_0_0(v55);
          _os_log_impl(&dword_1DE8E5000, v30, v31, "Forcing backlight update due to obstruction removal.", v55, 2u);
        }

        v76 = 1;
        *(a1 + 3992) = 0;
      }

      AABC::RecordLuminance(a1, v74);
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

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        if (v76)
        {
          v15 = "systemShallUpdateBacklight";
        }

        else
        {
          v15 = "";
        }

        __os_log_helper_16_2_6_4_0_8_0_8_0_8_0_8_0_8_32(v93, 512, COERCE__INT64(*(a1 + 616)), COERCE__INT64(v68), COERCE__INT64(v67), COERCE__INT64(v64), v15);
        _os_log_debug_impl(&dword_1DE8E5000, v29, OS_LOG_TYPE_DEBUG, "[%x]: _L_target=%f Pnewtarget=%f Ptarget=%f Pdelta=%f  %s", v93, 0x3Au);
      }

      if (v76)
      {
        *(a1 + 620) = VirtualBrightness;
        v54 = v68 - v65;
        if (v83)
        {
          v75 = 0.5;
        }

        else if (*(a1 + 676))
        {
          if (v54 >= 0.15)
          {
            v75 = *(a1 + 696);
          }

          else
          {
            v75 = PerceptualLuminanceThresholding::DurationFromPerceptualDelta(*(a1 + 3832), v54) / 5.0;
          }

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

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_4_0_8_0(v92, 512, COERCE__INT64(v75));
            _os_log_debug_impl(&dword_1DE8E5000, v27, OS_LOG_TYPE_DEBUG, "[%x]: FAST RAMP (timeConstant=%0.2f)", v92, 0x12u);
          }
        }

        else
        {
          v75 = PerceptualLuminanceThresholding::DurationFromPerceptualDelta(*(a1 + 3832), v54);
        }

        if (v54 < 0.0)
        {
          ++*(a1 + 3800);
        }
      }
    }

    else
    {
      AABC::RecordLuminance(a1, v74);
      v76 = 1;
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

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_4_4_0_8_32_8_0_8_0(v91, 512, "false", COERCE__INT64(*(a1 + 620)), COERCE__INT64(v74));
        _os_log_debug_impl(&dword_1DE8E5000, v25, OS_LOG_TYPE_DEBUG, "[%x]: MANUAL isSensorChange=%s _L_current=%f L_target=%f", v91, 0x26u);
      }
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

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      if (v76)
      {
        v16 = "true";
      }

      else
      {
        v16 = "false";
      }

      __os_log_helper_16_2_4_4_0_8_32_8_0_8_0(v90, 512, v16, COERCE__INT64(v74), COERCE__INT64(v75));
      _os_log_debug_impl(&dword_1DE8E5000, v23, OS_LOG_TYPE_DEBUG, "[%x]: systemShallUpdateBacklight=%s L_target=%f timeConstant=%f", v90, 0x26u);
    }

    if (*(a1 + 484) == 0.0 || *(a1 + 484) == 1.0) && (v76)
    {
      *(a1 + 624) = *(a1 + 540);
      *(a1 + 616) = v74;
      if (v75 != 0.0)
      {
        *(a1 + 628) = 1;
      }

      v78 = 1;
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

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v89, COERCE__INT64(v74), COERCE__INT64(v75), COERCE__INT64(*(a1 + 540)));
        _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_INFO, "Begin ramp: L_target=%0.4f timeConstant=%0.4f _Esensor_trusted=%0.4f", v89, 0x20u);
      }

      AABC::SetBrightness(a1, *(a1 + 616), v75, v77, AABC::_RampDoneCallback, a1);
      BrightnessMaxPhysical = _DisplayGetBrightnessMaxPhysical(*(a1 + 400));
      BrightnessMinPhysical = _DisplayGetBrightnessMinPhysical(*(a1 + 400));
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

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_6_8_32_8_0_8_0_8_0_8_0_8_0(v88, "ALS", COERCE__INT64(v74), COERCE__INT64(BrightnessMaxPhysical), COERCE__INT64(BrightnessMinPhysical), COERCE__INT64(v75), COERCE__INT64(*(a1 + 540)));
        _os_log_impl(&dword_1DE8E5000, v19, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: Begin ramp: L_target=%0.4f Lmax=%f Lmin=%f timeConstant=%0.4f _Esensor_trusted=%0.4f", v88, 0x3Eu);
      }
    }
  }

  *(a1 + 3924) = 0;
  *MEMORY[0x1E69E9840];
  return v78 & 1;
}

float DisplayLuminanceToPerceptualLuminance(uint64_t a1, float a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayLuminanceToPerceptualLuminance_block_invoke;
  v9 = &unk_1E867C8C8;
  v10 = &v13;
  v11 = v19;
  v12 = a2;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t __DisplayLuminanceToPerceptualLuminance_block_invoke(uint64_t a1)
{
  v1 = _DisplayLuminanceToPerceptualLuminanceInternal(*(a1 + 40), *(a1 + 48));
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v1;
  return result;
}

float DisplayGetVirtualBrightness(float *a1)
{
  if (*(a1 + 10))
  {
    return a1[372];
  }

  else
  {
    return a1[314];
  }
}

float AABC::RecordLuminance(AABC *this, float result)
{
  if (*(this + 474))
  {
    *(*(this + 474) + 4 * *(this + 943)) = result;
    *(this + 943) = (*(this + 943) + 1) % *(this + 945);
    if (*(this + 944) < *(this + 945))
    {
      ++*(this + 944);
    }

    v3 = *(this + 182);
    for (i = 0; i < *(this + 944); ++i)
    {
      v3 = fminf(v3, *(*(this + 474) + 4 * i));
    }

    result = v3;
    *(this + 151) = v3;
  }

  return result;
}

uint64_t _DisplayBDMAvailable(uint64_t a1)
{
  v2 = 0;
  if (DisplayRequiresBDM(a1))
  {
    v2 = 0;
    if ((*(a1 + 1144) & 1) == 0)
    {
      v2 = *(a1 + 1176);
    }
  }

  return v2 & 1;
}

BOOL float_equal(float a1, float a2)
{
  v4 = std::__math::fabs[abi:de200100](a1 - a2);
  v3 = std::__math::fabs[abi:de200100](a1);
  return v4 <= (0.00000011921 * fmaxf(v3, std::__math::fabs[abi:de200100](a2)));
}

uint64_t DisplayRequiresBDM(uint64_t a1)
{
  v8 = a1;
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayRequiresBDM_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = a1;
  v10 = &DisplayRequiresBDM_token;
  v9 = &v2;
  if (DisplayRequiresBDM_token != -1)
  {
    dispatch_once(v10, v9);
  }

  return DisplayRequiresBDM_requiresBDM & 1;
}

uint64_t PerceptualLuminanceThresholding_legacy::shallUpdateBacklight(PerceptualLuminanceThresholding_legacy *this, float a2, float a3, float a4, char a5, char a6, float a7, float a8, char a9)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = this;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v25 = a4 - a2;
  v24 = 0;
  v23 = *(this + 6);
  v22 = *(this + 7);
  if (*(this + 10))
  {
    v22 = *(this + 7) * *(this + 12);
    if (v33 > *(this + 6))
    {
      v23 = *(this + 6) * *(this + 11);
      if (*(this + 2))
      {
        v15 = *(this + 2);
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

      v21 = v15;
      v20 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v35, COERCE__INT64(*(this + 6)), COERCE__INT64(v23), COERCE__INT64(v33));
        _os_log_debug_impl(&dword_1DE8E5000, v21, v20, "%f %f %f", v35, 0x20u);
      }

      if (v27 < *(this + 14) && v28 > *(this + 13))
      {
        if (*(this + 2))
        {
          v13 = *(this + 2);
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
        v18 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v10 = oslog;
          v11 = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_debug_impl(&dword_1DE8E5000, v10, v11, "Double aggressivity", v17, 2u);
        }

        v23 = v23 / 2.0;
      }
    }
  }

  if (v30)
  {
    if (v31 < 0.97 || v25 <= 0.0)
    {
      if (v25 <= v22)
      {
        if (v25 < -v23 && (v27 <= 0.85 || v27 >= 1.15 || (v29 & 1) != 0))
        {
          v24 = 1;
        }
      }

      else if (v27 <= 0.85 || v27 >= 1.15 || (v29 & 1) != 0)
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 1;
    }
  }

  else if (v31 < 0.97 || v25 <= 0.0)
  {
    if (v25 <= v22)
    {
      if (v25 < -v23)
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v24 & 1;
}

uint64_t __os_log_helper_16_0_8_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *result = 0;
  *(result + 1) = 8;
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
  return result;
}

void CFXInputAmbientColor(uint64_t *a1, float *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a1;
  if (a1 && v15)
  {
    if (v15[1] >= 11140.846)
    {
      v15[3] = 0.31272;
      v15[4] = 0.329;
      CFXChromaticity2Tristimulus(v15 + 3, v15, v15[1]);
      v15[5] = 6500.0;
    }

    memcpy(v13, v15, 0x3CuLL);
    *(v13 + 19) = v14;
    v12 = 0;
    _CFXAdaptToColorSample(v13, v15, v14, &v12, 0.0);
    if (*(v13 + 1801))
    {
      _CFXLogSample(v13, v12 & 1);
    }

    *(v13 + 344) = 0;
    v11 = 0;
    v10 = 0;
    if (v15[3] == 0.0 && v15[4] == 0.0)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      CFXChromaticity2Tristimulus(v15 + 3, &v17, 100.0);
      v8 = 0;
      v9 = 0;
      CFXTristimulus2Lab(&v17, &v8);
      v11 = binFromAb(&v8 + 1);
      v10 = ansiBinFromChromaticity(v15 + 3);
    }

    if (v11 != *(v13 + 253))
    {
      v7 = mach_absolute_time();
      v6 = MachTimeToSeconds(v7 - v13[127]);
      *&v13[*(v13 + 253) + 101] = *&v13[*(v13 + 253) + 101] + v6;
      v13[127] = v7;
      *(v13 + 253) = v11;
      ++*(v13 + v11 + 236);
    }

    if (v10 != *(v13 + 402))
    {
      v5 = mach_absolute_time();
      v4 = MachTimeToSeconds(v5 - v13[202]);
      *&v13[*(v13 + 402) + 155] = *&v13[*(v13 + 402) + 155] + v4;
      v13[202] = v5;
      *(v13 + 402) = v10;
    }

    v3 = v15[1] * 3.14159265;
    CFXAmmoliteUpdateTarget(v13[282], v3);
    if (v13[282] && (*(v13[282] + 24) & 1) != 0 && v13[41])
    {
      (v13[41])(v13[42], 0);
    }
  }

  *MEMORY[0x1E69E9840];
}

BOOL triangleInclusion(float *a1, float **a2)
{
  v10 = 0;
  v9 = *a2[1] - **a2;
  v8 = *a2[2] - **a2;
  v7 = a2[1][1] - (*a2)[1];
  v6 = a2[2][1] - (*a2)[1];
  v5 = *a1 - **a2;
  v4 = a1[1] - (*a2)[1];
  v3 = ((v9 / -((v8 * v7) - (v9 * v6))) * v4) + ((-v7 / -((v8 * v7) - (v9 * v6))) * v5);
  if ((((-v8 / -((v8 * v7) - (v9 * v6))) * v4) + ((v6 / -((v8 * v7) - (v9 * v6))) * v5)) >= 0.0 && v3 >= 0.0)
  {
    return ((((-v8 / -((v8 * v7) - (v9 * v6))) * v4) + ((v6 / -((v8 * v7) - (v9 * v6))) * v5)) + v3) <= 1.0;
  }

  return v10;
}

uint64_t binFromAb(float *a1)
{
  v10 = *a1;
  v9 = a1[1];
  v8 = 0;
  if (fmaxf(fabsf(*a1), fabsf(v9)) != 0.0)
  {
    v7 = sqrtf((v9 * v9) + (v10 * v10));
    if (v7 <= 15.0)
    {
      v1 = 1;
    }

    else
    {
      v1 = 9;
    }

    v6 = v1;
    v2 = atan2f(v9 / v7, v10 / v7) + 0.392699082;
    v5 = v2;
    if (v2 < 0.0)
    {
      v3 = v2 + 6.28318531;
      v5 = v3;
    }

    syslog(7, "%f %f %f -> ANGLE %f -> BIN %d", v7, v10, v9, v5, (v5 / 0.785398163));
    return ((v5 / 0.785398163) + v6);
  }

  return v8;
}

uint64_t ansiBinFromChromaticity(float *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = a1;
  v38 = -1;
  v37 = 0;
  for (i = 0; i < 14; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      v34 = 0;
      v40 = &ColorAnsiBins[8 * i + 2 * j];
      v41 = &ColorAnsiBins[8 * i + 2 + 2 * j];
      v42 = &ColorAnsiBins[8 * i + 8 + 2 * j];
      v34 = triangleInclusion(v39, &v40);
      if (v34)
      {
        v1 = *v39;
        v2 = v39[1];
        v3 = *v40;
        v4 = v40[1];
        v5 = *v41;
        v6 = v41[1];
        v7 = *v42;
        v8 = v42[1];
        v21 = &v18;
        syslog(7, "BIN %d: (%f, %f) fitting in (%f, %f)-(%f, %f)-(%f, %f)\n", v37, v1, v2, v3, v4, v5, v6, v7, v8);
        v38 = v37;
        break;
      }

      v40 = &ColorAnsiBins[8 * i + 10 + 2 * j];
      v34 = triangleInclusion(v39, &v40);
      if (v34)
      {
        v9 = *v39;
        v10 = v39[1];
        v11 = *v40;
        v12 = v40[1];
        v13 = *v41;
        v14 = v41[1];
        v15 = *v42;
        v16 = v42[1];
        v20 = &v18;
        syslog(7, "BIN %d: (%f, %f) fitting in (%f, %f)-(%f, %f)-(%f, %f)\n", v37, v9, v10, v11, v12, v13, v14, v15, v16);
        v38 = v37;
        break;
      }

      ++v37;
    }

    if ((v38 & 0x80000000) == 0)
    {
      break;
    }
  }

  if ((v38 & 0x80000000) != 0)
  {
    if ((v33 = (0.4313 - 0.521) / (0.5443 - 0.6127), v32 = 0.521 - (v33 * 0.6127), v31 = v39[1] - (v33 * *v39), v30 = v31 - v32, v33 >= 0.0) && v30 <= 0.0 || v33 < 0.0 && v30 > 0.0)
    {
      v38 = 42;
    }
  }

  if ((v38 & 0x80000000) != 0)
  {
    if ((v29 = (0.2585 - 0.2757) / (0.2391 - 0.2127), v28 = 0.2757 - (v29 * 0.2127), v27 = v39[1] - (v29 * *v39), v26 = v27 - v28, v29 >= 0.0) && v26 >= 0.0 || v29 < 0.0 && v26 < 0.0)
    {
      v38 = 43;
    }
  }

  if ((v38 & 0x80000000) != 0)
  {
    v25 = (0.2757 - 0.521) / (0.2127 - 0.6127);
    v24 = 0.2757 - (v25 * 0.2127);
    v23 = v39[1] - (v25 * *v39);
    v22 = v23 - v24;
    if ((v23 - v24) < 0.0)
    {
      v38 = 45;
    }

    else
    {
      v38 = 44;
    }
  }

  v19 = v38;
  *MEMORY[0x1E69E9840];
  return v38;
}

double MachTimeToSeconds(unint64_t a1)
{
  v6 = a1;
  v5 = 0.0;
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    *&v2 = v1;
    LODWORD(v2) = info.denom;
    v5 = 0.000000001 * v1 / v2;
  }

  return v6 * v5;
}

void _CFXClampToCurve(uint64_t a1, int a2, float *a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a2;
  *v22 = 0;
  v21 = 0;
  if (*a3 >= 0.0)
  {
    v17 = 0.0;
    v16 = -1;
    v15 = 100000.0;
    for (i = 0; i < v23; ++i)
    {
      v13 = *(v26 + 4 * i) - *v24;
      v12 = *(v26 + 4 * (i + v23)) - v24[1];
      v11 = (v13 * v13) + (v12 * v12);
      if (v11 < v15)
      {
        v15 = v11;
        v16 = i;
      }
    }

    if ((v16 & 0x80000000) == 0)
    {
      v17 = *(v26 + 4 * v16);
      v18 = *(v26 + 4 * (v16 + v23));
    }

    if (*v24 < v17 && v16 > 0 || v16 == v25)
    {
      v20 = v16 - 1;
      v19 = v16;
    }

    else
    {
      v20 = v16;
      v19 = v16 + 1;
    }

    v22[0] = *(v26 + 4 * v20);
    v22[1] = *(v26 + 4 * (v20 + v23));
    LODWORD(v21) = *(v26 + 4 * v19);
    HIDWORD(v21) = *(v26 + 4 * (v19 + v23));
    v3 = compute_projection(v22, &v21, v24);
    if (v3 >= v22[0] || v20 <= 0)
    {
      if (v3 <= *&v21)
      {
        *v24 = __PAIR64__(v4, LODWORD(v3));
      }

      else
      {
        v22[0] = *(v26 + 4 * (v20 + 1));
        v22[1] = *(v26 + 4 * (v20 + 1 + v23));
        LODWORD(v21) = *(v26 + 4 * (v20 + 2));
        HIDWORD(v21) = *(v26 + 4 * (v20 + 2 + v23));
        v9 = v24;
        v7 = compute_projection(v22, &v21, v24);
        *v9 = __PAIR64__(v8, LODWORD(v7));
        if (*v24 < v22[0] && v20 > 0)
        {
          *v24 = *v22;
        }
      }
    }

    else
    {
      v22[0] = *(v26 + 4 * (v20 - 1));
      v22[1] = *(v26 + 4 * (v20 - 1 + v23));
      LODWORD(v21) = *(v26 + 4 * v20);
      HIDWORD(v21) = *(v26 + 4 * (v20 + v23));
      v10 = v24;
      v5 = compute_projection(v22, &v21, v24);
      *v10 = __PAIR64__(v6, LODWORD(v5));
      if (*v24 > *&v21)
      {
        *v24 = v21;
      }
    }
  }
}

float compute_projection(float *a1, float *a2, float *a3)
{
  v5 = 0.0;
  if (a1 && a2 && a3)
  {
    v4 = -(((*a2 - *a1) * (a3[1] - a1[1])) - ((a2[1] - a1[1]) * (*a3 - *a1))) / (((a2[1] - a1[1]) * (a2[1] - a1[1])) + ((*a2 - *a1) * (*a2 - *a1)));
    v5 = *a3 - (v4 * (a2[1] - a1[1]));
    v6 = a3[1] + (v4 * (*a2 - *a1));
  }

  else
  {
    syslog(1, "%s: Invalid input params: p1=>0x%x, p2=>0x%x, p=>0x%x\n", "compute_projection", a1, a2, a3);
  }

  return v5;
}

uint64_t _CFXGetTarget(uint64_t a1, float *a2, float *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, char a8, float a9)
{
  v60 = *MEMORY[0x1E69E9840];
  v53 = a1;
  v52 = a2;
  v51 = a3;
  v50 = a4;
  v49 = a5;
  v48 = a6;
  v47 = a7;
  v46 = a8;
  v45 = a9;
  v58 = 0;
  v59 = 0;
  v58 = *a2;
  v59 = *(a2 + 2);
  if ((a8 & 1) == 0)
  {
    v44 = 0;
    CFXTristimulus2Chromaticity_0(v52, &v44);
    v43 = v44;
    v42 = *(v53 + 92);
    v41 = 0.0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    if (*&v44 < 0.0 || *&v44 > 1.0)
    {
      syslog(1, "Chromaticity NOT within the range: (x,y) (%f, %f)", *&v43, *(&v43 + 1));
      LODWORD(v44) = fmaxf(*&v44, 0.0);
      LODWORD(v44) = fminf(*&v44, 1.0);
    }

    v36 = 0;
    if (*(v53 + 96))
    {
      v36 = (*(*(v53 + 96) + 302) & 1) != 0;
    }

    v35 = 9;
    if (*&v44 >= 0.0)
    {
      for (i = 1; i < v35; ++i)
      {
        if (*&v44 <= BB_PieceWise_Table[i])
        {
          *&v38 = BB_PieceWise_Table[i - 1];
          *(&v38 + 1) = BB_PieceWise_Table[i - 1 + v35];
          *&v37 = BB_PieceWise_Table[i];
          *(&v37 + 1) = BB_PieceWise_Table[i + v35];
          v41 = cfx_linear_interpolation(&v38, &v37, *&v44);
          v40 = i - 1;
          break;
        }
      }
    }

    if (*(&v44 + 1) < v41)
    {
      v9 = compute_projection(&v38, &v37, &v44);
      v33 = __PAIR64__(v10, LODWORD(v9));
      v39 = __PAIR64__(v10, LODWORD(v9));
      if (v9 >= *&v38 || v40 <= 0)
      {
        if (*&v39 <= *&v37)
        {
          v44 = v39;
        }

        else
        {
          *&v38 = BB_PieceWise_Table[v40 + 1];
          *(&v38 + 1) = BB_PieceWise_Table[v40 + 10];
          *&v37 = BB_PieceWise_Table[v40 + 2];
          *(&v37 + 1) = BB_PieceWise_Table[v40 + 11];
          v13 = compute_projection(&v38, &v37, &v44);
          v31 = __PAIR64__(v14, LODWORD(v13));
          v44 = __PAIR64__(v14, LODWORD(v13));
        }
      }

      else
      {
        *&v38 = BB_PieceWise_Table[v40 - 1];
        *(&v38 + 1) = BB_PieceWise_Table[v40 + 8];
        *&v37 = BB_PieceWise_Table[v40];
        *(&v37 + 1) = BB_PieceWise_Table[v40 + 9];
        v11 = compute_projection(&v38, &v37, &v44);
        v32 = __PAIR64__(v12, LODWORD(v11));
        v44 = __PAIR64__(v12, LODWORD(v11));
      }
    }

    if (*&v44 != *&v43 || *(&v44 + 1) != *(&v43 + 1))
    {
      syslog(7, "CCT RESTRICTION @%fK: xy (%f, %f) -> (%f, %f)", v42, *&v43, *(&v43 + 1), *&v44, *(&v44 + 1));
    }

    v30 = 1120403456;
    v24 = &v58;
    CFXChromaticity2Tristimulus(&v44, &v58, 100.0);
    memset(v29, 0, 12);
    CFXTristimulus2Lab(v24, v29);
    if (v50)
    {
      v28 = *(v29 + 4);
      _CFXStickToPolygon(v50, v49, &dword_1DEACD84C, v29 + 1, v29 + 1);
      if (*&v28 != *(v29 + 1) && *(&v28 + 1) != *&v29[1])
      {
        syslog(7, "Restrict: (%f, %f) -> (%f, %f)\n", *&v28, *&v28, *(v29 + 1), *&v29[1]);
      }
    }

    v27 = 0;
    v15 = (0.0 * 0.0) + (1.0 - 0.0) * *(v29 + 1);
    *(v29 + 1) = v15;
    v16 = (0.0 * 0.0) + (1.0 - 0.0) * *&v29[1];
    *&v29[1] = v16;
    CFXLab2Tristimulus(v29, &v58);
    if (v36)
    {
      v22 = v26;
      *v26 = 0;
      v23 = &v58;
      CFXTristimulus2Chromaticity_0(&v58, v26);
      v21 = &v57;
      CFXChromaticity2uv(v22, &v57);
      v25 = v57;
      _CFXClampToCurve(&MitigatedDaylightCurve, 13, &v25);
      v57 = v25;
      CFXuv2Chromaticity(v21, v22);
      CFXChromaticity2Tristimulus(v22, v23, *(&v58 + 1));
    }
  }

  _CFXGetMatrix(v53, &v58, v51, (v53 + 2128));
  v56[2] = 1.0;
  v56[1] = 1.0;
  v56[0] = 1.0;
  v19 = &v54;
  v54 = 0;
  v55 = 0;
  Mul33MatrixBy31Vector(v51, v56, &v54);
  v20 = v51;
  v17 = MaxOfVector(v19);
  result = Div33MatrixByScalar(v20, v51, v17);
  *MEMORY[0x1E69E9840];
  return result;
}

void _CFXUpdateTarget(uint64_t a1, float *a2, char a3, char a4, float a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a5;
  v21 = a4;
  v20 = *(a1 + 96);
  _CFXIdentity(v28);
  if (v20 && (*(v20 + 184) & 1) != 0 && *v20 >= 0.0 && (*v24 != 0.0 || v24[1] != 0.0 || v24[2] != 0.0))
  {
    _CFXGetTarget(v25, v24, v28, *(v20 + 56), *(v20 + 148), v20 + 144, v20 + 64, 0, *v20);
  }

  v19 = 0.0;
  *v18 = 0;
  v17 = 0;
  _CFXGetWPFromMatrix(v25, v28, v18, &v17);
  CFXChromaticity2uv(v18, &v26);
  v19 = CFXChromaticity2CCT(v18);
  v16 = v26 - *(v25 + 120);
  v15 = v27 - *(v25 + 124);
  v5 = sqrt(((v15 * v15) + (v16 * v16)));
  v14 = v5;
  v13 = 0.0;
  if ((v23 & 1) != 0 || v20 && v14 >= *(v20 + 156))
  {
    v12 = 0;
    if (v23)
    {
      v13 = v22;
    }

    else if (v24[1] >= *(v20 + 196) / 3.14159265)
    {
      if (v24[1] >= *(v20 + 204) / 3.14159265)
      {
        if (v19 < *(v25 + 128))
        {
          v13 = *(v20 + 164);
          v12 = 1;
        }

        else
        {
          v13 = *(v20 + 160);
        }
      }

      else
      {
        v13 = *(v20 + 176);
        v12 = 2;
      }
    }

    else
    {
      v13 = *(v20 + 180);
      v12 = 2;
    }

    if ((v23 & 1) == 0)
    {
      v11 = 0.0;
      v9 = v25 + 760;
      Current = CFAbsoluteTimeGetCurrent();
      if (_CFXCheckStats(v9, v12, &v11, Current))
      {
        v13 = fmaxf(v11, v13);
      }
    }

    _CFXSetTarget(v25, v28, 1, 1, v13, 1.0);
    *(v25 + 120) = v26;
    *(v25 + 124) = v27;
    *(v25 + 128) = v19;
  }

  else if (v20 && v14 >= *(v20 + 152))
  {
    if (v24[1] >= *(v20 + 196) / 3.14159265)
    {
      if (v24[1] >= *(v20 + 204) / 3.14159265)
      {
        if (v19 < *(v25 + 128))
        {
          v13 = *(v20 + 172);
        }

        else
        {
          v13 = *(v20 + 168);
        }
      }

      else
      {
        v13 = *(v20 + 176);
      }
    }

    else
    {
      v13 = *(v20 + 180);
    }

    v10 = 0.0;
    v8 = v25 + 760;
    v7 = CFAbsoluteTimeGetCurrent();
    if (_CFXCheckStats(v8, 3, &v10, v7))
    {
      v13 = fmaxf(v10, v13);
    }

    if (_CFXSetTarget(v25, v28, 0, 1, v13, 1.0))
    {
      *(v25 + 120) = v26;
      *(v25 + 124) = v27;
      *(v25 + 128) = v19;
    }
  }

  *MEMORY[0x1E69E9840];
}

float _CFXIdentity(float *a1)
{
  __memset_chk();
  result = 1.0;
  a1[8] = 1.0;
  a1[4] = 1.0;
  *a1 = 1.0;
  return result;
}

uint64_t _CFXRestrictLowAmbientColor(uint64_t a1, uint64_t a2, float *a3, float *a4, _BYTE *a5)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = 0;
  v18 = 0;
  *a5 = 0;
  if (v23[4] >= 0.1958)
  {
    *v21 = CFXChromaticity2CCT(v23 + 3);
  }

  else
  {
    *v21 = v23[5];
  }

  syslog(7, "[%s:%s] xy=(%f,%f), CCT = %f, CCT1 = %f", "ColorEffects.c", "_CFXRestrictLowAmbientColor", v23[3], v23[4], *v21, v23[5]);
  if (v24 && *(v24 + 96))
  {
    v17 = *(v24 + 96);
    v5 = v23[1] * 3.14159265;
    v16 = v5;
    if (*(*(v24 + 96) + 302))
    {
      v19 = _CFXRestrictLowAmbientColorWithMitigation(v24, v23, &v18, v20);
    }

    else if (v16 <= *(v17 + 196))
    {
      v15 = 0;
      if (v16 > 2.0 && *v21 >= 6000.0)
      {
        v15 = 0x3EA872D23EA01C4CLL;
        if (vabdd_f64(*(v24 + 92), 6504.0) > 1000.0)
        {
          *v20 = 1;
        }
      }

      else
      {
        v15 = *(v17 + 212);
        if (fabs((*(v24 + 92) - 4000.0)) > 1000.0)
        {
          *v20 = 1;
        }
      }

      if (v16 > *(v17 + 192))
      {
        v14 = 0;
        v14 = *(v23 + 3);
        v13 = (*(v17 + 196) - v16) / (*(v17 + 196) - *(v17 + 192));
        *&v18 = ((1.0 - v13) * *&v14) + (v13 * *&v15);
        *(&v18 + 1) = ((1.0 - v13) * *(&v14 + 1)) + (v13 * *(&v15 + 1));
        v6 = *v21;
        v12 = &v10;
        syslog(7, "RESTRICTION in Lux=%f: CCT %f +Fixed (alpha=%f) => RC = (%f, %f), xyFixed = (%f, %f), xy = (%f, %f)\n", v16, v6, v13, *&v14, *(&v14 + 1), *&v15, *(&v15 + 1), *&v18, *(&v18 + 1));
      }

      else
      {
        v18 = v15;
        syslog(7, "RESTRICTION in Lux=%f: xyFixed xy = (%f, %f)\n", v16, *&v15, *(&v15 + 1));
      }

      v19 = 1;
    }
  }

  if (v19)
  {
    v7 = fmaxf(v23[1], 1.0);
    v11 = &v18;
    CFXChromaticity2Tristimulus(&v18, v22, v7);
    v8 = CFXChromaticity2CCT(v11);
    *v21 = v8;
  }

  else
  {
    __memcpy_chk();
  }

  return v19 & 1;
}

uint64_t CFXTriggerMitigation(uint64_t result, char a2)
{
  if (result)
  {
    *(*(result + 96) + 302) = a2 & 1;
  }

  return result;
}

void _CFXAdaptToColorSample(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, float a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a5;
  v9 = a4;
  syslog(7, "LOWLUX %f\n", *(a2 + 4));
  v14 = 0;
  v15 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (_CFXRestrictLowAmbientColor(v13, v12, &v14, &v8, &v7))
  {
    if (*(*(v13 + 96) + 220) & 1) != 0 || (v7 & 1) != 0 || (*(*(v13 + 96) + 288))
    {
      v6 = 1;
    }
  }

  else
  {
    *(*(v13 + 96) + 220) = 0;
    v6 = 1;
  }

  if (v6)
  {
    if (*(*(v13 + 96) + 288))
    {
      v10 = 2.0;
    }

    __memcpy_chk();
    *(v13 + 92) = v8;
    if (*(*(v13 + 96) + 184))
    {
      v5 = 1;
      if ((*(v13 + 344) & 1) == 0)
      {
        v5 = (v11 & 1) != 0;
      }

      _CFXUpdateTarget(v13, (v13 + 80), v5, (v11 & 2) != 0, v10);
    }
  }

  *v9 = v6 & 1;
  *(*(v13 + 96) + 288) = 0;
  *MEMORY[0x1E69E9840];
}

float cfx_linear_interpolation(float *a1, float *a2, float a3)
{
  if (a1 && a2)
  {
    return a1[1] + (((a2[1] - a1[1]) / (*a2 - *a1)) * (a3 - *a1));
  }

  syslog(1, "%s: Invalid input params: p1=>0x%x, p2=>0x%x\n", "cfx_linear_interpolation", a1, a2);
  return -1.0;
}

float CFXChromaticity2uv(float *a1, float *a2)
{
  v3 = ((12.0 * a1[1]) + (-2.0 * *a1)) + 3.0;
  *a2 = (4.0 * *a1) / v3;
  result = (9.0 * a1[1]) / v3;
  a2[1] = result;
  return result;
}

void CFXAmmoliteUpdateTarget(uint64_t a1, float a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v15 = *(a1 + 8);
    for (i = 0; i < *(a1 + 8); ++i)
    {
      if (a2 < *(*a1 + 40 * i))
      {
        v15 = i;
        break;
      }
    }

    if (v15)
    {
      if (v15 < *(a1 + 8))
      {
        v13 = (a2 - *(*a1 + 40 * (v15 - 1))) / (*(*a1 + 40 * v15) - *(*a1 + 40 * (v15 - 1)));
        for (j = 0; j < 3; ++j)
        {
          for (k = 0; k < 3; ++k)
          {
            v2 = (v13 * *(*a1 + 40 * v15 + 4 + 12 * j + 4 * k)) + (1.0 - v13) * *(*a1 + 40 * (v15 - 1) + 4 + 12 * j + 4 * k);
            *&__dst[3 * j + k] = v2;
          }
        }
      }

      else
      {
        memcpy(__dst, (*a1 + 40 * (*(a1 + 8) - 1) + 4), sizeof(__dst));
      }
    }

    else
    {
      memcpy(__dst, (*a1 + 4), sizeof(__dst));
    }

    v3 = fabs((a2 - *(a1 + 28)));
    v10 = v3;
    v9 = 0.0;
    if (*(a1 + 28) > 0.0)
    {
      v9 = v3 / *(a1 + 28);
    }

    if (*(a1 + 48))
    {
      v8 = *(a1 + 48);
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
      __os_log_helper_16_0_3_8_0_8_0_8_0(v18, COERCE__INT64(a2), COERCE__INT64(v10), COERCE__INT64(*(a1 + 32)));
      _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "Ammolite: Lux %f (delta %f / thr %f)\n", v18, 0x20u);
    }

    if (v10 > *(a1 + 32) && (*(a1 + 28) == 0.0 || *(a1 + 28) > 0.0 && v9 > *(a1 + 36)))
    {
      *(a1 + 28) = a2;
      *(*(a1 + 16) + 16) = 0;
      v4 = *(a1 + 16);
      __memcpy_chk();
      v5 = *(a1 + 16) + 92;
      v6 = *(a1 + 16);
      __memcpy_chk();
      *(*(a1 + 16) + 8) = CFAbsoluteTimeGetCurrent();
      **(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 24) = 0;
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t _CFXRestrictLowAmbientColorWithMitigation(uint64_t a1, uint64_t a2, float *a3, _BYTE *a4)
{
  v11 = 0;
  *a4 = 0;
  if (a1)
  {
    if (*(a1 + 96))
    {
      v10 = *(a1 + 96);
      v4 = *(a2 + 4) * 3.14159265;
      if (v4 <= *(v10 + 196))
      {
        if (v4 > 2.0)
        {
          v9 = 0x3EACE8533EA4B5DDLL;
        }

        else
        {
          v9 = *(v10 + 212);
        }

        v5 = *(a1 + 96);
        if (v4 > *(v10 + 192))
        {
          v8 = *(a2 + 12);
          v7 = (*(v10 + 196) - v4) / (*(v10 + 196) - *(v10 + 192));
          *a3 = ((1.0 - v7) * *&v8) + (v7 * *&v9);
          a3[1] = ((1.0 - v7) * *(&v8 + 1)) + (v7 * *(&v9 + 1));
        }

        else
        {
          *a3 = v9;
        }

        v11 = 1;
        *a4 = 1;
      }
    }
  }

  return v11 & 1;
}

float CFXuv2Chromaticity(float *a1, float *a2)
{
  v3 = 12.0 - ((16.0 * a1[1]) - (6.0 * *a1));
  *a2 = (9.0 * *a1) / v3;
  result = (4.0 * a1[1]) / v3;
  a2[1] = result;
  return result;
}

float CFXSetFadeDuration(uint64_t a1, char a2)
{
  if (a1 && *(a1 + 96))
  {
    v3 = *(a1 + 96);
    *(v3 + 180) = 1114636288;
    *(v3 + 176) = 20.0;
    if (a2)
    {
      result = 15.0;
      *(v3 + 160) = 15.0;
      *(v3 + 164) = 15.0;
      *(v3 + 168) = 15.0;
      *(v3 + 172) = 15.0;
    }

    else
    {
      result = 5.0;
      *(v3 + 160) = 5.0;
      *(v3 + 164) = 5.0;
      *(v3 + 168) = 5.0;
      *(v3 + 172) = 5.0;
    }
  }

  return result;
}

float CFXSetSampleStrength(uint64_t a1, float result)
{
  if (a1)
  {
    *(*(a1 + 96) + 332) = result;
  }

  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_32_4_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
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

uint64_t _CFXCheckStats(uint64_t a1, int a2, float *a3, double a4)
{
  v11 = 0;
  while (*(a1 + 8) && **(a1 + 8) < a4 - *(a1 + 32))
  {
    v10 = *(*(a1 + 8) + 8);
    free(*(a1 + 8));
    *(a1 + 8) = v10;
    --*(a1 + 24);
    syslog(7, "REMOVING STAT\n");
    if (!*(a1 + 24))
    {
      *(a1 + 16) = 0;
    }
  }

  if (*(a1 + 16) && a4 - **(a1 + 16) > *(a1 + 44))
  {
    syslog(7, "CLEARING STATS\n");
    _CFXClearStats(a1);
  }

  if (a2 != *a1 && a2 != 3)
  {
    v9 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    v9[1] = 0.0;
    *v9 = a4;
    if (*(a1 + 8) && *(a1 + 16))
    {
      *(*(a1 + 16) + 8) = v9;
      *(a1 + 16) = v9;
    }

    else
    {
      *(a1 + 8) = v9;
      *(a1 + 16) = v9;
    }

    ++*(a1 + 24);
    *a1 = a2;
    syslog(7, "ADDING %d STAT\n", *(a1 + 24));
  }

  *a3 = 0.0;
  if (*(a1 + 8))
  {
    if (*(a1 + 16))
    {
      v8 = **(a1 + 16) - **(a1 + 8);
      syslog(7, "DELTAT %f\n", v8);
      if (*(a1 + 24) >= 5)
      {
        v4 = (*(a1 + 24) - 1.0) / v8;
        v7 = v4;
        syslog(7, "Freq %f Hz\n", v4);
        v5 = 3.0 / v7;
        *(a1 + 44) = v5;
        syslog(7, "Switch time %f\n", *(a1 + 44));
        *a3 = 10.0 / v7;
        v11 = 1;
      }
    }
  }

  return v11 & 1;
}

uint64_t _CFXSetTarget(uint64_t a1, float *a2, char a3, char a4, float a5, float a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v21 = a2;
  v20 = a5;
  v19 = a3;
  v18 = a4;
  v17 = a6;
  if (*(a1 + 2252) >= 0.0)
  {
    v20 = *(v22 + 2252);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v15 = Current < *(v22 + 136);
  if (*(v22 + 96) && (*(*(v22 + 96) + 303) & 1) != 0 && *(*(v22 + 96) + 332) != *(*(v22 + 96) + 336))
  {
    *(*(v22 + 96) + 328) = 0;
    *(*(v22 + 96) + 340) = *(*(v22 + 96) + 336);
    *(*(v22 + 96) + 332) = *(*(v22 + 96) + 332);
    *(*(v22 + 96) + 320) = Current;
    *(*(v22 + 96) + 312) = v20;
  }

  if (!v15 || v20 == 0.0 || (v19 & 1) != 0 || (*(v22 + 144) & 1) != 0)
  {
    *v14 = 0;
    *v14 = *(v22 + 200);
    *(v22 + 192) = 9;
    __memcpy_chk();
    __memcpy_chk();
    __memcpy_chk();
    v13 = 0;
    _CFXGetWPFromMatrix(v22, v21, (v22 + 200), &v13);
    *(v22 + 152) = v20;
    *(v22 + 196) = v17;
    *(v22 + 144) = (v19 ^ 1) & 1;
    *(v22 + 136) = Current + v20;
    v12 = 0;
    if (_COREBRIGHTNESS_LOG_DEFAULT || init_default_corebrightness_log())
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v23, "Harmony", COERCE__INT64(v14[0]), COERCE__INT64(v14[1]), COERCE__INT64(*(v22 + 200)), COERCE__INT64(*(v22 + 204)), COERCE__INT64(*(v22 + 152)), COERCE__INT64(*(v22 + 196)), *(v22 + 144) & 1);
      _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "[WP update: %s]: (%f;%f) -> (%f;%f) t: %f brightnessScaler: %f interruptible: %d", v23, 0x4Eu);
    }

    if (*(v22 + 364))
    {
      __memcpy_chk();
      __memcpy_chk();
      *(v22 + 368) = *(v22 + 152);
      *(v22 + 376) = Current;
      v12 = 1;
      *(v22 + 384) = 0;
    }

    if (*(v22 + 328))
    {
      v7 = *(v22 + 328);
      v8 = *(v22 + 336);
      if (v12)
      {
        v7(v8, 0);
      }

      else
      {
        v7(v8, v22 + 152);
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *result = 2;
  *(result + 1) = 8;
  *(result + 2) = 32;
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
  *(result + 73) = 4;
  *(result + 74) = a9;
  return result;
}

float *_CFXPolygonFromStrength(uint64_t *a1, int a2, float a3)
{
  v9 = 0;
  if (a2 > 0 && *a1 && a1[1])
  {
    v9 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
    if (a3 > 0.85)
    {
      v4 = (a3 - 0.85) / 0.15;
      v8 = v4;
      v5 = 1.0 - v4;
      for (i = 0; i < a2; ++i)
      {
        v9[2 * i] = (v5 * *(*a1 + 8 * i)) + (v8 * *(a1[1] + 8 * i));
        v9[2 * i + 1] = (v5 * *(*a1 + 8 * i + 4)) + (v8 * *(a1[1] + 8 * i + 4));
      }
    }

    else
    {
      v3 = *a1;
      __memcpy_chk();
    }
  }

  return v9;
}

uint64_t __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
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

double _CFXUpdateCompensatedBacklight(uint64_t a1, unint64_t a2, double result)
{
  v8 = *&result;
  if (a1)
  {
    v5 = _CFXFindBrightnessCompAlpha(AlphaArray, 7, *&result);
    v3 = (v5 * *(a1 + 2140)) + 1.0 - v5;
    v6 = v8 * v3;
    v4 = MachTimeToSeconds((a2 - *(a1 + 1776)));
    *(a1 + 1752) = *(a1 + 1752) + v4;
    *(a1 + 1760) = *(a1 + 1760) + v4 * *(a1 + 1788);
    *(a1 + 1768) = *(a1 + 1768) + v4 * *(a1 + 1784);
    *(a1 + 1784) = v8;
    *(a1 + 1788) = v6;
    result = a2;
    *(a1 + 1776) = a2;
  }

  return result;
}

double _CFXRampInit(uint64_t a1, float a2, float a3, float a4, float a5, double a6, uint64_t a7, int a8)
{
  v14 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  *(a1 + 44) = a3;
  *(a1 + 40) = 9;
  v8 = 4 * *(a1 + 40);
  __memcpy_chk();
  *a1 = a2;
  *(a1 + 48) = v14;
  *(a1 + 56) = a8;
  result = a6;
  *(a1 + 64) = a6;
  return result;
}

uint64_t __os_log_helper_16_0_3_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
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

uint64_t __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *result = 0;
  *(result + 1) = 9;
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
  return result;
}

uint64_t DisplayCopyProperty(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayCopyProperty_block_invoke;
  v9 = &unk_1E867B990;
  v10 = &v13;
  v11 = v19;
  v12 = a2;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t __DisplayCopyProperty_block_invoke(uint64_t a1)
{
  result = _DisplayCopyPropertyInternal(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _DisplayCopyPropertyInternal(uint64_t a1, const void *a2)
{
  Value = 0;
  if (CFEqual(a2, @"PendingDisplayNits"))
  {
    Value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (a1 + 1252));
  }

  else if (CFEqual(a2, @"ThermalMitigationLimitingBrightness"))
  {
    if (*(a1 + 1256) < *(a1 + 464))
    {
      v3 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      v3 = *MEMORY[0x1E695E4D0];
    }

    Value = v3;
  }

  else if (CFEqual(a2, @"EcoModeFactor"))
  {
    Value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (a1 + 648));
  }

  else if (CFEqual(a2, @"AAPLuxDelta"))
  {
    Value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (a1 + 12268));
  }

  else if (CFEqual(a2, @"DominoFactor"))
  {
    Value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 224));
  }

  else if (CFEqual(a2, @"DisplayAAPFactor"))
  {
    Value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (a1 + 12392));
  }

  if (!Value)
  {
    Value = CFDictionaryGetValue(*(a1 + 192), a2);
    if (Value)
    {
      return [Value copy];
    }
  }

  return Value;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

float CFXGetWPFromMatrix(uint64_t a1, float *a2, void *a3, _DWORD *a4)
{
  if (a1)
  {
    return _CFXGetWPFromMatrix(a1, a2, a3, a4);
  }

  return result;
}

float _CFXFindBrightnessCompAlpha(float *a1, int a2, float a3)
{
  v6 = 0.0;
  if (a3 <= *a1)
  {
    return a1[a2];
  }

  if (a3 >= a1[a2 - 1])
  {
    return a1[2 * a2 - 1];
  }

  for (i = 1; i < a2; ++i)
  {
    if (a3 < a1[i])
    {
      v4 = (a1[i] - a3) / (a1[i] - a1[i - 1]);
      return ((1.0 - v4) * a1[a2 + i]) + (v4 * a1[a2 - 1 + i]);
    }
  }

  return v6;
}

void DisplaySetEDRForTargetYcompensation(uint64_t a1, float a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 12596) == 1)
  {
    v10 = *(a1 + 1544);
    CFXFindBrightnessCompAlpha(v10);
    v9 = v2;
    v3 = (v2 * a2) + 1.0 - v2;
    v8 = v3;
    *(a1 + 12528) = v3;
    v7 = *(a1 + 1500);
    v6 = _DisplayComputeEDRNitsCap(a1);
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
      __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v13, COERCE__INT64(a2), COERCE__INT64(v10), COERCE__INT64(v9), COERCE__INT64(v8), COERCE__INT64(v7), COERCE__INT64(*(a1 + 1192)), COERCE__INT64(v6));
      _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "EDR Color brightness compensation (SetLibEDRBrightness) TargetYCompensation: %f, inputL: %f, alpha: %f, Ycomp: %f. L_device: %f, currentLux: %f, nitsCapEDR: %f", v13, 0x48u);
    }

    SetLibEDRBrightness(a1, v7, v6, *(a1 + 1192), v8);
  }

  *MEMORY[0x1E69E9840];
}

void __DisplayOpen_block_invoke(uint64_t a1, int a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v64 = a2;
  v63 = a1;
  if (a2 == 1)
  {
    *(*(a1 + 64) + 12600) = 2;
    if (_logHandle)
    {
      v31 = _logHandle;
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

      v31 = inited;
    }

    v62 = v31;
    v61 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      log = v62;
      type = v61;
      __os_log_helper_16_0_0(v60);
      _os_log_impl(&dword_1DE8E5000, log, type, "Received kEDRNotificationEDREnabled\n", v60, 2u);
    }

    *(*(a1 + 64) + 12081) = 0;
    *(*(a1 + 64) + 12082) = 0;
    __DisplayStartAPLCPMSTimer(*(a1 + 64), 1.0);
  }

  else if (a2 == 2)
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
      v24 = v59;
      v25 = v58;
      __os_log_helper_16_0_0(v57);
      _os_log_impl(&dword_1DE8E5000, v24, v25, "Received kEDRNotificationEDRDisabled, process brightness until headroom 1.0\n", v57, 2u);
    }

    *(*(a1 + 64) + 12600) = 1;
    if (*(*(a1 + 64) + 12112))
    {
      __DisplayProcessHDRStatusForCoreAnalytics(*(a1 + 64));
      dispatch_release(*(*(a1 + 64) + 12112));
      *(*(a1 + 64) + 12112) = 0;
      *(*(a1 + 64) + 12088) = 0;
      *(*(a1 + 64) + 12096) = 0;
    }
  }

  else if (a2 == 3 && (*(*(a1 + 64) + 12548) & 1) == 0 && (*(*(a1 + 64) + 12600) == 2 || *(*(a1 + 64) + 12600) == 1))
  {
    v56 = 0;
    CBEDRServerGetCurrentDisplayPropertiesForDisplay(*(*(a1 + 64) + 12592), (*(*(a1 + 32) + 8) + 24), (*(*(a1 + 40) + 8) + 24), (*(*(a1 + 48) + 8) + 24), (*(*(a1 + 56) + 8) + 24), &v56);
    if (*(*(*(a1 + 40) + 8) + 24) == 0.0)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = 1.0 / *(*(*(a1 + 40) + 8) + 24);
    }

    v55 = v23;
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

    v54 = v22;
    v53 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v68, COERCE__INT64(*(*(*(a1 + 32) + 8) + 24)), COERCE__INT64(v55), COERCE__INT64(*(*(*(a1 + 56) + 8) + 24)), COERCE__INT64(*(*(a1 + 64) + 1140)));
      _os_log_debug_impl(&dword_1DE8E5000, v54, v53, "EDR Notification: BL brightness: %f, headroom: %f, lux: %f (gl sc: %f)\n", v68, 0x2Au);
    }

    *(*(*(a1 + 32) + 8) + 24) = fminf(*(*(*(a1 + 32) + 8) + 24), *(*(a1 + 64) + 1544));
    LODWORD(v52[0]) = 3;
    v52[1] = v55;
    __DisplayUpdateAAPStateInternal(*(a1 + 64), v52, 0);
    v2 = *(*(a1 + 64) + 1128) / 65536.0;
    v51 = v2;
    v3 = *(*(a1 + 64) + 1132) / 65536.0;
    v50 = v3;
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

    v49 = v20;
    v48 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v67, COERCE__INT64(v51), COERCE__INT64(v50), COERCE__INT64(*(*(*(a1 + 32) + 8) + 24)));
      _os_log_impl(&dword_1DE8E5000, v49, v48, "EDR caps when enabling: currentNitsCap=%f, nitsCapEDR=%f (backlightBrightness %f)", v67, 0x20u);
    }

    v47 = float_equal(*(*(a1 + 64) + 12208), *(*(a1 + 64) + 12212));
    v18 = (*(*(a1 + 64) + 1517) & 1) != 0 || *(*(*(a1 + 32) + 8) + 24) <= v50;
    v46 = v18;
    v45 = 0;
    if (*(*(*(a1 + 32) + 8) + 24) >= v51 && v46 && v47)
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

      oslog = v17;
      v43 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v66, COERCE__INT64(*(*(*(a1 + 32) + 8) + 24)), COERCE__INT64(v51), COERCE__INT64(v50));
        _os_log_debug_impl(&dword_1DE8E5000, oslog, v43, "Changing BL cap to %f (currentNitsCap was %f, nitsCapEDR was %f)\n", v66, 0x20u);
      }

      v42 = (*(*(*(a1 + 32) + 8) + 24) * 65536.0);
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

      v41 = v15;
      v40 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v12 = v41;
        v13 = v40;
        __os_log_helper_16_0_0(v39);
        _os_log_impl(&dword_1DE8E5000, v12, v13, "SetBLDriverNitsCap for edrNotificationBrightness EDR_ENABLED/EDR_DISABLED_RAMP_PENDING", v39, 2u);
      }

      SetBLDriverNitsCapIfNotInLPM(*(a1 + 64), v42);
      v45 = 1;
    }

    __DisplaySetLogicalBrightnessInternal(*(a1 + 64), 0x8000, *(*(*(a1 + 32) + 8) + 24));
    if (*(*(a1 + 64) + 12600) == 1 && v55 == 1.0)
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

      v38 = v11;
      v37 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v8 = v38;
        v9 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_impl(&dword_1DE8E5000, v8, v9, "SetBLDriverNitsCap for edrNotificationBrightness EDR_DISABLED_RAMP_PENDING, headroom=1", v36, 2u);
      }

      SetBLDriverNitsCapIfNotInLPM(*(a1 + 64), *(*(a1 + 64) + 1128));
      *(*(a1 + 64) + 12600) = 0;
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

      v35 = v7;
      v34 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v4 = v35;
        v5 = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_debug_impl(&dword_1DE8E5000, v4, v5, "EDR disabled\n", v33, 2u);
      }

      v45 = 1;
    }

    if ((v45 & 1) == 0 && (*(*(a1 + 64) + 1517) & 1) == 0)
    {
      SetBLDriverNitsCapIfNotInLPM(*(a1 + 64), *(*(a1 + 64) + 1128));
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t DisplayGetAPLColumnOrDefault(uint64_t a1, unsigned int a2)
{
  APLColumn = DisplayGetAPLColumn(a1);
  if (APLColumn == -1)
  {
    return a2;
  }

  else
  {
    return APLColumn;
  }
}

float _DisplayComputeEDRNitsCap(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 1544);
  if (*(a1 + 1517))
  {
    if (_DisplayBDMAvailable(a1))
    {
      v9 = *(a1 + 1168);
    }

    v10 = fmaxf(v9, *(a1 + 1320));
    if (*(a1 + 12104) != 0.0)
    {
      v8 = *(a1 + 12108);
      APLColumnOrDefault = DisplayGetAPLColumnOrDefault(a1, 0x64u);
      CPMSPowerConstraint = __DisplayGetCPMSPowerConstraint(a1);
      v10 = fminf(v10, fmaxf(v8, DisplayPowerToPhysicalBrightness(a1, APLColumnOrDefault, CPMSPowerConstraint)));
    }

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
      __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v14, COERCE__INT64(*(a1 + 464)), COERCE__INT64(*(a1 + 528)), COERCE__INT64(*(a1 + 1320)), COERCE__INT64(*(a1 + 12108)), COERCE__INT64(v10));
      _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "Superbright EDR restrictions [would be]: CLTM %f, UPO %f, bottom [lower] restriction %f, nits cap hdr: %f, after BDM: %f", v14, 0x34u);
    }
  }

  else
  {
    v11 = fminf(fminf(v9, *(a1 + 464)), *(a1 + 528));
    if (*(a1 + 1140) < 1.0)
    {
      v11 = *(a1 + 1320) + (*(a1 + 1140) * (v11 - *(a1 + 1320)));
    }

    if ((*(a1 + 12512) & 1) == 0 && (*(a1 + 12515) & 1) == 0)
    {
      *(a1 + 12528) = 1.0;
    }

    v10 = fmaxf(v11, *(a1 + 1320));
    if (*(a1 + 12104) != 0.0)
    {
      v12 = *(a1 + 12108);
      v6 = DisplayGetAPLColumnOrDefault(a1, 0x64u);
      v2 = __DisplayGetCPMSPowerConstraint(a1);
      v10 = fmaxf(v12, DisplayPowerToPhysicalBrightness(a1, v6, v2));
    }
  }

  if (*(a1 + 224))
  {
    v10 = fminf(v10, *(a1 + 724));
  }

  *(a1 + 1132) = (v10 * 65536.0);
  *MEMORY[0x1E69E9840];
  return v10;
}

float __DisplayPowerToPhysicalBrightnessInternal(uint64_t a1, unsigned int a2, float a3)
{
  if (!*(a1 + 1660))
  {
    return 0.0;
  }

  APLIndex = DisplayGetAPLIndex(a1, a2);
  IndexFromValue = __DisplayGetIndexFromValue(0, *(a1 + 1660) - 1, a1 + 2068 + 200 * APLIndex, a3);
  PercentageFromIndex = __DisplayGetPercentageFromIndex(IndexFromValue, *(a1 + 1660) - 1, (a1 + 2068 + 200 * APLIndex), a3);
  if (IndexFromValue == *(a1 + 1660) - 1)
  {
    v4 = *(a1 + 1868 + 4 * IndexFromValue);
  }

  else
  {
    v4 = *(a1 + 1868 + 4 * IndexFromValue) + (PercentageFromIndex * (*(a1 + 1868 + 4 * (IndexFromValue + 1)) - *(a1 + 1868 + 4 * IndexFromValue)));
  }

  v8 = v4;
  if (v4 > *(a1 + 1664) * 0.95)
  {
    return fmaxf(v4, *(a1 + 1544));
  }

  return v8;
}

void SetLibEDRBrightness(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 12596))
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v12, COERCE__INT64(a2), COERCE__INT64(a3), COERCE__INT64(a4), COERCE__INT64(a5));
      _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "SetLibEDRBrightness to currentBrightness=%f, maxBrightness=%f, currentLux=%f, compensationBoost=%f", v12, 0x2Au);
    }

    CBEDRServerDisplayBrightness(*(a1 + 12592), a2, a3, a4, a5);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t DisplayGetAPLColumn(uint64_t a1)
{
  v8 = a1;
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayGetAPLColumn_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = a1;
  v10 = &DisplayGetAPLColumn_token;
  v9 = &v2;
  if (DisplayGetAPLColumn_token != -1)
  {
    dispatch_once(v10, v9);
  }

  return DisplayGetAPLColumn_column;
}

void CBEDRServerDisplayBrightness(unsigned int a1, float a2, float a3, float a4, float a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (edrServerSetDisplayBrightnessFunction)
  {
    oslog = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_6_8_32_4_0_8_0_8_0_8_0_8_0(v13, "CBEDRServerDisplayBrightness", a1, COERCE__INT64(a2), COERCE__INT64(a3), COERCE__INT64(a4), COERCE__INT64(a5));
      _os_log_debug_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_DEBUG, "%s: display: %u | target: %f | max: %f | ambient: %f | boost=%f", v13, 0x3Au);
    }

    edrServerSetDisplayBrightnessFunction(a1, a2, a3, a4, a5);
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v12, "CBEDRServerDisplayBrightness");
      _os_log_error_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_ERROR, "%s: missing edrServerSetDisplayBrightnessFunction ", v12, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

void DisplayRefPropertyChangedCallback(void *a1, const __CFString *a2, const void *a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  if (a1)
  {
    v15 = v21;
    if (v20)
    {
      CFRetain(v20);
    }

    if (v19)
    {
      CFRetain(v19);
    }

    v3 = *(v15 + 3);
    block = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = ___Z33DisplayRefPropertyChangedCallbackPvPK10__CFStringPKv_block_invoke;
    v11 = &unk_1E867B5A0;
    v12 = v15;
    v13 = v20;
    v14 = v19;
    dispatch_async(v3, &block);
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
    v17 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "invalid arguments", v16, 2u);
    }
  }
}

void ___Z33DisplayRefPropertyChangedCallbackPvPK10__CFStringPKv_block_invoke(id *a1)
{
  v10 = 1;
  if (*(a1[4] + 5))
  {
    v7 = [*(a1[4] + 5) getDisplayType];
    if (v7 == [*(a1[4] + 5) CBDispTypeIntegrated])
    {
      if ([a1[5] isEqualToString:@"TrustedLux"] & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"FrameSynchronizedBrightnessTransaction") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"CPMS.UPO.Cap") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"CPMS.CLTM.Cap") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"CPMS.HDR.Cap") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"CPMSCurrentCap") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"DisplayOn") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"AuroraFactor") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"AuroraRampInProgress"))
      {
        [a1[4] handleNotificationForKey:a1[5] withProperty:a1[6]];
      }

      else if ([a1[5] isEqualToString:@"DisplayBrightness"])
      {
        v10 = 0;
        [a1[4] handleNotificationForKey:a1[5] withProperty:a1[6]];
        v6 = a1[6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          context = objc_autoreleasePoolPush();
          v9 = [a1[6] mutableCopy];
          [objc_msgSend(v9 "objectForKey:"floatValue"")];
          *&v2 = v1 * *(a1[4] + 39);
          [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v2), @"NitsPhysical"}];
          LODWORD(v3) = *(a1[4] + 39);
          [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v3), @"EDRHeadroom"}];
          LODWORD(v4) = *(a1[4] + 58);
          [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v4), @"HDRRTPLCCap"}];
          [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(a1[4] + 305) & 1), @"AliasingMitigationActive"}];
          _DisplaySetInternalDictionaryProperty(*(a1[4] + 41), @"DisplayBrightness", v9);
          _DisplaySetInternalDictionaryProperty(*(a1[4] + 41), @"DisplayNitsKey", v9);
          v10 = 0;
          [a1[4] sendNotificationForKey:a1[5] withValue:v9];
          objc_autoreleasePoolPop(context);
        }
      }
    }
  }

  if (v10)
  {
    [a1[4] sendNotificationForKey:a1[5] withValue:a1[6]];
  }

  if (a1[5])
  {
    CFRelease(a1[5]);
  }

  if (a1[6])
  {
    CFRelease(a1[6]);
  }
}

void disp_dispatch_async(NSObject *a1, void (**a2)(void))
{
  if (a1)
  {
    dispatch_async(a1, a2);
  }

  else
  {
    a2[2]();
  }
}

void SendSyncDBVNotification(uint64_t a1, char a2, float a3)
{
  v14 = a1;
  v13 = a3;
  v12 = a2;
  if (*(a1 + 321))
  {
    if (*(v14 + 232) & 1) == 0 || (v12)
    {
      v3 = *(v14 + 120);
      v4 = MEMORY[0x1E69E9820];
      v5 = -1073741824;
      v6 = 0;
      v7 = __SendSyncDBVNotification_block_invoke;
      v8 = &__block_descriptor_45_e5_v8__0l;
      v9 = v14;
      v10 = v13;
      v11 = v12 & 1;
      disp_dispatch_async(v3, &v4);
    }

    else
    {
      *(v14 + 236) = (v13 * 65536.0);
    }
  }
}

float _DisplayLogicalToSliderBrightnessInternal(uint64_t a1, float a2)
{
  v7 = 0.0;
  if (a2 > 0.0)
  {
    v6 = a2;
    if (a2 < *(a1 + 1316))
    {
      if (**(a1 + 72) <= *(a1 + 1320))
      {
        v6 = __interpolate(*(a1 + 1320), *(a1 + 1308), *(a1 + 1316), *(a1 + 1304), a2);
      }
    }

    else
    {
      v6 = __interpolate(*(a1 + 1316), *(a1 + 1304), *(a1 + 1312), *(a1 + 1300), a2);
    }

    v5 = *(a1 + 64);
    v4 = 0;
    while (v5)
    {
      v3 = v5 / 2 + v4;
      if (v3 == *(a1 + 64) - 1)
      {
        v7 = fmaxf(*(a1 + 344), *(a1 + 340));
        return v7 * *(a1 + 12728);
      }

      if (v6 >= *(*(a1 + 72) + 4 * v3) && v6 < *(*(a1 + 72) + 4 * (v3 + 1)))
      {
        v7 = fmaxf((v3 / (*(a1 + 64) - 1.0)) + (((v6 - *(*(a1 + 72) + 4 * v3)) / (*(*(a1 + 72) + 4 * (v3 + 1)) - *(*(a1 + 72) + 4 * v3))) * (1.0 / (*(a1 + 64) - 1))), *(a1 + 340));
        return v7 * *(a1 + 12728);
      }

      if (v6 <= *(*(a1 + 72) + 4 * v3))
      {
        v5 /= 2u;
      }

      else
      {
        v4 += v5 / 2 + 1;
        v5 = (v5 - 1) / 2;
      }

      if (!v3)
      {
        v7 = fmaxf(*(a1 + 340), *(a1 + 340));
        return v7 * *(a1 + 12728);
      }
    }

    v7 = fmaxf(0.0, *(a1 + 340));
  }

  return v7 * *(a1 + 12728);
}

float __DisplayLogicalToPhysicalBrightness(uint64_t a1, float a2)
{
  v5 = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2) * *(a1 + 348);
  v4 = 0.0;
  if (*(a1 + 348) > 0.0)
  {
    if (*(a1 + 348) < 1.0)
    {
      return _DisplayPerceptualLuminanceToLuminanceInternal(a1, v5);
    }

    else
    {
      return a2;
    }
  }

  return v4;
}

void __SendSyncDBVNotification_block_invoke(uint64_t a1)
{
  v53 = a1;
  v74 = *MEMORY[0x1E69E9840];
  v72 = a1;
  v71 = a1;
  v70 = *(*(a1 + 32) + 12952);
  v69 = !float_equal(v70, 1.0);
  v68 = *(*(v53 + 32) + 1128) / 65536.0;
  v67 = *(v53 + 40);
  if ((*(*(v53 + 32) + 322) & 1) != 0 || *(*(v53 + 32) + 12608) > 0.0) && (*(*(v53 + 32) + 1517))
  {
    v68 = *(*(v53 + 32) + 1132) / 65536.0;
    if (_DisplayBDMAvailable(*(v53 + 32)))
    {
      v68 = fminf(v68, *(*(v53 + 32) + 1168));
    }
  }

  v66 = *(*(v53 + 32) + 1312) * *(*(v53 + 32) + 1056);
  if (*(*(v53 + 32) + 1120))
  {
    v66 = *(*(v53 + 32) + 1312);
  }

  v65 = *(*(v53 + 32) + 12676);
  if (*(v53 + 44))
  {
    if (v69)
    {
      v68 = fmaxf(v68, *(*(v53 + 32) + 240));
      v67 = fmaxf(*(v53 + 40), *(*(v53 + 32) + 236) / 65536.0);
    }

    else
    {
      v68 = *(*(v53 + 32) + 240);
    }
  }

  if (*(*(v53 + 32) + 12468) >= 0.0)
  {
    v52 = *(*(v53 + 32) + 12468);
  }

  else
  {
    v52 = *(*(v53 + 32) + 12392);
  }

  v64 = v52;
  if (_logHandle)
  {
    v51 = _logHandle;
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

    v51 = inited;
  }

  oslog = v51;
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    log = oslog;
    *v48 = type;
    v1 = *(*(v53 + 32) + 1128);
    v39 = 65536.0;
    *&v40 = (v1 / 65536.0);
    *&v41 = *(*(v53 + 32) + 464);
    *&v42 = *(*(v53 + 32) + 528);
    *&v43 = *(*(v53 + 32) + 1140);
    *&v44 = *(*(v53 + 32) + 1056);
    v2 = *(*(v53 + 32) + 1120);
    v37 = "NO";
    v3 = "YES";
    v38 = "YES";
    if ((v2 & 1) == 0)
    {
      v3 = "NO";
    }

    v45 = v3;
    v4 = _DisplayBDMAvailable(*(v53 + 32));
    v5 = v38;
    if (v4)
    {
      v6 = v38;
    }

    else
    {
      v6 = v37;
    }

    *&v7 = *(*(v53 + 32) + 1168);
    if (*(*(v53 + 32) + 1517))
    {
      v8 = v38;
    }

    else
    {
      v8 = v37;
    }

    if (*(*(v53 + 32) + 322))
    {
      v9 = v38;
    }

    else
    {
      v9 = v37;
    }

    *&v10 = (*(*(v53 + 32) + 1132) / v39);
    v11 = *(*(v53 + 32) + 12608);
    *&v12 = *(*(v53 + 32) + 1312);
    if (v69)
    {
      v13 = v38;
    }

    else
    {
      v13 = v37;
    }

    if (*(v53 + 44))
    {
      v14 = v38;
    }

    else
    {
      v14 = v37;
    }

    if ((*(*(v53 + 32) + 232) & 1) == 0)
    {
      v5 = v37;
    }

    *&v15 = *(*(v53 + 32) + 240);
    *&v16 = (*(*(v53 + 32) + 236) / v39);
    v46 = &v27;
    buf = v73;
    __os_log_helper_16_2_18_8_0_8_0_8_0_8_0_8_0_8_32_8_32_8_0_8_32_8_32_8_0_8_0_8_0_8_32_8_32_8_32_8_0_8_0(v73, v40, v41, v42, v43, v44, v45, v6, v7, v8, v9, v10, v11, v12, v13, v14, v5, v15, v16);
    _os_log_impl(&dword_1DE8E5000, log, v48[0], "SyncDBV Composition | Nits.Cap=%f MaxRestriction.Cap=%f WeakRestriction.Cap=%f PAAB.Scalar=%f RightFactor.Current=%f RightFactor.Overriden=%s BrightDotMitigation.Enabled=%s BrightDotMitigation.Cap=%f EDR.Enabled=%s EDR.IsEngaged=%s EDR.Cap=%f EDR.FadePeriod=%f Panel.Max=%f Aurora.IsBoostingBrightness=%s PreStrobe.Changed=%s PreStrobe.IsActive=%s PreStrobe.Cap=%f PreStrobe.CachedNits=%f", buf, 0xB6u);
  }

  context = objc_autoreleasePoolPush();
  v35 = MEMORY[0x1E695DF90];
  v29 = 0x1E696A000uLL;
  *&v17 = v67;
  v34 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  LODWORD(v18) = *(*(v53 + 32) + 12628);
  v30 = [*(v29 + 3480) numberWithFloat:v18];
  *&v19 = v68;
  v31 = [*(v29 + 3480) numberWithFloat:v19];
  *&v20 = v66;
  v32 = [*(v29 + 3480) numberWithFloat:v20];
  LODWORD(v21) = v65;
  v33 = [*(v29 + 3480) numberWithFloat:v21];
  *&v22 = v70;
  v23 = [*(v29 + 3480) numberWithFloat:v22];
  v36 = &v27;
  v61 = [v35 dictionaryWithObjectsAndKeys:{v34, @"NitsPhysical", v30, @"EDRHeadroom", v31, @"NitsCap", v32, @"DynSliderCap", v33, @"HDRRTPLCHeadroomCap", v23, @"AuroraFactor", 0}];
  if (*(*(v53 + 32) + 321) & 1) != 0 && (CBU_PassContrastEnhancerStrengthThroughSyncDBV())
  {
    LODWORD(v24) = v64;
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    [v61 setObject:v25 forKeyedSubscript:@"ContrastEnhancerStrength"];
  }

  v26 = *(*(v53 + 32) + 144);
  block = MEMORY[0x1E69E9820];
  v55 = -1073741824;
  v56 = 0;
  v57 = __SendSyncDBVNotification_block_invoke_26;
  v58 = &unk_1E867B9D8;
  v60 = *(v53 + 32);
  v59 = v61;
  dispatch_async(v26, &block);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_2_18_8_0_8_0_8_0_8_0_8_0_8_32_8_32_8_0_8_32_8_32_8_0_8_0_8_0_8_32_8_32_8_32_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  result = a9;
  *a1 = 2;
  *(a1 + 1) = 18;
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
  *(a1 + 52) = 32;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 32;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 0;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 32;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 32;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 0;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 0;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 32;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 32;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 32;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 0;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 0;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  return result;
}

uint64_t CBU_PassContrastEnhancerStrengthThroughSyncDBV()
{
  if (CBU_PassContrastEnhancerStrengthThroughSyncDBV_once != -1)
  {
    dispatch_once(&CBU_PassContrastEnhancerStrengthThroughSyncDBV_once, &__block_literal_global_64);
  }

  return CBU_PassContrastEnhancerStrengthThroughSyncDBV_pass & 1;
}

void __DisplayUpdateSlider(float *a1, float a2, float a3, float a4)
{
  v77 = *MEMORY[0x1E69E9840];
  cf = a1;
  valuePtr = a2;
  v61 = a3;
  v60 = a4;
  if (a1[70] >= 0.0)
  {
    valuePtr = *(cf + 70);
  }

  if (*(cf + 312))
  {
    v59 = 0;
    if (*(cf + 77))
    {
      v59 = @"DisplayTypeIcon";
    }

    else
    {
      v59 = @"DisplayTypeSiri";
    }

    if ((*(cf + 312) & 1) != 0 && *(cf + 79) != -1.0)
    {
      v61 = *(cf + 79);
      v60 = v61;
      v4 = __DisplayPhysicalToLogicalBrightness(cf, v61);
      valuePtr = _DisplayLogicalToSliderBrightnessInternal(cf, v4);
    }

    *(cf + 316) = v60;
    v76[0] = xmmword_1E867CBC8;
    v76[1] = xmmword_1E867CBD8;
    v74 = 0u;
    v75 = 0u;
    v5 = CFGetAllocator(cf);
    *&v74 = CFNumberCreate(v5, kCFNumberFloatType, &valuePtr);
    v23 = MEMORY[0x1E695E480];
    *(&v74 + 1) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v61);
    *&v75 = CFNumberCreate(*v23, kCFNumberFloat32Type, &v60);
    *(&v75 + 1) = v59;
    v6 = CFGetAllocator(cf);
    value = CFDictionaryCreate(v6, v76, &v74, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (value)
    {
      if (_logHandle)
      {
        v22 = _logHandle;
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

        v22 = inited;
      }

      oslog = v22;
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v73, COERCE__INT64(valuePtr));
        _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "S=%f", v73, 0xCu);
      }

      CFDictionarySetValue(*(cf + 24), @"DisplayBrightness", value);
      CFDictionarySetValue(*(cf + 24), @"DisplayNitsKey", value);
      *(cf + 272) = 1;
      v7 = *(cf + 18);
      block = MEMORY[0x1E69E9820];
      v50 = -1073741824;
      v51 = 0;
      v52 = ____DisplayUpdateSlider_block_invoke;
      v53 = &__block_descriptor_48_e5_v8__0l;
      v54 = cf;
      v55 = value;
      dispatch_async(v7, &block);
    }

    if (v74)
    {
      CFRelease(v74);
    }

    if (*(&v74 + 1))
    {
      CFRelease(*(&v74 + 1));
    }

    if (v75)
    {
      CFRelease(v75);
    }
  }

  else
  {
    *(cf + 316) = v60;
    v48 = 0;
    if (*(cf + 321))
    {
      v47 = 0;
      v46 = 0.0;
      v20 = 1;
      if ((*(cf + 322) & 1) == 0)
      {
        v20 = *(cf + 1576) > 0.0;
      }

      v45 = v20;
      if (v20)
      {
        v47 = *(cf + 283);
        if (*(cf + 1517) & 1) != 0 && (_DisplayBDMAvailable(cf))
        {
          v47 = (*(cf + 292) * 65536.0);
        }
      }

      else
      {
        v47 = *(cf + 282);
      }

      numValues_4 = v47 / 65536.0;
      if (*(cf + 1120))
      {
        v46 = *(cf + 328);
      }

      else
      {
        v46 = *(cf + 328) * *(cf + 264);
      }

      memcpy(__dst, &off_1E867CBE8, sizeof(__dst));
      memset(__b, 0, sizeof(__b));
      v8 = CFGetAllocator(cf);
      __b[0] = CFNumberCreate(v8, kCFNumberFloatType, &valuePtr);
      v19 = MEMORY[0x1E695E480];
      __b[1] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v61);
      __b[2] = CFNumberCreate(*v19, kCFNumberFloat32Type, &v60);
      __b[3] = CFNumberCreate(*v19, kCFNumberFloat32Type, &v60);
      __b[4] = CFNumberCreate(*v19, kCFNumberFloat32Type, cf + 12628);
      __b[5] = CFNumberCreate(*v19, kCFNumberFloat32Type, &numValues_4);
      __b[6] = CFNumberCreate(*v19, kCFNumberFloat32Type, &v46);
      __b[7] = CFNumberCreate(*v19, kCFNumberFloat32Type, cf + 12952);
      numValues = 8;
      v9 = CFGetAllocator(cf);
      v48 = CFDictionaryCreate(v9, __dst, __b, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v48)
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

        v42 = v18;
        v41 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v70, COERCE__INT64(valuePtr));
          _os_log_debug_impl(&dword_1DE8E5000, v42, v41, "S=%f", v70, 0xCu);
        }

        CFDictionarySetValue(*(cf + 24), @"DisplayBrightness", v48);
        CFDictionarySetValue(*(cf + 24), @"DisplayNitsKey", v48);
        *(cf + 272) = 1;
        kdebug_trace();
        v10 = *(cf + 18);
        v34 = MEMORY[0x1E69E9820];
        v35 = -1073741824;
        v36 = 0;
        v37 = ____DisplayUpdateSlider_block_invoke_912;
        v38 = &__block_descriptor_48_e5_v8__0l;
        v39 = cf;
        v40 = v48;
        dispatch_async(v10, &v34);
      }

      for (i = 0; i < numValues; ++i)
      {
        if (__b[i])
        {
          CFRelease(__b[i]);
        }
      }
    }

    else
    {
      v68 = xmmword_1E867CC28;
      v69 = @"NitsPhysical";
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v11 = CFGetAllocator(cf);
      v65 = CFNumberCreate(v11, kCFNumberFloatType, &valuePtr);
      v16 = MEMORY[0x1E695E480];
      v66 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v61);
      v67 = CFNumberCreate(*v16, kCFNumberFloat32Type, &v60);
      v12 = CFGetAllocator(cf);
      v48 = CFDictionaryCreate(v12, &v68, &v65, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v48)
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

        v32 = v15;
        v31 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v64, COERCE__INT64(valuePtr));
          _os_log_debug_impl(&dword_1DE8E5000, v32, v31, "S=%f", v64, 0xCu);
        }

        CFDictionarySetValue(*(cf + 24), @"DisplayBrightness", v48);
        CFDictionarySetValue(*(cf + 24), @"DisplayNitsKey", v48);
        *(cf + 272) = 1;
        kdebug_trace();
        v13 = *(cf + 18);
        v24 = MEMORY[0x1E69E9820];
        v25 = -1073741824;
        v26 = 0;
        v27 = ____DisplayUpdateSlider_block_invoke_914;
        v28 = &__block_descriptor_48_e5_v8__0l;
        v29 = cf;
        v30 = v48;
        dispatch_async(v13, &v24);
      }

      if (v65)
      {
        CFRelease(v65);
      }

      if (v66)
      {
        CFRelease(v66);
      }

      if (v67)
      {
        CFRelease(v67);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void __DisplaySetBLDriverProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  if (a1 && *(v13 + 80) && v11)
  {
    if (*(v13 + 120))
    {
      v10 = 0;
      if (!*(v13 + 128))
      {
        *(v13 + 128) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v10 = 1;
      }

      if (*(v13 + 128))
      {
        CFDictionarySetValue(*(v13 + 128), v12, v11);
        if (v10)
        {
          v3 = *(v13 + 120);
          block = MEMORY[0x1E69E9820];
          v5 = -1073741824;
          v6 = 0;
          v7 = ____DisplaySetBLDriverProperty_block_invoke;
          v8 = &__block_descriptor_40_e5_v8__0l;
          v9 = v13;
          dispatch_async(v3, &block);
        }
      }
    }

    else
    {
      IORegistryEntrySetCFProperty(*(v13 + 80), v12, v11);
    }
  }
}

uint64_t __SendSyncDBVNotification_block_invoke_26(uint64_t result)
{
  if (*(*(result + 40) + 16))
  {
    return (*(*(result + 40) + 16))(*(*(result + 40) + 24), @"FrameSynchronizedBrightnessTransaction", *(result + 32));
  }

  return result;
}

void _DisplaySetInternalDictionaryProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v3 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = ___DisplaySetInternalDictionaryProperty_block_invoke;
  v8 = &__block_descriptor_56_e5_v8__0l;
  v9 = v14;
  v10 = a2;
  v11 = a3;
  disp_dispatch_sync(v3, &v4);
}

uint64_t __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
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

uint64_t __os_log_helper_16_2_2_8_0_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

float clamp(float a1, float a2, float a3)
{
  if (a1 < a2)
  {
    return a2;
  }

  if (a1 <= a3)
  {
    return a1;
  }

  else
  {
    return a3;
  }
}

uint64_t CBU_IsSecureIndicatorSupported()
{
  if (CBU_IsSecureIndicatorSupported_onceToken != -1)
  {
    dispatch_once(&CBU_IsSecureIndicatorSupported_onceToken, &__block_literal_global_78);
  }

  return CBU_IsSecureIndicatorSupported_supported & 1;
}

float AAB::LuminanceToIlluminance(float a1, uint64_t a2, float *a3)
{
  v6 = 0.0;
  if (a1 >= a3[3])
  {
    if (a1 >= a3[7])
    {
      v5 = a3[21];
      v4 = a3[7] - (v5 * a3[5]);
    }

    else
    {
      v5 = (a3[7] - a3[6]) / (a3[5] - a3[4]);
      v4 = a3[6];
    }
  }

  else
  {
    v5 = (a3[3] - a3[1]) / (a3[2] - *a3);
    v4 = a3[1];
  }

  if (v5 != 0.0)
  {
    return (a1 - v4) / v5;
  }

  return v6;
}

uint64_t AABCCallback(void *a1, const __CFString *a2, const void *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  if (!a1 || !v11 || !v10)
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
    v8 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "error: invalid parameters", v7, 2u);
    }
  }

  return [v12 sendNotificationForKey:v11 withValue:v10];
}

uint64_t __DisplayUpdateAAPStateInternal(uint64_t result, uint64_t a2, char a3)
{
  if (*(result + 12282))
  {
    return (*(result + 12472))(result, a2, a3 & 1);
  }

  return result;
}

void __DisplayUpdateAAPStateLookup(uint64_t a1, uint64_t a2, char a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v33 = 0;
  if (*a2)
  {
    switch(*a2)
    {
      case 1:
        *(a1 + 12304) = *(a2 + 4);
        v33 = (*(a1 + 12280) & 1) != 0;
        break;
      case 2:
        *&v32 = ((vabds_f32(*(a2 + 4), *(a1 + 12300)) / *(a1 + 12300)) * 100.0);
        *&v31 = AAP_GCP_LuxThreshold(*(a1 + 12300));
        if (*&v32 > *&v31)
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

          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v40, COERCE__INT64(*(a1 + 12300)), COERCE__INT64(*(a2 + 4)), v32, v31);
            _os_log_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_INFO, "[AAP] Update for Lux change %f -> %f, Lux delta %f%% > %f%% Lux threshold", v40, 0x2Au);
          }

          *(a1 + 12300) = *(a2 + 4);
          if (*(a1 + 12280))
          {
            v33 = 1;
          }
        }

        break;
      case 3:
        *(a1 + 12296) = *(a2 + 4);
        *(a1 + 12285) = *(a1 + 12296) != 1.0;
        v33 = (*(a1 + 12285) & 1) != 0;
        break;
    }
  }

  else
  {
    v16 = 1;
    if ((*(a2 + 4) & 1) == 0)
    {
      v16 = *(a1 + 12284);
    }

    *(a1 + 12280) = v16 & 1;
    if (*(a1 + 12280))
    {
      v33 = 1;
    }

    else
    {
      __DisplaySetAAPFactorWithFade(a1, 0, 0, 0.0, *(a1 + 12252));
    }
  }

  if (v33)
  {
    v26 = *(a1 + 12304);
    v25 = *(a1 + 12300);
    IndexFromValue = __DisplayGetIndexFromValue(0, *(a1 + 12312) - 1, *(a1 + 12320), v26);
    PercentageFromIndex = __DisplayGetPercentageFromIndex(IndexFromValue, *(a1 + 12312) - 1, *(a1 + 12320), v26);
    if (IndexFromValue != *(a1 + 12288) || (a3 & 1) != 0)
    {
      v29 = __DisplayGetIndexFromValue(0, *(a1 + 12328) - 1, *(a1 + 12336), v25);
      v27 = __DisplayGetPercentageFromIndex(v29, *(a1 + 12328) - 1, *(a1 + 12336), v25);
      *(a1 + 12288) = IndexFromValue;
      if (v27 == 0.0)
      {
        v13 = *(*(a1 + 12352) + 272 * v29 + 4 * IndexFromValue);
      }

      else
      {
        v13 = *(*(a1 + 12352) + 272 * (v29 + 1) + 4 * IndexFromValue);
      }

      if (PercentageFromIndex == 0.0)
      {
        v12 = *(*(a1 + 12352) + 272 * v29 + 4 * IndexFromValue);
      }

      else
      {
        v12 = *(*(a1 + 12352) + 272 * v29 + 4 * (IndexFromValue + 1));
      }

      if (v27 == 0.0 || PercentageFromIndex == 0.0)
      {
        v11 = *(*(a1 + 12352) + 272 * v29 + 4 * IndexFromValue);
      }

      else
      {
        v11 = *(*(a1 + 12352) + 272 * (v29 + 1) + 4 * (IndexFromValue + 1));
      }

      v23 = *(*(a1 + 12352) + 272 * v29 + 4 * IndexFromValue);
      v21 = (v23 + ((v13 - v23) * v27)) + (((v12 + ((v11 - v12) * v27)) - (v23 + ((v13 - v23) * v27))) * PercentageFromIndex);
      if (*(a1 + 12285) & 1) != 0 && (*(a1 + 12292))
      {
        v18 = *(a1 + 12296);
        v20 = __DisplayGetIndexFromValue(0, *(a1 + 12360) - 1, *(a1 + 12368), v18);
        if (v20 && v20 != *(a1 + 12360) - 1)
        {
          v3 = *(*(a1 + 12368) + 4 * v20);
          v19 = (v18 - v3) / (*(*(a1 + 12368) + 4 * (v20 + 1)) - v3);
        }

        else
        {
          v19 = 0.0;
        }

        if (v19 == 0.0)
        {
          v10 = *(*(a1 + 12384) + 4 * v20);
        }

        else
        {
          v10 = *(*(a1 + 12384) + 4 * (v20 + 1));
        }

        v24 = *(*(a1 + 12384) + 4 * v20);
        v17 = v24 + ((v10 - v24) * v19);
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
          __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v39, COERCE__INT64(v21), COERCE__INT64(v17), COERCE__INT64((v21 * v17)), COERCE__INT64(v25), COERCE__INT64(v26));
          _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "Starting New HDR Ramp with LUT: UnScaledFactor:=%0.4f HDRScale:=%0.4f ScaledFactor:=%0.4f Lux:=%0.4f Nits:=%0.4f\n", v39, 0x34u);
        }

        v21 = v21 * v17;
      }

      else if (*(a1 + 12285) & 1) == 0 || (*(a1 + 12292))
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
          __os_log_helper_16_0_3_8_0_8_0_8_0(v37, COERCE__INT64(v21), COERCE__INT64(v25), COERCE__INT64(v26));
          _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "Starting New AAP Ramp: Factor:=%0.4f Lux:=%0.4f Nits:=%0.4f\n", v37, 0x20u);
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

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v38, COERCE__INT64(v21), COERCE__INT64(v25), COERCE__INT64(v26), COERCE__INT64(*(a1 + 12296)));
          _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "Starting New HDR AAP Ramp: Factor:=%0.4f Lux:=%0.4f Nits:=%0.4f HDRFactor:=%0.4f\n", v38, 0x2Au);
        }
      }

      v22 = (v21 - 1.0) / 15.0;
      if (*(a1 + 12392) >= v22)
      {
        __DisplaySetAAPFactorWithFade(a1, 0, 0, v22, *(a1 + 12276));
      }

      else
      {
        __DisplaySetAAPFactorWithFade(a1, 0, 0, v22, *(a1 + 12272));
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void DisplayUpdateAAPState(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  if ((a4 & 1) != 0 && *(v16 + 144))
  {
    v4 = *(v16 + 144);
    v5 = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __DisplayUpdateAAPState_block_invoke;
    v9 = &__block_descriptor_49_e5_v8__0l;
    v10 = v16;
    v11 = v15;
    v12 = v14 & 1;
    disp_dispatch_sync(v4, &v5);
  }

  else if ((v13 & 1) == 0)
  {
    __DisplayUpdateAAPStateInternal(v16, v15, v14 & 1);
  }
}

void AABC::_UpdateSemanticAmbientLightLevel(uint64_t a1, int a2)
{
  if (a2 == 255)
  {
    if (*(a1 + 540) < 10000.0)
    {
      if (*(a1 + 540) < 2000.0)
      {
        if (*(a1 + 540) < 300.0)
        {
          if (*(a1 + 540) < 30.0)
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 4;
      }
    }

    else
    {
      v4 = 5;
    }
  }

  else
  {
    v4 = a2;
  }

  if (*(a1 + 584) != v4)
  {
    *(a1 + 584) = v4;
    if (*(a1 + 344))
    {
      cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 584));
      if (cf)
      {
        (*(a1 + 344))(*(a1 + 352), @"SemanticAmbientLightLevel", cf);
        CFRelease(cf);
      }
    }
  }
}

uint64_t AABC::ProcessCPMSBudget(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  CPMSAPLTable = DisplayGetCPMSAPLTable(*(a1 + 400));
  MEMORY[0x1E69E5928](v14);
  v2 = *(a1 + 3904);
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = ___ZN4AABC17ProcessCPMSBudgetEP12NSDictionaryIP8NSStringP8NSNumberE_block_invoke;
  v9 = &unk_1E867B5A0;
  v11 = a1;
  v10 = v14;
  v12 = CPMSAPLTable;
  dispatch_async(v2, &block);
  return [*(a1 + 3960) acknowledgePowerBudget:v14 forClientId:objc_msgSend(*(a1 + 3952) error:{"clientId"), 0}];
}

uint64_t DisplayGetCPMSAPLTable(uint64_t a1)
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
  v7 = __DisplayGetCPMSAPLTable_block_invoke;
  v8 = &unk_1E867C928;
  v9 = &v11;
  v10 = v16;
  disp_dispatch_sync(v1, &v4);
  v3 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v3;
}

uint64_t __DisplayGetCPMSAPLTable_block_invoke(uint64_t a1)
{
  result = __DisplayGetCPMSAPLTableInternal(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __DisplayGetCPMSAPLTableInternal(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v79 = a1;
  v78 = 1;
  if (*(a1 + 108))
  {
    v77 = IORegistryEntrySearchCFProperty(*(v79 + 108), "IOService", @"power-lut-vbatt-cur-nominal", *MEMORY[0x1E695E480], 3u);
    v76 = 0;
    v75 = 1.0;
    if (_DisplayGetUint32FromCFDataAndRelease(v77, &v76) & 1) != 0 && v76 && *(v79 + 12176) != 0.0 && (DisplayHasDCP(v79))
    {
      v75 = *(v79 + 12176) / (v76 / 1000.0);
      if (_logHandle)
      {
        v39 = _logHandle;
      }

      else
      {
        v38 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
        v39 = v38;
      }

      v74 = v39;
      v73 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        log = v74;
        *type = v73;
        buf = v81;
        __os_log_helper_16_0_1_8_0(v81, COERCE__INT64(v75));
        _os_log_impl(&dword_1DE8E5000, v74, v73, "CPMS table scalar = %f", v81, 0xCu);
      }
    }

    v34 = &v72;
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v77 = IORegistryEntrySearchCFProperty(*(v79 + 108), "IOService", @"power-lut-use-iofixed", *MEMORY[0x1E695E480], 3u);
    if (_DisplayGetUint32FromCFDataAndRelease(v77, &v72))
    {
      v69 = v72 != 0;
    }

    v77 = IORegistryEntrySearchCFProperty(*(v79 + 108), "IOService", @"power-lut-data-x", *MEMORY[0x1E695E480], 3u);
    if (_DisplayGetUint32FromCFDataAndRelease(v77, &v72))
    {
      *(v79 + 1660) = v72;
    }

    else
    {
      v78 = 0;
    }

    v77 = IORegistryEntrySearchCFProperty(*(v79 + 108), "IOService", @"power-lut-data-y", *MEMORY[0x1E695E480], 3u);
    if (_DisplayGetUint32FromCFDataAndRelease(v77, &v72))
    {
      *(v79 + 1656) = v72;
    }

    else
    {
      v78 = 0;
    }

    v77 = IORegistryEntrySearchCFProperty(*(v79 + 108), "IOService", @"power-lut-data-xindex", *MEMORY[0x1E695E480], 3u);
    if (v77)
    {
      v71 = create_uint32_array_from_cfdata(v77, &v70);
      for (i = 0; i < v71; ++i)
      {
        if (v69)
        {
          *(v79 + 1868 + 4 * i) = *&v70[4 * i] / 65536.0;
        }

        else
        {
          *(v79 + 1868 + 4 * i) = *&v70[4 * i];
        }
      }

      if (v71)
      {
        free(v70);
      }

      CFRelease(v77);
    }

    else
    {
      v78 = 0;
    }

    v77 = IORegistryEntrySearchCFProperty(*(v79 + 108), "IOService", @"power-lut-data-yindex", *MEMORY[0x1E695E480], 3u);
    if (v77)
    {
      v71 = create_uint32_array_from_cfdata(v77, &v70);
      if (v71)
      {
        for (j = 0; j < v71; ++j)
        {
          *(v79 + 1668 + 4 * j) = *&v70[4 * j];
        }

        free(v70);
      }

      else
      {
        v78 = 0;
      }

      CFRelease(v77);
    }

    else
    {
      v78 = 0;
    }

    v77 = IORegistryEntrySearchCFProperty(*(v79 + 108), "IOService", @"power-lut-data-lut", *MEMORY[0x1E695E480], 3u);
    if (v77)
    {
      v71 = create_uint32_array_from_cfdata(v77, &v70);
      if (v71)
      {
        for (k = 0; k < *(v79 + 1656); ++k)
        {
          for (m = 0; m < *(v79 + 1660); ++m)
          {
            *(v79 + 2068 + 200 * k + 4 * m) = *&v70[4 * m * *(v79 + 1656) + 4 * k] * v75;
            if (v69)
            {
              *(v79 + 2068 + 200 * k + 4 * m) = *(v79 + 2068 + 200 * k + 4 * m) / 65536.0;
            }
          }
        }

        free(v70);
      }

      else
      {
        v78 = 0;
      }

      CFRelease(v77);
    }

    else
    {
      v78 = 0;
    }
  }

  else
  {
    v78 = 0;
  }

  if ((v78 & 1) == 0)
  {
    for (n = 0; n < 21; ++n)
    {
      for (ii = 0; ii < 20; ++ii)
      {
        *(v79 + 2068 + 200 * ii + 4 * n) = CPMSPowerModel[20 * n + ii];
      }

      *(v79 + 1868 + 4 * n) = NitIndexTable[n];
    }

    for (jj = 0; jj < 20; ++jj)
    {
      *(v79 + 1668 + 4 * jj) = APLIndexTable[jj];
    }

    *(v79 + 1660) = 21;
    *(v79 + 1656) = 20;
  }

  v32 = 0x1E695D000uLL;
  v1 = objc_alloc(MEMORY[0x1E695DF70]);
  v61 = [v1 initWithCapacity:*(v79 + 1660)];
  v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v59 = [v2 initWithCapacity:*(v79 + 1656)];
  v33 = 0x1E696A000uLL;
  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  v58 = [v3 initWithUnsignedInt:*(v79 + 1660)];
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  v57 = [v4 initWithUnsignedInt:*(v79 + 1656)];
  if (v61 && v60 && v59 && v58 && v57)
  {
    for (kk = 0; kk < *(v79 + 1656); ++kk)
    {
      v5 = objc_alloc(MEMORY[0x1E695DF70]);
      v55 = [v5 initWithCapacity:*(v79 + 1660)];
      for (mm = 0; mm < *(v79 + 1660); ++mm)
      {
        v6 = objc_alloc(MEMORY[0x1E696AD98]);
        v53 = [v6 initWithUnsignedInt:*(v79 + 2068 + 200 * kk + 4 * mm)];
        [v55 addObject:v53];
        MEMORY[0x1E69E5920](v53);
      }

      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v52 = [v7 initWithFormat:@"%1.3f", *(v79 + 1668 + 4 * kk)];
      [v60 setValue:v55 forKey:v52];
      MEMORY[0x1E69E5920](v52);
      MEMORY[0x1E69E5920](v55);
      v8 = objc_alloc(MEMORY[0x1E696AD98]);
      v51 = [v8 initWithUnsignedInt:*(v79 + 1668 + 4 * kk)];
      [v59 addObject:v51];
      MEMORY[0x1E69E5920](v51);
    }

    for (nn = 0; nn < *(v79 + 1660); ++nn)
    {
      v9 = objc_alloc(MEMORY[0x1E696AD98]);
      v49 = [v9 initWithUnsignedInt:*(v79 + 1868 + 4 * nn)];
      [v61 addObject:v49];
      MEMORY[0x1E69E5920](v49);
    }

    if (*(v79 + 1660))
    {
      *(v79 + 1664) = *(v79 + 1868 + 4 * (*(v79 + 1660) - 1));
      if (*(v79 + 1664) > *(v79 + 1544))
      {
        if (_logHandle)
        {
          v31 = _logHandle;
        }

        else
        {
          v30 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
          v31 = v30;
        }

        oslog = v31;
        v47 = OS_LOG_TYPE_FAULT;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          v27 = oslog;
          *v28 = v47;
          *&v10 = *(v79 + 1664);
          *&v11 = *(v79 + 1544);
          v29 = v80;
          __os_log_helper_16_0_2_8_0_8_0(v80, v10, v11);
          _os_log_fault_impl(&dword_1DE8E5000, oslog, v47, "CPMS table end %f is beyond display maximum brightness: %f", v80, 0x16u);
        }
      }
    }

    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    v26 = v14;
    value = [v12 initWithObjectsAndKeys:{v61, @"Nits", v60, @"Watts", v58, @"TableSize", v59, @"APL", v57, @"APLSize", 0}];
    if (value)
    {
      v78 = 1;
      CFDictionarySetValue(*(v79 + 192), @"CPMSAPLLUT", value);
      MEMORY[0x1E69E5920](value);
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
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v25 = inited;
      }

      v45 = v25;
      v44 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v21 = v45;
        *v22 = v44;
        v23 = v43;
        __os_log_helper_16_0_0(v43);
        _os_log_error_impl(&dword_1DE8E5000, v21, v22[0], "CPMS: problem loading budget dict", v23, 2u);
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

    v42 = v20;
    v41 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v16 = v42;
      *v17 = v41;
      v18 = v40;
      __os_log_helper_16_0_0(v40);
      _os_log_error_impl(&dword_1DE8E5000, v16, v17[0], "CPMS: problem loading table values", v40, 2u);
    }
  }

  if (v58)
  {
    MEMORY[0x1E69E5920](v58);
  }

  if (v57)
  {
    MEMORY[0x1E69E5920](v57);
  }

  if (v59)
  {
    MEMORY[0x1E69E5920](v59);
  }

  if (v61)
  {
    MEMORY[0x1E69E5920](v61);
  }

  if (v60)
  {
    MEMORY[0x1E69E5920](v60);
  }

  if (v78)
  {
    v15 = v79 + 1656;
  }

  else
  {
    v15 = 0;
  }

  v14[11] = v15;
  *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _DisplayGetUint32FromCFDataAndRelease(const void *a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  if (a1)
  {
    v3 = CFGetTypeID(v7);
    if (v3 == CFDataGetTypeID())
    {
      *buffer = 0;
      if (CFDataGetLength(v7) == 4)
      {
        v9 = 0;
        v8 = 4;
        v10 = 0;
        v11 = 4;
        v12.location = 0;
        v12.length = 4;
        CFDataGetBytes(v7, v12, buffer);
        *v6 = *buffer;
        v5 = 1;
      }
    }

    CFRelease(v7);
  }

  return v5 & 1;
}

unint64_t create_array_from_cfdata<unsigned int>(const void *a1, UInt8 **a2)
{
  count = 0;
  buffer = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v3 = CFGetTypeID(a1);
  if (v3 != CFDataGetTypeID())
  {
    goto LABEL_8;
  }

  count = CFDataGetLength(a1) / 4uLL;
  if (!(CFDataGetLength(a1) % 4uLL))
  {
    buffer = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    if (buffer)
    {
      v9.location = 0;
      v9.length = 4 * count;
      CFDataGetBytes(a1, v9, buffer);
    }

    else
    {
      count = 0;
    }

LABEL_8:
    *a2 = buffer;
    return count;
  }

  return 0;
}

void ___ZN4AABC17ProcessCPMSBudgetEP12NSDictionaryIP8NSStringP8NSNumberE_block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v44 = a1;
  v43 = a1;
  v24 = *(a1 + 40);
  v41 = -1.0;
  v40 = -1.0;
  v42 = -1.0;
  v39 = 0;
  if ([*(a1 + 32) valueForKey:*MEMORY[0x1E6991F50]])
  {
    HDRAPLColumn = DisplayGetHDRAPLColumn(*(v24 + 50));
    v39 = [*(a1 + 32) valueForKey:*MEMORY[0x1E6991F50]];
    v22 = *(v24 + 50);
    [v39 floatValue];
    v37 = DisplayPowerToPhysicalBrightness(v22, HDRAPLColumn, v1);
    v21 = *(v24 + 984) == -1.0 || ((vabds_f32(v37, *(v24 + 984)) / *(v24 + 984)) * 100.0) > *(v24 + 987);
    v36 = v21;
    if (v37 > *(*(a1 + 48) + 212 + 4 * (*(*(a1 + 48) + 4) - 1)) * 0.95)
    {
      v36 = 1;
    }

    if ((v36 & 1) != 0 || v37 == *(*(a1 + 48) + 212 + 4 * (*(*(a1 + 48) + 4) - 1)))
    {
      v42 = v37;
      *(v24 + 984) = v37;
      if (_logHandle)
      {
        v20 = _logHandle;
      }

      else
      {
        v19 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v20 = v19;
      }

      v35 = v20;
      v34 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        [v39 floatValue];
        __os_log_helper_16_0_2_8_0_8_0(v47, COERCE__INT64(v2), COERCE__INT64(v42));
        _os_log_impl(&dword_1DE8E5000, v35, v34, "Received an updated CPMS Budget for HDR:%f watts converted to %f nits", v47, 0x16u);
      }
    }
  }

  if ([*(a1 + 32) valueForKey:*MEMORY[0x1E6991F40]])
  {
    APLColumnOrDefault = DisplayGetAPLColumnOrDefault(*(v24 + 50), 0x64u);
    AABC::CancelRamp(v24);
    v39 = [*(a1 + 32) valueForKey:*MEMORY[0x1E6991F40]];
    v18 = *(v24 + 50);
    [v39 floatValue];
    v32 = DisplayPowerToPhysicalBrightness(v18, APLColumnOrDefault, v3);
    v17 = *(v24 + 982) == -1.0 || ((vabds_f32(v32, *(v24 + 982)) / *(v24 + 982)) * 100.0) > *(v24 + 985);
    v31 = v17;
    if (v32 > *(*(a1 + 48) + 212 + 4 * (*(*(a1 + 48) + 4) - 1)) * 0.95)
    {
      v31 = 1;
    }

    if ((v31 & 1) != 0 || v32 == *(*(a1 + 48) + 212 + 4 * (*(*(a1 + 48) + 4) - 1)))
    {
      v41 = v32;
      *(v24 + 982) = v32;
      if (v41 >= *(v24 + 182))
      {
        *(v24 + 978) = *(v24 + 182);
        *(v24 + 3916) = 0;
      }

      else
      {
        *(v24 + 978) = v41;
        *(v24 + 3916) = 1;
        *(v24 + 980) = *(v24 + 135);
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

        v30 = v16;
        v29 = 1;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v13 = v30;
          v14 = v29;
          __os_log_helper_16_0_0(v28);
          _os_log_impl(&dword_1DE8E5000, v13, v14, "Enabling weak cap\n", v28, 2u);
        }
      }

      *(v24 + 3924) = 1;
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

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        [v39 floatValue];
        __os_log_helper_16_0_2_8_0_8_0(v46, COERCE__INT64(v4), COERCE__INT64(v41));
        _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_INFO, "Received an updated CPMS Budget for UPO:%f watts converted to %f nits", v46, 0x16u);
      }
    }
  }

  if ([*(a1 + 32) valueForKey:*MEMORY[0x1E6991F58]])
  {
    v27 = DisplayGetAPLColumnOrDefault(*(v24 + 50), 0x64u);
    v39 = [*(a1 + 32) valueForKey:*MEMORY[0x1E6991F58]];
    v10 = *(v24 + 50);
    [v39 floatValue];
    v26 = DisplayPowerToPhysicalBrightness(v10, v27, v5);
    v9 = *(v24 + 983) == -1.0 || ((vabds_f32(v26, *(v24 + 983)) / *(v24 + 983)) * 100.0) > *(v24 + 986);
    v25 = v9;
    if (v26 > *(*(a1 + 48) + 212 + 4 * (*(*(a1 + 48) + 4) - 1)) * 0.95)
    {
      v25 = 1;
    }

    if ((v25 & 1) != 0 || v26 == *(*(a1 + 48) + 212 + 4 * (*(*(a1 + 48) + 4) - 1)))
    {
      v40 = v26;
      *(v24 + 983) = v26;
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

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        [v39 floatValue];
        __os_log_helper_16_0_2_8_0_8_0(v45, COERCE__INT64(v6), COERCE__INT64(v40));
        _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_INFO, "Received an updated CPMS Budget for CLTM:%f watts converted to %f nits", v45, 0x16u);
      }
    }
  }

  DisplayUpdateCPMSBudget(*(v24 + 50), &v40);
  MEMORY[0x1E69E5920](*(a1 + 32));
  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void DisplayUpdateCPMSBudget(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  if (*(a1 + 144))
  {
    v2 = *(v11 + 144);
    v3 = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = __DisplayUpdateCPMSBudget_block_invoke;
    v7 = &__block_descriptor_48_e5_v8__0l;
    v8 = v11;
    v9 = v10;
    disp_dispatch_sync(v2, &v3);
  }
}

void __DisplayUpdateCPMSBudgetInternal(float *a1, float *a2)
{
  v44 = a1;
  v43 = a2;
  if (a1[3020])
  {
    v24 = v44[3018];
  }

  else
  {
    v24 = fminf(v44[3018], v44[3019]);
  }

  v42 = v24;
  APLColumnOrDefault = DisplayGetAPLColumnOrDefault(v44, 0x64u);
  if (v43[1] != -1.0)
  {
    *(v44 + 12080) = 0;
    v44[3019] = __DisplayPhysicalBrightnessToPowerInternal(v44, APLColumnOrDefault, v43[1]);
    v40 = 0.0;
    v39 = v43[1];
    if (float_equal(v39, v44[132]))
    {
      v40 = 0.0;
    }

    else
    {
      v40 = v39 <= v44[132] ? 7.0 : 2.5;
    }

    _DisplaySetBrightnessWeakCapWithFade(v44, 1, v39, v40);
    if (*(v44 + 2))
    {
      *&v2 = v43[1];
      (*(v44 + 2))(*(v44 + 3), @"CPMS.UPO.Cap", [MEMORY[0x1E696AD98] numberWithFloat:v2]);
    }
  }

  if (*v43 != -1.0)
  {
    v44[3018] = __DisplayPhysicalBrightnessToPowerInternal(v44, APLColumnOrDefault, *v43);
    _DisplaySetBrightnessMaxPhysicalWithFade(v44, *v43, 0.0);
    if (*(v44 + 2))
    {
      *&v2 = *v43;
      (*(v44 + 2))(*(v44 + 3), @"CPMS.CLTM.Cap", [MEMORY[0x1E696AD98] numberWithFloat:v2]);
    }
  }

  if (v44[3020])
  {
    v23 = v44[3018];
  }

  else
  {
    v23 = fminf(v44[3018], v44[3019]);
  }

  v38 = v23;
  if (*(v44 + 2))
  {
    v22 = 0;
    if (v44[3018] < v44[3019])
    {
      v22 = *v43 != -1.0;
    }

    v37 = v22;
    if (v22 && *&__DisplayUpdateCPMSBudgetInternal_prevCap > v38 || (__DisplayUpdateCPMSBudgetInternal_prevMinWasCLTM & 1) != 0 && *&__DisplayUpdateCPMSBudgetInternal_prevCap < v38)
    {
      v21 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      v21 = *MEMORY[0x1E695E4D0];
    }

    v36 = v21;
    __DisplayUpdateCPMSBudgetInternal_prevMinWasCLTM = v37;
    __DisplayUpdateCPMSBudgetInternal_prevCap = LODWORD(v38);
    (*(v44 + 2))(*(v44 + 3), @"CPMSCurrentCap", v21);
  }

  if (v43[2] != -1.0 && (*(v44 + 1517) & 1) != 0)
  {
    HDRAPLColumn = DisplayGetHDRAPLColumn(v44);
    v44[3017] = __DisplayPhysicalBrightnessToPowerInternal(v44, HDRAPLColumn, v43[2]);
    v44[3017] = fmaxf(v44[3017], v38);
    if (_logHandle)
    {
      v20 = _logHandle;
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

      v20 = inited;
    }

    v34 = v20;
    v33 = 1;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      log = v34;
      type = v33;
      __os_log_helper_16_0_0(v32);
      _os_log_impl(&dword_1DE8E5000, log, type, "CPMS:HDR cap changed: Resetting HDR Nit Cap", v32, 2u);
    }

    v44[3026] = v43[2];
    *(v44 + 64) = (v44[3026] * 65536.0);
    if (v42 >= v38)
    {
      if (v44[3045])
      {
        v16 = v44;
        v3 = __DisplayCPMSHDRFactor(v44, v44[3026]);
        __DisplaySetHDRFactorWithFade(v16, 0, 0, v3, 1.0);
      }

      else
      {
        v44[3027] = v43[2];
        v4 = *(v44 + 375);
        v31 = _DisplayComputeEDRNitsCap(v44);
        SetLibEDRBrightness(v44, v44[375], v31, v44[298], v44[3132]);
        *(v44 + 64) = (v44[3027] * 65536.0);
      }
    }
  }

  if (*(v44 + 1517))
  {
    if (v42 < v38)
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

      v29 = v13;
      v28 = 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v10 = v29;
        v11 = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_impl(&dword_1DE8E5000, v10, v11, "CPMS:CLTM/UPO cap raised: Resetting HDR Nit Cap", v27, 2u);
      }

      if (v44[3045])
      {
        *(v44 + 323);
        v45 = *(v44 + 3046);
        v26 = v44[3046];
        v9 = v44;
        v7 = __DisplayCPMSHDRFactor(v44, v44[3026]);
        __DisplaySetHDRFactorWithFade(v9, 0, 0, v7, v26);
      }

      else
      {
        v44[3027] = v44[3026];
        v8 = *(v44 + 375);
        v25 = _DisplayComputeEDRNitsCap(v44);
        SetLibEDRBrightness(v44, v44[375], v25, v44[298], v44[3132]);
        *(v44 + 64) = (v44[3027] * 65536.0);
      }
    }
  }

  else
  {
    v30 = ((v44[3045] & 1) == 1);
    v15 = v44;
    v14 = v44;
    v5 = DisplayPowerToPhysicalBrightness(v44, APLColumnOrDefault, v38);
    v6 = __DisplayCPMSHDRFactor(v14, v5);
    __DisplaySetHDRFactorWithFade(v15, 0, 0, v6, v30);
  }

  if (v43[2] != -1.0)
  {
    if (*(v44 + 2))
    {
      *&v2 = v43[2];
      (*(v44 + 2))(*(v44 + 3), @"CPMS.HDR.Cap", [MEMORY[0x1E696AD98] numberWithFloat:v2]);
    }
  }
}

void _DisplaySetBrightnessMaxPhysicalWithFade(uint64_t a1, float a2, float a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a3 = *(a1 + 376);
  }

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
    __os_log_helper_16_0_2_8_0_8_0(v21, COERCE__INT64(a2), COERCE__INT64(a3));
    _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEFAULT, "Thermal Brightness Cap: %f fadePeriod: %f", v21, 0x16u);
  }

  *(a1 + 460) = a2;
  *(a1 + 456) = _DisplayLogicalToSliderBrightnessInternal(a1, a2);
  *(a1 + 472) = a3;
  if (a3 == 0.0)
  {
    *(a1 + 464) = a2;
    if (*(a1 + 36))
    {
      _DisplaySetAmbient(a1, 0, *(a1 + 1184));
    }

    else
    {
      v14 = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2);
      *(a1 + 492) = v14;
      *(a1 + 496) = v14;
      *(a1 + 488) = v14;
      __DisplaySetLogicalBrightnessInternal(a1, 12298, *(a1 + 1256));
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
        __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v20, "MAX cap", COERCE__INT64(a2), COERCE__INT64(*(a1 + 1260)), COERCE__INT64(v14));
        _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: Thermal Brightness Cap: %f, nits = %f, P = %f", v20, 0x2Au);
      }
    }
  }

  else
  {
    *(a1 + 504) = 0;
    *(a1 + 512) = 0;
    *(a1 + 480) = CFAbsoluteTimeGetCurrent();
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
      __os_log_helper_16_0_3_8_0_8_0_8_0(v19, *(a1 + 472), *(a1 + 480), *(a1 + 12480));
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "fadePeriod=%f startTime=%f display->fade.timer=%p\n", v19, 0x20u);
    }

    v13 = (a2 - *(a1 + 464)) / a3;
    UpdateFrequency = __DisplayGetUpdateFrequency(a1, v13);
    *(a1 + 492) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 464));
    *(a1 + 496) = *(a1 + 492);
    *(a1 + 488) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2);
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
      __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v18, "MAX cap", COERCE__INT64(*(a1 + 464)), COERCE__INT64(a2), COERCE__INT64(*(a1 + 496)), COERCE__INT64(*(a1 + 488)), COERCE__INT64(a3), COERCE__INT64(v13), COERCE__INT64(UpdateFrequency));
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: begin ramp L: %0.2f -> %0.2f P: %0.2f -> %0.2f t: %f rate: %0.2f nits/s %0.2fhz", v18, 0x52u);
    }

    *&v3 = 1.0 / UpdateFrequency;
    __DisplayStartFadeWithType(a1, 18, v3);
  }

  *MEMORY[0x1E69E9840];
}

double CFXUpdateCompensatedBacklight(uint64_t a1, float a2)
{
  v2 = mach_absolute_time();
  *&v3 = a2;
  return _CFXUpdateCompensatedBacklight(a1, v2, v3);
}

void __DisplaySetHDRFactorWithFade(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, float a4, float a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a5 = *(a1 + 376);
  }

  v14 = 0.0;
  *(a1 + 12192) = a5;
  if (a4 > 1.0)
  {
    if (_logHandle)
    {
      v11 = _logHandle;
    }

    else
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v11 = v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_1_8_0(v21, COERCE__INT64(a4));
      _os_log_fault_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_FAULT, "Setting CPMS HDR factor %f which is > 1. This is likely a bug.", v21, 0xCu);
    }
  }

  if (*(a1 + 12192) == 0.0)
  {
    *(a1 + 12216) = a4;
    *(a1 + 12208) = a4;
    *(a1 + 12212) = a4;
    *(a1 + 12108) = __DisplayCPMSMaxHDRNits(a1) * a4;
    v5 = *(a1 + 1500);
    v13 = _DisplayComputeEDRNitsCap(a1);
    SetLibEDRBrightness(a1, *(a1 + 1500), v13, *(a1 + 1192), *(a1 + 12528));
    if (a2)
    {
      a2(a3);
    }

    *(a1 + 256) = (*(a1 + 12108) * 65536.0);
  }

  else
  {
    v12 = __DisplayCPMSHDRFactor(a1, *(a1 + 12108));
    if (!float_equal(v12, a4))
    {
      *(a1 + 12232) = a2;
      *(a1 + 12240) = a3;
      *(a1 + 12200) = CFAbsoluteTimeGetCurrent();
      v14 = *(a1 + 12488);
      if (v14 == 0.0)
      {
        v14 = 0.100000001;
      }

      *(a1 + 12212) = v12;
      *(a1 + 12216) = v12;
      *(a1 + 12208) = a4;
      HIDWORD(v6) = HIDWORD(v14);
      *&v6 = v14;
      __DisplayStartFadeWithType(a1, 9, v6);
    }
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
    v7 = v14;
    __os_log_helper_16_2_6_8_32_8_0_8_0_8_0_8_0_8_0(v20, "CPMS HDR Factor", COERCE__INT64(*(a1 + 12216)), COERCE__INT64(*(a1 + 12208)), *(a1 + 12192), COERCE__INT64(v7), COERCE__INT64(*(a1 + 12108)));
    _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %f -> %f t: %f interval: %0.2f currentHDRNitCap: %f", v20, 0x3Eu);
  }

  *MEMORY[0x1E69E9840];
}

void __DisplayStartFadeWithType(_BYTE *a1, int a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v28 = *&a3;
  v27 = a2;
  if ((a1[321] & 1) == 0 || v27 == 2)
  {
    if (*(v29 + 1560) && v28 < *(v29 + 3122))
    {
      dispatch_release(*(v29 + 1560));
      *(v29 + 1560) = 0;
    }

    if (*(v29 + 1560))
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

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_32(v30, "void __DisplayStartFadeWithType(DisplayRef, float, DisplayFadeType)");
        _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "%s: Reusing current ramp timer\n", v30, 0xCu);
      }
    }

    else
    {
      *(v29 + 3122) = v28;
      *(v29 + 1560) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v29 + 18));
      if (*(v29 + 1560))
      {
        v23 = (*(v29 + 3122) * 1000000000.0);
        dispatch_source_set_timer(*(v29 + 1560), 0, v23, 0);
        if (*(v29 + 160))
        {
          dispatch_set_context(*(v29 + 1560), v29);
          dispatch_source_set_event_handler_f(*(v29 + 1560), __DisplayFadeCallback);
        }

        else
        {
          block = MEMORY[0x1E69E9820];
          v17 = -1073741824;
          v18 = 0;
          v19 = ____DisplayStartFadeWithType_block_invoke;
          v20 = &__block_descriptor_40_e5_v8__0l;
          v21 = v29;
          v22 = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, &block);
          if (v22)
          {
            dispatch_source_set_event_handler(*(v29 + 1560), v22);
            _Block_release(v22);
          }
        }

        dispatch_resume(*(v29 + 1560));
      }

      else
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

        oslog = v10;
        v14 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v7 = oslog;
          v8 = v14;
          __os_log_helper_16_0_0(v13);
          _os_log_error_impl(&dword_1DE8E5000, v7, v8, "Could not create ramp timer\n", v13, 2u);
        }
      }
    }
  }

  else
  {
    v26 = 1.0 / v28;
    if ((*(v29 + 322) & 1) != 0 || (a3 = *(v29 + 1576), a3 > 0.0))
    {
      v26 = 120.0;
      LODWORD(a3) = 1123024896;
      [*(v29 + 26) setPreferredFramesPerSecond:a3];
      if ([*(v29 + 26) isPaused])
      {
        [*(v29 + 26) resume];
      }

      *(v29 + 54) = 1.0 / v26;
    }

    else if ([*(v29 + 26) isPaused])
    {
      *&v3 = v26;
      [*(v29 + 26) setPreferredFramesPerSecond:v3];
      [*(v29 + 26) resume];
      *(v29 + 54) = v28;
    }

    else if (v28 < *(v29 + 54))
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

      v25 = v12;
      v24 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v31, COERCE__INT64(v28), COERCE__INT64(*(v29 + 54)), COERCE__INT64(v26));
        _os_log_impl(&dword_1DE8E5000, v25, v24, "Requested interval: %fsec is lower than current: %fsec, update CADisplayLink to %fhz", v31, 0x20u);
      }

      *&v4 = v26;
      [*(v29 + 26) setPreferredFramesPerSecond:v4];
      *(v29 + 54) = v28;
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_2_6_8_32_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
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

void __DisplayFadeCallback(float *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v56 = a1;
  v55 = a1;
  if (a1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v53 = 0;
    v52 = 0;
    v51 = 0;
    v50 = 1;
    v49 = 1;
    v48 = 0;
    v47 = 0;
    v46 = 0;
    if (*(v55 + 173) > 0.0)
    {
      __DisplayFadeUpdateFactorFade(v55, v55 + 173, 1, Current);
      _DisplaySetBrightnessFactor(v55, v55[351]);
      if (*(v55 + 173) <= 0.0)
      {
        kdebug_trace();
        v51 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 51) > 0.0)
    {
      __DisplayFadeUpdateFade(Current, v55, (v55 + 102));
      if (!getClientOverrideState(v55, 1) || v55[100] > v55[242] || v55[99] > v55[242])
      {
        v55[100] = _DisplayPerceptualLuminanceToLuminanceInternal(v55, v55[107]);
      }

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

      v45 = v27;
      v44 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v59, COERCE__INT64(v55[100]));
        _os_log_debug_impl(&dword_1DE8E5000, v45, v44, "display->brightness.restriction.min.Lcurrent=%f\n", v59, 0xCu);
      }

      if (*(v55 + 51) <= 0.0)
      {
        v52 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 59) > 0.0)
    {
      __DisplayFadeUpdateFade(Current, v55, (v55 + 118));
      v55[116] = _DisplayPerceptualLuminanceToLuminanceInternal(v55, v55[123]);
      if (*(v55 + 59) <= 0.0)
      {
        v52 = 1;
      }

      else
      {
        v50 = 0;
      }

      if (_DisplayCLTMRev2Applicable(v55) && *(v55 + 389) == 1 && (v50 & 1) == 1 && v55[388] == 0.0)
      {
        v55[116] = 0.0;
      }

      v53 = 1;
    }

    if (*(v55 + 74) > 0.0)
    {
      __DisplayFadeUpdateFade(Current, v55, (v55 + 148));
      v55[132] = _DisplayPerceptualLuminanceToLuminanceInternal(v55, v55[153]);
      if (*(v55 + 74) <= 0.0)
      {
        v52 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 98) > 0.0)
    {
      __DisplayFadeUpdateFade(Current, v55, (v55 + 196));
      v55[195] = _DisplayPerceptualLuminanceToLuminanceInternal(v55, v55[201]);
      if (*(v55 + 98) <= 0.0)
      {
        v52 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 83) > 0.0)
    {
      __DisplayFadeUpdateFactorFade(v55, v55 + 83, 0, Current);
      v55[162] = v55[171];
      v1 = 0.5 * (v55[162] - 0.8) / 0.199999988 + 0.5;
      v43 = v1;
      _DisplayReduceBacklightCompensation(v55, v1);
      if (*(v55 + 83) <= 0.0)
      {
        v51 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 91) > 0.0)
    {
      __DisplayFadeUpdateFade(Current, v55, (v55 + 182));
      v55[181] = _DisplayPerceptualLuminanceToLuminanceInternal(v55, v55[187]);
      if (*(v55 + 91) <= 0.0)
      {
        v52 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 124) > 0.0)
    {
      __DisplayFadeUpdateRestrictionFactorFade(Current, v55, (v55 + 248));
      v55[246] = v55[253];
      if (*(v55 + 124) <= 0.0)
      {
        v51 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 133) > 0.0)
    {
      __DisplayFadeUpdateRestrictionFactorFade(Current, v55, (v55 + 266));
      v55[264] = v55[271];
      if (*(v55 + 133) <= 0.0)
      {
        v51 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 1620) > 0.0)
    {
      __DisplayFadeUpdateAuroraFactorFade(v55, (v55 + 3240), Current);
      v55[3238] = v55[3245];
      if (*(v55 + 1620) <= 0.0)
      {
        v51 = 1;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 167) <= 0.0)
    {
      v55[70] = -1.0;
    }

    else
    {
      __DisplayFadeUpdateFade(Current, v55, (v55 + 334));
      if (v55[87] == 0.0 && v55[339] == 0.0)
      {
        v55[314] = 0.0;
      }

      else
      {
        v55[314] = _DisplayPerceptualLuminanceToLuminanceInternal(v55, v55[339]);
      }

      if (*(v55 + 167) <= 0.0)
      {
        v52 = 1;
        v55[70] = -1.0;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 41) && ([*(v55 + 41) isActive] & 1) != 0 && *objc_msgSend(*(v55 + 41), "fade") > 0.0)
    {
      __DisplayFadeUpdateFactorFade(v55, [*(v55 + 41) fade], 0, Current);
      if (*[*(v55 + 41) fade] > 0.0)
      {
        v50 = 0;
      }

      v53 = 1;
    }

    if (*(v55 + 180) > 0.0)
    {
      __DisplayFadeUpdateFade(Current, v55, (v55 + 360));
      if (v55[87] == 0.0 && v55[365] == 0.0)
      {
        v55[372] = 0.0;
      }

      else
      {
        v55[372] = _DisplayPerceptualLuminanceToLuminanceInternal(v55, v55[365]);
      }

      if (*(v55 + 180) <= 0.0)
      {
        v48 = 1;
      }

      else
      {
        v49 = 0;
      }
    }

    if (*(v55 + 1563))
    {
      if (*(v55 + 12521))
      {
        *(v55 + 12521) = CFXUpdateColorFade(*(v55 + 1563), Current);
        if (*(v55 + 12521))
        {
          v50 = 0;
        }
      }
    }

    if (*(v55 + 1524) > 0.0)
    {
      v2 = CFAbsoluteTimeGetCurrent();
      __DisplayFadeUpdateFactorFade(v55, v55 + 1524, 0, v2);
      if (*(v55 + 1524) > 0.0)
      {
        v50 = 0;
      }

      v42 = __DisplayCPMSMaxHDRNits(v55) * v55[3053];
      v55[3027] = v42;
      v3 = *(v55 + 375);
      v41 = _DisplayComputeEDRNitsCap(v55);
      SetLibEDRBrightness(v55, v55[375], v41, v55[298], v55[3132]);
      *(v55 + 64) = (v55[3027] * 65536.0);
      v47 = 1;
    }

    if (*(v55 + 1576) > 0.0)
    {
      __DisplayFastEDRUpdateFade(Current, v55, (v55 + 3152));
      if (*(v55 + 1576) > 0.0)
      {
        v50 = 0;
      }

      v47 = 1;
    }

    if (*(v55 + 1582) > 0.0)
    {
      __DisplayRTPLCEDRUpdateFade(v55, (v55 + 3164), Current);
      if (*(v55 + 1582) > 0.0)
      {
        v50 = 0;
        *(v55 + 12704) = 1;
      }

      v47 = 1;
    }

    if (v55[3178])
    {
      v53 = 1;
      v50 = 0;
    }

    if ((*(v55 + 321) & 1) != 0 && (CBU_PassContrastEnhancerStrengthThroughSyncDBV() & 1) != 0 && (v55[3062] & 1) != 0 && *(v55 + 1550) > 0.0)
    {
      v4 = CFAbsoluteTimeGetCurrent();
      __DisplayFadeUpdateFactorFade(v55, v55 + 1550, 0, v4);
      v55[3098] = clamp(v55[3105], v55[3114], v55[3115]);
      if (*(v55 + 1550) > 0.0)
      {
        v50 = 0;
      }

      v46 = 1;
    }

    if (*(v55 + 33) && ([*(v55 + 33) isDisplayRampRunning] & 1) != 0 && (*(v55 + 321) & 1) != 0)
    {
      if (![+[CBAODState isAODActive] sharedInstance]
      {
        v50 = 0;
      }

      v46 = 1;
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

      v40 = v25;
      v39 = 2;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v22 = v40;
        v23 = v39;
        __os_log_helper_16_0_0(v38);
        _os_log_debug_impl(&dword_1DE8E5000, v22, v23, "External ramp forced SyncDBV update", v38, 2u);
      }
    }

    if (*(v55 + 105) > 0.0)
    {
      __DisplayFadeUpdateFade(Current, v55, (v55 + 210));
      v55[208] = _DisplayPerceptualLuminanceToLuminanceInternal(v55, v55[215]);
      if (*(v55 + 105) <= 0.0)
      {
        v55[208] = 100.0;
      }

      else
      {
        v50 = 0;
      }

      v53 = 1;
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

    v37 = v21;
    v36 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v58, v53 & 1, v48 & 1, v47 & 1, v46 & 1);
      _os_log_debug_impl(&dword_1DE8E5000, v37, v36, "Display fade callback: updateBrightness = %d, updateVirtual = %d, updateEDRHeadroom = %d, forceSyncDBVUpdate = %d", v58, 0x1Au);
    }

    if (v53 & 1) != 0 || (v48 & 1) != 0 || (v47 & 1) != 0 || (v46)
    {
      if (*(v55 + 9))
      {
        v55[98] = _DisplayLogicalToSliderBrightnessInternal(v55, v55[100]);
        v55[114] = _DisplayLogicalToSliderBrightnessInternal(v55, v55[116]);
        v19 = v55;
        v5 = __DisplayCalculateBrightnessFromFactorChange(v55, *(v55 + 51));
        __DisplaySetLogicalBrightnessLegacy(v19, 6u, v5, 0.0);
      }

      else
      {
        v35 = *(v55 + 332) | 1;
        if (v52)
        {
          v35 |= 0x3000u;
        }

        if (v48)
        {
          v35 |= 0x2000u;
        }

        if (v51)
        {
          v35 |= 0x3008u;
        }

        if ((v53 & 1) == 0)
        {
          v35 |= 0x4000u;
        }

        if (v47)
        {
          v35 |= 0x40u;
        }

        if (v46)
        {
          v35 |= 0x100u;
        }

        __DisplaySetLogicalBrightnessInternal(v55, v35, v55[314]);
      }
    }

    if ((*(v55 + 321) & 1) == 0 || (CBU_PassContrastEnhancerStrengthThroughSyncDBV() & 1) == 0)
    {
      if (*(v55 + 12282))
      {
        if ((v55[3062] & 1) != 0 && *(v55 + 1550) > 0.0)
        {
          v18 = v55;
          v6 = CFAbsoluteTimeGetCurrent();
          __DisplayFadeUpdateFactorFade(v18, v55 + 1550, 0, v6);
          if (*(v55 + 1550) > 0.0)
          {
            v50 = 0;
          }

          __DisplaySetAAPFactor(v55, v55[3105]);
        }
      }

      else if ((v55[3062] & 1) != 0 && *(v55 + 197) > 0.0)
      {
        __DisplayFadeUpdateFade(Current, v55, (v55 + 394));
        v55[393] = _DisplayPerceptualLuminanceToReflectedLuminanceInternal(v55, v55[399]);
        if (*(v55 + 197) > 0.0)
        {
          v50 = 0;
        }

        __DisplayUpdateAAPFactor(v55);
      }
    }

    if (v50)
    {
      if (*(v55 + 321))
      {
        if (([*(v55 + 26) isPaused] & 1) == 0)
        {
          [*(v55 + 26) pause];
        }
      }

      else if ((v49 & 1) != 0 && *(v55 + 1560))
      {
        dispatch_release(*(v55 + 1560));
        *(v55 + 1560) = 0;
      }
    }

    if ((v49 & 1) != 0 && (*(v55 + 321) & 1) != 0 && *(v55 + 1560))
    {
      dispatch_release(*(v55 + 1560));
      *(v55 + 1560) = 0;
    }

    if (v50 & 1) != 0 && (v49)
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

      v34 = v17;
      v33 = OS_SIGNPOST_EVENT;
      v32 = 0xEEEEB0B5B2B2EEEELL;
      if (os_signpost_enabled(v17))
      {
        v13 = v34;
        v14 = v33;
        spid = v32;
        __os_log_helper_16_0_0(v31);
        _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v13, v14, spid, "DisplayFadeEndRamp", &unk_1DEAD656F, v31, 2u);
      }

      if ((v55[3062] & 1) != 0 && v55[87] == 0.0)
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

        oslog = v12;
        v29 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v9 = oslog;
          v10 = v29;
          __os_log_helper_16_0_0(v28);
          _os_log_debug_impl(&dword_1DE8E5000, v9, v10, "Resetting AAP cache", v28, 2u);
        }

        v55[3098] = 0.0;
        v55[392] = 0.0;
        v55[393] = 0.0;
      }

      if (v55[87] == 0.0 && v55[3124] >= 0.0)
      {
        __DisplaySetBrightness(v55, *(v55 + 3125), v55[3124]);
        v55[3124] = -1.0;
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
        __os_log_helper_16_2_6_8_32_8_0_8_0_8_0_8_0_8_0(v57, "Unknown", COERCE__INT64(v55[315]), COERCE__INT64(v55[314]), COERCE__INT64(v55[99]), COERCE__INT64(v55[115]), COERCE__INT64(v55[87]));
        _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: End ramp: Ldevice = %f, Lcurrent = %f, Lmin = %f, Lmax = %f, Factor = %f", v57, 0x3Eu);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void SetBLDriverNitsCapIfNotInLPM(uint64_t a1, int a2)
{
  if ((*(a1 + 1504) & 1) == 0 && (*(a1 + 232) & 1) == 0)
  {
    SetBLDriverNitsCap(a1, a2);
  }

  *(a1 + 1512) = a2;
}

void SetBLDriverNitsCap(const void *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a1;
  valuePtr = a2;
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
    __os_log_helper_16_0_1_8_0(v11, COERCE__INT64((valuePtr / 65536.0)));
    _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "SetBLDriverNitsCap to %f", v11, 0xCu);
  }

  if (valuePtr == *(v9 + 284))
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
      __os_log_helper_16_0_1_8_0(v10, COERCE__INT64((valuePtr / 65536.0)));
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "SetBLDriverNitsCap: cap unchanged (%f), skipping", v10, 0xCu);
    }
  }

  else
  {
    v2 = CFGetAllocator(v9);
    cf = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    if (cf)
    {
      __DisplaySetBLDriverProperty(v9, @"brightness-nits-cap", cf);
      *(v9 + 284) = valuePtr;
      CFRelease(cf);
    }
  }

  *MEMORY[0x1E69E9840];
}

float DisplayNits2milliAmps(uint64_t a1, int a2)
{
  v5 = IOFixedDivide(a2, (*(a1 + 1324) * 65536.0));
  v2 = IOFixedMultiply(v5, v5);
  v4 = IOFixedMultiply(v2, *(a1 + 292));
  return (v4 + IOFixedMultiply(*(a1 + 296), v5) + *(a1 + 300)) / 65536.0;
}

void CFXSetWeakestAmbientAdaptationMode(uint64_t a1, uint64_t a2, int a3, float a4)
{
  if (a1 && *(a1 + 96))
  {
    v8 = 1.0;
    v7 = 0;
    v6 = *(*(a1 + 96) + 248);
    for (i = 0; i < a3; ++i)
    {
      v4 = _CFXGetStrengthFromMode(a1, *(a2 + 4 * i));
      if (v4 <= v8)
      {
        v8 = v4;
        v6 = *(a2 + 4 * i);
        v7 = 1;
      }
    }

    syslog(7, "Min strength %f\n", v8);
    if (v7)
    {
      if (*(*(a1 + 96) + 184))
      {
        CFXSetAmbientAdaptationStrength(a1, v8, a4);
      }

      *(*(a1 + 96) + 248) = v6;
    }
  }
}

void __DisplayFadeUpdateFactorFade(uint64_t a1, double *a2, int a3, double a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v28 = a4;
  v27 = a2;
  v26 = a3;
  v25 = a4 - a2[1];
  v24 = v25 / *a2;
  if (a3 && *(v29 + 84) && !*(v29 + 104) && *(v27 + 4) > 0.0 && !*(v29 + 88))
  {
    if (*(v29 + 96) == 0.0)
    {
      *(v29 + 96) = v28;
    }

    if (v28 - *(v29 + 96) < 1.0)
    {
      v27[1] = v28;
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

      oslog = v17;
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        log = oslog;
        v15 = type;
        __os_log_helper_16_0_0(v21);
        _os_log_debug_impl(&dword_1DE8E5000, log, v15, "Delaying Ramp Start\n", v21, 2u);
      }

      goto LABEL_49;
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

    v20 = v13;
    v19 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v10 = v20;
      v11 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_debug_impl(&dword_1DE8E5000, v10, v11, "Ramp delay hit timeout\n", v18, 2u);
    }
  }

  if (v24 >= 1.0)
  {
    v5 = fmin(1.0, *(v27 + 4));
    *(v27 + 5) = v5;
    if (v26)
    {
      *(v29 + 88) = 0;
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
      __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v30, *&v28, *&v25, *v27, *&v24, COERCE__INT64(*(v27 + 6)), COERCE__INT64(*(v27 + 4)));
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "now=%f delta=%f fade->period=%f portion=%f fade->Fstart=%f fade->Ftarget=%f [finished]\n", v30, 0x3Eu);
    }

    if (*(v27 + 5))
    {
      (*(v27 + 5))(*(v27 + 6));
    }

    *v27 = 0.0;
  }

  else
  {
    v4 = __DisplayFadeComputeCurrentFactor(v27, v24);
    *(v27 + 5) = v4;
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
      __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v31, *&v28, *&v25, *v27, *&v24, COERCE__INT64(*(v27 + 6)), COERCE__INT64(*(v27 + 4)), COERCE__INT64(*(v27 + 5)));
      _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "now=%f delta=%f fade->period=%f portion=%f fade->Fstart=%f fade->Ftarget=%f Factor=%f\n", v31, 0x48u);
    }
  }

LABEL_49:
  *MEMORY[0x1E69E9840];
}

float __DisplayFadeComputeCurrentFactor(float *a1, double a2)
{
  v2 = a1[7] + a1[8] * a2 + a1[9] * a2 * a2;
  v3 = fmin(1.0, (a1[6] + ((a1[4] - a1[6]) * v2)));
  return fmax(0.0, v3);
}

void __DisplaySetLogicalBrightnessInternal(const void *a1, int a2, float a3)
{
  v206 = *MEMORY[0x1E69E9840];
  cf = a1;
  v181 = a3;
  v180 = a2;
  v179 = 0.0;
  if ((a2 & 0x8000) != 0)
  {
    *(cf + 319) = *(cf + 314);
    *(cf + 374) = *(cf + 372);
    *(cf + 320) = *(cf + 315);
    *(cf + 3140) = *(cf + 3138);
  }

  *(cf + 3138) = v181;
  *(cf + 314) = v181;
  if (!*(cf + 10))
  {
    *(cf + 372) = v181;
  }

  if ((*(cf + 12548) & 1) == 0)
  {
    if ((*(cf + 1144) & 1) != 0 && *(cf + 287) != 0.0)
    {
      v181 = *(cf + 287);
    }

    if (getClientOverrideState(cf, 0) && *(cf + 241) != 0.0)
    {
      v181 = *(cf + 241);
    }

    v178 = __DisplayLogicalToPhysicalBrightness(cf, v181);
    if (*(cf + 87) == 1.0 && *(cf + 314) < *(cf + 131) && *(cf + 131) > *(cf + 100) && *(cf + 132) > *(cf + 131))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v3 = Current - *(cf + 72) - *(cf + 71);
      v176 = fmaxf(v3, 0.0);
      if (v176 > 0.0)
      {
        *(cf + 74) = 0;
        *(cf + 132) = *(cf + 131);
        v175 = _DisplayLuminanceToPerceptualLuminanceInternal(cf, *(cf + 131));
        *(cf + 153) = v175;
        *(cf + 154) = v175;
        *(cf + 152) = v175;
        if (_logHandle)
        {
          v77 = _logHandle;
        }

        else
        {
          v76 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v77 = v76;
        }

        oslog = v77;
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_8_0_8_0(v205, COERCE__INT64(*(cf + 132)), COERCE__INT64(*(cf + 314)));
          _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Display: Update weak cap to %f on low brightness %f", v205, 0x16u);
        }
      }
    }

    v178 = fminf(v178, *(cf + 132));
    valuePtr = v178;
    if ((*(cf + 1144) & 1) == 0)
    {
      v75 = *(cf + 160);
      if (v75 == 1)
      {
        if (*(cf + 162) != 1.0)
        {
          valuePtr = valuePtr * *(cf + 162);
          if (_logHandle)
          {
            v74 = _logHandle;
          }

          else
          {
            v73 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v74 = v73;
          }

          v171 = v74;
          v170 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_8_0_8_0(v204, COERCE__INT64(*(cf + 162)), COERCE__INT64(valuePtr));
            _os_log_debug_impl(&dword_1DE8E5000, v171, v170, "EcoModeFactor: %0.2f -> L_device: %f\n", v204, 0x16u);
          }
        }
      }

      else if (v75 == 2)
      {
        v169 = *(cf + 195);
        if ((*(cf + 55) || *(cf + 98) != 0.0) && valuePtr > v169)
        {
          if (_logHandle)
          {
            v72 = _logHandle;
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

            v72 = inited;
          }

          v168 = v72;
          v167 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_8_0_8_0(v203, COERCE__INT64(v169), COERCE__INT64(valuePtr));
            _os_log_debug_impl(&dword_1DE8E5000, v168, v167, "EcoModeLimit: %f -> L_device: %f\n", v203, 0x16u);
          }

          valuePtr = v169;
        }
      }
    }

    if (*(cf + 41))
    {
      if ([*(cf + 41) isActive])
      {
        valuePtr = valuePtr * *([*(cf + 41) fade] + 20);
        if (*([*(cf + 41) fade] + 20) != 1.0)
        {
          if (_logHandle)
          {
            v70 = _logHandle;
          }

          else
          {
            v69 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v70 = v69;
          }

          v166 = v70;
          v165 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_8_0_8_0(v202, COERCE__INT64(*([*(cf + 41) fade] + 20)), COERCE__INT64(valuePtr));
            _os_log_debug_impl(&dword_1DE8E5000, v166, v165, "SoftWakeFactor: %0.2f -> L_device: %f", v202, 0x16u);
          }
        }
      }
    }

    v164 = *(cf + 244);
    v163 = *(cf + 245);
    if ((*(cf + 1144) & 1) == 0)
    {
      if (v164 == v163 || (*(cf + 1048) & 1) != 0 || (*(cf + 1120) & 1) != 0)
      {
        if (valuePtr > v164 || valuePtr == 0.0)
        {
          if (valuePtr > v164 && (*(cf + 1120) & 1) == 0)
          {
            v151 = (v164 - (*(cf + 264) * *(cf + 328))) / (v164 - *(cf + 328));
            valuePtr = v164 - (v151 * (v164 - valuePtr));
            if (_logHandle)
            {
              v62 = _logHandle;
            }

            else
            {
              v61 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v62 = v61;
            }

            v150 = v62;
            v149 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_3_8_0_8_0_8_0(v198, COERCE__INT64(v151), COERCE__INT64(valuePtr), COERCE__INT64(*(cf + 264)));
              _os_log_debug_impl(&dword_1DE8E5000, v150, v149, "Min scaler: %f  %f %f", v198, 0x20u);
            }
          }
        }

        else if ((*(cf + 1048) & 1) == 0)
        {
          v154 = (v164 - (*(cf + 246) * *(cf + 330))) / (v164 - *(cf + 330));
          valuePtr = v164 - (v154 * (v164 - valuePtr));
          if (_logHandle)
          {
            v64 = _logHandle;
          }

          else
          {
            v63 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v64 = v63;
          }

          v153 = v64;
          v152 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_3_8_0_8_0_8_0(v199, COERCE__INT64(v154), COERCE__INT64(valuePtr), COERCE__INT64(*(cf + 246)));
            _os_log_debug_impl(&dword_1DE8E5000, v153, v152, "Min scaler: %f  %f %f", v199, 0x20u);
          }
        }
      }

      else if (valuePtr > 0.0)
      {
        v162 = valuePtr;
        v161 = 0.0;
        if (valuePtr > v163)
        {
          v161 = (v163 - (*(cf + 264) * *(cf + 328))) / (v163 - *(cf + 328));
          v162 = v163 - (v161 * (v163 - valuePtr));
        }

        if (v162 <= v164)
        {
          v158 = 0.0;
          v157 = (v164 - (*(cf + 246) * *(cf + 330))) / (v164 - *(cf + 330));
          v158 = v164 - (v157 * (v164 - v162));
          if (_logHandle)
          {
            v66 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v65 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v65 = init_default_corebrightness_log();
            }

            v66 = v65;
          }

          v156 = v66;
          v155 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v200, COERCE__INT64(valuePtr), COERCE__INT64(v158), COERCE__INT64(v157), COERCE__INT64(*(cf + 246)));
            _os_log_debug_impl(&dword_1DE8E5000, v156, v155, "Pivoting - LEFT restriction: L_device %f -> %f, ScalerMin = %f, Fmin = %f", v200, 0x2Au);
          }

          valuePtr = v158;
        }

        else
        {
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

          v160 = v68;
          v159 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v201, COERCE__INT64(valuePtr), COERCE__INT64(v162), COERCE__INT64(v161), COERCE__INT64(*(cf + 264)));
            _os_log_debug_impl(&dword_1DE8E5000, v160, v159, "Pivoting - RIGHT restriction: L_device %f -> %f, ScalerMax = %f, Fmax = %f", v201, 0x2Au);
          }

          valuePtr = v162;
        }
      }
    }

    if (valuePtr > 0.0)
    {
      if (!*(cf + 57) && *(cf + 105) != 0.0)
      {
        *(cf + 214) = _DisplayLuminanceToPerceptualLuminanceInternal(cf, valuePtr);
      }

      if (*(cf + 57) || *(cf + 105) != 0.0)
      {
        valuePtr = fminf(valuePtr, *(cf + 208));
      }
    }

    v148 = *(cf + 328);
    if ((*(cf + 1120) & 1) == 0)
    {
      v148 = v148 * *(cf + 264);
    }

    v148 = fminf(fminf(v148, *(cf + 116)), *(cf + 132));
    if (*(cf + 285) < 1.0)
    {
      v148 = *(cf + 330) + (*(cf + 285) * (v148 - *(cf + 330)));
    }

    if (!getClientOverrideState(cf, 0))
    {
      valuePtr = valuePtr * *(cf + 3238);
      v148 = v148 * *(cf + 3238);
    }

    v147 = *(cf + 181);
    if ((*(cf + 56) || *(cf + 91) != 0.0) && valuePtr > v147)
    {
      if (_logHandle)
      {
        v60 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v59 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v59 = init_default_corebrightness_log();
        }

        v60 = v59;
      }

      v146 = v60;
      v145 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v197, COERCE__INT64(v147), COERCE__INT64(valuePtr));
        _os_log_debug_impl(&dword_1DE8E5000, v146, v145, "Domino ModeLimit: %f -> L_device: %f\n", v197, 0x16u);
      }

      valuePtr = v147;
      v148 = fminf(v148, v147);
    }

    v144 = (v148 * 65536.0);
    v179 = _DisplayComputeEDRNitsCap(cf);
    v143 = (v179 * 65536.0);
    if (_logHandle)
    {
      v58 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v57 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v57 = init_default_corebrightness_log();
      }

      v58 = v57;
    }

    v142 = v58;
    v141 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      if (*(cf + 1120))
      {
        v56 = 0.0;
      }

      else
      {
        v56 = *(cf + 264);
      }

      __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v196, COERCE__INT64(*(cf + 116)), COERCE__INT64(*(cf + 132)), COERCE__INT64(*(cf + 285)), COERCE__INT64(v56), COERCE__INT64(v179));
      _os_log_debug_impl(&dword_1DE8E5000, v142, v141, "SetLogicalBrightnessInternal caps: cltm %f,  weakcap: %f, gl.scalar: %f, dyn.sl: %f, edrcap: %f", v196, 0x34u);
    }

    if (_logHandle)
    {
      v55 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v54 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v54 = init_default_corebrightness_log();
      }

      v55 = v54;
    }

    v140 = v55;
    v139 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_8_0_8_0(v195, COERCE__INT64(v148), COERCE__INT64(v179));
      _os_log_debug_impl(&dword_1DE8E5000, v140, v139, "Caps after global scaling: nitsCap=%f nitsCapEDR=%f", v195, 0x16u);
    }

    v138 = *(cf + 283) / 65536.0;
    if (*(cf + 3150) == 2)
    {
      if (_logHandle)
      {
        v53 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v52 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v52 = init_default_corebrightness_log();
        }

        v53 = v52;
      }

      v137 = v53;
      v136 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v194, COERCE__INT64(v138), COERCE__INT64(v179));
        _os_log_debug_impl(&dword_1DE8E5000, v137, v136, "SLBI EDR_ENABLED current=%f, calculated=%f", v194, 0x16u);
      }
    }

    else if (*(cf + 3150) == 1)
    {
      if (_logHandle)
      {
        v51 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v50 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v50 = init_default_corebrightness_log();
        }

        v51 = v50;
      }

      v135 = v51;
      v134 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v193, COERCE__INT64(v138), COERCE__INT64(v179));
        _os_log_debug_impl(&dword_1DE8E5000, v135, v134, "SLBI EDR_DISABLED_RAMP_PENDING current=%f, calculated=%f", v193, 0x16u);
      }
    }

    else
    {
      if (_logHandle)
      {
        v49 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v48 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v48 = init_default_corebrightness_log();
        }

        v49 = v48;
      }

      v133 = v49;
      v132 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v192, COERCE__INT64(v138), COERCE__INT64(v179));
        _os_log_debug_impl(&dword_1DE8E5000, v133, v132, "SLBI other current=%f, calculated=%f", v192, 0x16u);
      }
    }

    if (*(cf + 3150) == 2 || *(cf + 3150) == 1)
    {
      if (v143 != *(cf + 283))
      {
        if (_logHandle)
        {
          v47 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v46 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v46 = init_default_corebrightness_log();
          }

          v47 = v46;
        }

        v131 = v47;
        v130 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v191, COERCE__INT64((v143 / 65536.0)));
          _os_log_debug_impl(&dword_1DE8E5000, v131, v130, "SetBLDriverNitsCap for EDR_ENABLED | EDR_DISABLED_RAMP_PENDING in setlogicalbrightnessinternal to %f", v191, 0xCu);
        }

        if ((*(cf + 1517) & 1) == 0)
        {
          SetBLDriverNitsCapIfNotInLPM(cf, v143);
        }

        *(cf + 283) = v143;
      }

      if (v144 != *(cf + 282))
      {
        *(cf + 282) = v144;
      }
    }

    else if (v144 != *(cf + 282))
    {
      if (_logHandle)
      {
        v45 = _logHandle;
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

      v129 = v45;
      v128 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v190, COERCE__INT64(v148));
        _os_log_debug_impl(&dword_1DE8E5000, v129, v128, "Changing nitsCap to %f\n", v190, 0xCu);
      }

      if (_logHandle)
      {
        v43 = _logHandle;
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

      v127 = v43;
      v126 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v40 = v127;
        v41 = v126;
        __os_log_helper_16_0_0(v125);
        _os_log_debug_impl(&dword_1DE8E5000, v40, v41, "SetBLDriverNitsCap for !EDR_ENABLED in setlogicalbrightnessinternal", v125, 2u);
      }

      SetBLDriverNitsCapIfNotInLPM(cf, v144);
      *(cf + 282) = v144;
    }

    if (*(cf + 87) > 0.0)
    {
      if (_DisplayCLTMRev2Applicable(cf))
      {
        if (*(cf + 389) == 1 && *(cf + 388) == 0.0 && *(cf + 123) == 0.0)
        {
          valuePtr = 0.0;
        }

        else
        {
          valuePtr = fminf(valuePtr, *(cf + 116));
          valuePtr = fmaxf(valuePtr, *(cf + 100));
          valuePtr = fmaxf(valuePtr, *(cf + 330));
          valuePtr = fminf(valuePtr, *(cf + 328));
        }
      }

      else
      {
        valuePtr = fmaxf(valuePtr, *(cf + 100));
        if (float_equal(*(cf + 3238), 1.0) || *(cf + 116) < *(cf + 3256))
        {
          valuePtr = fminf(valuePtr, *(cf + 116));
        }

        if (*(cf + 285) < 1.0)
        {
          valuePtr = *(cf + 330) + (*(cf + 285) * (valuePtr - *(cf + 330)));
          if (_logHandle)
          {
            v39 = _logHandle;
          }

          else
          {
            v38 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v39 = v38;
          }

          v124 = v39;
          v123 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_1_8_0(v189, COERCE__INT64(valuePtr));
            _os_log_debug_impl(&dword_1DE8E5000, v124, v123, "Brightness after global scaling: %f", v189, 0xCu);
          }
        }

        if ([+[CBAODState isAODActive] sharedInstance]
        {
          valuePtr = fmaxf(valuePtr, *(cf + 385));
        }

        else
        {
          valuePtr = fmaxf(valuePtr, *(cf + 330));
        }

        if (float_equal(*(cf + 3238), 1.0))
        {
          valuePtr = fminf(valuePtr, *(cf + 328));
          valuePtr = fminf(valuePtr, *(cf + 132));
        }

        else
        {
          valuePtr = fminf(valuePtr, *(cf + 386));
        }
      }
    }

    if ((*(cf + 972) & 1) != 0 && valuePtr != 0.0 && (*(cf + 1284) & 1) == 0 && (v180 & 0x100) == 0 && (v180 & 0x8000) == 0 && (v180 & 0x1000) == 0 && ((*(cf + 321) & 1) == 0 || (v180 & 0x40) == 0) && vabds_f32(*(cf + 317), valuePtr) <= 0.003 * *(cf + 317) && (*(cf + 12712) & 1) == 0)
    {
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

      v122 = v37;
      v121 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v188, COERCE__INT64(*(cf + 317)), COERCE__INT64(valuePtr));
        _os_log_debug_impl(&dword_1DE8E5000, v122, v121, "Skip processing of backlight update - L = %f -> %f", v188, 0x16u);
      }

      if ((*(cf + 321) & 1) == 0 && (CBU_ForceUpdateFrequencyAndFrameSkip() & 1) != 0 && !*(cf + 3150))
      {
        *(cf + 317) = 0;
      }

      goto LABEL_382;
    }

    if ((v180 & 0x8000) == 0)
    {
      *(cf + 317) = valuePtr;
    }

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

    v120 = v35;
    v119 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v187, COERCE__INT64(*(cf + 87)), COERCE__INT64(*(cf + 314)), COERCE__INT64(*(cf + 116)), COERCE__INT64(*(cf + 100)), COERCE__INT64(*(cf + 328)), COERCE__INT64(*(cf + 330)), COERCE__INT64(valuePtr));
      _os_log_debug_impl(&dword_1DE8E5000, v120, v119, "Factor=%f Lcurrent=%f maxRestriction=%f minRestriction=%f maxPanel=%f minPanel=%f L_device=%f", v187, 0x48u);
    }

    if ((v180 & 0x8000) != 0)
    {
      valuePtr = *(cf + 3138);
    }

    v118 = (valuePtr * 65536.0);
    *(cf + 315) = valuePtr;
    if ((v180 & 0x8000) == 0)
    {
      v117 = 0;
      HIDWORD(v117) = *(cf + 315);
      LODWORD(v117) = 1;
      __DisplayUpdateAAPStateInternal(cf, &v117, 0);
    }

    value = 0;
    if ((v180 & 0x2000) != 0)
    {
      v115 = __DisplayLogicalToPhysicalBrightness(cf, *(cf + 318));
      if (*(cf + 162) != 1.0)
      {
        v115 = v115 * *(cf + 162);
        if (_logHandle)
        {
          v33 = _logHandle;
        }

        else
        {
          v32 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v33 = v32;
        }

        v114 = v33;
        v113 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_8_0_8_0(v186, COERCE__INT64(*(cf + 162)), COERCE__INT64(v115));
          _os_log_debug_impl(&dword_1DE8E5000, v114, v113, "EcoModeFactor: %0.2f -> L_physicalVirtual: %f\n", v186, 0x16u);
        }
      }

      if (*(cf + 87) > 0.0)
      {
        v115 = fminf(fmaxf(fminf(fminf(fmaxf(v115, *(cf + 100)), *(cf + 116)), *(cf + 132)), *(cf + 330)), *(cf + 328));
      }

      v112 = (v115 * 65536.0);
      v29 = cf;
      v4 = DisplayNits2milliAmps(cf, v112);
      v111 = DisplayMilliAmpsToMilliWatts(v29, v4);
      v30 = cf;
      v5 = DisplayNits2milliAmps(cf, v118);
      v110 = DisplayMilliAmpsToMilliWatts(v30, v5);
      v31 = 0;
      if (*(cf + 3179) == 1)
      {
        v31 = *(cf + 12181) ^ 1;
      }

      v109 = v31 & 1;
      if (*(cf + 12181))
      {
        APLColumnOrDefault = 100;
        if (*(cf + 3179) == 1)
        {
          APLColumnOrDefault = 50;
        }

        APLColumnOrDefault = DisplayGetAPLColumnOrDefault(cf, APLColumnOrDefault);
        v111 = __DisplayPhysicalBrightnessToPowerInternal(cf, APLColumnOrDefault, v115);
        v110 = __DisplayPhysicalBrightnessToPowerInternal(cf, APLColumnOrDefault, valuePtr);
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

      v107 = v28;
      v106 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v185, COERCE__INT64(v115), COERCE__INT64(valuePtr));
        _os_log_debug_impl(&dword_1DE8E5000, v107, v106, "PowerNitsAB = %f, PowerNitsReal = %f", v185, 0x16u);
      }

      v6 = CFGetAllocator(cf);
      if (v109)
      {
        value = CFNumberCreate(v6, kCFNumberFloatType, &valuePtr);
      }

      else
      {
        value = CFNumberCreate(v6, kCFNumberFloatType, &v110);
      }

      if (value)
      {
        v105 = 0;
        v7 = CFGetAllocator(cf);
        if (v109)
        {
          v105 = CFNumberCreate(v7, kCFNumberFloatType, &v115);
        }

        else
        {
          v105 = CFNumberCreate(v7, kCFNumberFloatType, &v111);
        }

        if (v105)
        {
          theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (theDict)
          {
            if (v109)
            {
              CFDictionaryAddValue(theDict, @"BacklightPowerNitsRealSub", value);
              CFDictionaryAddValue(theDict, @"BacklightPowerNitsABSub", v105);
            }

            else
            {
              CFDictionaryAddValue(theDict, @"BacklightPowerMilliWattsRealSub", value);
              CFDictionaryAddValue(theDict, @"BacklightPowerMilliWattsABSub", v105);
            }

            if (*(cf + 18))
            {
              v8 = *(cf + 18);
              block = MEMORY[0x1E69E9820];
              v97 = -1073741824;
              v98 = 0;
              v99 = ____DisplaySetLogicalBrightnessInternal_block_invoke;
              v100 = &__block_descriptor_49_e5_v8__0l;
              v101 = cf;
              v103 = v109 & 1;
              v102 = theDict;
              dispatch_async(v8, &block);
            }

            else
            {
              CFRelease(theDict);
            }
          }

          CFRelease(v105);
        }

        CFRelease(value);
      }

      if (*(cf + 1563))
      {
        CFXUpdateCompensatedBacklight(*(cf + 1563), valuePtr);
      }
    }

    v95 = 0;
    if ((v180 & 0x4000) == 0)
    {
      if (*(cf + 3149) == 1 && (v180 & 0x8000) == 0)
      {
        if (*(cf + 3150) == 2 || *(cf + 3150) == 1)
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

          v94 = v26;
          v93 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_4_8_0_8_0_4_0_8_0(v184, COERCE__INT64(valuePtr), COERCE__INT64(v179), *(cf + 3150), COERCE__INT64(*(cf + 298)));
            _os_log_debug_impl(&dword_1DE8E5000, v94, v93, "EDR SetDisplayBrightness - physicalBrightness:%f, maxLum: %f, edrState: %d, lux: %f\n", v184, 0x26u);
          }

          SetLibEDRBrightness(cf, valuePtr, v179, *(cf + 298), *(cf + 3132));
          v92 = (_DisplayLogicalToSliderBrightnessInternal(cf, valuePtr) * 65536.0);
          if (!v92)
          {
            v92 = valuePtr > 0.0;
          }

          v9 = CFGetAllocator(cf);
          v91 = CFNumberCreate(v9, kCFNumberSInt32Type, &v92);
          if (v91)
          {
            __DisplaySetBLDriverProperty(cf, @"DisplayBrightnessSliderPosition", v91);
            CFRelease(v91);
          }

          v24 = cf;
          v10 = __DisplayPhysicalToLogicalBrightness(cf, v178);
          v90 = _DisplayLogicalToSliderBrightnessInternal(v24, v10);
          v11 = *(cf + 312) / 65536.0;
          __DisplayUpdateSlider(cf, v90, v178, v11);
          *(cf + 375) = valuePtr;
          goto LABEL_382;
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

        v89 = v23;
        v88 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_4_8_0_8_0_4_0_8_0(v183, COERCE__INT64(valuePtr), COERCE__INT64(v179), *(cf + 3150), COERCE__INT64(*(cf + 298)));
          _os_log_debug_impl(&dword_1DE8E5000, v89, v88, "EDR SetDisplayBrightness - physicalBrightness:%f, maxLum: %f, edrState: %d, lux: %f\n", v183, 0x26u);
        }

        SetLibEDRBrightness(cf, valuePtr, v179, *(cf + 298), *(cf + 3132));
        *(cf + 375) = valuePtr;
      }

      if (*(cf + 71))
      {
        if (*(cf + 288))
        {
          v87 = 0;
          v87 = valuePtr > *(cf + 71);
          if ((*(cf + 289) & 1) != v87)
          {
            __DisplaySendPLCUpdate(cf, v87);
          }
        }
      }

      if (v118 != *(cf + 312) || (*(cf + 1284) & 1) != 0 || (*(cf + 12712) & 1) != 0)
      {
        *(cf + 312) = v118;
        v86 = DisplayGetAPLColumnOrDefault(cf, 0x64u);
        v12 = *(cf + 312) / 65536.0;
        v85 = __DisplayPhysicalBrightnessToPowerInternal(cf, v86, v12);
        v84 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v85);
        if (v84)
        {
          CFDictionarySetValue(*(cf + 24), @"CPMSCurrentPower", v84);
          CFRelease(v84);
        }

        SetBLDriverNitsValueIfNotInLPM(cf, *(cf + 312));
        v95 = 1;
        if (*(cf + 3149) == 1 && (v180 & 0x8000) != 0)
        {
          v83 = __DisplayLogicalToPhysicalBrightness(cf, *(cf + 319));
          v83 = fminf(v83, *(cf + 132));
          v21 = cf;
          v13 = __DisplayPhysicalToLogicalBrightness(cf, v83);
          v82 = _DisplayLogicalToSliderBrightnessInternal(v21, v13);
          v14 = *(cf + 312) / 65536.0;
          __DisplayUpdateSlider(cf, v82, v83, v14);
        }
      }

      if ((v180 & 0x8000) != 0)
      {
        *(cf + 314) = *(cf + 319);
        *(cf + 372) = *(cf + 374);
        *(cf + 315) = *(cf + 320);
        *(cf + 3138) = *(cf + 3140);
      }
    }

    if ((*(cf + 232) & 1) == 0 && (v95 & 1) == 0 && ((v180 & 0x40) != 0 || (v180 & 0x100) != 0))
    {
      SendSyncDBVNotification(cf, 0, valuePtr);
    }

    if ((v180 & 0x1000) != 0)
    {
      v81 = (_DisplayLogicalToSliderBrightnessInternal(cf, valuePtr) * 65536.0);
      if (!v81)
      {
        v81 = valuePtr > 0.0;
      }

      v15 = CFGetAllocator(cf);
      v80 = CFNumberCreate(v15, kCFNumberSInt32Type, &v81);
      if (v80)
      {
        __DisplaySetBLDriverProperty(cf, @"DisplayBrightnessSliderPosition", v80);
        CFRelease(v80);
      }
    }

    if ((v180 & 8) != 0 || _DisplayCLTMRev2Applicable(cf) && *(cf + 390))
    {
      v20 = cf;
      v16 = __DisplayPhysicalToLogicalBrightness(cf, v178);
      v79 = _DisplayLogicalToSliderBrightnessInternal(v20, v16);
      __DisplayUpdateSlider(cf, v79, v178, valuePtr);
    }

    if (_DisplaySendNotificationForEDRHeadroom(cf, v180))
    {
      v19 = cf;
      v17 = __DisplayPhysicalToLogicalBrightness(cf, v178);
      v78 = _DisplayLogicalToSliderBrightnessInternal(v19, v17);
      v18 = *(cf + 312) / 65536.0;
      __DisplayUpdateSlider(cf, v78, v178, v18);
    }
  }

LABEL_382:
  *MEMORY[0x1E69E9840];
}

BOOL _DisplayCLTMRev2Applicable(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    return (*(a1 + 312) & 1) != 0;
  }

  return v2;
}

float __DisplayPhysicalToLogicalBrightness(uint64_t a1, float a2)
{
  v4 = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2);
  v3 = 0.0;
  if (*(a1 + 348) > 0.0)
  {
    if (*(a1 + 348) < 1.0)
    {
      return _DisplayPerceptualLuminanceToLuminanceInternal(a1, v4 / *(a1 + 348));
    }

    else
    {
      return a2;
    }
  }

  return v3;
}

uint64_t AABC::enumerateALSes(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v2 = *(a1 + 416);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = ___ZN4AABC14enumerateALSesEU13block_pointerFvP20__IOHIDServiceClientPNS_3ALSEE_block_invoke;
  v8 = &unk_1E867D0E8;
  v9 = a2;
  return [v2 enumerateKeysAndObjectsUsingBlock:?];
}

void DisplaySetCurrentEDRHeadroom(uint64_t a1, float a2)
{
  v11 = a1;
  v10 = a2;
  v2 = *(a1 + 144);
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __DisplaySetCurrentEDRHeadroom_block_invoke;
  v7 = &__block_descriptor_44_e5_v8__0l;
  v8 = v11;
  v9 = a2;
  disp_dispatch_sync(v2, &v3);
}

uint64_t __os_log_helper_16_2_4_8_32_8_0_8_0_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
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

float __DisplaySetCurrentEDRHeadroom_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 12628) = result;
  return result;
}

uint64_t DisplayStartFastEDRRamp(uint64_t a1, float a2, double a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v3 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayStartFastEDRRamp_block_invoke;
  v9 = &__block_descriptor_52_e5_v8__0l;
  v10 = a3;
  v11 = v15;
  v12 = a2;
  disp_dispatch_sync(v3, &v5);
  return 1;
}

void __DisplayStartFastEDRRamp_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) <= 0.0)
  {
    v5 = *(*(a1 + 40) + 1328) | 1;
    *(*(a1 + 40) + 12624) = *(a1 + 48);
    *(*(a1 + 40) + 12628) = *(*(a1 + 40) + 12624);
    *(*(a1 + 40) + 12608) = 0;
    __DisplaySetLogicalBrightnessInternal(*(a1 + 40), v5 | 0x40, *(*(a1 + 40) + 1256));
  }

  else
  {
    *(*(a1 + 40) + 12608) = *(a1 + 32);
    *(*(a1 + 40) + 12624) = *(a1 + 48);
    *(*(a1 + 40) + 12632) = *(*(a1 + 40) + 12628);
    Current = CFAbsoluteTimeGetCurrent();
    *(*(a1 + 40) + 12616) = Current;
    *(*(a1 + 40) + 12640) = 0;
    LODWORD(Current) = 1007192201;
    __DisplayStartFadeWithType(*(a1 + 40), 8, Current);
  }

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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v6, "Fast EDR", COERCE__INT64(*(*(a1 + 40) + 12632)), COERCE__INT64(*(*(a1 + 40) + 12624)), *(*(a1 + 40) + 12608));
    _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: headroom: %0.2f ->  %0.2f t: %f", v6, 0x2Au);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t APDSGrimaldiCallback(void **a1, const void **a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        (*(*a2 + 2))();
        _Block_release(*a2);
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

        if (os_log_type_enabled(inited, OS_LOG_TYPE_FAULT))
        {
          __os_log_helper_16_2_2_8_32_4_0(v7, "APDSGrimaldiCallback", 86);
          _os_log_fault_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_FAULT, "%s:%d callbackData->responseBlock is NULL", v7, 0x12u);
        }
      }

      free(a2);
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

      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_2_8_32_4_0(v8, "APDSGrimaldiCallback", 82);
        _os_log_fault_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_FAULT, "%s:%d callbackData is NULL", v8, 0x12u);
      }
    }

    free(*a1);
    free(a1[2]);
    free(a1[1]);
    free(a1[3]);
    free(a1);
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __os_log_helper_16_0_4_4_0_4_0_4_0_8_0(uint64_t result, int a2, int a3, int a4, uint64_t a5)
{
  *result = 0;
  *(result + 1) = 4;
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
  *(result + 21) = 8;
  *(result + 22) = a5;
  return result;
}

void *std::valarray<float>::valarray(void *a1, unint64_t a2)
{
  std::valarray<float>::valarray(a1, a2);
  return a1;
}

{
  v8 = a1;
  v7 = a2;
  v9 = a1;
  *a1 = 0;
  a1[1] = 0;
  if (v7)
  {
    std::allocator<float>::allocator[abi:de200100](&v6);
    v2 = std::allocator<float>::allocate[abi:de200100](&v6, v7);
    a1[1] = v2;
    *a1 = v2;
    for (i = v7; i; --i)
    {
      *a1[1] = 0;
      a1[1] += 4;
    }
  }

  return v9;
}

void __DisplayStartAPLCPMSTimer(dispatch_object_t *a1, float a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v20 = a2;
  if ([MEMORY[0x1E6991F30] isCPMSSupported] == 1)
  {
    if (v21[1514] && v20 < *(v21 + 3030))
    {
      dispatch_release(v21[1514]);
      v21[1514] = 0;
    }

    if (v21[1514])
    {
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
        __os_log_helper_16_2_1_8_32(v22, "void __DisplayStartAPLCPMSTimer(DisplayRef, float)");
        _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "%s: Reusing current HDR Callback Timer\n", v22, 0xCu);
      }
    }

    else
    {
      *(v21 + 3030) = v20;
      v21[1514] = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v21[18]);
      if (v21[1514])
      {
        v19 = 0;
        v18 = (*(v21 + 3030) * 1000000000.0);
        dispatch_source_set_timer(v21[1514], 0, v18, 0);
        if (v21[20])
        {
          dispatch_set_context(v21[1514], v21);
          dispatch_source_set_event_handler_f(v21[1514], __DisplayCPMSHDRCallback);
        }

        else
        {
          block = MEMORY[0x1E69E9820];
          v12 = -1073741824;
          v13 = 0;
          v14 = ____DisplayStartAPLCPMSTimer_block_invoke;
          v15 = &__block_descriptor_40_e5_v8__0l;
          v16 = v21;
          v17 = dispatch_block_create_with_qos_class(0, QOS_CLASS_DEFAULT, 0, &block);
          if (v17)
          {
            dispatch_source_set_event_handler(v21[1514], v17);
            _Block_release(v17);
          }
        }

        dispatch_resume(v21[1514]);
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

        oslog = v7;
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v5 = type;
          __os_log_helper_16_0_0(v8);
          _os_log_error_impl(&dword_1DE8E5000, log, v5, "Could not create HDR Callback Timer\n", v8, 2u);
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}