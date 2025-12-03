@interface ProcessingEngine
- (BOOL)hdr10_tm_configChanged:(_HDR10TMParam *)changed HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam;
- (BOOL)hlg_tm_configChanged:(id *)changed HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam;
- (ProcessingEngine)init;
- (void)dealloc;
- (void)hdr10_tm_reserveConfig:(_HDR10TMParam *)config HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam;
- (void)hlg_tm_reserveConfig:(id *)config HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam;
- (void)printArray:(__sFILE *)array Prefix:(const char *)prefix Array:(void *)a5 Size:(unint64_t)size NumberPerLine:(unint64_t)line Format:(int)format;
- (void)setupToneMappingWithDmData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl dmConfig:(id *)config DM:(id)m constraintDM:(id)dM hdr10InfoFrame:(id *)frame;
@end

@implementation ProcessingEngine

- (ProcessingEngine)init
{
  v6.receiver = self;
  v6.super_class = ProcessingEngine;
  v2 = [(ProcessingEngine *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ProcessingEngine;
  [(ProcessingEngine *)&v2 dealloc];
}

- (BOOL)hdr10_tm_configChanged:(_HDR10TMParam *)changed HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x39u, 0))
    {
      return 1;
    }
  }

  v14 = 676;
  if (cControl->tcForHdrConstraint)
  {
    v14 = 2632;
  }

  v15 = (self + v14);
  if (control->var0 != *v15)
  {
    return 1;
  }

  return hasHdr10TonemapConfigChanged((v15 + 6), changed, param, adaptationParam);
}

- (void)hdr10_tm_reserveConfig:(_HDR10TMParam *)config HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam
{
  v9 = 676;
  if (cControl->tcForHdrConstraint)
  {
    v9 = 2632;
  }

  v10 = self + v9;
  *(&self->super.isa + v9) = control->var0;
  memcpy(&self->_engineHC.inputFormatRaw + v9, config, 0x58CuLL);
  v12 = *&param->Xs[3];
  v11 = *&param->Ys[3];
  *(v10 + 91) = *&param->on;
  *(v10 + 92) = v12;
  *(v10 + 93) = v11;
  v13 = *&param->splCs[1][2];
  v14 = *&param->splCs[2][2];
  v15 = *&param->splCs[0][2];
  *(v10 + 94) = *&param->Ms[3];
  *(v10 + 97) = v14;
  *(v10 + 96) = v13;
  *(v10 + 95) = v15;
  v16 = *&param->polyCs[2][2];
  v17 = *&param->linCs[1][0];
  v18 = *&param->polyCs[1][2];
  *(v10 + 98) = *&param->polyCs[0][2];
  *(v10 + 101) = v17;
  *(v10 + 100) = v16;
  *(v10 + 99) = v18;
  v20 = *&param->RWTMO_b;
  v19 = *&param->RWTMO_p2x;
  v21 = *&param->RWTMO_ExtensionWeight;
  *(v10 + 102) = *&param->RWTMO_tgtRefWtNits;
  *(v10 + 210) = v21;
  *(v10 + 104) = v19;
  *(v10 + 103) = v20;
  *(v10 + 1688) = *&adaptationParam->on;
  v22 = *adaptationParam->YsC;
  v23 = *&adaptationParam->MsC[1];
  v24 = *&adaptationParam->splCs[0][3];
  *(v10 + 1736) = *&adaptationParam->withLinearExtension;
  *(v10 + 1752) = v24;
  *(v10 + 1704) = v22;
  *(v10 + 1720) = v23;
  v25 = *&adaptationParam->splCs[1][3];
  v26 = *&adaptationParam->polyCs[0][3];
  v27 = *&adaptationParam->polyCs[1][3];
  *(v10 + 227) = *&adaptationParam->linCs[1][1];
  *(v10 + 1784) = v26;
  *(v10 + 1800) = v27;
  *(v10 + 1768) = v25;
}

- (BOOL)hlg_tm_configChanged:(id *)changed HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x39u, 0))
    {
      return 1;
    }
  }

  v16 = 676;
  if (cControl->tcForHdrConstraint)
  {
    v16 = 2632;
  }

  v17 = (self + v16);
  if (control->var0 != *v17)
  {
    return 1;
  }

  return hasHlgTonemapConfigChanged((v17 + 6), &changed->var0, param, adaptationParam, ambAdaptationParam);
}

- (void)hlg_tm_reserveConfig:(id *)config HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam
{
  v8 = 676;
  if (cControl->tcForHdrConstraint)
  {
    v8 = 2632;
  }

  v9 = self + v8;
  *v9 = control->var0;
  v10 = *&config->var68;
  *(v9 + 8) = LODWORD(config->var53);
  gain = config->var55.gain;
  *(v9 + 6) = v10;
  *(v9 + 7) = gain;
  *(v9 + 467) = LODWORD(config->var67);
  applyArtisticOOTF = param->applyArtisticOOTF;
  v9[1872] = applyArtisticOOTF;
  if (applyArtisticOOTF)
  {
    memcpy(v9 + 36, &param->artisticOOTFParam, 0x58CuLL);
    v16 = *&adaptationParam->Xs[3];
    v15 = *&adaptationParam->Ys[3];
    *(v9 + 91) = *&adaptationParam->on;
    *(v9 + 92) = v16;
    *(v9 + 93) = v15;
    v17 = *&adaptationParam->splCs[1][2];
    v18 = *&adaptationParam->splCs[2][2];
    v19 = *&adaptationParam->splCs[0][2];
    *(v9 + 94) = *&adaptationParam->Ms[3];
    *(v9 + 97) = v18;
    *(v9 + 96) = v17;
    *(v9 + 95) = v19;
    v20 = *&adaptationParam->polyCs[2][2];
    v21 = *&adaptationParam->linCs[1][0];
    v22 = *&adaptationParam->polyCs[1][2];
    *(v9 + 98) = *&adaptationParam->polyCs[0][2];
    *(v9 + 101) = v21;
    *(v9 + 100) = v20;
    *(v9 + 99) = v22;
    v24 = *&adaptationParam->RWTMO_b;
    v23 = *&adaptationParam->RWTMO_p2x;
    v25 = *&adaptationParam->RWTMO_ExtensionWeight;
    *(v9 + 102) = *&adaptationParam->RWTMO_tgtRefWtNits;
    *(v9 + 210) = v25;
    *(v9 + 104) = v23;
    *(v9 + 103) = v24;
    *(v9 + 1688) = *&ambAdaptationParam->on;
    v26 = *ambAdaptationParam->YsC;
    v27 = *&ambAdaptationParam->MsC[1];
    v28 = *&ambAdaptationParam->splCs[0][3];
    *(v9 + 1736) = *&ambAdaptationParam->withLinearExtension;
    *(v9 + 1752) = v28;
    *(v9 + 1704) = v26;
    *(v9 + 1720) = v27;
    v29 = *&ambAdaptationParam->splCs[1][3];
    v30 = *&ambAdaptationParam->polyCs[0][3];
    v31 = *&ambAdaptationParam->polyCs[1][3];
    *(v9 + 227) = *&ambAdaptationParam->linCs[1][1];
    *(v9 + 1784) = v30;
    *(v9 + 1800) = v31;
    *(v9 + 1768) = v29;
  }
}

- (void)setupToneMappingWithDmData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl dmConfig:(id *)config DM:(id)m constraintDM:(id)dM hdr10InfoFrame:(id *)frame
{
  mCopy = m;
  dMCopy = dM;
  var10 = hdrControl->var10;
  v17 = var10 > 7;
  v18 = (1 << var10) & 0xB8;
  if (v17 || v18 == 0)
  {
    BYTE1(config[1].var49) = 0;
  }

  else
  {
    BYTE1(config[1].var49) = 1;
    control->targetMaxLinear = control->Tmax_nits;
  }

  if (GetConfig())
  {
    Config = GetConfig();
    v21 = *HDRConfig::GetConfigEntryValue(Config, 0x2Du, 0);
  }

  else
  {
    v21 = 0;
  }

  control->atmEnable = v21 & 1;
  control->tmData.contentPercentiles.n = 3;
  control->tmData.contentPercentiles.percents[0] = 0.25;
  *&control->tmData.contentPercentiles.percents[1] = 0x3F4000003F000000;
  control->tmData.contentPercentiles.percentiles[0] = 0.25;
  *&control->tmData.contentPercentiles.percentiles[1] = 0x3F4000003F000000;
  control->tcForHdrConstraint = 0;
  v22 = malloc_type_malloc(0x19F8uLL, 0x10600406133F2B9uLL);
  memcpy(v22, control, 0x19F8uLL);
  *(v22 + 184) = 1;
  v23 = malloc_type_malloc(0x210uLL, 0x1000040BC767FD4uLL);
  memcpy(v23, config, 0x210uLL);
  if (hdrControl->var0 == 1)
  {
    [mCopy setDisplayManagementConfigFromMetaData:data config:config hdrCtrl:hdrControl tcCtrl:control];
  }

  else
  {
    [mCopy setDisplayManagementConfigFromDictionary:config hdrCtrl:hdrControl tcCtrl:control infoFrame:frame];
  }

  if (control->atmEnable)
  {
    getAdaptiveTM = [mCopy getAdaptiveTM];
    HIDWORD(v30) = self->_frameNumber;
    LOBYTE(v30) = 1;
    [getAdaptiveTM adaptiveToneMappingManagement:data DMConfig:config DM:mCopy TCControl:control HDRControl:hdrControl hdr10InfoFrame:frame LLDoVi:v30 frameNumber:?];
  }

  [(ProcessingEngine *)self setDisplayManagementParametricConfig:control HDRControl:hdrControl];
  [(ProcessingEngine *)self createLUTFromDMConfig:config DM:mCopy TCControl:control HDRControl:hdrControl LLDoVi:1];
  v25 = 0.0;
  if (control->enableHdrConstraintStrength && control->hdrConstraintStrengthValue > 0.0 && control->hdrConstraintTransitionMode == 1 && (*(control + 152) & 2) == 0)
  {
    enableHybridCanonicalRendering = control->enableHybridCanonicalRendering;
    if (GetConfig())
    {
      if (enableHybridCanonicalRendering)
      {
        v27 = 199;
      }

      else
      {
        v27 = 198;
      }

      v28 = GetConfig();
      maxEDRValue = *HDRConfig::GetConfigEntryValue(v28, v27, 0);
    }

    else
    {
      maxEDRValue = 0.0;
    }

    if (maxEDRValue >= control->maxEDRValue)
    {
      maxEDRValue = control->maxEDRValue;
    }

    if (maxEDRValue < 1.0)
    {
      maxEDRValue = 1.0;
    }

    *(v22 + 7) = maxEDRValue;
    *(v22 + 8) = 1.0 / maxEDRValue;
    *v22 = control->targetMaxLinear * maxEDRValue / control->maxEDRValue;
    if (hdrControl->var0 == 1)
    {
      [dMCopy setDisplayManagementConfigFromMetaData:data config:v23 hdrCtrl:hdrControl tcCtrl:v22];
    }

    else
    {
      [dMCopy setDisplayManagementConfigFromDictionary:v23 hdrCtrl:hdrControl tcCtrl:v22 infoFrame:frame];
    }

    [(ProcessingEngine *)self createLUTFromDMConfig:v23 DM:dMCopy TCControl:v22 HDRControl:hdrControl LLDoVi:1];
    v25 = fmin(control->hdrConstraintStrengthValue + control->hdrConstraintStrengthValue, 1.0);
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    *&v25 = v25;
  }

  [(ProcessingEngine *)self mixLUTFromTCControl:control TCControlConstr:v22 withFactor:v25];
  [(ProcessingEngine *)self updateLUTFromDMConfig:config TCControl:control HDRControl:hdrControl];
  free(v22);
  free(v23);
}

- (void)printArray:(__sFILE *)array Prefix:(const char *)prefix Array:(void *)a5 Size:(unint64_t)size NumberPerLine:(unint64_t)line Format:(int)format
{
  v35 = *MEMORY[0x277D85DE8];
  bzero(v34, 0x2000uLL);
  if (!array)
  {
    if (!size)
    {
LABEL_43:
      printf("%s", v34);
      goto LABEL_44;
    }

    v16 = 0;
    v17 = 0;
    v18 = 1;
    while (1)
    {
      if (v18 != 1 && !(v16 % line))
      {
        v17 += snprintf(&v34[v17], 0x2000 - v17, "\n");
      }

      if (format <= 1)
      {
        if (!format)
        {
          v24 = *(a5 + v16);
          v23 = snprintf(&v34[v17], 0x2000 - v17, "%s%.10f%s");
          goto LABEL_42;
        }

        if (format != 1)
        {
          goto LABEL_40;
        }

        v21 = &v34[v17];
        v22 = 0x2000 - v17;
        v31 = *(a5 + v16);
      }

      else
      {
        if (format == 2)
        {
          v19 = &v34[v17];
          v20 = 0x2000 - v17;
          v32 = *(a5 + v16);
          goto LABEL_41;
        }

        if (format != 3)
        {
          if (format == 4)
          {
            v19 = &v34[v17];
            v20 = 0x2000 - v17;
            v30 = *(a5 + v16);
          }

          else
          {
LABEL_40:
            *(a5 + v16);
            v19 = &v34[v17];
            v20 = 0x2000 - v17;
          }

LABEL_41:
          v23 = snprintf(v19, v20, "%s%d%s");
          goto LABEL_42;
        }

        v21 = &v34[v17];
        v22 = 0x2000 - v17;
        v33 = *(a5 + v16);
      }

      v23 = snprintf(v21, v22, "%s%u%s");
LABEL_42:
      v17 += v23;
      v16 = v18++;
      if (v16 >= size)
      {
        goto LABEL_43;
      }
    }
  }

  if (size)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      if (v14 != 1 && !(v13 % line))
      {
        fputc(10, array);
      }

      if (format <= 1)
      {
        if (!format)
        {
          v15 = *(a5 + v13);
          fprintf(array, "%s%.10f%s");
          goto LABEL_21;
        }

        if (format != 1)
        {
          goto LABEL_19;
        }

        v27 = *(a5 + v13);
      }

      else
      {
        if (format == 2)
        {
          v28 = *(a5 + v13);
          goto LABEL_20;
        }

        if (format != 3)
        {
          if (format == 4)
          {
            v26 = *(a5 + v13);
          }

          else
          {
LABEL_19:
            *(a5 + v13);
          }

LABEL_20:
          fprintf(array, "%s%d%s");
          goto LABEL_21;
        }

        v29 = *(a5 + v13);
      }

      fprintf(array, "%s%u%s");
LABEL_21:
      v13 = v14++;
    }

    while (v13 < size);
  }

LABEL_44:
  v25 = *MEMORY[0x277D85DE8];
}

@end