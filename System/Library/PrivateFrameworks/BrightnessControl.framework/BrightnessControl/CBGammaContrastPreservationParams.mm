@interface CBGammaContrastPreservationParams
+ (id)paramsWithProvider:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CBGammaContrastPreservationParams)initWithProvider:(id)a3;
- (void)dealloc;
@end

@implementation CBGammaContrastPreservationParams

+ (id)paramsWithProvider:(id)a3
{
  v3 = [[CBGammaContrastPreservationParams alloc] initWithProvider:a3];

  return v3;
}

- (CBGammaContrastPreservationParams)initWithProvider:(id)a3
{
  v25[20] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v20.receiver = self;
  v20.super_class = CBGammaContrastPreservationParams;
  v5 = [(CBGammaContrastPreservationParams *)&v20 init];
  *(v5 + 1) = os_log_create("com.apple.CoreBrightness.ChromaticCorrection", "gcp");
  *(v5 + 8) = 1084227584;
  v24[0] = @"supports-gcp";
  v24[1] = @"gcp-ramp-up-duration";
  v25[0] = &unk_283743910;
  v25[1] = &unk_2837437C0;
  v24[2] = @"gcp-ramp-down-duration";
  v24[3] = @"gcp-ramp-up-lux-threshold";
  v25[2] = &unk_2837437D0;
  v25[3] = &unk_2837437E0;
  v24[4] = @"gcp-ramp-down-lux-threshold";
  v24[5] = @"gcp-ramp-update-rate";
  v25[4] = &unk_2837437E0;
  v25[5] = &unk_2837437F0;
  v24[6] = @"gcp-reference-white-nits";
  v24[7] = @"gcp-reference-ambient-lux";
  v25[6] = &unk_283743800;
  v25[7] = &unk_283743810;
  v24[8] = kCBGCPGammaMin;
  v24[9] = kCBGCPGammaMax;
  v25[8] = &unk_283743820;
  v25[9] = &unk_283743830;
  v24[10] = kCBGCPGammaFactorLow;
  v24[11] = kCBGCPGammaFactorHigh;
  v25[10] = &unk_283743840;
  v25[11] = &unk_283743850;
  v24[12] = kCBGCPNitsMin;
  v24[13] = kCBGCPNitsMax;
  v25[12] = &unk_2837437E0;
  v25[13] = &unk_283743860;
  v24[14] = kCBGCPAmbientMin;
  v24[15] = kCBGCPAmbientMax;
  v25[14] = &unk_283743870;
  v25[15] = &unk_283743880;
  v24[16] = kCBGCPAmbientFactor;
  v24[17] = kCBGCPKb;
  v25[16] = &unk_283743928;
  v25[17] = &unk_283743890;
  v24[18] = kCBGCPKl;
  v24[19] = kCBGCPASb;
  v25[18] = &unk_2837438A0;
  v25[19] = &unk_2837438B0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:20];
  v23[0] = a3;
  v23[1] = [CBDictConfigProvider providerWithDict:v6];
  v7 = +[CBCombinedConfigProvider providerFromList:](CBCombinedConfigProvider, "providerFromList:", [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2]);
  [v7 setLogHandle:*(v5 + 1)];
  if (![v7 loadUint:@"supports-gcp" toDestination:v5 + 40] || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-up-duration", v5 + 16) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-down-duration", v5 + 20) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-up-lux-threshold", v5 + 24) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-down-lux-threshold", v5 + 28) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-update-rate", v5 + 36) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-reference-white-nits", v5 + 44) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-reference-ambient-lux", v5 + 48) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPNitsMin, v5 + 64) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPNitsMax, v5 + 68) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPAmbientMin, v5 + 52) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPAmbientMax, v5 + 56) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPAmbientFactor, v5 + 60) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPGammaMin, v5 + 72) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPGammaMax, v5 + 76) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPGammaFactorLow, v5 + 80) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPGammaFactorHigh, v5 + 84) || (v8 = (v5 + 88), !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPASb, v5 + 88)) || (v9 = (v5 + 92), !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPKb, v5 + 92)) || (v10 = (v5 + 96), (objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPKl, v5 + 96) & 1) == 0))
  {
    [CBGammaContrastPreservationParams initWithProvider:];
  }

  if (*(v5 + 18) >= *(v5 + 19))
  {
    inited = *(v5 + 1);
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*(v5 + 13) <= 0.0)
  {
    v12 = *(v5 + 1);
    if (!v12)
    {
      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*(v5 + 16) <= 0.0)
  {
    v13 = *(v5 + 1);
    if (!v13)
    {
      v13 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v13 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*v8 < 0.5 || *v8 > 2.0)
  {
    v14 = *(v5 + 1);
    if (!v14)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*v9 < 1.0 || *v9 > 2.0)
  {
    v15 = *(v5 + 1);
    if (!v15)
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*v10 < 0.5 || *v10 > 1.5)
  {
    v16 = *(v5 + 1);
    if (!v16)
    {
      v16 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v16 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

LABEL_61:
    objc_autoreleasePoolPop(context);

    v5 = 0;
    goto LABEL_62;
  }

  v21[0] = @"supports-gcp";
  v21[1] = @"gcp-ramp-up-duration";
  v22[0] = @"supported";
  v22[1] = @"rampUpDuration";
  v21[2] = @"gcp-ramp-down-duration";
  v21[3] = @"gcp-ramp-up-lux-threshold";
  v22[2] = @"rampDownDuration";
  v22[3] = @"rampUpLuxDeltaThreshold";
  v21[4] = @"gcp-ramp-down-lux-threshold";
  v21[5] = @"gcp-ramp-update-rate";
  v22[4] = @"rampDownLuxDeltaThreshold";
  v22[5] = @"rampUpdateRate";
  v21[6] = @"gcp-reference-white-nits";
  v21[7] = @"gcp-reference-ambient-lux";
  v22[6] = @"referenceWhiteBrightness";
  v22[7] = @"referenceLux";
  v21[8] = kCBGCPNitsMin;
  v21[9] = kCBGCPNitsMax;
  v22[8] = @"Bmin";
  v22[9] = @"Bmax";
  v21[10] = kCBGCPAmbientMin;
  v21[11] = kCBGCPAmbientMax;
  v22[10] = @"Lmin";
  v22[11] = @"Lmax";
  v21[12] = kCBGCPAmbientFactor;
  v21[13] = kCBGCPGammaMin;
  v22[12] = @"ambientFactor";
  v22[13] = @"gammaMin";
  v21[14] = kCBGCPGammaMax;
  v21[15] = kCBGCPGammaFactorLow;
  v22[14] = @"gammaMax";
  v22[15] = @"gcpFactorLow";
  v21[16] = kCBGCPGammaFactorHigh;
  v21[17] = kCBGCPASb;
  v22[16] = @"gcpFactorHigh";
  v22[17] = @"ASb";
  v21[18] = kCBGCPKb;
  v21[19] = kCBGCPKl;
  v22[18] = @"Kb";
  v22[19] = @"Kl";
  *(v5 + 13) = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:20];
  objc_autoreleasePoolPop(context);
LABEL_62:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CBGammaContrastPreservationParams;
  [(CBGammaContrastPreservationParams *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSDictionary *)[(CBGammaContrastPreservationParams *)self codingKeys] allValues];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [-[CBGammaContrastPreservationParams valueForKey:](self valueForKey:{*(*(&v13 + 1) + 8 * v9)), "isEqual:", objc_msgSend(a3, "valueForKey:", *(*(&v13 + 1) + 8 * v9))}];
        if (!v10)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
          LOBYTE(v10) = 1;
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)initWithProvider:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = OUTLINED_FUNCTION_2(a1);
  v3 = *v2;
  v7 = 138413058;
  v8 = v4;
  v9 = 2048;
  v10 = v1;
  v11 = 2112;
  v12 = kCBGCPGammaMax;
  v13 = 2048;
  v14 = v3;
  _os_log_error_impl(&dword_223D10000, v5, OS_LOG_TYPE_ERROR, "Disabling due to invalid config: %@(%f) >= %@(%f)", &v7, 0x2Au);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithProvider:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) <= 0", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithProvider:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) <= 0", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithProvider:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) out of sensible range [0.5,1.5]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithProvider:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) out of sensible range [1,2]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithProvider:(uint64_t)a1 .cold.7(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) out of sensible range [0.5,2]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end