@interface DISPHDRProcessing
- (BOOL)processFrameByDISPWithComposerData:(id *)data DM:(id)m constraintDM:(id)dM DMData:(id *)mData tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl hdr10InfoFrame:(id *)frame layer0:(__IOSurface *)self0 layer1:(__IOSurface *)self1 frameNumebr:(unint64_t)self2;
- (DISPHDRProcessing)init;
- (int64_t)iterateDISPColorConfig:(int)config config:(id)a4;
- (void)decideStageStatus:(BOOL *)status DMConfig:(id *)config AlgoMode:(int *)mode DISPHDRContext:(EngineHDRContext *)context;
- (void)getDISPColorConfigOutputScale:(id *)scale DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context;
- (void)getTmLutInput;
- (void)hdr10_createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control HDRControl:(id *)rControl TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)self0;
- (void)hdr10_mixLUTFromTCControl:(ToneCurve_Control *)control TCControlConstr:(ToneCurve_Control *)constr withFactor:(float)factor;
- (void)hdr10_tm_createLUTFromDMConfig:(id *)config TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam TCControl:(ToneCurve_Control *)control EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam DM:(id)m;
- (void)hlg_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)self0;
- (void)hlg_mixLUTFromTCControl:(ToneCurve_Control *)control TCControlConstr:(ToneCurve_Control *)constr withFactor:(float)factor;
- (void)hlg_tm_createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)mode;
- (void)iterateDISPColorConfigCleanUp;
- (void)populateDISPColorConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(EngineHDRContext *)context;
- (void)populateDISPColorConfigFixedDegamma:(BOOL)degamma AlgoMode:(int)mode Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)self0;
- (void)populateDISPColorConfigPostToneMapCSC:(BOOL)c AlgoMode:(int)mode Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)self0;
- (void)populateDISPColorConfigPreToneMapCSC:(BOOL)c AlgoMode:(int)mode Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)self0;
- (void)populateDISPColorConfigToneMapDpc:(BOOL)dpc Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context;
- (void)populateDISPColorConfigToneMapLUT:(BOOL)t Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context;
- (void)populateDISPColorConfigToneMapParametric:(BOOL)parametric Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context;
- (void)populateDISPToneMapConfig:(char *)config DMConfig:(id *)mConfig DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context;
- (void)processDISPColorConfig:(__IOMobileFramebuffer *)config layer:(unsigned int)layer;
- (void)setDisplayManagementParametricConfig:(ToneCurve_Control *)config HDRControl:(id *)control;
- (void)setDisplayManagementParametricConfigToneMap:(ToneCurve_Control *)map HDRControl:(id *)control;
- (void)setDisplayManagementParametricConfigToneMapBezier:(_ebzCurveParam *)bezier TMSendC:(float)c;
- (void)setDisplayManagementParametricConfigToneMapHDR10:(ToneCurve_Control *)r10 HDRControl:(id *)control;
- (void)setDisplayManagementParametricConfigToneMapHLG:(ToneCurve_Control *)g HDRControl:(id *)control;
- (void)setDisplayManagementParametricConfigToneMapSpline:(_splCurveParam *)spline;
- (void)setupDISPHDRContext:(id *)context TCControl:(ToneCurve_Control *)control DMData:(id *)data input:(__IOSurface *)input;
@end

@implementation DISPHDRProcessing

- (DISPHDRProcessing)init
{
  v6.receiver = self;
  v6.super_class = DISPHDRProcessing;
  v2 = [(ProcessingEngine *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(DISPHDRProcessing *)v2 getTmLutInput];
    v4 = v3;
  }

  return v3;
}

- (BOOL)processFrameByDISPWithComposerData:(id *)data DM:(id)m constraintDM:(id)dM DMData:(id *)mData tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl hdr10InfoFrame:(id *)frame layer0:(__IOSurface *)self0 layer1:(__IOSurface *)self1 frameNumebr:(unint64_t)self2
{
  mCopy = m;
  dMCopy = dM;
  v19 = [(DISPHDRProcessing *)self isContentSupported:hdrControl];
  if (v19)
  {
    if (GetConfig())
    {
      Config = GetConfig();
      v21 = *HDRConfig::GetConfigEntryValue(Config, 2u, 0);
    }

    else
    {
      v21 = 0;
    }

    *&self->_dispHC.contentType = 0u;
    *&self->_dispHC.convertType = 0u;
    *&self->_dispHC.outputFormat = 0u;
    *&self->_dispHC.outputTransferFunction = 0u;
    *&self->_dispHC.inputHeight = 0u;
    *&self->_dispHC.outputHeight = 0u;
    *&self->_dispHC.dpcParam.alphaPrime = 0u;
    *&self->_dispHC.dpcParam.gcpcGamma = 0u;
    bzero(self->super._anon_90, 0x210uLL);
    self->super._frameNumber = numebr;
    sDispDumpContext = v21 & 1;
    if (v21)
    {
      dword_27F3DDDAC = ccDumpStart;
      unk_27F3DDDB0 = ccDumpStart + ccDumpNumber - 1;
    }

    [(ProcessingEngine *)self setupToneMappingWithDmData:mData tcControl:control hdrControl:hdrControl dmConfig:self->super._anon_90 DM:mCopy constraintDM:dMCopy hdr10InfoFrame:frame];
    [(DISPHDRProcessing *)self setupDISPHDRContext:hdrControl TCControl:control DMData:mData input:layer0];
    [(DISPHDRProcessing *)self runPreFrameDumpActions:&self->_dispHC tcControl:control hdrControl:hdrControl];
    [(DISPHDRProcessing *)self populateDISPColorConfig:self->super._anon_90 DMData:mData tcControl:control hdrControl:hdrControl MSRHDRContext:&self->_dispHC];
    [(DISPHDRProcessing *)self runPostFrameDumpActions];
  }

  return v19;
}

- (void)processDISPColorConfig:(__IOMobileFramebuffer *)config layer:(unsigned int)layer
{
  IOMobileFramebufferSwapSetToneMapConfig();
  if (self->FixedDegamma.mode == 1)
  {
    IOMobileFramebufferSwapSetICCCurve();
  }

  if (self->PreToneMapCSC.mode == 1)
  {
    IOMobileFramebufferSwapSetICCMatrix();
  }

  if (self->ToneMapLUT.mode == 1)
  {
    IOMobileFramebufferSwapSetICCCurve();
  }

  if (self->ToneMapMixFactorLUT.mode == 1)
  {
    IOMobileFramebufferSwapSetICCCurve();
  }

  if (self->PostToneMapCSC.mode == 1)
  {

    IOMobileFramebufferSwapSetICCMatrix();
  }
}

- (void)iterateDISPColorConfigCleanUp
{
  ToneMapLUT_xsamples = self->ToneMapLUT_xsamples;
  if (ToneMapLUT_xsamples)
  {
    free(ToneMapLUT_xsamples);
    self->ToneMapLUT_xsamples = 0;
  }

  ToneMapLUT_ysamples = self->ToneMapLUT_ysamples;
  if (ToneMapLUT_ysamples)
  {
    free(ToneMapLUT_ysamples);
    self->ToneMapLUT_ysamples = 0;
  }

  ToneMapMixFactorLUT_xsamples = self->ToneMapMixFactorLUT_xsamples;
  if (ToneMapMixFactorLUT_xsamples)
  {
    free(ToneMapMixFactorLUT_xsamples);
    self->ToneMapMixFactorLUT_xsamples = 0;
  }

  ToneMapMixFactorLUT_ysamples = self->ToneMapMixFactorLUT_ysamples;
  if (ToneMapMixFactorLUT_ysamples)
  {
    free(ToneMapMixFactorLUT_ysamples);
    self->ToneMapMixFactorLUT_ysamples = 0;
  }
}

- (int64_t)iterateDISPColorConfig:(int)config config:(id)a4
{
  v5 = a4;
  (*(v5 + 2))(v5, 0, 0, &self->ToneMapConfig);
  if (self->FixedDegamma.mode == 1)
  {
    p_curveData = &self->FixedDegamma.curveData;
  }

  else
  {
    p_curveData = 0;
  }

  (*(v5 + 2))(v5, 2, 7, p_curveData);
  if (self->PreToneMapCSC.mode == 1)
  {
    p_colorMatrix = &self->PreToneMapCSC.colorMatrix;
  }

  else
  {
    p_colorMatrix = 0;
  }

  (*(v5 + 2))(v5, 1, 2, p_colorMatrix);
  if (self->ToneMapLUT.mode == 1)
  {
    v8 = &self->ToneMapLUT.curveData;
  }

  else
  {
    v8 = 0;
  }

  (*(v5 + 2))(v5, 2, 3, v8);
  if (self->ToneMapMixFactorLUT.mode == 1)
  {
    v9 = &self->ToneMapMixFactorLUT.curveData;
  }

  else
  {
    v9 = 0;
  }

  (*(v5 + 2))(v5, 2, 6, v9);
  if (self->PostToneMapCSC.mode == 1)
  {
    v10 = &self->PostToneMapCSC.colorMatrix;
  }

  else
  {
    v10 = 0;
  }

  (*(v5 + 2))(v5, 1, 3, v10);
  if (self->DpcCurve.mode == 1)
  {
    v11 = &self->DpcCurve.curveData;
  }

  else
  {
    v11 = 0;
  }

  (*(v5 + 2))(v5, 2, 11, v11);
  [(DISPHDRProcessing *)self iterateDISPColorConfigCleanUp];

  return -17000;
}

- (void)setupDISPHDRContext:(id *)context TCControl:(ToneCurve_Control *)control DMData:(id *)data input:(__IOSurface *)input
{
  p_dispHC = &self->_dispHC;
  var10 = context->var10;
  self->_dispHC.contentType = context->var0;
  self->_dispHC.displayType = var10;
  var3 = context->var3;
  self->_dispHC.processingType = control->tmData.processingType;
  self->_dispHC.operation = var3;
  PixelFormat = IOSurfaceGetPixelFormat(input);
  p_dispHC->inputFormatRaw = PixelFormat;
  p_dispHC->inputFormat = getFourCCforType(PixelFormat);
  var17 = context->var17;
  p_dispHC->inputColorSpace = context->var18;
  p_dispHC->inputTransferFunction = var17;
  p_dispHC->originalInputTransferFunction = context->var28;
  *&p_dispHC->enableReshaping = 0;
  p_dispHC->inputWidth = IOSurfaceGetWidth(input);
  p_dispHC->inputHeight = IOSurfaceGetHeight(input);
}

- (void)decideStageStatus:(BOOL *)status DMConfig:(id *)config AlgoMode:(int *)mode DISPHDRContext:(EngineHDRContext *)context
{
  if ((context->contentType & 0xFFFFFFFE) == 2)
  {
    *status = 16843009;
    status[4] = LOBYTE(config[1].var42);
    if (GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x55u, 0) == 1))
    {
      *&v8 = 0x100000001;
      *(&v8 + 1) = 0x100000001;
      *mode = v8;
      mode[4] = 1;
    }

    else
    {
      *mode = 0;
      *(mode + 1) = 0;
      mode[4] = 0;
    }
  }
}

- (void)populateDISPToneMapConfig:(char *)config DMConfig:(id *)mConfig DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context
{
  contentType = self->_dispHC.contentType;
  if (contentType == 2)
  {
    p_ToneMapConfig = &self->ToneMapConfig;
    self->ToneMapConfig.toneMapMode_Enable = 2;
    v18 = &self->ToneMapConfig.var0.toneMapMode2 + 4;
    v19 = -3;
    do
    {
      *&v18[-3].msbPos2 = (((*(&mConfig[1].var22 + ((v19 - 1) & 3)) / 100.0) * 16384.0) + 0.5);
      *&v18->msbPos0 = 164;
      v18 = (v18 + 4);
    }

    while (!__CFADD__(v19++, 1));
    v16 = 2;
    v17 = 14;
  }

  else
  {
    if (contentType != 3)
    {
      return;
    }

    v9 = 0;
    p_ToneMapConfig = &self->ToneMapConfig;
    self->ToneMapConfig.toneMapMode_Enable = 2;
    do
    {
      var15 = hdrControl->var15;
      v12 = p_ToneMapConfig + v9;
      if (var15 == 1)
      {
        v13 = &RGB709toHLGY_coeff;
      }

      else
      {
        v13 = &RGB2020toHLGY_coeff;
      }

      if (var15 == 12)
      {
        v14 = &RGBP3toHLGY_coeff;
      }

      else
      {
        v14 = v13;
      }

      v15 = (*&v14[v9] * 127.0);
      *(v12 + 7) = v15;
      *(v12 + 3) = v15;
      v9 += 4;
    }

    while (v9 != 12);
    v16 = 0;
    v17 = 7;
  }

  *(&p_ToneMapConfig->var0.toneMapMode2 + 56) = 0u;
  *(&p_ToneMapConfig->var0.toneMapMode2 + 40) = 0u;
  p_ToneMapConfig->var0.toneMapMode1.lumaShiftBits = v17;
  p_ToneMapConfig->var0.toneMapMode1.lumaOutputSel = v16;
  p_ToneMapConfig->var0.toneMapMode1.histtype = 0;
  p_ToneMapConfig->var0.toneMapMode1.scaleShiftBits = self->_scaleShiftBits;
  p_ToneMapConfig->var0.toneMapMode1.mixLookupBasis = 0;
  p_ToneMapConfig->var0.toneMapMode1.lumaAvgOffset = 0;
}

- (void)populateDISPColorConfigFixedDegamma:(BOOL)degamma AlgoMode:(int)mode Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)self0
{
  p_FixedDegamma = &self->FixedDegamma;
  if (degamma)
  {
    *&p_FixedDegamma->mode = 0x700000001;
    if (context->contentType == 2)
    {
      v11 = 11;
      goto LABEL_8;
    }

    if (context->contentType == 3)
    {
      v11 = 10;
LABEL_8:
      self->FixedDegamma.curveData.type = v11;
    }
  }

  else
  {
    p_FixedDegamma->mode = 0;
  }
}

- (void)populateDISPColorConfigPreToneMapCSC:(BOOL)c AlgoMode:(int)mode Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)self0
{
  p_PreToneMapCSC = &self->PreToneMapCSC;
  if (c)
  {
    *&p_PreToneMapCSC->mode = 0x200000001;
    if (context->contentType == 2)
    {
      *self->PreToneMapCSC.colorMatrix.in_offset = 0;
      self->PreToneMapCSC.colorMatrix.in_offset[2] = 0.0;
      *self->PreToneMapCSC.colorMatrix.out_offset = 0;
      self->PreToneMapCSC.colorMatrix.out_offset[2] = 0.0;
      v18 = *&config[1].var10;
      v19 = *&config[1].var14;
      v20 = *&config[1].var18;
      HIDWORD(v18) = v19.i32[0];
      *self->PreToneMapCSC.colorMatrix.matrix = v18;
      *&self->PreToneMapCSC.colorMatrix.matrix[4] = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v20, 8uLL);
      LODWORD(self->PreToneMapCSC.colorMatrix.matrix[8]) = v20.i32[2];
    }

    else if (context->contentType == 3)
    {
      v11 = 0;
      *self->PreToneMapCSC.colorMatrix.in_offset = 0;
      self->PreToneMapCSC.colorMatrix.in_offset[2] = 0.0;
      *self->PreToneMapCSC.colorMatrix.out_offset = 0;
      self->PreToneMapCSC.colorMatrix.out_offset[2] = 0.0;
      v12 = &self->PreToneMapCSC.colorMatrix.matrix[1];
      v13 = xmmword_2508CD910;
      v14 = vdupq_n_s64(2uLL);
      v15 = vdupq_n_s64(9uLL);
      do
      {
        if (vmovn_s64(vcgtq_u64(v15, v13)).u8[0])
        {
          if ((v11 & 0xA) == 0 || v11 == 8)
          {
            v17 = 0.083333;
          }

          else
          {
            v17 = 0.0;
          }

          *(v12 - 1) = v17;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v13)).i32[1])
        {
          *v12 = 0.0;
        }

        v11 += 2;
        v13 = vaddq_s64(v13, v14);
        v12 += 2;
      }

      while (v11 != 10);
    }
  }

  else
  {
    p_PreToneMapCSC->mode = 0;
  }
}

- (void)getDISPColorConfigOutputScale:(id *)scale DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context
{
  v10 = 1.0;
  if (control->atmEnable && (targetMaxLinear = control->targetMaxLinearOutput, targetMaxLinear > control->diffuseInNits))
  {
    if (context->processingType == 2)
    {
      v10 = control->targetMaxLinear / targetMaxLinear;
    }
  }

  else
  {
    targetMaxLinear = control->targetMaxLinear;
  }

  processingType = context->processingType;
  if (processingType == 1)
  {
    if (context->outputTransferFunction != 16)
    {
      v10 = 10000.0 / targetMaxLinear;
    }

    self->_tmOutputScale = v10 / 100.0;
    if (GetConfig())
    {
      Config = GetConfig();
      ConfigEntryValue = HDRConfig::GetConfigEntryValue(Config, 0x58u, 0);
      tmOutputScale = self->_tmOutputScale;
      v18 = 21.0;
      if (*ConfigEntryValue == 1)
      {
        tmOutputScale = tmOutputScale * control->maxEDRValue;
        self->_tmOutputScale = tmOutputScale;
      }
    }

    else
    {
      tmOutputScale = self->_tmOutputScale;
      v18 = 21.0;
    }

    goto LABEL_31;
  }

  if (processingType != 2)
  {
    return;
  }

  outputTransferFunction = context->outputTransferFunction;
  if (outputTransferFunction == 13)
  {
    v10 = 1.0;
    goto LABEL_23;
  }

  if (outputTransferFunction != 16)
  {
    if (BYTE1(scale[1].var49))
    {
      goto LABEL_23;
    }

    v14 = *&scale->var66 / targetMaxLinear;
    goto LABEL_21;
  }

  if (BYTE1(scale[1].var49) == 1)
  {
    v14 = targetMaxLinear / 10000.0;
LABEL_21:
    v10 = v14;
    goto LABEL_23;
  }

  v10 = *&scale->var66 / 10000.0;
LABEL_23:
  self->_tmOutputScale = v10;
  if (GetConfig())
  {
    v19 = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(v19, 0x58u, 0) == 1)
    {
      if (context->displayType == 2 && (Sdiv_nits = control->tmData.Sdiv_nits, targetMaxLinear > Sdiv_nits))
      {
        v21 = targetMaxLinear / Sdiv_nits * self->_tmOutputScale;
      }

      else
      {
        v21 = control->maxEDRValue * self->_tmOutputScale;
      }

      self->_tmOutputScale = v21;
    }
  }

  tmOutputScale = self->_tmOutputScale;
  v18 = 24.0;
LABEL_31:
  self->_scaleShiftBits = (v18 - ceilf(log2f(tmOutputScale)));
}

- (void)populateDISPColorConfigToneMapLUT:(BOOL)t Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context
{
  v33 = *MEMORY[0x277D85DE8];
  p_ToneMapLUT = &self->ToneMapLUT;
  if (!t)
  {
    p_ToneMapLUT->mode = 0;
    goto LABEL_48;
  }

  *&p_ToneMapLUT->mode = 0x300000001;
  self->ToneMapLUT.curveData.type = 9;
  self->ToneMapLUT.curveData.var0.table.count = 754;
  v15 = malloc_type_malloc(0xBC8uLL, 0x100004052888210uLL);
  self->ToneMapLUT_xsamples = v15;
  if (!v15)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v25 = logInstanceID;
      }

      else
      {
        v25 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v31 = 134217984;
      v32 = WORD1(v25);
      v26 = MEMORY[0x277D86220];
      v27 = " [1.450.54] #%04llx ToneMapLUT_xsamples memory allocation failed!";
      goto LABEL_41;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      v28 = MEMORY[0x277D86220];
      v29 = " [1.450.54] ToneMapLUT_xsamples memory allocation failed!";
      goto LABEL_47;
    }

LABEL_48:
    v30 = *MEMORY[0x277D85DE8];
    return;
  }

  p_ToneMapLUT->curveData.var0.table.samples = v15;
  v16 = malloc_type_malloc(0xBC8uLL, 0x100004052888210uLL);
  self->ToneMapLUT_ysamples = v16;
  if (!v16)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v25 = logInstanceID;
      }

      else
      {
        v25 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v31 = 134217984;
      v32 = WORD1(v25);
      v26 = MEMORY[0x277D86220];
      v27 = " [1.450.54] #%04llx ToneMapLUT_ysamples memory allocation failed!";
      goto LABEL_41;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      v28 = MEMORY[0x277D86220];
      v29 = " [1.450.54] ToneMapLUT_ysamples memory allocation failed!";
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  p_ToneMapLUT->curveData.var0.nonuniformtable.ysamples = v16;
  [(DISPHDRProcessing *)self getDISPColorConfigOutputScale:config DMData:data tcControl:control hdrControl:hdrControl DISPHDRContext:context];
  lutInput = self->_lutInput;
  p_ToneMapLUT->curveData.var0.polycurve.segcurvorder[0] = LODWORD(self->_lutInput[753]);
  p_ToneMapLUT->curveData.var0.param.d = self->_scalingFactorTableBuffer[753] * self->_tmOutputScale;
  memcpy(p_ToneMapLUT->curveData.var0.table.samples, self->_lutInput, 0xBC8uLL);
  for (i = 0; i != 754; ++i)
  {
    p_ToneMapLUT->curveData.var0.nonuniformtable.ysamples[i] = self->_scalingFactorTableBuffer[i] * self->_tmOutputScale;
  }

  if (context->contentType != 2)
  {
    goto LABEL_48;
  }

  p_ToneMapMixFactorLUT = &self->ToneMapMixFactorLUT;
  *&self->ToneMapMixFactorLUT.mode = 0x600000001;
  self->ToneMapMixFactorLUT.curveData.type = 9;
  self->ToneMapMixFactorLUT.curveData.var0.table.count = 754;
  v20 = malloc_type_malloc(0xBC8uLL, 0x100004052888210uLL);
  self->ToneMapMixFactorLUT_xsamples = v20;
  if (!v20)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v25 = logInstanceID;
      }

      else
      {
        v25 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v31 = 134217984;
      v32 = WORD1(v25);
      v26 = MEMORY[0x277D86220];
      v27 = " [1.450.54] #%04llx ToneMapMixFactorLUT_xsamples memory allocation failed!";
      goto LABEL_41;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    LOWORD(v31) = 0;
    v28 = MEMORY[0x277D86220];
    v29 = " [1.450.54] ToneMapMixFactorLUT_xsamples memory allocation failed!";
    goto LABEL_47;
  }

  self->ToneMapMixFactorLUT.curveData.var0.table.samples = v20;
  v21 = malloc_type_malloc(0xBC8uLL, 0x100004052888210uLL);
  self->ToneMapMixFactorLUT_ysamples = v21;
  if (!v21)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v25 = logInstanceID;
      }

      else
      {
        v25 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v31 = 134217984;
      v32 = WORD1(v25);
      v26 = MEMORY[0x277D86220];
      v27 = " [1.450.54] #%04llx ToneMapMixFactorLUT_ysamples memory allocation failed!";
LABEL_41:
      _os_log_impl(&dword_250836000, v26, OS_LOG_TYPE_DEFAULT, v27, &v31, 0xCu);
LABEL_42:
      prevLogInstanceID = v25;
      goto LABEL_48;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    LOWORD(v31) = 0;
    v28 = MEMORY[0x277D86220];
    v29 = " [1.450.54] ToneMapMixFactorLUT_ysamples memory allocation failed!";
LABEL_47:
    _os_log_impl(&dword_250836000, v28, OS_LOG_TYPE_DEFAULT, v29, &v31, 2u);
    goto LABEL_48;
  }

  self->ToneMapMixFactorLUT.curveData.var0.nonuniformtable.ysamples = v21;
  self->ToneMapMixFactorLUT.curveData.var0.polycurve.segcurvorder[0] = LODWORD(self->_lutInput[753]);
  lumaMixFactorTableBuffer = self->_lumaMixFactorTableBuffer;
  p_ToneMapMixFactorLUT->curveData.var0.param.d = lumaMixFactorTableBuffer[753];
  memcpy(p_ToneMapMixFactorLUT->curveData.var0.table.samples, lutInput, 0xBC8uLL);
  ysamples = p_ToneMapMixFactorLUT->curveData.var0.nonuniformtable.ysamples;
  v24 = *MEMORY[0x277D85DE8];

  memcpy(ysamples, lumaMixFactorTableBuffer, 0xBC8uLL);
}

- (void)populateDISPColorConfigToneMapParametric:(BOOL)parametric Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context
{
  v57 = *MEMORY[0x277D85DE8];
  if (!parametric)
  {
    v11 = 28752;
LABEL_40:
    *(&self->super.super.isa + v11) = 0;
    goto LABEL_41;
  }

  if (context->contentType == 3)
  {
    p_artisticOOTFParam = &control->hlgTmParam.artisticOOTFParam;
    *&self->ToneMapOotf.mode = 0x200000001;
    self->ToneMapOotf.curveData.type = 1;
    self->ToneMapOotf.curveData.var0.table.count = LODWORD(control->hlgTmParam.systemGamma);
  }

  else
  {
    p_artisticOOTFParam = &control->hdr10TmParam;
  }

  *&self->ToneMapOetf.mode = 0x800000001;
  self->ToneMapOetf.curveData.type = 16;
  self->ToneMapOetf.curveData.var0.table.count = control->tmData.Smax_nits;
  curveType = p_artisticOOTFParam->tmCurveParam.curveType;
  if (curveType > 1)
  {
    if (curveType == 2)
    {
      *&self->ToneMapPolyCurve.mode = 0x300000001;
      self->ToneMapPolyCurve.curveData.type = 14;
      *&self->ToneMapPolyCurve.curveData.var0.param.gamma = *&config->var37;
      self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvorder[1] = LODWORD(config->var39);
      self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvorder[2] = 1051372203;
      self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvorder[3] = LODWORD(config->var36);
    }

    else if (curveType == 3)
    {
      [(DolbyVisionDM4 *)self->_dm40 getDM4Params:v54, prefix, config, data];
      *&self->ToneMapPolyCurve.mode = 0x300000001;
      self->ToneMapPolyCurve.curveData.type = 12;
      *&self->ToneMapPolyCurve.curveData.var0.param.gamma = 0x100000004;
      *(&self->ToneMapPolyCurve.curveData.var0.tmcurve + 84) = vrev64_s32(*&v54[3]);
      self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvorder[1] = 3;
      v21 = *v54;
      *(&self->ToneMapPolyCurve.curveData.var0.tmcurve + 44) = *v54;
      v56[0] = -v21;
      v56[1] = 1.0;
      PolyGeneric2PolyStd(v56, 2, 3, &v55, self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvcoeff[1]);
    }
  }

  else if (curveType)
  {
    if (curveType == 1)
    {
      *&self->ToneMapPolyCurve.mode = 0x300000001;
      *&self->ToneMapPolyCurve.curveData.var0.param.gamma = 0x100000005;
      self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvebound[0] = p_artisticOOTFParam->tmCurveParam.param.spl.XsC[0];
      v13 = &self->ToneMapPolyCurve.curveData.var0.tmcurve + 44;
      self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvcoeff[0][0] = p_artisticOOTFParam->tmCurveParam.param.spl.YsC[0] * p_artisticOOTFParam->tm_Tend_C;
      v14 = &self->ToneMapPolyCurve.curveData.var0.tmcurve + 84;
      self->ToneMapPolyCurve.curveData.type = 12;
      p_a = &self->ToneMapPolyCurve.curveData.var0.param.a;
      self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvcoeff[0][1] = 0.0;
      n = p_artisticOOTFParam->tmCurveParam.param.spl.n;
      if (n > 1)
      {
        v17 = &self->ToneMapPolyCurve.curveData.var0.tmcurve + 128;
        v18 = &p_artisticOOTFParam->tmCurveParam.param.hdr10Plus + 1052;
        v19 = 1;
        while (1)
        {
          LODWORD(p_a[v19]) = 3;
          *&v13[4 * v19] = p_artisticOOTFParam->tmCurveParam.param.spl.XsC[v19];
          if (!p_artisticOOTFParam->tmCurveParam.param.spl.n)
          {
            break;
          }

          v20 = 0;
          do
          {
            *&v17[4 * v20] = *&v18[4 * v20];
            ++v20;
            n = p_artisticOOTFParam->tmCurveParam.param.spl.n;
          }

          while (v20 < n);
          ++v19;
          v17 += 44;
          v18 += 60;
          if (v19 >= n)
          {
            goto LABEL_25;
          }
        }

        n = 0;
      }

LABEL_25:
      LODWORD(p_a[n]) = 1;
      *&v13[4 * p_artisticOOTFParam->tmCurveParam.param.spl.n] = 1065353216;
      *&v14[44 * p_artisticOOTFParam->tmCurveParam.param.spl.n] = p_artisticOOTFParam->tmCurveParam.param.spl.XsC[p_artisticOOTFParam->tmCurveParam.param.spl.n + 5] * p_artisticOOTFParam->tm_Tend_C;
      *&v14[44 * p_artisticOOTFParam->tmCurveParam.param.spl.n + 4] = 0;
    }
  }

  else
  {
    p_ToneMapPolyCurve = &self->ToneMapPolyCurve;
    *&self->ToneMapPolyCurve.mode = 0x300000001;
    self->ToneMapPolyCurve.curveData.type = 12;
    *&self->ToneMapPolyCurve.curveData.var0.param.gamma = 0x100000004;
    self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvebound[0] = p_artisticOOTFParam->tmCurveParam.param.spl.XsC[0];
    self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvcoeff[0][0] = p_artisticOOTFParam->tmCurveParam.param.spl.linCs[0][0];
    v23 = &self->ToneMapPolyCurve.curveData.var0.tmcurve + 84;
    self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvcoeff[0][1] = p_artisticOOTFParam->tmCurveParam.param.spl.linCs[0][1];
    v24 = p_artisticOOTFParam->tmCurveParam.param.spl.n;
    if (v24 > 1)
    {
      v25 = 0;
      v26 = 144;
      v27 = 244;
      do
      {
        v28 = &p_ToneMapPolyCurve->mode + v25;
        v28[6] = 3;
        v28[16] = *(&p_artisticOOTFParam->tmCurveParam.param.hdr10Plus.numBezierAnchors + v25);
        v29 = (&p_ToneMapPolyCurve->mode + v26);
        *v29 = *(&p_artisticOOTFParam->on + v27);
        v30 = *(&p_artisticOOTFParam->Smin_nits + v27);
        v29[1] = v30;
        v29[2] = v30;
        v29[3] = *(&p_artisticOOTFParam->Smin_nits + v27);
        v31 = v25 + 2;
        ++v25;
        v24 = p_artisticOOTFParam->tmCurveParam.param.spl.n;
        v26 += 44;
        v27 += 16;
      }

      while (v31 < v24);
    }

    self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvorder[v24] = 1;
    self->ToneMapPolyCurve.curveData.var0.polycurve.segcurvebound[p_artisticOOTFParam->tmCurveParam.param.spl.n] = 1.0;
    *&v23[44 * p_artisticOOTFParam->tmCurveParam.param.spl.n] = p_artisticOOTFParam->tmCurveParam.param.spl.linCs[1][0];
    *&v23[44 * p_artisticOOTFParam->tmCurveParam.param.spl.n + 4] = p_artisticOOTFParam->tmCurveParam.param.spl.linCs[1][1];
  }

  if (context->contentType == 2)
  {
    *&self->ToneMapMixFactorCurve.mode = 0x600000001;
    self->ToneMapMixFactorCurve.curveData.type = 15;
    self->ToneMapMixFactorCurve.curveData.var0.param.gamma = -p_artisticOOTFParam->lumaMixXMinRatio / (p_artisticOOTFParam->lumaMixXMaxRatio - p_artisticOOTFParam->lumaMixXMinRatio);
    self->ToneMapMixFactorCurve.curveData.var0.param.a = 1.0 / (p_artisticOOTFParam->lumaMixXMaxRatio - p_artisticOOTFParam->lumaMixXMinRatio);
    lumaMixYMinRatio = p_artisticOOTFParam->lumaMixYMinRatio;
    self->ToneMapMixFactorCurve.curveData.var0.param.b = lumaMixYMinRatio;
    self->ToneMapMixFactorCurve.curveData.var0.param.c = p_artisticOOTFParam->lumaMixYMaxRatio - lumaMixYMinRatio;
    self->ToneMapMixFactorCurve.curveData.var0.polycurve.segcurvorder[3] = LODWORD(p_artisticOOTFParam->lumaMixPower);
  }

  p_ToneMapEdrPolyCurve = &self->ToneMapEdrPolyCurve;
  if (control->edrAdaptationParam.on)
  {
    *&p_ToneMapEdrPolyCurve->mode = 0x400000001;
    *&self->ToneMapEdrPolyCurve.curveData.var0.param.gamma = 0x100000004;
    self->ToneMapEdrPolyCurve.curveData.var0.polycurve.segcurvebound[0] = control->edrAdaptationParam.Xs[0];
    self->ToneMapEdrPolyCurve.curveData.var0.polycurve.segcurvcoeff[0][0] = control->edrAdaptationParam.linCs[0][0];
    self->ToneMapEdrPolyCurve.curveData.type = 12;
    self->ToneMapEdrPolyCurve.curveData.var0.polycurve.segcurvcoeff[0][1] = control->edrAdaptationParam.linCs[0][1];
    v34 = control->edrAdaptationParam.n;
    if (v34 > 1)
    {
      v35 = &self->ToneMapEdrPolyCurve.curveData.var0.polycurve.segcurvebound[1];
      v36 = &control->edrAdaptationParam.Xs[1];
      v37 = &self->ToneMapEdrPolyCurve.curveData.var0.tmcurve + 7;
      v38 = &control->edrAdaptationParam.polyCs[0][1];
      for (i = 1; i < v34; ++i)
      {
        *(v35 - 10) = 3;
        v40 = *v36++;
        *v35++ = v40;
        v37[-1].c3 = *(v38 - 1);
        v41 = *v38;
        v37[-1].m = *v38;
        v37[-1].n = v41;
        v42 = *v38;
        v38 += 4;
        v37->c1 = v42;
        v37 = (v37 + 44);
        v34 = control->edrAdaptationParam.n;
      }
    }

    self->ToneMapEdrPolyCurve.curveData.var0.polycurve.segcurvorder[v34] = 1;
    self->ToneMapEdrPolyCurve.curveData.var0.polycurve.segcurvebound[control->edrAdaptationParam.n] = 1.0;
    *(&self->ToneMapEdrPolyCurve.curveData.var0.tmcurve + 44 * control->edrAdaptationParam.n + 84) = *&control->edrAdaptationParam.linCs[1][0];
  }

  else
  {
    p_ToneMapEdrPolyCurve->mode = 0;
  }

  p_ToneMapAmbPolyCurve = &self->ToneMapAmbPolyCurve;
  if (!control->ambAdaptationParam.on)
  {
    p_ToneMapAmbPolyCurve->mode = 0;
    self->ToneMapAmbEOTFCurve.mode = 0;
    v11 = 30928;
    goto LABEL_40;
  }

  *&p_ToneMapAmbPolyCurve->mode = 0x500000001;
  *&self->ToneMapAmbPolyCurve.curveData.var0.param.gamma = 0x100000004;
  self->ToneMapAmbPolyCurve.curveData.var0.polycurve.segcurvebound[0] = control->ambAdaptationParam.XsC[0];
  self->ToneMapAmbPolyCurve.curveData.var0.polycurve.segcurvcoeff[0][0] = control->ambAdaptationParam.linCs[0][0];
  self->ToneMapAmbPolyCurve.curveData.type = 12;
  self->ToneMapAmbPolyCurve.curveData.var0.polycurve.segcurvcoeff[0][1] = control->ambAdaptationParam.linCs[0][1];
  v44 = control->ambAdaptationParam.n;
  if (v44 > 1)
  {
    v45 = &self->ToneMapAmbPolyCurve.curveData.var0.polycurve.segcurvebound[1];
    v46 = &control->ambAdaptationParam.XsC[1];
    v47 = &self->ToneMapAmbPolyCurve.curveData.var0.tmcurve + 7;
    v48 = &control->ambAdaptationParam.polyCs[0][1];
    for (j = 1; j < v44; ++j)
    {
      *(v45 - 10) = 3;
      v50 = *v46++;
      *v45++ = v50;
      v47[-1].c3 = *(v48 - 1);
      v51 = *v48;
      v47[-1].m = *v48;
      v47[-1].n = v51;
      v52 = *v48;
      v48 += 4;
      v47->c1 = v52;
      v47 = (v47 + 44);
      v44 = control->ambAdaptationParam.n;
    }
  }

  self->ToneMapAmbPolyCurve.curveData.var0.polycurve.segcurvorder[v44] = 1;
  self->ToneMapAmbPolyCurve.curveData.var0.polycurve.segcurvebound[control->ambAdaptationParam.n] = 1.0;
  *(&self->ToneMapAmbPolyCurve.curveData.var0.tmcurve + 44 * control->ambAdaptationParam.n + 84) = *&control->ambAdaptationParam.linCs[1][0];
  *&self->ToneMapAmbEOTFCurve.mode = 0x900000001;
  self->ToneMapAmbEOTFCurve.curveData.type = 7;
  *&self->ToneMapAmbientCurve.mode = 0xA00000001;
  self->ToneMapAmbientCurve.curveData.type = 13;
  self->ToneMapAmbientCurve.curveData.var0.polycurve.segcurvorder[0] = LODWORD(control->ambAdaptationParam.aL);
  self->ToneMapAmbientCurve.curveData.var0.table.count = LODWORD(control->ambAdaptationParam.bL);
  self->ToneMapAmbientCurve.curveData.var0.polycurve.segcurvorder[1] = 1;
LABEL_41:
  v53 = *MEMORY[0x277D85DE8];
}

- (void)populateDISPColorConfigPostToneMapCSC:(BOOL)c AlgoMode:(int)mode Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)self0
{
  v27 = *MEMORY[0x277D85DE8];
  if (c)
  {
    v12 = 1.0;
    if (control->atmEnable && (targetMaxLinear = control->targetMaxLinearOutput, targetMaxLinear > control->diffuseInNits))
    {
      if (context->processingType == 2)
      {
        v14 = control->targetMaxLinear / targetMaxLinear;
      }

      else
      {
        v14 = 1.0;
      }
    }

    else
    {
      v14 = 1.0;
      targetMaxLinear = control->targetMaxLinear;
    }

    processingType = context->processingType;
    if (processingType == 1)
    {
      if (context->outputTransferFunction != 16)
      {
        v14 = 10000.0 / targetMaxLinear;
      }

      snprintf(__str, 0x3FFuLL, "postRGB2RGB: from DM config, scaler=%f", v14);
      v16 = *&config[1].var26;
      LODWORD(v12) = *&config[1].var36;
      HIDWORD(v16) = *&config[1].var30;
      v19 = vextq_s8(vextq_s8(*&config[1].var30, *&config[1].var30, 0xCuLL), *&config[1].var34, 8uLL);
      goto LABEL_31;
    }

    if (processingType != 2)
    {
      v16 = xmmword_2508CDDF0;
      v19 = xmmword_2508CDDF0;
LABEL_31:
      *&self->PostToneMapCSC.mode = 0x300000001;
      *self->PostToneMapCSC.colorMatrix.in_offset = 0;
      self->PostToneMapCSC.colorMatrix.in_offset[2] = 0.0;
      *self->PostToneMapCSC.colorMatrix.out_offset = 0;
      self->PostToneMapCSC.colorMatrix.out_offset[2] = 0.0;
      *self->PostToneMapCSC.colorMatrix.matrix = v16;
      *&self->PostToneMapCSC.colorMatrix.matrix[4] = v19;
      self->PostToneMapCSC.colorMatrix.matrix[8] = v12;
      goto LABEL_32;
    }

    v16 = xmmword_2508CDDF0;
    var15 = hdrControl->var15;
    if (var15 == 9)
    {
      targetColorPrimaries = control->targetColorPrimaries;
      if (targetColorPrimaries == *MEMORY[0x277CC4C30])
      {
        v20 = &RGB2020toRGBP3_coeff;
      }

      else
      {
        v19 = xmmword_2508CDDF0;
        if (targetColorPrimaries != *MEMORY[0x277CC4C20])
        {
          goto LABEL_27;
        }

        v20 = &RGB2020toRGB709_coeff;
      }
    }

    else
    {
      if (var15 != 12)
      {
        v19 = xmmword_2508CDDF0;
        goto LABEL_27;
      }

      v18 = control->targetColorPrimaries;
      if (v18 == *MEMORY[0x277CC4C18])
      {
        v20 = &RGBP3toRGB2020_coeff;
      }

      else
      {
        v19 = xmmword_2508CDDF0;
        if (v18 != *MEMORY[0x277CC4C20])
        {
          goto LABEL_27;
        }

        v20 = &RGBP3toRGB709_coeff;
      }
    }

    v16 = *v20;
    v19 = v20[1];
    v12 = *(v20 + 8);
LABEL_27:
    if (context->outputTransferFunction == 13)
    {
      v24 = v19;
      v25 = v16;
      if (GetConfig())
      {
        Config = GetConfig();
        HDRConfig::GetConfigEntryValue(Config, 0x58u, 0);
      }

      v19 = v24;
      v16 = v25;
    }

    goto LABEL_31;
  }

  self->PostToneMapCSC.mode = 0;
LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)populateDISPColorConfigToneMapDpc:(BOOL)dpc Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl DISPHDRContext:(EngineHDRContext *)context
{
  p_DpcCurve = &self->DpcCurve;
  if (dpc)
  {
    *&p_DpcCurve->mode = 0xB00000001;
    self->DpcCurve.curveData.type = 17;
    *&self->DpcCurve.curveData.var0.param.gamma = *&config[1].var38;
    maxEDRValue = 1.0;
    if (hdrControl->var25 != 1)
    {
      maxEDRValue = control->maxEDRValue;
    }

    self->DpcCurve.curveData.var0.param.b = maxEDRValue;
    self->DpcCurve.curveData.var0.polycurve.segcurvorder[2] = LODWORD(config[1].var41);
  }

  else
  {
    p_DpcCurve->mode = 0;
  }
}

- (void)populateDISPColorConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(EngineHDRContext *)context
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  [(DISPHDRProcessing *)self decideStageStatus:&v14 DMConfig:config AlgoMode:&v17 DISPHDRContext:context];
  [(DISPHDRProcessing *)self populateDISPColorConfigFixedDegamma:v14 AlgoMode:v17 Prefix:&v16 DMConfig:config DMData:data tcControl:control hdrControl:hdrControl DISPHDRContext:context];
  [(DISPHDRProcessing *)self populateDISPColorConfigPreToneMapCSC:BYTE1(v14) AlgoMode:HIDWORD(v17) Prefix:&v16 DMConfig:config DMData:data tcControl:control hdrControl:hdrControl DISPHDRContext:context];
  [(DISPHDRProcessing *)self populateDISPColorConfigToneMap:BYTE2(v14) AlgoMode:v18 Prefix:&v16 DMConfig:config DMData:data tcControl:control hdrControl:hdrControl DISPHDRContext:context];
  [(DISPHDRProcessing *)self populateDISPToneMapConfig:&v16 DMConfig:config DMData:data tcControl:control hdrControl:hdrControl DISPHDRContext:context];
  [(DISPHDRProcessing *)self populateDISPColorConfigPostToneMapCSC:HIBYTE(v14) AlgoMode:HIDWORD(v18) Prefix:&v16 DMConfig:config DMData:data tcControl:control hdrControl:hdrControl DISPHDRContext:context];
  [(DISPHDRProcessing *)self populateDISPColorConfigToneMapDpc:v15 Prefix:&v16 DMConfig:config DMData:data tcControl:control hdrControl:hdrControl DISPHDRContext:context];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)hdr10_createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control HDRControl:(id *)rControl TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)self0
{
  mCopy = m;
  if ([(ProcessingEngine *)self hdr10_tm_configChanged:param HDRControl:rControl TCControl:control EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam])
  {
    [(DISPHDRProcessing *)self hdr10_tm_createLUTFromDMConfig:config TMParam:param TMParam:mParam TCControl:control EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam DM:mCopy];
    [(ProcessingEngine *)self hdr10_tm_reserveConfig:param HDRControl:rControl TCControl:control EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam];
  }
}

- (void)getTmLutInput
{
  v2 = 0;
  lutInput = self->_lutInput;
  v4 = 0.0;
  v5 = 0.000000059605;
  do
  {
    if (v2 > 15)
    {
      if (v2 != 16)
      {
        if (v2 != 17)
        {
LABEL_5:
          v6 = 16;
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      v6 = 496;
    }

    else
    {
      if (v2)
      {
        if (v2 != 15)
        {
          goto LABEL_5;
        }

LABEL_8:
        v6 = 1;
        goto LABEL_11;
      }

      v6 = 32;
    }

    do
    {
LABEL_11:
      *lutInput++ = v4;
      v4 = v5 + v4;
      --v6;
    }

    while (v6);
    if (v2 == 15)
    {
      v4 = v4 - v5;
    }

    if (v2 != 17 && v2 != 15)
    {
      v5 = v5 + v5;
    }

    ++v2;
  }

  while (v2 != 18);
}

- (void)hdr10_tm_createLUTFromDMConfig:(id *)config TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam TCControl:(ToneCurve_Control *)control EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam DM:(id)m
{
  getDolbyVisionDM4 = [m getDolbyVisionDM4];
  v17 = 27;
  if (control->tcForHdrConstraint)
  {
    v17 = 26;
  }

  v18 = OBJC_IVAR___DISPHDRProcessing__dispHC[v17];
  v19 = 29;
  if (control->tcForHdrConstraint)
  {
    v19 = 28;
  }

  v20 = OBJC_IVAR___DISPHDRProcessing__dispHC[v19];
  lutInput = self->_lutInput;
  v29 = getDolbyVisionDM4;
  hdr10_setScalingFactorTableS_L_NormIn(self + v18, self->_lutInput, 0x2F2uLL, param, mParam, adaptationParam, ambAdaptationParam, config, getDolbyVisionDM4);
  v22 = self + v20;
  if (adaptationParam->RWTMO_v2_on && GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0xB0u, 0) == 1))
  {
    bzero(v22, 0xBC8uLL);
  }

  else
  {
    v24 = 0;
    v25 = (((param->tm_Tmax_C + -0.41928) * 0.3) / 0.1072) + 0.1;
    if (v25 <= 0.4)
    {
      v26 = (((param->tm_Tmax_C + -0.41928) * 0.3) / 0.1072) + 0.1;
    }

    else
    {
      v26 = 0.4;
    }

    if (v25 >= 0.1)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0.1;
    }

    do
    {
      v28 = fmaxf(fminf(lutInput[v24], 1.0), 0.0);
      *&v22[v24 * 4] = v27 + ((1.0 - v27) * (v28 * v28));
      ++v24;
    }

    while (v24 != 754);
  }
}

- (void)hdr10_mixLUTFromTCControl:(ToneCurve_Control *)control TCControlConstr:(ToneCurve_Control *)constr withFactor:(float)factor
{
  if (GetConfig())
  {
    Config = GetConfig();
    v8 = *HDRConfig::GetConfigEntryValue(Config, 0xC8u, 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  scalingFactorTableBufferFull = self->_scalingFactorTableBufferFull;
  v11 = 1.0 - factor;
  do
  {
    v12 = self->_scalingFactorTableBufferConstr[v9];
    v13 = scalingFactorTableBufferFull[v9];
    if (v12 >= v13)
    {
      v14 = scalingFactorTableBufferFull[v9];
    }

    else
    {
      v14 = self->_scalingFactorTableBufferConstr[v9];
    }

    if (v8)
    {
      v12 = v14;
    }

    self->_scalingFactorTableBuffer[v9] = (v11 * v13) + (factor * v12);
    self->_lumaMixFactorTableBuffer[v9] = (v11 * self->_lumaMixFactorTableBufferFull[v9]) + (factor * self->_lumaMixFactorTableBufferConstr[v9]);
    ++v9;
  }

  while (v9 != 754);
}

- (void)hlg_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)self0
{
  mCopy = m;
  if ([(ProcessingEngine *)self hlg_tm_configChanged:config HDRControl:control TCControl:cControl TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam])
  {
    LODWORD(v16) = mode;
    [(DISPHDRProcessing *)self hlg_tm_createLUTFromDMConfig:config DM:mCopy TCControl:cControl TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam TMMode:v16];
    [(ProcessingEngine *)self hlg_tm_reserveConfig:config HDRControl:control TCControl:cControl TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam];
  }
}

- (void)hlg_tm_createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)mode
{
  mCopy = m;
  getDolbyVisionDM4 = [mCopy getDolbyVisionDM4];
  dm40 = self->_dm40;
  self->_dm40 = getDolbyVisionDM4;

  getTmLutSize = [(DISPHDRProcessing *)self getTmLutSize];
  v18 = 27;
  if (control->tcForHdrConstraint)
  {
    v18 = 26;
  }

  hlg_setScalingFactorTable(self + OBJC_IVAR___DISPHDRProcessing__dispHC[v18], self->_lutInput, getTmLutSize, config, param, adaptationParam, ambAdaptationParam, mode, self->_dm40);
}

- (void)hlg_mixLUTFromTCControl:(ToneCurve_Control *)control TCControlConstr:(ToneCurve_Control *)constr withFactor:(float)factor
{
  if (GetConfig())
  {
    Config = GetConfig();
    v10 = *HDRConfig::GetConfigEntryValue(Config, 0xC8u, 0);
  }

  else
  {
    v10 = 0;
  }

  getTmLutSize = [(DISPHDRProcessing *)self getTmLutSize];
  if (getTmLutSize)
  {
    v12 = 1.0 - factor;
    do
    {
      v13 = self->_scalingFactorTableBufferConstr[0];
      if (v10)
      {
        v14 = constr->targetMaxLinear * v13 / control->targetMaxLinear;
        v15 = self->_scalingFactorTableBufferFull[0];
        if (v14 >= v15)
        {
          v14 = v15;
        }

        v16 = (v12 * v15) + factor * v14;
      }

      else
      {
        v16 = constr->targetMaxLinear * (v13 * factor) / control->targetMaxLinear + (v12 * self->_scalingFactorTableBufferFull[0]);
      }

      v17 = v16;
      self->_scalingFactorTableBuffer[0] = v17;
      self = (self + 4);
      --getTmLutSize;
    }

    while (getTmLutSize);
  }
}

- (void)setDisplayManagementParametricConfigToneMapBezier:(_ebzCurveParam *)bezier TMSendC:(float)c
{
  for (i = 0; i != 6; ++i)
  {
    bezier->XsCA[i] = bezier->XsC[i] * c;
  }

  getBezierAnchors(&bezier->n);

  convertBezierToPoly(&bezier->n);
}

- (void)setDisplayManagementParametricConfigToneMapSpline:(_splCurveParam *)spline
{
  v11 = *MEMORY[0x277D85DE8];
  n = spline->n;
  v5 = n > 1;
  v6 = n - 1;
  if (v5)
  {
    v7 = spline->polyCs[0];
    calcCubicSplineParam(spline->splCs, spline->XsC[0], spline->YsC[0], spline->MsC[0], spline->XsC[1], spline->YsC[1], spline->MsC[1]);
    v10[0] = -spline->XsC[0];
    v10[1] = 1.0;
    PolyGeneric2PolyStd(v10, 2, 3, v7 - 20, v7);
  }

  v8 = spline->MsC[0];
  spline->linCs[0][0] = spline->YsC[0] - (v8 * spline->XsC[0]);
  spline->linCs[0][1] = v8;
  spline->linCs[1][0] = spline->YsC[v6] - (spline->MsC[v6] * spline->XsC[v6]);
  spline->linCs[1][1] = spline->MsC[v6];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setDisplayManagementParametricConfigToneMapHLG:(ToneCurve_Control *)g HDRControl:(id *)control
{
  curveType = g->hlgTmParam.artisticOOTFParam.tmCurveParam.curveType;
  if (curveType)
  {
    if (curveType == 1)
    {
      *&v4 = g->hlgTmParam.artisticOOTFParam.tm_Send_C;
      [(DISPHDRProcessing *)self setDisplayManagementParametricConfigToneMapBezier:&g->hlgTmParam.artisticOOTFParam.tmCurveParam.param TMSendC:control, v4];
    }
  }

  else
  {
    [(DISPHDRProcessing *)self setDisplayManagementParametricConfigToneMapSpline:&g->hlgTmParam.artisticOOTFParam.tmCurveParam.param, control];
  }
}

- (void)setDisplayManagementParametricConfigToneMapHDR10:(ToneCurve_Control *)r10 HDRControl:(id *)control
{
  HIDWORD(v4) = 1065353216;
  *&r10->hdr10TmParam.lumaMixXMinRatio = xmmword_2508CDE00;
  r10->hdr10TmParam.lumaMixPower = 2.0;
  curveType = r10->hdr10TmParam.tmCurveParam.curveType;
  if (curveType)
  {
    if (curveType == 1)
    {
      *&v4 = r10->hdr10TmParam.tm_Send_C;
      [(DISPHDRProcessing *)self setDisplayManagementParametricConfigToneMapBezier:&r10->hdr10TmParam.tmCurveParam.param TMSendC:control, v4];
    }
  }

  else
  {
    [(DISPHDRProcessing *)self setDisplayManagementParametricConfigToneMapSpline:&r10->hdr10TmParam.tmCurveParam.param, control];
  }
}

- (void)setDisplayManagementParametricConfigToneMap:(ToneCurve_Control *)map HDRControl:(id *)control
{
  if (control->var0 == 2)
  {
    [(DISPHDRProcessing *)self setDisplayManagementParametricConfigToneMapHDR10:map HDRControl:?];
  }

  else if (control->var0 == 3)
  {
    [(DISPHDRProcessing *)self setDisplayManagementParametricConfigToneMapHLG:map HDRControl:?];
  }
}

- (void)setDisplayManagementParametricConfig:(ToneCurve_Control *)config HDRControl:(id *)control
{
  v15 = *MEMORY[0x277D85DE8];
  [(DISPHDRProcessing *)self setDisplayManagementParametricConfigToneMap:config HDRControl:control];
  n = config->edrAdaptationParam.n;
  v6 = n > 1;
  v7 = n - 1;
  if (v6)
  {
    calcCubicSplineParam(config->edrAdaptationParam.splCs, config->edrAdaptationParam.Xs[0], config->edrAdaptationParam.Ys[0], config->edrAdaptationParam.Ms[0], config->edrAdaptationParam.Xs[1], config->edrAdaptationParam.Ys[1], config->edrAdaptationParam.Ms[1]);
    v13 = -config->edrAdaptationParam.Xs[0];
    v14 = 1065353216;
    PolyGeneric2PolyStd(&v13, 2, 3, config->edrAdaptationParam.splCs[0], config->edrAdaptationParam.polyCs[0]);
  }

  v8 = config->edrAdaptationParam.Ms[0];
  config->edrAdaptationParam.linCs[0][0] = config->edrAdaptationParam.Ys[0] - (v8 * config->edrAdaptationParam.Xs[0]);
  config->edrAdaptationParam.linCs[0][1] = v8;
  config->edrAdaptationParam.linCs[1][0] = config->edrAdaptationParam.Ys[v7] - (config->edrAdaptationParam.Ms[v7] * config->edrAdaptationParam.Xs[v7]);
  config->edrAdaptationParam.linCs[1][1] = config->edrAdaptationParam.Ms[v7];
  v9 = config->ambAdaptationParam.n;
  v6 = v9 > 1;
  v10 = v9 - 1;
  if (v6)
  {
    calcCubicSplineParam(config->ambAdaptationParam.splCs, config->ambAdaptationParam.XsC[0], config->ambAdaptationParam.YsC[0], config->ambAdaptationParam.MsC[0], config->ambAdaptationParam.XsC[1], config->ambAdaptationParam.YsC[1], config->ambAdaptationParam.MsC[1]);
    v13 = -config->ambAdaptationParam.XsC[0];
    v14 = 1065353216;
    PolyGeneric2PolyStd(&v13, 2, 3, config->ambAdaptationParam.splCs[0], config->ambAdaptationParam.polyCs[0]);
  }

  v11 = config->ambAdaptationParam.MsC[0];
  config->ambAdaptationParam.linCs[0][0] = config->ambAdaptationParam.YsC[0] - (v11 * config->ambAdaptationParam.XsC[0]);
  config->ambAdaptationParam.linCs[0][1] = v11;
  config->ambAdaptationParam.linCs[1][0] = config->ambAdaptationParam.YsC[v10] - (config->ambAdaptationParam.MsC[v10] * config->ambAdaptationParam.XsC[v10]);
  config->ambAdaptationParam.linCs[1][1] = config->ambAdaptationParam.MsC[v10];
  config->ambAdaptationParam.TmaxNits = 1.0;
  v12 = *MEMORY[0x277D85DE8];
}

@end