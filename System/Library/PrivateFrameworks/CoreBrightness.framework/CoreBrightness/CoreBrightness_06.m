uint64_t __os_log_helper_16_0_5_4_0_4_0_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4, int a5, int a6)
{
  *result = 0;
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
  *(result + 26) = 0;
  *(result + 27) = 4;
  *(result + 28) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_34(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 34;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_4_4_0_8_0_4_0_4_0(uint64_t result, int a2, uint64_t a3, int a4, int a5)
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
  *(result + 25) = 4;
  *(result + 26) = a5;
  return result;
}

void *AABC::SetUpdateStrategy(AABC *this, AAB::UpdateCurveStrategy *a2)
{
  v12 = *MEMORY[0x1E69E9840];
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
    v4 = (*(**(this + 8) + 104))(*(this + 8));
    v5 = (*(*a2 + 104))(a2);
    v6 = (*(**(this + 8) + 112))(*(this + 8));
    v2 = (*(*a2 + 112))(a2);
    __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v11, v4, v5, v6, v2);
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "Change curve update strategies! Curve type: %d => %d, Alternative curve type: %d => %d", v11, 0x1Au);
  }

  AAB::SetUpdateStrategy(this, a2);
  AABC::AlignCurveTypeWithStrategy(this, this + 264, this + 752);
  result = AABC::AlignCurveTypeWithStrategy(this, this + 726, this + 778);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __os_log_helper_16_0_3_4_0_8_0_4_0(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_6_4_0_4_0_4_0_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *result = 0;
  *(result + 1) = 6;
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
  *(result + 26) = 0;
  *(result + 27) = 4;
  *(result + 28) = a6;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a7;
  return result;
}

uint64_t ___ZN4AABC20InitializeCPMSModuleEv_block_invoke_2()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v3 = *MEMORY[0x1E6991F50];
  v4[0] = v2;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  MEMORY[0x1E69E5920](v2);
  *MEMORY[0x1E69E9840];
  return v1;
}

void AABC::handleAODStateUpdate(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v57 = a2;
  v56 = a4;
  v55 = a3;
  if (_logHandle)
  {
    v24 = _logHandle;
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

    v24 = inited;
  }

  v54 = v24;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v65, v57, COERCE__INT64(v56));
    _os_log_impl(&dword_1DE8E5000, v54, type, "[AOD state] Update: %lu, transition time %f", v65, 0x16u);
  }

  switch(v57)
  {
    case 2:
      *(a1 + 3768) = 0;
      if (*(a1 + 676))
      {
        AABC::CancelFastRampMode(a1);
      }

      AABC::CancelRamp(a1);
      AABC::CancelFirstSampleTimeout(a1);
      if (*(a1 + 3880) && ([*(a1 + 3880) isActive] & 1) != 0)
      {
        [*(a1 + 3880) action:0];
        DisplaySetProperty(*(a1 + 400), @"CBSoftWakeActive", &unk_1F59C9390);
      }

      v52[0] = std::bitset<3ul>::operator[][abi:de200100](a1 + 296, 0);
      v52[1] = v4;
      std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator=[abi:de200100](v52, 1);
      AABC::evaluateAABRearConditions(a1);
      if (*(a1 + 3840) == 1)
      {
        if (!*(a1 + 3832))
        {
          __assert_rtn("handleAODStateUpdate", "AABC.mm", 10456, "_plt_logic");
        }

        v22 = *(a1 + 3832);
        if (v22)
        {
          (*(*v22 + 24))(v22);
        }

        operator new();
      }

      PerceptualLuminanceThresholding::SetAggressivity(*(a1 + 3832), 0);
      break;
    case 3:
      *(a1 + 620) = DisplayGetLogicalBrightness(*(a1 + 400));
      PhysicalBrightness = DisplayGetPhysicalBrightness(*(a1 + 400));
      v50 = AABC::IlluminanceToLuminance(a1, *(a1 + 552), (a1 + 2548));
      v49 = PhysicalBrightness;
      if (v55)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = [v55 objectForKey:@"NitsPhysical"];
          if (v48)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v48 floatValue];
              v49 = *&v5;
            }
          }
        }
      }

      *&v5 = v50;
      if (v50 < v49)
      {
        [+[CBAODState AODTransitionTargetAlgoOptimised_dimmingThreshold:v5]];
        v47 = v6;
        v46 = DisplayLuminanceToPerceptualLuminance(*(a1 + 400), v49);
        v45 = DisplayLuminanceToPerceptualLuminance(*(a1 + 400), v50);
        if (vabds_f32(v46, v45) > v47)
        {
          v44 = fmaxf(v46 - v47, 0.0);
          v43 = DisplayPerceptualLuminanceToLuminance(*(a1 + 400), v44);
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

          oslog = v21;
          v41 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v64, COERCE__INT64(v46), COERCE__INT64(v45), COERCE__INT64(v50), COERCE__INT64(v47), COERCE__INT64(v44), COERCE__INT64(v43));
            _os_log_impl(&dword_1DE8E5000, oslog, v41, "[AOD state][Entering] cP=%f | tP=%f | tNits=%f | thrP=%f | adj_tP=%f | adj_nits=%f", v64, 0x3Eu);
          }

          v50 = v43;
        }
      }

      v50 = clamp(v50, *(a1 + 732), PhysicalBrightness);
      *(a1 + 624) = AABC::LuminanceToIlluminance(a1, v50, (a1 + 2548));
      *(a1 + 2880) = *(a1 + 620);
      *(a1 + 620) = v50;
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

      v40 = v19;
      v39 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v63, COERCE__INT64(v50), COERCE__INT64(*(a1 + 552)), COERCE__INT64(v49), COERCE__INT64(*(a1 + 540)), COERCE__INT64(*(a1 + 552)));
        _os_log_impl(&dword_1DE8E5000, v40, v39, "[AOD state][Entering] Target AOD Nits %f for lux %f (Physical Nits = %f, Trusted Lux = %f, Capped Trusted Lux = %f)", v63, 0x34u);
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

      v38 = v17;
      v37 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_3_4_0_4_0_4_0(v62, *(a1 + 504), *(a1 + 500), *(a1 + 512));
        _os_log_impl(&dword_1DE8E5000, v38, v37, "[AOD state][Entering] AB enabled = %d, active = %d, do not update curve = %d", v62, 0x14u);
      }

      if (*(a1 + 512))
      {
        DisplaySetLogicalBrightnessWithFade(*(a1 + 400), 12296, AABC::_RampDoneCallback, a1, v50, v56);
      }

      else
      {
        AABC::SetBrightness(a1, v50, v56, 10, AABC::_RampDoneCallback, a1);
      }

      AABC::logAODCurveToPowerLog(a1);
      break;
    case 1:
      if (!*(a1 + 512))
      {
        v36 = AABC::IlluminanceToLuminance(a1, *(a1 + 552), (a1 + 2548));
        *(a1 + 2880) = DisplayGetLogicalBrightness(*(a1 + 400));
        *(a1 + 620) = v36;
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

        v35 = v15;
        v34 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_8_0_8_0(v61, COERCE__INT64(v36), COERCE__INT64(*(a1 + 552)));
          _os_log_impl(&dword_1DE8E5000, v35, v34, "[AOD state][On] Perform update - target AOD Nits %f for trusted lux %f", v61, 0x16u);
        }

        AABC::SetBrightness(a1, v36, v56, 10, AABC::_RampDoneCallback, a1);
        *(a1 + 616) = v36;
        *(a1 + 624) = *(a1 + 552);
      }

      *(a1 + 3328) = 0;
      break;
    case 4:
      v33 = 0.0;
      if (*(a1 + 3840) == 1)
      {
        if (!*(a1 + 3832))
        {
          __assert_rtn("handleAODStateUpdate", "AABC.mm", 10565, "_plt_logic");
        }

        v13 = *(a1 + 3832);
        if (v13)
        {
          (*(*v13 + 24))(v13);
        }

        operator new();
      }

      PerceptualLuminanceThresholding::SetAggressivity(*(a1 + 3832), *(a1 + 564));
      *(a1 + 620) = DisplayGetLogicalBrightness(*(a1 + 400));
      if (v55)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = [v55 objectForKey:@"NitsPhysical"];
          if (v32)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v32 floatValue];
              *(a1 + 620) = v7;
            }
          }
        }
      }

      v33 = AABC::IlluminanceToLuminance(a1, (a1 + 1056), *(a1 + 540), *(a1 + 552));
      v33 = clamp(v33, *(a1 + 620), *(a1 + 728));
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

      v31 = v12;
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v60, COERCE__INT64(v33), COERCE__INT64(*(a1 + 552)), COERCE__INT64(*(a1 + 540)), COERCE__INT64(*(a1 + 552)));
        _os_log_impl(&dword_1DE8E5000, v31, v30, "[AOD state][Exiting] Normal mode Nits = %f for lux %f (Trusted Lux = %f, Capped Trusted Lux = %f)", v60, 0x2Au);
      }

      *(a1 + 616) = v33;
      AABC::SetBrightness(a1, v33, v56, 10, AABC::_RampDoneCallback, a1);
      break;
    case 0:
      if (!*(a1 + 512))
      {
        v29 = AABC::IlluminanceToLuminance(a1, (a1 + 1056), *(a1 + 540), *(a1 + 552));
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

        v28 = v10;
        v27 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v59, COERCE__INT64(v29));
          _os_log_impl(&dword_1DE8E5000, v28, v27, "[AOD state][Off]  Display brightness should be on %f", v59, 0xCu);
        }

        AABC::UpdateState(a1, 2);
        if ((*(a1 + 3328) & 1) == 1 || CBU_IsWatch())
        {
          AABC::BeginFastRampMode(a1, 4.0, 0.2);
        }

        else
        {
          AABC::BeginFastRampMode(a1, 30.0, 0.2);
        }
      }

      v26[0] = std::bitset<3ul>::operator[][abi:de200100](a1 + 296, 0);
      v26[1] = v8;
      std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator=[abi:de200100](v26, 0);
      AABC::evaluateAABRearConditions(a1);
      break;
  }

  if (*(a1 + 484) <= 0.0)
  {
    DisplaySetState(*(a1 + 400), 0);
  }

  else
  {
    DisplaySetState(*(a1 + 400), v57 == 0);
  }

  *MEMORY[0x1E69E9840];
}

void AABC::logAODCurveToPowerLog(AABC *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = this;
  memset(__b, 0, sizeof(__b));
  AAB::curveToCustomCurve(this, this + 1056, __b);
  memset(&v13, 0, sizeof(v13));
  memcpy(__dst, __b, sizeof(__dst));
  memcpy(&v11, this + 2548, sizeof(v11));
  AAB::findDarkerCurve(__dst, &v11, &v13, v1);
  v10 = 0;
  if (v13.size == *(this + 718))
  {
    for (i = 0; i < v13.size; ++i)
    {
      if (COERCE_INT(v13._E[i] * 1000.0) != COERCE_INT(*(this + i + 678) * 1000.0) || COERCE_INT(v13._L[i] * 1000.0) != COERCE_INT(*(this + i + 698) * 1000.0))
      {
        v10 = 1;
        break;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) != 0 && *(this + 43))
  {
    memcpy(&v7, &v13, sizeof(v7));
    v8 = dictionaryForCustomCurve(&v7);
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"CurveLevelHigh", 0}];
    (*(this + 43))(*(this + 44), @"AODCurveUpdate", v6);
    for (j = 0; j < v13.size; ++j)
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
        __os_log_helper_16_0_3_4_0_8_0_8_0(v16, j, COERCE__INT64(v13._E[j]), COERCE__INT64(v13._L[j]));
        _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "AOD Darker Curve[%d] = (%f;%f)", v16, 0x1Cu);
      }
    }

    memcpy(this + 2712, &v13, 0xA4uLL);
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v6);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t dictionaryForCustomCurve(CustomCurve *a1)
{
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i < a1->size; ++i)
  {
    v1 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v2 = a1->_E[i];
    v9 = [v1 initWithFloat:v2];
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v4 = a1->_L[i];
    v8 = [v3 initWithFloat:v4];
    [v12 addObject:v9];
    [v11 addObject:v8];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v8);
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v12, @"lux", v11, @"nits", 0}];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v11);
  return v7;
}

uint64_t ___ZN4AABC24sendCrossTalkConfigToDCPEv_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [a2 unsignedIntValue];
    *(*(a1 + 32) + 4 * a3) = result;
  }

  return result;
}

uint64_t ___ZN4AABC24sendCrossTalkConfigToDCPEv_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 unsignedIntValue];
  *(*(a1 + 32) + 4 * a3) = result;
  return result;
}

uint64_t std::all_of[abi:de200100]<BOOL *,AABC::sendCrossTalkConfigToDCP(void)::$_0>(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  return std::__all_of[abi:de200100]<BOOL *,BOOL *,std::__identity,AABC::sendCrossTalkConfigToDCP(void)::$_0>(a1, a2, &v6, &v3);
}

void *std::mutex::mutex[abi:de200100](void *a1)
{
  std::mutex::mutex[abi:de200100](a1);
  return a1;
}

{
  *a1 = 850045863;
  memset(a1 + 1, 0, 0x38uLL);
  return a1;
}

float AABC::ALS::ALS(AABC::ALS *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 1028443341;
  *(this + 13) = 1036831949;
  *(this + 14) = 1053609165;
  *(this + 15) = 0;
  *(this + 16) = 1184645120;
  *(this + 17) = 1138819072;
  *(this + 18) = 1133903872;
  *(this + 76) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<float>::vector[abi:de200100](this + 12, 0);
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = -1.0;
  std::vector<float>::vector[abi:de200100](this + 17, 0);
  result = 450.0;
  *(this + 41) = 1138819072;
  return result;
}

void sub_1DEA65C88(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 16) = a1;
  *(v10 - 20) = a2;
  std::vector<float>::~vector[abi:de200100]((a10 + 96));
  _Unwind_Resume(*(v10 - 16));
}

void *std::vector<float>::vector[abi:de200100](void *a1, unint64_t a2)
{
  std::vector<float>::vector[abi:de200100](a1, a2);
  return a1;
}

{
  v7 = a1;
  v6 = a2;
  v8 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator<float>::allocator[abi:de200100](a1);
  std::vector<float>::__destroy_vector::__destroy_vector[abi:de200100](&v4, a1);
  std::__make_exception_guard[abi:de200100]<std::vector<float>::__destroy_vector>(v4, v5);
  if (v6)
  {
    std::vector<float>::__vallocate[abi:de200100](a1, v6);
    std::vector<float>::__construct_at_end(a1, v6);
  }

  std::__exception_guard_exceptions<std::vector<float>::__destroy_vector>::__complete[abi:de200100](v5);
  std::__exception_guard_exceptions<std::vector<float>::__destroy_vector>::~__exception_guard_exceptions[abi:de200100](v5);
  return v8;
}

void std::vector<float>::__vallocate[abi:de200100](void *a1, unint64_t a2)
{
  if (a2 > std::vector<float>::max_size[abi:de200100](a1))
  {
    std::vector<float>::__throw_length_error[abi:de200100]();
  }

  v4 = std::__allocate_at_least[abi:de200100]<std::allocator<float>>(a1, a2);
  *a1 = v4;
  a1[1] = v4;
  a1[2] = *a1 + 4 * v2;
  std::vector<float>::__annotate_new[abi:de200100]();
}

void *std::vector<float>::__construct_at_end(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  std::vector<float>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v7, a1, a2);
  v6 = v9;
  for (i = v8; i != v6; v8 = i)
  {
    std::__to_address[abi:de200100]<float>();
    _ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8de200100IfJEvLi0EEEvRS2_PT_DpOT0_(a1, v2);
    i += 4;
  }

  return std::vector<float>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v7);
}

uint64_t std::__exception_guard_exceptions<std::vector<float>::__destroy_vector>::~__exception_guard_exceptions[abi:de200100](uint64_t a1)
{
  std::__exception_guard_exceptions<std::vector<float>::__destroy_vector>::~__exception_guard_exceptions[abi:de200100](a1);
  return a1;
}

{
  if ((*(a1 + 8) & 1) == 0)
  {
    std::vector<float>::__destroy_vector::operator()[abi:de200100](a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::vector<float>::__destroy_vector>::__exception_guard_exceptions[abi:de200100](uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

double _ZNSt3__112construct_atB8de200100IfJEPfEEPT_S3_DpOT0_(_DWORD *a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  result = 0.0;
  *a1 = 0;
  return result;
}

void **std::vector<float>::__append(void *a1, unint64_t a2)
{
  v9 = a1;
  v8 = a2;
  if ((a1[2] - a1[1]) / 4 >= a2)
  {
    return std::vector<float>::__construct_at_end(a1, v8);
  }

  v2 = std::vector<float>::size[abi:de200100](a1);
  v5 = std::vector<float>::__recommend[abi:de200100](a1, v2 + v8);
  v3 = std::vector<float>::size[abi:de200100](a1);
  std::__split_buffer<float>::__split_buffer(v7, v5, v3, a1);
  std::__split_buffer<float>::__construct_at_end(v7, v8);
  std::vector<float>::__swap_out_circular_buffer(a1, v7);
  return std::__split_buffer<float>::~__split_buffer(v7);
}

void std::vector<float>::__destruct_at_end[abi:de200100](void *a1, uint64_t a2)
{
  std::vector<float>::size[abi:de200100](a1);
  std::vector<float>::__base_destruct_at_end[abi:de200100](a1, a2);
  std::vector<float>::__annotate_shrink[abi:de200100]();
}

uint64_t std::__split_buffer<float>::__construct_at_end(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[3] = a2;
  std::__split_buffer<float>::_ConstructTransaction::_ConstructTransaction[abi:de200100](v6, (a1 + 16), a2);
  while (v6[0] != v6[1])
  {
    v4 = *(a1 + 32);
    std::__to_address[abi:de200100]<float>();
    _ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8de200100IfJEvLi0EEEvRS2_PT_DpOT0_(v4, v2);
    v6[0] += 4;
  }

  return std::__split_buffer<float>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](v6);
}

void *std::__split_buffer<float>::_ConstructTransaction::_ConstructTransaction[abi:de200100](void *result, void *a2, uint64_t a3)
{
  *result = *a2;
  result[1] = *a2 + 4 * a3;
  result[2] = a2;
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:de200100]<float *,float *>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  std::vector<float>::__destroy_vector::__destroy_vector[abi:de200100](&v6, a1);
  std::__make_exception_guard[abi:de200100]<std::vector<float>::__destroy_vector>(v6, v7);
  if (v8)
  {
    std::vector<float>::__vallocate[abi:de200100](a1, v8);
    std::vector<float>::__construct_at_end<float *,float *>(a1, v10, v9, v8);
  }

  std::__exception_guard_exceptions<std::vector<float>::__destroy_vector>::__complete[abi:de200100](v7);
  return std::__exception_guard_exceptions<std::vector<float>::__destroy_vector>::~__exception_guard_exceptions[abi:de200100](v7);
}

uint64_t std::__uninitialized_allocator_copy[abi:de200100]<std::allocator<float>,float *,float *,float *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = std::__unwrap_range[abi:de200100]<float *,float *>(a2, a3);
  v8 = v4;
  std::__unwrap_iter[abi:de200100]<float *,std::__unwrap_iter_impl<float *,true>,0>();
  v6 = std::__uninitialized_allocator_copy_impl[abi:de200100]<std::allocator<float>,float,float,0>(a1, v9, v8, v5);
  return std::__rewrap_iter[abi:de200100]<float *,float *,std::__unwrap_iter_impl<float *,true>>(a4, v6);
}

uint64_t std::__unwrap_range_impl<float *,float *>::__unwrap[abi:de200100](uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[1] = a2;
  std::__unwrap_iter[abi:de200100]<float *,std::__unwrap_iter_impl<float *,true>,0>();
  v6[0] = v2;
  std::__unwrap_iter[abi:de200100]<float *,std::__unwrap_iter_impl<float *,true>,0>();
  v5 = v3;
  std::pair<float *,float *>::pair[abi:de200100]<float *,float *,0>(&v7, v6, &v5);
  return v7;
}

void *std::pair<float *,float *>::pair[abi:de200100]<float *,float *,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__copy_move_unwrap_iters[abi:de200100]<std::__copy_impl,float *,float *,float *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = std::__unwrap_range[abi:de200100]<float *,float *>(a1, a2);
  v14 = v3;
  v7 = v3;
  std::__unwrap_iter[abi:de200100]<float *,std::__unwrap_iter_impl<float *,true>,0>();
  v11 = std::__copy_impl::operator()[abi:de200100]<float,float,0>(&v10, v13, v7, v4);
  v12 = v5;
  v9 = std::__rewrap_range[abi:de200100]<float *,float *,float *>(v17, v11);
  v8 = std::__rewrap_iter[abi:de200100]<float *,float *,std::__unwrap_iter_impl<float *,true>>(v15, v12);
  return std::make_pair[abi:de200100]<float *,float *>(&v9, &v8);
}

uint64_t std::__copy_trivial_impl[abi:de200100]<float,float>(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 4;
  std::__constexpr_memmove[abi:de200100]<float,float,0>(a3, a1, v5);
  v4 = &v6[4 * v5];
  return std::make_pair[abi:de200100]<float *&,float *>(v7, &v4);
}

void *std::__constexpr_memmove[abi:de200100]<float,float,0>(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 4 * (a3 - 1) + 4);
  }

  return a1;
}

void *std::pair<float *,float *>::pair[abi:de200100]<float *&,float *,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

void std::sort[abi:de200100]<std::__wrap_iter<float *>,std::__less<void,void>>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  std::__sort_impl[abi:de200100]<std::_ClassicAlgPolicy,std::__wrap_iter<float *>,std::__less<void,void>>(a1, a2, &v2);
}

void std::__sort_impl[abi:de200100]<std::_ClassicAlgPolicy,std::__wrap_iter<float *>,std::__less<void,void>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__debug_randomize_range[abi:de200100]<std::_ClassicAlgPolicy,std::__wrap_iter<float *>,std::__wrap_iter<float *>>();
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<float *>,std::__unwrap_iter_impl<std::__wrap_iter<float *>,true>,0>(a1);
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<float *>,std::__unwrap_iter_impl<std::__wrap_iter<float *>,true>,0>(a2);
  std::__sort_dispatch[abi:de200100]<std::_ClassicAlgPolicy,float,0>();
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<float *>,std::__unwrap_iter_impl<std::__wrap_iter<float *>,true>,0>(a1);
  v5 = v3;
  std::__unwrap_iter[abi:de200100]<std::__wrap_iter<float *>,std::__unwrap_iter_impl<std::__wrap_iter<float *>,true>,0>(a2);
  std::__check_strict_weak_ordering_sorted[abi:de200100]<float *,std::__less<void,void>>(v5, v4, a3);
}

void std::__check_strict_weak_ordering_sorted[abi:de200100]<float *,std::__less<void,void>>(float *a1, float *a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  std::__debug_less<std::__less<void,void>>::__debug_less[abi:de200100](&v13, a3);
  if (!std::is_sorted[abi:de200100]<float *,std::__debug_less<std::__less<void,void>>>(a1, a2, v13))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:36: assertion (std::is_sorted<_RandomAccessIterator, _Comp_ref>(__first, __last, _Comp_ref(__comp))) failed: The range is not sorted after the sort, your comparator is not a valid strict-weak ordering\n");
  }

  if (v15 - v16 <= 100)
  {
    v4 = v15 - v16;
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
        v3 = !std::__less<void,void>::operator()[abi:de200100]<float,float>(v14, &v16[i], &v16[j]);
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
        if (std::__less<void,void>::operator()[abi:de200100]<float,float>(v14, &v16[m], &v16[k]))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:50: assertion !__comp(*(__first + __a), *(__first + __b)) failed: Your comparator is not a valid strict-weak ordering\n");
        }

        if (std::__less<void,void>::operator()[abi:de200100]<float,float>(v14, &v16[k], &v16[m]))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:52: assertion !__comp(*(__first + __b), *(__first + __a)) failed: Your comparator is not a valid strict-weak ordering\n");
        }
      }
    }

    for (n = i; n < j; ++n)
    {
      for (ii = j; ii < v4; ++ii)
      {
        if (!std::__less<void,void>::operator()[abi:de200100]<float,float>(v14, &v16[n], &v16[ii]))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:59: assertion __comp(*(__first + __a), *(__first + __b)) failed: Your comparator is not a valid strict-weak ordering\n");
        }

        if (std::__less<void,void>::operator()[abi:de200100]<float,float>(v14, &v16[ii], &v16[n]))
        {
          std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__debug_utils/strict_weak_ordering_check.h:61: assertion !__comp(*(__first + __b), *(__first + __a)) failed: Your comparator is not a valid strict-weak ordering\n");
        }
      }
    }
  }
}

void std::pointer_traits<std::__wrap_iter<float *>>::to_address[abi:de200100](uint64_t a1)
{
  v1 = a1;
  std::__wrap_iter<float *>::base[abi:de200100](&v1);
  std::__to_address[abi:de200100]<float>();
}

BOOL std::is_sorted[abi:de200100]<float *,std::__debug_less<std::__less<void,void>>>(float *a1, float *a2, uint64_t a3)
{
  v10 = a3;
  v9 = a1;
  v8 = a2;
  std::__debug_less<std::__debug_less<std::__less<void,void>>>::__debug_less[abi:de200100](&v7, &v10);
  v3 = std::__is_sorted_until[abi:de200100]<std::__debug_less<std::__debug_less<std::__less<void,void>>>,float *>(a1, a2, v7);
  return v3 == v8;
}

float *std::__is_sorted_until[abi:de200100]<std::__debug_less<std::__debug_less<std::__less<void,void>>>,float *>(float *a1, float *a2, uint64_t *a3)
{
  v7 = a3;
  v6 = a1;
  if (a1 != a2)
  {
    for (i = a1; ++i != a2; v6 = i)
    {
      if (std::__debug_less<std::__debug_less<std::__less<void,void>>>::operator()[abi:de200100]<float,float>(&v7, i, v6))
      {
        return i;
      }
    }
  }

  return a2;
}

BOOL std::__debug_less<std::__debug_less<std::__less<void,void>>>::operator()[abi:de200100]<float,float>(uint64_t **a1, float *a2, float *a3)
{
  v5 = std::__debug_less<std::__less<void,void>>::operator()[abi:de200100]<float,float>(*a1, a2, a3);
  if (v5)
  {
    std::__debug_less<std::__debug_less<std::__less<void,void>>>::__do_compare_assert[abi:de200100]<float,float>(a1, 0, a3, a2);
  }

  return v5;
}

BOOL std::__debug_less<std::__less<void,void>>::operator()[abi:de200100]<float,float>(uint64_t *a1, float *a2, float *a3)
{
  v5 = std::__less<void,void>::operator()[abi:de200100]<float,float>(*a1, a2, a3);
  if (v5)
  {
    std::__debug_less<std::__less<void,void>>::__do_compare_assert[abi:de200100]<float,float>(a1, 0, a3, a2);
  }

  return v5;
}

void std::__debug_less<std::__debug_less<std::__less<void,void>>>::__do_compare_assert[abi:de200100]<float,float>(uint64_t **a1, uint64_t a2, float *a3, float *a4)
{
  if (std::__debug_less<std::__less<void,void>>::operator()[abi:de200100]<float,float>(*a1, a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/comp_ref_type.h:47: assertion !__comp_(__l, __r) failed: Comparator does not induce a strict weak ordering\n");
  }
}

void std::__debug_less<std::__less<void,void>>::__do_compare_assert[abi:de200100]<float,float>(uint64_t *a1, uint64_t a2, float *a3, float *a4)
{
  if (std::__less<void,void>::operator()[abi:de200100]<float,float>(*a1, a3, a4))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__algorithm/comp_ref_type.h:47: assertion !__comp_(__l, __r) failed: Comparator does not induce a strict weak ordering\n");
  }
}

void std::array<float,3ul>::data[abi:de200100]()
{
  ;
}

{
  ;
}

_DWORD *std::__fill_n[abi:de200100]<float *,unsigned long,float>(_DWORD *a1, uint64_t a2, _DWORD *a3)
{
  while (a2)
  {
    *a1++ = *a3;
    --a2;
  }

  return a1;
}

uint64_t std::__all_of[abi:de200100]<BOOL *,BOOL *,std::__identity,AABC::sendCrossTalkConfigToDCP(void)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (a1 != a2)
  {
    v4 = std::__invoke[abi:de200100]<std::__identity &,BOOL &>(a4, a1);
    if ((std::__invoke[abi:de200100]<AABC::sendCrossTalkConfigToDCP(void)::$_0 &,BOOL &>(a3, v4) & 1) == 0)
    {
      v10 = 0;
      return v10 & 1;
    }

    ++a1;
  }

  v10 = 1;
  return v10 & 1;
}

void *std::__bit_reference<std::__bitset<1ul,3ul>,true>::__bit_reference[abi:de200100](void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

void *cameraServiceArrivalCallback(void *result, io_iterator_t a2)
{
  v3 = result;
  if (result && a2)
  {
    while (1)
    {
      result = IOIteratorNext(a2);
      if (!result)
      {
        break;
      }

      [v3 handleCameraServiceArrival:result];
    }
  }

  return result;
}

uint64_t __os_log_helper_16_2_4_8_64_8_0_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_4_0_8_0_8_64(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_8_8_0_8_0_8_0_8_0_8_0_4_0_4_0_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  *result = 2;
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
  *(result + 53) = 4;
  *(result + 54) = a7;
  *(result + 58) = 0;
  *(result + 59) = 4;
  *(result + 60) = a8;
  *(result + 64) = 32;
  *(result + 65) = 8;
  *(result + 66) = a9;
  return result;
}

uint64_t __os_log_helper_16_2_4_4_0_4_0_8_32_8_32(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 32;
  *(result + 15) = 8;
  *(result + 16) = a4;
  *(result + 24) = 32;
  *(result + 25) = 8;
  *(result + 26) = a5;
  return result;
}

__CFString *aabUpdateStrategyTypeToString_0(uint64_t a1)
{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"preference based";
    case 1:
      return @"BOLTS";
    case 2:
      return @"hybrid with pref based as main and BOLTS as alternative";
    case 3:
      return @"hybrid with BOLTS as main and pref based as alternative";
  }

  return v2;
}

uint64_t __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_4_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
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
  *(result + 43) = 4;
  *(result + 44) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

void CBAuroraParams::CBAuroraParams(CBAuroraParams *this)
{
  CBAuroraParams::CBAuroraParams(this);
}

{
  *this = os_log_create("com.apple.CoreBrightness.Aurora", "params");
  *(this + 2) = 1174175744;
  *(this + 3) = 1174175744;
  *(this + 4) = 1174175744;
  *(this + 5) = 1173110784;
  *(this + 6) = 1173110784;
  *(this + 7) = 1173110784;
  *(this + 8) = 1183109120;
  *(this + 9) = 1183109120;
  *(this + 10) = 1183109120;
  *(this + 11) = 1158148096;
  *(this + 12) = 1149534208;
  *(this + 13) = 1.0;
  *(this + 56) = 0;
  *(this + 15) = 4.0;
  *(this + 16) = 4.0;
  *(this + 17) = 0.75;
  *(this + 18) = 1043878380;
  *(this + 19) = 1051931443;
  *(this + 20) = 1045220557;
  *(this + 21) = 1053609165;
  *(this + 22) = 1150681088;
  *(this + 23) = 1066863165;
  *(this + 24) = 1150681088;
  *(this + 25) = 1066863165;
  *(this + 26) = 1123024896;
  *(this + 108) = 0;
  *(this + 109) = 0;
  *(this + 110) = 0;
  *(this + 111) = 0;
  std::vector<float>::vector[abi:de200100](this + 14);
  std::vector<float>::vector[abi:de200100](this + 17);
  std::vector<float>::vector[abi:de200100](this + 20);
  std::vector<float>::vector[abi:de200100](this + 23);
  std::vector<float>::vector[abi:de200100](this + 26);
  std::vector<float>::vector[abi:de200100](this + 29);
  std::vector<float>::vector[abi:de200100](this + 32);
}

void CBAuroraParams::loadFromCapabilities(CBAuroraParams *this, NSDictionary *a2)
{
  v310 = *MEMORY[0x1E69E9840];
  v278 = this;
  v277 = a2;
  v276 = [(NSDictionary *)a2 objectForKeyedSubscript:@"Aurora"];
  [v276 objectForKeyedSubscript:@"AuroraEnterLux"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v275 = [v276 objectForKeyedSubscript:@"AuroraEnterLux"];
    if ([v275 count] == 3)
    {
      v269 = MEMORY[0x1E69E9820];
      v270 = -1073741824;
      v271 = 0;
      v272 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke;
      v273 = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
      v274 = this;
      [v275 enumerateObjectsUsingBlock:?];
      if (*this)
      {
        v122 = *this;
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

        v122 = inited;
      }

      oslog = v122;
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v309, v275);
        _os_log_impl(&dword_1DE8E5000, oslog, type, "Aurora Initialization | Enter lux overriden from capabilities: %@", v309, 0xCu);
      }
    }

    else
    {
      if (*this)
      {
        v120 = *this;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v119 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v119 = init_default_corebrightness_log();
        }

        v120 = v119;
      }

      v266 = v120;
      v265 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        v117 = v266;
        v118 = v265;
        __os_log_helper_16_0_0(v264);
        _os_log_error_impl(&dword_1DE8E5000, v117, v118, "Aurora Initialization | Enter lux array length from capablities doesn't match number of curve levels", v264, 2u);
      }
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraExitLux"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v263 = [v276 objectForKeyedSubscript:@"AuroraExitLux"];
    if ([v263 count] == 3)
    {
      v257 = MEMORY[0x1E69E9820];
      v258 = -1073741824;
      v259 = 0;
      v260 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_320;
      v261 = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
      v262 = this;
      [v263 enumerateObjectsUsingBlock:?];
      if (*this)
      {
        v116 = *this;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v115 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v115 = init_default_corebrightness_log();
        }

        v116 = v115;
      }

      v256 = v116;
      v255 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v308, v263);
        _os_log_impl(&dword_1DE8E5000, v256, v255, "Aurora Initialization | Exit lux overriden from capabilities: %@", v308, 0xCu);
      }
    }

    else
    {
      if (*this)
      {
        v114 = *this;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v113 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v113 = init_default_corebrightness_log();
        }

        v114 = v113;
      }

      v254 = v114;
      v253 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        v111 = v254;
        v112 = v253;
        __os_log_helper_16_0_0(v252);
        _os_log_error_impl(&dword_1DE8E5000, v111, v112, "Aurora Initialization | Exit lux array length from capablities doesn't match number of curve levels", v252, 2u);
      }
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraSaturationLux"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v251 = [v276 objectForKeyedSubscript:@"AuroraSaturationLux"];
    if ([v251 count] == 3)
    {
      v245 = MEMORY[0x1E69E9820];
      v246 = -1073741824;
      v247 = 0;
      v248 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_324;
      v249 = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
      v250 = this;
      [v251 enumerateObjectsUsingBlock:?];
      if (*this)
      {
        v110 = *this;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v109 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v109 = init_default_corebrightness_log();
        }

        v110 = v109;
      }

      v244 = v110;
      v243 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v307, v251);
        _os_log_impl(&dword_1DE8E5000, v244, v243, "Aurora Initialization | Saturation lux overriden from capabilities: %@", v307, 0xCu);
      }
    }

    else
    {
      if (*this)
      {
        v108 = *this;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v107 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v107 = init_default_corebrightness_log();
        }

        v108 = v107;
      }

      v242 = v108;
      v241 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v105 = v242;
        v106 = v241;
        __os_log_helper_16_0_0(v240);
        _os_log_error_impl(&dword_1DE8E5000, v105, v106, "Aurora Initialization | Saturation lux array length from capablities doesn't match number of curve levels", v240, 2u);
      }
    }
  }

  [v277 objectForKeyedSubscript:@"MaxNits"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v277 objectForKeyedSubscript:{@"MaxNits", "floatValue"}];
    *(this + 12) = v2;
    if (*this)
    {
      v104 = *this;
    }

    else
    {
      v103 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v104 = v103;
    }

    v239 = v104;
    v238 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v306, COERCE__INT64(*(this + 12)));
      _os_log_impl(&dword_1DE8E5000, v239, v238, "Aurora Initialization | Nits maximum user accessible overriden from capabilities: %f", v306, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraMaxNits"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraMaxNits", "floatValue"}];
    *(this + 11) = v3;
    if (*this)
    {
      v102 = *this;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v101 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v101 = init_default_corebrightness_log();
      }

      v102 = v101;
    }

    v237 = v102;
    v236 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v305, COERCE__INT64(*(this + 11)));
      _os_log_impl(&dword_1DE8E5000, v237, v236, "Aurora Initialization | Nits maximum overriden from capabilities: %f", v305, 0xCu);
    }
  }

  else
  {
    [v277 objectForKeyedSubscript:@"MaxNitsPanel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v100 = *(this + 11);
      [objc_msgSend(v277 objectForKeyedSubscript:{@"MaxNitsPanel", "floatValue"}];
      v4 = *&v5;
      *&v5 = v100;
      if (v100 != v4)
      {
        [objc_msgSend(v277 objectForKeyedSubscript:{@"MaxNitsPanel", v5), "floatValue"}];
        *(this + 11) = v6;
        if (*this)
        {
          v99 = *this;
        }

        else
        {
          v98 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v99 = v98;
        }

        v235 = v99;
        v234 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v304, COERCE__INT64(*(this + 11)));
          _os_log_impl(&dword_1DE8E5000, v235, v234, "Aurora Initialization | Nits maximum overriden from capabilities: %f", v304, 0xCu);
        }
      }
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraAverageAPCESamplingRate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraAverageAPCESamplingRate", "floatValue"}];
    *(this + 13) = v7;
    if (*this)
    {
      v97 = *this;
    }

    else
    {
      v96 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v97 = v96;
    }

    v233 = v97;
    v232 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v303, COERCE__INT64(*(this + 13)));
      _os_log_impl(&dword_1DE8E5000, v233, v232, "Aurora Initialization | Average APCE sampling rate overriden from capabilities: %f", v303, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraIgnorePeakAPCE"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraIgnorePeakAPCE", "floatValue"}];
    *(this + 56) = v8 != 0.0;
    if (*this)
    {
      v95 = *this;
    }

    else
    {
      v94 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v95 = v94;
    }

    v231 = v95;
    v230 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 56))
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v302, v9);
      _os_log_impl(&dword_1DE8E5000, v231, v230, "Aurora Initialization | Ignore peak APCE overriden from capabilities: %s", v302, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraRampUpSpeed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraRampUpSpeed", "floatValue"}];
    *(this + 15) = v10;
    if (*this)
    {
      v93 = *this;
    }

    else
    {
      v92 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v93 = v92;
    }

    v229 = v93;
    v228 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v301, COERCE__INT64(*(this + 15)));
      _os_log_impl(&dword_1DE8E5000, v229, v228, "Aurora Initialization | Ramp up time overriden from capabilities: %f", v301, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraRampDownSpeed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraRampDownSpeed", "floatValue"}];
    *(this + 16) = v11;
    if (*this)
    {
      v91 = *this;
    }

    else
    {
      v90 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v91 = v90;
    }

    v227 = v91;
    v226 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v300, COERCE__INT64(*(this + 16)));
      _os_log_impl(&dword_1DE8E5000, v227, v226, "Aurora Initialization | Ramp down time overriden from capabilities: %f", v300, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraRampUpTapAPCEPoints"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v225 = [v276 objectForKeyedSubscript:@"AuroraRampUpTapAPCEPoints"];
    if ([v225 count] == 2)
    {
      [v225 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v225 objectAtIndexedSubscript:1], objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [objc_msgSend(v225 objectAtIndexedSubscript:{0), "floatValue"}];
        *(this + 18) = v12;
        [objc_msgSend(v225 objectAtIndexedSubscript:{1), "floatValue"}];
        *(this + 19) = v13;
        if (*this)
        {
          v89 = *this;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v88 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v88 = init_default_corebrightness_log();
          }

          v89 = v88;
        }

        v224 = v89;
        v223 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_8_0_8_0(v299, COERCE__INT64(*(this + 18)), COERCE__INT64(*(this + 19)));
          _os_log_impl(&dword_1DE8E5000, v224, v223, "Aurora Initialization | Ramp up tap APCE points overriden from capabilities - min: %f, max:%f", v299, 0x16u);
        }
      }

      else
      {
        if (*this)
        {
          v87 = *this;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v86 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v86 = init_default_corebrightness_log();
          }

          v87 = v86;
        }

        v222 = v87;
        v221 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          v84 = v222;
          v85 = v221;
          __os_log_helper_16_0_0(v220);
          _os_log_error_impl(&dword_1DE8E5000, v84, v85, "Aurora Initialization | Ramp up tap APCE points has unexpected types", v220, 2u);
        }
      }
    }

    else
    {
      if (*this)
      {
        v83 = *this;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v82 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v82 = init_default_corebrightness_log();
        }

        v83 = v82;
      }

      v219 = v83;
      v218 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v298, [v225 count]);
        _os_log_error_impl(&dword_1DE8E5000, v219, v218, "Aurora Initialization | Ramp up tap APCE points has unexpected number of values(%lu), expected 2", v298, 0xCu);
      }
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraRampDownTapAPCEPoints"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v217 = [v276 objectForKeyedSubscript:@"AuroraRampDownTapAPCEPoints"];
    if ([v217 count] == 2)
    {
      [v217 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v217 objectAtIndexedSubscript:1], objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [objc_msgSend(v217 objectAtIndexedSubscript:{0), "floatValue"}];
        *(this + 20) = v14;
        [objc_msgSend(v217 objectAtIndexedSubscript:{1), "floatValue"}];
        *(this + 21) = v15;
        if (*this)
        {
          v81 = *this;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v80 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v80 = init_default_corebrightness_log();
          }

          v81 = v80;
        }

        v216 = v81;
        v215 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_8_0_8_0(v297, COERCE__INT64(*(this + 20)), COERCE__INT64(*(this + 21)));
          _os_log_impl(&dword_1DE8E5000, v216, v215, "Aurora Initialization | Ramp down tap APCE points overriden from capabilities - min: %f, max:%f", v297, 0x16u);
        }
      }

      else
      {
        if (*this)
        {
          v79 = *this;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v78 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v78 = init_default_corebrightness_log();
          }

          v79 = v78;
        }

        v214 = v79;
        v213 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v76 = v214;
          v77 = v213;
          __os_log_helper_16_0_0(v212);
          _os_log_error_impl(&dword_1DE8E5000, v76, v77, "Aurora Initialization | Ramp down tap APCE points has unexpected types", v212, 2u);
        }
      }
    }

    else
    {
      if (*this)
      {
        v75 = *this;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v74 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v74 = init_default_corebrightness_log();
        }

        v75 = v74;
      }

      v211 = v75;
      v210 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v296, [v217 count]);
        _os_log_error_impl(&dword_1DE8E5000, v211, v210, "Aurora Initialization | Ramp down tap APCE points has unexpected number of values(%lu), expected 2", v296, 0xCu);
      }
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraCLTMThreshold"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraCLTMThreshold", "floatValue"}];
    *(this + 22) = v16;
    if (*this)
    {
      v73 = *this;
    }

    else
    {
      v72 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v73 = v72;
    }

    v209 = v73;
    v208 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v295, COERCE__INT64(*(this + 22)));
      _os_log_impl(&dword_1DE8E5000, v209, v208, "Aurora Initialization | CLTM activation threshold overriden from capabilities: %f", v295, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraCLTMEnterMultiplier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraCLTMEnterMultiplier", "floatValue"}];
    *(this + 23) = v17;
    if (*this)
    {
      v71 = *this;
    }

    else
    {
      v70 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v71 = v70;
    }

    v207 = v71;
    v206 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v294, COERCE__INT64(*(this + 23)));
      _os_log_impl(&dword_1DE8E5000, v207, v206, "Aurora Initialization | CLTM enter delta overriden from capabilities: %f", v294, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraUPOThreshold"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraUPOThreshold", "floatValue"}];
    *(this + 24) = v18;
    if (*this)
    {
      v69 = *this;
    }

    else
    {
      v68 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v69 = v68;
    }

    v205 = v69;
    v204 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v293, COERCE__INT64(*(this + 24)));
      _os_log_impl(&dword_1DE8E5000, v205, v204, "Aurora Initialization | UPO activation threshold overriden from capabilities: %f", v293, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraUPOEnterMultiplier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraUPOEnterMultiplier", "floatValue"}];
    *(this + 25) = v19;
    if (*this)
    {
      v67 = *this;
    }

    else
    {
      v66 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v67 = v66;
    }

    v203 = v67;
    v202 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v292, COERCE__INT64(*(this + 25)));
      _os_log_impl(&dword_1DE8E5000, v203, v202, "Aurora Initialization | UPO enter delta overriden from capabilities: %f", v292, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraSessionLimit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraSessionLimit", "floatValue"}];
    *(this + 26) = v20;
    if (*this)
    {
      v65 = *this;
    }

    else
    {
      v64 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v65 = v64;
    }

    v201 = v65;
    v200 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v291, COERCE__INT64(*(this + 26)));
      _os_log_impl(&dword_1DE8E5000, v201, v200, "Aurora Initialization | Session limit overriden from capabilities: %f", v291, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraIgnoreSessionLimit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraIgnoreSessionLimit", "floatValue"}];
    *(this + 108) = v21 != 0.0;
    if (*this)
    {
      v63 = *this;
    }

    else
    {
      v62 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v63 = v62;
    }

    v199 = v63;
    v198 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 108))
      {
        v22 = "YES";
      }

      else
      {
        v22 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v290, v22);
      _os_log_impl(&dword_1DE8E5000, v199, v198, "Aurora Initialization | Ignore session limit overriden from capabilities: %s", v290, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraIgnoreAPCE"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraIgnoreAPCE", "floatValue"}];
    *(this + 109) = v23 != 0.0;
    if (*this)
    {
      v61 = *this;
    }

    else
    {
      v60 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v61 = v60;
    }

    v197 = v61;
    v196 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 109))
      {
        v24 = "YES";
      }

      else
      {
        v24 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v289, v24);
      _os_log_impl(&dword_1DE8E5000, v197, v196, "Aurora Initialization | Ignore APCE overriden from capabilities: %s", v289, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"AuroraAllowEDR"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"AuroraAllowEDR", "floatValue"}];
    *(this + 110) = v25 != 0.0;
    if (*this)
    {
      v59 = *this;
    }

    else
    {
      v58 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v59 = v58;
    }

    v195 = v59;
    v194 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 110))
      {
        v26 = "YES";
      }

      else
      {
        v26 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v288, v26);
      _os_log_impl(&dword_1DE8E5000, v195, v194, "Aurora Initialization | Allow EDR overriden from capabilities: %s", v288, 0xCu);
    }
  }

  [v277 objectForKeyedSubscript:@"EDRAuroraSecondsPerStop"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v277 objectForKeyedSubscript:{@"EDRAuroraSecondsPerStop", "floatValue"}];
    *(this + 17) = v27;
    if (*this)
    {
      v57 = *this;
    }

    else
    {
      v56 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v57 = v56;
    }

    v193 = v57;
    v192 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v287, COERCE__INT64(*(this + 17)));
      _os_log_impl(&dword_1DE8E5000, v193, v192, "Aurora Initialization | Time for EDR ramps overriden from capabilities: %f", v287, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"SupportCLTMAwareAurora"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v276 objectForKeyedSubscript:{@"SupportCLTMAwareAurora", "floatValue"}];
    *(this + 111) = v28 != 0.0;
    if (*this)
    {
      v55 = *this;
    }

    else
    {
      v54 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v55 = v54;
    }

    v191 = v55;
    v190 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 111))
      {
        v29 = "YES";
      }

      else
      {
        v29 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v286, v29);
      _os_log_impl(&dword_1DE8E5000, v191, v190, "Aurora Initialization | Support CLTM Aware Aurora overridden from capabilities: %s", v286, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"PowerAwareAuroraSDRLUT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v189 = [v276 objectForKeyedSubscript:@"PowerAwareAuroraSDRLUT"];
    v183 = MEMORY[0x1E69E9820];
    v184 = -1073741824;
    v185 = 0;
    v186 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_385;
    v187 = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
    v188 = this;
    [v189 enumerateObjectsUsingBlock:?];
    if (*this)
    {
      v53 = *this;
    }

    else
    {
      v52 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v53 = v52;
    }

    v182 = v53;
    v181 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v285, v189);
      _os_log_impl(&dword_1DE8E5000, v182, v181, "Aurora Initialization | SDR LUT overridden from capabilities: %@", v285, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"PAARampUpMinAPCEPoints"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v180 = [v276 objectForKeyedSubscript:@"PAARampUpMinAPCEPoints"];
    v174 = MEMORY[0x1E69E9820];
    v175 = -1073741824;
    v176 = 0;
    v177 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_389;
    v178 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v179 = this;
    [v180 enumerateObjectsUsingBlock:?];
    if (*this)
    {
      v51 = *this;
    }

    else
    {
      v50 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v51 = v50;
    }

    v173 = v51;
    v172 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v284, v180);
      _os_log_impl(&dword_1DE8E5000, v173, v172, "Aurora Initialization | Ramp Up Min APCE Tap Points overridden from capabilities: %@", v284, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"PAARampUpMaxAPCEPoints"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v171 = [v276 objectForKeyedSubscript:@"PAARampUpMaxAPCEPoints"];
    v165 = MEMORY[0x1E69E9820];
    v166 = -1073741824;
    v167 = 0;
    v168 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_394;
    v169 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v170 = this;
    [v171 enumerateObjectsUsingBlock:?];
    if (*this)
    {
      v49 = *this;
    }

    else
    {
      v48 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v49 = v48;
    }

    v164 = v49;
    v163 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v283, v171);
      _os_log_impl(&dword_1DE8E5000, v164, v163, "Aurora Initialization | Ramp Up Max APCE Tap Points overridden from capabilities: %@", v283, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"PAARampDownMinAPCEPoints"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v162 = [v276 objectForKeyedSubscript:@"PAARampDownMinAPCEPoints"];
    v156 = MEMORY[0x1E69E9820];
    v157 = -1073741824;
    v158 = 0;
    v159 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_398;
    v160 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v161 = this;
    [v162 enumerateObjectsUsingBlock:?];
    if (*this)
    {
      v47 = *this;
    }

    else
    {
      v46 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v47 = v46;
    }

    v155 = v47;
    v154 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v282, v162);
      _os_log_impl(&dword_1DE8E5000, v155, v154, "Aurora Initialization | Ramp Down Min APCE Tap Points overridden from capabilities: %@", v282, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"PAARampDownMaxAPCEPoints"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v153 = [v276 objectForKeyedSubscript:@"PAARampDownMaxAPCEPoints"];
    v147 = MEMORY[0x1E69E9820];
    v148 = -1073741824;
    v149 = 0;
    v150 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_402;
    v151 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v152 = this;
    [v153 enumerateObjectsUsingBlock:?];
    if (*this)
    {
      v45 = *this;
    }

    else
    {
      v44 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v45 = v44;
    }

    v146 = v45;
    v145 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v281, v153);
      _os_log_impl(&dword_1DE8E5000, v146, v145, "Aurora Initialization | Ramp Down Max APCE Tap Points overridden from capabilities: %@", v281, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"PAAMaxGain"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v144 = [v276 objectForKeyedSubscript:@"PAAMaxGain"];
    v138 = MEMORY[0x1E69E9820];
    v139 = -1073741824;
    v140 = 0;
    v141 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_406;
    v142 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v143 = this;
    [v144 enumerateObjectsUsingBlock:?];
    if (*this)
    {
      v43 = *this;
    }

    else
    {
      v42 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v43 = v42;
    }

    v137 = v43;
    v136 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v280, v144);
      _os_log_impl(&dword_1DE8E5000, v137, v136, "Aurora Initialization | Max Gain overridden from capabilities: %@", v280, 0xCu);
    }
  }

  [v276 objectForKeyedSubscript:@"PAAEnergyConsumptionTarget"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v135 = [v276 objectForKeyedSubscript:@"PAAEnergyConsumptionTarget"];
    v129 = MEMORY[0x1E69E9820];
    v130 = -1073741824;
    v131 = 0;
    v132 = ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_410;
    v133 = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v134 = this;
    [v135 enumerateObjectsUsingBlock:?];
    if (*this)
    {
      v41 = *this;
    }

    else
    {
      v40 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v41 = v40;
    }

    v128 = v41;
    v127 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v279, v135);
      _os_log_impl(&dword_1DE8E5000, v128, v127, "Aurora Initialization | Energy Consumption Target overridden from capabilities: %@", v279, 0xCu);
    }
  }

  if (*(this + 111))
  {
    if (std::vector<float>::size[abi:de200100](this + 14) < 2 || (v39 = std::vector<float>::size[abi:de200100](this + 14), v39 != std::vector<float>::size[abi:de200100](this + 17)) || (v38 = std::vector<float>::size[abi:de200100](this + 14), v38 != std::vector<float>::size[abi:de200100](this + 20)) || (v37 = std::vector<float>::size[abi:de200100](this + 14), v37 != std::vector<float>::size[abi:de200100](this + 23)) || (v36 = std::vector<float>::size[abi:de200100](this + 14), v36 != std::vector<float>::size[abi:de200100](this + 26)) || (v35 = std::vector<float>::size[abi:de200100](this + 14), v35 != std::vector<float>::size[abi:de200100](this + 29)) || (v34 = std::vector<float>::size[abi:de200100](this + 14), v34 != std::vector<float>::size[abi:de200100](this + 32)))
    {
      *(this + 111) = 0;
      if (*this)
      {
        v33 = *this;
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

      v126 = v33;
      v125 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v30 = v126;
        v31 = v125;
        __os_log_helper_16_0_0(v124);
        _os_log_error_impl(&dword_1DE8E5000, v30, v31, "Aurora Initialization | Invalid Power Aware Aurora Tunables", v124, 2u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t *std::vector<float>::operator=[abi:de200100](uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    std::vector<float>::__copy_assign_alloc[abi:de200100]();
    std::vector<float>::assign[abi:de200100]<float *,0>(a1, *a2, a2[1]);
  }

  return a1;
}

void CBAuroraParams::~CBAuroraParams(CBAuroraParams *this)
{
  CBAuroraParams::~CBAuroraParams(this);
}

{
  std::vector<float>::~vector[abi:de200100](this + 32);
  std::vector<float>::~vector[abi:de200100](this + 29);
  std::vector<float>::~vector[abi:de200100](this + 26);
  std::vector<float>::~vector[abi:de200100](this + 23);
  std::vector<float>::~vector[abi:de200100](this + 20);
  std::vector<float>::~vector[abi:de200100](this + 17);
  std::vector<float>::~vector[abi:de200100](this + 14);
}

uint64_t __os_log_helper_16_2_11_8_32_8_32_8_32_8_32_8_32_8_32_8_32_8_32_8_32_8_32_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *result = 2;
  *(result + 1) = 11;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 32;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 32;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 32;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 32;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 32;
  *(result + 73) = 8;
  *(result + 74) = a9;
  *(result + 82) = 32;
  *(result + 83) = 8;
  *(result + 84) = a10;
  *(result + 92) = 32;
  *(result + 93) = 8;
  *(result + 94) = a11;
  *(result + 102) = 32;
  *(result + 103) = 8;
  *(result + 104) = a12;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_32_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
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

uint64_t __os_log_helper_16_2_20_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_32_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  result = a11;
  *a1 = 2;
  *(a1 + 1) = 20;
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
  *(a1 + 72) = 32;
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
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 0;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 0;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 0;
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
  return result;
}

void $_0::~$_0($_0 *this)
{
  $_0::~$_0(this);
}

{
  std::vector<float>::~vector[abi:de200100](this + 18);
  std::vector<float>::~vector[abi:de200100](this + 15);
  std::vector<float>::~vector[abi:de200100](this + 12);
  std::vector<float>::~vector[abi:de200100](this + 9);
  std::vector<float>::~vector[abi:de200100](this + 6);
  std::vector<float>::~vector[abi:de200100](this + 3);
  std::vector<float>::~vector[abi:de200100](this);
}

void $_0::$_0($_0 *this)
{
  $_0::$_0(this);
}

{
  std::vector<float>::vector[abi:de200100](this);
  std::vector<float>::vector[abi:de200100](this + 3);
  std::vector<float>::vector[abi:de200100](this + 6);
  std::vector<float>::vector[abi:de200100](this + 9);
  std::vector<float>::vector[abi:de200100](this + 12);
  std::vector<float>::vector[abi:de200100](this + 15);
  std::vector<float>::vector[abi:de200100](this + 18);
}

float ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v3;
  v4 = std::array<float,3ul>::operator[][abi:de200100](v6 + 8, a3);
  result = v7;
  *v4 = v7;
  return result;
}

float ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_320(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v3;
  v4 = std::array<float,3ul>::operator[][abi:de200100](v6 + 20, a3);
  result = v7;
  *v4 = v7;
  return result;
}

float ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_324(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v3;
  v4 = std::array<float,3ul>::operator[][abi:de200100](v6 + 32, a3);
  result = v7;
  *v4 = v7;
  return result;
}

uint64_t ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_385(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a1;
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v4;
  return std::vector<float>::push_back[abi:de200100]((v6 + 112), &v7);
}

uint64_t ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_389(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a1;
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v4;
  return std::vector<float>::push_back[abi:de200100]((v6 + 136), &v7);
}

uint64_t ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_394(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a1;
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v4;
  return std::vector<float>::push_back[abi:de200100]((v6 + 160), &v7);
}

uint64_t ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_398(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a1;
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v4;
  return std::vector<float>::push_back[abi:de200100]((v6 + 184), &v7);
}

uint64_t ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_402(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a1;
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v4;
  return std::vector<float>::push_back[abi:de200100]((v6 + 208), &v7);
}

uint64_t ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_406(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a1;
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v4;
  return std::vector<float>::push_back[abi:de200100]((v6 + 232), &v7);
}

uint64_t ___ZN14CBAuroraParams20loadFromCapabilitiesEP12NSDictionary_block_invoke_410(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a1;
  v6 = *(a1 + 32);
  [a2 floatValue];
  v7 = v4;
  return std::vector<float>::push_back[abi:de200100]((v6 + 256), &v7);
}

uint64_t std::vector<float>::emplace_back<float>(void *a1, float *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = std::vector<float>::__emplace_back_slow_path<float>(a1, a2);
  }

  else
  {
    std::vector<float>::__construct_one_at_end[abi:de200100]<float>(a1, a2);
    v5 = v4 + 4;
  }

  a1[1] = v5;
  return v5 - 4;
}

void *std::vector<float>::__construct_one_at_end[abi:de200100]<float>(uint64_t a1, float *a2)
{
  v8 = a1;
  v7 = a2;
  std::vector<float>::_ConstructTransaction::_ConstructTransaction[abi:de200100](&v5, a1, 1);
  std::__to_address[abi:de200100]<float>();
  std::allocator_traits<std::allocator<float>>::construct[abi:de200100]<float,float,void,0>(a1, v2, v7);
  v6 += 4;
  return std::vector<float>::_ConstructTransaction::~_ConstructTransaction[abi:de200100](&v5);
}

uint64_t std::vector<float>::__emplace_back_slow_path<float>(void *a1, float *a2)
{
  v12 = a1;
  v11 = a2;
  v2 = std::vector<float>::size[abi:de200100](a1);
  v7 = std::vector<float>::__recommend[abi:de200100](a1, v2 + 1);
  v3 = std::vector<float>::size[abi:de200100](a1);
  std::__split_buffer<float>::__split_buffer(v9, v7, v3, a1);
  std::__to_address[abi:de200100]<float>();
  std::allocator_traits<std::allocator<float>>::construct[abi:de200100]<float,float,void,0>(a1, v4, v11);
  v10 += 4;
  std::vector<float>::__swap_out_circular_buffer(a1, v9);
  v6 = a1[1];
  std::__split_buffer<float>::~__split_buffer(v9);
  return v6;
}

float std::construct_at[abi:de200100]<float,float,float *>(_DWORD *a1, float *a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  result = *a2;
  *a1 = *a2;
  return result;
}

void std::vector<float>::__copy_assign_alloc[abi:de200100]()
{
  std::vector<float>::__copy_assign_alloc[abi:de200100]();
}

{
  ;
}

void std::vector<float>::__assign_with_size[abi:de200100]<float *,float *>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 > std::vector<float>::capacity[abi:de200100](a1))
  {
    std::vector<float>::__vdeallocate(a1);
    v6 = std::vector<float>::__recommend[abi:de200100](a1, a4);
    std::vector<float>::__vallocate[abi:de200100](a1, v6);
    std::vector<float>::__construct_at_end<float *,float *>(a1, a2, a3, a4);
  }

  else if (a4 <= std::vector<float>::size[abi:de200100](a1))
  {
    std::__copy[abi:de200100]<float *,float *,float *>(a2, a3, *a1);
    std::vector<float>::__destruct_at_end[abi:de200100](a1, v5);
  }

  else
  {
    std::vector<float>::size[abi:de200100](a1);
    std::next[abi:de200100]<float *,0>();
    std::copy[abi:de200100]<float *,float *>(a2, a2, *a1);
    v4 = std::vector<float>::size[abi:de200100](a1);
    std::vector<float>::__construct_at_end<float *,float *>(a1, a2, a3, a4 - v4);
  }
}

void std::vector<float>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<float>::clear[abi:de200100](a1);
    std::vector<float>::__annotate_delete[abi:de200100]();
    v2 = *a1;
    v1 = std::vector<float>::capacity[abi:de200100](a1);
    std::allocator_traits<std::allocator<float>>::deallocate[abi:de200100](a1, v2, v1);
    a1[2] = 0;
    a1[1] = 0;
    *a1 = 0;
  }
}

uint64_t std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::map[abi:de200100](uint64_t a1)
{
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::map[abi:de200100](a1);
  return a1;
}

{
  v4 = a1;
  std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>::__map_value_compare[abi:de200100](&v3);
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__tree(a1);
  return a1;
}

uint64_t std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::~map[abi:de200100](uint64_t a1)
{
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::~map[abi:de200100](a1);
  return a1;
}

{
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::~__tree(a1);
  return a1;
}

uint64_t std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::begin[abi:de200100]()
{
  v1 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::begin[abi:de200100]();
  std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::__map_iterator[abi:de200100](&v2, v1);
  return v2;
}

uint64_t std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]()
{
  v1 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]();
  std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::__map_iterator[abi:de200100](&v2, v1);
  return v2;
}

uint64_t std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::find[abi:de200100](uint64_t a1, void *a2)
{
  v3 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::find<void *>(a1, a2);
  std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::__map_iterator[abi:de200100](&v4, v3);
  return v4;
}

void std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::operator->[abi:de200100](uint64_t a1)
{
  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::operator->[abi:de200100](a1);
  std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>::__get_value[abi:de200100]();
  std::pointer_traits<std::pair<void * const,void({block_pointer})(PMMitigationLevel)> *>::pointer_to[abi:de200100]();
}

uint64_t std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::erase[abi:de200100](uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v6 = a1;
  std::__tree_const_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_const_iterator[abi:de200100](&v4, a2);
  v5 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::erase(a1, v4);
  std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::__map_iterator[abi:de200100](&v8, v5);
  return v8;
}

void sub_1DEA7C9CC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj)
{
  *(v13 - 64) = a1;
  *(v13 - 68) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v13 - 64));
}

uint64_t std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::insert[abi:de200100](uint64_t a1, __n128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  v9 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__insert_unique[abi:de200100](a1, a2);
  v10 = v2;
  v4 = v9;
  v5 = v2;
  std::pair<std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>,BOOL>::pair[abi:de200100]<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>,BOOL,0>(&v8, &v4);
  *MEMORY[0x1E69E9840];
  return v8;
}

void *std::pair<void * const,void({block_pointer})(PMMitigationLevel)>::pair[abi:de200100]<void *&,void({block_pointer})(PMMitigationLevel),0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__tree(uint64_t a1)
{
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__tree(a1);
  return a1;
}

{
  std::__tree_end_node<std::__tree_node_base<void *> *>::__tree_end_node[abi:de200100]((a1 + 8));
  std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>::allocator[abi:de200100](a1);
  *(a1 + 16) = 0;
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
  v5 = v1;
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
  v3 = v2;
  result = a1;
  *v3 = v5;
  return result;
}

uint64_t std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>::allocator[abi:de200100](uint64_t a1)
{
  std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>::allocator[abi:de200100](a1);
  return a1;
}

{
  std::__non_trivial_if<true>::__non_trivial_if[abi:de200100]();
  return a1;
}

void std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]()
{
  std::pointer_traits<std::__tree_end_node<std::__tree_node_base<void *> *> *>::pointer_to[abi:de200100]();
}

{
  std::pointer_traits<std::__tree_end_node<std::__tree_node_base<void *> *> *>::pointer_to[abi:de200100]();
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::~__tree(uint64_t a1)
{
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::~__tree(a1);
  return a1;
}

{
  v1 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__root[abi:de200100]();
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::destroy(a1, v1);
  return a1;
}

void std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__node_alloc[abi:de200100]();
    v6 = v2;
    v4 = v2;
    std::__tree_key_value_types<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>::__get_ptr[abi:de200100]();
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::destroy[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,void,0>(v4, v3);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::deallocate[abi:de200100](v6, a2, 1);
  }
}

void std::__destroy_at[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,0>(uint64_t a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:65: assertion __loc != nullptr failed: null pointer given to destroy_at\n");
  }
}

void std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>::__get_value[abi:de200100]()
{
  std::launder[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>();
}

{
  std::launder[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)> const>();
}

void std::__libcpp_deallocate[abi:de200100]<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>(void *a1, uint64_t a2, unint64_t a3)
{
  if (std::__is_overaligned_for_new[abi:de200100](a3))
  {
    std::__libcpp_operator_delete[abi:de200100]<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,std::align_val_t>(a1, a3);
  }

  else
  {
    std::__libcpp_operator_delete[abi:de200100]<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *>(a1);
  }
}

void *std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__move_assign(void *a1, void *a2)
{
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::destroy(a1, *v2);
  *a1 = *a2;
  a1[1] = a2[1];
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__move_assign_alloc[abi:de200100]();
  a1[2] = a2[2];
  if (*std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::size[abi:de200100](a1))
  {
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
    v12 = v7;
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
    *(*v8 + 16) = v12;
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
    v13 = v9;
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
    *v10 = v13;
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
    *v11 = 0;
    result = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::size[abi:de200100](a2);
    *result = 0;
  }

  else
  {
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
    v14 = v3;
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
    v5 = v4;
    result = v14;
    *v5 = v14;
  }

  return result;
}

void std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__move_assign_alloc[abi:de200100]()
{
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__move_assign_alloc[abi:de200100]();
}

{
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__node_alloc[abi:de200100]();
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__node_alloc[abi:de200100]();
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::size[abi:de200100](uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::begin[abi:de200100]()
{
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](&v2, *v0);
  return v2;
}

void *std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](void *a1, uint64_t a2)
{
  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](a1, a2);
  return a1;
}

{
  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](a1, a2);
  return a1;
}

void *std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]()
{
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](&v2, v0);
  return v2;
}

uint64_t *std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::operator++[abi:de200100](uint64_t *a1)
{
  v1 = std::__tree_next_iter[abi:de200100]<std::__tree_end_node<std::__tree_node_base<void *> *> *,std::__tree_node_base<void *> *>(*a1);
  result = a1;
  *a1 = v1;
  return result;
}

void *std::__tree_next_iter[abi:de200100]<std::__tree_end_node<std::__tree_node_base<void *> *> *,std::__tree_node_base<void *> *>(uint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:194: assertion __x != nullptr failed: node shouldn't be null\n");
  }

  if (*(v3 + 8))
  {
    return std::__tree_min[abi:de200100]<std::__tree_node_base<void *> *>(*(v3 + 8));
  }

  for (i = std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v3); !i; i = std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v3))
  {
    v3 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v3);
  }

  return *(v3 + 16);
}

void *std::__tree_min[abi:de200100]<std::__tree_node_base<void *> *>(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:166: assertion __x != nullptr failed: Root node shouldn't be null\n");
  }

  while (*v2)
  {
    v2 = *v2;
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::find<void *>(uint64_t a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  v8 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__root[abi:de200100]();
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
  v12 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__lower_bound<void *>(a1, a2, v8, v2);
  v11 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]();
  LOBYTE(v10) = 0;
  if (std::operator!=[abi:de200100](&v12, &v11))
  {
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::value_comp[abi:de200100]();
    v6 = v3;
    v5 = v13;
    std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::operator*[abi:de200100](&v12);
    v10 = !std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>::operator()[abi:de200100](v6, v5);
  }

  if (v10)
  {
    return v12;
  }

  else
  {
    return std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]();
  }
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__lower_bound<void *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  while (a3)
  {
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::value_comp[abi:de200100]();
    if (std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>::operator()[abi:de200100](v4, (a3 + 4), a2))
    {
      a3 = a3[1];
    }

    else
    {
      a4 = a3;
      a3 = *a3;
    }
  }

  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](&v9, a4);
  return v9;
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::erase(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v8 = std::__tree_const_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__get_np[abi:de200100](&v9);
  v10 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__remove_node_pointer(a1, v8);
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__node_alloc[abi:de200100]();
  v7 = v2;
  v6 = v2;
  std::__tree_const_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::operator*[abi:de200100](&v9);
  std::__tree_key_value_types<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>::__get_ptr[abi:de200100]();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::destroy[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,void,0>(v6, v3);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::deallocate[abi:de200100](v7, v8, 1);
  return v10;
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__remove_node_pointer(uint64_t a1, uint64_t a2)
{
  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](&v10, a2);
  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::operator++[abi:de200100](&v10);
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
  if (*v2 == a2)
  {
    v7 = v10;
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
    *v3 = v7;
  }

  v4 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::size[abi:de200100](a1);
  --*v4;
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
  std::__tree_remove[abi:de200100]<std::__tree_node_base<void *> *>(*v5, a2);
  return v10;
}

uint64_t std::__tree_remove[abi:de200100]<std::__tree_node_base<void *> *>(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:336: assertion __root != nullptr failed: Root node should not be null\n");
  }

  if (!a2)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:337: assertion __z != nullptr failed: The node to remove should not be null\n");
  }

  if (!std::__tree_invariant[abi:de200100]<std::__tree_node_base<void *> *>(v17))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:338: assertion std::__tree_invariant(__root) failed: The tree invariants should hold\n");
  }

  if (*a2 && *(a2 + 8))
  {
    v11 = std::__tree_next[abi:de200100]<std::__tree_node_base<void *> *>(a2);
  }

  else
  {
    v11 = a2;
  }

  if (*v11)
  {
    v10 = *v11;
  }

  else
  {
    v10 = v11[1];
  }

  v13 = 0;
  if (v10)
  {
    *(v10 + 16) = v11[2];
  }

  result = std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v11);
  if (result)
  {
    *v11[2] = v10;
    if (v11 == v17)
    {
      v17 = v10;
    }

    else
    {
      result = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v11);
      v13 = *(result + 8);
    }
  }

  else
  {
    result = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v11);
    *(result + 8) = v10;
    v13 = *v11[2];
  }

  v12 = v11[3] & 1;
  if (v11 != a2)
  {
    v11[2] = *(a2 + 16);
    if (std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(a2))
    {
      *v11[2] = v11;
    }

    else
    {
      *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v11) + 8) = v11;
    }

    *v11 = *a2;
    result = std::__tree_node_base<void *>::__set_parent[abi:de200100](*v11, v11);
    v11[1] = *(a2 + 8);
    if (v11[1])
    {
      result = std::__tree_node_base<void *>::__set_parent[abi:de200100](v11[1], v11);
    }

    *(v11 + 24) = *(a2 + 24) & 1;
    if (v17 == a2)
    {
      v17 = v11;
    }
  }

  if ((v12 & 1) != 0 && v17)
  {
    if (v10)
    {
      *(v10 + 24) = 1;
    }

    else
    {
      for (i = std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v13); ; i = std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v8))
      {
        while (!i)
        {
          if ((v13[3] & 1) == 0)
          {
            *(v13 + 24) = 1;
            *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13) + 24) = 0;
            v4 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13);
            std::__tree_left_rotate[abi:de200100]<std::__tree_node_base<void *> *>(v4);
            if (v17 == *v13)
            {
              v17 = v13;
            }

            v13 = *(*v13 + 8);
          }

          if (*v13 && (*(*v13 + 24) & 1) == 0 || v13[1] && (*(v13[1] + 24) & 1) == 0)
          {
            if (!v13[1] || (*(v13[1] + 24) & 1) != 0)
            {
              *(*v13 + 24) = 1;
              *(v13 + 24) = 0;
              std::__tree_right_rotate[abi:de200100]<std::__tree_node_base<void *> *>(v13);
              v13 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13);
            }

            *(v13 + 24) = *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13) + 24) & 1;
            *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13) + 24) = 1;
            *(v13[1] + 24) = 1;
            v5 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13);
            return std::__tree_left_rotate[abi:de200100]<std::__tree_node_base<void *> *>(v5);
          }

          *(v13 + 24) = 0;
          result = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13);
          v14 = result;
          if (result == v17 || (*(result + 24) & 1) == 0)
          {
            *(result + 24) = 1;
            return result;
          }

          if (std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(result))
          {
            v9 = *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v14) + 8);
          }

          else
          {
            v9 = **(v14 + 16);
          }

          v13 = v9;
          i = std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v9);
        }

        if ((v13[3] & 1) == 0)
        {
          *(v13 + 24) = 1;
          *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13) + 24) = 0;
          v6 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13);
          std::__tree_right_rotate[abi:de200100]<std::__tree_node_base<void *> *>(v6);
          if (v17 == v13[1])
          {
            v17 = v13;
          }

          v13 = *v13[1];
        }

        if (*v13 && (*(*v13 + 24) & 1) == 0 || v13[1] && (*(v13[1] + 24) & 1) == 0)
        {
          break;
        }

        *(v13 + 24) = 0;
        result = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13);
        v15 = result;
        if ((*(result + 24) & 1) == 0 || result == v17)
        {
          *(result + 24) = 1;
          return result;
        }

        if (std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(result))
        {
          v8 = *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v15) + 8);
        }

        else
        {
          v8 = **(v15 + 16);
        }

        v13 = v8;
      }

      if (!*v13 || (*(*v13 + 24) & 1) != 0)
      {
        *(v13[1] + 24) = 1;
        *(v13 + 24) = 0;
        std::__tree_left_rotate[abi:de200100]<std::__tree_node_base<void *> *>(v13);
        v13 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13);
      }

      *(v13 + 24) = *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13) + 24) & 1;
      *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13) + 24) = 1;
      *(*v13 + 24) = 1;
      v7 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v13);
      return std::__tree_right_rotate[abi:de200100]<std::__tree_node_base<void *> *>(v7);
    }
  }

  return result;
}

BOOL std::__tree_invariant[abi:de200100]<std::__tree_node_base<void *> *>(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(a1) && (*(a1 + 24) & 1) != 0 && std::__tree_sub_invariant<std::__tree_node_base<void *> *>(a1) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

void *std::__tree_next[abi:de200100]<std::__tree_node_base<void *> *>(uint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:184: assertion __x != nullptr failed: node shouldn't be null\n");
  }

  if (*(v3 + 8))
  {
    return std::__tree_min[abi:de200100]<std::__tree_node_base<void *> *>(*(v3 + 8));
  }

  for (i = std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v3); !i; i = std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v3))
  {
    v3 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v3);
  }

  return std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v3);
}

uint64_t std::__tree_left_rotate[abi:de200100]<std::__tree_node_base<void *> *>(uint64_t a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:237: assertion __x != nullptr failed: node shouldn't be null\n");
  }

  if (!*(a1 + 8))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:238: assertion __x->__right_ != nullptr failed: node should have a right child\n");
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = *v2;
  if (*(a1 + 8))
  {
    std::__tree_node_base<void *>::__set_parent[abi:de200100](*(a1 + 8), a1);
  }

  v2[2] = *(a1 + 16);
  if (std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(a1))
  {
    **(a1 + 16) = v2;
  }

  else
  {
    *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a1) + 8) = v2;
  }

  *v2 = a1;
  return std::__tree_node_base<void *>::__set_parent[abi:de200100](a1, v2);
}

uint64_t std::__tree_right_rotate[abi:de200100]<std::__tree_node_base<void *> *>(uint64_t *a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:256: assertion __x != nullptr failed: node shouldn't be null\n");
  }

  if (!*a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:257: assertion __x->__left_ != nullptr failed: node should have a left child\n");
  }

  v2 = *a1;
  *a1 = *(*a1 + 8);
  if (*a1)
  {
    std::__tree_node_base<void *>::__set_parent[abi:de200100](*a1, a1);
  }

  *(v2 + 16) = a1[2];
  if (std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(a1))
  {
    *a1[2] = v2;
  }

  else
  {
    *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a1) + 8) = v2;
  }

  *(v2 + 8) = a1;
  return std::__tree_node_base<void *>::__set_parent[abi:de200100](a1, v2);
}

uint64_t std::__tree_sub_invariant<std::__tree_node_base<void *> *>(void *a1)
{
  if (a1)
  {
    if (!*a1 || *(*a1 + 16) == a1)
    {
      if (!a1[1] || *(a1[1] + 16) == a1)
      {
        if (*a1 == a1[1] && *a1)
        {
          return 0;
        }

        else
        {
          if ((a1[3] & 1) == 0)
          {
            if (*a1 && (*(*a1 + 24) & 1) == 0)
            {
              return 0;
            }

            if (a1[1] && (*(a1[1] + 24) & 1) == 0)
            {
              return 0;
            }
          }

          v2 = std::__tree_sub_invariant<std::__tree_node_base<void *> *>(*a1);
          if (v2)
          {
            if (v2 == std::__tree_sub_invariant<std::__tree_node_base<void *> *>(a1[1]))
            {
              return (v2 + (a1[3] & 1));
            }

            else
            {
              return 0;
            }
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__insert_unique[abi:de200100](uint64_t a1, __n128 *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  std::__tree_key_value_types<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>::__get_key[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,0>();
  result = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__emplace_unique_key_args<void *,std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>(a1, v2, a2);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::pair<std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>,BOOL>::pair[abi:de200100]<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>,BOOL,0>(uint64_t a1, uint64_t a2)
{
  std::pair<std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>,BOOL>::pair[abi:de200100]<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>,BOOL,0>(a1, a2);
  return a1;
}

{
  std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::__map_iterator[abi:de200100](a1, *a2);
  result = a1;
  *(a1 + 8) = *(a2 + 8) & 1;
  return result;
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__emplace_unique_key_args<void *,std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>(uint64_t a1, void *a2, __n128 *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v12 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__find_equal<void *>(a1, &v13, a2);
  v11 = *v12;
  v10 = 0;
  if (!*v12)
  {
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__construct_node<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>(a1, v14, v9);
    v5 = v13;
    v6 = v12;
    v3 = std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::get[abi:de200100](v9);
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__insert_node_at(a1, v5, v6, v3);
    v11 = std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::release[abi:de200100](v9);
    v10 = 1;
    std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::~unique_ptr[abi:de200100](v9);
  }

  std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>::__tree_iterator[abi:de200100](&v8, v11);
  std::pair<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>,BOOL>::pair[abi:de200100]<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>,BOOL &,0>(&v17, &v8, &v10);
  return v17;
}

void *std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__find_equal<void *>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__root[abi:de200100]();
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__root_ptr[abi:de200100]();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::value_comp[abi:de200100]();
        if (!std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>::operator()[abi:de200100](v4, a3))
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::value_comp[abi:de200100]();
      if (!std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>::operator()[abi:de200100](v5, (v9 + 4), a3))
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
    *a2 = v6;
    return *a2;
  }
}

uint64_t std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__construct_node<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = a1;
  v12 = a2;
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__node_alloc[abi:de200100]();
  v11 = v3;
  v10 = 0;
  v6 = std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::allocate[abi:de200100](v3, 1uLL);
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::__tree_node_destructor[abi:de200100](&v9, v11, 0);
  std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::unique_ptr[abi:de200100]<true,void>(a3, v6, &v9);
  v8 = v11;
  std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::operator->[abi:de200100](a3);
  std::__tree_key_value_types<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>::__get_ptr[abi:de200100]();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::construct[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,void,0>(v8, v4, v12);
  result = std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::get_deleter[abi:de200100](a3);
  *(result + 8) = 1;
  return result;
}

void *std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__insert_node_at(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
  if (**v4)
  {
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
    v9 = **v5;
    std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__begin_node[abi:de200100]();
    *v6 = v9;
  }

  std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::__end_node[abi:de200100]();
  std::__tree_balance_after_insert[abi:de200100]<std::__tree_node_base<void *> *>(*v7, *a3);
  result = std::__tree<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__map_value_compare<void *,std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::less<void *>,true>,std::allocator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>>::size[abi:de200100](a1);
  ++*result;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::release[abi:de200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  return v2;
}

void **std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::~unique_ptr[abi:de200100](void **a1)
{
  std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::~unique_ptr[abi:de200100](a1);
  return a1;
}

{
  std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::reset[abi:de200100](a1, 0);
  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::unique_ptr[abi:de200100]<true,void>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::unique_ptr[abi:de200100]<true,void>(a1, a2, a3);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = *a3;
  std::__compressed_pair_padding<std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>,false>::__compressed_pair_padding((a1 + 17));
  return a1;
}

void *std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>::allocate[abi:de200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::max_size[abi:de200100]<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>,void,0>())
  {
    std::__throw_bad_array_new_length[abi:de200100]();
  }

  return std::__libcpp_allocate[abi:de200100]<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>(a2, 8uLL);
}

void *std::__libcpp_allocate[abi:de200100]<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>(uint64_t a1, std::align_val_t a2)
{
  v3 = 48 * a1;
  if (!std::__is_overaligned_for_new[abi:de200100](a2))
  {
    std::__libcpp_operator_new[abi:de200100]<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>();
  }

  return std::__libcpp_operator_new[abi:de200100]<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,unsigned long,std::align_val_t>(v3, a2);
}

uint64_t std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::__tree_node_destructor[abi:de200100](uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3 & 1;
  return result;
}

_BYTE *std::__compressed_pair_padding<std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>,false>::__compressed_pair_padding(_BYTE *result)
{
  v2 = result;
  do
  {
    *v2 = 0;
  }

  while (++v2 - (result + 7));
  return result;
}

__n128 std::construct_at[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,std::pair<void * const,void({block_pointer})(PMMitigationLevel)>*>(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:39: assertion __location != nullptr failed: null pointer given to construct_at\n");
  }

  result = *a2;
  *a1 = *a2;
  return result;
}

void std::__tree_balance_after_insert[abi:de200100]<std::__tree_node_base<void *> *>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:280: assertion __root != nullptr failed: Root of the tree shouldn't be null\n");
  }

  if (!a2)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CACiugD83PS9O4MQmDrt24KbeUngbVajAxILYZI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:281: assertion __x != nullptr failed: Can't attach null node to a leaf\n");
  }

  *(a2 + 24) = a2 == a1;
  while (1)
  {
    v10 = 0;
    if (a2 != a1)
    {
      v10 = *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2) + 24) ^ 1;
    }

    if ((v10 & 1) == 0)
    {
      break;
    }

    v2 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2);
    if (std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(v2))
    {
      v3 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2);
      v12 = *(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v3) + 8);
      if (!v12 || (*(v12 + 24) & 1) != 0)
      {
        if (!std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(a2))
        {
          a2 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2);
          std::__tree_left_rotate[abi:de200100]<std::__tree_node_base<void *> *>(a2);
        }

        v5 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2);
        *(v5 + 24) = 1;
        v6 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v5);
        *(v6 + 24) = 0;
        std::__tree_right_rotate[abi:de200100]<std::__tree_node_base<void *> *>(v6);
        return;
      }

      v4 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2);
      *(v4 + 24) = 1;
      a2 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v4);
      *(a2 + 24) = a2 == a1;
      *(v12 + 24) = 1;
    }

    else
    {
      v11 = **(std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2) + 16);
      if (!v11 || (*(v11 + 24) & 1) != 0)
      {
        if (std::__tree_is_left_child[abi:de200100]<std::__tree_node_base<void *> *>(a2))
        {
          a2 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2);
          std::__tree_right_rotate[abi:de200100]<std::__tree_node_base<void *> *>(a2);
        }

        v8 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2);
        *(v8 + 24) = 1;
        v9 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v8);
        *(v9 + 24) = 0;
        std::__tree_left_rotate[abi:de200100]<std::__tree_node_base<void *> *>(v9);
        return;
      }

      v7 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](a2);
      *(v7 + 24) = 1;
      a2 = std::__tree_node_base<void *>::__parent_unsafe[abi:de200100](v7);
      *(a2 + 24) = a2 == a1;
      *(v11 + 24) = 1;
    }
  }
}

void std::unique_ptr<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>>::reset[abi:de200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::operator()[abi:de200100]((a1 + 1), v2);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::operator()[abi:de200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    v3 = *a1;
    std::__tree_key_value_types<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>>::__get_ptr[abi:de200100]();
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::destroy[abi:de200100]<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>,void,0>(v3, v2);
  }

  if (a2)
  {
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *>>>::deallocate[abi:de200100](*a1, a2, 1);
  }
}

uint64_t std::pair<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>,BOOL>::pair[abi:de200100]<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>,BOOL &,0>(uint64_t result, void *a2, _BYTE *a3)
{
  *result = *a2;
  *(result + 8) = *a3 & 1;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_0_4_0_4_0_8_66(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5)
{
  *result = 2;
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
  *(result + 24) = 66;
  *(result + 25) = 8;
  *(result + 26) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_0_4_0_8_66(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_5_8_0_4_0_8_0_8_0_4_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = 0;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  return result;
}

__CFString *aabUpdateStrategyTypeToString_1(uint64_t a1)
{
  v2 = 0;
  switch(a1)
  {
    case 0:
      return @"preference based";
    case 1:
      return @"BOLTS";
    case 2:
      return @"hybrid with pref based as main and BOLTS as alternative";
    case 3:
      return @"hybrid with BOLTS as main and pref based as alternative";
  }

  return v2;
}

void sub_1DEA91B44(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  *(v10 - 24) = a1;
  *(v10 - 28) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v10 - 24));
}

uint64_t __os_log_helper_16_2_2_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_0_4_0_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_4_0_4_0_8_32_4_0(uint64_t result, int a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
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
  *(result + 25) = 4;
  *(result + 26) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_7_8_0_8_0_4_0_8_0_4_0_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  *result = 0;
  *(result + 1) = 7;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  *(result + 44) = 0;
  *(result + 45) = 4;
  *(result + 46) = a7;
  *(result + 50) = 0;
  *(result + 51) = 4;
  *(result + 52) = a8;
  return result;
}

uint64_t __os_log_helper_16_0_9_8_0_8_0_4_0_8_0_4_0_4_0_4_0_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10)
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
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  *(result + 44) = 0;
  *(result + 45) = 4;
  *(result + 46) = a7;
  *(result + 50) = 0;
  *(result + 51) = 4;
  *(result + 52) = a8;
  *(result + 56) = 0;
  *(result + 57) = 4;
  *(result + 58) = a9;
  *(result + 62) = 0;
  *(result + 63) = 4;
  *(result + 64) = a10;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}