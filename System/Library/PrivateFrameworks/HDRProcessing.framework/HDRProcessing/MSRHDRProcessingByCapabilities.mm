@interface MSRHDRProcessingByCapabilities
- (MSRHDRProcessingByCapabilities)init;
- (float)getDolby84DegammaScale;
- (float)getDolby84PostDegammaScale;
- (int)getLumaShiftBits;
- (int)getOotfLumaShiftBits;
- (unint64_t)getDegammaLutSize;
- (unint64_t)getRegammaLutSize;
- (unint64_t)getTmLutSize;
- (unsigned)getHorizontalScalingTablePhaseNumber;
- (unsigned)getHorizontalScalingTableTapNumber;
- (unsigned)getVerticalScalingTablePhaseNumber;
- (unsigned)getVerticalScalingTableTapNumber;
- (unsigned)polynomialTableScale;
- (void)dovi_ootf_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)getDegammaLutInput:(float *)input;
- (void)getRegammaLutInput:(float *)input;
- (void)getTmUnequalLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)hdr10_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)hdr10_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer LumaMixFactorBuffer:(float *)factorBuffer;
- (void)hlg_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)hlg_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer;
- (void)populateMSRColorConfigStageB02HDR10:(id *)r10 DMConfig:(id *)config;
- (void)populateMSRColorConfigStageB02HLG:(id *)g hdrControl:(id *)control;
- (void)populateMSRColorConfigStageDownSampleFilter:(id *)filter Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageHwOOTF:(id *)f Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)setupHardwareConfigUnit;
- (void)setupMSRMappingTableWithMetadata:(id *)metadata;
- (void)setupMSRPolynomialTableForHDR10;
- (void)updateMmrReshapeChromaForComponent:(unsigned __int16)component mmrReshapeChroma:(int)chroma;
- (void)updateMmrTableForComponent:(unsigned __int16)component mmrClipValMin:(unsigned __int16 *)min mmrClipValMax:(unsigned __int16 *)max mmrCoeff:(float *)coeff;
- (void)updatePolynomialTablesForComponent:(unsigned __int16 *)component Component:(unsigned __int16)a4 TableSize:(unint64_t)size;
@end

@implementation MSRHDRProcessingByCapabilities

- (MSRHDRProcessingByCapabilities)init
{
  v6.receiver = self;
  v6.super_class = MSRHDRProcessingByCapabilities;
  v2 = [(MSRHDRProcessing *)&v6 init];
  if (v2)
  {
    if (qword_280C71988 != -1)
    {
      dispatch_once(&qword_280C71988, &__block_literal_global_2);
    }

    v2->super._mmrEnable = 0;
    avdHistSupport = _MergedGlobals_6;
    unequalLUTSupport = byte_280C71971;
    if (dword_280C7197C)
    {
      v3 = dword_280C71980 == 0;
    }

    else
    {
      v3 = 1;
    }

    v4 = !v3;
    useCurvatureLUTs = v4;
  }

  return v2;
}

- (void)setupHardwareConfigUnit
{
  v18.receiver = self;
  v18.super_class = MSRHDRProcessingByCapabilities;
  [(MSRHDRProcessing *)&v18 setupHardwareConfigUnit];
  if (dword_280C71978 >= 1)
  {
    msrCU = self->super._msrCU;
    msrCU[4611] = 0x140462617366;
    *msrCU = vadd_s32(*msrCU, 0x140400000001);
  }

  if (byte_280C71972 == 1)
  {
    v4 = self->super._msrCU;
    v4->var5 = 0xC066726172;
    v4->var0 = vadd_s32(v4->var0, 0xC000000001);
  }

  if (byte_280C71971 == 1)
  {
    self->super._msrCU->var7 = 0x17D866726173;
    if (GetConfig())
    {
      Config = GetConfig();
      v6 = *HDRConfig::GetConfigEntryValue(Config, 0x2Cu, 0);
      self->super._enableUnequalSpacingLUT = v6;
      if (v6 == 1)
      {
        self->super._msrCU->var0 = vadd_s32(self->super._msrCU->var0, 0x17D800000001);
      }
    }

    else
    {
      self->super._enableUnequalSpacingLUT = 0;
    }
  }

  if (byte_280C71973 == 1)
  {
    self->super._msrCU->var9 = 0x2C66726175;
    if (GetConfig())
    {
      v7 = GetConfig();
      v8 = *HDRConfig::GetConfigEntryValue(v7, 0x32u, 0);
    }

    else
    {
      v8 = 0;
    }

    self->super.super._enableHwOOTF = v8 & 1;
    if (GetConfig())
    {
      v9 = GetConfig();
      v10 = *HDRConfig::GetConfigEntryValue(v9, 0x33u, 0);
    }

    else
    {
      v10 = 0;
    }

    self->super.super._enableHwOotfForHLG = v10 & 1;
    if (GetConfig())
    {
      v11 = GetConfig();
      v12 = *HDRConfig::GetConfigEntryValue(v11, 0x34u, 0);
    }

    else
    {
      v12 = 0;
    }

    self->super.super._enableHwOotfForDolby84 = v12 & 1;
    if (GetConfig())
    {
      v13 = GetConfig();
      v14 = *HDRConfig::GetConfigEntryValue(v13, 0x35u, 0);
    }

    else
    {
      v14 = 0;
    }

    self->super._enableFp16Regamma = v14 & 1;
    if (self->super.super._enableHwOOTF)
    {
      self->super._msrCU->var0 = vadd_s32(self->super._msrCU->var0, 0x2C00000001);
    }
  }

  if (byte_280C71974 == 1)
  {
    if (GetConfig())
    {
      v15 = GetConfig();
      v16 = *HDRConfig::GetConfigEntryValue(v15, 0x35u, 0);
    }

    else
    {
      v16 = 0;
    }

    self->super._enableFp16Regamma = v16 & 1;
  }

  if (dword_280C7197C)
  {
    if (dword_280C71980)
    {
      v17 = self->super._msrCU;
      v17[6048] = 0x861736572;
      *v17 = vadd_s32(*v17, 0x800000001);
    }
  }
}

- (void)setupMSRPolynomialTableForHDR10
{
  v4.receiver = self;
  v4.super_class = MSRHDRProcessingByCapabilities;
  [(MSRHDRProcessing *)&v4 setupMSRPolynomialTableForHDR10];
  if (byte_280C71972 == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      [(MSRHDRProcessingByCapabilities *)self updateMmrReshapeChromaForComponent:i mmrReshapeChroma:1];
    }
  }
}

- (void)setupMSRMappingTableWithMetadata:(id *)metadata
{
  v28 = *MEMORY[0x277D85DE8];
  if (byte_280C71972)
  {
    v5 = metadata->var0 + 8;
    v22 = (1 << (LOBYTE(metadata->var0) + 8));
    v6 = malloc_type_malloc(6 << (LOBYTE(metadata->var0) + 8), 0x1000040BDFB0063uLL);
    v7 = malloc_type_calloc(0x2CuLL, 4uLL, 0x100004052888210uLL);
    v9 = v7;
    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v11 = logInstanceID;
        }

        else
        {
          v11 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v27 = WORD1(v11);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: polyBuf && mmrCoefBuf warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingByCapabilities.mm at line 289\n", buf, 0xCu);
        }

        prevLogInstanceID = v11;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: polyBuf && mmrCoefBuf warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingByCapabilities.mm at line 289\n", buf, 2u);
      }
    }

    v12 = 0;
    v13 = -22;
    v14 = MEMORY[0x277D86220];
    v15 = 276;
    *&v8 = 134217984;
    v21 = v8;
    do
    {
      v16 = *(&metadata->var0 + v15);
      if (v16 >= 2)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v17 = logInstanceID;
          }

          else
          {
            v17 = prevLogInstanceID;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v27 = WORD1(v17);
            _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: metadata->mapping_idc[0][0][cmp][0] == 0 || metadata->mapping_idc[0][0][cmp][0] == 1 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingByCapabilities.mm at line 292\n", buf, 0xCu);
          }

          prevLogInstanceID = v17;
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: metadata->mapping_idc[0][0][cmp][0] == 0 || metadata->mapping_idc[0][0][cmp][0] == 1 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingByCapabilities.mm at line 292\n", buf, 2u);
        }

        v16 = *(&metadata->var0 + v15);
      }

      if (v16 && (v16 != 1 || [(MSRHDRProcessing *)self isMMREnabled]))
      {
        if (!v12)
        {
          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v18 = logInstanceID;
            }

            else
            {
              v18 = prevLogInstanceID;
            }

            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v27 = WORD1(v18);
              _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: cmp != 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingByCapabilities.mm at line 307\n", buf, 0xCu);
            }

            prevLogInstanceID = v18;
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: cmp != 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingByCapabilities.mm at line 307\n", buf, 2u);
          }
        }

        createMmrTableForComponent(metadata, v12, v24, v23, &v9[v13 & 0xFFFFFFFE]);
        [(MSRHDRProcessingByCapabilities *)self updateMmrTableForComponent:v12 mmrClipValMin:v24 mmrClipValMax:v23 mmrCoeff:&v9[v13 & 0xFFFFFFFE]];
        v19 = 0;
      }

      else
      {
        createPolynomialTableForComponent(metadata, v12, v6 + 2 * (v12 << v5));
        [(MSRHDRProcessingByCapabilities *)self updatePolynomialTablesForComponent:v6 Component:v12 TableSize:v22];
        v19 = 1;
      }

      [(MSRHDRProcessingByCapabilities *)self updateMmrReshapeChromaForComponent:v12++ mmrReshapeChroma:v19, v21];
      v13 += 22;
      v15 += 36;
    }

    while (v12 != 3);
    free(v9);
    free(v6);
  }

  else
  {
    v25.receiver = self;
    v25.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v25 setupMSRMappingTableWithMetadata:metadata];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unsigned)polynomialTableScale
{
  if (byte_280C71972)
  {
    return 16;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingByCapabilities;
  return [(MSRHDRProcessing *)&v5 polynomialTableScale];
}

- (void)updatePolynomialTablesForComponent:(unsigned __int16 *)component Component:(unsigned __int16)a4 TableSize:(unint64_t)size
{
  if (byte_280C71972 == 1)
  {
    self->super._reshapeLUTCreated = 1;
    self->super._reshapeLUTSize = size;
    if (size)
    {
      v5 = &component[a4 * size];
      v6 = self->super._reshapeLUT[a4];
      do
      {
        v7 = *v5++;
        *v6++ = 4 * v7;
        --size;
      }

      while (size);
    }
  }
}

- (void)updateMmrTableForComponent:(unsigned __int16)component mmrClipValMin:(unsigned __int16 *)min mmrClipValMax:(unsigned __int16 *)max mmrCoeff:(float *)coeff
{
  if (byte_280C71972 == 1)
  {
    msrCU = self->super._msrCU;
    var4 = msrCU->var6.var4;
    v8 = 3;
    do
    {
      v9 = *min++;
      *(var4 - 3) = v9;
      v10 = *max++;
      *var4++ = v10;
      --v8;
    }

    while (v8);
    if (component == 1)
    {
      v11 = 42044;
    }

    else
    {
      if (component != 2)
      {
        return;
      }

      v11 = 42132;
    }

    v12 = 0;
    v13 = msrCU + v11;
    do
    {
      *&v13[v12 * 4] = coeff[v12];
      ++v12;
    }

    while (v12 != 22);
  }
}

- (void)updateMmrReshapeChromaForComponent:(unsigned __int16)component mmrReshapeChroma:(int)chroma
{
  if (byte_280C71972 == 1)
  {
    v4 = &self->super._msrCU->var4[1016];
    self->super._msrCU->var6.var2 = 4;
    if (component == 2)
    {
      *(v4 + 1069) = chroma != 0;
    }

    else if (component == 1)
    {
      *(v4 + 1068) = chroma != 0;
    }
  }
}

- (unint64_t)getDegammaLutSize
{
  if (useCurvatureLUTs)
  {
    return 97;
  }

  if (dword_280C71978 > 0)
  {
    return 1281;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingByCapabilities;
  return [(MSRHDRProcessing *)&v5 getDegammaLutSize];
}

- (void)getDegammaLutInput:(float *)input
{
  if (useCurvatureLUTs == 1)
  {
    v3 = 0;
    v4 = -0.00097656;
    v5 = 0.00048828;
    do
    {
      v6 = __const__Z27getCurvatureDegammaLutInputPf_sub_lut_entries[v3];
      if (v6 <= 1)
      {
        v6 = 1;
      }

      do
      {
        v4 = v5 + v4;
        *input++ = v4;
        --v6;
      }

      while (v6);
      if (v3 == 5)
      {
        v7 = 16.0;
      }

      else
      {
        v7 = 2.0;
      }

      v5 = v5 * v7;
      ++v3;
    }

    while (v3 != 8);
  }

  else if (dword_280C71978 < 1)
  {
    v16.receiver = self;
    v16.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v16 getDegammaLutInput:input];
  }

  else
  {
    v8 = 0;
    v9 = xmmword_2508CD900;
    v10 = xmmword_2508CD910;
    v11 = input + 2;
    v12 = vdupq_n_s64(0x401uLL);
    v13 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v10)), *v9.i8).u8[0])
      {
        *(v11 - 2) = vcvts_n_f32_u32(v8, 0xAuLL);
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v10)), *&v9).i8[2])
      {
        *(v11 - 1) = vcvts_n_f32_u32(v8 + 1, 0xAuLL);
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v9))).i32[1])
      {
        *v11 = vcvts_n_f32_u32(v8 + 2, 0xAuLL);
        v11[1] = vcvts_n_f32_u32(v8 + 3, 0xAuLL);
      }

      v8 += 4;
      v9 = vaddq_s64(v9, v13);
      v10 = vaddq_s64(v10, v13);
      v11 += 4;
    }

    while (v8 != 1028);
    v14 = 0;
    v15 = 1.0;
    do
    {
      input[v14 + 1024] = v15;
      v15 = v15 + 0.03125;
      ++v14;
    }

    while (v14 != 257);
  }
}

- (unint64_t)getRegammaLutSize
{
  if (useCurvatureLUTs)
  {
    return 113;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingByCapabilities;
  return [(MSRHDRProcessing *)&v5 getRegammaLutSize];
}

- (void)getRegammaLutInput:(float *)input
{
  if (useCurvatureLUTs == 1)
  {

    getCurvatureRegammaLutInput(input);
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v5 getRegammaLutInput:input];
  }
}

- (unint64_t)getTmLutSize
{
  if (self->super._enableUnequalSpacingLUT)
  {
    return 754;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingByCapabilities;
  return [(MSRHDRProcessing *)&v5 getTmLutSize];
}

- (void)getTmUnequalLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  v4 = 0;
  v5 = 0.0;
  v6 = 0.000000059605;
  do
  {
    if (v4 > 15)
    {
      if (v4 == 17)
      {
LABEL_9:
        v7 = 1;
        goto LABEL_12;
      }

      if (v4 == 16)
      {
        v7 = 496;
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    if (v4)
    {
      if (v4 == 15)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 = 16;
      goto LABEL_12;
    }

    v7 = 32;
    do
    {
LABEL_12:
      *lutInput++ = v5;
      v5 = v6 + v5;
      --v7;
    }

    while (v7);
    if (v4 == 15)
    {
      v5 = v5 - v6;
    }

    if (v4 != 17 && v4 != 15)
    {
      v6 = v6 + v6;
    }

    ++v4;
  }

  while (v4 != 18);
}

- (void)hdr10_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  if (self->super._enableUnequalSpacingLUT)
  {

    [(MSRHDRProcessingByCapabilities *)self getTmUnequalLutInput:input lutInput:lutInput];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v6 hdr10_getTmLutInput:input lutInput:lutInput];
  }
}

- (void)hlg_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  if (self->super._enableUnequalSpacingLUT)
  {

    [(MSRHDRProcessingByCapabilities *)self getTmUnequalLutInput:input lutInput:lutInput];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v6 hlg_getTmLutInput:input lutInput:lutInput];
  }
}

- (void)dovi_ootf_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  if (self->super._enableUnequalSpacingLUT)
  {

    [(MSRHDRProcessingByCapabilities *)self getTmUnequalLutInput:input lutInput:lutInput];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v6 dovi_ootf_getTmLutInput:input lutInput:lutInput];
  }
}

- (void)hdr10_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer LumaMixFactorBuffer:(float *)factorBuffer
{
  if (self->super._enableUnequalSpacingLUT)
  {
    if (t == 6)
    {
      *(&self->super._regamma + 2833) = 1;
      memcpy(&self->_unequalSpacingTmLutMode, buffer, 0x404uLL);
      memcpy(&self->_toneMapLUT1[256], buffer + 257, 0x7C4uLL);
      for (i = 0; i != 257; ++i)
      {
        self->_toneMapLUT0[i + 256] = factorBuffer[i] * 0.015625;
      }

      for (j = 0; j != 497; ++j)
      {
        self->_toneMapLUT2[j + 496] = factorBuffer[j + 257] * 0.015625;
      }
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v10 hdr10_tm_updateLUT:t ScalingFactorBuffer:buffer LumaMixFactorBuffer:factorBuffer];
  }
}

- (void)hlg_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer
{
  if (self->super._enableUnequalSpacingLUT)
  {
    if (t == 6)
    {
      *(&self->super._regamma + 2833) = 1;
      memcpy(&self->_unequalSpacingTmLutMode, buffer, 0x404uLL);

      memcpy(&self->_toneMapLUT1[256], buffer + 257, 0x7C4uLL);
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v6 hlg_tm_updateLUT:t ScalingFactorBuffer:buffer];
  }
}

- (int)getLumaShiftBits
{
  if (self->super._enableUnequalSpacingLUT)
  {
    return 7;
  }

  else
  {
    return 15;
  }
}

- (void)populateMSRColorConfigStageB02HDR10:(id *)r10 DMConfig:(id *)config
{
  if (self->super._enableUnequalSpacingLUT)
  {
    msrCU = self->super._msrCU;
    r10->var2.var0.var0[3946] = 8;
    msrCU->var8.var0 = *(&self->super._regamma + 2833);
    msrCU->var8.var1 = 0;
    msrCU->var8.var3 = [(MSRHDRProcessingByCapabilities *)self getLumaShiftBits];
    msrCU->var8.var7 = 0;
    *&msrCU->var8.var4 = 512;
    msrCU->var8.var2 = 21;
    var8 = msrCU->var8.var8;
    v8 = -3;
    do
    {
      *(var8 - 4) = vcvts_n_s32_f32(*(&config[1].var22 + ((v8 - 1) & 3)), 7uLL);
      *var8++ = 128;
    }

    while (!__CFADD__(v8++, 1));
    *msrCU->var8.var9 = 0u;
    *&msrCU->var8.var9[4] = 0u;
    memcpy(self->super._msrCU->var8.var10, &self->_unequalSpacingTmLutMode, sizeof(self->super._msrCU->var8.var10));
    memcpy(self->super._msrCU->var8.var12, &self->_toneMapLUT1[256], sizeof(self->super._msrCU->var8.var12));
    memcpy(self->super._msrCU->var8.var11, &self->_toneMapLUT0[256], sizeof(self->super._msrCU->var8.var11));
    var13 = self->super._msrCU->var8.var13;

    memcpy(var13, &self->_toneMapLUT2[496], 0x7C4uLL);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v11 populateMSRColorConfigStageB02HDR10:r10 DMConfig:config];
  }
}

- (void)populateMSRColorConfigStageB02HLG:(id *)g hdrControl:(id *)control
{
  if (self->super._enableUnequalSpacingLUT)
  {
    msrCU = self->super._msrCU;
    g->var2.var0.var0[3946] = 8;
    msrCU->var8.var0 = *(&self->super._regamma + 2833);
    msrCU->var8.var1 = 0;
    getLumaShiftBits = [(MSRHDRProcessingByCapabilities *)self getLumaShiftBits];
    v8 = 0;
    *&msrCU->var8.var4 = 0;
    msrCU->var8.var3 = getLumaShiftBits;
    msrCU->var8.var7 = 0;
    msrCU->var8.var2 = 24;
    do
    {
      var15 = control->var15;
      if (var15 == 1)
      {
        v10 = &RGB709toHLGY_coeff;
      }

      else
      {
        v10 = &RGB2020toHLGY_coeff;
      }

      if (var15 == 12)
      {
        v11 = &RGBP3toHLGY_coeff;
      }

      else
      {
        v11 = v10;
      }

      v12 = (*&v11[v8 * 4] * 127.0);
      msrCU->var8.var8[v8] = v12;
      msrCU->var8.var6[v8++] = v12;
    }

    while (v8 != 3);
    *msrCU->var8.var9 = 0u;
    *&msrCU->var8.var9[4] = 0u;
    memcpy(self->super._msrCU->var8.var10, &self->_unequalSpacingTmLutMode, sizeof(self->super._msrCU->var8.var10));
    var12 = self->super._msrCU->var8.var12;

    memcpy(var12, &self->_toneMapLUT1[256], 0x7C4uLL);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v14 populateMSRColorConfigStageB02HLG:g hdrControl:control];
  }
}

- (void)populateMSRColorConfigStageHwOOTF:(id *)f Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  if (byte_280C71973 == 1)
  {
    v26 = v10;
    v27 = v11;
    v13 = &self->super._msrCU->var8.var12[175];
    if (enabled)
    {
      self->super._msrCU->var10.var0 = 1;
      *(v13 + 3288) = 24;
      *(v13 + 3289) = [(MSRHDRProcessingByCapabilities *)self getOotfLumaShiftBits];
      v13[827] = 0.0;
      v13[823] = 0.0;
      var15 = hdrControl->var15;
      v20 = v13 + 828;
      v21 = &RGB2020toHLGY_coeff;
      if (var15 == 1)
      {
        v21 = &RGB709toHLGY_coeff;
      }

      if (var15 == 12)
      {
        v22 = &RGBP3toHLGY_coeff;
      }

      else
      {
        v22 = v21;
      }

      v23 = 3;
      do
      {
        v24 = *v22++;
        *v20 = v24;
        *(v20 - 4) = v24;
        ++v20;
        --v23;
      }

      while (v23);
      v13[831] = config->var67 + 1.0;
      v25.receiver = self;
      v25.super_class = MSRHDRProcessingByCapabilities;
      [(MSRHDRProcessing *)&v25 populateMSRColorConfigStageHwOOTF:f Enabled:1 Prefix:prefix DMConfig:config DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
    }

    else
    {
      self->super._msrCU->var10.var0 = 0;
    }
  }
}

- (void)populateMSRColorConfigStageDownSampleFilter:(id *)filter Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  if (dword_280C7197C)
  {
    v10 = dword_280C71980 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    msrCU = self->super._msrCU;
    if (enabled)
    {
      if (GetConfig() && (v12 = GetConfig(), *(v12 + 1523)) && (v12[3044] & 0x80) != 0)
      {
        if (GetConfig())
        {
          Config = GetConfig();
          v13 = 2 * *HDRConfig::GetConfigEntryValue(Config, 0x45u, 0);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 2 * (hdrControl->var0 == 1);
      }

      v14 = v13 | msrCU->var12.var0.var1 & 0xFFFFFFFFFFFFFFFCLL | 1;
    }

    else
    {
      v14 = msrCU->var12.var0.var1 & 0xFFFFFFFFFFFFFFFCLL;
    }

    msrCU->var12.var0.var1 = v14;
  }
}

- (int)getOotfLumaShiftBits
{
  if (byte_280C71973)
  {
    return 15;
  }

  else
  {
    return 0;
  }
}

- (float)getDolby84DegammaScale
{
  LODWORD(v2) = 1.0;
  if (!self->super.super._enableHwOotfForDolby84)
  {
    v4.receiver = self;
    v4.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v4 getDolby84DegammaScale];
  }

  return *&v2;
}

- (float)getDolby84PostDegammaScale
{
  LODWORD(v2) = 10.0;
  if (!self->super.super._enableHwOotfForDolby84)
  {
    v4.receiver = self;
    v4.super_class = MSRHDRProcessingByCapabilities;
    [(MSRHDRProcessing *)&v4 getDolby84PostDegammaScale];
  }

  return *&v2;
}

- (unsigned)getHorizontalScalingTableTapNumber
{
  if (useCurvatureLUTs)
  {
    return 9;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingByCapabilities;
  return [(MSRHDRProcessing *)&v5 getHorizontalScalingTableTapNumber];
}

- (unsigned)getVerticalScalingTableTapNumber
{
  if (useCurvatureLUTs)
  {
    return 9;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingByCapabilities;
  return [(MSRHDRProcessing *)&v5 getVerticalScalingTableTapNumber];
}

- (unsigned)getHorizontalScalingTablePhaseNumber
{
  if (useCurvatureLUTs)
  {
    return 32;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingByCapabilities;
  return [(MSRHDRProcessing *)&v5 getHorizontalScalingTablePhaseNumber];
}

- (unsigned)getVerticalScalingTablePhaseNumber
{
  if (useCurvatureLUTs)
  {
    return 32;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingByCapabilities;
  return [(MSRHDRProcessing *)&v5 getVerticalScalingTablePhaseNumber];
}

@end