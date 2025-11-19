@interface AdaptiveTM
- (float)computeFrameAPLFromLinearHistData:(float *)a3 histBinInLinear:(float *)a4;
- (id)init:(id)a3;
- (int)adaptiveToneMappingAveragePixelLevel:(id *)a3 DM:(id)a4 TCControl:(ToneCurve_Control *)a5 HDRControl:(id *)a6 LLDoVi:(BOOL)a7;
- (void)adaptiveToneMappingCalcStats;
- (void)adaptiveToneMappingConstraintParam;
- (void)adaptiveToneMappingManagement:(id *)a3 DMConfig:(id *)a4 DM:(id)a5 TCControl:(ToneCurve_Control *)a6 HDRControl:(id *)a7 hdr10InfoFrame:(id *)a8 LLDoVi:(BOOL)a9 frameNumber:(unsigned int)a10;
- (void)adaptiveToneMappingSearch:(id *)a3 DMConfig:(id *)a4 DM:(id)a5 TCControl:(ToneCurve_Control *)a6 HDRControl:(id *)a7 hdr10InfoFrame:(id *)a8 LLDoVi:(BOOL)a9;
- (void)adaptiveToneMappingTemporalProcess:(id *)a3 DMConfig:(id *)a4 DM:(id)a5 TCControl:(ToneCurve_Control *)a6 HDRControl:(id *)a7 hdr10InfoFrame:(id *)a8;
- (void)dealloc;
@end

@implementation AdaptiveTM

- (id)init:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AdaptiveTM;
  v6 = [(AdaptiveTM *)&v14 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_histTM, a3);
  v8 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
  v7->_normHistHeightInLinear = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
  v7->_atmHistBinCentroidInLinear = v9;
  if (v9 && (v10 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL), (v7->_idxLinear = v10) != 0) && (v11 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL), (v7->_histBinMapped = v11) != 0))
  {
    v7->_apceFactor = 1.0;
    *&v7->_maxAvgPixelLevelRatioTm = 0x3F80000000000000;
    v12 = v7;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

- (void)dealloc
{
  [(AdaptiveTM *)self adaptiveToneMappingLog];
  normHistHeightInLinear = self->_normHistHeightInLinear;
  if (normHistHeightInLinear)
  {
    free(normHistHeightInLinear);
    self->_normHistHeightInLinear = 0;
  }

  atmHistBinCentroidInLinear = self->_atmHistBinCentroidInLinear;
  if (atmHistBinCentroidInLinear)
  {
    free(atmHistBinCentroidInLinear);
    self->_atmHistBinCentroidInLinear = 0;
  }

  idxLinear = self->_idxLinear;
  if (idxLinear)
  {
    free(idxLinear);
    self->_idxLinear = 0;
  }

  histBinMapped = self->_histBinMapped;
  if (histBinMapped)
  {
    free(histBinMapped);
    self->_histBinMapped = 0;
  }

  v7.receiver = self;
  v7.super_class = AdaptiveTM;
  [(AdaptiveTM *)&v7 dealloc];
}

- (float)computeFrameAPLFromLinearHistData:(float *)a3 histBinInLinear:(float *)a4
{
  v4 = 0;
  result = 0.0;
  do
  {
    v6 = vmulq_f32(*&a3[v4], *&a4[v4]);
    result = (((result + v6.f32[0]) + v6.f32[1]) + v6.f32[2]) + v6.f32[3];
    v4 += 4;
  }

  while (v4 != 128);
  return result;
}

- (void)adaptiveToneMappingConstraintParam
{
  displayAveragePixelThreshold = self->_displayAveragePixelThreshold;
  targetMaxLinear = self->_targetMaxLinear;
  v4 = (displayAveragePixelThreshold + -1.0) / (targetMaxLinear - self->_displaySustainedBrightnessInNits);
  v5 = displayAveragePixelThreshold - v4 * targetMaxLinear;
  self->_constraintSlope = v4;
  self->_constraintIntercept = v5;
}

- (int)adaptiveToneMappingAveragePixelLevel:(id *)a3 DM:(id)a4 TCControl:(ToneCurve_Control *)a5 HDRControl:(id *)a6 LLDoVi:(BOOL)a7
{
  v10 = a4;
  processingType = a5->tmData.processingType;
  v12 = [v10 getDolbyVisionDM4];
  v13 = 0;
  self->_avgPixelLevelRatioTm = 0.0;
  if (processingType > 1)
  {
    if (processingType == 2)
    {
      v53 = 2;
      v54 = v10;
      v39 = 0;
      hlgTmMode = a5->tmData.hlgTmMode;
      histBinCentroidInLinear = self->_histBinCentroidInLinear;
      do
      {
        ScalingFactor = hlg_getScalingFactor(histBinCentroidInLinear[v39] / 1000.0, 128, a3, &a5->hlgTmParam, &a5->edrAdaptationParam, &a5->ambAdaptationParam, hlgTmMode, v12);
        histBinCentroidInLinear = self->_histBinCentroidInLinear;
        v43 = ScalingFactor * histBinCentroidInLinear[v39];
        targetMaxLinearOutput = a5->targetMaxLinearOutput;
        if (targetMaxLinearOutput < v43)
        {
          v43 = targetMaxLinearOutput;
        }

        self->_histBinMapped[v39++] = v43;
      }

      while (v39 != 128);
    }

    else
    {
      if (processingType != 4)
      {
        goto LABEL_37;
      }

      v53 = 4;
      v54 = v10;
      v19 = 0;
      histBinCentroidInPQ = self->_histBinCentroidInPQ;
      do
      {
        ScalingFactorS_C = dovi84_getScalingFactorS_C(a3, &a5->doviTmParam, &a5->edrAdaptationParam, &a5->ambAdaptationParam, 1, v12, histBinCentroidInPQ[v19]);
        histBinCentroidInPQ = self->_histBinCentroidInPQ;
        v22 = ScalingFactorS_C * histBinCentroidInPQ[v19];
        v23 = v22 < 0.00000073096;
        if (v22 < 0.00000073096)
        {
          v22 = -(v22 + -0.0000014619);
        }

        v24 = flt_2508CD850[v23];
        v25 = powf(v22, 0.012683);
        v26 = fmax(((v25 + -0.83594) / ((v25 * -18.688) + 18.852)), 0.0);
        v27 = v24 * powf(v26, 6.2774);
        v28 = a5->targetMaxLinearOutput;
        if (v28 < v27)
        {
          v27 = v28;
        }

        self->_histBinMapped[v19++] = v27;
      }

      while (v19 != 128);
    }
  }

  else if (processingType)
  {
    if (processingType != 1)
    {
      goto LABEL_37;
    }

    v53 = 1;
    v54 = v10;
    v14 = 0;
    v15 = self->_histBinCentroidInLinear;
    do
    {
      ScalingFactorS_L_NormIn = hdr10_getScalingFactorS_L_NormIn(&a5->hdr10TmParam, &a5->edrAdaptationParam, &a5->ambAdaptationParam, a3, v12, v15[v14] / 10000.0);
      v15 = self->_histBinCentroidInLinear;
      v17 = ScalingFactorS_L_NormIn * v15[v14];
      v18 = a5->targetMaxLinearOutput;
      if (v18 < v17)
      {
        v17 = v18;
      }

      self->_histBinMapped[v14++] = v17;
    }

    while (v14 != 128);
  }

  else
  {
    v53 = 0;
    v54 = v10;
    v29 = 0;
    v30 = self->_histBinCentroidInPQ;
    do
    {
      v31 = dovi_getScalingFactorS_C(a3, &a5->doviTmParam, &a5->edrAdaptationParam, &a5->ambAdaptationParam, v12, v30[v29]);
      v30 = self->_histBinCentroidInPQ;
      v32 = v31 * v30[v29];
      v33 = v32 < 0.00000073096;
      if (v32 < 0.00000073096)
      {
        v32 = -(v32 + -0.0000014619);
      }

      v34 = flt_2508CD850[v33];
      v35 = powf(v32, 0.012683);
      v36 = fmax(((v35 + -0.83594) / ((v35 * -18.688) + 18.852)), 0.0);
      v37 = v34 * powf(v36, 6.2774);
      v38 = a5->targetMaxLinearOutput;
      if (v38 < v37)
      {
        v37 = v38;
      }

      self->_histBinMapped[v29++] = v37;
    }

    while (v29 != 128);
  }

  v10 = v54;
  [(HistBasedToneMapping *)self->_histTM avgPixelLevel];
  if (v53 == 2)
  {
    v46 = 1000.0;
  }

  else
  {
    v46 = 10000.0;
  }

  self->_avgPixelLevelRatio = v45 / v46;
  [(AdaptiveTM *)self computeFrameAPLFromLinearHistData:self->_normHistHeight histBinInLinear:self->_histBinMapped];
  self->_avgPixelLevelTm = v47;
  targetMaxLinear = a5->targetMaxLinear;
  if (v53 == 2)
  {
    v47 = v47 / 1000.0 * targetMaxLinear;
    self->_avgPixelLevelTm = v47;
  }

  v49 = v47 / targetMaxLinear * self->_apceFactor;
  *&v49 = v49;
  self->_avgPixelLevelRatioTm = *&v49;
  *&v49 = targetMaxLinear;
  [(AdaptiveTM *)self getTargetAveragePixelThreshold:v49];
  avgPixelLevelRatioTm = self->_avgPixelLevelRatioTm;
  targetAveragePixelThreshold = self->_targetAveragePixelThreshold;
  if (avgPixelLevelRatioTm <= targetAveragePixelThreshold)
  {
    v13 = avgPixelLevelRatioTm >= targetAveragePixelThreshold;
  }

  else
  {
    v13 = 2;
  }

LABEL_37:

  return v13;
}

- (void)adaptiveToneMappingSearch:(id *)a3 DMConfig:(id *)a4 DM:(id)a5 TCControl:(ToneCurve_Control *)a6 HDRControl:(id *)a7 hdr10InfoFrame:(id *)a8 LLDoVi:(BOOL)a9
{
  v26 = a5;
  displaySustainedBrightnessInNits = self->_displaySustainedBrightnessInNits;
  if (GetConfig())
  {
    Config = GetConfig();
    v17 = *HDRConfig::GetConfigEntryValue(Config, 0x30u, 0);
  }

  else
  {
    v17 = 0.0;
  }

  v18 = 0;
  if (v17 == 0.0)
  {
    v17 = displaySustainedBrightnessInNits;
  }

  v19 = v17;
  v20 = (a6->targetMaxLinear - v17) / 255.0;
  v21 = 255;
  v22 = v26;
  while (1)
  {
    v23 = (v18 + v21) / 2;
    a6->targetMaxLinear = v19 + v20 * v23;
    if (a7->var0 == 1)
    {
      [v22 setDisplayManagementConfigFromMetaData:a3 config:a4 hdrCtrl:a7 tcCtrl:a6];
    }

    else
    {
      [v22 setDisplayManagementConfigFromDictionary:a4 hdrCtrl:a7 tcCtrl:a6 infoFrame:a8];
    }

    v24 = [(AdaptiveTM *)self adaptiveToneMappingAveragePixelLevel:a4 DM:v26 TCControl:a6 HDRControl:a7 LLDoVi:a9];
    if (v24 == 2)
    {
      v21 = v23 - 1;
      v22 = v26;
      goto LABEL_14;
    }

    v25 = v24 == 1;
    v22 = v26;
    if (v25)
    {
      break;
    }

    v18 = v23 + 1;
LABEL_14:
    self->_atmTargetMaxLinear = a6->targetMaxLinear;
    if (v18 > v21)
    {
      goto LABEL_17;
    }
  }

  self->_atmTargetMaxLinear = a6->targetMaxLinear;
LABEL_17:
  ++self->_atmFrames;
}

- (void)adaptiveToneMappingTemporalProcess:(id *)a3 DMConfig:(id *)a4 DM:(id)a5 TCControl:(ToneCurve_Control *)a6 HDRControl:(id *)a7 hdr10InfoFrame:(id *)a8
{
  v34 = a5;
  v13 = [(HistBasedToneMapping *)self->_histTM tempMode];
  if (v13 == 1)
  {
    goto LABEL_6;
  }

  if (v13 != 2)
  {
    if (v13 == 3)
    {
      v14 = [(HistBasedToneMapping *)self->_histTM statLinkedListCurr];
      v15 = [v14 numOfProcessedFrames];
      v16 = [(HistBasedToneMapping *)self->_histTM bufSize];

      if ([(HistBasedToneMapping *)self->_histTM isSceneChanged])
      {
        goto LABEL_8;
      }

      histTM = self->_histTM;
      atmTargetMaxLinear = self->_atmTargetMaxLinear;
      v32 = [(HistBasedToneMapping *)histTM statLinkedListCurr];
      v29 = [v32 targetMaxBuffer];
      v30 = [(HistBasedToneMapping *)self->_histTM statLinkedListCurr];
      -[HistBasedToneMapping FIRFilterHistStat:statBuffer:currIndex:numOfProcessedFrames:](histTM, "FIRFilterHistStat:statBuffer:currIndex:numOfProcessedFrames:", v29, (v15 - 1) % v16, [v30 numOfProcessedFrames] - 1, atmTargetMaxLinear);
      self->_filteredTargetMaxLinear = v31;

      goto LABEL_11;
    }

LABEL_6:
    self->_filteredTargetMaxLinear = self->_atmTargetMaxLinear;
    goto LABEL_11;
  }

  if ([(HistBasedToneMapping *)self->_histTM isSceneChanged])
  {
LABEL_8:
    v17 = self->_atmTargetMaxLinear;
    v18 = [(HistBasedToneMapping *)self->_histTM statLinkedListCurr];
    *[v18 targetMaxBuffer] = v17;
    self->_filteredTargetMaxLinear = v17;

    goto LABEL_11;
  }

  v19 = [(HistBasedToneMapping *)self->_histTM statLinkedListCurr];
  v20 = *[v19 targetMaxBuffer];
  v21 = self->_atmTargetMaxLinear;
  v22 = [(HistBasedToneMapping *)self->_histTM statLinkedListCurr];
  v23 = [v22 targetMaxBuffer];
  v24 = v20;
  v25 = v21;
  v26 = ((v25 * 0.2) + (v24 * 0.8));
  *v23 = v26;
  self->_filteredTargetMaxLinear = v26;

LABEL_11:
  if (self->_atmTargetMaxLinear != self->_targetMaxLinear)
  {
    a6->targetMaxLinear = self->_filteredTargetMaxLinear;
    if (a7->var0 == 1)
    {
      [v34 setDisplayManagementConfigFromMetaData:a3 config:a4 hdrCtrl:a7 tcCtrl:a6];
    }

    else
    {
      [v34 setDisplayManagementConfigFromDictionary:a4 hdrCtrl:a7 tcCtrl:a6 infoFrame:a8];
    }
  }
}

- (void)adaptiveToneMappingCalcStats
{
  avgPixelLevelRatioTm = self->_avgPixelLevelRatioTm;
  if (avgPixelLevelRatioTm > self->_maxAvgPixelLevelRatioTm)
  {
    self->_maxAvgPixelLevelRatioTm = avgPixelLevelRatioTm;
  }

  if (avgPixelLevelRatioTm < self->_minAvgPixelLevelRatioTm)
  {
    self->_minAvgPixelLevelRatioTm = avgPixelLevelRatioTm;
  }

  frameNumber = self->_frameNumber;
  v4 = frameNumber++;
  self->_averageAPLThreshold = (self->_displayAveragePixelThreshold + (self->_averageAPLThreshold * v4)) / frameNumber;
  v5.f64[0] = self->_targetMaxLinear;
  v5.f64[1] = self->_filteredTargetMaxLinear;
  *&self->_averageDPL = vcvt_f32_f64(vdivq_f64(vaddq_f64(v5, vcvtq_f64_f32(vmul_n_f32(*&self->_averageDPL, v4))), vdupq_lane_s64(COERCE__INT64(frameNumber), 0)));
}

- (void)adaptiveToneMappingManagement:(id *)a3 DMConfig:(id *)a4 DM:(id)a5 TCControl:(ToneCurve_Control *)a6 HDRControl:(id *)a7 hdr10InfoFrame:(id *)a8 LLDoVi:(BOOL)a9 frameNumber:(unsigned int)a10
{
  v27 = a5;
  if (![(HistBasedToneMapping *)self->_histTM isDataValid])
  {
    a6->atmEnable = 0;
    goto LABEL_27;
  }

  self->_displayAveragePixelThreshold = a6->averagePixelThreshold;
  self->_displaySustainedBrightnessInNits = a6->sustainedBrightnessInNits;
  targetMaxLinear = a6->targetMaxLinear;
  a6->targetMaxLinearOutput = a6->targetMaxLinear;
  self->_targetMaxLinear = targetMaxLinear;
  self->_atmTargetMaxLinear = targetMaxLinear;
  [(AdaptiveTM *)self adaptiveToneMappingConstraintParam];
  if (self->_displayAveragePixelThreshold < 1.0)
  {
    self->_frameNumber = a10;
    self->_histHeight = [(HistBasedToneMapping *)self->_histTM getHistDataPtr];
    self->_sumHist = [(HistBasedToneMapping *)self->_histTM getSumHist];
    self->_normHistHeight = [(HistBasedToneMapping *)self->_histTM normHistHeight];
    self->_histBinCentroidInPQ = [(HistBasedToneMapping *)self->_histTM histBinCentroidInPQ];
    self->_histBinCentroidInLinear = [(HistBasedToneMapping *)self->_histTM histBinCentroidInLinear];
    [(HistBasedToneMapping *)self->_histTM avgPixelLevel];
    self->_avgPixelLevel = v17;
    var0 = a7->var0;
    if (a7->var0 == 3)
    {
      v19 = 2;
    }

    else if (var0 == 2)
    {
      v19 = 1;
    }

    else
    {
      if (var0 != 1)
      {
        goto LABEL_27;
      }

      if (a7->var17 != 18)
      {
        self->_scalingFactorMode = 0;
        goto LABEL_12;
      }

      v19 = 3;
    }

    self->_scalingFactorMode = v19;
LABEL_12:
    if (GetConfig())
    {
      Config = GetConfig();
      LODWORD(v20) = *HDRConfig::GetConfigEntryValue(Config, 0x2Fu, 0);
      if (*&v20 != 0.0)
      {
        self->_apceFactor = *&v20;
      }
    }

    v22 = [(AdaptiveTM *)self adaptiveToneMappingAveragePixelLevel:a4 DM:v27 TCControl:a6 HDRControl:a7 LLDoVi:a9, v20];
    if (v22 == 2)
    {
      LOBYTE(v26) = a9;
      [(AdaptiveTM *)self adaptiveToneMappingSearch:a3 DMConfig:a4 DM:v27 TCControl:a6 HDRControl:a7 hdr10InfoFrame:a8 LLDoVi:v26];
      if (self->_prevAplRange >= 2)
      {
        goto LABEL_20;
      }
    }

    else if (self->_prevAplRange != 2)
    {
LABEL_20:
      self->_prevAplRange = v22;
      goto LABEL_21;
    }

    [(AdaptiveTM *)self adaptiveToneMappingLog];
    goto LABEL_20;
  }

LABEL_21:
  [(AdaptiveTM *)self adaptiveToneMappingTemporalProcess:a3 DMConfig:a4 DM:v27 TCControl:a6 HDRControl:a7 hdr10InfoFrame:a8];
  [(AdaptiveTM *)self adaptiveToneMappingCalcStats];
  frameNumber = self->_frameNumber;
  if (frameNumber)
  {
    if (GetConfig())
    {
      v24 = GetConfig();
      v25 = *HDRConfig::GetConfigEntryValue(v24, 0x31u, 0);
    }

    else
    {
      v25 = 0;
    }

    if (!(frameNumber % v25))
    {
      [(AdaptiveTM *)self adaptiveToneMappingLog];
    }
  }

LABEL_27:
}

@end