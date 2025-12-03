@interface LSSSettings
+ (id)_defaultSettings;
+ (id)currentSettings;
- (double)doubleForKey:(uint64_t)key;
- (float)floatForKey:(uint64_t)key;
- (uint64_t)BOOLForKey:(uint64_t)key;
- (uint64_t)defaults;
- (uint64_t)dynamic;
- (void)logDebugInfo;
@end

@implementation LSSSettings

+ (id)currentSettings
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__LSSSettings_currentSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (qword_280D2F598 == -1)
  {
    v1 = qword_280D2F5A0;
  }

  else
  {
    dispatch_once(&qword_280D2F598, block);
    v1 = qword_280D2F5A0;
  }

  return v1;
}

- (uint64_t)defaults
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

+ (id)_defaultSettings
{
  v10[28] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v10[0] = @"motion";
  v9[0] = @"provider";
  v9[1] = @"lowPerformance";
  v0 = MEMORY[0x277CCABB0];
  if (qword_280D2F5B8 != -1)
  {
    +[LSSSettings _defaultSettings];
  }

  v1 = [v0 numberWithBool:byte_280D2F58B];
  v10[1] = v1;
  v9[2] = @"globalCA";
  v2 = MEMORY[0x277CCABB0];
  if (qword_280D2F5A8 != -1)
  {
    LSSShouldRun_cold_1();
  }

  v3 = [v2 numberWithBool:byte_280D2F589];
  v10[2] = v3;
  v10[3] = &unk_2867F83B8;
  v9[3] = @"lightDefaultAzimuth";
  v9[4] = @"lightDefaultAltitude";
  v10[4] = &unk_2867F83C8;
  v10[5] = &unk_2867F83D8;
  v9[5] = @"motion_lightResetTimeoutSmall";
  v9[6] = @"motion_lightResetTimeoutLarge";
  v10[6] = &unk_2867F83E8;
  v10[7] = &unk_2867F83F8;
  v9[7] = @"motion_lightResetThresholdSmall";
  v9[8] = @"motion_lightResetThresholdLarge";
  v10[8] = &unk_2867F8408;
  v10[9] = &unk_2867F8418;
  v9[9] = @"motion_fadeDuration";
  v9[10] = @"motion_lightFullQualityThreshold";
  v10[10] = &unk_2867F8428;
  v10[11] = &unk_2867F8438;
  v9[11] = @"motion_lightActivateThreshold";
  v9[12] = @"motion_lightDeactivateThreshold";
  v10[12] = &unk_2867F8448;
  v10[13] = &unk_2867F8448;
  v9[13] = @"motion_maxDelta";
  v9[14] = @"motion_noiseFloor";
  v10[14] = &unk_2867F8458;
  v10[15] = MEMORY[0x277CBEC38];
  v9[15] = @"motion_usePowerConservation";
  v9[16] = @"motion_updateInterval";
  v10[16] = &unk_2867F8468;
  v10[17] = &unk_2867F8478;
  v9[17] = @"motion_orientationPowerA";
  v9[18] = @"motion_orientationPowerB";
  v10[18] = &unk_2867F8488;
  v10[19] = &unk_2867F8448;
  v9[19] = @"motion_orientationActivateThreshold";
  v9[20] = @"motion_orientationDeactivateThreshold";
  v10[20] = &unk_2867F8498;
  v10[21] = &unk_2867F84A8;
  v9[21] = @"time_cycleInterval";
  v9[22] = @"time_updatesPerCycle";
  v10[22] = &unk_2867F84B8;
  v10[23] = MEMORY[0x277CBEC28];
  v9[23] = @"test_realtime";
  v9[24] = @"test_lightAngle";
  v10[24] = &unk_2867F84E8;
  v10[25] = &unk_2867F84C8;
  v9[25] = @"performance_updateRate";
  v9[26] = @"performance_animateSpeed";
  v10[26] = &unk_2867F84D8;
  v9[27] = @"dynamicSettings";
  v4 = MEMORY[0x277CCABB0];
  if (qword_280D2F5C0 != -1)
  {
    +[LSSSettings _defaultSettings];
  }

  v5 = [v4 numberWithBool:byte_280D2F58C];
  v10[27] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:28];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __30__LSSSettings_currentSettings__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_280D2F5A0;
  qword_280D2F5A0 = v2;

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.LightSourceSupport"];
  v5 = *(a1 + 32);
  v6 = +[LSSSettings _defaultSettings];
  [v4 registerDefaults:v6];

  [qword_280D2F5A0 setDefaults:v4];
  v7 = [v4 BOOLForKey:@"dynamicSettings"];
  [qword_280D2F5A0 setDynamic:v7];
  if (qword_280D2F5A0 && *(qword_280D2F5A0 + 16) == 1)
  {
    if (qword_280D2F5D0 == -1)
    {
      v8 = qword_280D2F5C8;
      if (!os_log_type_enabled(qword_280D2F5C8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:

        return;
      }
    }

    else
    {
      __30__LSSSettings_currentSettings__block_invoke_cold_1();
      v8 = qword_280D2F5C8;
      if (!os_log_type_enabled(qword_280D2F5C8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    *v9 = 0;
    _os_log_impl(&dword_255E8B000, v8, OS_LOG_TYPE_DEFAULT, "dynamic settings", v9, 2u);
    goto LABEL_6;
  }

  __30__LSSSettings_currentSettings__block_invoke_cold_2();
}

- (float)floatForKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    if (!*__tls_guard(&__tls_guard))
    {
      [LSSSettings floatForKey:];
    }

    v4 = _cache(&_cache);
    v5 = *(key + 16);
    v6 = *(key + 24);
    v7 = v6;
    if (v5 == 1)
    {
      [v6 floatForKey:v3];
      v9 = v8;
    }

    else
    {
      v10 = *v4;
      v11 = v4[1];
      v12 = v11 - *v4;
      if (v11 == *v4)
      {
LABEL_11:
        [v6 floatForKey:v3];
        v9 = v16;
        v21 = LODWORD(v16);
        v22 = v3;
        std::vector<objc_object *>::push_back[abi:nn200100](v4, &v22);
        std::vector<unsigned long long>::push_back[abi:nn200100]((v4 + 3), &v21);
      }

      else
      {
        v13 = 0;
        v14 = v12 >> 3;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        while (1)
        {
          v15 = v10[v13];
          if (v15 == v3)
          {
            break;
          }

          if (v14 == ++v13)
          {
            goto LABEL_11;
          }
        }

        v17 = *v10;
        *v10 = v15;
        v10[v13] = v17;
        v18 = v4[3];
        v19 = *v18;
        *v18 = *&v18[2 * v13];
        *&v18[2 * v13] = v19;
        v9 = *v18;
      }
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (double)doubleForKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    if (!*__tls_guard())
    {
      [LSSSettings floatForKey:];
    }

    v4 = _cache();
    v5 = *(key + 16);
    v6 = *(key + 24);
    v7 = v6;
    if (v5 == 1)
    {
      [v6 doubleForKey:v3];
      v9 = v8;
    }

    else
    {
      v10 = *v4;
      v11 = v4[1];
      v12 = v11 - *v4;
      if (v11 == *v4)
      {
LABEL_11:
        [v6 doubleForKey:v3];
        v9 = v16;
        v22 = v3;
        v21 = v16;
        std::vector<objc_object *>::push_back[abi:nn200100](v4, &v22);
        std::vector<unsigned long long>::push_back[abi:nn200100]((v4 + 3), &v21);
      }

      else
      {
        v13 = 0;
        v14 = v12 >> 3;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        while (1)
        {
          v15 = v10[v13];
          if (v15 == v3)
          {
            break;
          }

          if (v14 == ++v13)
          {
            goto LABEL_11;
          }
        }

        v17 = *v10;
        *v10 = v15;
        v10[v13] = v17;
        v18 = v4[3];
        v19 = *v18;
        *v18 = v18[v13];
        v18[v13] = v19;
        v9 = *v18;
      }
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (uint64_t)BOOLForKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    if (!*__tls_guard())
    {
      [LSSSettings floatForKey:];
    }

    v4 = _cache();
    v5 = *(key + 16);
    v6 = *(key + 24);
    v7 = v6;
    if (v5 == 1)
    {
      LOBYTE(v8) = [v6 BOOLForKey:v3];
    }

    else
    {
      v9 = *v4;
      v10 = v4[1];
      v11 = v10 - *v4;
      if (v10 == *v4)
      {
LABEL_11:
        v15 = [v6 BOOLForKey:v3];
        LOBYTE(v8) = v15;
        v20 = v15;
        v21 = v3;
        std::vector<objc_object *>::push_back[abi:nn200100](v4, &v21);
        std::vector<unsigned long long>::push_back[abi:nn200100]((v4 + 3), &v20);
      }

      else
      {
        v12 = 0;
        v13 = v11 >> 3;
        if (v13 <= 1)
        {
          v13 = 1;
        }

        while (1)
        {
          v14 = v9[v12];
          if (v14 == v3)
          {
            break;
          }

          if (v13 == ++v12)
          {
            goto LABEL_11;
          }
        }

        v16 = *v9;
        *v9 = v14;
        v9[v12] = v16;
        v17 = v4[3];
        v18 = *v17;
        *v17 = v17[v12];
        v17[v12] = v18;
        v8 = *v17;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (uint64_t)dynamic
{
  if (self)
  {
    v1 = *(self + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)logDebugInfo
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (qword_280D2F5D0 != -1)
    {
      dispatch_once(&qword_280D2F5D0, &__block_literal_global_177);
    }

    v1 = qword_280D2F5C8;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      if (!*__tls_guard(&__tls_guard))
      {
        v7 = v4(v3);
        v8 = OUTLINED_FUNCTION_1_3(v7);
        v9 = _cache(&_cache);
        OUTLINED_FUNCTION_0_3(v9, v9);
        objc_autoreleasePoolPop(v8);
      }

      v5 = _cache(&_cache);
      v6 = (v5[1] - *v5) >> 3;
      v10 = 134217984;
      v11 = v6;
      _os_log_debug_impl(&dword_255E8B000, v1, OS_LOG_TYPE_DEBUG, "cached keys: %lu", &v10, 0xCu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __30__LSSSettings_currentSettings__block_invoke_cold_2()
{
  if (qword_280D2F5D0 != -1)
  {
    dispatch_once(&qword_280D2F5D0, &__block_literal_global_177);
  }

  v0 = qword_280D2F5C8;
  if (os_log_type_enabled(qword_280D2F5C8, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_255E8B000, v0, OS_LOG_TYPE_DEFAULT, "static settings", v1, 2u);
  }
}

- (void)floatForKey:.cold.1()
{
  v0 = __tls_guard();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  v2 = _cache();
  OUTLINED_FUNCTION_0_3(v2, v2);

  objc_autoreleasePoolPop(v1);
}

@end