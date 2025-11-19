@interface MSRHDRProcessingT4
- (MSRHDRProcessingT4)init;
- (float)getDolby84DegammaScale;
- (float)getDolby84PostDegammaScale;
- (void)populateMSRColorConfigStageHwOOTF:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)setupHardwareConfigUnit;
@end

@implementation MSRHDRProcessingT4

- (MSRHDRProcessingT4)init
{
  v3.receiver = self;
  v3.super_class = MSRHDRProcessingT4;
  return [(MSRHDRProcessingT3 *)&v3 init];
}

- (void)setupHardwareConfigUnit
{
  v11.receiver = self;
  v11.super_class = MSRHDRProcessingT4;
  [(MSRHDRProcessingT3 *)&v11 setupHardwareConfigUnit];
  self->super.super.super.super._msrCU->var9 = 0x2C66726175;
  if (GetConfig())
  {
    Config = GetConfig();
    v4 = *HDRConfig::GetConfigEntryValue(Config, 0x32u, 0);
  }

  else
  {
    v4 = 0;
  }

  self->super.super.super.super.super._enableHwOOTF = v4 & 1;
  if (GetConfig())
  {
    v5 = GetConfig();
    v6 = *HDRConfig::GetConfigEntryValue(v5, 0x33u, 0);
  }

  else
  {
    v6 = 0;
  }

  self->super.super.super.super.super._enableHwOotfForHLG = v6 & 1;
  if (GetConfig())
  {
    v7 = GetConfig();
    v8 = *HDRConfig::GetConfigEntryValue(v7, 0x34u, 0);
  }

  else
  {
    v8 = 0;
  }

  self->super.super.super.super.super._enableHwOotfForDolby84 = v8 & 1;
  if (GetConfig())
  {
    v9 = GetConfig();
    v10 = *HDRConfig::GetConfigEntryValue(v9, 0x35u, 0);
  }

  else
  {
    v10 = 0;
  }

  self->super.super.super.super._enableFp16Regamma = v10 & 1;
  if (self->super.super.super.super.super._enableHwOOTF)
  {
    self->super.super.super.super._msrCU->var0 = vadd_s32(self->super.super.super.super._msrCU->var0, 0x2C00000001);
  }
}

- (void)populateMSRColorConfigStageHwOOTF:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v10 = &self->super.super.super.super._msrCU->var8.var12[175];
  if (a4)
  {
    self->super.super.super.super._msrCU->var10.var0 = 1;
    *(v10 + 3288) = 24;
    *(v10 + 3289) = [(MSRHDRProcessingT4 *)self getOotfLumaShiftBits];
    v10[827] = 0.0;
    v10[823] = 0.0;
    var15 = a9->var15;
    v18 = v10 + 828;
    v19 = &RGB2020toHLGY_coeff;
    if (var15 == 1)
    {
      v19 = &RGB709toHLGY_coeff;
    }

    if (var15 == 12)
    {
      v20 = &RGBP3toHLGY_coeff;
    }

    else
    {
      v20 = v19;
    }

    v21 = 3;
    do
    {
      v22 = *v20++;
      *v18 = v22;
      *(v18 - 4) = v22;
      ++v18;
      --v21;
    }

    while (v21);
    v10[831] = a6->var67 + 1.0;
    v23.receiver = self;
    v23.super_class = MSRHDRProcessingT4;
    [(MSRHDRProcessing *)&v23 populateMSRColorConfigStageHwOOTF:a3 Enabled:1 Prefix:a5 DMConfig:a6 DMData:a7 tcControl:a8 hdrControl:a9 MSRHDRContext:a10];
  }

  else
  {
    self->super.super.super.super._msrCU->var10.var0 = 0;
  }
}

- (float)getDolby84DegammaScale
{
  LODWORD(v2) = 1.0;
  if (!self->super.super.super.super.super._enableHwOotfForDolby84)
  {
    v4.receiver = self;
    v4.super_class = MSRHDRProcessingT4;
    [(MSRHDRProcessing *)&v4 getDolby84DegammaScale];
  }

  return *&v2;
}

- (float)getDolby84PostDegammaScale
{
  LODWORD(v2) = 10.0;
  if (!self->super.super.super.super.super._enableHwOotfForDolby84)
  {
    v4.receiver = self;
    v4.super_class = MSRHDRProcessingT4;
    [(MSRHDRProcessing *)&v4 getDolby84PostDegammaScale];
  }

  return *&v2;
}

@end