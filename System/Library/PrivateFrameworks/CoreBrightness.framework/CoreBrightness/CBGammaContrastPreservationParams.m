@interface CBGammaContrastPreservationParams
- (BOOL)isEqual:(id)a3;
- (CBGammaContrastPreservationParams)initWithProvider:(id)a3;
- (void)dealloc;
@end

@implementation CBGammaContrastPreservationParams

- (CBGammaContrastPreservationParams)initWithProvider:(id)a3
{
  v57[20] = *MEMORY[0x1E69E9840];
  v45 = self;
  v44 = a2;
  v43 = a3;
  context = objc_autoreleasePoolPush();
  v42.receiver = v45;
  v42.super_class = CBGammaContrastPreservationParams;
  v45 = [(CBGammaContrastPreservationParams *)&v42 init];
  v3 = os_log_create("com.apple.CoreBrightness.ChromaticCorrection", "gcp");
  v45->_logHandle = v3;
  v45->_aodRampDuration = 5.0;
  v56[0] = @"supports-gcp";
  v57[0] = &unk_1F59C93A8;
  v56[1] = @"gcp-ramp-up-duration";
  v57[1] = &unk_1F59C96B8;
  v56[2] = @"gcp-ramp-down-duration";
  v57[2] = &unk_1F59C96C8;
  v56[3] = @"gcp-ramp-up-lux-threshold";
  v57[3] = &unk_1F59C96D8;
  v56[4] = @"gcp-ramp-down-lux-threshold";
  v57[4] = &unk_1F59C96D8;
  v56[5] = @"gcp-ramp-update-rate";
  v57[5] = &unk_1F59C96E8;
  v56[6] = @"gcp-reference-white-nits";
  v57[6] = &unk_1F59C96F8;
  v56[7] = @"gcp-reference-ambient-lux";
  v57[7] = &unk_1F59C9708;
  v56[8] = kCBGCPGammaMin;
  v57[8] = &unk_1F59C9718;
  v56[9] = kCBGCPGammaMax;
  v57[9] = &unk_1F59C9728;
  v56[10] = kCBGCPGammaFactorLow;
  v57[10] = &unk_1F59C9738;
  v56[11] = kCBGCPGammaFactorHigh;
  v57[11] = &unk_1F59C9748;
  v56[12] = kCBGCPNitsMin;
  v57[12] = &unk_1F59C96D8;
  v56[13] = kCBGCPNitsMax;
  v57[13] = &unk_1F59C9758;
  v56[14] = kCBGCPAmbientMin;
  v57[14] = &unk_1F59C9768;
  v56[15] = kCBGCPAmbientMax;
  v57[15] = &unk_1F59C9778;
  v56[16] = kCBGCPAmbientFactor;
  v57[16] = &unk_1F59C8828;
  v56[17] = kCBGCPKb;
  v57[17] = &unk_1F59C9788;
  v56[18] = kCBGCPKl;
  v57[18] = &unk_1F59C9798;
  v56[19] = kCBGCPASb;
  v57[19] = &unk_1F59C97A8;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:20];
  v55[0] = v43;
  v55[1] = [CBDictConfigProvider providerWithDict:v41];
  v40 = +[CBCombinedConfigProvider providerFromList:](CBCombinedConfigProvider, "providerFromList:", [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2]);
  [v40 setLogHandle:v45->_logHandle];
  v37 = 0;
  if ([v40 loadUint:@"supports-gcp" toDestination:&v45->_supported])
  {
    v37 = [v40 loadFloat:@"gcp-ramp-up-duration" toDestination:&v45->_rampUpDuration];
  }

  v36 = 0;
  if (v37)
  {
    v36 = [v40 loadFloat:@"gcp-ramp-down-duration" toDestination:&v45->_rampDownDuration];
  }

  v35 = 0;
  if (v36)
  {
    v35 = [v40 loadFloat:@"gcp-ramp-up-lux-threshold" toDestination:&v45->_rampUpLuxDeltaThreshold];
  }

  v34 = 0;
  if (v35)
  {
    v34 = [v40 loadFloat:@"gcp-ramp-down-lux-threshold" toDestination:&v45->_rampDownLuxDeltaThreshold];
  }

  v33 = 0;
  if (v34)
  {
    v33 = [v40 loadFloat:@"gcp-ramp-update-rate" toDestination:&v45->_rampUpdateRate];
  }

  v32 = 0;
  if (v33)
  {
    v32 = [v40 loadFloat:@"gcp-reference-white-nits" toDestination:&v45->_referenceWhiteBrightness];
  }

  v31 = 0;
  if (v32)
  {
    v31 = [v40 loadFloat:@"gcp-reference-ambient-lux" toDestination:&v45->_referenceLux];
  }

  v30 = 0;
  if (v31)
  {
    v30 = [v40 loadFloat:kCBGCPNitsMin toDestination:&v45->_Bmin];
  }

  v29 = 0;
  if (v30)
  {
    v29 = [v40 loadFloat:kCBGCPNitsMax toDestination:&v45->_Bmax];
  }

  v28 = 0;
  if (v29)
  {
    v28 = [v40 loadFloat:kCBGCPAmbientMin toDestination:&v45->_Lmin];
  }

  v27 = 0;
  if (v28)
  {
    v27 = [v40 loadFloat:kCBGCPAmbientMax toDestination:&v45->_Lmax];
  }

  v26 = 0;
  if (v27)
  {
    v26 = [v40 loadFloat:kCBGCPAmbientFactor toDestination:&v45->_ambientFactor];
  }

  v25 = 0;
  if (v26)
  {
    v25 = [v40 loadFloat:kCBGCPGammaMin toDestination:&v45->_gammaMin];
  }

  v24 = 0;
  if (v25)
  {
    v24 = [v40 loadFloat:kCBGCPGammaMax toDestination:&v45->_gammaMax];
  }

  v23 = 0;
  if (v24)
  {
    v23 = [v40 loadFloat:kCBGCPGammaFactorLow toDestination:&v45->_gcpFactorLow];
  }

  v22 = 0;
  if (v23)
  {
    v22 = [v40 loadFloat:kCBGCPGammaFactorHigh toDestination:&v45->_gcpFactorHigh];
  }

  v21 = 0;
  if (v22)
  {
    v21 = [v40 loadFloat:kCBGCPASb toDestination:&v45->_ASb];
  }

  v20 = 0;
  if (v21)
  {
    v20 = [v40 loadFloat:kCBGCPKb toDestination:&v45->_Kb];
  }

  v19 = 0;
  if (v20)
  {
    v19 = [v40 loadFloat:kCBGCPKl toDestination:&v45->_Kl];
  }

  if ((v19 & 1) == 0)
  {
    __assert_rtn("[CBGammaContrastPreservationParams initWithProvider:]", "CBGammaContrastPreservationParams.mm", 123, "loaded");
  }

  if (v45->_gammaMin < v45->_gammaMax)
  {
    if (v45->_Lmin > 0.0)
    {
      if (v45->_Bmin > 0.0)
      {
        if (v45->_ASb >= 0.5 && v45->_ASb <= 2.0)
        {
          if (v45->_Kb >= 1.0 && v45->_Kb <= 2.0)
          {
            if (v45->_Kl >= 0.5 && v45->_Kl <= 1.5)
            {
              v47[0] = @"supports-gcp";
              v48[0] = @"supported";
              v47[1] = @"gcp-ramp-up-duration";
              v48[1] = @"rampUpDuration";
              v47[2] = @"gcp-ramp-down-duration";
              v48[2] = @"rampDownDuration";
              v47[3] = @"gcp-ramp-up-lux-threshold";
              v48[3] = @"rampUpLuxDeltaThreshold";
              v47[4] = @"gcp-ramp-down-lux-threshold";
              v48[4] = @"rampDownLuxDeltaThreshold";
              v47[5] = @"gcp-ramp-update-rate";
              v48[5] = @"rampUpdateRate";
              v47[6] = @"gcp-reference-white-nits";
              v48[6] = @"referenceWhiteBrightness";
              v47[7] = @"gcp-reference-ambient-lux";
              v48[7] = @"referenceLux";
              v47[8] = kCBGCPNitsMin;
              v48[8] = @"Bmin";
              v47[9] = kCBGCPNitsMax;
              v48[9] = @"Bmax";
              v47[10] = kCBGCPAmbientMin;
              v48[10] = @"Lmin";
              v47[11] = kCBGCPAmbientMax;
              v48[11] = @"Lmax";
              v47[12] = kCBGCPAmbientFactor;
              v48[12] = @"ambientFactor";
              v47[13] = kCBGCPGammaMin;
              v48[13] = @"gammaMin";
              v47[14] = kCBGCPGammaMax;
              v48[14] = @"gammaMax";
              v47[15] = kCBGCPGammaFactorLow;
              v48[15] = @"gcpFactorLow";
              v47[16] = kCBGCPGammaFactorHigh;
              v48[16] = @"gcpFactorHigh";
              v47[17] = kCBGCPASb;
              v48[17] = @"ASb";
              v47[18] = kCBGCPKb;
              v48[18] = @"Kb";
              v47[19] = kCBGCPKl;
              v48[19] = @"Kl";
              v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:20];
              v5 = MEMORY[0x1E69E5928](v4);
              v45->_codingKeys = v5;
              v46 = v45;
              v39 = 1;
            }

            else
            {
              if (v45->_logHandle)
              {
                logHandle = v45->_logHandle;
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

                logHandle = inited;
              }

              if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_2_8_64_8_0(v49, kCBGCPKl, COERCE__INT64(v45->_Kl));
                _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "Disabling due to invalid config: %@(%f) out of sensible range [0.5,1.5]", v49, 0x16u);
              }

              v39 = 2;
            }
          }

          else
          {
            if (v45->_logHandle)
            {
              v10 = v45->_logHandle;
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

            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_64_8_0(v50, kCBGCPKb, COERCE__INT64(v45->_Kb));
              _os_log_error_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_ERROR, "Disabling due to invalid config: %@(%f) out of sensible range [1,2]", v50, 0x16u);
            }

            v39 = 2;
          }
        }

        else
        {
          if (v45->_logHandle)
          {
            v12 = v45->_logHandle;
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

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_64_8_0(v51, kCBGCPASb, COERCE__INT64(v45->_ASb));
            _os_log_error_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_ERROR, "Disabling due to invalid config: %@(%f) out of sensible range [0.5,2]", v51, 0x16u);
          }

          v39 = 2;
        }
      }

      else
      {
        if (v45->_logHandle)
        {
          v14 = v45->_logHandle;
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

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_64_8_0(v52, kCBGCPNitsMin, COERCE__INT64(v45->_Bmin));
          _os_log_error_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_ERROR, "Disabling due to invalid config: %@(%f) <= 0", v52, 0x16u);
        }

        v39 = 2;
      }
    }

    else
    {
      if (v45->_logHandle)
      {
        v16 = v45->_logHandle;
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
        __os_log_helper_16_2_2_8_64_8_0(v53, kCBGCPAmbientMin, COERCE__INT64(v45->_Lmin));
        _os_log_error_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_ERROR, "Disabling due to invalid config: %@(%f) <= 0", v53, 0x16u);
      }

      v39 = 2;
    }
  }

  else
  {
    if (v45->_logHandle)
    {
      v18 = v45->_logHandle;
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

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_4_8_64_8_0_8_64_8_0(v54, kCBGCPGammaMin, COERCE__INT64(v45->_gammaMin), kCBGCPGammaMax, COERCE__INT64(v45->_gammaMax));
      _os_log_error_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_ERROR, "Disabling due to invalid config: %@(%f) >= %@(%f)", v54, 0x2Au);
    }

    v39 = 2;
  }

  objc_autoreleasePoolPop(context);
  if (v39 != 1)
  {
    MEMORY[0x1E69E5920](v45);
    v46 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v46;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_logHandle);
  *&v2 = MEMORY[0x1E69E5920](v5->_codingKeys).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBGammaContrastPreservationParams;
  [(CBGammaContrastPreservationParams *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = self;
  v14 = a2;
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(__b, 0, sizeof(__b));
    obj = [(NSDictionary *)[(CBGammaContrastPreservationParams *)v15 codingKeys] allValues];
    v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v17 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v12 = 0;
        v12 = *(__b[1] + 8 * v6);
        v10 = [(CBGammaContrastPreservationParams *)v15 valueForKey:v12];
        if (([v10 isEqual:{objc_msgSend(v13, "valueForKey:", v12)}] & 1) == 0)
        {
          break;
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v17 count:16];
          if (!v7)
          {
            goto LABEL_11;
          }
        }
      }

      v16 = 0;
    }

    else
    {
LABEL_11:
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v16 & 1;
}

@end