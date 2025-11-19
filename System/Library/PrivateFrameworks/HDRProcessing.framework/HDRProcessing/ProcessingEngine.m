@interface ProcessingEngine
- (BOOL)hdr10_tm_configChanged:(_HDR10TMParam *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 EdrAdaptationParam:(_EdrAdaptationParam *)a6 AmbAdaptationParam:(_AmbAdaptationParam *)a7;
- (BOOL)hlg_tm_configChanged:(id *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 TMParam:(_HLGTMParam *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8;
- (ProcessingEngine)init;
- (void)dealloc;
- (void)hdr10_tm_reserveConfig:(_HDR10TMParam *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 EdrAdaptationParam:(_EdrAdaptationParam *)a6 AmbAdaptationParam:(_AmbAdaptationParam *)a7;
- (void)hlg_tm_reserveConfig:(id *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 TMParam:(_HLGTMParam *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8;
- (void)printArray:(__sFILE *)a3 Prefix:(const char *)a4 Array:(void *)a5 Size:(unint64_t)a6 NumberPerLine:(unint64_t)a7 Format:(int)a8;
- (void)setupToneMappingWithDmData:(id *)a3 tcControl:(ToneCurve_Control *)a4 hdrControl:(id *)a5 dmConfig:(id *)a6 DM:(id)a7 constraintDM:(id)a8 hdr10InfoFrame:(id *)a9;
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

- (BOOL)hdr10_tm_configChanged:(_HDR10TMParam *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 EdrAdaptationParam:(_EdrAdaptationParam *)a6 AmbAdaptationParam:(_AmbAdaptationParam *)a7
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
  if (a5->tcForHdrConstraint)
  {
    v14 = 2632;
  }

  v15 = (self + v14);
  if (a4->var0 != *v15)
  {
    return 1;
  }

  return hasHdr10TonemapConfigChanged((v15 + 6), a3, a6, a7);
}

- (void)hdr10_tm_reserveConfig:(_HDR10TMParam *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 EdrAdaptationParam:(_EdrAdaptationParam *)a6 AmbAdaptationParam:(_AmbAdaptationParam *)a7
{
  v9 = 676;
  if (a5->tcForHdrConstraint)
  {
    v9 = 2632;
  }

  v10 = self + v9;
  *(&self->super.isa + v9) = a4->var0;
  memcpy(&self->_engineHC.inputFormatRaw + v9, a3, 0x58CuLL);
  v12 = *&a6->Xs[3];
  v11 = *&a6->Ys[3];
  *(v10 + 91) = *&a6->on;
  *(v10 + 92) = v12;
  *(v10 + 93) = v11;
  v13 = *&a6->splCs[1][2];
  v14 = *&a6->splCs[2][2];
  v15 = *&a6->splCs[0][2];
  *(v10 + 94) = *&a6->Ms[3];
  *(v10 + 97) = v14;
  *(v10 + 96) = v13;
  *(v10 + 95) = v15;
  v16 = *&a6->polyCs[2][2];
  v17 = *&a6->linCs[1][0];
  v18 = *&a6->polyCs[1][2];
  *(v10 + 98) = *&a6->polyCs[0][2];
  *(v10 + 101) = v17;
  *(v10 + 100) = v16;
  *(v10 + 99) = v18;
  v20 = *&a6->RWTMO_b;
  v19 = *&a6->RWTMO_p2x;
  v21 = *&a6->RWTMO_ExtensionWeight;
  *(v10 + 102) = *&a6->RWTMO_tgtRefWtNits;
  *(v10 + 210) = v21;
  *(v10 + 104) = v19;
  *(v10 + 103) = v20;
  *(v10 + 1688) = *&a7->on;
  v22 = *a7->YsC;
  v23 = *&a7->MsC[1];
  v24 = *&a7->splCs[0][3];
  *(v10 + 1736) = *&a7->withLinearExtension;
  *(v10 + 1752) = v24;
  *(v10 + 1704) = v22;
  *(v10 + 1720) = v23;
  v25 = *&a7->splCs[1][3];
  v26 = *&a7->polyCs[0][3];
  v27 = *&a7->polyCs[1][3];
  *(v10 + 227) = *&a7->linCs[1][1];
  *(v10 + 1784) = v26;
  *(v10 + 1800) = v27;
  *(v10 + 1768) = v25;
}

- (BOOL)hlg_tm_configChanged:(id *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 TMParam:(_HLGTMParam *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8
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
  if (a5->tcForHdrConstraint)
  {
    v16 = 2632;
  }

  v17 = (self + v16);
  if (a4->var0 != *v17)
  {
    return 1;
  }

  return hasHlgTonemapConfigChanged((v17 + 6), &a3->var0, a6, a7, a8);
}

- (void)hlg_tm_reserveConfig:(id *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 TMParam:(_HLGTMParam *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8
{
  v8 = 676;
  if (a5->tcForHdrConstraint)
  {
    v8 = 2632;
  }

  v9 = self + v8;
  *v9 = a4->var0;
  v10 = *&a3->var68;
  *(v9 + 8) = LODWORD(a3->var53);
  gain = a3->var55.gain;
  *(v9 + 6) = v10;
  *(v9 + 7) = gain;
  *(v9 + 467) = LODWORD(a3->var67);
  applyArtisticOOTF = a6->applyArtisticOOTF;
  v9[1872] = applyArtisticOOTF;
  if (applyArtisticOOTF)
  {
    memcpy(v9 + 36, &a6->artisticOOTFParam, 0x58CuLL);
    v16 = *&a7->Xs[3];
    v15 = *&a7->Ys[3];
    *(v9 + 91) = *&a7->on;
    *(v9 + 92) = v16;
    *(v9 + 93) = v15;
    v17 = *&a7->splCs[1][2];
    v18 = *&a7->splCs[2][2];
    v19 = *&a7->splCs[0][2];
    *(v9 + 94) = *&a7->Ms[3];
    *(v9 + 97) = v18;
    *(v9 + 96) = v17;
    *(v9 + 95) = v19;
    v20 = *&a7->polyCs[2][2];
    v21 = *&a7->linCs[1][0];
    v22 = *&a7->polyCs[1][2];
    *(v9 + 98) = *&a7->polyCs[0][2];
    *(v9 + 101) = v21;
    *(v9 + 100) = v20;
    *(v9 + 99) = v22;
    v24 = *&a7->RWTMO_b;
    v23 = *&a7->RWTMO_p2x;
    v25 = *&a7->RWTMO_ExtensionWeight;
    *(v9 + 102) = *&a7->RWTMO_tgtRefWtNits;
    *(v9 + 210) = v25;
    *(v9 + 104) = v23;
    *(v9 + 103) = v24;
    *(v9 + 1688) = *&a8->on;
    v26 = *a8->YsC;
    v27 = *&a8->MsC[1];
    v28 = *&a8->splCs[0][3];
    *(v9 + 1736) = *&a8->withLinearExtension;
    *(v9 + 1752) = v28;
    *(v9 + 1704) = v26;
    *(v9 + 1720) = v27;
    v29 = *&a8->splCs[1][3];
    v30 = *&a8->polyCs[0][3];
    v31 = *&a8->polyCs[1][3];
    *(v9 + 227) = *&a8->linCs[1][1];
    *(v9 + 1784) = v30;
    *(v9 + 1800) = v31;
    *(v9 + 1768) = v29;
  }
}

- (void)setupToneMappingWithDmData:(id *)a3 tcControl:(ToneCurve_Control *)a4 hdrControl:(id *)a5 dmConfig:(id *)a6 DM:(id)a7 constraintDM:(id)a8 hdr10InfoFrame:(id *)a9
{
  v31 = a7;
  v15 = a8;
  var10 = a5->var10;
  v17 = var10 > 7;
  v18 = (1 << var10) & 0xB8;
  if (v17 || v18 == 0)
  {
    BYTE1(a6[1].var49) = 0;
  }

  else
  {
    BYTE1(a6[1].var49) = 1;
    a4->targetMaxLinear = a4->Tmax_nits;
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

  a4->atmEnable = v21 & 1;
  a4->tmData.contentPercentiles.n = 3;
  a4->tmData.contentPercentiles.percents[0] = 0.25;
  *&a4->tmData.contentPercentiles.percents[1] = 0x3F4000003F000000;
  a4->tmData.contentPercentiles.percentiles[0] = 0.25;
  *&a4->tmData.contentPercentiles.percentiles[1] = 0x3F4000003F000000;
  a4->tcForHdrConstraint = 0;
  v22 = malloc_type_malloc(0x19F8uLL, 0x10600406133F2B9uLL);
  memcpy(v22, a4, 0x19F8uLL);
  *(v22 + 184) = 1;
  v23 = malloc_type_malloc(0x210uLL, 0x1000040BC767FD4uLL);
  memcpy(v23, a6, 0x210uLL);
  if (a5->var0 == 1)
  {
    [v31 setDisplayManagementConfigFromMetaData:a3 config:a6 hdrCtrl:a5 tcCtrl:a4];
  }

  else
  {
    [v31 setDisplayManagementConfigFromDictionary:a6 hdrCtrl:a5 tcCtrl:a4 infoFrame:a9];
  }

  if (a4->atmEnable)
  {
    v24 = [v31 getAdaptiveTM];
    HIDWORD(v30) = self->_frameNumber;
    LOBYTE(v30) = 1;
    [v24 adaptiveToneMappingManagement:a3 DMConfig:a6 DM:v31 TCControl:a4 HDRControl:a5 hdr10InfoFrame:a9 LLDoVi:v30 frameNumber:?];
  }

  [(ProcessingEngine *)self setDisplayManagementParametricConfig:a4 HDRControl:a5];
  [(ProcessingEngine *)self createLUTFromDMConfig:a6 DM:v31 TCControl:a4 HDRControl:a5 LLDoVi:1];
  v25 = 0.0;
  if (a4->enableHdrConstraintStrength && a4->hdrConstraintStrengthValue > 0.0 && a4->hdrConstraintTransitionMode == 1 && (*(a4 + 152) & 2) == 0)
  {
    enableHybridCanonicalRendering = a4->enableHybridCanonicalRendering;
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

    if (maxEDRValue >= a4->maxEDRValue)
    {
      maxEDRValue = a4->maxEDRValue;
    }

    if (maxEDRValue < 1.0)
    {
      maxEDRValue = 1.0;
    }

    *(v22 + 7) = maxEDRValue;
    *(v22 + 8) = 1.0 / maxEDRValue;
    *v22 = a4->targetMaxLinear * maxEDRValue / a4->maxEDRValue;
    if (a5->var0 == 1)
    {
      [v15 setDisplayManagementConfigFromMetaData:a3 config:v23 hdrCtrl:a5 tcCtrl:v22];
    }

    else
    {
      [v15 setDisplayManagementConfigFromDictionary:v23 hdrCtrl:a5 tcCtrl:v22 infoFrame:a9];
    }

    [(ProcessingEngine *)self createLUTFromDMConfig:v23 DM:v15 TCControl:v22 HDRControl:a5 LLDoVi:1];
    v25 = fmin(a4->hdrConstraintStrengthValue + a4->hdrConstraintStrengthValue, 1.0);
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    *&v25 = v25;
  }

  [(ProcessingEngine *)self mixLUTFromTCControl:a4 TCControlConstr:v22 withFactor:v25];
  [(ProcessingEngine *)self updateLUTFromDMConfig:a6 TCControl:a4 HDRControl:a5];
  free(v22);
  free(v23);
}

- (void)printArray:(__sFILE *)a3 Prefix:(const char *)a4 Array:(void *)a5 Size:(unint64_t)a6 NumberPerLine:(unint64_t)a7 Format:(int)a8
{
  v35 = *MEMORY[0x277D85DE8];
  bzero(v34, 0x2000uLL);
  if (!a3)
  {
    if (!a6)
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
      if (v18 != 1 && !(v16 % a7))
      {
        v17 += snprintf(&v34[v17], 0x2000 - v17, "\n");
      }

      if (a8 <= 1)
      {
        if (!a8)
        {
          v24 = *(a5 + v16);
          v23 = snprintf(&v34[v17], 0x2000 - v17, "%s%.10f%s");
          goto LABEL_42;
        }

        if (a8 != 1)
        {
          goto LABEL_40;
        }

        v21 = &v34[v17];
        v22 = 0x2000 - v17;
        v31 = *(a5 + v16);
      }

      else
      {
        if (a8 == 2)
        {
          v19 = &v34[v17];
          v20 = 0x2000 - v17;
          v32 = *(a5 + v16);
          goto LABEL_41;
        }

        if (a8 != 3)
        {
          if (a8 == 4)
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
      if (v16 >= a6)
      {
        goto LABEL_43;
      }
    }
  }

  if (a6)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      if (v14 != 1 && !(v13 % a7))
      {
        fputc(10, a3);
      }

      if (a8 <= 1)
      {
        if (!a8)
        {
          v15 = *(a5 + v13);
          fprintf(a3, "%s%.10f%s");
          goto LABEL_21;
        }

        if (a8 != 1)
        {
          goto LABEL_19;
        }

        v27 = *(a5 + v13);
      }

      else
      {
        if (a8 == 2)
        {
          v28 = *(a5 + v13);
          goto LABEL_20;
        }

        if (a8 != 3)
        {
          if (a8 == 4)
          {
            v26 = *(a5 + v13);
          }

          else
          {
LABEL_19:
            *(a5 + v13);
          }

LABEL_20:
          fprintf(a3, "%s%d%s");
          goto LABEL_21;
        }

        v29 = *(a5 + v13);
      }

      fprintf(a3, "%s%u%s");
LABEL_21:
      v13 = v14++;
    }

    while (v13 < a6);
  }

LABEL_44:
  v25 = *MEMORY[0x277D85DE8];
}

@end