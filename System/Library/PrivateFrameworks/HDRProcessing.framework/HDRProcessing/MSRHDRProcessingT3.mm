@interface MSRHDRProcessingT3
- (MSRHDRProcessingT3)init;
- (unint64_t)getTmLutSize;
- (void)dovi_ootf_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)getTmUnequalLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)hdr10_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)hdr10_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer LumaMixFactorBuffer:(float *)factorBuffer;
- (void)hlg_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)hlg_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer;
- (void)populateMSRColorConfigStageB02HDR10:(id *)r10 DMConfig:(id *)config;
- (void)populateMSRColorConfigStageB02HLG:(id *)g hdrControl:(id *)control;
- (void)setupHardwareConfigUnit;
@end

@implementation MSRHDRProcessingT3

- (MSRHDRProcessingT3)init
{
  v3.receiver = self;
  v3.super_class = MSRHDRProcessingT3;
  result = [(MSRHDRProcessingT2 *)&v3 init];
  unequalLUTSupport = 1;
  return result;
}

- (void)setupHardwareConfigUnit
{
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingT3;
  [(MSRHDRProcessingT2 *)&v5 setupHardwareConfigUnit];
  self->super.super.super._msrCU->var7 = 0x17D866726173;
  if (GetConfig())
  {
    Config = GetConfig();
    v4 = *HDRConfig::GetConfigEntryValue(Config, 0x2Cu, 0);
    self->super.super.super._enableUnequalSpacingLUT = v4;
    if (v4 == 1)
    {
      self->super.super.super._msrCU->var0 = vadd_s32(self->super.super.super._msrCU->var0, 0x17D800000001);
    }
  }

  else
  {
    self->super.super.super._enableUnequalSpacingLUT = 0;
  }
}

- (unint64_t)getTmLutSize
{
  if (self->super.super.super._enableUnequalSpacingLUT)
  {
    return 754;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MSRHDRProcessingT3;
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
  if (self->super.super.super._enableUnequalSpacingLUT)
  {

    [(MSRHDRProcessingT3 *)self getTmUnequalLutInput:input lutInput:lutInput];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MSRHDRProcessingT3;
    [(MSRHDRProcessing *)&v6 hdr10_getTmLutInput:input lutInput:lutInput];
  }
}

- (void)hlg_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  if (self->super.super.super._enableUnequalSpacingLUT)
  {

    [(MSRHDRProcessingT3 *)self getTmUnequalLutInput:input lutInput:lutInput];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MSRHDRProcessingT3;
    [(MSRHDRProcessing *)&v6 hlg_getTmLutInput:input lutInput:lutInput];
  }
}

- (void)dovi_ootf_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  if (self->super.super.super._enableUnequalSpacingLUT)
  {

    [(MSRHDRProcessingT3 *)self getTmUnequalLutInput:input lutInput:lutInput];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MSRHDRProcessingT3;
    [(MSRHDRProcessing *)&v6 dovi_ootf_getTmLutInput:input lutInput:lutInput];
  }
}

- (void)hdr10_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer LumaMixFactorBuffer:(float *)factorBuffer
{
  if (self->super.super.super._enableUnequalSpacingLUT)
  {
    if (t == 6)
    {
      *(&self->super.super.super._regamma + 2833) = 1;
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
    v10.super_class = MSRHDRProcessingT3;
    [(MSRHDRProcessing *)&v10 hdr10_tm_updateLUT:t ScalingFactorBuffer:buffer LumaMixFactorBuffer:factorBuffer];
  }
}

- (void)hlg_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer
{
  if (self->super.super.super._enableUnequalSpacingLUT)
  {
    if (t == 6)
    {
      *(&self->super.super.super._regamma + 2833) = 1;
      memcpy(&self->_unequalSpacingTmLutMode, buffer, 0x404uLL);

      memcpy(&self->_toneMapLUT1[256], buffer + 257, 0x7C4uLL);
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MSRHDRProcessingT3;
    [(MSRHDRProcessing *)&v6 hlg_tm_updateLUT:t ScalingFactorBuffer:buffer];
  }
}

- (void)populateMSRColorConfigStageB02HDR10:(id *)r10 DMConfig:(id *)config
{
  if (self->super.super.super._enableUnequalSpacingLUT)
  {
    msrCU = self->super.super.super._msrCU;
    r10->var2.var0.var0[3946] = 8;
    msrCU->var8.var0 = *(&self->super.super.super._regamma + 2833);
    msrCU->var8.var1 = 0;
    msrCU->var8.var3 = [(MSRHDRProcessingT3 *)self getLumaShiftBits];
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
    memcpy(self->super.super.super._msrCU->var8.var10, &self->_unequalSpacingTmLutMode, sizeof(self->super.super.super._msrCU->var8.var10));
    memcpy(self->super.super.super._msrCU->var8.var12, &self->_toneMapLUT1[256], sizeof(self->super.super.super._msrCU->var8.var12));
    memcpy(self->super.super.super._msrCU->var8.var11, &self->_toneMapLUT0[256], sizeof(self->super.super.super._msrCU->var8.var11));
    var13 = self->super.super.super._msrCU->var8.var13;

    memcpy(var13, &self->_toneMapLUT2[496], 0x7C4uLL);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MSRHDRProcessingT3;
    [(MSRHDRProcessing *)&v11 populateMSRColorConfigStageB02HDR10:r10 DMConfig:config];
  }
}

- (void)populateMSRColorConfigStageB02HLG:(id *)g hdrControl:(id *)control
{
  if (self->super.super.super._enableUnequalSpacingLUT)
  {
    msrCU = self->super.super.super._msrCU;
    g->var2.var0.var0[3946] = 8;
    msrCU->var8.var0 = *(&self->super.super.super._regamma + 2833);
    msrCU->var8.var1 = 0;
    getLumaShiftBits = [(MSRHDRProcessingT3 *)self getLumaShiftBits];
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
    memcpy(self->super.super.super._msrCU->var8.var10, &self->_unequalSpacingTmLutMode, sizeof(self->super.super.super._msrCU->var8.var10));
    var12 = self->super.super.super._msrCU->var8.var12;

    memcpy(var12, &self->_toneMapLUT1[256], 0x7C4uLL);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MSRHDRProcessingT3;
    [(MSRHDRProcessing *)&v14 populateMSRColorConfigStageB02HLG:g hdrControl:control];
  }
}

@end