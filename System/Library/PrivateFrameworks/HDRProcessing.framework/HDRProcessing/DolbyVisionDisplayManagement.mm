@interface DolbyVisionDisplayManagement
- (DolbyVisionDisplayManagement)initWithDevice:(id)a3;
- (DolbyVisionDisplayManagement)initWithTmLutSize:(int)a3;
- (float)dovi84_getScalingFactorForPT:(float)a3 tableSize:(unint64_t)a4 config:(id *)a5 tmParam:(const _DoViTMParam *)a6 edrAdaptationParam:(const _EdrAdaptationParam *)a7 ambAdaptationParam:(const _AmbAdaptationParam *)a8 hlgOOTFCombined:(BOOL)a9;
- (id)getComputePipeLineStateForShader:(id)a3;
- (id)initTmEngine:(int)a3 device:(id)a4;
- (void)dovi84_setupTmParams:(id *)a3 hdrCtrl:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 applyPostRGBtoRGBMatrixScaler:(BOOL *)a6 sMinPq:(float)a7 sMaxPq:(float)a8 tMinPq:(float)a9 tMaxPq:(float)a10 nominalPQ:(float)a11 targetingDoviLLOrSDR:(BOOL)a12 dm40:(id)a13;
- (void)dovi_setSat2FactorTable:(float *)a3 tableSize:(unint64_t)a4 config:(id *)a5 llDovi:(BOOL)a6 applyDoVi84SatAdjustment:(BOOL)a7;
- (void)dovi_setScalingFactorTable:(float *)a3 lutInput:(const float *)a4 tableSize:(unint64_t)a5 config:(id *)a6 hdrCtrl:(id *)a7 tmParam:(const _DoViTMParam *)a8 edrAdaptationParam:(const _EdrAdaptationParam *)a9 ambAdaptationParam:(const _AmbAdaptationParam *)a10 hlgOOTFCombined:(BOOL)a11 hlgOOTFOnly:(BOOL)a12 isDoVi84:(BOOL)a13 tcCtrl:(ToneCurve_Control *)a14;
- (void)encodeToCommandBuffer:(id)a3 Input:(__IOSurface *)a4 Output:(__IOSurface *)a5 MetaData:(id *)a6;
- (void)encodeToCommandBuffer:(id)a3 Input:(__IOSurface *)a4 Output:(__IOSurface *)a5 MetaData:(id *)a6 tcControl:(ToneCurve_Control *)a7 hdrControl:(id *)a8;
- (void)getSat2Parameters:(id *)a3;
- (void)getToneCurves:(id *)a3 tcCtrl:(ToneCurve_Control *)a4 tmData:(_TMData *)a5;
- (void)getToneCurvesDM31:(id *)a3;
- (void)hlg_setupTmParams:(id *)a3 hdrCtrl:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 dm40:(id)a6 applyPostRGBtoRGBMatrixScaler:(BOOL *)a7 pHistBasedToneMapping:(id)a8;
- (void)releaseResources;
- (void)setConvertConfig:(id *)a3 tcCtrl:(ToneCurve_Control *)a4 hdrCtrl:(id *)a5 auxData:(_AuxData *)a6 tmData:(_TMData *)a7;
- (void)setDisplayManagementConfigFromDictionary:(id *)a3 hdrCtrl:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 infoFrame:(id *)a6;
- (void)setDisplayManagementConfigFromMetaData:(id *)a3 config:(id *)a4 hdrCtrl:(id *)a5 tcCtrl:(ToneCurve_Control *)a6;
- (void)setDisplayManagementToneMappingConfigFromDictionary:(id *)a3 hdrCtrl:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 infoFrame:(id *)a6;
- (void)setDisplayManagementToneMappingConfigFromMetaData:(id *)a3 config:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 hdrCtrl:(id *)a6 auxData:(_AuxData *)a7 dpcParam:(_DpcParam *)a8;
- (void)setupDoViDmVersion:(id *)a3 tmData:(_TMData *)a4 hdrCtrl:(id *)a5 tcCtrl:(ToneCurve_Control *)a6;
- (void)setupMetal;
- (void)setupTexturesWithInput:(__IOSurface *)a3 Output:(__IOSurface *)a4;
@end

@implementation DolbyVisionDisplayManagement

- (float)dovi84_getScalingFactorForPT:(float)a3 tableSize:(unint64_t)a4 config:(id *)a5 tmParam:(const _DoViTMParam *)a6 edrAdaptationParam:(const _EdrAdaptationParam *)a7 ambAdaptationParam:(const _AmbAdaptationParam *)a8 hlgOOTFCombined:(BOOL)a9
{
  SDRTmax_nits = a6->SDRTmax_nits;
  OOTFMixingFactor = a6->OOTFMixingFactor;
  tm_Smax_C = a6->tm_Smax_C;
  tm_Smin_C = a6->tm_Smin_C;
  v19 = tm_Smax_C == tm_Smin_C;
  v20 = fmax(((a3 - tm_Smin_C) / (tm_Smax_C - tm_Smin_C)), 0.0);
  *&v20 = v20;
  *&v20 = fminf(*&v20, 1.0);
  if (v19)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = *&v20;
  }

  v22 = a3;
  if (a9)
  {
    v23 = -(a3 + -0.0000014619);
    if (a3 >= 0.00000073096)
    {
      v23 = a3;
    }

    v24 = flt_2508CD850[a3 < 0.00000073096];
    v25 = powf(v23, 0.012683);
    v26 = fmax(((v25 + -0.83594) / ((v25 * -18.688) + 18.852)), 0.0);
    v27 = powf(v26, 6.2774);
    v28 = a6->Smin_nits + (powf((v24 * v27) / 1000.0, a5->var67 + 1.0) * (1000.0 - a6->Smin_nits));
    if (v28 >= 0.0)
    {
      v30 = powf(v28 * 0.0001, 0.1593);
      v22 = powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v29 = powf(v28 * -0.0001, 0.1593);
      v22 = 0.0000014619 - powf(((v29 * 18.852) + 0.83594) / ((v29 * 18.688) + 1.0), 78.844);
    }
  }

  v31 = v22;
  if (a6->on)
  {
    if (LODWORD(a5[1].var46) == 4)
    {
      *&v20 = v22;
      [(DolbyVisionDM4 *)self->_dm40 toneMapI:a4, v20];
      LODWORD(v33) = v32;
      *&v34 = v22;
      [(DolbyVisionDM4 *)self->_dm40 satMapI:v34 Adm:v33];
      goto LABEL_33;
    }

    v35 = powf(v22, a5->var36);
    v36 = fmax(((a5->var37 + (a5->var38 * v35)) / ((a5->var39 * v35) + 1.0)), 0.0);
    v37 = powf(v36, 0.33333);
    if (BYTE1(a5[1].var49) == 1)
    {
      v38 = applyLinearStretchInPQ(v37, a6->linearScaler, a6->linearOffset);
    }

    else
    {
      v39 = v37 < 0.00000073096;
      if (v37 < 0.00000073096)
      {
        v37 = -(v37 + -0.0000014619);
      }

      v40 = flt_2508CD850[v39];
      v41 = powf(v37, 0.012683);
      v42 = fmax(((v41 + -0.83594) / ((v41 * -18.688) + 18.852)), 0.0);
      v43 = (v40 * powf(v42, 6.2774)) * a6->linearScaler;
      if (v43 < 0.0)
      {
        v44 = powf(v43 * -0.0001, 0.1593);
        v45 = 0.0000014619 - powf(((v44 * 18.852) + 0.83594) / ((v44 * 18.688) + 1.0), 78.844);
        goto LABEL_21;
      }

      v46 = powf(v43 * 0.0001, 0.1593);
      v38 = powf(((v46 * 18.852) + 0.83594) / ((v46 * 18.688) + 1.0), 78.844);
    }

    v45 = v38;
LABEL_21:
    if (hasTrim(&a5->var0))
    {
      v47 = fmax((a5->var55.gcpcGamma + (v45 * *&a5->var55.on)), 0.0);
      v31 = powf(v47, *&a5->var55.gcpcStage);
    }

    else
    {
      rangeMax = a5->var55.rangeMax;
      v48 = -(a3 + -0.0000014619);
      if (a3 >= 0.00000073096)
      {
        v48 = a3;
      }

      v49 = flt_2508CD850[a3 < 0.00000073096];
      v50 = powf(v48, 0.012683);
      v51 = fmax(((v50 + -0.83594) / ((v50 * -18.688) + 18.852)), 0.0);
      v52 = (v49 * powf(v51, 6.2774)) / 1000.0;
      v53 = (SDRTmax_nits / 1000.0);
      if (SDRTmax_nits <= 400.0 || SDRTmax_nits >= 2000.0)
      {
        v55 = log2(v53);
        v54 = pow(1.11099994, v55) * 1.20000005 + -1.0;
      }

      else
      {
        v54 = log10(v53) * 0.419999987 + 1.20000005 + -1.0;
      }

      v56 = v54;
      v57 = rangeMax * powf(v52, v56 + 1.0);
      if (v57 >= 0.0)
      {
        v60 = powf(v57 * 0.0001, 0.1593);
        v59 = powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v58 = powf(v57 * -0.0001, 0.1593);
        v59 = 0.0000014619 - powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
      }

      v31 = ((1.0 - OOTFMixingFactor) * v59) + (OOTFMixingFactor * v45);
    }
  }

LABEL_33:
  v61 = applyEdrAdaptationCurveS(a7, v31);
  v62 = applyAmbAdaptationCurveS_C(a8, v61);
  if (SLODWORD(a5[1].var46) <= 3 && a5->var55.gcpcGamma > 0.0)
  {
    v63 = v62 / v22;
    if (v22 == 0.0)
    {
      v63 = 1.0;
    }

    v64 = fmin(v63, 2.0);
    v62 = v22 * v64;
  }

  v65 = v62 / a3;
  if (a3 == 0.0)
  {
    v66 = 1.0;
  }

  else
  {
    v66 = v65;
  }

  if (BYTE1(a5[1].var42) == 1 && LODWORD(a5[1].var44) == 1)
  {
    v67 = *&a5[1].var45;
    v68 = v66 * a3;
    if ((v66 * a3) < 0.00000073096)
    {
      v68 = -(v68 + -0.0000014619);
    }

    v69 = flt_2508CD850[(v66 * a3) < 0.00000073096];
    v70 = powf(v68, 0.012683);
    v71 = fmax(((v70 + -0.83594) / ((v70 * -18.688) + 18.852)), 0.0);
    v72 = powf(v71, 6.2774);
    v73 = pow(((v69 * v72) / v67), 1.0 / a5[1].var43);
    v74 = v67 * v73;
    if (v74 >= 0.0)
    {
      v77 = powf(v74 * 0.0001, 0.1593);
      v76 = powf(((v77 * 18.852) + 0.83594) / ((v77 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v75 = powf(v74 * -0.0001, 0.1593);
      v76 = 0.0000014619 - powf(((v75 * 18.852) + 0.83594) / ((v75 * 18.688) + 1.0), 78.844);
    }

    v78 = v76 / a3;
    if (a3 == 0.0)
    {
      v66 = 1.0;
    }

    else
    {
      v66 = v78;
    }
  }

  return (v21 * (1.0 - (a3 - (v66 * a3)))) + ((1.0 - v21) * powf(v66, 0.7));
}

- (void)dovi_setScalingFactorTable:(float *)a3 lutInput:(const float *)a4 tableSize:(unint64_t)a5 config:(id *)a6 hdrCtrl:(id *)a7 tmParam:(const _DoViTMParam *)a8 edrAdaptationParam:(const _EdrAdaptationParam *)a9 ambAdaptationParam:(const _AmbAdaptationParam *)a10 hlgOOTFCombined:(BOOL)a11 hlgOOTFOnly:(BOOL)a12 isDoVi84:(BOOL)a13 tcCtrl:(ToneCurve_Control *)a14
{
  if (!a13)
  {
    dm40 = self->_dm40;
    v27 = a3;
    v28 = a5;
    v29 = a6;
    v30 = a8;
LABEL_9:
    dovi_setScalingFactorTableS_C(v27, a4, v28, v29, v30, a9, a10, dm40);
    return;
  }

  v20 = a11;
  if (BYTE1(a6[1].var51) == 1 && (!a7->var30 || a7->var2))
  {
    v21 = self->_dm40;
    if (a11)
    {
      v33 = self->_dm40;
      v32 = 0;
      v22 = a3;
      v23 = a5;
      v24 = a6;
      v25 = a8;
      v20 = 1;
LABEL_7:
      dovi84_setScalingFactorTableS_L(v22, a4, v23, v24, v25, a9, a10, v20, v32, v33);
      return;
    }

    v27 = a3;
    v28 = a5;
    v29 = a6;
    v30 = a8;
    dm40 = v21;
    goto LABEL_9;
  }

  v31 = self->_dm40;
  if (a12)
  {
    v33 = self->_dm40;
    v32 = 1;
    v22 = a3;
    v23 = a5;
    v24 = a6;
    v25 = a8;
    goto LABEL_7;
  }

  dovi84_setScalingFactorTableS_C(a3, a4, a5, a6, a8, a9, a10, a11, self->_dm40, a14);
}

- (void)dovi_setSat2FactorTable:(float *)a3 tableSize:(unint64_t)a4 config:(id *)a5 llDovi:(BOOL)a6 applyDoVi84SatAdjustment:(BOOL)a7
{
  v28 = 0;
  if (a4)
  {
    v7 = a7;
    v8 = a6;
    v13 = a4;
    v14 = a4;
    v15 = 1;
    v16 = 1;
    do
    {
      v17 = v16 - 1;
      if (LODWORD(a5[1].var46) == 4)
      {
        v18 = (v17 + v17) / v13;
        v19 = v18;
        *&v18 = v19;
        [(DolbyVisionDM4 *)self->_dm40 toneMapS:v18];
        a3[v15 - 1] = v20;
        *&v21 = v19;
        [(DolbyVisionDM4 *)self->_dm40 satMapS:v21];
      }

      else
      {
        if (v8)
        {
          a3[v15 - 1] = 1.0 - ((*&a5->var56 * v17) / v14);
          v23 = (*&a5->var56 * v17) / v14;
          if (v7)
          {
            v24 = v23 + 1.0;
          }

          else
          {
            v24 = 1.0 - v23;
          }

          a3[v15] = v24;
          goto LABEL_16;
        }

        getSat2FactorForI(v16 - 1, a4, &a5->var0, &v28);
        a3[v15 - 1] = v25;
        v26 = (v17 + v17) / v13;
        if (v28)
        {
          v22 = v26 / -6.0 + 1.04;
        }

        else
        {
          v22 = 1.0 - (*&a5->var56 * v26);
        }

        if (v22 < 0.6)
        {
          v22 = 0.6;
        }
      }

      a3[v15] = v22;
LABEL_16:
      v27 = v16++;
      v15 += 2;
    }

    while (v27 < a4);
  }
}

- (void)hlg_setupTmParams:(id *)a3 hdrCtrl:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 dm40:(id)a6 applyPostRGBtoRGBMatrixScaler:(BOOL *)a7 pHistBasedToneMapping:(id)a8
{
  v205 = a6;
  v204 = a8;
  targetColorPrimaries = a5->targetColorPrimaries;
  v16 = targetColorPrimaries != *MEMORY[0x277CC4C20] && targetColorPrimaries == *MEMORY[0x277CC4C18];
  targetDisplayContrastRatio = a5->auxData.targetDisplayContrastRatio;
  targetMaxLinear = a5->targetMaxLinear;
  v19 = a5->targetMaxLinear * targetDisplayContrastRatio;
  var21 = a4->var21;
  if (var21 >= 0x3E8)
  {
    v21 = 1000;
  }

  else
  {
    v21 = a4->var21;
  }

  var12 = 1000.0;
  if (var21)
  {
    var12 = v21;
  }

  if (BYTE1(a3[1].var49) == 1)
  {
    v23 = targetMaxLinear;
    v24 = fminf(*&a3->var66, 4000.0);
  }

  else
  {
    v24 = fminf(*&a3->var66, 4000.0);
    v23 = v24;
  }

  var15 = a4->var15;
  v26 = fmax(v19, 0.0);
  v27 = 0.0;
  if (targetDisplayContrastRatio > 0.0001 && a5->tmData.gradingAmbientEnvironmentType == 1)
  {
    v27 = targetMaxLinear * 0.0000249999994;
  }

  v28 = v26;
  hlgTmMode = a5->tmData.hlgTmMode;
  v196 = *MEMORY[0x277CC4C20];
  v197 = a5->targetColorPrimaries;
  v195 = *MEMORY[0x277CC4C18];
  v194 = v16;
  if (hlgTmMode <= 3)
  {
    switch(hlgTmMode)
    {
      case 1:
        v30 = 0;
        a5->tmData.Smin_nits = 0.0;
        goto LABEL_37;
      case 2:
        v30 = 0;
        a5->tmData.Smin_nits = 0.0;
        var12 = v23;
        goto LABEL_37;
      case 3:
        v30 = 0;
        a5->tmData.Smin_nits = 0.0;
        var12 = 1000.0;
        goto LABEL_37;
    }

    goto LABEL_30;
  }

  if (hlgTmMode > 5)
  {
    if (hlgTmMode == 6)
    {
      v30 = 0;
      a5->tmData.Smin_nits = 0.0;
      v28 = 0.0;
      var12 = 1000.0;
      goto LABEL_35;
    }

    if (hlgTmMode == 7)
    {
      v30 = 0;
      var12 = a4->var12;
      a5->tmData.Smin_nits = 0.0;
LABEL_35:
      v23 = var12;
      goto LABEL_37;
    }

LABEL_30:
    a5->tmData.Smin_nits = 0.0;
    v30 = 1;
    v28 = 0.0;
    var12 = 10000.0;
    goto LABEL_35;
  }

  if (hlgTmMode != 4)
  {
    v30 = 0;
    a5->tmData.Smin_nits = 0.0;
    v31 = 12;
    goto LABEL_38;
  }

  v30 = 0;
  a5->tmData.Smin_nits = 0.0;
  if (v23 < var12)
  {
    var12 = v23;
  }

LABEL_37:
  v31 = var15;
LABEL_38:
  v198 = var15;
  a5->tmData.Smax_nits = var12;
  a5->tmData.Tmin_nits = v28;
  a5->tmData.Tmax_nits = v23;
  *a7 = v30;
  a5->tmData.tm_Tmin_nits = 0.0;
  a5->tmData.tm_Tmax_nits = v24;
  a5->tmData.edrAdaptationGain = 0.9;
  diffuseInNits = a5->diffuseInNits;
  a5->tmData.edrFactor = 1.0 / a5->maxEDRValue;
  a5->tmData.diffuseInNits = diffuseInNits;
  a5->tmData.Cmin_nits = 0.0;
  a5->tmData.Cmax_nits = var12;
  a5->tmData.Cend_nits = var12;
  a5->tmData.Capl_nits = 10.0;
  AmbientInNits = a5->AmbientInNits;
  if (AmbientInNits >= 0.0)
  {
    v36 = powf(AmbientInNits * 0.0001, 0.1593);
    v35 = powf(((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v34 = powf(AmbientInNits * -0.0001, 0.1593);
    v35 = 0.0000014619 - powf(((v34 * 18.852) + 0.83594) / ((v34 * 18.688) + 1.0), 78.844);
  }

  a5->tmData.ambientPQ = v35;
  v37 = powf(diffuseInNits / 10000.0, 0.1593);
  v38 = (v37 * 18.8515625 + 0.8359375) / (v37 * 18.6875 + 1.0);
  v39 = powf(v38, 78.844);
  v40 = 1.0;
  if (v39 <= 1.0)
  {
    v40 = v39;
  }

  v41 = v39 < 0.0;
  v42 = 0.0;
  if (!v41)
  {
    v42 = v40;
  }

  a5->tmData.nominalPQ = v42;
  v43 = v19;
  a5->tmData.disp_Tmin_nits = v43;
  gradingAmbientEnvironmentType = a5->tmData.gradingAmbientEnvironmentType;
  if (gradingAmbientEnvironmentType != 1)
  {
    if (overrideEdrAdaptationMode == -1 && GetConfig() && (v48 = GetConfig(), *HDRConfig::GetConfigEntryValue(v48, 0xE2u, 0) == 1))
    {
      if (GetConfig())
      {
        Config = GetConfig();
        v45 = *HDRConfig::GetConfigEntryValue(Config, 0xE4u, 0);
      }

      else
      {
        v45 = 0;
      }

      if (GetConfig())
      {
        v187 = GetConfig();
        ConfigEntryValue = HDRConfig::GetConfigEntryValue(v187, 0xE6u, 0);
        v46 = 8;
        if (*ConfigEntryValue != 1)
        {
          goto LABEL_60;
        }

        goto LABEL_233;
      }
    }

    else
    {
      v45 = 13;
    }

    v46 = 8;
    goto LABEL_60;
  }

  if (GetConfig())
  {
    v47 = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(v47, 0x91u, 0) == 1)
    {
      v45 = -1;
    }

    else
    {
      v45 = 15;
    }
  }

  else
  {
    v45 = 15;
  }

  if (overrideEdrAdaptationMode != -1 || !GetConfig() || (v61 = GetConfig(), *HDRConfig::GetConfigEntryValue(v61, 0xE3u, 0) != 1) || (!GetConfig() ? (v45 = 0) : (v62 = GetConfig(), v45 = *HDRConfig::GetConfigEntryValue(v62, 0xE4u, 0)), !GetConfig()))
  {
    v46 = 12;
    goto LABEL_60;
  }

  v189 = GetConfig();
  v190 = HDRConfig::GetConfigEntryValue(v189, 0xE6u, 0);
  v46 = 12;
  if (*v190)
  {
LABEL_233:
    a5->auxData.ambNitsCap = 1591.6;
  }

LABEL_60:
  setupHistogramBasedToneMapping(a3, a5, &a5->tmData, v204, v46, 0, gradingAmbientEnvironmentType != 1, v45, 5);
  ambNitsCap = a5->auxData.ambNitsCap;
  v51 = a5->AmbientInNits + -5.093;
  if (v51 <= ambNitsCap)
  {
    ambNitsCap = a5->AmbientInNits + -5.093;
  }

  v41 = v51 < 0.0;
  v52 = 0.0;
  if (!v41)
  {
    v52 = ambNitsCap;
  }

  a5->tmData.ambReflected_nits = a5->auxData.targetDisplayReflectionRatio * (a5->auxData.ambAdaptationRatio * v52);
  Cmin_nits = *&overrideCminNits;
  if (*&overrideCminNits < 0.0)
  {
    Cmin_nits = a5->tmData.Cmin_nits;
  }

  a5->tmData.Cmin_nits = Cmin_nits;
  Cmax_nits = *&overrideCmaxNits;
  if (*&overrideCmaxNits < 0.0)
  {
    Cmax_nits = a5->tmData.Cmax_nits;
  }

  a5->tmData.Cmax_nits = Cmax_nits;
  Capl_nits = *&overrideCmidNits;
  if (*&overrideCmidNits < 0.0)
  {
    Capl_nits = a5->tmData.Capl_nits;
  }

  a5->tmData.Capl_nits = Capl_nits;
  a5->tmData.adaptiveSdiv_nits = calculateAdaptiveSdiv(Capl_nits, a5->tmData.Sdiv_nits);
  v56 = a5->tmData.hdr10TmMode - 7;
  if (v56 < 6 && ((0x33u >> v56) & 1) != 0)
  {
    a5->tmData.doviTmMode = dword_2508D0848[v56];
  }

  var10 = a4->var10;
  if (a4->var2 != 1)
  {
    if (var10 >= 3)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (var10 == 1)
  {
LABEL_77:
    *a7 = 1;
  }

LABEL_78:
  if (LOBYTE(a3[1].var53) != 1)
  {
    a5->hlgTmParam.sceneLuxAdaptationParam.sceneLuxAdaptationMode = 0;
    goto LABEL_120;
  }

  hlg_generateSceneLuxAdaptationDataS(a5, &a5->tmData.hdr10TmMode, &a5->hlgTmParam.sceneLuxAdaptationParam);
  calculateSceneLuxAdaptationParamS(&a5->hlgTmParam.sceneLuxAdaptationParam, self->_dmSceneLuxB2D_IPTModel);
  a5->hlgTmParam.sceneLuxAdaptationParam.mixFactor = calcSceneLuxAdaptationMixFactor(a5->diffuseInNits);
  if (a5->enableHybridCanonicalRendering)
  {
    if (!GetConfig() || (v58 = GetConfig(), *HDRConfig::GetConfigEntryValue(v58, 0xFEu, 0) >= 0.0))
    {
      if (GetConfig())
      {
        v59 = GetConfig();
        v60 = *HDRConfig::GetConfigEntryValue(v59, 0xFEu, 0);
      }

      else
      {
        v60 = 0.0;
      }

      a5->hlgTmParam.sceneLuxAdaptationParam.mixFactor = v60;
    }
  }

  v63 = a5->tmData.Cmin_nits;
  if (v63 >= 0.0)
  {
    v66 = powf(v63 * 0.0001, 0.1593);
    v65 = powf(((v66 * 18.852) + 0.83594) / ((v66 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v64 = powf(v63 * -0.0001, 0.1593);
    v65 = 0.0000014619 - powf(((v64 * 18.852) + 0.83594) / ((v64 * 18.688) + 1.0), 78.844);
  }

  v199 = applySceneLuxAdaptationS_C(&a5->hlgTmParam.sceneLuxAdaptationParam, v65);
  v67 = a5->tmData.Capl_nits;
  if (v67 >= 0.0)
  {
    v70 = powf(v67 * 0.0001, 0.1593);
    v69 = powf(((v70 * 18.852) + 0.83594) / ((v70 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v68 = powf(v67 * -0.0001, 0.1593);
    v69 = 0.0000014619 - powf(((v68 * 18.852) + 0.83594) / ((v68 * 18.688) + 1.0), 78.844);
  }

  v71 = applySceneLuxAdaptationS_C(&a5->hlgTmParam.sceneLuxAdaptationParam, v69);
  v72 = a5->tmData.Cmax_nits;
  if (v72 >= 0.0)
  {
    v75 = powf(v72 * 0.0001, 0.1593);
    v74 = powf(((v75 * 18.852) + 0.83594) / ((v75 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v73 = powf(v72 * -0.0001, 0.1593);
    v74 = 0.0000014619 - powf(((v73 * 18.852) + 0.83594) / ((v73 * 18.688) + 1.0), 78.844);
  }

  v191 = applySceneLuxAdaptationS_C(&a5->hlgTmParam.sceneLuxAdaptationParam, v74);
  v76 = GetConfig();
  v77 = __PAIR64__(LODWORD(v191), LODWORD(v199));
  if (v76)
  {
    v200 = __PAIR64__(LODWORD(v191), LODWORD(v199));
    v78 = GetConfig();
    v79 = *HDRConfig::GetConfigEntryValue(v78, 0xBDu, 0);
    if (v79)
    {
      *v80.i32 = v79;
      v71 = (v71 * v79) / v79;
      v77 = vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vmul_n_f32(v200, v79))), vdup_lane_s32(v80, 0));
    }

    else
    {
      v77 = v200;
    }
  }

  v201 = v77;
  v81 = vcge_f32(v77, vdup_n_s32(0x354436E8u));
  v82 = vadd_f32(v77, vdup_n_s32(0xB5C436E8));
  v83 = -(v71 + -0.0000014619);
  if (v71 < 0.00000073096)
  {
    v84 = -10000.0;
  }

  else
  {
    v83 = v71;
    v84 = 10000.0;
  }

  v85 = powf(v83, 0.012683);
  v86 = fmax(((v85 + -0.83594) / ((v85 * -18.688) + 18.852)), 0.0);
  a5->tmData.Capl_nits = v84 * powf(v86, 6.2774);
  v87 = vbsl_s8(v81, v201, vneg_f32(v82));
  v192 = *v87.i32;
  v202 = powf(*&v87.i32[1], 0.012683);
  v88.f32[0] = powf(v192, 0.012683);
  v88.f32[1] = v202;
  v89 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v88, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v88))), 0));
  v193 = v89.f32[0];
  v203 = powf(v89.f32[1], 6.2774);
  v90.f32[0] = powf(v193, 6.2774);
  v90.f32[1] = v203;
  *&a5->tmData.Cmin_nits = vmul_f32(vbsl_s8(v81, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000)), v90);
  a5->tmData.edrAdaptationMode = 18;
  v91 = overrideEdrAdaptationMode;
  if (overrideEdrAdaptationMode == -1)
  {
    v92 = a5->tmData.gradingAmbientEnvironmentType;
    if (v92)
    {
LABEL_109:
      if (v92 != 1 || !GetConfig() || (v93 = GetConfig(), *HDRConfig::GetConfigEntryValue(v93, 0xE3u, 0) != 1))
      {
LABEL_117:
        v91 = overrideEdrAdaptationMode;
        goto LABEL_118;
      }

LABEL_115:
      if (GetConfig())
      {
        v95 = GetConfig();
        HDRConfig::GetConfigEntryValue(v95, 0xE4u, 0);
      }

      goto LABEL_117;
    }

    if (GetConfig())
    {
      v94 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v94, 0xE2u, 0) == 1)
      {
        goto LABEL_115;
      }
    }

    v91 = overrideEdrAdaptationMode;
    if (overrideEdrAdaptationMode == -1)
    {
      v92 = a5->tmData.gradingAmbientEnvironmentType;
      goto LABEL_109;
    }
  }

LABEL_118:
  if (v91 <= 0x1B)
  {
    a5->tmData.edrAdaptationMode = v91;
  }

LABEL_120:
  if (a5->enableHybridCanonicalRendering)
  {
    a5->tmData.edrAdaptationMode = 0;
    a5->tmData.ambAdaptationMode = 0;
  }

  if (a5->hdrCanonicalScreenCapture)
  {
    a5->tmData.edrAdaptationMode = 0;
    a5->tmData.ambAdaptationMode = 0;
  }

  a5->tmData.enableRangeAdjustment = a5->tmData.gradingAmbientEnvironmentType != 1;
  a5->tmData.enableRangeAdjustmentAndHighClip = 0;
  hlg_calculateTonemapCurveParamS(&a5->tmData, a3, v205, &a5->hlgTmParam);
  if (a5->tmData.enableAUWDMv20)
  {
    v96 = malloc_type_malloc(0x168uLL, 0x10000405E9D2EE3uLL);
    v97 = malloc_type_malloc(0x63CuLL, 0x10000403E037C05uLL);
    v98 = v97;
    if (v96 && v97)
    {
      memcpy(v96, &a5->tmData, 0x168uLL);
      memcpy(v98, &a5->hlgTmParam, 0x63CuLL);
      if ((a5->tmData.hdr10TmMode - 11) <= 1)
      {
        *v96 = 5;
      }

      v99 = v96[24];
      v96[15] = v99;
      v96[31] = v99;
      hlg_calculateTonemapCurveParamS(v96, a3, v205, v98);
    }
  }

  else
  {
    v96 = 0;
    v98 = 0;
  }

  hlg_generateEdrAdaptationDataS(&a5->tmData, &a5->hlgTmParam, a3, v205, v98, &a5->edrAdaptationData);
  calculateEdrAdaptationParamS(&a5->edrAdaptationData.mode, &a3[1].var38, &a5->edrAdaptationParam);
  hlg_generateAmbAdaptationDataS(&a5->tmData, &a5->hlgTmParam, &a5->edrAdaptationData, &a5->edrAdaptationParam, a3, &a5->ambAdaptationData, v27);
  calculateAmbAdaptationParamS(&a5->ambAdaptationData, &a5->ambAdaptationParam);
  p_var22 = &a3[1].var22;
  p_var10 = &a3[1].var10;
  a5->auxData.tm_Send_nits = a5->hlgTmParam.artisticOOTFParam.tm_Send_nits;
  a3->var67 = a5->hlgTmParam.systemGamma + -1.0;
  if ((BYTE1(a3[1].var49) & 1) == 0)
  {
    *&a3->var66 = a5->tmData.Tmax_nits;
  }

  v103 = *p_var10;
  v102 = *&a3[1].var14;
  v104 = -3;
  v105 = &dword_2508CFA98;
  v106 = *&a3[1].var18;
  do
  {
    v107 = *(v105 - 3);
    v251 = v103;
    *(&v251 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v104 - 1) & 3))) = v107;
    v103 = v251;
    a3[1].var12 = DWORD2(v251);
    *p_var10 = v103;
    v108 = *v105;
    v250 = v102;
    *(&v250 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v104 - 1) & 3))) = v108;
    v102 = v250;
    a3[1].var16 = *(&v250 + 2);
    *&a3[1].var14 = v102;
    v109 = v105[3];
    v249 = v106;
    *(&v249 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v104 - 1) & 3))) = v109;
    v106 = v249;
    a3[1].var20 = *(&v249 + 2);
    *&a3[1].var18 = v106;
    ++v105;
    v110 = __CFADD__(v104++, 1);
  }

  while (!v110);
  switch(v198)
  {
    case 1u:
      if (v31 == 12)
      {
        v131 = -3;
        v132 = &dword_2508CFABC;
        do
        {
          v133 = *(v132 - 3);
          v233 = v103;
          *(&v233 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v131 - 1) & 3))) = v133;
          v103 = v233;
          a3[1].var12 = DWORD2(v233);
          *p_var10 = v103;
          v134 = *v132;
          v232 = v102;
          *(&v232 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v131 - 1) & 3))) = v134;
          v102 = v232;
          a3[1].var16 = *(&v232 + 2);
          *&a3[1].var14 = v102;
          v135 = v132[3];
          v231 = v106;
          *(&v231 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v131 - 1) & 3))) = v135;
          v106 = v231;
          a3[1].var20 = *(&v231 + 2);
          *&a3[1].var18 = v106;
          ++v132;
          v110 = __CFADD__(v131++, 1);
        }

        while (!v110);
      }

      else if (v31 == 9)
      {
        v121 = -3;
        v122 = &dword_2508CFAE0;
        do
        {
          v123 = *(v122 - 3);
          v236 = v103;
          *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v121 - 1) & 3))) = v123;
          v103 = v236;
          a3[1].var12 = DWORD2(v236);
          *p_var10 = v103;
          v124 = *v122;
          v235 = v102;
          *(&v235 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v121 - 1) & 3))) = v124;
          v102 = v235;
          a3[1].var16 = *(&v235 + 2);
          *&a3[1].var14 = v102;
          v125 = v122[3];
          v234 = v106;
          *(&v234 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v121 - 1) & 3))) = v125;
          v106 = v234;
          a3[1].var20 = *(&v234 + 2);
          *&a3[1].var18 = v106;
          ++v122;
          v110 = __CFADD__(v121++, 1);
        }

        while (!v110);
      }

      break;
    case 9u:
      if (v31 == 1)
      {
        v126 = -3;
        v127 = &dword_2508CFB4C;
        do
        {
          v128 = *(v127 - 3);
          v245 = v103;
          *(&v245 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v126 - 1) & 3))) = v128;
          v103 = v245;
          a3[1].var12 = DWORD2(v245);
          *p_var10 = v103;
          v129 = *v127;
          v244 = v102;
          *(&v244 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v126 - 1) & 3))) = v129;
          v102 = v244;
          a3[1].var16 = *(&v244 + 2);
          *&a3[1].var14 = v102;
          v130 = v127[3];
          v243 = v106;
          *(&v243 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v126 - 1) & 3))) = v130;
          v106 = v243;
          a3[1].var20 = *(&v243 + 2);
          *&a3[1].var18 = v106;
          ++v127;
          v110 = __CFADD__(v126++, 1);
        }

        while (!v110);
      }

      else if (v31 == 12)
      {
        v116 = -3;
        v117 = &dword_2508CFB70;
        do
        {
          v118 = *(v117 - 3);
          v248 = v103;
          *(&v248 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v116 - 1) & 3))) = v118;
          v103 = v248;
          a3[1].var12 = DWORD2(v248);
          *p_var10 = v103;
          v119 = *v117;
          v247 = v102;
          *(&v247 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v116 - 1) & 3))) = v119;
          v102 = v247;
          a3[1].var16 = *(&v247 + 2);
          *&a3[1].var14 = v102;
          v120 = v117[3];
          v246 = v106;
          *(&v246 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v116 - 1) & 3))) = v120;
          v106 = v246;
          a3[1].var20 = *(&v246 + 2);
          *&a3[1].var18 = v106;
          ++v117;
          v110 = __CFADD__(v116++, 1);
        }

        while (!v110);
      }

      break;
    case 0xCu:
      if (v31 == 1)
      {
        v136 = -3;
        v137 = &dword_2508CFB04;
        do
        {
          v138 = *(v137 - 3);
          v239 = v103;
          *(&v239 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v136 - 1) & 3))) = v138;
          v103 = v239;
          a3[1].var12 = DWORD2(v239);
          *p_var10 = v103;
          v139 = *v137;
          v238 = v102;
          *(&v238 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v136 - 1) & 3))) = v139;
          v102 = v238;
          a3[1].var16 = *(&v238 + 2);
          *&a3[1].var14 = v102;
          v140 = v137[3];
          v237 = v106;
          *(&v237 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v136 - 1) & 3))) = v140;
          v106 = v237;
          a3[1].var20 = *(&v237 + 2);
          *&a3[1].var18 = v106;
          ++v137;
          v110 = __CFADD__(v136++, 1);
        }

        while (!v110);
      }

      else if (v31 == 9)
      {
        v111 = -3;
        v112 = &dword_2508CFB28;
        do
        {
          v113 = *(v112 - 3);
          v242 = v103;
          *(&v242 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v111 - 1) & 3))) = v113;
          v103 = v242;
          a3[1].var12 = DWORD2(v242);
          *p_var10 = v103;
          v114 = *v112;
          v241 = v102;
          *(&v241 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v111 - 1) & 3))) = v114;
          v102 = v241;
          a3[1].var16 = *(&v241 + 2);
          *&a3[1].var14 = v102;
          v115 = v112[3];
          v240 = v106;
          *(&v240 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v111 - 1) & 3))) = v115;
          v106 = v240;
          a3[1].var20 = *(&v240 + 2);
          *&a3[1].var18 = v106;
          ++v112;
          v110 = __CFADD__(v111++, 1);
        }

        while (!v110);
      }

      break;
  }

  v141 = 0;
  v142 = *p_var22;
  do
  {
    v230 = v142;
    *(&v230 & 0xFFFFFFFFFFFFFFF3 | (4 * (v141 & 3))) = 1051372203;
    v142 = v230;
    ++v141;
  }

  while (v141 != 3);
  a3[1].var24 = *(&v230 + 2);
  *p_var22 = v142;
  switch(v31)
  {
    case 1:
      for (i = 0; i != 3; ++i)
      {
        v144 = RGB709toHLGY_coeff[i];
        v227 = v142;
        *(&v227 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = v144;
        v142 = v227;
        a3[1].var24 = *(&v227 + 2);
        *p_var22 = v142;
      }

      break;
    case 12:
      for (j = 0; j != 3; ++j)
      {
        v148 = RGBP3toHLGY_coeff[j];
        v228 = v142;
        *(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3))) = v148;
        v142 = v228;
        a3[1].var24 = *(&v228 + 2);
        *p_var22 = v142;
      }

      break;
    case 9:
      for (k = 0; k != 3; ++k)
      {
        v146 = RGB2020toHLGY_coeff[k];
        v229 = v142;
        *(&v229 & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3))) = v146;
        v142 = v229;
        a3[1].var24 = *(&v229 + 2);
        *p_var22 = v142;
      }

      break;
  }

  v150 = *&a3[1].var26;
  v149 = *&a3[1].var30;
  v151 = -3;
  v152 = &dword_2508CFA98;
  v153 = *&a3[1].var34;
  do
  {
    v154 = *(v152 - 3);
    v226 = v150;
    *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v151 - 1) & 3))) = v154;
    v150 = v226;
    a3[1].var28 = *(&v226 + 2);
    *&a3[1].var26 = v150;
    v155 = *v152;
    v225 = v149;
    *(&v225 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v151 - 1) & 3))) = v155;
    v149 = v225;
    a3[1].var32 = *(&v225 + 2);
    *&a3[1].var30 = v149;
    v156 = v152[3];
    v224 = v153;
    *(&v224 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v151 - 1) & 3))) = v156;
    v153 = v224;
    a3[1].var36 = *(&v224 + 2);
    *&a3[1].var34 = v153;
    ++v152;
    v110 = __CFADD__(v151++, 1);
  }

  while (!v110);
  switch(v31)
  {
    case 1:
      if (v197 == v196 || v197 == v195)
      {
        if (v194)
        {
          v167 = -3;
          v168 = &dword_2508CFAE0;
          do
          {
            v169 = *(v168 - 3);
            v208 = v150;
            *(&v208 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v167 - 1) & 3))) = v169;
            v150 = v208;
            a3[1].var28 = *(&v208 + 2);
            *&a3[1].var26 = v150;
            v170 = *v168;
            v207 = v149;
            *(&v207 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v167 - 1) & 3))) = v170;
            v149 = v207;
            a3[1].var32 = *(&v207 + 2);
            *&a3[1].var30 = v149;
            v171 = v168[3];
            v206 = v153;
            *(&v206 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v167 - 1) & 3))) = v171;
            v153 = v206;
            a3[1].var36 = *(&v206 + 2);
            *&a3[1].var34 = v153;
            ++v168;
            v110 = __CFADD__(v167++, 1);
          }

          while (!v110);
        }
      }

      else
      {
        v157 = -3;
        v158 = &dword_2508CFABC;
        do
        {
          v159 = *(v158 - 3);
          v211 = v150;
          *(&v211 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v157 - 1) & 3))) = v159;
          v150 = v211;
          a3[1].var28 = *(&v211 + 2);
          *&a3[1].var26 = v150;
          v160 = *v158;
          v210 = v149;
          *(&v210 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v157 - 1) & 3))) = v160;
          v149 = v210;
          a3[1].var32 = *(&v210 + 2);
          *&a3[1].var30 = v149;
          v161 = v158[3];
          v209 = v153;
          *(&v209 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v157 - 1) & 3))) = v161;
          v153 = v209;
          a3[1].var36 = *(&v209 + 2);
          *&a3[1].var34 = v153;
          ++v158;
          v110 = __CFADD__(v157++, 1);
        }

        while (!v110);
      }

      break;
    case 9:
      if (v197 == v196)
      {
        v182 = -3;
        v183 = &dword_2508CFB4C;
        do
        {
          v184 = *(v183 - 3);
          v223 = v150;
          *(&v223 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v182 - 1) & 3))) = v184;
          v150 = v223;
          a3[1].var28 = *(&v223 + 2);
          *&a3[1].var26 = v150;
          v185 = *v183;
          v222 = v149;
          *(&v222 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v182 - 1) & 3))) = v185;
          v149 = v222;
          a3[1].var32 = *(&v222 + 2);
          *&a3[1].var30 = v149;
          v186 = v183[3];
          v221 = v153;
          *(&v221 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v182 - 1) & 3))) = v186;
          v153 = v221;
          a3[1].var36 = *(&v221 + 2);
          *&a3[1].var34 = v153;
          ++v183;
          v110 = __CFADD__(v182++, 1);
        }

        while (!v110);
      }

      else if (v197 != v195)
      {
        v172 = -3;
        v173 = &dword_2508CFB70;
        do
        {
          v174 = *(v173 - 3);
          v220 = v150;
          *(&v220 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v172 - 1) & 3))) = v174;
          v150 = v220;
          a3[1].var28 = *(&v220 + 2);
          *&a3[1].var26 = v150;
          v175 = *v173;
          v219 = v149;
          *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v172 - 1) & 3))) = v175;
          v149 = v219;
          a3[1].var32 = *(&v219 + 2);
          *&a3[1].var30 = v149;
          v176 = v173[3];
          v218 = v153;
          *(&v218 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v172 - 1) & 3))) = v176;
          v153 = v218;
          a3[1].var36 = *(&v218 + 2);
          *&a3[1].var34 = v153;
          ++v173;
          v110 = __CFADD__(v172++, 1);
        }

        while (!v110);
      }

      break;
    case 12:
      if (v197 == v196)
      {
        v177 = -3;
        v178 = &dword_2508CFB04;
        do
        {
          v179 = *(v178 - 3);
          v217 = v150;
          *(&v217 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v177 - 1) & 3))) = v179;
          v150 = v217;
          a3[1].var28 = *(&v217 + 2);
          *&a3[1].var26 = v150;
          v180 = *v178;
          v216 = v149;
          *(&v216 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v177 - 1) & 3))) = v180;
          v149 = v216;
          a3[1].var32 = *(&v216 + 2);
          *&a3[1].var30 = v149;
          v181 = v178[3];
          v215 = v153;
          *(&v215 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v177 - 1) & 3))) = v181;
          v153 = v215;
          a3[1].var36 = *(&v215 + 2);
          *&a3[1].var34 = v153;
          ++v178;
          v110 = __CFADD__(v177++, 1);
        }

        while (!v110);
      }

      else if (v197 == v195)
      {
        v162 = -3;
        v163 = &dword_2508CFB28;
        do
        {
          v164 = *(v163 - 3);
          v214 = v150;
          *(&v214 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v162 - 1) & 3))) = v164;
          v150 = v214;
          a3[1].var28 = *(&v214 + 2);
          *&a3[1].var26 = v150;
          v165 = *v163;
          v213 = v149;
          *(&v213 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v162 - 1) & 3))) = v165;
          v149 = v213;
          a3[1].var32 = *(&v213 + 2);
          *&a3[1].var30 = v149;
          v166 = v163[3];
          v212 = v153;
          *(&v212 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v162 - 1) & 3))) = v166;
          v153 = v212;
          a3[1].var36 = *(&v212 + 2);
          *&a3[1].var34 = v153;
          ++v163;
          v110 = __CFADD__(v162++, 1);
        }

        while (!v110);
      }

      break;
  }

  if (v96)
  {
    free(v96);
  }

  if (v98)
  {
    free(v98);
  }
}

- (void)dovi84_setupTmParams:(id *)a3 hdrCtrl:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 applyPostRGBtoRGBMatrixScaler:(BOOL *)a6 sMinPq:(float)a7 sMaxPq:(float)a8 tMinPq:(float)a9 tMaxPq:(float)a10 nominalPQ:(float)a11 targetingDoviLLOrSDR:(BOOL)a12 dm40:(id)a13
{
  v13 = a12;
  v106 = a13;
  var10 = a4->var10;
  if (var10 > 7 || ((1 << var10) & 0xB8) == 0)
  {
    if (v13 && LODWORD(a3[1].var46) == 3)
    {
      a5->tmData.doviTmMode = 3;
    }

    a5->tmData.edrAdaptationMode = 0;
    a5->tmData.ambAdaptationMode = 0;
  }

  a5->tmData.edrAdaptationGain = a5->auxData.edrAdaptationGain;
  diffuseInNits = a5->diffuseInNits;
  v20 = 1.0 / a5->maxEDRValue;
  *&a5->tmData.hdr10TmMode = -1;
  a5->tmData.edrFactor = v20;
  a5->tmData.diffuseInNits = diffuseInNits;
  a5->tmData.Smin_nits = 0.0;
  v21 = vcge_f32(__PAIR64__(LODWORD(a9), LODWORD(a8)), vdup_n_s32(0x354436E8u));
  v22 = vbsl_s8(v21, __PAIR64__(LODWORD(a9), LODWORD(a8)), vneg_f32(vadd_f32(__PAIR64__(LODWORD(a9), LODWORD(a8)), vdup_n_s32(0xB5C436E8))));
  v87 = *v22.i32;
  v23 = vbsl_s8(v21, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
  v94 = powf(*&v22.i32[1], 0.012683);
  v24.f32[0] = powf(v87, 0.012683);
  v24.f32[1] = v94;
  v25 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v24, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v24))), 0));
  v88 = v25.f32[0];
  v95 = powf(v25.f32[1], 6.2774);
  v26.f32[0] = powf(v88, 6.2774);
  v26.f32[1] = v95;
  v27 = vmul_f32(v23, v26);
  LODWORD(a5->tmData.Tmin_nits) = v27.i32[1];
  *&a5->tmData.Smax_nits = v27;
  if (BYTE1(a3[1].var49) == 1)
  {
    targetMaxLinear = a5->targetMaxLinear;
    v29 = *&a3->var66;
  }

  else
  {
    v30 = -(a10 + -0.0000014619);
    if (a10 >= 0.00000073096)
    {
      v30 = a10;
    }

    v31 = flt_2508CD850[a10 < 0.00000073096];
    v32 = powf(v30, 0.012683);
    v33 = fmax(((v32 + -0.83594) / ((v32 * -18.688) + 18.852)), 0.0);
    targetMaxLinear = v31 * powf(v33, 6.2774);
    v29 = targetMaxLinear;
  }

  a5->tmData.Tmax_nits = targetMaxLinear;
  a5->tmData.tm_Tmax_nits = v29;
  v34 = *&a5->crush;
  v35 = vcge_f32(v34, vdup_n_s32(0x354436E8u));
  v36 = vbsl_s8(v35, v34, vneg_f32(vadd_f32(v34, vdup_n_s32(0xB5C436E8))));
  v89 = *v36.i32;
  v37 = vbsl_s8(v35, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
  v96 = powf(*&v36.i32[1], 0.012683);
  v38.f32[0] = powf(v89, 0.012683);
  v38.f32[1] = v96;
  v39 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v38, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v38))), 0));
  v90 = v39.f32[0];
  v97 = powf(v39.f32[1], 6.2774);
  v40.f32[0] = powf(v90, 6.2774);
  v40.f32[1] = v97;
  *&a5->tmData.Cmin_nits = vmul_f32(v37, v40);
  a5->tmData.Cend_nits = 10000.0;
  mid = a5->mid;
  if (mid >= 0.00000073096)
  {
    v42 = 10000.0;
  }

  else
  {
    mid = -(mid + -0.0000014619);
    v42 = -10000.0;
  }

  v43 = powf(mid, 0.012683);
  v44 = fmax(((v43 + -0.83594) / ((v43 * -18.688) + 18.852)), 0.0);
  a5->tmData.Capl_nits = v42 * powf(v44, 6.2774);
  AmbientInNits = a5->AmbientInNits;
  if (AmbientInNits >= 0.0)
  {
    v48 = powf(AmbientInNits * 0.0001, 0.1593);
    v47 = powf(((v48 * 18.852) + 0.83594) / ((v48 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v46 = powf(AmbientInNits * -0.0001, 0.1593);
    v47 = 0.0000014619 - powf(((v46 * 18.852) + 0.83594) / ((v46 * 18.688) + 1.0), 78.844);
  }

  a5->tmData.ambientPQ = v47;
  a5->tmData.nominalPQ = a11;
  if (var10 > 7 || ((1 << var10) & 0xB8) == 0 || a5->tmData.gradingAmbientEnvironmentType != 1 || a5->tmData.processingType != 4 || *&a3[1].var54 < 0.0 || !GetConfig() || (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0xB8u, 0) != 1))
  {
    a5->doviTmParam.sceneLuxAdaptationParam.sceneLuxAdaptationMode = 0;
    goto LABEL_27;
  }

  LOBYTE(a3[1].var53) = 1;
  dovi84_generateSceneLuxAdaptationDataS(a5, &a5->doviTmParam.sceneLuxAdaptationParam);
  calculateSceneLuxAdaptationParamS(&a5->doviTmParam.sceneLuxAdaptationParam, self->_dmSceneLuxB2D_IPTModel);
  a5->doviTmParam.sceneLuxAdaptationParam.mixFactor = calcSceneLuxAdaptationMixFactor(a5->diffuseInNits);
  if (a5->enableHybridCanonicalRendering)
  {
    if (!GetConfig() || (v50 = GetConfig(), *HDRConfig::GetConfigEntryValue(v50, 0xFEu, 0) >= 0.0))
    {
      if (GetConfig())
      {
        v51 = GetConfig();
        v52 = *HDRConfig::GetConfigEntryValue(v51, 0xFEu, 0);
      }

      else
      {
        v52 = 0.0;
      }

      a5->doviTmParam.sceneLuxAdaptationParam.mixFactor = v52;
    }
  }

  v101 = applySceneLuxAdaptationS_C(&a5->doviTmParam.sceneLuxAdaptationParam, a5->crush);
  v64 = applySceneLuxAdaptationS_C(&a5->doviTmParam.sceneLuxAdaptationParam, a5->mid);
  v91 = applySceneLuxAdaptationS_C(&a5->doviTmParam.sceneLuxAdaptationParam, a5->clip);
  v65 = GetConfig();
  v66 = __PAIR64__(LODWORD(v91), LODWORD(v101));
  if (!v65)
  {
    goto LABEL_63;
  }

  v102 = __PAIR64__(LODWORD(v91), LODWORD(v101));
  v67 = GetConfig();
  v68 = *HDRConfig::GetConfigEntryValue(v67, 0xBDu, 0);
  if (!v68)
  {
    v66 = v102;
LABEL_63:
    v70 = v64;
    goto LABEL_64;
  }

  *v69.i32 = v68;
  v70 = (v64 * v68) / v68;
  v66 = vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vmul_n_f32(v102, v68))), vdup_lane_s32(v69, 0));
LABEL_64:
  v103 = v66;
  v71 = vcge_f32(v66, vdup_n_s32(0x354436E8u));
  v92 = vadd_f32(v66, vdup_n_s32(0xB5C436E8));
  v72 = -(v70 + -0.0000014619);
  if (v70 < 0.00000073096)
  {
    v73 = -10000.0;
  }

  else
  {
    v72 = v70;
    v73 = 10000.0;
  }

  v74 = powf(v72, 0.012683);
  v75 = fmax(((v74 + -0.83594) / ((v74 * -18.688) + 18.852)), 0.0);
  a5->tmData.Capl_nits = v73 * powf(v75, 6.2774);
  v76 = vbsl_s8(v71, v103, vneg_f32(v92));
  v98 = *v76.i32;
  v104 = powf(*&v76.i32[1], 0.012683);
  v77.f32[0] = powf(v98, 0.012683);
  v77.f32[1] = v104;
  v78 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v77, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v77))), 0));
  v99 = v78.f32[0];
  v105 = powf(v78.f32[1], 6.2774);
  v79.f32[0] = powf(v99, 6.2774);
  v79.f32[1] = v105;
  *&a5->tmData.Cmin_nits = vmul_f32(vbsl_s8(v71, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000)), v79);
  a5->tmData.edrAdaptationMode = 18;
  if (a5->enableHybridCanonicalRendering && a4->var0 == 1 && a4->var17 == 18 && a4->var27 == 1)
  {
    a5->tmData.edrAdaptationMode = 0;
  }

  v80 = overrideEdrAdaptationMode;
  if (overrideEdrAdaptationMode == -1)
  {
    if (a5->tmData.gradingAmbientEnvironmentType != 1)
    {
      goto LABEL_27;
    }

    if (GetConfig())
    {
      v81 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v81, 0xE3u, 0) == 1)
      {
        if (GetConfig())
        {
          v82 = GetConfig();
          v83 = *HDRConfig::GetConfigEntryValue(v82, 0xE4u, 0);
        }

        else
        {
          v83 = 0;
        }

        a5->tmData.edrAdaptationMode = v83;
        if (GetConfig())
        {
          v84 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v84, 0xE6u, 0) == 1)
          {
            a5->auxData.ambNitsCap = 1591.6;
          }
        }
      }
    }

    v80 = overrideEdrAdaptationMode;
  }

  if (v80 <= 0x1B)
  {
    a5->tmData.edrAdaptationMode = v80;
  }

LABEL_27:
  if (a5->tmData.processingType == 4 && !a5->tmData.gradingAmbientEnvironmentType)
  {
    if (GetConfig())
    {
      v62 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v62, 0xE2u, 0) == 1)
      {
        if (GetConfig())
        {
          v63 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v63, 0xE6u, 0) == 1)
          {
            a5->auxData.ambNitsCap = 1591.6;
          }
        }
      }
    }
  }

  ambNitsCap = a5->auxData.ambNitsCap;
  v54 = a5->AmbientInNits + -5.093;
  if (v54 <= ambNitsCap)
  {
    ambNitsCap = a5->AmbientInNits + -5.093;
  }

  v55 = v54 < 0.0;
  v56 = 0.0;
  if (!v55)
  {
    v56 = ambNitsCap;
  }

  a5->tmData.ambReflected_nits = a5->auxData.targetDisplayReflectionRatio * (a5->auxData.ambAdaptationRatio * v56);
  *&a5->tmData.enableRangeAdjustment = 0;
  dovi_calculateTonemapCurveParamS(&a5->tmData, a3, &a5->doviTmParam);
  if (a5->tmData.enableAUWDMv20)
  {
    v57 = malloc_type_malloc(0x168uLL, 0x10000405E9D2EE3uLL);
    v58 = malloc_type_malloc(0x210uLL, 0x1000040BC767FD4uLL);
    v59 = malloc_type_malloc(0x124uLL, 0x1000040F063F7D5uLL);
    v60 = v59;
    if (v57 && v58 && v59)
    {
      memcpy(v58, a3, 0x210uLL);
      memcpy(v57, &a5->tmData, 0x168uLL);
      memcpy(v60, &a5->doviTmParam, 0x124uLL);
      *(v58 + 120) = 3;
      v57[3] = 3;
      *(v58 + 236) = xmmword_2508CF760;
      v61 = v57[24];
      v57[15] = v61;
      v57[31] = v61;
      dovi_calculateTonemapCurveParamS(v57, v58, v60);
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v60 = 0;
  }

  dovi84_generateEdrAdaptationDataS(&a5->tmData, &a5->doviTmParam, a3, v60, v58, &a5->edrAdaptationData, v106);
  calculateEdrAdaptationParamS(&a5->edrAdaptationData.mode, &a3[1].var38, &a5->edrAdaptationParam);
  dovi84_generateAmbAdaptationDataS(&a5->tmData, &a5->doviTmParam, &a5->edrAdaptationData, &a5->edrAdaptationParam, a3, &a5->ambAdaptationData);
  calculateAmbAdaptationParamS(&a5->ambAdaptationData, &a5->ambAdaptationParam);
  a5->auxData.tm_Send_nits = a5->doviTmParam.tm_Send_nits;
  if (v57)
  {
    free(v57);
  }

  if (v60)
  {
    free(v60);
  }

  if (v58)
  {
    free(v58);
  }
}

- (DolbyVisionDisplayManagement)initWithTmLutSize:(int)a3
{
  v13.receiver = self;
  v13.super_class = DolbyVisionDisplayManagement;
  v4 = [(DolbyVisionDisplayManagement *)&v13 init];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [[DolbyVisionDM4 alloc] init:a3];
  dm40 = v4->_dm40;
  v4->_dm40 = v5;

  if (!v4->_dm40)
  {
    goto LABEL_6;
  }

  v7 = objc_alloc_init(HistBasedToneMapping);
  histBasedToneMapping = v4->_histBasedToneMapping;
  v4->_histBasedToneMapping = v7;

  if (!v4->_histBasedToneMapping)
  {
    goto LABEL_6;
  }

  v9 = [[AdaptiveTM alloc] init:v4->_histBasedToneMapping];
  adaptiveTM = v4->_adaptiveTM;
  v4->_adaptiveTM = v9;

  if (v4->_adaptiveTM)
  {
LABEL_5:
    v11 = v4;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (DolbyVisionDisplayManagement)initWithDevice:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = DolbyVisionDisplayManagement;
  v6 = [(DolbyVisionDisplayManagement *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_device, a3);
  [(DolbyVisionDisplayManagement *)v7 setupMetal];
  v8 = [[DolbyVisionDM4 alloc] init:1024];
  dm40 = v7->_dm40;
  v7->_dm40 = v8;

  v10 = objc_alloc_init(HistBasedToneMapping);
  histBasedToneMapping = v7->_histBasedToneMapping;
  v7->_histBasedToneMapping = v10;

  if (IsGpuOnlySystem())
  {
    goto LABEL_6;
  }

  if (GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x1Au, 0) == 1) && (v13 = [[AdaptiveTM alloc] init:v7->_histBasedToneMapping], adaptiveTM = v7->_adaptiveTM, v7->_adaptiveTM = v13, adaptiveTM, !v7->_adaptiveTM))
  {
    v15 = 0;
  }

  else
  {
LABEL_6:
    v15 = v7;
  }

  return v15;
}

- (id)initTmEngine:(int)a3 device:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = DolbyVisionDisplayManagement;
  v8 = [(DolbyVisionDisplayManagement *)&v18 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v8->_device, a4);
  [(DolbyVisionDisplayManagement *)v9 setupMetal];
  v10 = [[DolbyVisionDM4 alloc] init:a3];
  dm40 = v9->_dm40;
  v9->_dm40 = v10;

  if (!v9->_dm40)
  {
    goto LABEL_6;
  }

  v12 = objc_alloc_init(HistBasedToneMapping);
  histBasedToneMapping = v9->_histBasedToneMapping;
  v9->_histBasedToneMapping = v12;

  if (!v9->_histBasedToneMapping)
  {
    goto LABEL_6;
  }

  v14 = [[AdaptiveTM alloc] init:v9->_histBasedToneMapping];
  adaptiveTM = v9->_adaptiveTM;
  v9->_adaptiveTM = v14;

  if (v9->_adaptiveTM)
  {
LABEL_5:
    v16 = v9;
  }

  else
  {
LABEL_6:
    v16 = 0;
  }

  return v16;
}

- (void)releaseResources
{
  dm40 = self->_dm40;
  self->_dm40 = 0;

  histBasedToneMapping = self->_histBasedToneMapping;
  self->_histBasedToneMapping = 0;

  adaptiveTM = self->_adaptiveTM;
  self->_adaptiveTM = 0;

  dmSceneLuxB2D_IPTModel = self->_dmSceneLuxB2D_IPTModel;
  self->_dmSceneLuxB2D_IPTModel = 0;
}

- (id)getComputePipeLineStateForShader:(id)a3
{
  v3 = [a3 getComputePipeLineStateForDevice:self->_device Library:self->_defaultLibrary];

  return v3;
}

- (void)setupMetal
{
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HDRProcessing"];
  v3 = [v9 pathForResource:@"default.metallib" ofType:0];
  device = self->_device;
  if (v3)
  {
    v5 = [(MTLDeviceSPI *)device newLibraryWithFile:v3 error:0];
  }

  else
  {
    v5 = [(MTLDeviceSPI *)device newDefaultLibrary];
  }

  defaultLibrary = self->_defaultLibrary;
  self->_defaultLibrary = v5;

  v7 = [DMShader createShaderWithName:@"display_management"];
  displayManagementKernel = self->_displayManagementKernel;
  self->_displayManagementKernel = v7;
}

- (void)encodeToCommandBuffer:(id)a3 Input:(__IOSurface *)a4 Output:(__IOSurface *)a5 MetaData:(id *)a6
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v7 = logInstanceID;
    }

    else
    {
      v7 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = WORD1(v7);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 5721\n", &v9, 0xCu);
    }

    prevLogInstanceID = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 5721\n", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandBuffer:(id)a3 Input:(__IOSurface *)a4 Output:(__IOSurface *)a5 MetaData:(id *)a6 tcControl:(ToneCurve_Control *)a7 hdrControl:(id *)a8
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = [(MTLDeviceSPI *)self->_device newBufferWithLength:528 options:0];
  config = self->_config;
  self->_config = v15;

  [(DolbyVisionDisplayManagement *)self setDisplayManagementConfigFromMetaData:a6 config:[(MTLBuffer *)self->_config contents] hdrCtrl:a8 tcCtrl:a7];
  [(DolbyVisionDisplayManagement *)self setupTexturesWithInput:a4 Output:a5];
  v17 = [v14 computeCommandEncoder];
  v18 = [(MTLTexture *)self->_outputTexture width];
  v19 = [(MTLTexture *)self->_outputTexture height];
  v20 = [(DolbyVisionDisplayManagement *)self getComputePipeLineStateForShader:self->_displayManagementKernel];
  if (v20)
  {
    [v17 setComputePipelineState:v20];
    [v17 setTexture:self->_inputYTexture atIndex:0];
    [v17 setTexture:self->_inputUVTexture atIndex:1];
    [v17 setTexture:self->_outputTexture atIndex:2];
    [v17 setBuffer:self->_config offset:0 atIndex:0];
    *&buf = (v18 + 15) >> 4;
    *(&buf + 1) = (v19 + 15) >> 4;
    v26 = 1;
    v23 = vdupq_n_s64(0x10uLL);
    v24 = 1;
    [v17 dispatchThreadgroups:&buf threadsPerThreadgroup:&v23];
    [v17 endEncoding];
  }

  else
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v21 = logInstanceID;
      }

      else
      {
        v21 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = WORD1(v21);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 5751\n", &buf, 0xCu);
      }

      prevLogInstanceID = v21;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 5751\n", &buf, 2u);
    }

    [v17 endEncoding];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setupTexturesWithInput:(__IOSurface *)a3 Output:(__IOSurface *)a4
{
  Width = IOSurfaceGetWidth(a3);
  Height = IOSurfaceGetHeight(a3);
  self->_inputProtectionOptions = IOSurfaceGetProtectionOptions();
  self->_outputProtectionOptions = IOSurfaceGetProtectionOptions();
  v22 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:23 width:Width height:Height mipmapped:0];
  v9 = [MTLDeviceSPI newTextureWithDescriptor:"newTextureWithDescriptor:iosurface:plane:" iosurface:? plane:?];
  inputYTexture = self->_inputYTexture;
  self->_inputYTexture = v9;

  WidthOfPlane = IOSurfaceGetWidthOfPlane(a3, 1uLL);
  v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:63 width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(a3 mipmapped:1uLL), 0];
  v13 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:a3 plane:1];
  inputUVTexture = self->_inputUVTexture;
  self->_inputUVTexture = v13;

  PixelFormat = IOSurfaceGetPixelFormat(a4);
  FourCCforType = getFourCCforType(PixelFormat);
  v17 = 115;
  if (FourCCforType == 2021078128)
  {
    v17 = 524;
  }

  if (FourCCforType == 1999843442)
  {
    v18 = 555;
  }

  else
  {
    v18 = v17;
  }

  v19 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v18 width:Width height:Height mipmapped:0];
  setTextureDescriptorOptions(v19, self->_outputProtectionOptions);
  v20 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v19 iosurface:a4 plane:0];
  outputTexture = self->_outputTexture;
  self->_outputTexture = v20;
}

- (void)setConvertConfig:(id *)a3 tcCtrl:(ToneCurve_Control *)a4 hdrCtrl:(id *)a5 auxData:(_AuxData *)a6 tmData:(_TMData *)a7
{
  v88 = *MEMORY[0x277D85DE8];
  p_var10 = &a3[1].var10;
  if ((a5->var18 | 2) != 2)
  {
    v87 = 1065353216;
    v85 = RGBtoRGBIdentity_coeff;
    v86 = unk_2508CFA9C;
    v84 = 1065353216;
    v82 = RGBtoRGBIdentity_coeff;
    v83 = unk_2508CFA9C;
    goto LABEL_23;
  }

  BitDepthFromSurfaceFormat = getBitDepthFromSurfaceFormat(a5->var8);
  if (a5->var14)
  {
    v14 = *&a3->var0;
    LODWORD(v14) = 0;
    v15 = BitDepthFromSurfaceFormat - 6;
  }

  else
  {
    v15 = BitDepthFromSurfaceFormat - 6;
    *&v14 = (16 << (BitDepthFromSurfaceFormat - 6));
    v16 = *&a3->var0;
  }

  *(&v14 + 1) = (128 << v15);
  a3->var2 = DWORD1(v14);
  *&a3->var0 = v14;
  var18 = a5->var18;
  v87 = 1065353216;
  v85 = RGBtoRGBIdentity_coeff;
  v86 = unk_2508CFA9C;
  v84 = 1065353216;
  v82 = RGBtoRGBIdentity_coeff;
  v83 = unk_2508CFA9C;
  if (var18 == 2)
  {
    if (a5->var15 == 9)
    {
      goto LABEL_8;
    }

    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v19 = logInstanceID;
      }

      else
      {
        v19 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v81 = WORD1(v19);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: hdrCtrl->colourPrimaries == kIOSurfaceTagColorPrimaries_ITU_R_2020 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 5868\n", buf, 0xCu);
      }

      prevLogInstanceID = v19;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: hdrCtrl->colourPrimaries == kIOSurfaceTagColorPrimaries_ITU_R_2020 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 5868\n", buf, 2u);
    }

    var15 = a5->var15;
    if (var15 == 1)
    {
      v18 = &LMStoRGB_coeff_709;
      goto LABEL_22;
    }

    if (var15 == 9)
    {
LABEL_8:
      v18 = &LMStoRGB_coeff_2020;
    }

    else
    {
      v18 = &LMStoRGB_coeff_P3;
    }

LABEL_22:
    Matrix3x3_multmatrix(&v85, v18);
  }

LABEL_23:
  RGBtoRGBMatrixForUITargetColorPrimary = getRGBtoRGBMatrixForUITargetColorPrimary(a5, a4);
  Matrix3x3_multmatrix(&v82, RGBtoRGBMatrixForUITargetColorPrimary);
  if (a4->targetColorSpace == 2)
  {
    targetColorPrimaries = a4->targetColorPrimaries;
    if (targetColorPrimaries == *MEMORY[0x277CC4C20])
    {
      v23 = &R709_Rgb2LMS;
    }

    else
    {
      v23 = &P3_Rgb2LMS;
      if (targetColorPrimaries != *MEMORY[0x277CC4C30] && targetColorPrimaries == *MEMORY[0x277CC4C18])
      {
        v23 = &R2020_Rgb2LMS;
      }
    }

    v84 = 1064682340;
    v82 = xmmword_2508D036C;
    v83 = unk_2508D037C;
    Matrix3x3_multmatrix(&v82, v23);
    Matrix3x3_multmatrix(&v82, RGBtoRGBMatrixForUITargetColorPrimary);
  }

  v24 = 0;
  v26 = *p_var10;
  v25 = *(p_var10 + 1);
  v27 = *(p_var10 + 2);
  v28 = (&v85 | 0xC);
  do
  {
    v29 = *(v28 - 3);
    v79 = v26;
    *(&v79 & 0xFFFFFFFFFFFFFFF3 | (4 * (v24 & 3))) = v29;
    v26 = v79;
    v30 = *v28;
    v77 = v25;
    *(&v77 & 0xFFFFFFFFFFFFFFF3 | (4 * (v24 & 3))) = v30;
    v25 = v77;
    v31 = v28[3];
    v78 = v27;
    *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * (v24 & 3))) = v31;
    v27 = v78;
    ++v24;
    ++v28;
  }

  while (v24 != 3);
  v32 = 0;
  *(p_var10 + 2) = DWORD2(v26);
  *p_var10 = v26;
  *(p_var10 + 6) = DWORD2(v25);
  *(p_var10 + 2) = v25;
  *(p_var10 + 10) = DWORD2(v27);
  *(p_var10 + 4) = v27;
  v34 = *(p_var10 + 4);
  v33 = *(p_var10 + 5);
  v35 = (&v82 | 0xC);
  v36 = *(p_var10 + 6);
  do
  {
    v37 = *(v35 - 3);
    v76 = v34;
    *(&v76 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3))) = v37;
    v34 = v76;
    v38 = *v35;
    v74 = v33;
    *(&v74 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3))) = v38;
    v33 = v74;
    v39 = v35[3];
    v75 = v36;
    *(&v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3))) = v39;
    v36 = v75;
    ++v32;
    ++v35;
  }

  while (v32 != 3);
  *(p_var10 + 18) = DWORD2(v34);
  *(p_var10 + 8) = v34;
  *(p_var10 + 22) = DWORD2(v33);
  *(p_var10 + 10) = v33;
  *(p_var10 + 26) = DWORD2(v36);
  *(p_var10 + 12) = v36;
  __asm { FMOV            V0.2S, #1.0 }

  *&a4->maxEDRValue = _D0;
  if (!a5->var18 && a5->var17 == 18 && a4->targetTransferFunction != 18)
  {
    v45 = 0;
    v46 = a5->var15;
    v47 = RGB2020toHLGY_coeff;
    if (v46 == 12)
    {
      v47 = RGBP3toHLGY_coeff;
    }

    if (v46 == 1)
    {
      v48 = RGB709toHLGY_coeff;
    }

    else
    {
      v48 = v47;
    }

    v49 = *(p_var10 + 3);
    do
    {
      v50 = v48[v45];
      v73 = v49;
      *(&v73 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3))) = v50;
      v49 = v73;
      *(p_var10 + 14) = DWORD2(v73);
      *(p_var10 + 6) = v49;
      ++v45;
    }

    while (v45 != 3);
    var21 = a5->var21;
    *&a3->var66 = var21;
    a4->tmData.edrAdaptationMode = 0;
    a4->tmData.ambAdaptationMode = 0;
    *&a4->tmData.hdr10TmMode = 0x100000000;
    a4->tmData.edrAdaptationGain = a6->edrAdaptationGain;
    diffuseInNits = a4->diffuseInNits;
    a4->tmData.edrFactor = 1.0 / a4->maxEDRValue;
    a4->tmData.diffuseInNits = diffuseInNits;
    AmbientInNits = a4->AmbientInNits;
    ambNitsCap = a6->ambNitsCap;
    if ((AmbientInNits + -5.093) <= ambNitsCap)
    {
      ambNitsCap = AmbientInNits + -5.093;
    }

    if ((AmbientInNits + -5.093) < 0.0)
    {
      ambNitsCap = 0.0;
    }

    a4->tmData.ambReflected_nits = a6->targetDisplayReflectionRatio * (a6->ambAdaptationRatio * ambNitsCap);
    a4->tmData.Smin_nits = 0.0;
    a4->tmData.Smax_nits = var21;
    a4->tmData.Tmin_nits = 0.0;
    a4->tmData.tm_Tmin_nits = 0.0;
    a4->tmData.Tmax_nits = var21;
    a4->tmData.tm_Tmax_nits = var21;
    v55 = *&overrideCminNits;
    if (*&overrideCminNits < 0.0)
    {
      v55 = 0.0;
    }

    a4->tmData.Cmin_nits = v55;
    v56 = *&overrideCmaxNits;
    if (*&overrideCmaxNits < 0.0)
    {
      v56 = var21;
    }

    a4->tmData.Cmax_nits = v56;
    a4->tmData.Cend_nits = var21;
    if (*&overrideCmidNits < 0.0)
    {
      v57 = 10.0;
    }

    else
    {
      v57 = *&overrideCmidNits;
    }

    a4->tmData.Capl_nits = v57;
    if (AmbientInNits >= 0.0)
    {
      v60 = powf(AmbientInNits * 0.0001, 0.1593);
      v59 = powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v58 = powf(AmbientInNits * -0.0001, 0.1593);
      v59 = 0.0000014619 - powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
    }

    a4->tmData.ambientPQ = v59;
    v61 = powf(diffuseInNits / 10000.0, 0.1593);
    v62 = (v61 * 18.8515625 + 0.8359375) / (v61 * 18.6875 + 1.0);
    v63 = powf(v62, 78.844);
    v64 = 1.0;
    if (v63 <= 1.0)
    {
      v64 = v63;
    }

    _NF = v63 < 0.0;
    v65 = 0.0;
    if (!_NF)
    {
      v65 = v64;
    }

    a4->tmData.nominalPQ = v65;
    a4->tmData.adaptiveSdiv_nits = calculateAdaptiveSdiv(v57, a4->tmData.Sdiv_nits);
    hdr10TmMode = a4->tmData.hdr10TmMode;
    if (hdr10TmMode == 7)
    {
      v67 = 2;
    }

    else
    {
      if (hdr10TmMode != 8)
      {
LABEL_68:
        a4->tmData.enableRangeAdjustment = a4->tmData.gradingAmbientEnvironmentType != 1;
        a4->tmData.enableRangeAdjustmentAndHighClip = 0;
        hlg_calculateTonemapCurveParamS(&a4->tmData, a3, self->_dm40, &a4->hlgTmParam);
        if (a4->tmData.enableAUWDMv20)
        {
          v68 = malloc_type_malloc(0x168uLL, 0x10000405E9D2EE3uLL);
          v69 = malloc_type_malloc(0x63CuLL, 0x10000403E037C05uLL);
          v70 = v69;
          if (v68 && v69)
          {
            memcpy(v68, &a4->tmData, 0x168uLL);
            memcpy(v70, &a4->hlgTmParam, 0x63CuLL);
            v71 = v68[24];
            v68[15] = v71;
            v68[31] = v71;
            hlg_calculateTonemapCurveParamS(v68, a3, self->_dm40, v70);
          }
        }

        else
        {
          v68 = 0;
          v70 = 0;
        }

        hlg_generateEdrAdaptationDataS(&a4->tmData, &a4->hlgTmParam, a3, self->_dm40, v70, &a4->edrAdaptationData);
        calculateEdrAdaptationParamS(&a4->edrAdaptationData.mode, &a3[1].var38, &a4->edrAdaptationParam);
        hlg_generateAmbAdaptationDataS(&a4->tmData, &a4->hlgTmParam, &a4->edrAdaptationData, &a4->edrAdaptationParam, a3, &a4->ambAdaptationData, 0.0);
        calculateAmbAdaptationParamS(&a4->ambAdaptationData, &a4->ambAdaptationParam);
        a6->tm_Send_nits = a4->hlgTmParam.artisticOOTFParam.tm_Send_nits;
        a3->var67 = a4->hlgTmParam.systemGamma + -1.0;
        if (v68)
        {
          free(v68);
        }

        if (v70)
        {
          free(v70);
        }

        goto LABEL_77;
      }

      v67 = 3;
    }

    a4->tmData.doviTmMode = v67;
    goto LABEL_68;
  }

LABEL_77:
  setupOutputScale(a3, a4, a5);
  v72 = *MEMORY[0x277D85DE8];
}

- (void)setupDoViDmVersion:(id *)a3 tmData:(_TMData *)a4 hdrCtrl:(id *)a5 tcCtrl:(ToneCurve_Control *)a6
{
  LODWORD(a3[1].var46) = 3;
  LOWORD(a3[1].var47) = 0;
  if (a4->useDM4TmForDM3DoVi84Bright)
  {
    goto LABEL_2;
  }

  if (self->_inputDmVersion == 4 && GetConfig())
  {
    Config = GetConfig();
    v11 = *HDRConfig::GetConfigEntryValue(Config, 7u, 0);
    if (a4->processingType == 4)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_2;
    }

    var35_low = LODWORD(a3->var35);
    if (v11)
    {
      if (a5->var2 == 1)
      {
LABEL_2:
        LODWORD(a3[1].var46) = 4;
      }
    }
  }

LABEL_10:
  if (IsGpuOnlySystem() || !GetConfig())
  {
    v14 = 0;
  }

  else
  {
    v13 = GetConfig();
    v14 = *HDRConfig::GetConfigEntryValue(v13, 0x1Au, 0);
  }

  if (a5->var2 == 1 || ((a5->var29 | v14)) && BYTE1(a3[1].var49) == 1 && LODWORD(a3[1].var46) != 4 && (*(a6 + 152) & 2) == 0)
  {
    if (a4->enableAUWDMv20)
    {
      v15 = 2;
    }

    else if (a6->enableHybridCanonicalRendering)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *&a3[1].var50 = v15;
  if (GetConfig())
  {
    v16 = GetConfig();
    if (*(v16 + 1787))
    {
      if ((v16[3572] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v17 = GetConfig();
          v18 = *HDRConfig::GetConfigEntryValue(v17, 0x51u, 0);
        }

        else
        {
          v18 = 0;
        }

        *&a3[1].var50 = v18;
      }
    }
  }
}

- (void)setDisplayManagementToneMappingConfigFromMetaData:(id *)a3 config:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 hdrCtrl:(id *)a6 auxData:(_AuxData *)a7 dpcParam:(_DpcParam *)a8
{
  v8 = MEMORY[0x28223BE20](self, a2, a3, a4, a5, a6, a7, a8);
  v440 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v8;
  v500 = *MEMORY[0x277D85DE8];
  *(v14 + 467) = 0;
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x52u, 0) == 1)
    {
      if (GetConfig())
      {
        v22 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v22, 7u, 0) == 1 && *(v20 + 80) <= 3 && *(v15 + 384) == 1 && *(v15 + 380) == 4)
        {
          v23 = *(v13 + 40);
          if (v23 <= 7 && ((1 << v23) & 0x98) != 0)
          {
            *(v15 + 467) = 1;
            [*(v20 + 88) initDmAlgVerInCm:4];
          }
        }
      }
    }
  }

  v24 = *(v15 + 384);
  if (!v24)
  {
    if (GetConfig())
    {
      v25 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v25, 0xE2u, 0))
      {
        goto LABEL_18;
      }
    }

    v24 = *(v15 + 384);
  }

  if (v24 != 1)
  {
    goto LABEL_25;
  }

  if (!GetConfig())
  {
    goto LABEL_25;
  }

  v26 = GetConfig();
  if (*HDRConfig::GetConfigEntryValue(v26, 0xE3u, 0) != 1)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (!GetConfig() || (v27 = GetConfig(), *HDRConfig::GetConfigEntryValue(v27, 0xE4u, 0) != 23))
  {
    if (!GetConfig() || (v28 = GetConfig(), *HDRConfig::GetConfigEntryValue(v28, 0xE4u, 0) != 24))
    {
      if (GetConfig())
      {
        v30 = GetConfig();
        v29 = *HDRConfig::GetConfigEntryValue(v30, 0xE4u, 0) == 25;
        goto LABEL_26;
      }

LABEL_25:
      v29 = 0;
      goto LABEL_26;
    }
  }

  v29 = 1;
LABEL_26:
  *(v15 + 372) = (*(v15 + 185) ^ 1) & v29;
  [v20 setupDoViDmVersion:v17 tmData:v15 + 268 hdrCtrl:v13 tcCtrl:v15];
  dovi_setupTmConfig(*(v11 + 8), *(v17 + 480), v15, (v15 + 268), v15 + 5716);
  if ((*(v17 + 493) & 1) == 0)
  {
    v31 = *(v15 + 380);
    if (v31 == 4 || v31 == 2)
    {
      *v15 = *(v15 + 156);
    }
  }

  v449 = v20;
  v32 = fabs(*v15 + -1000.0);
  v450 = v19;
  if (*v13 == 1)
  {
    v33 = *(v13 + 40);
    v34 = *(v13 + 68) == 16 && v33 == 2;
    v35 = !v34 || (*(v19 + 136) - 3085) >= 0xFFFFFFF6;
    v36 = !v35;
    if (v32 >= 4.0)
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
    v33 = *(v13 + 40);
  }

  if (v33 > 8 || (v441 = 1, ((1 << v33) & 0x142) == 0))
  {
    v441 = v36;
  }

  if (*(v13 + 8) != 1)
  {
    v435 = 0;
LABEL_63:
    v433 = 0;
    goto LABEL_64;
  }

  v37 = *(v15 + 380);
  if (v33)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37 == 4;
  }

  v39 = v38;
  v435 = v39;
  if (v37)
  {
    goto LABEL_63;
  }

  if (v33)
  {
    v40 = 0;
  }

  else
  {
    v40 = *(v19 + 120) == 2;
  }

  v41 = v40;
  v433 = v41;
LABEL_64:
  v42 = *(v19 + 116);
  v43 = ~(-1 << v42);
  v442 = *(v19 + 160) == -2 && *(v19 + 158) == -2;
  v44 = (v17 + 400);
  v45 = (v17 + 384);
  v46 = ~(-1 << v42);
  v47 = 1.0 / v46;
  *(v17 + 112) = v47;
  *(v17 + 116) = v47 * 0.0;
  v48 = *(v19 + 120);
  *(v17 + 140) = v48;
  v448 = v11;
  if (v33 == 2 && v48 == 2)
  {
    v49 = ~(-1 << v42);
    v51 = *(v17 + 16);
    v50 = *(v17 + 32);
    v52 = *(v17 + 48);
    v53 = -3;
    v54 = &dword_2508D039C;
    do
    {
      v55 = *(v54 - 3) / v49;
      v56 = v53 - 1;
      v476 = v51;
      *(&v476 & 0xFFFFFFFFFFFFFFF3 | (4 * (v56 & 3))) = v55;
      v51 = v476;
      v57 = *v54 / v49;
      v475 = v50;
      *(&v475 & 0xFFFFFFFFFFFFFFF3 | (4 * (v56 & 3))) = v57;
      v50 = v475;
      v58 = v54[3] / v49;
      v474 = v52;
      *(&v474 & 0xFFFFFFFFFFFFFFF3 | (4 * (v56 & 3))) = v58;
      v52 = v474;
      ++v54;
      v35 = __CFADD__(v53++, 1);
    }

    while (!v35);
    *(v17 + 24) = DWORD2(v51);
    *(v17 + 40) = DWORD2(v50);
    *(v17 + 16) = v51;
    *(v17 + 32) = v50;
    *(v17 + 56) = DWORD2(v52);
    *(v17 + 48) = v52;
  }

  else
  {
    v59 = 0;
    v60 = v46;
    v62 = *(v17 + 16);
    v61 = *(v17 + 32);
    v63 = (v19 + 28);
    v64 = *(v17 + 48);
    do
    {
      v65 = (*(v63 - 3) * 0.00012207) / v60;
      v477 = v62;
      *(&v477 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = v65;
      v62 = v477;
      *(v17 + 24) = DWORD2(v477);
      *(v17 + 16) = v62;
      v66 = (*v63 * 0.00012207) / v60;
      v478 = v61;
      *(&v478 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = v66;
      v61 = v478;
      *(v17 + 40) = DWORD2(v478);
      *(v17 + 32) = v61;
      v67 = (v63[3] * 0.00012207) / v60;
      v479 = v64;
      *(&v479 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = v67;
      v64 = v479;
      *(v17 + 56) = DWORD2(v479);
      *(v17 + 48) = v64;
      ++v59;
      ++v63;
    }

    while (v59 != 3);
  }

  v68 = vcvt_f32_s32(vshl_u32(0x8000000010, vdup_n_s32(v42 - 8)));
  *(v17 + 8) = v68.i32[1];
  *v17 = v68;
  v69 = v43 << (12 - v42);
  v35 = v42 >= 0xC;
  v70 = v43 >> (v42 - 12);
  if (!v35)
  {
    v70 = v69;
  }

  *(v17 + 504) = (v70 / v46);
  v71 = *(v19 + 108) * 0.000015259;
  v72 = *(v19 + 100);
  v73 = vcvt_f32_u32(v72);
  v74 = v72.i32[0];
  if (v72.i32[0] != 0xFFFF)
  {
    v74 = 0;
  }

  *(v17 + 120) = v74;
  v459 = vmul_f32(v73, 0x3E80000038800000);
  *&v77 = powf(v71, v459.f32[0]);
  v75 = 0;
  *(v17 + 124) = v459;
  *(v17 + 132) = v71;
  *(v17 + 136) = vmuls_lane_f32(*&v77, v459, 1);
  v76 = (v19 + 64);
  *&v77 = *(v17 + 88);
  v458 = v77;
  *&v77 = *(v17 + 96);
  v460 = v77;
  *&v77 = *(v17 + 104);
  v416 = (v19 + 64);
  do
  {
    v451 = v77;
    v78 = ATFMTLfloat2half_rtz(*v76 * 0.000061035);
    *(&v79 + 1) = *(&v458 + 1);
    v471 = v458;
    *(&v471 & 0xFFFFFFFFFFFFFFF9 | (2 * (v75 & 3))) = v78;
    *&v79 = v471;
    *(v17 + 92) = WORD2(v471);
    v458 = v79;
    *(v17 + 88) = v79;
    v80 = ATFMTLfloat2half_rtz(v76[3] * 0.000061035);
    *(&v81 + 1) = *(&v460 + 1);
    v472 = v460;
    *(&v472 & 0xFFFFFFFFFFFFFFF9 | (2 * (v75 & 3))) = v80;
    *&v81 = v472;
    *(v17 + 100) = WORD2(v472);
    v460 = v81;
    *(v17 + 96) = v81;
    v82 = ATFMTLfloat2half_rtz(v76[6] * 0.000061035);
    *(&v77 + 1) = *(&v451 + 1);
    v473 = v451;
    *(&v473 & 0xFFFFFFFFFFFFFFF9 | (2 * (v75 & 3))) = v82;
    *&v77 = v473;
    *(v17 + 108) = WORD2(v473);
    *(v17 + 104) = v77;
    ++v75;
    ++v76;
  }

  while (v75 != 3);
  v83 = *(v13 + 40);
  v84 = powf(*(v15 + 24) / 10000.0, 0.1593);
  v85 = (v84 * 18.8515625 + 0.8359375) / (v84 * 18.6875 + 1.0);
  v86 = powf(v85, 78.844);
  v88 = 1.0;
  if (v86 <= 1.0)
  {
    v88 = v86;
  }

  if (v86 >= 0.0)
  {
    v89 = v88;
  }

  else
  {
    v89 = 0.0;
  }

  if (v83 <= 7 && ((1 << v83) & 0xB8) != 0 || *(v13 + 180) == 1)
  {
    v90 = v11;
    v91 = v442;
    if (!*(v15 + 380) && *(v17 + 480) == 4)
    {
      if (GetConfig())
      {
        v92 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v92, 0x65u, 0) == 1)
        {
          *(v17 + 484) = 1536;
        }
      }
    }

    v93 = v450;
    if ((*(v17 + 484) & 0x200) != 0 && (debugDM4DisableConf & 0x200) == 0)
    {
      *(v15 + 284) = 0;
      *(v15 + 300) = 6;
    }

    v94 = *(v13 + 40);
    v432 = (v94 & 0xFFFFFFFE) == 4;
    if (v94 == 5)
    {
      v95 = 1.0 / *(v15 + 28);
    }

    else
    {
      v95 = *(v15 + 32);
    }

    v431 = v95;
    v430 = *(v15 + 40);
    if (GetConfig() && (v96 = GetConfig(), *(v96 + 2579)) && (v96[5156] & 0x80) != 0)
    {
      if (GetConfig())
      {
        v99 = GetConfig();
        v100 = *HDRConfig::GetConfigEntryValue(v99, 0x75u, 0);
      }

      else
      {
        v100 = 0;
      }

      *(v15 + 5564) = v100;
    }

    else if (*(v448 + 20) <= 0.0005 || (*(v15 + 372) & 1) != 0)
    {
      *(v15 + 5564) = 0;
    }

    else
    {
      *(v15 + 5564) = 1061158912;
    }

    goto LABEL_117;
  }

  v90 = v11;
  v91 = v442;
  if (v33 != 6 && v33 != 1)
  {
    if (v441)
    {
      v432 = 0;
      *(v17 + 480) = 3;
      *(v15 + 280) = 3;
      *(v15 + 300) = 0;
      v430 = 0;
      v431 = -1.0;
      goto LABEL_447;
    }

    v93 = v450;
    if (v435)
    {
      *(v15 + 280) = 0;
      *(v17 + 480) = 2;
      v383 = 237;
    }

    else
    {
      if (!v433 || *(v17 + 480) != 4)
      {
        goto LABEL_492;
      }

      v383 = 360;
    }

    *(v17 + 484) = v383;
LABEL_492:
    v432 = 0;
    *(v15 + 284) = 0;
    *(v15 + 300) = 0;
    v429 = 0.0;
    v430 = 0;
    v431 = -1.0;
    goto LABEL_118;
  }

  *(v15 + 284) = 0;
  *(v15 + 300) = 0;
  v430 = 0;
  v431 = -1.0;
  if (*(v17 + 480) != 4)
  {
    v432 = 0;
LABEL_447:
    v429 = v89;
    v93 = v450;
    goto LABEL_118;
  }

  v97 = *(v15 + 380);
  v93 = v450;
  if (v97)
  {
    if (v97 != 4)
    {
      v432 = 0;
      goto LABEL_117;
    }

    v432 = 0;
    v98 = 123;
  }

  else
  {
    v432 = 0;
    v98 = 122;
  }

  *(v17 + 484) = v98;
LABEL_117:
  v429 = v89;
LABEL_118:
  if ((v83 <= 7 && ((1 << v83) & 0xB8) != 0 || *(v13 + 180) == 1) && *(v15 + 384) == 1 && *(v15 + 380) == 4 && *(v17 + 512) >= 0.0)
  {
    if (GetConfig())
    {
      v101 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v101, 0xB8u, 0) == 1)
      {
        *(v17 + 508) = 1;
      }
    }
  }

  v102 = vcvt_f32_u32(*(v93 + 132));
  v103 = vdup_n_s32(0x457FF000u);
  v104 = *(v13 + 40);
  if (v104 && *(v15 + 280) <= 3)
  {
    v105 = *(v93 + 162);
    LOWORD(v87) = *(v93 + 160);
    *&v106 = fmaxf(LODWORD(v87), 2081.0);
    v107 = *&v106;
    LOWORD(v106) = *(v93 + 158);
    v87 = fminf(v106, 614.0);
    if (v87 + 700 > v105)
    {
      v105 = v87 + 700;
    }

    if (v105 >= v107)
    {
      LOWORD(v105) = v107 - 1;
    }

    *(v93 + 160) = v107;
    *(v93 + 158) = v87;
    *(v93 + 162) = v105;
  }

  v108 = vdiv_f32(v102, v103);
  v434 = v83;
  v452 = v108;
  if (v91)
  {
    v109 = v108.f32[1];
    if (v108.f32[1] > 0.90257)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v110 = logInstanceID;
        }

        else
        {
          v110 = prevLogInstanceID;
        }

        v111 = MEMORY[0x277D86220];
        v112 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          *v499 = 134217984;
          *&v499[4] = WORD1(v110);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: sMaxPq <= L2PqNorm(4000) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 6388\n", v499, 0xCu);
        }

        prevLogInstanceID = v110;
      }

      else
      {
        v117 = MEMORY[0x277D86220];
        v118 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
          *v499 = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: sMaxPq <= L2PqNorm(4000) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 6388\n", v499, 2u);
        }
      }
    }

    if (v452.f32[0] < 0.015076)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v119 = logInstanceID;
        }

        else
        {
          v119 = prevLogInstanceID;
        }

        v120 = MEMORY[0x277D86220];
        v121 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *v499 = 134217984;
          *&v499[4] = WORD1(v119);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: sMinPq >= L2PqNorm(0.005) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 6389\n", v499, 0xCu);
        }

        prevLogInstanceID = v119;
      }

      else
      {
        v122 = MEMORY[0x277D86220];
        v123 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          *v499 = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: sMinPq >= L2PqNorm(0.005) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 6389\n", v499, 2u);
        }
      }
    }

    *(v15 + 140) = v452;
    *(v15 + 136) = (v109 + v452.f32[0]) * 0.5;
  }

  else
  {
    v108.i16[0] = *(v93 + 162);
    *&v113 = v108.u32[0] / 4095.0;
    *(v15 + 136) = *&v113;
    LOWORD(v113) = *(v93 + 160);
    v108.f32[0] = v113 / 4095.0;
    *(v15 + 144) = v108.i32[0];
    LOWORD(v87) = *(v93 + 158);
    v114 = LODWORD(v87) / 4095.0;
    *(v15 + 140) = v114;
    v115 = (v15 + 140);
    v116 = *(v15 + 280);
    if (v116 == 2)
    {
      goto LABEL_147;
    }

    if (v116 == 4)
    {
      [v449[11] applyL3:v93 srcCrushPQ:v115 srcMidPQ:? srcClipPQ:?];
      goto LABEL_167;
    }

    if (!v104)
    {
LABEL_147:
      if (v452.f32[1] > 0.69629)
      {
        if (v108.f32[0] < 0.69629)
        {
          v108.f32[0] = 0.69629;
        }

        *(v15 + 144) = v108.i32[0];
      }

      *v115 = fminf(v114, 0.015076);
    }
  }

LABEL_167:
  if (*(v15 + 280) == 4)
  {
    [v449[11] applyL9:v93];
  }

  v124 = *v15 * *(v90 + 20);
  if (v124 <= 0.005)
  {
    v125 = *v15 * *(v90 + 20);
  }

  else
  {
    v125 = 0.005;
  }

  if (*(v17 + 501) && (*(v13 + 181) != 1 || *(v13 + 8)) || ![v449 enableMSRandIOSTuning:v13])
  {
    if (v441)
    {
      v132 = *(v15 + 8);
      v130 = v132 <= 0.00005;
      v133 = v132;
      if (v130)
      {
        v125 = 0.001;
      }

      else
      {
        v125 = v133;
      }
    }
  }

  else
  {
    v126 = 0.001;
    if (!v441)
    {
      v126 = v125;
    }

    v127 = *(v15 + 380);
    v34 = v127 == 4;
    v128 = (v127 != 4) & v441;
    if (v34)
    {
      v125 = 0.0;
    }

    else
    {
      v125 = v126;
    }

    if (v128 == 1)
    {
      v129 = *(v15 + 8);
      v130 = v129 <= 0.00005;
      v131 = v129;
      if (v130)
      {
        v125 = v126;
      }

      else
      {
        v125 = v131;
      }
    }
  }

  v134 = powf(v125 / 10000.0, 0.1593);
  v135 = (v134 * 18.8515625 + 0.8359375) / (v134 * 18.6875 + 1.0);
  v136 = powf(v135, 78.844);
  LODWORD(v137) = 1.0;
  if (v136 <= 1.0)
  {
    *&v137 = v136;
  }

  v138 = v136 < 0.0;
  v139 = 0.0;
  if (v138)
  {
    *&v137 = 0.0;
  }

  v443 = v137;
  if ((*(v15 + 152) & 2) == 0)
  {
    v139 = v125;
  }

  *(v15 + 332) = v139;
  v497 = 0.0;
  if (GetConfig() && (v140 = GetConfig(), *HDRConfig::GetConfigEntryValue(v140, 0x1Fu, 0) == 1))
  {
    v141 = [v449 getHistBasedToneMapping];
  }

  else
  {
    v141 = 0;
  }

  adjustPeakWhiteBasedOnContent(v17, v15, v13, *(v15 + 380), (v17 + 280), &v497, (v17 + 324), (v15 + 388), *(v13 + 148), (v15 + 392), v141, *(v15 + 372));
  v142 = *v15;
  *(v17 + 228) = v142;
  v143 = *(v15 + 16);
  *(v17 + 220) = v143;
  *(v17 + 224) = 1000593162;
  v496 = 3696;
  if (!*(v93 + 164) || *(v17 + 480) > 3)
  {
    goto LABEL_207;
  }

  v144 = v441;
  if (v32 < 4.0)
  {
    v144 = 1;
  }

  if ((v144 & 1) != 0 || (v145 = *(v13 + 40), v145 <= 7) && ((1 << v145) & 0xB8) != 0)
  {
    if (v435)
    {
LABEL_207:
      v419 = 0;
      *(v17 + 236) = xmmword_2508CF760;
      v146 = 1.1;
      goto LABEL_208;
    }
  }

  else if (v435 & 1 | ((*(v13 + 180) & 1) == 0))
  {
    goto LABEL_207;
  }

  *v499 = 0uLL;
  createTrimSet(v499, v93, &v496, v497);
  v379 = vcvtd_n_f64_u32(*&v499[4], 0xCuLL) + -0.5 + 1.0;
  *(v17 + 236) = v379;
  v380.f64[0] = vcvtd_n_f64_u32(*&v499[6], 0xCuLL);
  v380.f64[1] = vcvtd_n_f64_u32(*&v499[8], 0xCuLL) + -0.5;
  v381 = vcvt_f32_f64(vaddq_f64(v380, xmmword_2508CF780));
  *(v17 + 240) = v381;
  v382 = vcvtd_n_f64_u32(*&v499[12], 0xCuLL) + -0.5 + 1.0;
  *(v17 + 248) = v382;
  if (v441 && *(v93 + 306) && v381.f32[0] > 0.0)
  {
    *(v17 + 240) = 0;
  }

  v146 = v382 * 1.1;
  v419 = 1;
LABEL_208:
  v147 = *(v15 + 380);
  if (*(v13 + 40) == 5)
  {
    if (v147 == 4)
    {
      v148 = 1;
      goto LABEL_213;
    }

    *(v17 + 248) = v146;
    *(v17 + 208) = dword_2508CF700[*(v15 + 80) == 0];
  }

  v148 = v147 == 4;
LABEL_213:
  if ((*(v17 + 484) & 0x80) != 0)
  {
    v149 = (debugDM4DisableConf >> 7) & 1;
  }

  else
  {
    v149 = 1;
  }

  v150 = !v148 && *(v17 + 480) == 4;
  v151 = *(v13 + 8);
  if (v151 == 1 && ((v148 & v149 | v150) & 1) != 0)
  {
    *(v17 + 500) = 1;
  }

  v152 = *(v17 + 501);
  if (v152 == 1)
  {
    *(v17 + 500) = 0;
  }

  v153 = v497;
  *(v15 + 128) = v497;
  *(v15 + 132) = LODWORD(v443);
  *(v15 + 268) = -1;
  *(v15 + 288) = *(v90 + 12);
  v154 = *(v15 + 24);
  *(v15 + 292) = 1.0 / *(v15 + 28);
  *(v15 + 296) = v154;
  v418 = v141;
  v417 = v153;
  if (!v152 || !v151 && (*(v13 + 181)) && [v449 enableMSRandIOSTuning:v13] && *(v15 + 380) == 4)
  {
    v155 = 0.0;
    v428 = 893662952;
    v156 = v452;
  }

  else
  {
    v157 = -(v452.f32[0] + -0.0000014619);
    if (v452.f32[0] >= 0.00000073096)
    {
      v157 = v452.f32[0];
    }

    v158 = flt_2508CD850[v452.f32[0] < 0.00000073096];
    v159 = powf(v157, 0.012683);
    v160 = fmax(((v159 + -0.83594) / ((v159 * -18.688) + 18.852)), 0.0);
    v161 = powf(v160, 6.2774);
    v156 = v452;
    v155 = v158 * v161;
    v428 = v452.i32[0];
  }

  *(v15 + 308) = v155;
  v162.i32[0] = vdup_lane_s32(v156, 1).u32[0];
  v162.i32[1] = LODWORD(v443);
  v163 = vcge_f32(v162, vdup_n_s32(0x354436E8u));
  v164 = vbsl_s8(v163, v162, vneg_f32(vadd_f32(v162, vdup_n_s32(0xB5C436E8))));
  v425 = *v164.i32;
  v165 = vbsl_s8(v163, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
  v436 = powf(*&v164.i32[1], 0.012683);
  v166.f32[0] = powf(v425, 0.012683);
  v166.f32[1] = v436;
  v167 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v166, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v166))), 0));
  v426 = v167.f32[0];
  v437 = powf(v167.f32[1], 6.2774);
  v168.f32[0] = powf(v426, 6.2774);
  v168.f32[1] = v437;
  v169 = vmul_f32(v165, v168);
  *(v15 + 320) = v169.i32[1];
  *(v15 + 312) = v169;
  v169.f32[0] = *v15;
  *(v15 + 324) = v169.i32[0];
  *(v15 + 328) = *(v17 + 280);
  *(v15 + 344) = 1176256512;
  v170 = *(v15 + 40);
  if (v170 >= 0.0)
  {
    v175 = powf(v170 * 0.0001, 0.1593);
    v172 = &off_2508CD000;
    v174 = powf(((v175 * 18.852) + 0.83594) / ((v175 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v171 = powf(v170 * -0.0001, 0.1593);
    v172 = &off_2508CD000;
    v174 = 0.0000014619 - powf(((v171 * 18.852) + 0.83594) / ((v171 * 18.688) + 1.0), 78.844);
  }

  *(v15 + 352) = v174;
  *(v15 + 356) = v89;
  v176 = *(v15 + 140);
  v177 = (v15 + 136);
  v495 = *(v15 + 136);
  v178 = (v15 + 144);
  v494 = *(v15 + 144);
  if (*(v17 + 508) == 1)
  {
    dovi84_generateSceneLuxAdaptationDataS(v15, v15 + 5568);
    calculateSceneLuxAdaptationParamS(v15 + 5568, v449[14]);
    *(v15 + 5712) = calcSceneLuxAdaptationMixFactor(*(v15 + 24));
    if (*(v15 + 185) == 1)
    {
      if (!GetConfig() || (v179 = GetConfig(), *HDRConfig::GetConfigEntryValue(v179, 0xFEu, 0) >= 0.0))
      {
        if (GetConfig())
        {
          v180 = GetConfig();
          v181 = *HDRConfig::GetConfigEntryValue(v180, 0xFEu, 0);
        }

        else
        {
          v181 = 0;
        }

        *(v15 + 5712) = v181;
      }
    }

    v427 = applySceneLuxAdaptationS_C(v15 + 5568, *(v15 + 140));
    v438 = applySceneLuxAdaptationS_C(v15 + 5568, *(v15 + 136));
    v182 = applySceneLuxAdaptationS_C(v15 + 5568, *(v15 + 144));
    v183 = GetConfig();
    v184 = __PAIR64__(LODWORD(v427), LODWORD(v438));
    if (v183)
    {
      v439 = __PAIR64__(LODWORD(v427), LODWORD(v438));
      v185 = GetConfig();
      v172 = &off_2508CD000;
      v186 = *HDRConfig::GetConfigEntryValue(v185, 0xBDu, 0);
      v184 = v439;
      if (v186)
      {
        *v187.i32 = v186;
        v184 = vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vmul_n_f32(v439, v186))), vdup_lane_s32(v187, 0));
        v182 = (v182 * v186) / v186;
      }
    }

    else
    {
      v172 = &off_2508CD000;
    }

    *(v15 + 136) = v184;
    *(v15 + 144) = v182;
    *(v15 + 284) = 18;
    if (*(v15 + 185) == 1 && *v13 == 1 && *(v13 + 68) == 18 && *(v13 + 172) == 1)
    {
      *(v15 + 284) = 0;
    }

    v188 = overrideEdrAdaptationMode;
    if (overrideEdrAdaptationMode != -1)
    {
      goto LABEL_255;
    }

    v197 = *(v15 + 380);
    if (v197 == 4)
    {
      if (!*(v15 + 384))
      {
        if (GetConfig())
        {
          v376 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v376, 0xE2u, 0) == 1)
          {
            if (GetConfig())
            {
              v377 = GetConfig();
              v378 = *HDRConfig::GetConfigEntryValue(v377, 0xE5u, 0);
            }

            else
            {
              v378 = 0;
            }

            *(v15 + 284) = v378;
            if (!GetConfig())
            {
              goto LABEL_507;
            }

            goto LABEL_505;
          }
        }
      }

      v188 = overrideEdrAdaptationMode;
      if (overrideEdrAdaptationMode != -1)
      {
        goto LABEL_255;
      }

      v197 = *(v15 + 380);
      if (v197 == 4)
      {
        if (*(v15 + 384) == 1)
        {
          if (GetConfig())
          {
            v198 = GetConfig();
            if (*HDRConfig::GetConfigEntryValue(v198, 0xE3u, 0) == 1)
            {
              if (GetConfig())
              {
                v199 = GetConfig();
                v200 = *HDRConfig::GetConfigEntryValue(v199, 0xE4u, 0);
              }

              else
              {
                v200 = 0;
              }

              *(v15 + 284) = v200;
              if (!GetConfig())
              {
                goto LABEL_507;
              }

              goto LABEL_505;
            }
          }
        }

        v188 = overrideEdrAdaptationMode;
        if (overrideEdrAdaptationMode != -1)
        {
          goto LABEL_255;
        }

        v197 = *(v15 + 380);
      }
    }

    if (v197 != 2 || *(v15 + 384) || !GetConfig() || (v387 = GetConfig(), *HDRConfig::GetConfigEntryValue(v387, 0xE2u, 0) != 1))
    {
      v188 = overrideEdrAdaptationMode;
      if (overrideEdrAdaptationMode != -1)
      {
        goto LABEL_255;
      }

      v189 = *(v15 + 380);
      if (v189 != 2)
      {
        goto LABEL_258;
      }

      if (*(v15 + 384) == 1)
      {
        if (GetConfig())
        {
          v384 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v384, 0xE3u, 0) == 1)
          {
            if (GetConfig())
            {
              v385 = GetConfig();
              v386 = *HDRConfig::GetConfigEntryValue(v385, 0xE4u, 0);
            }

            else
            {
              v386 = 0;
            }

            *(v15 + 284) = v386;
            if (GetConfig())
            {
              v410 = GetConfig();
              if (*HDRConfig::GetConfigEntryValue(v410, 0xE6u, 0) == 1)
              {
                goto LABEL_506;
              }
            }
          }
        }
      }

      goto LABEL_507;
    }

    if (GetConfig())
    {
      v388 = GetConfig();
      v389 = *HDRConfig::GetConfigEntryValue(v388, 0xE4u, 0);
    }

    else
    {
      v389 = 0;
    }

    *(v15 + 284) = v389;
    if (!GetConfig())
    {
      goto LABEL_507;
    }

LABEL_505:
    v411 = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(v411, 0xE6u, 0))
    {
LABEL_506:
      *(v448 + 28) = 1153888666;
    }

LABEL_507:
    v188 = overrideEdrAdaptationMode;
LABEL_255:
    if (v188 <= 0x1B)
    {
      *(v15 + 284) = v188;
    }

    goto LABEL_257;
  }

  *(v15 + 5568) = 0;
LABEL_257:
  v189 = *(v15 + 380);
LABEL_258:
  if ((v189 | 4) == 4)
  {
    if (GetConfig())
    {
      v190 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v190, 0xE2u, 0) == 1)
      {
        if (GetConfig())
        {
          v191 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v191, 0xE6u, 0) == 1)
          {
            *(v448 + 28) = 1153888666;
          }
        }
      }
    }
  }

  if (*(v15 + 6634) == 1)
  {
    if (*(v13 + 172) != 1)
    {
      *(v15 + 284) = 0;
    }

    *(v15 + 300) = 0;
  }

  v192 = *(v448 + 28);
  v193 = *(v15 + 40) + -5.093;
  if (v193 <= v192)
  {
    v192 = *(v15 + 40) + -5.093;
  }

  v138 = v193 < 0.0;
  v194 = 0.0;
  if (!v138)
  {
    v194 = v192;
  }

  *(v15 + 304) = *(v448 + 24) * (*(v448 + 16) * v194);
  v195 = *(v15 + 380);
  if ((v195 == 4 || v195 == 2) && *(v13 + 172) == 1)
  {
    if (*&overrideCminNits >= 0.0)
    {
      v201 = powf(*&overrideCminNits * 0.0001, 0.1593);
      v196 = powf(((v201 * *(v172 + 612)) + 0.83594) / ((v201 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v196 = *(v15 + 140);
    }

    *(v15 + 140) = v196;
    if (*&overrideCmidNits >= 0.0)
    {
      v203 = powf(*&overrideCmidNits * 0.0001, 0.1593);
      v202 = powf(((v203 * *(v172 + 612)) + 0.83594) / ((v203 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v202 = *v177;
    }

    *v177 = v202;
    if (*&overrideCmaxNits >= 0.0)
    {
      v205 = powf(*&overrideCmaxNits * 0.0001, 0.1593);
      v204 = powf(((v205 * *(v172 + 612)) + 0.83594) / ((v205 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v204 = *v178;
    }

    *v178 = v204;
    if (*(v17 + 508) == 1)
    {
      limitStatsC(&v495, &v494, v173, v452.f32[1]);
      *(v15 + 140) = applySceneLuxAdaptationS_C(v15 + 5568, v176);
      *(v15 + 136) = applySceneLuxAdaptationS_C(v15 + 5568, v495);
      v172 = &off_2508CD000;
      *(v15 + 144) = applySceneLuxAdaptationS_C(v15 + 5568, v494);
    }

    else
    {
      limitStatsC((v15 + 136), (v15 + 144), v173, v452.f32[1]);
    }
  }

  *(v15 + 6496) = *(v448 + 32);
  *(v15 + 6500) = 1.0 / *(v15 + 28);
  *(v15 + 6504) = 1065353216;
  if (*(v15 + 104) == 16)
  {
    v206 = *v15 / 10000.0;
    *(v15 + 6504) = v206;
    if (*(v15 + 185) == 1)
    {
      *(v15 + 6504) = *(v15 + 188) * v206;
    }
  }

  *(v15 + 6508) = *(v448 + 36);
  *(v15 + 6512) = *(v15 + 6524);
  *(v15 + 6516) = *(v15 + 6528);
  *(v15 + 6520) = *(v15 + 24);
  calculateDpcParamS((v15 + 6496), v440);
  *(v15 + 384) = *(v13 + 172);
  v493 = 1077936128;
  v492 = 0;
  v491 = 1065353216;
  v490 = 0;
  v489 = 0;
  v207 = *(v15 + 364);
  if (v207 >= 0.0)
  {
    v210 = powf(v207 * 0.0001, 0.1593);
    v209 = powf(((v210 * *(v172 + 612)) + 0.83594) / ((v210 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v208 = powf(v207 * -0.0001, 0.1593);
    v209 = 0.0000014619 - powf(((v208 * *(v172 + 612)) + 0.83594) / ((v208 * 18.688) + 1.0), 78.844);
  }

  v420 = *(v15 + 136);
  v211 = *(v15 + 144);
  v212 = *(v15 + 344);
  if (v212 >= 0.0)
  {
    v215 = powf(v212 * 0.0001, 0.1593);
    v214 = powf(((v215 * *(v172 + 612)) + 0.83594) / ((v215 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v213 = powf(v212 * -0.0001, 0.1593);
    v214 = 0.0000014619 - powf(((v213 * *(v172 + 612)) + 0.83594) / ((v213 * 18.688) + 1.0), 78.844);
  }

  v216 = -(*v420.i32 + -0.0000014619);
  if (*v420.i32 >= 0.00000073096)
  {
    v216 = *v420.i32;
  }

  v217 = flt_2508CD850[*v420.i32 < 0.00000073096];
  v218 = powf(v216, 0.012683);
  v219 = *(v172 + 612);
  v220 = fmax(((v218 + -0.83594) / (v219 + (v218 * -18.688))), 0.0);
  v221 = powf(v220, 6.2774);
  v222 = calculateAdaptiveSdiv(v217 * v221, v207);
  v223 = v222;
  if (v222 >= 0.0)
  {
    v232 = powf(v222 * 0.0001, 0.1593);
    v225 = powf(((v232 * v219) + 0.83594) / ((v232 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v224 = powf(v222 * -0.0001, 0.1593);
    v225 = 0.0000014619 - powf(((v224 * v219) + 0.83594) / ((v224 * 18.688) + 1.0), 78.844);
  }

  if (*(v15 + 372) == 1)
  {
    *(v15 + 532) = v209;
    *(v15 + 536) = v225;
    *(v15 + 564) = vrev64_s32(v420);
    *(v15 + 572) = v211;
    *(v15 + 576) = v214;
    memcpy(__dst, v17, 0x210uLL);
    memcpy(v499, v15, sizeof(v499));
    memcpy(v487, (v15 + 268), sizeof(v487));
    memcpy(v486, (v15 + 5424), sizeof(v486));
    memcpy(v485, v17, 0x210uLL);
    memcpy(v498, v15, sizeof(v498));
    memcpy(v484, (v15 + 268), sizeof(v484));
    memcpy(v483, (v15 + 5424), sizeof(v483));
    if (v207 >= 0.0)
    {
      v240 = powf(v207 * 0.0001, 0.1593);
      LODWORD(v235) = powf(((v240 * v219) + 0.83594) / ((v240 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v233 = powf(v207 * -0.0001, 0.1593);
      *&v235 = 0.0000014619 - powf(((v233 * v219) + 0.83594) / ((v233 * 18.688) + 1.0), 78.844);
    }

    *&v487[31] = v207;
    *&v487[15] = v207;
    *&v487[14] = v207;
    *&v237 = *(v450 + 140);
    LODWORD(v234) = v452.i32[1];
    *&v236 = v207;
    *&v238 = *&v237;
    *&v239 = v431;
    [v449 getToneCurves:__dst tcCtrl:v499 tmData:v487 srcMinPQ:v432 srcMaxPQ:v434 == 7 tgtMinPQ:&v493 tgtMaxPQ:COERCE_DOUBLE(__PAIR64__(v452.u32[1] targetMaxLinear:v428)) srcDiagSize:v234 dstDiagSize:v443 EDRFactor:v235 ambient:v236 nominalPQ:v237 useLCDPanel:v238 referenceDisplay:v239 slopeScaled:__PAIR64__(LODWORD(v429) c1:v430) c2:&v492 c3:&v491 BrightAdjBySat2:&v490 DM_MetaData:{&v489, v450}];
    v241 = *(v15 + 136);
    if (v241 >= 0.00000073096)
    {
      v242 = 10000.0;
    }

    else
    {
      v241 = -(v241 + -0.0000014619);
      v242 = -10000.0;
    }

    v243 = powf(v241, 0.012683);
    v244 = fmax(((v243 + -0.83594) / (v219 + (v243 * -18.688))), 0.0);
    *&v487[20] = v242 * powf(v244, 6.2774);
    v245 = *(v15 + 140);
    v246 = vcge_f32(v245, vdup_n_s32(0x354436E8u));
    v247 = vbsl_s8(v246, v245, vneg_f32(vadd_f32(v245, vdup_n_s32(0xB5C436E8))));
    v412 = *v247.i32;
    v248 = vbsl_s8(v246, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
    v421 = powf(*&v247.i32[1], 0.012683);
    v249.f32[0] = powf(v412, 0.012683);
    v249.f32[1] = v421;
    v250 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v249, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v249))), 0));
    v413 = v250.f32[0];
    v422 = powf(v250.f32[1], 6.2774);
    v251.f32[0] = powf(v413, 6.2774);
    v251.f32[1] = v422;
    *&v487[17] = vmul_f32(v248, v251);
    *&v487[27] = v223;
    LOBYTE(v487[49]) = 0;
    dovi_calculateTonemapCurveParamS(v487, __dst, v486);
    if (*(v450 + 164))
    {
      v481 = 0;
      v480 = 0;
      if (*&v487[15] >= 0.0)
      {
        v254 = powf(*&v487[15] * 0.0001, 0.1593);
        v253 = powf(((v254 * v219) + 0.83594) / ((v254 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v252 = powf(*&v487[15] * -0.0001, 0.1593);
        v253 = 0.0000014619 - powf(((v252 * v219) + 0.83594) / ((v252 * 18.688) + 1.0), 78.844);
      }

      createTrimSet(&v480, v450, &v482, v253);
      v255.f64[0] = vcvtd_n_f64_u32(WORD2(v480), 0xCuLL) + -0.5;
      v255.f64[1] = vcvtd_n_f64_u32(HIWORD(v480), 0xCuLL);
      *&__dst[59] = vcvt_f32_f64(vaddq_f64(v255, xmmword_2508CF790));
      *v255.f64 = vcvtd_n_f64_u32(v481, 0xCuLL) + -0.5 + 1.0;
      v256 = vcvtd_n_f64_u32(WORD2(v481), 0xCuLL) + -0.5 + 1.0;
      __dst[61] = LODWORD(v255.f64[0]);
      *&__dst[62] = v256;
    }

    if ((__dst[120] & 0xFFFFFFFE) == 2)
    {
      v257 = v419;
      if (v487[4] != 11)
      {
        v257 = 0;
      }

      if (v257 == 1)
      {
        adjustL2TrimToAvoidOverflow(v486[20], *&__dst[59], *&__dst[60], *&__dst[61], v496 * 0.00024414, &__dst[59], &__dst[60], &__dst[61]);
      }
    }

    *(v15 + 540) = dovi_applyTonemapCurveS_NoLS(__dst, v486, v449[11], *(v15 + 532));
    *(v15 + 544) = dovi_applyTonemapCurveS_NoLS(__dst, v486, v449[11], *(v15 + 536));
    *(v15 + 580) = dovi_applyTonemapCurveS_NoLS(__dst, v486, v449[11], *(v15 + 564));
    *(v15 + 584) = dovi_applyTonemapCurveS_NoLS(__dst, v486, v449[11], *(v15 + 568));
    *(v15 + 588) = dovi_applyTonemapCurveS_NoLS(__dst, v486, v449[11], *(v15 + 572));
    *(v15 + 592) = dovi_applyTonemapCurveS_NoLS(__dst, v486, v449[11], *(v15 + 576));
    v258 = v207 * *&v484[30];
    if (v258 >= 0.0)
    {
      v267 = powf(v258 * 0.0001, 0.1593);
      LODWORD(v262) = powf(((v267 * v219) + 0.83594) / ((v267 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v259 = powf(v258 * -0.0001, 0.1593);
      *&v262 = 0.0000014619 - powf(((v259 * v219) + 0.83594) / ((v259 * 18.688) + 1.0), 78.844);
    }

    *&v484[31] = v258;
    *&v484[15] = v258;
    *&v484[14] = v258;
    *&v264 = *(v450 + 140);
    LODWORD(v260) = v428;
    LODWORD(v261) = v452.i32[1];
    *&v263 = v258;
    *&v265 = *&v264;
    *&v266 = v431;
    [v449 getToneCurves:v485 tcCtrl:v498 tmData:v484 srcMinPQ:v432 srcMaxPQ:v434 == 7 tgtMinPQ:&v493 tgtMaxPQ:v260 targetMaxLinear:v261 srcDiagSize:v443 dstDiagSize:v262 EDRFactor:v263 ambient:v264 nominalPQ:v265 useLCDPanel:v266 referenceDisplay:__PAIR64__(LODWORD(v429) slopeScaled:v430) c1:&v492 c2:&v491 c3:&v490 BrightAdjBySat2:&v489 DM_MetaData:v450];
    v268 = *(v15 + 136);
    if (v268 >= 0.00000073096)
    {
      v269 = 10000.0;
    }

    else
    {
      v268 = -(v268 + -0.0000014619);
      v269 = -10000.0;
    }

    v270 = powf(v268, 0.012683);
    v271 = fmax(((v270 + -0.83594) / (v219 + (v270 * -18.688))), 0.0);
    *&v484[20] = v269 * powf(v271, 6.2774);
    v272 = *(v15 + 140);
    v273 = vcge_f32(v272, vdup_n_s32(0x354436E8u));
    v274 = vbsl_s8(v273, v272, vneg_f32(vadd_f32(v272, vdup_n_s32(0xB5C436E8))));
    v414 = *v274.i32;
    v275 = vbsl_s8(v273, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
    v423 = powf(*&v274.i32[1], 0.012683);
    v276.f32[0] = powf(v414, 0.012683);
    v276.f32[1] = v423;
    v277 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v276, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v276))), 0));
    v415 = v277.f32[0];
    v424 = powf(v277.f32[1], 6.2774);
    v278.f32[0] = powf(v415, 6.2774);
    v278.f32[1] = v424;
    *&v484[17] = vmul_f32(v275, v278);
    *&v484[27] = v223;
    LOBYTE(v484[49]) = 0;
    dovi_calculateTonemapCurveParamS(v484, v485, v483);
    if (*(v450 + 164))
    {
      v481 = 0;
      v480 = 0;
      if (*&v484[15] >= 0.0)
      {
        v281 = powf(*&v484[15] * 0.0001, 0.1593);
        v280 = powf(((v281 * v219) + 0.83594) / ((v281 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v279 = powf(*&v484[15] * -0.0001, 0.1593);
        v280 = 0.0000014619 - powf(((v279 * v219) + 0.83594) / ((v279 * 18.688) + 1.0), 78.844);
      }

      createTrimSet(&v480, v450, &v482, v280);
      v282.f64[0] = vcvtd_n_f64_u32(WORD2(v480), 0xCuLL) + -0.5;
      v282.f64[1] = vcvtd_n_f64_u32(HIWORD(v480), 0xCuLL);
      *&v485[59] = vcvt_f32_f64(vaddq_f64(v282, xmmword_2508CF790));
      *v282.f64 = vcvtd_n_f64_u32(v481, 0xCuLL) + -0.5 + 1.0;
      v283 = vcvtd_n_f64_u32(WORD2(v481), 0xCuLL) + -0.5 + 1.0;
      v485[61] = LODWORD(v282.f64[0]);
      *&v485[62] = v283;
    }

    if ((v485[120] & 0xFFFFFFFE) == 2)
    {
      v284 = v419;
      if (v484[4] != 11)
      {
        v284 = 0;
      }

      if (v284 == 1)
      {
        adjustL2TrimToAvoidOverflow(v483[20], *&v485[59], *&v485[60], *&v485[61], v496 * 0.00024414, &v485[59], &v485[60], &v485[61]);
      }
    }

    *(v15 + 548) = dovi_applyTonemapCurveS_NoLS(v485, v483, v449[11], *(v15 + 532));
    *(v15 + 552) = dovi_applyTonemapCurveS_NoLS(v485, v483, v449[11], *(v15 + 536));
    *(v15 + 596) = dovi_applyTonemapCurveS_NoLS(v485, v483, v449[11], *(v15 + 564));
    *(v15 + 600) = dovi_applyTonemapCurveS_NoLS(v485, v483, v449[11], *(v15 + 568));
    *(v15 + 604) = dovi_applyTonemapCurveS_NoLS(v485, v483, v449[11], *(v15 + 572));
    *(v15 + 608) = dovi_applyTonemapCurveS_NoLS(v485, v483, v449[11], *(v15 + 576));
  }

  LODWORD(v228) = *(v15 + 392);
  *&v229 = *(v450 + 140);
  LODWORD(v226) = v452.i32[1];
  *&v227 = v417;
  *&v230 = *&v229;
  *&v231 = v431;
  [v449 getToneCurves:v17 tcCtrl:v15 tmData:v15 + 268 srcMinPQ:v432 srcMaxPQ:v434 == 7 tgtMinPQ:&v493 tgtMaxPQ:COERCE_DOUBLE(__PAIR64__(v452.u32[1] targetMaxLinear:v428)) srcDiagSize:v226 dstDiagSize:v443 EDRFactor:v227 ambient:v228 nominalPQ:v229 useLCDPanel:v230 referenceDisplay:v231 slopeScaled:__PAIR64__(LODWORD(v429) c1:v430) c2:&v492 c3:&v491 BrightAdjBySat2:&v490 DM_MetaData:{&v489, v450}];
  v285 = *(v15 + 136);
  if (v285 >= 0.00000073096)
  {
    v286 = 10000.0;
  }

  else
  {
    v285 = -(v285 + -0.0000014619);
    v286 = -10000.0;
  }

  v287 = powf(v285, 0.012683);
  v288 = fmax(((v287 + -0.83594) / (v219 + (v287 * -18.688))), 0.0);
  v289 = v286 * powf(v288, 6.2774);
  *(v15 + 348) = v289;
  v290 = *(v15 + 140);
  v291 = vcge_f32(v290, vdup_n_s32(0x354436E8u));
  v292 = vbsl_s8(v291, v290, vneg_f32(vadd_f32(v290, vdup_n_s32(0xB5C436E8))));
  v444 = *v292.i32;
  v293 = vbsl_s8(v291, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
  v453 = powf(*&v292.i32[1], 0.012683);
  v294.f32[0] = powf(v444, 0.012683);
  v294.f32[1] = v453;
  v295 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v294, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v294))), 0));
  v445 = v295.f32[0];
  v454 = powf(v295.f32[1], 6.2774);
  v296.f32[0] = powf(v445, 6.2774);
  v296.f32[1] = v454;
  *(v15 + 336) = vmul_f32(v293, v296);
  *(v15 + 376) = calculateAdaptiveSdiv(v289, *(v15 + 364));
  *(v15 + 464) = 0;
  v297 = *(v17 + 480) == 4 && !*(v15 + 380);
  *(v15 + 465) = v297;
  dovi_calculateTonemapCurveParamS(v15 + 268, v17, v15 + 5424);
  v298 = *(v17 + 480);
  v299 = v419 ^ 1;
  if ((v298 & 0xFFFFFFFE) != 2)
  {
    v299 = 1;
  }

  if ((v299 & 1) == 0)
  {
    if (*(v15 + 284) != 11)
    {
      goto LABEL_357;
    }

    adjustL2TrimToAvoidOverflow(*(v15 + 5504), *(v17 + 236), *(v17 + 240), *(v17 + 244), v496 * 0.00024414, (v17 + 236), (v17 + 240), (v17 + 244));
    v298 = *(v17 + 480);
  }

  if (v298 == 4)
  {
    [v449[11] debugParams];
  }

LABEL_357:
  if (*(v15 + 372) == 1 && (*(v15 + 556) = dovi_applyTonemapCurveS(v17, v15 + 5424, v449[11], *(v15 + 532)), *(v15 + 560) = dovi_applyTonemapCurveS(v17, v15 + 5424, v449[11], *(v15 + 536)), *(v15 + 612) = dovi_applyTonemapCurveS(v17, v15 + 5424, v449[11], *(v15 + 564)), *(v15 + 616) = dovi_applyTonemapCurveS(v17, v15 + 5424, v449[11], *(v15 + 568)), *(v15 + 620) = dovi_applyTonemapCurveS(v17, v15 + 5424, v449[11], *(v15 + 572)), *(v15 + 624) = dovi_applyTonemapCurveS(v17, v15 + 5424, v449[11], *(v15 + 576)), (*(v15 + 372) & 1) != 0))
  {
    v300 = malloc_type_malloc(0x168uLL, 0x10000405E9D2EE3uLL);
    v301 = malloc_type_malloc(0x210uLL, 0x1000040BC767FD4uLL);
    v302 = malloc_type_malloc(0x124uLL, 0x1000040F063F7D5uLL);
    v303 = v302;
    if (v300 && v301 && v302)
    {
      memcpy(v301, v17, 0x210uLL);
      memcpy(v300, (v15 + 268), 0x168uLL);
      memcpy(v303, (v15 + 5424), 0x124uLL);
      *(v301 + 120) = 3;
      *(v300 + 3) = 3;
      *(v301 + 236) = xmmword_2508CF760;
      v304 = *(v300 + 24);
      *(v300 + 15) = v304;
      *(v300 + 31) = v304;
      if (*(v450 + 164))
      {
        if (GetConfig())
        {
          v305 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v305, 0xE8u, 0) == 1)
          {
            *v499 = 0uLL;
            v306 = *(v300 + 15);
            if (v306 >= 0.0)
            {
              v390 = powf(v306 * 0.0001, 0.1593);
              v308 = powf(((v390 * v219) + 0.83594) / ((v390 * 18.688) + 1.0), 78.844);
            }

            else
            {
              v307 = powf(v306 * -0.0001, 0.1593);
              v308 = 0.0000014619 - powf(((v307 * v219) + 0.83594) / ((v307 * 18.688) + 1.0), 78.844);
            }

            createTrimSet(v499, v450, v498, v308);
            v391.f64[0] = vcvtd_n_f64_u32(*&v499[4], 0xCuLL) + -0.5;
            v391.f64[1] = vcvtd_n_f64_u32(*&v499[6], 0xCuLL);
            *(v301 + 236) = vcvt_f32_f64(vaddq_f64(v391, xmmword_2508CF790));
            *v391.f64 = vcvtd_n_f64_u32(*&v499[8], 0xCuLL) + -0.5 + 1.0;
            v392 = vcvtd_n_f64_u32(*&v499[12], 0xCuLL) + -0.5 + 1.0;
            *(v301 + 61) = LODWORD(v391.f64[0]);
            *(v301 + 62) = v392;
          }
        }
      }

      if (*(v15 + 280) == 4)
      {
        if (GetConfig())
        {
          v393 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v393, 0xEAu, 0) == 1)
          {
            v394 = (*(v15 + 136) * 4095.0);
            v395 = vdup_n_s32(0x457FF000u);
            v396 = vcvt_f32_s32(vcvt_s32_f32(vmul_f32(*(v15 + 140), v395)));
            v397.i32[1] = v396.i32[1];
            v397.i32[0] = 1142521856;
            v398 = vcvt_s32_f32(vbsl_s8(vcgt_f32(v397, (v396.u32[0] | 0x4502100000000000)), v396, 0x4502100044198000));
            v455 = v398;
            if (v394 <= v398.i32[0] + 700)
            {
              v394 = v398.i32[0] + 700;
            }

            if (v394 >= v398.i32[1])
            {
              v394 = v398.i32[1] - 1;
            }

            v399 = v394 / 4095.0;
            if (v399 >= 0.00000073096)
            {
              v400 = 10000.0;
            }

            else
            {
              v399 = -(v399 + -0.0000014619);
              v400 = -10000.0;
            }

            v401 = powf(v399, 0.012683);
            v402 = fmax(((v401 + -0.83594) / (v219 + (v401 * -18.688))), 0.0);
            *(v300 + 20) = v400 * powf(v402, 6.2774);
            v403 = vdiv_f32(vcvt_f32_s32(v455), v395);
            v404 = vcge_f32(v403, vdup_n_s32(0x354436E8u));
            v405 = vbsl_s8(v404, v403, vneg_f32(vadd_f32(v403, vdup_n_s32(0xB5C436E8))));
            v446 = *v405.i32;
            v406 = vbsl_s8(v404, vdup_n_s32(0x461C4000u), vdup_n_s32(0xC61C4000));
            v456 = powf(*&v405.i32[1], 0.012683);
            v407.f32[0] = powf(v446, 0.012683);
            v407.f32[1] = v456;
            v408 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vdiv_f32(vadd_f32(v407, vdup_n_s32(0xBF560000)), vmla_f32(vdup_n_s32(0x4196D000u), vdup_n_s32(0xC1958000), v407))), 0));
            v447 = v408.f32[0];
            v457 = powf(v408.f32[1], 6.2774);
            v409.f32[0] = powf(v447, 6.2774);
            v409.f32[1] = v457;
            *(v300 + 68) = vmul_f32(v406, v409);
          }
        }
      }

      dovi_calculateTonemapCurveParamS(v300, v301, v303);
    }
  }

  else
  {
    v300 = 0;
    v301 = 0;
    v303 = 0;
  }

  v309 = v449[11];
  if (*(v15 + 380) == 4)
  {
    dovi84_generateEdrAdaptationDataS(v15 + 268, v15 + 5424, v17, v303, v301, v15 + 5716, v309);
  }

  else
  {
    dovi_generateEdrAdaptationDataS(v15 + 268, v15 + 5424, v17, v303, v301, v15 + 5716, v309);
  }

  calculateEdrAdaptationParamS((v15 + 5716), v17 + 448, v15 + 6084);
  if (*(v15 + 380) == 4)
  {
    dovi84_generateAmbAdaptationDataS(v15 + 268, v15 + 5424, v15 + 5716, (v15 + 6084), v17, v15 + 6316);
  }

  else
  {
    dovi_generateAmbAdaptationDataS(v15 + 268, v15 + 5424, v15 + 5716, (v15 + 6084), v17, v15 + 6316);
  }

  calculateAmbAdaptationParamS(v15 + 6316, v15 + 6360);
  *(v448 + 44) = *(v15 + 5460);
  v493 = *(v15 + 5512);
  v492 = *(v15 + 5516);
  v310 = v492;
  v491 = *(v15 + 5520);
  v311 = v491;
  v490 = *(v15 + 5524);
  v312 = v490;
  v489 = *(v15 + 5528);
  v313 = v489;
  *(v17 + 144) = v493;
  *(v17 + 148) = v310;
  *(v17 + 152) = v311;
  *(v17 + 156) = v312;
  *(v17 + 276) = v313;
  *(v17 + 212) = *(v15 + 28);
  *(v17 + 232) = v497;
  *(v17 + 288) = *(v15 + 40);
  setupOutputScale(v17, v15, v13);
  v314 = 0.0;
  if ((*(v15 + 152) & 2) == 0)
  {
    v315 = *(v15 + 5488);
    v316 = *(v15 + 5480);
    v317 = *(v15 + 5504);
    v318 = *(v15 + 5496);
    v319 = *(v13 + 40);
    if ((v319 == 6 || v319 == 1) && *(v17 + 480) == 3)
    {
      v320 = ((v315 + v316) - (v317 + v318)) * *&ChromaVectorWeightDM31;
    }

    else
    {
      v320 = *&chromVectorWeight * ((v315 + v316) - (v317 + v318));
    }

    v314 = v320 * 0.5;
  }

  *(v17 + 252) = v314;
  if (*(v15 + 380) == 4)
  {
    v321 = 1000.0;
  }

  else
  {
    v322 = 0.0;
    if (*(v15 + 148) != 2)
    {
      goto LABEL_390;
    }

    v321 = *(v15 + 16);
  }

  v323 = (v321 / 1000.0);
  if (v321 <= 400.0 || v321 >= 2000.0)
  {
    v325 = log2(v323);
    v324 = pow(1.11099994, v325) * 1.20000005 + -1.0;
  }

  else
  {
    v324 = log10(v323) * 0.419999987 + 1.20000005 + -1.0;
  }

  v322 = v324;
LABEL_390:
  *(v17 + 284) = v322;
  *(v15 + 5532) = v322 + 1.0;
  v326 = MEMORY[0x277CC4C20];
  if (*(v13 + 8) || *(v13 + 181) == 1)
  {
    v327 = *(v15 + 88);
    if (v327 == *MEMORY[0x277CC4C20])
    {
      v328 = &LMStoRGB_coeff_709;
    }

    else
    {
      v328 = &LMStoRGB_coeff_P3;
      if (v327 != *MEMORY[0x277CC4C30] && v327 == *MEMORY[0x277CC4C18])
      {
        v328 = &LMStoRGB_coeff_2020;
      }
    }
  }

  else
  {
    v328 = &LMStoRGB_coeff_P3;
  }

  v329 = v328[1];
  *v499 = *v328;
  *&v499[16] = v329;
  *&v499[32] = *(v328 + 8);
  if (v441)
  {
    v330 = Matrix3x3_isCrossTalk(v416);
    if (v330)
    {
      Matrix3x3_multmatrixWithScale(v499, v416, v330);
    }
  }

  v331 = *(v17 + 196);
  *(v17 + 64) = ATFMTLfloat2half_rtz(v331 * *v499);
  *(v17 + 66) = ATFMTLfloat2half_rtz(v331 * *&v499[4]);
  *(v17 + 68) = ATFMTLfloat2half_rtz(v331 * *&v499[8]);
  *(v17 + 72) = ATFMTLfloat2half_rtz(v331 * *&v499[12]);
  *(v17 + 74) = ATFMTLfloat2half_rtz(v331 * *&v499[16]);
  *(v17 + 76) = ATFMTLfloat2half_rtz(v331 * *&v499[20]);
  *(v17 + 80) = ATFMTLfloat2half_rtz(v331 * *&v499[24]);
  *(v17 + 82) = ATFMTLfloat2half_rtz(v331 * *&v499[28]);
  v332 = ATFMTLfloat2half_rtz(v331 * *&v499[32]);
  v333 = 0;
  *(v17 + 84) = v332;
  v334 = *(v13 + 60);
  v335 = RGB2020toHLGY_coeff;
  if (v334 == 12)
  {
    v335 = RGBP3toHLGY_coeff;
  }

  if (v334 == 1)
  {
    v336 = RGB709toHLGY_coeff;
  }

  else
  {
    v336 = v335;
  }

  v337 = *v45;
  do
  {
    v338 = v336[v333];
    v470 = v337;
    *(&v470 & 0xFFFFFFFFFFFFFFF3 | (4 * (v333 & 3))) = v338;
    v337 = v470;
    *(v17 + 392) = DWORD2(v470);
    *v45 = v337;
    ++v333;
  }

  while (v333 != 3);
  v339 = *(v15 + 88);
  if (v339 == *v326)
  {
    v350 = *(v17 + 400);
    v349 = *(v17 + 416);
    v351 = -3;
    v352 = &dword_2508CFB04;
    v353 = *(v17 + 432);
    v340 = v418;
    do
    {
      v354 = *(v352 - 3);
      v463 = v350;
      *(&v463 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v351 - 1) & 3))) = v354;
      v350 = v463;
      *(v17 + 408) = DWORD2(v463);
      *(v17 + 400) = v350;
      v355 = *v352;
      v462 = v349;
      *(&v462 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v351 - 1) & 3))) = v355;
      v349 = v462;
      *(v17 + 424) = DWORD2(v462);
      *(v17 + 416) = v349;
      v356 = v352[3];
      v461 = v353;
      *(&v461 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v351 - 1) & 3))) = v356;
      v353 = v461;
      *(v17 + 440) = DWORD2(v461);
      *(v17 + 432) = v353;
      ++v352;
      v35 = __CFADD__(v351++, 1);
    }

    while (!v35);
  }

  else
  {
    v340 = v418;
    if (v339 == *MEMORY[0x277CC4C18])
    {
      v358 = *v44;
      v357 = *(v17 + 416);
      v359 = -3;
      v360 = &dword_2508CFB28;
      v361 = *(v17 + 432);
      do
      {
        v362 = *(v360 - 3);
        v466 = v358;
        *(&v466 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v359 - 1) & 3))) = v362;
        v358 = v466;
        *(v17 + 408) = DWORD2(v466);
        *v44 = v358;
        v363 = *v360;
        v465 = v357;
        *(&v465 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v359 - 1) & 3))) = v363;
        v357 = v465;
        *(v17 + 424) = DWORD2(v465);
        *(v17 + 416) = v357;
        v364 = v360[3];
        v464 = v361;
        *(&v464 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v359 - 1) & 3))) = v364;
        v361 = v464;
        *(v17 + 440) = DWORD2(v464);
        *(v17 + 432) = v361;
        ++v360;
        v35 = __CFADD__(v359++, 1);
      }

      while (!v35);
    }

    else if (*(v13 + 60) == 9)
    {
      v342 = *v44;
      v341 = *(v17 + 416);
      v343 = -3;
      v344 = &dword_2508CFB70;
      v345 = *(v17 + 432);
      do
      {
        v346 = *(v344 - 3);
        v469 = v342;
        *(&v469 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v343 - 1) & 3))) = v346;
        v342 = v469;
        *(v17 + 408) = DWORD2(v469);
        *v44 = v342;
        v347 = *v344;
        v468 = v341;
        *(&v468 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v343 - 1) & 3))) = v347;
        v341 = v468;
        *(v17 + 424) = DWORD2(v468);
        *(v17 + 416) = v341;
        v348 = v344[3];
        v467 = v345;
        *(&v467 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v343 - 1) & 3))) = v348;
        v345 = v467;
        *(v17 + 440) = DWORD2(v467);
        *(v17 + 432) = v345;
        ++v344;
        v35 = __CFADD__(v343++, 1);
      }

      while (!v35);
    }

    else
    {
      *(v17 + 400) = xmmword_2508CDDF0;
      *(v17 + 416) = xmmword_2508CF7A0;
      *(v17 + 432) = xmmword_2508CF7B0;
    }
  }

  v365 = *(v450 + 120);
  v366 = powf(*(v13 + 148) / 10000.0, 0.1593);
  v367 = (v366 * 18.8515625 + 0.8359375) / (v366 * 18.6875 + 1.0);
  v368 = powf(v367, 78.844);
  v369 = 1.0;
  if (v368 <= 1.0)
  {
    v369 = v368;
  }

  v138 = v368 < 0.0;
  v370 = 0.0;
  if (!v138)
  {
    v370 = v369;
  }

  v371 = v370 * 876.0;
  if (v365 == 2)
  {
    v371 = v371 * 4095.0;
    v372 = 262144.0;
  }

  else
  {
    v372 = 64.0;
  }

  v373 = v372 / v371;
  v374 = 1024.0 / v371;
  *(v17 + 200) = v374;
  *(v17 + 204) = v373;
  *(v17 + 160) = 0;
  if (v300)
  {
    free(v300);
  }

  if (v303)
  {
    free(v303);
  }

  if (v301)
  {
    free(v301);
  }

  v375 = *MEMORY[0x277D85DE8];
}

- (void)setDisplayManagementConfigFromMetaData:(id *)a3 config:(id *)a4 hdrCtrl:(id *)a5 tcCtrl:(ToneCurve_Control *)a6
{
  a6->tmData.processingType = getProcessingType(a5, a6);
  a6->auxData.isDoViL2TrimAvailable = a3->var22[0].var0 != 0;
  overrideDefaults(a4, a5, a6, 1);
  if (a6->tmData.processingType == 5)
  {

    [(DolbyVisionDisplayManagement *)self setConvertConfig:a4 tcCtrl:a6 hdrCtrl:a5 auxData:&a6->auxData tmData:&a6->tmData];
  }

  else
  {

    [(DolbyVisionDisplayManagement *)self setDisplayManagementToneMappingConfigFromMetaData:a3 config:a4 tcCtrl:a6 hdrCtrl:a5 auxData:&a6->auxData dpcParam:&a4[1].var38];
  }
}

- (void)setDisplayManagementToneMappingConfigFromDictionary:(id *)a3 hdrCtrl:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 infoFrame:(id *)a6
{
  v200 = *MEMORY[0x277D85DE8];
  gradingAmbientEnvironmentType = a5->tmData.gradingAmbientEnvironmentType;
  if (gradingAmbientEnvironmentType)
  {
LABEL_5:
    if (gradingAmbientEnvironmentType != 1)
    {
      goto LABEL_15;
    }

    if (!GetConfig())
    {
      goto LABEL_15;
    }

    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0xE3u, 0) != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (!GetConfig() || (v10 = GetConfig(), (*HDRConfig::GetConfigEntryValue(v10, 0xE2u, 0) & 1) == 0))
  {
    gradingAmbientEnvironmentType = a5->tmData.gradingAmbientEnvironmentType;
    goto LABEL_5;
  }

LABEL_8:
  if (GetConfig() && (v12 = GetConfig(), *HDRConfig::GetConfigEntryValue(v12, 0xE4u, 0) == 23) || GetConfig() && (v13 = GetConfig(), *HDRConfig::GetConfigEntryValue(v13, 0xE4u, 0) == 24))
  {
    v14 = 1;
    goto LABEL_16;
  }

  if (GetConfig())
  {
    v15 = GetConfig();
    v14 = *HDRConfig::GetConfigEntryValue(v15, 0xE4u, 0) == 25;
    goto LABEL_16;
  }

LABEL_15:
  v14 = 0;
LABEL_16:
  a5->tmData.enableAUWDMv20 = !a5->enableHybridCanonicalRendering && v14;
  processingType = a5->tmData.processingType;
  if (processingType == 2)
  {
    hlg_setupTmConfig(a5->auxData.hlgTmPreset, a5, &a5->tmData, &a5->edrAdaptationData);
  }

  else if (processingType == 1)
  {
    hdr10_setupTmConfig(a5->auxData.hdr10TmPreset, a5, &a5->tmData.hdr10TmMode, &a5->edrAdaptationData);
  }

  if ((BYTE1(a3[1].var49) & 1) == 0)
  {
    v17 = a5->tmData.processingType;
    if (v17 == 4 || v17 == 2)
    {
      a5->targetMaxLinear = a5->Tmax_nits;
    }
  }

  p_var26 = &a3[1].var26;
  p_var10 = &a3[1].var10;
  a3->var28 = 0.0002442;
  a3->var54 = a4->var21;
  v20 = 256.0;
  if (a4->var14)
  {
    v20 = 0.0;
  }

  a3->var2 = 1157627904;
  *&a3->var0 = LODWORD(v20) | 0x4500000000000000;
  BitDepthFromSurfaceFormat = getBitDepthFromSurfaceFormat(a4->var8);
  v23 = ~(-1 << BitDepthFromSurfaceFormat) >> (BitDepthFromSurfaceFormat - 12);
  if (BitDepthFromSurfaceFormat <= 0xB)
  {
    v23 = (1 << (12 - BitDepthFromSurfaceFormat) << BitDepthFromSurfaceFormat) - (1 << (12 - BitDepthFromSurfaceFormat));
  }

  *&a3[1].var52 = v23 / 4095.0;
  if (a4->var17 == 16)
  {
    LODWORD(a3->var30) = 0xFFFF;
  }

  v24 = 0;
  var20 = a4->var20;
  *&v22 = *&a3->var22;
  v163 = v22;
  *&v22 = *&a3->var24;
  v166 = v22;
  *&v22 = *&a3->var26;
  do
  {
    v161 = v22;
    v26 = ATFMTLfloat2half_rtz(*var20);
    *(&v27 + 1) = *(&v163 + 1);
    v193 = v163;
    *(&v193 & 0xFFFFFFFFFFFFFFF9 | (2 * (v24 & 3))) = v26;
    *&v27 = v193;
    LOWORD(a3->var23) = WORD2(v193);
    v163 = v27;
    LODWORD(a3->var22) = v27;
    v28 = ATFMTLfloat2half_rtz(var20[3]);
    *(&v29 + 1) = *(&v166 + 1);
    v194 = v166;
    *(&v194 & 0xFFFFFFFFFFFFFFF9 | (2 * (v24 & 3))) = v28;
    *&v29 = v194;
    LOWORD(a3->var25) = WORD2(v194);
    v166 = v29;
    LODWORD(a3->var24) = v29;
    v30 = ATFMTLfloat2half_rtz(var20[6]);
    *(&v22 + 1) = *(&v161 + 1);
    v195 = v161;
    *(&v195 & 0xFFFFFFFFFFFFFFF9 | (2 * (v24 & 3))) = v30;
    *&v22 = v195;
    LOWORD(a3->var27) = WORD2(v195);
    a3->var26 = v22;
    ++v24;
    ++var20;
  }

  while (v24 != 3);
  *&a3->var55.on = xmmword_2508CF760;
  var22 = a4->var22;
  v31 = powf(a4->var21 / 10000.0, 0.1593);
  v32 = (v31 * 18.8515625 + 0.8359375) / (v31 * 18.6875 + 1.0);
  v33 = powf(v32, 78.844);
  if (v33 <= 1.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 1.0;
  }

  v35 = v33 < 0.0;
  v36 = 0.0;
  if (!v35)
  {
    v36 = v34;
  }

  v164 = v36;
  v37 = powf(var22 / 10000.0, 0.1593);
  v38 = (v37 * 18.8515625 + 0.8359375) / (v37 * 18.6875 + 1.0);
  v39 = powf(v38, 78.844);
  if (v39 <= 1.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 1.0;
  }

  if (v39 >= 0.0)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0.0;
  }

  var10 = a4->var10;
  if ((var10 <= 7 && ((1 << var10) & 0xB8) != 0 || a4->var29) && a5->tmData.gradingAmbientEnvironmentType == 1 && a5->tmData.processingType == 2 && *&a3[1].var54 >= 0.0)
  {
    if (GetConfig())
    {
      v43 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v43, 0xB8u, 0) == 1)
      {
        LOBYTE(a3[1].var53) = 1;
      }
    }
  }

  v197 = 0.0;
  if (GetConfig() && (v44 = GetConfig(), *HDRConfig::GetConfigEntryValue(v44, 0x1Fu, 0) == 1))
  {
    v45 = [(DolbyVisionDisplayManagement *)self getHistBasedToneMapping];
  }

  else
  {
    v45 = 0;
  }

  adjustPeakWhiteBasedOnContent(a3, a5, a4, a5->tmData.processingType, &a3->var66, &v197, &a3[1].var7, &a5->tmData.adjMaxEDRValue, a4->var21, &a5->tmData.adjTmax_nits, v45, a5->tmData.enableAUWDMv20);
  v46 = a5->targetMaxLinear * a5->auxData.targetDisplayContrastRatio;
  if (v46 <= 0.005)
  {
    v47 = a5->targetMaxLinear * a5->auxData.targetDisplayContrastRatio;
  }

  else
  {
    v47 = 0.005;
  }

  v48 = (var10 < 9) & (0x142u >> var10);
  if (v48)
  {
    targetMinLinear = a5->targetMinLinear;
    v50 = targetMinLinear <= 0.00005;
    v51 = targetMinLinear;
    if (v50)
    {
      v47 = 0.001;
    }

    else
    {
      v47 = v51;
    }
  }

  v52 = var10 - 3;
  v53 = powf(v47 / 10000.0, 0.1593);
  v54 = (v53 * 18.8515625 + 0.8359375) / (v53 * 18.6875 + 1.0);
  v159 = powf(v54, 78.844);
  v55 = 0.0;
  if ((*(a5 + 152) & 2) == 0)
  {
    v55 = v47;
  }

  a5->tmData.disp_Tmin_nits = v55;
  v56 = powf(a5->diffuseInNits / 10000.0, 0.1593);
  v57 = (v56 * 18.8515625 + 0.8359375) / (v56 * 18.6875 + 1.0);
  v58 = powf(v57, 78.844);
  v59 = 0;
  var19 = a4->var19;
  v62 = *&a3->var4;
  v61 = *&a3->var8;
  v63 = *&a3->var12;
  do
  {
    v64 = *var19 / 4095.0;
    v190 = v62;
    *(&v190 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = v64;
    v62 = v190;
    a3->var6 = *(&v190 + 2);
    *&a3->var4 = v62;
    v65 = var19[3] / 4095.0;
    v191 = v61;
    *(&v191 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = v65;
    v61 = v191;
    a3->var10 = *(&v191 + 2);
    *&a3->var8 = v61;
    v66 = var19[6] / 4095.0;
    v192 = v63;
    *(&v192 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = v66;
    v63 = v192;
    a3->var14 = *(&v192 + 2);
    *&a3->var12 = v63;
    ++v59;
    ++var19;
  }

  while (v59 != 3);
  if (v159 <= 1.0)
  {
    v67 = v159;
  }

  else
  {
    v67 = 1.0;
  }

  if (v58 <= 1.0)
  {
    v68 = v58;
  }

  else
  {
    v68 = 1.0;
  }

  if (v159 >= 0.0)
  {
    v69 = v67;
  }

  else
  {
    v69 = 0.0;
  }

  if (v58 >= 0.0)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0.0;
  }

  v71 = v197;
  a5->forwardDM_tMaxPq = v197;
  a5->forwardDM_tMinPq = v69;
  a5->crush = v41;
  a5->clip = v164;
  v72 = v164 + v41;
  v73 = (v164 + v41) * 0.5;
  if (v52 < 3)
  {
    v73 = 0.3;
  }

  a5->mid = v73;
  a5->dpcData.mode = a5->auxData.dpcMode;
  a5->dpcData.edrFactor = 1.0 / a5->maxEDRValue;
  a5->dpcData.rangeMax = 1.0;
  if (a5->targetTransferFunction == 16)
  {
    v74 = a5->targetMaxLinear / 10000.0;
    a5->dpcData.rangeMax = v74;
    if (a5->enableHybridCanonicalRendering)
    {
      a5->dpcData.rangeMax = a5->outputScaler * v74;
    }
  }

  a5->dpcData.gain = a5->auxData.dpcGain;
  a5->dpcData.enableGcpc = a5->gcpcData.on;
  a5->dpcData.gcpGammaValue = a5->gcpcData.gamma;
  a5->dpcData.gcpcRefWhiteNits = a5->diffuseInNits;
  v75 = v45;
  *&v76 = calculateDpcParamS(&a5->dpcData.mode, &a3[1].var38);
  a3->var67 = -10.0;
  v196 = 0;
  v77 = a5->tmData.processingType;
  if (v77 <= 2)
  {
    if (v77 == 1)
    {
      if (GetConfig())
      {
        v86 = GetConfig();
        v87 = self;
        if (*HDRConfig::GetConfigEntryValue(v86, 0x1Fu, 0) == 1)
        {
          v88 = [(DolbyVisionDisplayManagement *)self getHistBasedToneMapping];
        }

        else
        {
          v88 = 0;
        }
      }

      else
      {
        v88 = 0;
        v87 = self;
      }

      hdr10_setupTmParams(a3, a4, a5, v87->_dm40, v85, v88);

      goto LABEL_108;
    }

    if (v77 == 2)
    {
      if (GetConfig())
      {
        v78 = GetConfig();
        v79 = self;
        if (*HDRConfig::GetConfigEntryValue(v78, 0x1Fu, 0) == 1)
        {
          v80 = [(DolbyVisionDisplayManagement *)self getHistBasedToneMapping];
        }

        else
        {
          v80 = 0;
        }
      }

      else
      {
        v80 = 0;
        v79 = self;
      }

      [(DolbyVisionDisplayManagement *)v79 hlg_setupTmParams:a3 hdrCtrl:a4 tcCtrl:a5 dm40:v79->_dm40 applyPostRGBtoRGBMatrixScaler:&v196 pHistBasedToneMapping:v80];

      goto LABEL_108;
    }

    goto LABEL_95;
  }

  if (v77 == 4)
  {
    [(DolbyVisionDisplayManagement *)self setupDoViDmVersion:a3 tmData:&a5->tmData hdrCtrl:a4 tcCtrl:a5, v76];
    *&v89 = v41;
    *&v90 = v164;
    *&v91 = v69;
    *&v92 = v71;
    *&v93 = v70;
    [(DolbyVisionDisplayManagement *)self dovi84_setupTmParams:a3 hdrCtrl:a4 tcCtrl:a5 applyPostRGBtoRGBMatrixScaler:&v196 sMinPq:v48 sMaxPq:self->_dm40 tMinPq:v89 tMaxPq:v90 nominalPQ:v91 targetingDoviLLOrSDR:v92 dm40:v93];
    goto LABEL_100;
  }

  if (v77 != 3)
  {
LABEL_95:
    [(DolbyVisionDisplayManagement *)self setupDoViDmVersion:a3 tmData:&a5->tmData hdrCtrl:a4 tcCtrl:a5, v76];
    dovi_setupTmParams(a3, a4, a5, v41, v164, v69, v71, v70, v84, v48, self->_dm40);
LABEL_100:
    v94 = *&a5->doviTmParam.sl;
    brightAdjBySat2 = a5->doviTmParam.brightAdjBySat2;
    goto LABEL_110;
  }

  if (a4->var0 == 3)
  {
    var21 = a4->var21;
    *&a3->var66 = var21;
    v82 = (var21 / 1000.0);
    if (var21 - 401 > 0x63E)
    {
      v117 = log2(v82);
      v83 = pow(1.11099994, v117) * 1.20000005 + -1.0;
    }

    else
    {
      v83 = log10(v82) * 0.419999987 + 1.20000005 + -1.0;
    }

    v118 = v83;
    a3->var67 = v118;
    var15 = a4->var15;
    if (var15 != 1)
    {
      if (var15 == 12)
      {
        v130 = 0;
        v131 = *p_var10;
        v132 = *&a3[1].var14;
        v133 = &dword_2508CFB28;
        v134 = *&a3[1].var18;
        v135 = *&a3[1].var22;
        do
        {
          v136 = RGBP3toHLGY_coeff[v130];
          v185 = v135;
          *(&v185 & 0xFFFFFFFFFFFFFFF3 | (4 * (v130 & 3))) = v136;
          v135 = v185;
          a3[1].var24 = *(&v185 + 2);
          *&a3[1].var22 = v135;
          v137 = *(v133 - 3);
          v184 = v131;
          *(&v184 & 0xFFFFFFFFFFFFFFF3 | (4 * (v130 & 3))) = v137;
          v131 = v184;
          a3[1].var12 = DWORD2(v184);
          *p_var10 = v131;
          v138 = *v133;
          v182 = v132;
          *(&v182 & 0xFFFFFFFFFFFFFFF3 | (4 * (v130 & 3))) = v138;
          v132 = v182;
          a3[1].var16 = *(&v182 + 2);
          *&a3[1].var14 = v132;
          v139 = v133[3];
          v183 = v134;
          *(&v183 & 0xFFFFFFFFFFFFFFF3 | (4 * (v130 & 3))) = v139;
          v134 = v183;
          a3[1].var20 = *(&v183 + 2);
          *&a3[1].var18 = v134;
          ++v130;
          ++v133;
        }

        while (v130 != 3);
        goto LABEL_156;
      }

      if (var15 == 9)
      {
        v120 = 0;
        v121 = *p_var10;
        v122 = *&a3[1].var14;
        v123 = &dword_2508CFA98;
        v124 = *&a3[1].var18;
        v125 = *&a3[1].var22;
        do
        {
          v126 = RGB2020toHLGY_coeff[v120];
          v189 = v125;
          *(&v189 & 0xFFFFFFFFFFFFFFF3 | (4 * (v120 & 3))) = v126;
          v125 = v189;
          a3[1].var24 = *(&v189 + 2);
          *&a3[1].var22 = v125;
          v127 = *(v123 - 3);
          v188 = v121;
          *(&v188 & 0xFFFFFFFFFFFFFFF3 | (4 * (v120 & 3))) = v127;
          v121 = v188;
          a3[1].var12 = DWORD2(v188);
          *p_var10 = v121;
          v128 = *v123;
          v186 = v122;
          *(&v186 & 0xFFFFFFFFFFFFFFF3 | (4 * (v120 & 3))) = v128;
          v122 = v186;
          a3[1].var16 = *(&v186 + 2);
          *&a3[1].var14 = v122;
          v129 = v123[3];
          v187 = v124;
          *(&v187 & 0xFFFFFFFFFFFFFFF3 | (4 * (v120 & 3))) = v129;
          v124 = v187;
          a3[1].var20 = *(&v187 + 2);
          *&a3[1].var18 = v124;
          ++v120;
          ++v123;
        }

        while (v120 != 3);
LABEL_156:
        v152 = *&a3[1].var26;
        v151 = *&a3[1].var30;
        v153 = *&a3[1].var34;
        v154 = -3;
        v155 = &dword_2508CFA74;
        v94 = xmmword_2508CF7C0;
        do
        {
          v156 = *(v155 - 3);
          v177 = v152;
          *(&v177 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v154 - 1) & 3))) = v156;
          v152 = v177;
          a3[1].var28 = *(&v177 + 2);
          *&a3[1].var26 = v152;
          v157 = *v155;
          v176 = v151;
          *(&v176 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v154 - 1) & 3))) = v157;
          v151 = v176;
          a3[1].var32 = *(&v176 + 2);
          *&a3[1].var30 = v151;
          v158 = v155[3];
          v175 = v153;
          *(&v175 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v154 - 1) & 3))) = v158;
          v153 = v175;
          a3[1].var36 = *(&v175 + 2);
          *&a3[1].var34 = v153;
          ++v155;
          v109 = __CFADD__(v154++, 1);
        }

        while (!v109);
        goto LABEL_109;
      }

      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v140 = logInstanceID;
        }

        else
        {
          v140 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v199 = WORD1(v140);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: hdrCtrl->colourPrimaries == kIOSurfaceTagColorPrimaries_ITU_R_709_2 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 7549\n", buf, 0xCu);
        }

        prevLogInstanceID = v140;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: hdrCtrl->colourPrimaries == kIOSurfaceTagColorPrimaries_ITU_R_709_2 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/DolbyVisionDisplayManagement.mm at line 7549\n", buf, 2u);
      }
    }

    v141 = 0;
    v142 = *p_var10;
    v143 = *&a3[1].var14;
    v144 = &dword_2508CFAE0;
    v145 = *&a3[1].var18;
    v146 = *&a3[1].var22;
    do
    {
      v147 = RGB709toHLGY_coeff[v141];
      v181 = v146;
      *(&v181 & 0xFFFFFFFFFFFFFFF3 | (4 * (v141 & 3))) = v147;
      v146 = v181;
      a3[1].var24 = *(&v181 + 2);
      *&a3[1].var22 = v146;
      v148 = *(v144 - 3);
      v180 = v142;
      *(&v180 & 0xFFFFFFFFFFFFFFF3 | (4 * (v141 & 3))) = v148;
      v142 = v180;
      a3[1].var12 = DWORD2(v180);
      *p_var10 = v142;
      v149 = *v144;
      v178 = v143;
      *(&v178 & 0xFFFFFFFFFFFFFFF3 | (4 * (v141 & 3))) = v149;
      v143 = v178;
      a3[1].var16 = *(&v178 + 2);
      *&a3[1].var14 = v143;
      v150 = v144[3];
      v179 = v145;
      *(&v179 & 0xFFFFFFFFFFFFFFF3 | (4 * (v141 & 3))) = v150;
      v145 = v179;
      a3[1].var20 = *(&v179 + 2);
      *&a3[1].var18 = v145;
      ++v141;
      ++v144;
    }

    while (v141 != 3);
    goto LABEL_156;
  }

  a3->var67 = 0.0;
LABEL_108:
  v94 = xmmword_2508CF7C0;
LABEL_109:
  brightAdjBySat2 = 0.0;
LABEL_110:
  *&a3->var36 = v94;
  a3->var65 = brightAdjBySat2;
  *&a3->var50 = vcvt_f32_f64(vdivq_f64(xmmword_2508CF7D0, vdupq_lane_s64(COERCE__INT64(v164 * 876.0), 0)));
  a3->var53 = a5->maxEDRValue;
  a3->var55.gain = v71;
  *&a3->var68 = a5->AmbientInNits;
  setupOutputScale(a3, a5, a4);
  LODWORD(v96) = 0;
  if ((*(a5 + 152) & 2) == 0)
  {
    v97 = a4->var10;
    if ((v97 == 6 || v97 == 1) && LODWORD(a3[1].var46) == 3)
    {
      v98 = (v72 - (v69 + v71)) * *&ChromaVectorWeightDM31;
    }

    else
    {
      v98 = (v72 - (v69 + v71)) * *&chromVectorWeight;
    }

    *&v96 = v98 * 0.5;
  }

  a3->var56 = v96;
  targetColorPrimaries = a5->targetColorPrimaries;
  if (targetColorPrimaries == *MEMORY[0x277CC4C20])
  {
    v100 = &LMStoRGB_coeff_709;
  }

  else
  {
    v100 = &LMStoRGB_coeff_P3;
    if (targetColorPrimaries != *MEMORY[0x277CC4C30] && targetColorPrimaries == *MEMORY[0x277CC4C18])
    {
      v100 = &LMStoRGB_coeff_2020;
    }
  }

  var49 = a3->var49;
  *&v96 = *&a3->var16;
  v165 = v96;
  *&v96 = *&a3->var18;
  v168 = v96;
  v102 = v100 + 3;
  v103 = -3;
  *&v96 = *&a3->var20;
  do
  {
    v162 = v96;
    v104 = ATFMTLfloat2half_rtz(var49 * *(v102 - 3));
    *(&v105 + 1) = *(&v165 + 1);
    v172 = v165;
    *(&v172 & 0xFFFFFFFFFFFFFFF9 | (2 * ((v103 - 1) & 3))) = v104;
    *&v105 = v172;
    LOWORD(a3->var17) = WORD2(v172);
    v165 = v105;
    LODWORD(a3->var16) = v105;
    v106 = ATFMTLfloat2half_rtz(var49 * *v102);
    *(&v107 + 1) = *(&v168 + 1);
    v173 = v168;
    *(&v173 & 0xFFFFFFFFFFFFFFF9 | (2 * ((v103 - 1) & 3))) = v106;
    *&v107 = v173;
    LOWORD(a3->var19) = WORD2(v173);
    v168 = v107;
    LODWORD(a3->var18) = v107;
    v108 = ATFMTLfloat2half_rtz(var49 * v102[3]);
    *(&v96 + 1) = *(&v162 + 1);
    v174 = v162;
    *(&v174 & 0xFFFFFFFFFFFFFFF9 | (2 * ((v103 - 1) & 3))) = v108;
    *&v96 = v174;
    LOWORD(a3->var21) = WORD2(v174);
    LODWORD(a3->var20) = v96;
    ++v102;
    v109 = __CFADD__(v103++, 1);
  }

  while (!v109);
  a3->var40 = 0.0;
  if (v196)
  {
    targetMaxLinear = a5->targetMaxLinear;
    if (a5->atmEnable && a5->targetMaxLinearOutput > a5->diffuseInNits && a4->var0 == 3)
    {
      targetMaxLinear = a5->targetMaxLinearOutput;
    }

    v111 = 0;
    v112 = targetMaxLinear * var49;
    v114 = *p_var26;
    v113 = *&a3[1].var30;
    v115 = *&a3[1].var34;
    do
    {
      v171 = v114;
      *(&v171 & 0xFFFFFFFFFFFFFFF3 | (4 * (v111 & 3))) = *(&v171 & 0xFFFFFFFFFFFFFFF3 | (4 * (v111 & 3))) * v112;
      v114 = v171;
      v170 = v113;
      *(&v170 & 0xFFFFFFFFFFFFFFF3 | (4 * (v111 & 3))) = *(&v170 & 0xFFFFFFFFFFFFFFF3 | (4 * (v111 & 3))) * v112;
      v113 = v170;
      v169 = v115;
      *(&v169 & 0xFFFFFFFFFFFFFFF3 | (4 * (v111 & 3))) = *(&v169 & 0xFFFFFFFFFFFFFFF3 | (4 * (v111 & 3))) * v112;
      v115 = v169;
      ++v111;
    }

    while (v111 != 3);
    a3[1].var28 = *(&v114 + 2);
    a3[1].var32 = *(&v113 + 2);
    *p_var26 = v114;
    *&a3[1].var30 = v113;
    a3[1].var36 = *(&v115 + 2);
    *&a3[1].var34 = v115;
  }

  v116 = *MEMORY[0x277D85DE8];
}

- (void)setDisplayManagementConfigFromDictionary:(id *)a3 hdrCtrl:(id *)a4 tcCtrl:(ToneCurve_Control *)a5 infoFrame:(id *)a6
{
  a5->tmData.processingType = getProcessingType(a4, a5);
  a5->auxData.isDoViL2TrimAvailable = 0;
  overrideDefaults(a3, a4, a5, 1);
  if (a5->tmData.processingType == 5)
  {

    [(DolbyVisionDisplayManagement *)self setConvertConfig:a3 tcCtrl:a5 hdrCtrl:a4 auxData:&a5->auxData tmData:&a5->tmData];
  }

  else
  {

    [(DolbyVisionDisplayManagement *)self setDisplayManagementToneMappingConfigFromDictionary:a3 hdrCtrl:a4 tcCtrl:a5 infoFrame:a6];
  }
}

- (void)getToneCurves:(id *)a3 tcCtrl:(ToneCurve_Control *)a4 tmData:(_TMData *)a5
{
  if (!a3->var19)
  {
    var3 = a3->var3;
    var1 = a3->var1;
    if (var3 >= var1)
    {
      a3->var3 = var1;
      var3 = var1;
    }

    v10 = sqrtf((var3 - a3->var2) / (var1 - a3->var0));
    if (v10 <= 1.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1.0;
    }

    v12 = log2f(a3->var8);
    v13 = sqrtf(v12 / log2f(a3->var7));
    var9 = a3->var9;
    *var9 = (v13 * sqrtf(1.0 / v11)) / 0.33333;
    var5 = a3->var5;
    var6 = a3->var6;
    var4 = a3->var4;
    v18 = var5 + (var6 - var5) * 0.85;
    v19 = v13 * (1.0 - v11);
    v20 = v18;
    if (var4 > v20)
    {
      a3->var4 = v20;
      var4 = v18;
    }

    var14 = a3->var14;
    v22 = powf(var14 / 10000.0, 0.1593);
    v23 = (v22 * 18.8515625 + 0.8359375) / (v22 * 18.6875 + 1.0);
    v24 = powf(v23, 78.844);
    if (v24 <= 1.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    if (v24 >= 0.0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = v19 * (var4 * (((var4 - a3->var0) + (var4 - a3->var0)) / (a3->var1 - a3->var0)));
    if ((var5 - v27) >= a3->var2)
    {
      var2 = var5 - v27;
    }

    else
    {
      var2 = a3->var2;
    }

    if ((var6 - v27) >= a3->var3)
    {
      v29 = a3->var3;
    }

    else
    {
      v29 = var6 - v27;
    }

    v30 = var4 - v27;
    if ((a5->edrAdaptationMode == 1 || a5->ambAdaptationMode == 1) && a3->var13 >= 0.0 && var14 >= 0.0 && !a3->var18)
    {
      if (GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x4Fu, 0) & 1) != 0) || a4->tmData.processingType != 4)
      {
        v30 = fminf(v30, 0.5);
        v33 = &middata_3LED;
      }

      else
      {
        v33 = &middata_3LED_84;
      }

      var15 = a3->var15;
      v36 = adjustMidTone(v26, var15, AB_3LED, BR_3LED, 8, 9, v33) + 0.0;
      v31 = adjustMidTone(v26, var15, AB_3LED, BR_3LED, 8, 9, sat_3LED);
      v37 = v30 + v36;
      v38 = a3->var6;
      if (v38 <= 0.001)
      {
        v39 = 0.949999988;
      }

      else
      {
        v39 = (a3->var4 / v38);
      }

      v40 = v39 * 1.875 + -0.7937;
      v41 = v40;
      if (v40 > 0.95)
      {
        v40 = 0.95;
      }

      if (v41 < 0.8)
      {
        v40 = 0.8;
      }

      v42 = v29 * v40;
      if (v37 <= v42)
      {
        v42 = v30 + v36;
      }

      if (v37 >= var2)
      {
        v30 = v42;
      }

      else
      {
        v30 = var2;
      }

      var9 = a3->var9;
    }

    else
    {
      v31 = 0.0;
      if (v30 >= var2)
      {
        v34 = v29 * 0.95;
        if (v34 < v30)
        {
          v30 = v34;
        }
      }

      else
      {
        v30 = var2;
      }
    }

    *a3->var20 = v31;
    v43 = *var9;
    v44 = powf(a3->var5, *var9);
    v45 = powf(a3->var4, v43);
    v46 = powf(a3->var6, v43);
    v47 = powf(var2, 3.0);
    v48 = powf(v30, 3.0);
    v49 = powf(v29, 3.0);
    v50 = (((v48 * v45) * (v46 - v44)) + ((v49 * v46) * (v44 - v45))) + ((v47 * v44) * (v45 - v46));
    var11 = a3->var11;
    *a3->var10 = (((v48 * ((v49 - v47) * (v44 * v46))) + (((v48 - v49) * (v45 * v46)) * v47)) + (((v47 - v48) * (v44 * v45)) * v49)) / v50;
    *var11 = (((v48 * -((v49 * v46) - (v44 * v47))) + (-((v48 * v45) - (v46 * v49)) * v47)) + (-((v47 * v44) - (v45 * v48)) * v49)) / v50;
    *a3->var12 = ((((v46 - v45) * v47) - ((v46 - v44) * v48)) + ((v45 - v44) * v49)) / v50;
  }
}

- (void)getToneCurvesDM31:(id *)a3
{
  var3 = a3->var3;
  var1 = a3->var1;
  if (var3 >= var1)
  {
    a3->var3 = var1;
    var3 = var1;
  }

  v6 = (var1 + a3->var0) * 0.5;
  v7 = v6 - ((var3 + a3->var2) * 0.5);
  v8 = log2f(a3->var8);
  v9 = sqrtf(v8 / log2f(a3->var7));
  var9 = a3->var9;
  *var9 = ((v7 + 1.0) * v9) / 0.33333;
  var4 = a3->var4;
  var5 = a3->var5;
  v13 = ((v9 * (v7 * (((var4 - v6) * 3.0) + 1.0))) * 0.5) + 0.0;
  if ((var5 - v13) >= a3->var2)
  {
    var2 = var5 - v13;
  }

  else
  {
    var2 = a3->var2;
  }

  var6 = a3->var6;
  if ((var6 - v13) >= a3->var3)
  {
    v16 = a3->var3;
  }

  else
  {
    v16 = var6 - v13;
  }

  v17 = (var6 - var5);
  v18 = var5 + v17 * 0.85;
  v19 = var5 + v17 * 0.15;
  if (var4 > v18)
  {
    var4 = v18;
  }

  if (var4 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = var4;
  }

  a3->var4 = v20;
  v21 = (v16 - var2);
  v22 = var2 + v21 * 0.85;
  v23 = var2 + v21 * 0.15;
  v24 = v20 - v13;
  if (v24 <= v22)
  {
    v25 = v24 + 0.0;
  }

  else
  {
    v25 = v22;
  }

  if (v25 <= v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = v25;
  }

  v27 = *var9;
  v28 = powf(var5, *var9);
  v29 = powf(v20, v27);
  v30 = powf(var6, v27);
  v31 = powf(var2, 3.0);
  v32 = powf(v26, 3.0);
  v33 = powf(v16, 3.0);
  v34 = (((v30 - v28) * (v29 * v32)) + ((v30 * v33) * (v28 - v29))) + ((v28 * v31) * (v29 - v30));
  var11 = a3->var11;
  *a3->var10 = (((((v28 * v30) * (v33 - v31)) * v32) + (((v30 * v29) * (v32 - v33)) * v31)) + (((v28 * v29) * (v31 - v32)) * v33)) / v34;
  *var11 = (((-((v30 * v33) - (v28 * v31)) * v32) + (-((v29 * v32) - (v30 * v33)) * v31)) + (-((v28 * v31) - (v29 * v32)) * v33)) / v34;
  *a3->var12 = ((((v30 - v29) * v31) - ((v30 - v28) * v32)) + ((v29 - v28) * v33)) / v34;
}

- (void)getSat2Parameters:(id *)a3
{
  v3 = 0;
  v4 = *&a3->var66;
  v5 = [DolbyVisionDisplayManagement getSat2Parameters:]::sss;
  while (v4 >= *v5)
  {
    ++v3;
    v5 += 6;
    if (v3 == 10)
    {
      LODWORD(v3) = 0;
      break;
    }
  }

  v6 = &[DolbyVisionDisplayManagement getSat2Parameters:]::sss[6 * v3];
  v7 = &[DolbyVisionDisplayManagement getSat2Parameters:]::sss[6 * v3];
  v8 = (*v6 - v4) / (*v6 - *(v7 - 6));
  *&a3->var57 = vmlaq_n_f32(vmulq_n_f32(*(v7 - 5), v8), *(v6 + 1), 1.0 - v8);
  *&a3->var63 = (v8 * *(v7 - 1)) + (*(v6 + 5) * (1.0 - v8));
}

@end