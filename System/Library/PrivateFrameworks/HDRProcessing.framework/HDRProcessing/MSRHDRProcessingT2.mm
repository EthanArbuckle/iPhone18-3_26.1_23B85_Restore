@interface MSRHDRProcessingT2
- (MSRHDRProcessingT2)init;
- (void)setupHardwareConfigUnit;
- (void)setupMSRMappingTableWithMetadata:(id *)metadata;
- (void)setupMSRPolynomialTableForHDR10;
- (void)updateMmrReshapeChromaForComponent:(unsigned __int16)component mmrReshapeChroma:(int)chroma;
- (void)updateMmrTableForComponent:(unsigned __int16)component mmrClipValMin:(unsigned __int16 *)min mmrClipValMax:(unsigned __int16 *)max mmrCoeff:(float *)coeff;
- (void)updatePolynomialTablesForComponent:(unsigned __int16 *)component Component:(unsigned __int16)a4 TableSize:(unint64_t)size;
@end

@implementation MSRHDRProcessingT2

- (MSRHDRProcessingT2)init
{
  v3.receiver = self;
  v3.super_class = MSRHDRProcessingT2;
  result = [(MSRHDRProcessing *)&v3 init];
  result->super.super._mmrEnable = 0;
  avdHistSupport = 1;
  return result;
}

- (void)setupHardwareConfigUnit
{
  v4.receiver = self;
  v4.super_class = MSRHDRProcessingT2;
  [(MSRHDRProcessingT1 *)&v4 setupHardwareConfigUnit];
  msrCU = self->super.super._msrCU;
  msrCU->var5 = 0xC066726172;
  msrCU->var0 = vadd_s32(msrCU->var0, 0xC000000001);
}

- (void)updatePolynomialTablesForComponent:(unsigned __int16 *)component Component:(unsigned __int16)a4 TableSize:(unint64_t)size
{
  self->super.super._reshapeLUTCreated = 1;
  self->super.super._reshapeLUTSize = size;
  if (size)
  {
    v5 = &component[a4 * size];
    v6 = self->super.super._reshapeLUT[a4];
    do
    {
      v7 = *v5++;
      *v6++ = 4 * v7;
      --size;
    }

    while (size);
  }
}

- (void)updateMmrTableForComponent:(unsigned __int16)component mmrClipValMin:(unsigned __int16 *)min mmrClipValMax:(unsigned __int16 *)max mmrCoeff:(float *)coeff
{
  msrCU = self->super.super._msrCU;
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

- (void)updateMmrReshapeChromaForComponent:(unsigned __int16)component mmrReshapeChroma:(int)chroma
{
  v4 = &self->super.super._msrCU->var4[1016];
  self->super.super._msrCU->var6.var2 = 4;
  if (component == 2)
  {
    *(v4 + 1069) = chroma != 0;
  }

  else if (component == 1)
  {
    *(v4 + 1068) = chroma != 0;
  }
}

- (void)setupMSRPolynomialTableForHDR10
{
  v4.receiver = self;
  v4.super_class = MSRHDRProcessingT2;
  [(MSRHDRProcessing *)&v4 setupMSRPolynomialTableForHDR10];
  for (i = 0; i != 3; ++i)
  {
    [(MSRHDRProcessingT2 *)self updateMmrReshapeChromaForComponent:i mmrReshapeChroma:1];
  }
}

- (void)setupMSRMappingTableWithMetadata:(id *)metadata
{
  v27 = *MEMORY[0x277D85DE8];
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
        v26 = WORD1(v11);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: polyBuf && mmrCoefBuf warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingT2.mm at line 164\n", buf, 0xCu);
      }

      prevLogInstanceID = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: polyBuf && mmrCoefBuf warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingT2.mm at line 164\n", buf, 2u);
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
          v26 = WORD1(v17);
          _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: metadata->mapping_idc[0][0][cmp][0] == 0 || metadata->mapping_idc[0][0][cmp][0] == 1 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingT2.mm at line 167\n", buf, 0xCu);
        }

        prevLogInstanceID = v17;
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: metadata->mapping_idc[0][0][cmp][0] == 0 || metadata->mapping_idc[0][0][cmp][0] == 1 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingT2.mm at line 167\n", buf, 2u);
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
            v26 = WORD1(v18);
            _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: cmp != 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingT2.mm at line 182\n", buf, 0xCu);
          }

          prevLogInstanceID = v18;
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: cmp != 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingT2.mm at line 182\n", buf, 2u);
        }
      }

      createMmrTableForComponent(metadata, v12, v24, v23, &v9[v13 & 0xFFFFFFFE]);
      [(MSRHDRProcessingT2 *)self updateMmrTableForComponent:v12 mmrClipValMin:v24 mmrClipValMax:v23 mmrCoeff:&v9[v13 & 0xFFFFFFFE]];
      v19 = 0;
    }

    else
    {
      createPolynomialTableForComponent(metadata, v12, v6 + 2 * (v12 << v5));
      [(MSRHDRProcessingT2 *)self updatePolynomialTablesForComponent:v6 Component:v12 TableSize:v22];
      v19 = 1;
    }

    [(MSRHDRProcessingT2 *)self updateMmrReshapeChromaForComponent:v12++ mmrReshapeChroma:v19, v21];
    v13 += 22;
    v15 += 36;
  }

  while (v12 != 3);
  free(v9);
  free(v6);
  v20 = *MEMORY[0x277D85DE8];
}

@end