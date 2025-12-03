@interface MSRHDRProcessing
+ (void)HDR10PlusIOMFBMetadata:(id *)metadata withHDR10PlusData:(id *)data;
+ (void)dolbyIOMFBMetadata:(id *)metadata withFilteredMinPQ:(float)q FilteredMaxPQ:(float)pQ FilteredAvgPQ:(float)avgPQ EnableLevel4:(BOOL)level4 FilteredAvg:(float)avg FilteredStdDev:(float)dev;
+ (void)dolbyIOMFBMetadata:(id *)metadata withMinBrightness:(float)brightness maxBrightness:(float)maxBrightness;
- (BOOL)dovi_tm_configChanged:(id *)changed HDRControl:(id *)control DM:(id)m LLDoVi:(BOOL)vi EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam tcCtrl:(ToneCurve_Control *)ctrl;
- (BOOL)isMMREnabled;
- (BOOL)processFrameByMSRWithComposerData:(id *)data DM:(id)m constraintDM:(id)dM DMData:(id *)mData tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl hdr10InfoFrame:(id *)frame layer0:(__IOSurface *)self0 layer1:(__IOSurface *)self1 output:(__IOSurface *)self2 frameNumebr:(unint64_t)self3 computedNumber:(unint64_t *)self4 config:(id *)self5;
- (MSRHDRProcessing)init;
- (int)getColorConfigSignatureString:(char *)string length:(int)length tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl;
- (unsigned)getMatrixScale2P:(const float *)p OutputScale:(float)scale;
- (unsigned)setLms2RgbScale2P:(const float *)p OutputScale:(float)scale;
- (void)DumpOutputHcu:(id)hcu;
- (void)attachDoViMetadataPacketTo:(__IOSurface *)to withDMData:(id *)data withDMConfig:(id *)config withHdrControl:(id *)control withMSRHDRContext:(MSRHDRContext *)context;
- (void)attachHDRMetaDataToOutputSurface:(__IOSurface *)surface withDMData:(id *)data withDMConfig:(id *)config withHdrControl:(id *)control withTcControl:(ToneCurve_Control *)tcControl withMSRHDRContext:(MSRHDRContext *)context withInfoFrame:(id *)frame;
- (void)attachInfoFrameTo:(__IOSurface *)to withDMData:(id *)data withTcControl:(ToneCurve_Control *)control withInfoFrame:(id *)frame;
- (void)createAdaptationLut;
- (void)createCustomScalingTables;
- (void)dealloc;
- (void)decideStageStatus:(BOOL *)status MSRHDRContext:(MSRHDRContext *)context DMConfig:(id *)config;
- (void)dovi_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)dovi_mixLUTFromTCControl:(ToneCurve_Control *)control TCControlConstr:(ToneCurve_Control *)constr withFactor:(float)factor;
- (void)dovi_tm_createLUTFromDMConfig:(id *)config HDRControl:(id *)control DM:(id)m LLDoVi:(BOOL)vi TMParam:(_DoViTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam HlgOOTFCombined:(BOOL)self0 HlgOOTFOnly:(BOOL)self1 IsDoVi84:(BOOL)self2 IsInternalDisplay:(BOOL)self3 tcCtrl:(ToneCurve_Control *)self4;
- (void)dovi_tm_reserveConfig:(id *)config HDRControl:(id *)control DM:(id)m LLDoVi:(BOOL)vi EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam tcCtrl:(ToneCurve_Control *)ctrl;
- (void)dovi_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer ScalingFactorBufferSize:(unint64_t)size Sat2FactorBuffer:(float *)factorBuffer Sat2FactorBufferSize:(unint64_t)bufferSize dmConfig:(id *)config HlgOOTFCombined:(BOOL)combined;
- (void)getDegammaLutInput:(float *)input;
- (void)getRegammaLutInput:(float *)input;
- (void)handleDoViToHDR10TV:(id *)v TCControl:(ToneCurve_Control *)control DMData:(id *)data;
- (void)hdr10_createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control HDRControl:(id *)rControl TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)self0;
- (void)hdr10_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)hdr10_mixLUTFromTCControl:(ToneCurve_Control *)control TCControlConstr:(ToneCurve_Control *)constr withFactor:(float)factor;
- (void)hdr10_tm_createLUTFromDMConfig:(id *)config TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam TCControl:(ToneCurve_Control *)control EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam DM:(id)m;
- (void)hdr10_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer LumaMixFactorBuffer:(float *)factorBuffer;
- (void)hlg_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)self0;
- (void)hlg_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)hlg_mixLUTFromTCControl:(ToneCurve_Control *)control TCControlConstr:(ToneCurve_Control *)constr withFactor:(float)factor;
- (void)hlg_tm_createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)mode;
- (void)hlg_tm_reserveConfig:(id *)config HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam;
- (void)hlg_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer;
- (void)initDMConfigCache;
- (void)populateMSRColorConfig:(id *)config DMConfig:(id *)mConfig DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)context;
- (void)populateMSRColorConfigHeader:(id *)header Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB01_01:(id *)b01_01 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB01_02:(id *)b01_02 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB01_03:(id *)b01_03 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB01_04:(id *)b01_04 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB01_05:(id *)b01_05 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB01_06:(id *)b01_06 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB02:(id *)b02 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB02HDR10:(id *)r10 DMConfig:(id *)config;
- (void)populateMSRColorConfigStageB02HLG:(id *)g hdrControl:(id *)control;
- (void)populateMSRColorConfigStageB04_01:(id *)b04_01 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB04_02:(id *)b04_02 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB04_03:(id *)b04_03 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)populateMSRColorConfigStageB04_05:(id *)b04_05 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)runPostFrameDumpActions:(id *)actions;
- (void)setDegammaBuffer:(int64_t)buffer Buffer:(float *)a4 TableSize:(unint64_t)size LutInput:(float *)input Type:(int)type scalerForSrgbBeyondMax:(float)max InputScale:(float)scale OutputScale:(float)self0;
- (void)setRegammaBuffer:(int64_t)buffer LutInput:(float *)input Buffer:(float *)a5 TableSize:(unint64_t)size Type:(int)type DPCParam:(_DpcParam *)param;
- (void)setupMSRHDRContext:(id *)context TCControl:(ToneCurve_Control *)control DMData:(id *)data input:(__IOSurface *)input output:(__IOSurface *)output;
- (void)setupMSRMappingTableWithMetadata:(id *)metadata;
- (void)setupMSRPolynomialTableForHDR10;
- (void)setupMSRPolynomialTableForHDR10:(unsigned __int16 *)r10 TableLength:(unsigned int)length;
- (void)updateDegammaLUT:(MSRHDRContext *)t AdditionalScaler:(float)scaler tcControl:(ToneCurve_Control *)control;
- (void)updateDegammaTable:(int64_t)table Table:(float *)a4 TableSize:(unint64_t)size Type:(int)type Scaler:(float)scaler;
- (void)updateLUTFromDMConfig:(id *)config TCControl:(ToneCurve_Control *)control HDRControl:(id *)rControl;
- (void)updatePolynomialTables:(unsigned __int16 *)tables TableSize:(unint64_t)size;
- (void)updateRegammaLUT:(MSRHDRContext *)t;
- (void)updateRegammaTable:(int64_t)table Table:(float *)a4 TableSize:(unint64_t)size;
@end

@implementation MSRHDRProcessing

- (MSRHDRProcessing)init
{
  v29 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = MSRHDRProcessing;
  v2 = [(ProcessingEngine *)&v18 init];
  if (v2)
  {
    v3 = [[MSRColorConfigMemoryPool alloc] initWithCapacity:16 Size:48400];
    msrCUPool = v2->_msrCUPool;
    v2->_msrCUPool = v3;

    if (dword_280C660E4)
    {
      v5 = 0;
    }

    else
    {
      v5 = sDumpContext;
    }

    v2->_dump = v5;
    v2->_reshapeLUTCreated = 0;
    v2->_degamma.type = 0;
    v2->_regamma.type = 0;
    v2->_max_fp16 = 7.91;
    v2->_computedFrames = 0;
    chromVectorWeight = 1081291571;
    [(MSRHDRProcessing *)v2 initDMConfigCache];
    [(MSRHDRProcessing *)v2 createCustomScalingTables];
    [(MSRHDRProcessing *)v2 createAdaptationLut];
    *entry = 0;
    cf = 0;
    v6 = *MEMORY[0x277CBECE8];
    ServiceObject = IOSurfaceAcceleratorCreate();
    if (!ServiceObject)
    {
      ServiceObject = IOSurfaceAcceleratorGetServiceObject();
      if (!ServiceObject)
      {
        v8 = IORegistryEntrySearchCFProperty(entry[1], "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
        if (v8)
        {
          v9 = v8;
          v10 = [v9 objectForKeyedSubscript:@"IOSurfaceAcceleratorHCUApiVersion"];
          ServiceObject = [v10 intValue];
          CFRelease(v9);
        }

        else
        {
          ServiceObject = -536870212;
        }
      }
    }

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
        *buf = 134218498;
        v22 = WORD1(v11);
        v23 = 2080;
        v24 = "int getHDRCapability()";
        v25 = 1024;
        LODWORD(v26) = ServiceObject;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx ++ %s: MSRApiVer=%d\n", buf, 0x1Cu);
      }

      prevLogInstanceID = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "int getHDRCapability()";
      v23 = 1024;
      LODWORD(v24) = ServiceObject;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] ++ %s: MSRApiVer=%d\n", buf, 0x12u);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (ServiceObject == 2)
    {
      v12 = 1869769064;
    }

    else
    {
      v12 = 1869769063;
    }

    v2->_msrPlatform = v12;
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v13 = logInstanceID;
    }

    else
    {
      v13 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      msrPlatform = v2->_msrPlatform;
      *buf = 134218754;
      v22 = WORD1(v13);
      v23 = 2080;
      v24 = "[MSRHDRProcessing init]";
      v25 = 2048;
      v26 = v2;
      v27 = 1024;
      v28 = msrPlatform;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx ++ %s : MSR created! instance=%p, platform=0x%x\n", buf, 0x26u);
    }

    prevLogInstanceID = v13;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v2->_msrPlatform;
    *buf = 136315650;
    v22 = "[MSRHDRProcessing init]";
    v23 = 2048;
    v24 = v2;
    v25 = 1024;
    LODWORD(v26) = v15;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] ++ %s : MSR created! instance=%p, platform=0x%x\n", buf, 0x1Cu);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = 0x10u;
  do
  {
    v4 = *&sDumpContext[v3];
    if (v4)
    {
      fclose(v4);
      *&sDumpContext[v3] = 0;
    }

    v3 += 24;
  }

  while (v3 != 112);
  msrCUPool = self->_msrCUPool;
  self->_msrCUPool = 0;

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v6 = logInstanceID;
    }

    else
    {
      v6 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v10 = WORD1(v6);
      v11 = 2080;
      selfCopy2 = "[MSRHDRProcessing dealloc]";
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx -- %s: MSR exit! instance=%p\n", buf, 0x20u);
    }

    prevLogInstanceID = v6;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[MSRHDRProcessing dealloc]";
    v11 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] -- %s: MSR exit! instance=%p\n", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = MSRHDRProcessing;
  [(ProcessingEngine *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initDMConfigCache
{
  bzero(&self->super._prev, 0x7A4uLL);
  self->super._prev.tm.var0.dovi.slope = -12346.0;
  bzero(&self->super._prevConstr, 0x7A4uLL);
  self->super._prevConstr.tm.var0.dovi.slope = -12346.0;
}

- (void)createCustomScalingTables
{
  v20 = *MEMORY[0x277D85DE8];
  getHorizontalScalingTableTapNumber = [(MSRHDRProcessing *)self getHorizontalScalingTableTapNumber];
  getVerticalScalingTableTapNumber = [(MSRHDRProcessing *)self getVerticalScalingTableTapNumber];
  getHorizontalScalingTablePhaseNumber = [(MSRHDRProcessing *)self getHorizontalScalingTablePhaseNumber];
  getVerticalScalingTablePhaseNumber = [(MSRHDRProcessing *)self getVerticalScalingTablePhaseNumber];
  if (getHorizontalScalingTableTapNumber < 8 || getVerticalScalingTableTapNumber <= 1)
  {
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
        v18 = 134217984;
        v19 = WORD1(v7);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: mid_tap_h >= 4 && mid_tap_v >= 1 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 245\n", &v18, 0xCu);
      }

      prevLogInstanceID = v7;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: mid_tap_h >= 4 && mid_tap_v >= 1 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 245\n", &v18, 2u);
    }
  }

  v8 = getVerticalScalingTableTapNumber >> 1;
  v9 = getHorizontalScalingTableTapNumber >> 1;
  v10 = getVerticalScalingTablePhaseNumber >> 1;
  v11 = getHorizontalScalingTablePhaseNumber >> 1;
  vScaleCoefficents = self->_vScaleCoefficents;
  bzero(self->_vScaleCoefficents, 0x480uLL);
  hScaleCoefficents = self->_hScaleCoefficents;
  bzero(hScaleCoefficents, 0x780uLL);
  v14 = vScaleCoefficents[(v8 - 1)];
  *v14 = 1048576000;
  v15 = vScaleCoefficents[v8];
  *v15 = 1061158912;
  v15[v10] = 1048576000;
  v14[v10] = 1061158912;
  v16 = hScaleCoefficents[v9];
  *v16 = 1065353216;
  hScaleCoefficents[(v9 - 4)][v11] = 0.0053711;
  hScaleCoefficents[(v9 - 3)][v11] = 0.022949;
  hScaleCoefficents[(v9 - 2)][v11] = -0.12793;
  hScaleCoefficents[(v9 - 1)][v11] = 0.59961;
  v16[v11] = 1058635776;
  hScaleCoefficents[(v9 + 1)][v11] = -0.12793;
  hScaleCoefficents[(v9 + 2)][v11] = 0.022949;
  hScaleCoefficents[(v9 + 3)][v11] = 0.0053711;
  v17 = *MEMORY[0x277D85DE8];
}

- (void)createAdaptationLut
{
  ambientHeadroomAdaptationLut = self->_ambientHeadroomAdaptationLut;
  v3 = xmmword_2508CD8F0;
  v4 = vdupq_n_s32(0x3A828C14u);
  v5 = 1000;
  v6 = vdupq_n_s64(0x3F747AE147AE147BuLL);
  __asm { FMOV            V3.4S, #1.0 }

  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  do
  {
    v13 = vmulq_f32(vcvtq_f32_u32(v3), v4);
    *ambientHeadroomAdaptationLut = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*v13.f32), v6)), vaddq_f64(vcvt_hight_f64_f32(v13), v6));
    *(ambientHeadroomAdaptationLut + 250) = _Q3;
    v3 = vaddq_s32(v3, v12);
    ambientHeadroomAdaptationLut += 4;
    v5 -= 4;
  }

  while (v5);
}

- (void)updateDegammaLUT:(MSRHDRContext *)t AdditionalScaler:(float)scaler tcControl:(ToneCurve_Control *)control
{
  v44 = *MEMORY[0x277D85DE8];
  inputTransferFunction = t->inputTransferFunction;
  switch(inputTransferFunction)
  {
    case 0xDu:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 1;
      break;
    case 8u:
      v10 = 0;
      v11 = 0;
      v13 = 4;
      v12 = 1;
      break;
    case 0x12u:
      v10 = 0;
      v12 = 0;
      v13 = 3;
      v11 = 1;
      break;
    case 0x10u:
      v11 = 0;
      v12 = 0;
      v13 = 2;
      v10 = 1;
      break;
    default:
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

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v38 = 134218498;
          v39 = WORD1(v25);
          v40 = 2080;
          v41 = "[MSRHDRProcessing updateDegammaLUT:AdditionalScaler:tcControl:]";
          v42 = 1024;
          v43 = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx  %s : Not supported type=%d\n", &v38, 0x1Cu);
        }

        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        prevLogInstanceID = v25;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315394;
          v39 = "[MSRHDRProcessing updateDegammaLUT:AdditionalScaler:tcControl:]";
          v40 = 1024;
          LODWORD(v41) = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]  %s : Not supported type=%d\n", &v38, 0x12u);
        }

        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      break;
  }

  max_fp16 = self->_max_fp16;
  v15 = max_fp16 * 1.125;
  if ((max_fp16 * 1.125) >= 0.03928)
  {
    v16 = powf((v15 * 0.94787) + 0.052133, 2.4);
  }

  else
  {
    v16 = v15 * 0.077399;
  }

  inputColorSpace = t->inputColorSpace;
  if (!inputColorSpace)
  {
    if (t->processingType == 5)
    {
      v19 = isSupportedMSRColorConversion(t->inputFormat, t->outputFormat);
      goto LABEL_18;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  if (inputColorSpace != 1 || t->processingType != 5)
  {
    goto LABEL_17;
  }

  inputFormat = t->inputFormat;
  v19 = isSupportedMSRColorConversion(inputFormat, t->outputFormat);
  if (inputFormat == 1647534392)
  {
    v20 = 1;
    goto LABEL_19;
  }

LABEL_18:
  v20 = 0;
LABEL_19:
  v21 = 100.0 / v16;
  if (v10)
  {
    if (t->processingType == 1)
    {
      v22 = scaler * 0.0001;
    }

    else
    {
      v22 = 0.01;
    }

    inputSurfaceEDR = 1.0;
    goto LABEL_63;
  }

  if (inputTransferFunction != 13)
  {
    if (v11)
    {
      inputSurfaceEDR = 1.0;
      if (self->_msrHC.processingType == 4 && ((*&self->super._anon_90[484] & 0x80) == 0 || (debugDM4DisableConf & 0x80) != 0))
      {
        [(MSRHDRProcessing *)self getDolby84DegammaScale];
        v22 = v24;
        goto LABEL_63;
      }
    }

    else
    {
      if (v12)
      {
        inputSurfaceEDR = 1.0;
        v22 = 100.0;
        goto LABEL_63;
      }

      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v26 = logInstanceID;
        }

        else
        {
          v26 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v38 = 134218240;
          v39 = WORD1(v26);
          v40 = 1024;
          LODWORD(v41) = v13;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Not supported type=%d\n", &v38, 0x12u);
        }

        prevLogInstanceID = v26;
        inputSurfaceEDR = 1.0;
      }

      else
      {
        inputSurfaceEDR = 1.0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v38 = 67109120;
          LODWORD(v39) = v13;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Not supported type=%d\n", &v38, 8u);
        }
      }
    }

    v22 = 1.0;
    goto LABEL_63;
  }

  if (v20)
  {
    inputSurfaceEDR = control->inputSurfaceEDR;
    v22 = 0.5;
    max_fp16 = 1.0;
  }

  else if (v19)
  {
    v22 = 0.5;
    inputSurfaceEDR = 1.0;
    v21 = 0.59019;
  }

  else
  {
    if (!self->_msrHC.inputIsSRGBEncodedEdr)
    {
      v21 = 1.5625;
    }

    inputSurfaceEDR = 1.0;
    if (self->_msrHC.inputIsSRGBEncodedEdr)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 1.5625;
    }
  }

LABEL_63:
  if (GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x37u, 0) & 1) != 0) || self->_degamma.type != v13 || inputTransferFunction == 13 && self->_max_fp16 != self->super._prev.degamma.max_fp16 || self->super._prev.degamma.additional_scaler != scaler || max_fp16 != self->super._prev.degamma.inputScale || inputSurfaceEDR != self->super._prev.degamma.outputScale || t->processingType != self->super._prev.processingType)
  {
    getDegammaLutSize = [(MSRHDRProcessing *)self getDegammaLutSize];
    v29 = malloc_type_malloc(4 * getDegammaLutSize, 0x100004052888210uLL);
    if (v29)
    {
      v30 = v29;
      if (inputTransferFunction == 13)
      {
        self->super._prev.degamma.max_fp16 = self->_max_fp16;
      }

      self->_degamma.type = v13;
      self->super._prev.degamma.additional_scaler = scaler;
      self->super._prev.processingType = t->processingType;
      self->super._prev.degamma.inputScale = max_fp16;
      self->super._prev.degamma.outputScale = inputSurfaceEDR;
      v31 = malloc_type_malloc(4 * [(MSRHDRProcessing *)self getDegammaLutSize], 0x100004052888210uLL);
      if (v31)
      {
        v32 = v31;
        [(MSRHDRProcessing *)self getDegammaLutInput:v31];
        *&v33 = v21;
        *&v34 = max_fp16;
        *&v35 = inputSurfaceEDR;
        [(MSRHDRProcessing *)self setDegammaBuffer:2 Buffer:v30 TableSize:getDegammaLutSize LutInput:v32 Type:v13 scalerForSrgbBeyondMax:v33 InputScale:v34 OutputScale:v35];
        *&v36 = v22;
        [(MSRHDRProcessing *)self updateDegammaTable:2 Table:v30 TableSize:getDegammaLutSize Type:v13 Scaler:v36];
        free(v32);
      }

      free(v30);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)getDegammaLutInput:(float *)input
{
  v3 = 0;
  v4 = xmmword_2508CD900;
  v5 = xmmword_2508CD910;
  v6 = input + 2;
  v7 = vdupq_n_s64(0x201uLL);
  v8 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v5)), *v4.i8).u8[0])
    {
      *(v6 - 2) = vcvts_n_f32_u32(v3, 9uLL);
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x201uLL), *&v5)), *&v4).i8[2])
    {
      *(v6 - 1) = vcvts_n_f32_u32(v3 + 1, 9uLL);
    }

    if (vuzp1_s16(*&v4, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x201uLL), *&v4))).i32[1])
    {
      *v6 = vcvts_n_f32_u32(v3 + 2, 9uLL);
      v6[1] = vcvts_n_f32_u32(v3 + 3, 9uLL);
    }

    v3 += 4;
    v4 = vaddq_s64(v4, v8);
    v5 = vaddq_s64(v5, v8);
    v6 += 4;
  }

  while (v3 != 516);
  input[513] = 1.125;
}

- (void)setDegammaBuffer:(int64_t)buffer Buffer:(float *)a4 TableSize:(unint64_t)size LutInput:(float *)input Type:(int)type scalerForSrgbBeyondMax:(float)max InputScale:(float)scale OutputScale:(float)self0
{
  if (buffer != 2)
  {
    return;
  }

  inputCopy = input;
  sizeCopy = size;
  v12 = a4;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type == 2 && size)
      {
        do
        {
          v13 = *inputCopy++;
          v14 = fminf(v13, 1.125);
          v15 = v14 < 0.00000073096;
          if (v14 < 0.00000073096)
          {
            v14 = -(v14 + -0.0000014619);
          }

          v16 = flt_2508CD850[v15];
          v17 = powf(v14, 0.012683);
          v18 = fmax(((v17 + -0.83594) / ((v17 * -18.688) + 18.852)), 0.0);
          *v12++ = v16 * powf(v18, 6.2774);
          --sizeCopy;
        }

        while (sizeCopy);
      }

      return;
    }

    if (!size)
    {
      return;
    }

    v23 = 0;
    v24 = 100.0 / max;
    while (1)
    {
      v25 = inputCopy[v23];
      if (v25 < 1.0)
      {
        break;
      }

      v26 = v24;
      if (scale == 1.0)
      {
        goto LABEL_23;
      }

LABEL_27:
      v12[v23++] = v26;
      if (sizeCopy <= v23)
      {
        return;
      }
    }

    v25 = v25 * scale;
LABEL_23:
    if (v25 >= 0.03928)
    {
      v27 = powf((v25 * 0.94787) + 0.052133, 2.4);
    }

    else
    {
      v27 = v25 * 0.077399;
    }

    v26 = v27 * outputScale;
    goto LABEL_27;
  }

  if (type == 4)
  {

    memcpy(a4, input, 4 * size);
  }

  else if (type == 3 && size)
  {
    do
    {
      v19 = fminf(*inputCopy, 1.125);
      if (v19 <= 0.5)
      {
        v20 = (v19 * v19) / 3.0;
      }

      else
      {
        v20 = (exp((v19 + -0.55991073) / 0.17883277) + 0.28466892) / 12.0;
      }

      *v12++ = v20;
      ++inputCopy;
      --sizeCopy;
    }

    while (sizeCopy);
  }
}

- (void)updateDegammaTable:(int64_t)table Table:(float *)a4 TableSize:(unint64_t)size Type:(int)type Scaler:(float)scaler
{
  if (table == 2)
  {
    if (self->_msrPlatform == 1869769064)
    {
      if (size)
      {
        p_degamma = &self->_degamma;
        do
        {
          p_degamma->var0.degmmaC.lutForCModel[0] = *a4 * scaler;
          p_degamma = (p_degamma + 4);
          v8 = *a4++;
          p_degamma->var0.degmmaS.lutForCModel[1280] = v8 * scaler;
          --size;
        }

        while (size);
      }
    }

    else if (size)
    {
      v9 = 0;
      v10 = &self->_degamma.var0.degmmaS.lutForCModel[514];
      do
      {
        self->_degamma.var0.degmmaC.lutForCModel[v9] = a4[v9] * scaler;
        v11 = v10;
        v12 = 3;
        do
        {
          v13 = a4[v9] * scaler;
          v14 = -v13;
          if (v13 >= 0.0)
          {
            v14 = a4[v9] * scaler;
          }

          *v11 = ((v14 * 16777000.0) + 0.5) & 0x7FFFFFFF | ((v13 < 0.0) << 31);
          v11 += 514;
          --v12;
        }

        while (v12);
        ++v9;
        ++v10;
      }

      while (v9 != size);
    }
  }
}

- (void)getRegammaLutInput:(float *)input
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 1024;
  do
  {
    if (v3)
    {
      v7 = 32;
    }

    else
    {
      v7 = 64;
    }

    if (v3)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }

    v9 = v6 >> v8;
    v10 = v4;
    v11 = v5;
    v12 = v7;
    do
    {
      input[v11++] = vcvts_n_f32_u32(v10 & 0x7FFFFFF8, 0x1EuLL);
      v10 += v9;
      --v12;
    }

    while (v12);
    v5 += v7;
    v4 += v6;
    v6 <<= v3++ != 0;
  }

  while (v3 != 21);
  *(input + 352) = 0x3F9000003F800000;
}

- (void)updateRegammaLUT:(MSRHDRContext *)t
{
  p_regamma = &self->_regamma;
  p_dpcParam = &self->_regamma.dpcParam;
  outputTransferFunction = t->outputTransferFunction;
  if (outputTransferFunction == 16)
  {
    v8 = 2;
  }

  else
  {
    if (outputTransferFunction == 8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    if (t->dpcParam.on)
    {
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }
  }

  if (GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x37u, 0) & 1) != 0) || p_regamma->type != v8 || (*&p_dpcParam->alpha == *&t->dpcParam.alpha ? (v11 = *&p_dpcParam->rangeMax == *&t->dpcParam.rangeMax) : (v11 = 0), v11 ? (v12 = *&p_dpcParam->on == *&t->dpcParam.on) : (v12 = 0), v12 ? (v13 = *&p_dpcParam->gcpcStage == *&t->dpcParam.gcpcStage) : (v13 = 0), !v13))
  {
    getRegammaLutSize = [(MSRHDRProcessing *)self getRegammaLutSize];
    v15 = malloc_type_malloc(4 * getRegammaLutSize, 0x100004052888210uLL);
    v16 = malloc_type_malloc(4 * getRegammaLutSize, 0x100004052888210uLL);
    v17 = v16;
    if (v15 && v16)
    {
      p_regamma->type = v8;
      v18 = *&t->dpcParam.on;
      *&p_dpcParam->alpha = *&t->dpcParam.alpha;
      *&p_dpcParam->on = v18;
      [(MSRHDRProcessing *)self getRegammaLutInput:v16];
      [(MSRHDRProcessing *)self setRegammaBuffer:11 LutInput:v17 Buffer:v15 TableSize:getRegammaLutSize Type:v8 DPCParam:&t->dpcParam];
      [(MSRHDRProcessing *)self updateRegammaTable:11 Table:v15 TableSize:getRegammaLutSize];
      free(v15);
LABEL_28:

      free(v17);
      return;
    }

    if (v15)
    {
      free(v15);
    }

    if (v17)
    {
      goto LABEL_28;
    }
  }
}

- (void)setRegammaBuffer:(int64_t)buffer LutInput:(float *)input Buffer:(float *)a5 TableSize:(unint64_t)size Type:(int)type DPCParam:(_DpcParam *)param
{
  if (buffer != 4 && size)
  {
    v13 = 0;
    while (1)
    {
      if (type == 1)
      {
        applyDPCompensationS(&self->super._anon_90[448], input[v13]);
        v19 = v18;
        if (v19 >= 0.00304025)
        {
          v21 = v19 * 1.13712;
          v20 = powf(v21, 0.41667) + -0.055;
        }

        else
        {
          v20 = v19 * 12.92;
        }

        v17 = v20;
        goto LABEL_15;
      }

      if (type == 3)
      {
        break;
      }

      if (type == 2)
      {
        applyDPCompensationS(&self->super._anon_90[448], input[v13]);
        v15 = v14 * 10000.0;
        if (v15 >= 0.0)
        {
          v22 = powf(v15 * 0.0001, 0.1593);
          v17 = powf(((v22 * 18.852) + 0.83594) / ((v22 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v16 = powf(v15 * -0.0001, 0.1593);
          v17 = 0.0000014619 - powf(((v16 * 18.852) + 0.83594) / ((v16 * 18.688) + 1.0), 78.844);
        }

        goto LABEL_15;
      }

LABEL_16:
      if (size <= ++v13)
      {
        return;
      }
    }

    applyDPCompensationS(&self->super._anon_90[448], input[v13]);
LABEL_15:
    a5[v13] = v17;
    goto LABEL_16;
  }
}

- (void)updateRegammaTable:(int64_t)table Table:(float *)a4 TableSize:(unint64_t)size
{
  if (table != 4)
  {
    [(MSRHDRProcessing *)self getRegammaLutSize];
    if (size)
    {
      p_regamma = &self->_regamma;
      do
      {
        v9 = *a4++;
        p_regamma->lutForCModel[0] = v9;
        p_regamma = (p_regamma + 4);
        p_regamma->lutForCModel[705] = v9;
        p_regamma->lut[0][705] = v9;
        p_regamma->lut[1][705] = v9;
        --size;
      }

      while (size);
    }
  }
}

- (void)handleDoViToHDR10TV:(id *)v TCControl:(ToneCurve_Control *)control DMData:(id *)data
{
  if (v->var0 == 1)
  {
    var16 = data->var16;
    if (var16 <= 0xC0C)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    if (var16 <= 0xC02)
    {
      v7 = 3;
    }

    else
    {
      v7 = v6;
    }

    if (v->var17 != 16)
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  if (v->var3 == 3 && v->var10 == 2 && control->targetMaxLinear == 1000.0)
  {
    self->_msrHC.operation = v7;
  }
}

- (void)setupMSRHDRContext:(id *)context TCControl:(ToneCurve_Control *)control DMData:(id *)data input:(__IOSurface *)input output:(__IOSurface *)output
{
  v30 = *MEMORY[0x277D85DE8];
  p_msrHC = &self->_msrHC;
  self->_msrHC.contentType = context->var0;
  self->_msrHC.displayType = context->var10;
  self->_msrHC.processingType = control->tmData.processingType;
  *&self->_msrHC.operation = *&context->var3;
  self->_msrHC.convertType = context->var5;
  self->_msrHC.inputFormatRaw = IOSurfaceGetPixelFormat(input);
  p_msrHC->outputFormatRaw = IOSurfaceGetPixelFormat(output);
  p_msrHC->inputFormat = getFourCCforType(p_msrHC->inputFormatRaw);
  p_msrHC->outputFormat = getFourCCforType(p_msrHC->outputFormatRaw);
  v14 = *&context->var17;
  *&v15 = vext_s8(v14, *&control->targetColorSpace, 4uLL);
  v14.i32[1] = HIDWORD(*&control->targetColorSpace);
  *(&v15 + 1) = v14;
  *&p_msrHC->inputColorSpace = v15;
  p_msrHC->originalInputTransferFunction = context->var28;
  *&p_msrHC->enableReshaping = 0;
  p_msrHC->enableConverting = 0;
  inputFormat = p_msrHC->inputFormat;
  if (inputFormat > 1647534391)
  {
    if (inputFormat == 1815162994)
    {
      goto LABEL_7;
    }

    v17 = 1647534392;
  }

  else
  {
    if (inputFormat == 1378955371)
    {
      goto LABEL_7;
    }

    v17 = 1380411457;
  }

  if (inputFormat != v17)
  {
    goto LABEL_23;
  }

LABEL_7:
  p_msrHC->inputColorSpace = 1;
  if ((p_msrHC->operation & 4) != 0)
  {
    if (p_msrHC->processingType != 5)
    {
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
          v28 = 134217984;
          v29 = WORD1(v19);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: _msrHC.processingType == kHDRProcessingTypeConvert warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 741\n", &v28, 0xCu);
        }

        prevLogInstanceID = v19;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: _msrHC.processingType == kHDRProcessingTypeConvert warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 741\n", &v28, 2u);
      }
    }

    contentType = 4;
    goto LABEL_22;
  }

  if (inputFormat == 1380411457)
  {
    contentType = p_msrHC->contentType;
    if (p_msrHC->contentType == 2)
    {
LABEL_22:
      p_msrHC->operation = contentType;
    }
  }

LABEL_23:
  [(MSRHDRProcessing *)self handleDoViToHDR10TV:context TCControl:control DMData:data];
  displayType = p_msrHC->displayType;
  if (displayType == 6 || displayType == 1)
  {
    chromVectorWeight = 1077936128;
  }

  p_msrHC->inputWidth = IOSurfaceGetWidth(input);
  p_msrHC->inputHeight = IOSurfaceGetHeight(input);
  p_msrHC->outputWidth = IOSurfaceGetWidth(output);
  p_msrHC->outputHeight = IOSurfaceGetHeight(output);
  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 2557))
    {
      if ((Config[5112] & 0x80) != 0 && GetConfig())
      {
        v22 = GetConfig();
        HDRConfig::GetConfigEntryValue(v22, 0x74u, 0);
      }
    }
  }

  if (GetConfig())
  {
    v23 = GetConfig();
    if (*(v23 + 2931))
    {
      if ((v23[5860] & 0x80) != 0 && GetConfig())
      {
        v24 = GetConfig();
        HDRConfig::GetConfigEntryValue(v24, 0x85u, 0);
      }
    }
  }

  if (GetConfig())
  {
    v25 = GetConfig();
    if (*(v25 + 3151))
    {
      if ((v25[6300] & 0x80) != 0 && GetConfig())
      {
        v26 = GetConfig();
        HDRConfig::GetConfigEntryValue(v26, 0x8Fu, 0);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)processFrameByMSRWithComposerData:(id *)data DM:(id)m constraintDM:(id)dM DMData:(id *)mData tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl hdr10InfoFrame:(id *)frame layer0:(__IOSurface *)self0 layer1:(__IOSurface *)self1 output:(__IOSurface *)self2 frameNumebr:(unint64_t)self3 computedNumber:(unint64_t *)self4 config:(id *)self5
{
  v39 = *MEMORY[0x277D85DE8];
  mCopy = m;
  dMCopy = dM;
  getAlloc = [(MSRColorConfigMemoryPool *)self->_msrCUPool getAlloc];
  v22 = getAlloc;
  if (getAlloc)
  {
    mutableBytes = [getAlloc mutableBytes];
    self->_msrCU = mutableBytes;
    bzero(mutableBytes, 0xBD10uLL);
    [(MSRHDRProcessing *)self setupHardwareConfigUnit];
    p_msrHC = &self->_msrHC;
    *&self->_msrHC.contentType = 0u;
    *&self->_msrHC.operationFlags = 0u;
    *&self->_msrHC.inputFormat = 0u;
    *&self->_msrHC.inputTransferFunction = 0u;
    *&self->_msrHC.inputHeight = 0u;
    *&self->_msrHC.outputHeight = 0u;
    *&self->_msrHC.dpcParam.alphaPrime = 0u;
    *&self->_msrHC.dpcParam.gcpcGamma = 0u;
    *&self->_msrHC.inputIsSRGBEncodedEdr = 0;
    bzero(&self->_msrCC, 0x9008uLL);
    bzero(self->super._anon_90, 0x210uLL);
    *&self->super._anon_90[252] = -971227136;
    self->super._frameNumber = numebr;
    if (GetConfig())
    {
      Config = GetConfig();
      byte_280C66110 = *HDRConfig::GetConfigEntryValue(Config, 2u, 0);
      if (byte_280C66110 == 1)
      {
        dword_280C66114 = ccDumpStart;
        *algn_280C66118 = ccDumpStart + ccDumpNumber - 1;
      }
    }

    else
    {
      byte_280C66110 = 0;
    }

    msrCU = self->_msrCU;
    [(ProcessingEngine *)self setupToneMappingWithDmData:mData tcControl:control hdrControl:hdrControl dmConfig:self->super._anon_90 DM:mCopy constraintDM:dMCopy hdr10InfoFrame:frame];
    [(MSRHDRProcessing *)self setupMSRColorConfig];
    [(MSRHDRProcessing *)self setupMSRHDRContext:hdrControl TCControl:control DMData:mData input:layer0 output:output];
    if (p_msrHC->contentType - 2 < 2 || p_msrHC->contentType == 1 && self->_msrHC.originalInputTransferFunction == 18)
    {
      [(MSRHDRProcessing *)self setupMSRPolynomialTableForHDR10];
    }

    else
    {
      [(MSRHDRProcessing *)self setupMSRMappingTableWithMetadata:data];
    }

    [(MSRHDRProcessing *)self runPreFrameDumpActions:&self->_msrHC tcControl:control hdrControl:hdrControl];
    [(MSRHDRProcessing *)self populateMSRColorConfig:&self->_msrCC DMConfig:self->super._anon_90 DMData:mData tcControl:control hdrControl:hdrControl MSRHDRContext:&self->_msrHC];
    [(MSRHDRProcessing *)self attachHDRMetaDataToOutputSurface:output withDMData:mData withDMConfig:self->super._anon_90 withHdrControl:hdrControl withTcControl:control withMSRHDRContext:&self->_msrHC withInfoFrame:frame];
    memcpy(&msrCU->var2, &self->_msrCC, sizeof(msrCU->var2));
    *number = self->_computedFrames;
    [(MSRHDRProcessing *)self runPostFrameDumpActions:&self->_msrCC];
    *config = [(MSRColorConfigMemoryPool *)self->_msrCUPool generateColorConfig:v22 msrCU:self->_msrCU];
    if (GetConfig())
    {
      v27 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v27, 0x13u, 0))
      {
        [(MSRHDRProcessing *)self DumpOutputHcu:*config];
      }
    }

    self->_msrCU = 0;
  }

  else if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v26 = logInstanceID;
    }

    else
    {
      v26 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v34 = WORD1(v26);
      v35 = 2080;
      v36 = "[MSRHDRProcessing processFrameByMSRWithComposerData:DM:constraintDM:DMData:tcControl:hdrControl:hdr10InfoFrame:layer0:layer1:output:frameNumebr:computedNumber:config:]";
      v37 = 2048;
      v38 = 48400;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s: ERROR: Failed to allocate memory! size = %lu bytes", buf, 0x20u);
    }

    prevLogInstanceID = v26;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[MSRHDRProcessing processFrameByMSRWithComposerData:DM:constraintDM:DMData:tcControl:hdrControl:hdr10InfoFrame:layer0:layer1:output:frameNumebr:computedNumber:config:]";
    v35 = 2048;
    v36 = 48400;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s: ERROR: Failed to allocate memory! size = %lu bytes", buf, 0x16u);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v22 != 0;
}

- (void)setupMSRPolynomialTableForHDR10:(unsigned __int16 *)r10 TableLength:(unsigned int)length
{
  polynomialTableScale = [(MSRHDRProcessing *)self polynomialTableScale];
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(length - 1);
  v10 = vdupq_n_s64(8uLL);
  do
  {
    if (length)
    {
      v11 = 0;
      v12 = (length + 7) & 0x1FFFFFFF8;
      v13 = xmmword_2508CD910;
      v14 = xmmword_2508CD900;
      v15 = xmmword_2508CD940;
      v16 = xmmword_2508CD930;
      v17 = &r10[v7 + 4];
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v9, v13));
        if (vuzp1_s8(vuzp1_s16(v18, *v9.i8), *v9.i8).u8[0])
        {
          *(v17 - 4) = v11;
        }

        if (vuzp1_s8(vuzp1_s16(v18, *&v9), *&v9).i8[1])
        {
          *(v17 - 3) = polynomialTableScale + v11;
        }

        if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v14))), *&v9).i8[2])
        {
          *(v17 - 2) = 2 * polynomialTableScale + v11;
          *(v17 - 1) = 3 * polynomialTableScale + v11;
        }

        v19 = vmovn_s64(vcgeq_u64(v9, v15));
        if (vuzp1_s8(*&v9, vuzp1_s16(v19, *&v9)).i32[1])
        {
          *v17 = 4 * polynomialTableScale + v11;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(v19, *&v9)).i8[5])
        {
          v17[1] = 5 * polynomialTableScale + v11;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v16)))).i8[6])
        {
          v17[2] = 6 * polynomialTableScale + v11;
          v17[3] = 7 * polynomialTableScale + v11;
        }

        v15 = vaddq_s64(v15, v10);
        v14 = vaddq_s64(v14, v10);
        v13 = vaddq_s64(v13, v10);
        v11 += 8 * polynomialTableScale;
        v17 += 8;
        v16 = vaddq_s64(v16, v10);
        v12 -= 8;
      }

      while (v12);
    }

    ++v8;
    v7 += length;
  }

  while (v8 != 3);
}

- (void)setupMSRPolynomialTableForHDR10
{
  v3 = malloc_type_malloc(0x1800uLL, 0x1000040BDFB0063uLL);
  [(MSRHDRProcessing *)self setupMSRPolynomialTableForHDR10:v3 TableLength:1024];
  [(MSRHDRProcessing *)self updatePolynomialTables:v3 TableSize:1024];

  free(v3);
}

- (void)setupMSRMappingTableWithMetadata:(id *)metadata
{
  v5 = metadata->var0 + 8;
  v6 = malloc_type_malloc(6 << (LOBYTE(metadata->var0) + 8), 0x1000040BDFB0063uLL);
  v7 = 0;
  v8 = metadata->var0 + 8;
  do
  {
    createPolynomialTableForComponent(metadata, v7, v6 + 2 * (v7 << v8));
    ++v7;
  }

  while (v7 != 3);
  [(MSRHDRProcessing *)self updatePolynomialTables:v6 TableSize:(1 << v5)];

  free(v6);
}

- (void)updatePolynomialTables:(unsigned __int16 *)tables TableSize:(unint64_t)size
{
  v4 = 0;
  self->_reshapeLUTCreated = 1;
  self->_reshapeLUTSize = size;
  do
  {
    if (size)
    {
      reshapeLUT = self->_reshapeLUT;
      tablesCopy = tables;
      sizeCopy = size;
      do
      {
        v8 = *tablesCopy++;
        *reshapeLUT = v8;
        reshapeLUT = (reshapeLUT + 2);
        --sizeCopy;
      }

      while (sizeCopy);
    }

    ++v4;
    self = (self + 2048);
    tables += size;
  }

  while (v4 != 3);
}

- (BOOL)isMMREnabled
{
  if (GetConfig() && (v3 = GetConfig(), *(v3 + 1501)) && (v3[3000] & 0x80) != 0)
  {
    if (GetConfig())
    {
      Config = GetConfig();
      mmrEnable = *HDRConfig::GetConfigEntryValue(Config, 0x44u, 0);
    }

    else
    {
      mmrEnable = 0;
    }
  }

  else
  {
    mmrEnable = self->_mmrEnable;
  }

  return mmrEnable & 1;
}

- (void)hdr10_createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control HDRControl:(id *)rControl TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)self0
{
  mCopy = m;
  if ([(ProcessingEngine *)self hdr10_tm_configChanged:param HDRControl:rControl TCControl:control EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam])
  {
    [(MSRHDRProcessing *)self hdr10_tm_createLUTFromDMConfig:config TMParam:param TMParam:mParam TCControl:control EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam DM:mCopy];
    [(ProcessingEngine *)self hdr10_tm_reserveConfig:param HDRControl:rControl TCControl:control EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam];
    ++self->_computedFrames;
  }
}

- (void)hdr10_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  if (input)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      if (!v4)
      {
        v5 = 0.25;
      }

      lutInput[v4++] = v5 / (input - 1);
    }

    while (input > v4);
  }
}

- (void)dovi_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  if (input)
  {
    v4 = 0;
    do
    {
      lutInput[v4] = v4 / (input - 1);
      ++v4;
    }

    while (input > v4);
  }
}

- (void)hdr10_tm_createLUTFromDMConfig:(id *)config TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam TCControl:(ToneCurve_Control *)control EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam DM:(id)m
{
  getDolbyVisionDM4 = [m getDolbyVisionDM4];
  getTmLutSize = [(MSRHDRProcessing *)self getTmLutSize];
  v17 = getTmLutSize;
  v18 = 10;
  if (control->tcForHdrConstraint)
  {
    v18 = 9;
  }

  v19 = OBJC_IVAR___MSRHDRProcessing__dump[v18];
  v20 = 12;
  if (control->tcForHdrConstraint)
  {
    v20 = 11;
  }

  v21 = OBJC_IVAR___MSRHDRProcessing__dump[v20];
  v22 = malloc_type_calloc(getTmLutSize, 4uLL, 0x100004052888210uLL);
  if (v22)
  {
    [(MSRHDRProcessing *)self hdr10_getTmLutInput:v17 lutInput:v22];
    hdr10_setScalingFactorTableS_L_NormIn(self + v19, v22, v17, param, mParam, adaptationParam, ambAdaptationParam, config, getDolbyVisionDM4);
    if (adaptationParam->RWTMO_v2_on && GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0xB0u, 0) == 1))
    {
      if (v17)
      {
        bzero(self + v21, 4 * v17);
      }
    }

    else
    {
      hdr10_setLumaMixFactorTableS_L_NormIn(self + v21, v22, v17, param);
    }

    free(v22);
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

  getTmLutSize = [(MSRHDRProcessing *)self getTmLutSize];
  if (getTmLutSize)
  {
    v10 = 1.0 - factor;
    lumaMixFactorTableBufferConstr = self->_lumaMixFactorTableBufferConstr;
    lumaMixFactorTableBufferFull = self->_lumaMixFactorTableBufferFull;
    lumaMixFactorTableBuffer = self->_lumaMixFactorTableBuffer;
    scalingFactorTableBufferConstr = self->_scalingFactorTableBufferConstr;
    scalingFactorTableBufferFull = self->_scalingFactorTableBufferFull;
    scalingFactorTableBuffer = self->_scalingFactorTableBuffer;
    do
    {
      v17 = *scalingFactorTableBufferConstr++;
      v18 = v17;
      v19 = *scalingFactorTableBufferFull++;
      v20 = v19;
      if (v18 >= v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = v18;
      }

      if (v8)
      {
        v18 = v21;
      }

      *scalingFactorTableBuffer++ = (v10 * v20) + (factor * v18);
      v22 = *lumaMixFactorTableBufferFull++;
      v23 = v22;
      v24 = *lumaMixFactorTableBufferConstr++;
      *lumaMixFactorTableBuffer++ = (v10 * v23) + (factor * v24);
      --getTmLutSize;
    }

    while (getTmLutSize);
  }
}

- (void)hdr10_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer LumaMixFactorBuffer:(float *)factorBuffer
{
  if (t == 6)
  {
    v5 = 0;
    self->_tmMode = 1;
    self->_tonemappingTableSize = 513;
    do
    {
      v6 = buffer[v5];
      if (v6 >= 0.0)
      {
        v7 = 0;
      }

      else
      {
        v6 = -v6;
        v7 = 1;
      }

      v8 = ((v6 * 2097200.0) + 0.5) & 0x7FFFFFFF | (v7 << 31);
      v9 = (&self->_tonemapLUT + 4 * v5);
      *v9 = v8;
      v9[513] = ((factorBuffer[v5++] * 32768.0) + 0.5) & 0x7FFFFFFF;
    }

    while (v5 < self->_tonemappingTableSize);
  }
}

- (void)hlg_getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
{
  if (input)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      if (!v4)
      {
        v5 = 0.15;
      }

      lutInput[v4++] = v5 / (input - 1);
    }

    while (input > v4);
  }
}

- (void)hlg_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)self0
{
  mCopy = m;
  if ([(ProcessingEngine *)self hlg_tm_configChanged:config HDRControl:control TCControl:cControl TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam])
  {
    LODWORD(v16) = mode;
    [(MSRHDRProcessing *)self hlg_tm_createLUTFromDMConfig:config DM:mCopy TCControl:cControl TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam TMMode:v16];
    [(MSRHDRProcessing *)self hlg_tm_reserveConfig:config HDRControl:control TCControl:cControl TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam];
    ++self->_computedFrames;
  }
}

- (void)hlg_tm_reserveConfig:(id *)config HDRControl:(id *)control TCControl:(ToneCurve_Control *)cControl TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam
{
  v8 = &OBJC_IVAR___ProcessingEngine__prev;
  if (cControl->tcForHdrConstraint)
  {
    v8 = &OBJC_IVAR___ProcessingEngine__prevConstr;
  }

  v9 = self + *v8;
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

- (void)hlg_tm_createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)mode
{
  getDolbyVisionDM4 = [m getDolbyVisionDM4];
  v15 = 10;
  if (control->tcForHdrConstraint)
  {
    v15 = 9;
  }

  v16 = OBJC_IVAR___MSRHDRProcessing__dump[v15];
  getTmLutSize = [(MSRHDRProcessing *)self getTmLutSize];
  v18 = malloc_type_calloc(getTmLutSize, 4uLL, 0x100004052888210uLL);
  if (v18)
  {
    [(MSRHDRProcessing *)self hlg_getTmLutInput:getTmLutSize lutInput:v18];
    hlg_setScalingFactorTable(self + v16, v18, getTmLutSize, config, param, adaptationParam, ambAdaptationParam, mode, getDolbyVisionDM4);
    free(v18);
  }
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

  getTmLutSize = [(MSRHDRProcessing *)self getTmLutSize];
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

- (void)hlg_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer
{
  if (t == 6)
  {
    v4 = 0;
    self->_tmMode = 1;
    self->_tonemappingTableSize = 513;
    do
    {
      v5 = buffer[v4];
      v6 = v5 < 0.0;
      if (v5 < 0.0)
      {
        v5 = -v5;
      }

      self->_tonemapLUT.lut[0][v4++] = ((v5 * 16777000.0) + 0.5) & 0x7FFFFFFF | (v6 << 31);
    }

    while (v4 < self->_tonemappingTableSize);
  }
}

- (BOOL)dovi_tm_configChanged:(id *)changed HDRControl:(id *)control DM:(id)m LLDoVi:(BOOL)vi EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam tcCtrl:(ToneCurve_Control *)ctrl
{
  mCopy = m;
  if (GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x39u, 0) & 1) != 0) || (!ctrl->tcForHdrConstraint ? (v17 = &OBJC_IVAR___ProcessingEngine__prev) : (v17 = &OBJC_IVAR___ProcessingEngine__prevConstr), (v18 = (self + *v17), control->var0 != *v18) || [(MSRHDRProcessing *)self hasAMVEConfigChanged:v18 + 487 tcCtrl:ctrl]))
  {
    v19 = 1;
  }

  else if (LODWORD(changed[1].var46) == 4)
  {
    getDolbyVisionDM4 = [mCopy getDolbyVisionDM4];
    v19 = [getDolbyVisionDM4 hasDM4TonemapConfigChanged:changed TonemapConfig:v18 + 6 TCControl:ctrl EdrAdaptationParam:param AmbAdaptationParam:adaptationParam];
  }

  else
  {
    v19 = hasDoviTonemapConfigChanged((v18 + 6), changed, ctrl, vi, param, adaptationParam);
  }

  return v19;
}

- (void)dovi_tm_reserveConfig:(id *)config HDRControl:(id *)control DM:(id)m LLDoVi:(BOOL)vi EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam tcCtrl:(ToneCurve_Control *)ctrl
{
  mCopy = m;
  if (ctrl->tcForHdrConstraint)
  {
    v15 = &OBJC_IVAR___ProcessingEngine__prevConstr;
  }

  else
  {
    v15 = &OBJC_IVAR___ProcessingEngine__prev;
  }

  v16 = (self + *v15);
  *v16 = control->var0;
  [(MSRHDRProcessing *)self updateAMVEConfig:v16 + 487 tcCtrl:ctrl];
  if (LODWORD(config[1].var46) == 4)
  {
    getDolbyVisionDM4 = [mCopy getDolbyVisionDM4];
    [getDolbyVisionDM4 updateDM4TonemapConfig:v16 + 6 DMConfig:config TCControl:ctrl EdrAdaptationParam:param AmbAdaptationParam:adaptationParam];
  }

  else
  {
    updateDoViTonemapConfig((v16 + 6), config, ctrl, vi, &param->on, adaptationParam);
  }
}

- (void)dovi_tm_createLUTFromDMConfig:(id *)config HDRControl:(id *)control DM:(id)m LLDoVi:(BOOL)vi TMParam:(_DoViTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam HlgOOTFCombined:(BOOL)self0 HlgOOTFOnly:(BOOL)self1 IsDoVi84:(BOOL)self2 IsInternalDisplay:(BOOL)self3 tcCtrl:(ToneCurve_Control *)self4
{
  viCopy = vi;
  mCopy = m;
  v16 = 10;
  if (ctrl->tcForHdrConstraint)
  {
    v16 = 9;
  }

  v17 = OBJC_IVAR___MSRHDRProcessing__dump[v16];
  v18 = 19;
  if (ctrl->tcForHdrConstraint)
  {
    v18 = 18;
  }

  v19 = OBJC_IVAR___MSRHDRProcessing__dump[v18];
  if (only)
  {
    getTmLutSize = [(MSRHDRProcessing *)self getTmLutSize];
  }

  else
  {
    getTmLutSize = 513;
  }

  v21 = malloc_type_calloc(getTmLutSize, 4uLL, 0x100004052888210uLL);
  if (v21)
  {
    if (only)
    {
      [(MSRHDRProcessing *)self dovi_ootf_getTmLutInput:getTmLutSize lutInput:v21];
    }

    else
    {
      [(MSRHDRProcessing *)self dovi_getTmLutInput:getTmLutSize lutInput:v21];
    }

    BYTE2(v23) = vi84;
    LOWORD(v23) = __PAIR16__(only, combined);
    [mCopy dovi_setScalingFactorTable:self + v17 lutInput:v21 tableSize:getTmLutSize config:config hdrCtrl:control tmParam:param edrAdaptationParam:adaptationParam ambAdaptationParam:ambAdaptationParam hlgOOTFCombined:v23 hlgOOTFOnly:ctrl isDoVi84:? tcCtrl:?];
    v22 = self + v19;
    [mCopy dovi_setSat2FactorTable:v22 tableSize:512 config:config llDovi:viCopy applyDoVi84SatAdjustment:(vi84 && display) & combined];
    *(v22 + 512) = *(v22 + 511);
    free(v21);
  }
}

- (void)dovi_mixLUTFromTCControl:(ToneCurve_Control *)control TCControlConstr:(ToneCurve_Control *)constr withFactor:(float)factor
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

  v9 = 1.0 - factor;
  scalingFactorTableBufferFull = self->_scalingFactorTableBufferFull;
  v11 = 0x3FFFFFFFFFFFFBFELL;
  do
  {
    v12 = self->_sat2FactorTableBufferConstr[v11];
    v13 = scalingFactorTableBufferFull[v11 + 1026];
    if (v12 >= v13)
    {
      v14 = scalingFactorTableBufferFull[v11 + 1026];
    }

    else
    {
      v14 = self->_sat2FactorTableBufferConstr[v11];
    }

    if (v8)
    {
      v12 = v14;
    }

    self->_sat2FactorTableBuffer[v11] = (v9 * v13) + (factor * v12);
    self->_lumaMixFactorTableBuffer[v11] = (v9 * self->_lumaMixFactorTableBufferFull[v11]) + (factor * self->_lumaMixFactorTableBufferConstr[v11]);
    ++v11;
  }

  while (v11 * 4);
}

- (void)dovi_tm_updateLUT:(int64_t)t ScalingFactorBuffer:(float *)buffer ScalingFactorBufferSize:(unint64_t)size Sat2FactorBuffer:(float *)factorBuffer Sat2FactorBufferSize:(unint64_t)bufferSize dmConfig:(id *)config HlgOOTFCombined:(BOOL)combined
{
  if (t == 6)
  {
    self->_tonemappingTableSize = size;
    if ((LOBYTE(config[1].var47) & 0x80) == 0 || (debugDM4DisableConf & 0x80) != 0)
    {
      self->_tmMode = 0;
      if (LODWORD(config[1].var46) == 4)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (size)
      {
        v13 = 0;
        v14 = 1.0 / (size - 1);
        p_tonemapLUT = &self->_tonemapLUT;
        v16 = factorBuffer + 1;
        do
        {
          if (v13)
          {
            v17 = v14 * v13;
          }

          else
          {
            v17 = v12;
          }

          v18 = *buffer * v17;
          v19 = -v18;
          if (v18 >= 0.0)
          {
            v19 = *buffer * v17;
          }

          p_tonemapLUT->lut[0][0] = ((v19 * 16777000.0) + 0.5) & 0x7FFFFFFF | ((v18 < 0.0) << 31);
          if (LOBYTE(config[1].var51) == 1)
          {
            v20 = buffer[513];
          }

          else
          {
            v21 = *buffer;
            v20 = getMesopicCrushForDM3(config, v17 * *buffer) * (((v21 + -1.0) * v17) + 1.0);
          }

          if (v20 >= 0.0)
          {
            v22 = 0;
          }

          else
          {
            v20 = -v20;
            v22 = 1;
          }

          p_tonemapLUT->lut[2][0] = ((v20 * 16777000.0) + 0.5) & 0x7FFFFFFF | (v22 << 31);
          v23 = *(v16 - 1);
          if (v23 >= 0.0)
          {
            v24 = 0;
          }

          else
          {
            v23 = -v23;
            v24 = 1;
          }

          p_tonemapLUT->lut[1][0] = ((v23 * 16777000.0) + 0.5) & 0x7FFFFFFF | (v24 << 31);
          v25 = *v16;
          v16 += 2;
          v26 = v25 * config->var55.gcpcRefWhiteNits;
          v27 = -v26;
          if (v26 >= 0.0)
          {
            v27 = v26;
          }

          p_tonemapLUT->lut[3][0] = ((v27 * 16777000.0) + 0.5) & 0x7FFFFFFF | ((v26 < 0.0) << 31);
          ++v13;
          ++buffer;
          p_tonemapLUT = (p_tonemapLUT + 4);
        }

        while (v13 < self->_tonemappingTableSize);
      }
    }

    else
    {

      [(MSRHDRProcessing *)self hlg_tm_updateLUT:6 ScalingFactorBuffer:self->_scalingFactorTableBuffer];
    }
  }
}

- (void)updateLUTFromDMConfig:(id *)config TCControl:(ToneCurve_Control *)control HDRControl:(id *)rControl
{
  v17 = *MEMORY[0x277D85DE8];
  processingType = control->tmData.processingType;
  switch(processingType)
  {
    case 5:
      if (rControl->var17 != 18)
      {
LABEL_36:
        v13 = *MEMORY[0x277D85DE8];
        return;
      }

      if (control->targetTransferFunction == 18)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v8 = logInstanceID;
          }

          else
          {
            v8 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v16 = WORD1(v8);
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: hdrCtrl->transferFunction != kIOSurfaceTagColorTransferFunction_ITU_R_2100_HLG warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 1770\n", buf, 0xCu);
          }

          prevLogInstanceID = v8;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: hdrCtrl->transferFunction != kIOSurfaceTagColorTransferFunction_ITU_R_2100_HLG warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 1770\n", buf, 2u);
        }

        goto LABEL_36;
      }

      break;
    case 2:
      break;
    case 1:
      v7 = *MEMORY[0x277D85DE8];

      [(MSRHDRProcessing *)self hdr10_tm_updateLUT:6 ScalingFactorBuffer:self->_scalingFactorTableBuffer LumaMixFactorBuffer:self->_lumaMixFactorTableBuffer];
      return;
    default:
      if (processingType)
      {
        if (processingType == 4)
        {
          if (rControl->var17 == 18)
          {
            v12 = !self->super._enableHwOOTF || !self->super._enableHwOotfForDolby84;
            goto LABEL_35;
          }
        }

        else if (enableLogInstance)
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
            v16 = WORD1(v11);
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: processingType == kHDRProcessingTypeDoVi || processingType == kHDRProcessingTypeDoVi84 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 1773\n", buf, 0xCu);
          }

          prevLogInstanceID = v11;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: processingType == kHDRProcessingTypeDoVi || processingType == kHDRProcessingTypeDoVi84 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 1773\n", buf, 2u);
        }
      }

      v12 = 0;
LABEL_35:
      LOBYTE(v14) = v12;
      [(MSRHDRProcessing *)self dovi_tm_updateLUT:6 ScalingFactorBuffer:self->_scalingFactorTableBuffer ScalingFactorBufferSize:513 Sat2FactorBuffer:self->_sat2FactorTableBuffer Sat2FactorBufferSize:513 dmConfig:config HlgOOTFCombined:v14];
      goto LABEL_36;
  }

  v9 = *MEMORY[0x277D85DE8];

  [(MSRHDRProcessing *)self hlg_tm_updateLUT:6 ScalingFactorBuffer:self->_scalingFactorTableBuffer];
}

- (unsigned)setLms2RgbScale2P:(const float *)p OutputScale:(float)scale
{
  v4 = (fabsf(*p) + fabsf(p[1])) + fabsf(p[2]);
  v5 = (fabsf(p[3]) + fabsf(p[4])) + fabsf(p[5]);
  v6 = (fabsf(p[6]) + fabsf(p[7])) + fabsf(p[8]);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  v7 = log2f(32768.0 / (v4 * scale));
  if (v7 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v7;
  }
}

- (unsigned)getMatrixScale2P:(const float *)p OutputScale:(float)scale
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = fabsf(p[v4]);
    if (v5 < v6)
    {
      v5 = v6;
    }

    ++v4;
  }

  while (v4 != 9);
  v7 = log2f(32768.0 / (v5 * scale));
  if (v7 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v7;
  }
}

- (void)decideStageStatus:(BOOL *)status MSRHDRContext:(MSRHDRContext *)context DMConfig:(id *)config
{
  v81 = *MEMORY[0x277D85DE8];
  *&context->enableReshaping = 0;
  operation = context->operation;
  if (operation == 1)
  {
    inputFormat = context->inputFormat;
    if (inputFormat > 1936077875)
    {
      if (inputFormat > 2016686641)
      {
        if (inputFormat > 2019963441)
        {
          if (inputFormat == 2019963442 || inputFormat == 2033463606)
          {
            goto LABEL_52;
          }

          v15 = 13364;
        }

        else
        {
          if (inputFormat == 2016686642 || inputFormat == 2016687156)
          {
            goto LABEL_52;
          }

          v15 = 12848;
        }

        v11 = v15 | 0x78660000;
      }

      else
      {
        if (inputFormat <= 1937126451)
        {
          if (inputFormat != 1936077876 && inputFormat != 1937125936)
          {
            v11 = 1937125938;
            goto LABEL_51;
          }

LABEL_52:
          if (context->inputTransferFunction == 16)
          {
            outputFormat = context->outputFormat;
            if (outputFormat > 1953903151)
            {
              if (outputFormat != 1953903152 && outputFormat != 1953903668 && outputFormat != 1953903154)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v24 = outputFormat - 1886680624;
              if (v24 > 4 || ((1 << v24) & 0x15) == 0)
              {
                goto LABEL_63;
              }
            }

            if (context->outputTransferFunction == 16)
            {
              v12 = 1;
LABEL_62:
              context->enableReshaping = v12;
              goto LABEL_67;
            }
          }

LABEL_63:
          v25 = 0;
          context->enableToneMapping = 1;
          if (inputFormat != 1380411457 && inputFormat != 1919365992)
          {
            v25 = getBitDepthFromSurfaceFormat(inputFormat) < 0x10;
          }

          context->enableReshaping = v25;
          context->operation = 3;
          goto LABEL_67;
        }

        if (inputFormat == 1937126452 || inputFormat == 1983000886)
        {
          goto LABEL_52;
        }

        v11 = 2016686640;
      }

LABEL_51:
      if (inputFormat != v11)
      {
        goto LABEL_63;
      }

      goto LABEL_52;
    }

    if (inputFormat <= 1885746227)
    {
      if (inputFormat <= 1882469427)
      {
        if (inputFormat == 1882468912)
        {
          goto LABEL_52;
        }

        v11 = 1882468914;
        goto LABEL_51;
      }

      if (inputFormat == 1882469428 || inputFormat == 1885745712)
      {
        goto LABEL_52;
      }

      v14 = 12850;
    }

    else
    {
      if (inputFormat > 1936077359)
      {
        if (inputFormat == 1936077360)
        {
          goto LABEL_52;
        }

        v11 = 1936077362;
        goto LABEL_51;
      }

      if ((inputFormat - 1886680624) <= 4 && ((1 << (inputFormat - 48)) & 0x15) != 0)
      {
        goto LABEL_52;
      }

      v14 = 13364;
    }

    v11 = v14 | 0x70660000;
    goto LABEL_51;
  }

  if (operation == 2)
  {
    context->enableToneMapping = 1;
    goto LABEL_67;
  }

  if ((operation & 4) != 0)
  {
    context->enableReshaping = isFormatYUV(context->inputFormat);
    context->operation = 4;
    context->enableConverting = 1;
    goto LABEL_67;
  }

  if (operation == 3)
  {
    v12 = 0;
    context->enableToneMapping = 1;
    v13 = context->inputFormat;
    if (v13 != 1380411457 && v13 != 1919365992)
    {
      v12 = getBitDepthFromSurfaceFormat(v13) < 0x10;
    }

    goto LABEL_62;
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v16 = logInstanceID;
    }

    else
    {
      v16 = prevLogInstanceID;
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = context->operation;
      v77 = 134218240;
      v78 = WORD1(v16);
      v79 = 1024;
      v80 = v19;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     ERROR: Not supported operation %d !!!", &v77, 0x12u);
    }

    prevLogInstanceID = v16;
  }

  else
  {
    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = context->operation;
      v77 = 67109120;
      LODWORD(v78) = v22;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     ERROR: Not supported operation %d !!!", &v77, 8u);
    }
  }

LABEL_67:
  outputTransferFunction = context->outputTransferFunction;
  v27 = outputTransferFunction - 1 < 0x12 && ((0x29001u >> (outputTransferFunction - 1)) & 1) != 0 || outputTransferFunction == 8 && context->dpcParam.on;
  v28 = context->outputFormat;
  v30 = v28 != 1919365992 && v28 != 1380411457;
  v31 = context->operation;
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      goto LABEL_108;
    }

    if (v31 != 4)
    {
LABEL_93:
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v36 = logInstanceID;
        }

        else
        {
          v36 = prevLogInstanceID;
        }

        v37 = MEMORY[0x277D86220];
        v38 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 134217984;
          v78 = WORD1(v36);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: (msrHC->operation == ((HDRProcessingOperation)(kHDRProcessingReshape | kHDRProcessingToneMap))) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 2516\n", &v77, 0xCu);
        }

        prevLogInstanceID = v36;
      }

      else
      {
        v40 = MEMORY[0x277D86220];
        v41 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v77) = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: (msrHC->operation == ((HDRProcessingOperation)(kHDRProcessingReshape | kHDRProcessingToneMap))) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 2516\n", &v77, 2u);
        }
      }

LABEL_108:
      contentType = context->contentType;
      if (context->contentType != 3)
      {
        if (contentType == 2)
        {
          displayType = context->displayType;
          if (displayType > 7 || displayType == 5)
          {
            goto LABEL_201;
          }

          processingType = context->processingType;
          *status = 1;
          status[1] = isFormatYUV(context->inputFormat);
          if (processingType != 1)
          {
            status[6] = 1;
            *(status + 2) = 16843009;
            goto LABEL_200;
          }

          *(status + 2) = 0x100000101;
          status[10] = 1;
        }

        else if (contentType == 1)
        {
          inputColorSpace = context->inputColorSpace;
          if (inputColorSpace)
          {
            if (inputColorSpace != 2)
            {
              goto LABEL_201;
            }

            v44 = context->displayType;
            if (v44 > 7 || v44 == 5)
            {
              goto LABEL_201;
            }

            var46 = config[1].var46;
            if (SLODWORD(var46) <= 3)
            {
              *status = 257;
              *(status + 2) = 0;
              *(status + 6) = 16842753;
LABEL_168:
              status[10] = 1;
              goto LABEL_201;
            }

            if (LODWORD(var46) != 4)
            {
              if (enableLogInstance)
              {
                if (logInstanceID)
                {
                  v66 = logInstanceID;
                }

                else
                {
                  v66 = prevLogInstanceID;
                }

                v67 = MEMORY[0x277D86220];
                v68 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  v77 = 134217984;
                  v78 = WORD1(v66);
                  _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: dm_config_ptr->dmVersion == 4 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 2536\n", &v77, 0xCu);
                }

                prevLogInstanceID = v66;
              }

              else
              {
                v69 = MEMORY[0x277D86220];
                v70 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v77) = 0;
                  _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: dm_config_ptr->dmVersion == 4 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 2536\n", &v77, 2u);
                }
              }
            }

            *(status + 3) = 16843009;
            *status = 16843009;
LABEL_200:
            *(status + 7) = 16843008;
            goto LABEL_201;
          }

          v63 = context->displayType;
          if (v63 > 7 || v63 == 5)
          {
            goto LABEL_201;
          }

          if ((*&self->super._anon_90[484] & 0x80) != 0 && (debugDM4DisableConf & 0x80) == 0)
          {
            *status = 0x1000000010101;
            *(status + 4) = 0;
            goto LABEL_168;
          }

          *(status + 3) = 16843009;
          *status = 16843009;
          *(status + 7) = 16843008;
          if (context->processingType != 4)
          {
            goto LABEL_201;
          }

          if (self->super._enableHwOOTF)
          {
            enableHwOotfForDolby84 = self->super._enableHwOotfForDolby84;
            goto LABEL_180;
          }

          goto LABEL_179;
        }

LABEL_201:
        if (isFormatYUV(context->outputFormat))
        {
          v71 = 1;
          status[11] = 1;
        }

        else
        {
          if (v30 || !v27)
          {
            enableFp16Regamma = v30 && v27;
          }

          else
          {
            enableFp16Regamma = self->_enableFp16Regamma;
          }

          v71 = 0;
          status[11] = enableFp16Regamma;
        }

        status[12] = v71;
        goto LABEL_208;
      }

      if (context->inputColorSpace)
      {
        v48 = context->inputFormat;
        if (v48 > 1647534391)
        {
          if (v48 == 1815162994)
          {
            goto LABEL_172;
          }

          v49 = 1647534392;
        }

        else
        {
          if (v48 == 1378955371)
          {
            goto LABEL_172;
          }

          v49 = 1380411457;
        }

        if (v48 != v49)
        {
          goto LABEL_201;
        }
      }

LABEL_172:
      v64 = context->displayType;
      if (v64 > 7 || v64 == 5)
      {
        goto LABEL_201;
      }

      *status = 1;
      status[1] = isFormatYUV(context->inputFormat);
      *(status + 2) = 0x100000001;
      status[10] = 1;
      if (self->super._enableHwOOTF)
      {
        enableHwOotfForDolby84 = self->super._enableHwOotfForHLG;
LABEL_180:
        status[14] = enableHwOotfForDolby84;
        goto LABEL_201;
      }

LABEL_179:
      enableHwOotfForDolby84 = 0;
      goto LABEL_180;
    }

    if (!context->enableConverting || context->enableToneMapping)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v33 = logInstanceID;
        }

        else
        {
          v33 = prevLogInstanceID;
        }

        v34 = MEMORY[0x277D86220];
        v35 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 134217984;
          v78 = WORD1(v33);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: msrHC->enableConverting && !msrHC->enableToneMapping warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 2491\n", &v77, 0xCu);
        }

        prevLogInstanceID = v33;
      }

      else
      {
        v50 = MEMORY[0x277D86220];
        v51 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v77) = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: msrHC->enableConverting && !msrHC->enableToneMapping warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 2491\n", &v77, 2u);
        }
      }
    }

    v52 = context->inputColorSpace;
    if (v52 && v52 != 2 && v52 != 1 || context->processingType != 5 || (isSupportedMSRColorConversion(context->inputFormat, context->outputFormat) & 1) == 0)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v53 = logInstanceID;
        }

        else
        {
          v53 = prevLogInstanceID;
        }

        v54 = MEMORY[0x277D86220];
        v55 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v77 = 134217984;
          v78 = WORD1(v53);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: isConversionInputRgb(msrHC) || isConversionInputYuv(msrHC) || isConversionInputIpt(msrHC) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 2492\n", &v77, 0xCu);
        }

        prevLogInstanceID = v53;
      }

      else
      {
        v56 = MEMORY[0x277D86220];
        v57 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v77) = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: isConversionInputRgb(msrHC) || isConversionInputYuv(msrHC) || isConversionInputIpt(msrHC) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 2492\n", &v77, 2u);
        }
      }
    }

    operationFlags = context->operationFlags;
    *status = 1;
    v59 = context->inputColorSpace;
    if (v59 == 2)
    {
      if (context->processingType == 5 && isSupportedMSRColorConversion(context->inputFormat, context->outputFormat))
      {
        status[1] = 1;
      }
    }

    else if (!v59 && context->processingType == 5)
    {
      if (isSupportedMSRColorConversion(context->inputFormat, context->outputFormat))
      {
        *(status + 1) = 257;
        status[3] = 1;
      }

      else
      {
        *(status + 1) = 257;
      }

      if (context->inputTransferFunction == 18 && isSupportedMSRColorConversion(context->inputFormat, context->outputFormat))
      {
        outputColorSpace = context->outputColorSpace;
        if (outputColorSpace)
        {
          v61 = 6;
          goto LABEL_153;
        }

        if (context->outputTransferFunction != 18)
        {
          v62 = (operationFlags & 1) == 0;
          status[6] = v62;
          status[10] = v62;
          status[11] = v62;
          goto LABEL_155;
        }
      }

LABEL_152:
      status[4] = 1;
      outputColorSpace = context->outputColorSpace;
      v61 = 9;
LABEL_153:
      v62 = (operationFlags & 1) == 0;
      status[v61] = v62;
      status[10] = v62;
      status[11] = v62;
      if (outputColorSpace == 2)
      {
        if (context->processingType != 5 || !isSupportedMSRColorConversion(context->inputFormat, context->outputFormat))
        {
          goto LABEL_161;
        }

LABEL_160:
        status[12] = v62;
        goto LABEL_161;
      }

      if (outputColorSpace)
      {
LABEL_161:
        status[13] = v62;
        goto LABEL_209;
      }

LABEL_155:
      if (context->processingType != 5 || (isSupportedMSRColorConversion(context->inputFormat, context->outputFormat) & 1) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_160;
    }

    *(status + 1) = 257;
    goto LABEL_152;
  }

  if (v31 != 1)
  {
    if (v31 == 2)
    {
      *status = 0x1000001010001;
      *(status + 4) = 0;
      status[10] = 1;
      if (v30 || !v27)
      {
        v32 = v30 && v27;
      }

      else
      {
        v32 = self->_enableFp16Regamma;
      }

      status[11] = v32;
      status[12] = isFormatYUV(v28);
LABEL_208:
      status[13] = 0;
      goto LABEL_209;
    }

    goto LABEL_93;
  }

  v39 = context->inputColorSpace;
  *status = 1;
  if (v39 == 2)
  {
    status[1] = 1;
    *(status + 2) = 0;
    *(status + 3) = 0;
    *(status + 2) = 16843009;
    *(status + 6) = 1;
  }

  else
  {
    *(status + 6) = 0;
    *(status + 1) = 0;
  }

LABEL_209:
  status[15] = 1;
  if (!GetConfig())
  {
    goto LABEL_221;
  }

  Config = GetConfig();
  if ((*HDRConfig::GetConfigEntryValue(Config, 0x47u, 0) - 1) > 1)
  {
    goto LABEL_221;
  }

  v74 = context->outputFormat;
  if (v74 > 1953903151)
  {
    if (v74 != 1953903152 && v74 != 1953903668)
    {
      v75 = 1953903154;
LABEL_218:
      if (v74 != v75)
      {
        goto LABEL_221;
      }
    }
  }

  else if ((v74 - 1886680624) > 4 || ((1 << (v74 - 48)) & 0x15) == 0)
  {
    v75 = 1882468912;
    goto LABEL_218;
  }

  if (context->outputTransferFunction == 16)
  {
    *(status + 11) = 257;
  }

LABEL_221:
  v76 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigHeader:(id *)header Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = qword_280C66108;
  if (qword_280C66108)
  {
    frameNumber = self->super._frameNumber;
    if (frameNumber != dword_280C660FC)
    {
LABEL_27:
      fprintf(v10, "%scontrolpath[%d] = {}\n", prefix, frameNumber);
      fprintf(v10, "%s\n", prefix);
      goto LABEL_28;
    }

    *v22 = 0u;
    v23 = 0u;
    v20 = time(0);
    localtime_r(&v20, &v21);
    asctime_r(&v21, v22);
    fprintf(v10, "%s---## %s %s on %s FDM Control Path Parameters (operation=%d %s, convertType=%d %s)\n", prefix, contentTypeName[context->contentType], colorSpaceName[context->inputColorSpace], displayTypeName[context->displayType], context->operation, operationName[context->operation], context->convertType, convertTypeName[context->convertType]);
    fprintf(v10, "%s---## Created on: %s", prefix, v22);
    if (dword_280C66100 == -1)
    {
      fprintf(v10, "%s---## Frames: all\n");
    }

    else
    {
      fprintf(v10, "%s---## Frames: %d - %d\n");
    }

    fprintf(v10, "%s---## Targetnits: %f\n", prefix, control->targetMaxLinear);
    fprintf(v10, "%s---## TargetMinNits: %f\n", prefix, control->targetMinLinear);
    inputTransferFunction = context->inputTransferFunction;
    if (inputTransferFunction > 15)
    {
      if (inputTransferFunction != 16)
      {
        if (inputTransferFunction == 18)
        {
          v16 = "HLG";
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v16 = "PQ";
    }

    else
    {
      if (inputTransferFunction != 1)
      {
        if (inputTransferFunction == 13)
        {
          v16 = "sRGB";
          goto LABEL_16;
        }

LABEL_13:
        v16 = "Linear";
        goto LABEL_16;
      }

      v16 = "709";
    }

LABEL_16:
    fprintf(v10, "%s---## Input: %c%c%c%c [%c%c%c%c]%s\n", prefix, HIBYTE(context->inputFormatRaw), BYTE2(context->inputFormatRaw), BYTE1(context->inputFormatRaw), context->inputFormatRaw, HIBYTE(context->inputFormat), BYTE2(context->inputFormat), BYTE1(context->inputFormat), context->inputFormat, v16);
    outputTransferFunction = context->outputTransferFunction;
    if (outputTransferFunction > 15)
    {
      if (outputTransferFunction == 16)
      {
        v18 = "PQ";
        goto LABEL_26;
      }

      if (outputTransferFunction == 18)
      {
        v18 = "HLG";
        goto LABEL_26;
      }
    }

    else
    {
      if (outputTransferFunction == 1)
      {
        v18 = "709";
        goto LABEL_26;
      }

      if (outputTransferFunction == 13)
      {
        v18 = "sRGB";
LABEL_26:
        fprintf(v10, "%s---## Output: %c%c%c%c [%c%c%c%c]%s\n", prefix, HIBYTE(context->outputFormatRaw), BYTE2(context->outputFormatRaw), BYTE1(context->outputFormatRaw), context->outputFormatRaw, HIBYTE(context->outputFormat), BYTE2(context->outputFormat), BYTE1(context->outputFormat), context->outputFormat, v18);
        fprintf(v10, "%s\n", prefix);
        fprintf(v10, "%scontrolpath = {}\n", prefix);
        frameNumber = self->super._frameNumber;
        goto LABEL_27;
      }
    }

    v18 = "Linear";
    goto LABEL_26;
  }

LABEL_28:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB01_01:(id *)b01_01 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  enabledCopy = enabled;
  v16 = qword_280C66108;
  contentType = context->contentType;
  if (context->contentType == 3)
  {
    if (context->inputColorSpace)
    {
      inputFormat = context->inputFormat;
      if (inputFormat > 1647534391)
      {
        v23 = inputFormat == 1815162994;
        v24 = 1647534392;
      }

      else
      {
        v23 = inputFormat == 1378955371;
        v24 = 1380411457;
      }

      if (!v23 && inputFormat != v24)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_16;
  }

  if (contentType == 2)
  {
LABEL_16:
    displayType = context->displayType;
    if (displayType <= 7 && displayType != 5)
    {
      BitDepthFromSurfaceFormat = getBitDepthFromSurfaceFormat(context->inputFormat);
LABEL_21:
      sdrMaxBrightnessInNits = control->sdrMaxBrightnessInNits;
      goto LABEL_22;
    }

LABEL_44:
    BitDepthFromSurfaceFormat = data->var11 - 2;
    goto LABEL_21;
  }

  BitDepthFromSurfaceFormat = data->var11 - 2;
  sdrMaxBrightnessInNits = control->sdrMaxBrightnessInNits;
  if (contentType == 1)
  {
    v20 = context->inputFormat;
    if (isFormatYUV(v20))
    {
      var13 = data->var13;
      if (!enabledCopy)
      {
        return;
      }

      goto LABEL_23;
    }
  }

LABEL_22:
  v20 = context->inputFormat;
  var13 = getChromaFormatFromSurfaceFormat(v20);
  if (!enabledCopy)
  {
    return;
  }

LABEL_23:
  if (v16)
  {
    fprintf(v16, "%s--- general and B01-01 Frame %d ---\n", prefix, self->super._frameNumber);
    v40 = BitDepthFromSurfaceFormat;
    fprintf(v16, "%scontrolpath[%d].signal_bit_depth = %d\n", prefix, self->super._frameNumber, BitDepthFromSurfaceFormat);
    fprintf(v16, "%scontrolpath[%d].signal_color_space = %d\n", prefix, self->super._frameNumber, context->inputColorSpace);
    fprintf(v16, "%scontrolpath[%d].signal_chroma_format = %d\n", prefix, self->super._frameNumber, var13);
    fprintf(v16, "%scontrolpath[%d].reshapeEnabled = %d\n", prefix, self->super._frameNumber, context->enableReshaping);
    if (context->enableReshaping)
    {
      v28 = 0;
      selfCopy = self;
      do
      {
        fprintf(v16, "%scontrolpath[%d].reshapeLUT%d = {\n", prefix, self->super._frameNumber, v28);
        [(ProcessingEngine *)self printArray:v16 Prefix:prefix Array:selfCopy->_reshapeLUT Size:1024 NumberPerLine:8 Format:1];
        ++v28;
        selfCopy = (selfCopy + 2048);
      }

      while (v28 != 3);
    }

    fprintf(v16, "%s\n", prefix);
    v20 = context->inputFormat;
    LOBYTE(BitDepthFromSurfaceFormat) = v40;
  }

  b01_01->var2.var0.var1.dmaConfig.inputBitDepth = BitDepthFromSurfaceFormat;
  inputColorSpace = context->inputColorSpace;
  outputColorSpace = context->outputColorSpace;
  b01_01->var2.var0.var0[1] = inputColorSpace;
  b01_01->var2.var0.var0[2] = var13;
  b01_01->var2.var0.var1.dmaConfig.outputBitDepth = 16;
  b01_01->var2.var0.var0[7] = outputColorSpace;
  if (v20 <= 1647534391)
  {
    if (v20 != 1378955371)
    {
      v32 = 1380411457;
      goto LABEL_33;
    }

LABEL_34:
    v33 = context->displayType;
    if (v33 <= 7 && ((1 << v33) & 0xB8) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (v20 == 1815162994)
  {
    goto LABEL_34;
  }

  v32 = 1647534392;
LABEL_33:
  if (v20 == v32)
  {
    goto LABEL_34;
  }

LABEL_39:
  if (inputColorSpace)
  {
    if (inputColorSpace != 1 || context->processingType != 5 || (isSupportedMSRColorConversion(v20, context->outputFormat) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (context->processingType != 5 || !isSupportedMSRColorConversion(v20, context->outputFormat))
  {
    goto LABEL_47;
  }

LABEL_36:
  if (context->inputTransferFunction == 13)
  {
    b01_01->var2.var0.var1.dmaConfig.fp16RangeadjustEnable = 1;
    max_fp16 = self->_max_fp16;
    goto LABEL_38;
  }

LABEL_47:
  if (v20 > 1647534391)
  {
    if (v20 == 1815162994)
    {
      goto LABEL_53;
    }

    v36 = 1647534392;
  }

  else
  {
    if (v20 == 1378955371)
    {
      goto LABEL_53;
    }

    v36 = 1380411457;
  }

  if (v20 != v36)
  {
LABEL_75:
    b01_01->var2.var0.var1.dmaConfig.fp16RangeadjustEnable = 0;
    v35 = 0.0;
    goto LABEL_76;
  }

LABEL_53:
  v37 = context->displayType;
  if (v37 <= 7 && ((1 << v37) & 0xB8) != 0)
  {
    goto LABEL_55;
  }

  if (v20 > 1647534391)
  {
    if (v20 == 1815162994)
    {
      goto LABEL_67;
    }

    v38 = 1647534392;
  }

  else
  {
    if (v20 == 1378955371)
    {
      goto LABEL_67;
    }

    v38 = 1380411457;
  }

  if (v20 != v38)
  {
    goto LABEL_75;
  }

LABEL_67:
  if (v37 == 6)
  {
    goto LABEL_55;
  }

  if (v20 > 1647534391)
  {
    if (v20 != 1815162994)
    {
      v39 = 1647534392;
LABEL_73:
      if (v20 != v39)
      {
        goto LABEL_75;
      }
    }
  }

  else if (v20 != 1378955371)
  {
    v39 = 1380411457;
    goto LABEL_73;
  }

  if (v37 != 2)
  {
    goto LABEL_75;
  }

LABEL_55:
  if (context->inputTransferFunction != 8)
  {
    goto LABEL_75;
  }

  b01_01->var2.var0.var1.dmaConfig.fp16RangeadjustEnable = 1;
  if (sdrMaxBrightnessInNits > 4998.0)
  {
    v35 = 0.01;
    goto LABEL_76;
  }

  if (sdrMaxBrightnessInNits < 1.0)
  {
    goto LABEL_77;
  }

  max_fp16 = 10000.0 / sdrMaxBrightnessInNits;
  if (context->contentType == 3)
  {
    max_fp16 = max_fp16 * 12.0;
  }

LABEL_38:
  v35 = 1.0 / max_fp16;
LABEL_76:
  b01_01->var2.var0.var1.dmaConfig.fp16Mult = v35;
LABEL_77:
  b01_01->var2.var0.var0[5] = 0;
  b01_01->var2.var0.var1.reshaping.mode = 0;
  b01_01->var2.var0.var1.chormaScaling.vscaleMode = 0;
  b01_01->var2.var0.var1.chormaScaling.hscaleMode = 0;
  if (inputColorSpace <= 2)
  {
    if (var13 == 1)
    {
      b01_01->var2.var0.var1.chormaScaling.hscaleMode = 4;
      b01_01->var2.var0.var1.chormaScaling.hscaleNumTaps = 15;
    }

    else
    {
      if (var13)
      {
        goto LABEL_83;
      }

      b01_01->var2.var0.var1.chormaScaling.vscaleMode = 4;
      b01_01->var2.var0.var1.chormaScaling.vscaleNumTaps = 9;
      b01_01->var2.var0.var1.chormaScaling.hscaleMode = 4;
      b01_01->var2.var0.var1.chormaScaling.hscaleNumTaps = 15;
      memmove(b01_01->var2.var0.var1.chormaScaling.vscaleCoefficents, self->_vScaleCoefficents, 0x480uLL);
    }

    memmove(b01_01->var2.var0.var1.chormaScaling.hscaleCoefficents, self->_hScaleCoefficents, 0x780uLL);
LABEL_83:
    if (context->enableReshaping)
    {
      b01_01->var2.var0.var1.reshaping.mode = 3;
      memmove(b01_01->var2.var0.var1.reshaping.reshapeData, self->_reshapeLUT, 0x1800uLL);
    }
  }

  [(MSRHDRProcessing *)self dumpMmrConfig];
}

- (void)populateMSRColorConfigStageB01_02:(id *)b01_02 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  prefixCopy2 = prefix;
  b01_02Copy2 = b01_02;
  selfCopy2 = self;
  v115 = *MEMORY[0x277D85DE8];
  contentType = context->contentType;
  if (context->contentType == 3)
  {
    if (context->inputColorSpace)
    {
      inputFormat = context->inputFormat;
      if (inputFormat > 1647534391)
      {
        v17 = inputFormat == 1815162994;
        v18 = 1647534392;
      }

      else
      {
        v17 = inputFormat == 1378955371;
        v18 = 1380411457;
      }

      if (!v17 && inputFormat != v18)
      {
        goto LABEL_16;
      }
    }
  }

  else if (contentType != 2)
  {
    goto LABEL_16;
  }

  displayType = context->displayType;
  if (displayType < 8 && ((0xDFu >> displayType) & 1) != 0)
  {
    LOBYTE(var11) = 12;
    goto LABEL_17;
  }

LABEL_16:
  var11 = data->var11;
LABEL_17:
  v22 = qword_280C66108;
  if (enabled)
  {
    v23 = ~(-1 << var11);
    v24 = -config->var29 / config->var28;
    v25 = v24 < 0.0;
    if (v24 < 0.0)
    {
      v24 = -v24;
    }

    v107 = 0xFFFFFFFF / (v23 << (16 - var11));
    v108 = ((v24 * 16777000.0) + 0.5) & 0x7FFFFFFF | (v25 << 31);
    v26 = vcvts_n_u32_f32((v23 * v107) / (1 << (var11 + 14)), 0x18uLL);
    if (self->_msrPlatform == 1869769064)
    {
      v27 = 31;
    }

    else
    {
      v27 = 29;
    }

    if (contentType != 3)
    {
      if (contentType == 2)
      {
        v29 = context->displayType;
        if (v29 < 8 && ((0xDFu >> v29) & 1) != 0)
        {
          p_displayType = (&unk_2508CDD6C + 4 * v29);
LABEL_58:
          v43 = *p_displayType;
          if (v43 > 7 || v43 == 5)
          {
            inputColorSpace = context->inputColorSpace;
            goto LABEL_108;
          }

          goto LABEL_106;
        }
      }

      else if (contentType == 1 && !context->inputColorSpace)
      {
        v28 = context->displayType;
        if (v28 <= 7 && v28 != 5)
        {
          goto LABEL_109;
        }

        if (context->processingType == 4 && v28 <= 7 && ((1 << v28) & 0xC3) != 0)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_52;
    }

    inputColorSpace = context->inputColorSpace;
    if (inputColorSpace)
    {
      v32 = context->inputFormat;
      if (v32 > 1647534391)
      {
        if (v32 != 1815162994)
        {
          v33 = 1647534392;
LABEL_45:
          if (v32 != v33)
          {
            goto LABEL_52;
          }
        }
      }

      else if (v32 != 1378955371)
      {
        v33 = 1380411457;
        goto LABEL_45;
      }
    }

    v34 = context->displayType;
    if (v34 <= 7 && v34 != 5)
    {
      if (inputColorSpace)
      {
        v35 = context->inputFormat;
        if (v35 > 1647534391)
        {
          if (v35 == 1815162994)
          {
            goto LABEL_104;
          }

          v36 = 1647534392;
        }

        else
        {
          if (v35 == 1378955371)
          {
            goto LABEL_104;
          }

          v36 = 1380411457;
        }

        if (v35 != v36)
        {
          goto LABEL_111;
        }
      }

LABEL_104:
      v74 = context->displayType;
      if (v74 > 7 || v74 == 5)
      {
LABEL_108:
        if (!inputColorSpace)
        {
          goto LABEL_109;
        }

LABEL_111:
        v75 = v23;
        v77 = 18;
        v76 = 1;
        goto LABEL_112;
      }

LABEL_106:
      v75 = v23;
      goto LABEL_107;
    }

LABEL_52:
    v106 = v26;
    v37 = context->inputColorSpace;
    if (!v37 && context->processingType == 5)
    {
      v104 = ~(-1 << var11);
      v40 = v27;
      v41 = var11;
      v42 = isSupportedMSRColorConversion(context->inputFormat, context->outputFormat);
      LOBYTE(var11) = v41;
      v27 = v40;
      b01_02Copy2 = b01_02;
      prefixCopy2 = prefix;
      selfCopy2 = self;
      v23 = v104;
      if (v42)
      {
        if (contentType != 3)
        {
          v26 = v106;
          if (contentType == 2)
          {
            p_displayType = &context->displayType;
            goto LABEL_58;
          }

LABEL_109:
          if (context->processingType != 5)
          {
            goto LABEL_111;
          }

          v75 = v23;
          v78 = selfCopy2;
          v79 = prefixCopy2;
          v80 = b01_02Copy2;
          v81 = v27;
          v82 = var11;
          v83 = isSupportedMSRColorConversion(context->inputFormat, context->outputFormat);
          LOBYTE(var11) = v82;
          v27 = v81;
          b01_02Copy2 = v80;
          prefixCopy2 = v79;
          selfCopy2 = v78;
          v23 = v75;
          if ((v83 & 1) == 0)
          {
            goto LABEL_111;
          }

LABEL_107:
          v76 = 0;
          v77 = 20;
LABEL_112:
          v84 = 0;
          v85 = var11 - 2;
          do
          {
            if (v76)
            {
              v86 = data->var5[v84] >> v77;
            }

            else
            {
              v86 = (*(&config->var0 + (v84 & 3)) * 0.25);
            }

            v114[v84++] = v86;
          }

          while (v84 != 3);
          for (i = 0; i != 9; ++i)
          {
            if (v76)
            {
              v88 = data->var4[i];
            }

            else
            {
              v89 = hdrControl->var19[i];
              v90 = v89 < 0.0;
              if (v89 < 0.0)
              {
                v89 = -v89;
              }

              v88 = ((v89 * 8192.0) + 0.5);
              if (v90)
              {
                v88 = -v88;
              }
            }

            *(&v109 + i * 4) = v88;
          }

          *&info = 0x62675232767559;
          if (v22)
          {
            v91 = v27;
            fprintf(v22, "%s--- B01-02 Frame %d ---\n", prefixCopy2, selfCopy2->super._frameNumber);
            fprintf(v22, "%s--- %s ---\n", prefixCopy2, &info);
            fprintf(v22, "%scontrolpath[%d].PreCm3x3Enable = %d\n", prefixCopy2, selfCopy2->super._frameNumber, 1);
            fprintf(v22, "%scontrolpath[%d].OutputBitDepth = %d\n", prefixCopy2, selfCopy2->super._frameNumber, 16);
            fprintf(v22, "%scontrolpath[%d].rangeMin = %d\n", prefixCopy2, selfCopy2->super._frameNumber, v108);
            fprintf(v22, "%scontrolpath[%d].range = %d\n", prefixCopy2, selfCopy2->super._frameNumber, v75);
            fprintf(v22, "%scontrolpath[%d].rangeInv = %u\n", prefixCopy2, selfCopy2->super._frameNumber, v107);
            fprintf(v22, "%scontrolpath[%d].m33Yuv2RgbScale2P = %d\n", prefixCopy2, selfCopy2->super._frameNumber, 13);
            fprintf(v22, "%scontrolpath[%d].m33Yuv2Rgb = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", prefixCopy2, selfCopy2->super._frameNumber, v109, v110, SHIDWORD(v110), v111, SHIDWORD(v111), v112, SHIDWORD(v112), v113, SHIDWORD(v113));
            fprintf(v22, "%scontrolpath[%d].v3Yuv2RgbOffInRgb = { %d, %d, %d }\n", prefixCopy2, selfCopy2->super._frameNumber, v114[0], v114[1], v114[2]);
            fprintf(v22, "%s\n", prefixCopy2);
            v27 = v91;
          }

          v92 = 0;
          *&b01_02Copy2->var2.var0.var1.sourceToRGB.mode = 0xD00000002;
          v93 = -1 << v27;
          coeff = b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.coeff;
          v95 = vcvts_n_f32_u32(-(v108 * v107) >> 16, 0x18uLL);
          if (v26 >= 0)
          {
            v96 = -1;
          }

          else
          {
            v96 = 1;
          }

          v97 = vcvts_n_f32_u32(v26 & ~v93, 0x18uLL);
          v98 = v97 * v96;
          v99 = v97 * ((v26 >> 31) | 1);
          v100 = &v109;
          do
          {
            v101 = 0;
            b01_02Copy2->var2.var0.var0[v92 + 2317] = 0;
            b01_02Copy2->var2.var0.var0[v92 + 2320] = 1065353215;
            b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.offsetIn[v92] = -v114[v92] / (1 << v85);
            do
            {
              (*coeff)[v101] = v100[v101];
              ++v101;
            }

            while (v101 != 3);
            b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.offsetOut[v92] = v95;
            b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.outputMinClip[v92] = v98;
            b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.outputMaxClip[v92++] = v99;
            ++coeff;
            v100 += 3;
          }

          while (v92 != 3);
          goto LABEL_134;
        }

        inputColorSpace = 0;
        v26 = v106;
        goto LABEL_104;
      }
    }

    if (contentType == 1)
    {
      if (v37 != 2)
      {
        goto LABEL_134;
      }

      v44 = context->displayType;
      if (v44 <= 7 && v44 != 5)
      {
        v105 = var11;
        v111 = 0x100000000;
        v110 = 0;
        v112 = 0;
        v113 = 0x100000000;
        v109 = 1;
        if (context->processingType == 5)
        {
          v45 = selfCopy2;
          v46 = prefixCopy2;
          v47 = b01_02Copy2;
          v48 = v27;
          v49 = isSupportedMSRColorConversion(context->inputFormat, context->outputFormat);
          v27 = v48;
          b01_02Copy2 = v47;
          prefixCopy2 = v46;
          selfCopy2 = v45;
          if (v49)
          {
LABEL_78:
            v53 = 0;
            *&info = 0x534D4C32545049;
            v54 = &v109;
            v55 = &m33Ipt2LmsFlt;
            v56 = v106;
            v57 = v108;
            do
            {
              for (j = 0; j != 3; ++j)
              {
                v59 = *&v55[j];
                v60 = v59 < 0.0;
                if (v59 < 0.0)
                {
                  v59 = -v59;
                }

                v61 = ((v59 * 8192.0) + 0.5);
                if (v60)
                {
                  v61 = -v61;
                }

                v54[j] = v61;
              }

              ++v53;
              v54 += 3;
              v55 += 3;
            }

            while (v53 != 3);
            v62 = 13;
            goto LABEL_88;
          }
        }

LABEL_73:
        if (LODWORD(config[1].var46) == 4)
        {
          v52 = context->displayType;
          if (v52 <= 7 && v52 != 5 && context->enableToneMapping && context->enableReshaping)
          {
            goto LABEL_78;
          }
        }

LABEL_87:
        v62 = 0;
        strcpy(&info, "IPT offsetting only");
        v56 = v106;
        v57 = v108;
LABEL_88:
        if (v22)
        {
          v63 = v27;
          fprintf(v22, "%s--- B01-02 Frame %d ---\n", prefixCopy2, selfCopy2->super._frameNumber);
          fprintf(v22, "%s--- %s ---\n", prefixCopy2, &info);
          fprintf(v22, "%scontrolpath[%d].PreCm3x3Enable = %d\n", prefixCopy2, selfCopy2->super._frameNumber, 1);
          fprintf(v22, "%scontrolpath[%d].OutputBitDepth = %d\n", prefixCopy2, selfCopy2->super._frameNumber, 16);
          fprintf(v22, "%scontrolpath[%d].rangeMin = %d\n", prefixCopy2, selfCopy2->super._frameNumber, v57);
          fprintf(v22, "%scontrolpath[%d].range = %d\n", prefixCopy2, selfCopy2->super._frameNumber, v23);
          fprintf(v22, "%scontrolpath[%d].rangeInv = %u\n", prefixCopy2, selfCopy2->super._frameNumber, v107);
          fprintf(v22, "%scontrolpath[%d].m33Yuv2RgbScale2P = %d\n", prefixCopy2, selfCopy2->super._frameNumber, v62);
          fprintf(v22, "%scontrolpath[%d].m33Yuv2Rgb = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", prefixCopy2, selfCopy2->super._frameNumber, v109, v110, HIDWORD(v110), v111, HIDWORD(v111), v112, HIDWORD(v112), v113, HIDWORD(v113));
          fprintf(v22, "%scontrolpath[%d].v3Yuv2RgbOffInRgb = { %d, %d, %d }\n", prefixCopy2, selfCopy2->super._frameNumber, 0, 1 << (v105 - 3), 1 << (v105 - 3));
          fprintf(v22, "%s\n", prefixCopy2);
          v27 = v63;
        }

        b01_02Copy2->var2.var0.var0[2315] = 1;
        b01_02Copy2->var2.var0.var0[2316] = v62;
        v64 = vcvts_n_f32_u32(-(v57 * v107) >> 16, 0x18uLL);
        if (v56 >= 0)
        {
          v65 = -1;
        }

        else
        {
          v65 = 1;
        }

        v66 = vcvts_n_f32_u32(v56 & ~(-1 << v27), 0x18uLL);
        v67 = v66 * v65;
        v68 = v66 * ((v56 >> 31) | 1);
        outputMaxClip = b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.outputMaxClip;
        *b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.inputMinClip = 0;
        b01_02Copy2->var2.var0.var0[2319] = 0;
        memset_pattern16(b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.inputMaxClip, &unk_2508CD950, 0xCuLL);
        for (k = 0; k != 3; ++k)
        {
          v71 = b01_02Copy2->var2.var0.var1.sourceToRGB.src2rgb.coeff[k];
          v72 = &v109 + k * 12;
          if (k * 12)
          {
            v73 = -0.5;
          }

          else
          {
            v73 = 0.0;
          }

          *(outputMaxClip - 18) = v73;
          *v71 = *v72;
          v71[2] = *(v72 + 2);
          *(outputMaxClip - 6) = v64;
          *(outputMaxClip - 3) = v67;
          *outputMaxClip++ = v68;
        }

        goto LABEL_134;
      }
    }

    else if (v37 != 2)
    {
      goto LABEL_134;
    }

    if (context->processingType != 5)
    {
      goto LABEL_134;
    }

    v50 = v27;
    v105 = var11;
    if ((isSupportedMSRColorConversion(context->inputFormat, context->outputFormat) & 1) == 0)
    {
      goto LABEL_134;
    }

    v111 = 0x100000000;
    v110 = 0;
    v112 = 0;
    v113 = 0x100000000;
    v109 = 1;
    v51 = isSupportedMSRColorConversion(context->inputFormat, context->outputFormat);
    v27 = v50;
    if (v51)
    {
      goto LABEL_78;
    }

    if (contentType != 1)
    {
      goto LABEL_87;
    }

    goto LABEL_73;
  }

  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B01-02 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v22, "%scontrolpath[%d].PreCm3x3Enable = %d\n", prefixCopy2, selfCopy2->super._frameNumber, 0);
    fprintf(v22, "%s\n", prefixCopy2);
  }

  b01_02Copy2->var2.var0.var0[2315] = 0;
LABEL_134:
  v102 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB01_03:(id *)b01_03 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  v14 = qword_280C66108;
  if (enabled)
  {
    tm_Send_nits = control->auxData.tm_Send_nits;
    v16 = 10000.0 / tm_Send_nits;
    v17 = tm_Send_nits == 0.0;
    LODWORD(v10) = 1.0;
    if (!v17)
    {
      *&v10 = v16;
    }

    [(MSRHDRProcessing *)self updateDegammaLUT:context AdditionalScaler:control tcControl:prefix, config, data, v10];
    if (self->_msrPlatform == 1869769064)
    {
      v18 = 1281;
    }

    else
    {
      v18 = 514;
    }

    type = self->_degamma.type;
    if ((type - 1) >= 3)
    {
      if (type == 4)
      {
        v20 = "LINEAR";
      }

      else
      {
        v20 = "Unknown";
      }
    }

    else
    {
      v20 = off_2796A0140[type - 1];
    }

    snprintf(&info, 0x3FFuLL, "%s", v20);
    if (v14)
    {
      fprintf(v14, "%s--- B01-03 Frame %d ---\n", prefix, self->super._frameNumber);
      fprintf(v14, "%s--- %s ---\n", prefix, &info);
      fprintf(v14, "%scontrolpath[%d].DeGammaEnable = %d\n", prefix, self->super._frameNumber, 1);
      fprintf(v14, "%scontrolpath[%d].custom_degamma_LUT = {\n", prefix, self->super._frameNumber);
      if (self->_msrPlatform - 1869769063 <= 1)
      {
        [(ProcessingEngine *)self printArray:v14 Prefix:prefix Array:&self->_degamma.var0 Size:v18 NumberPerLine:8 Format:0];
      }

      fprintf(v14, "%s\n", prefix);
    }

    b01_03->var2.var0.var0[2344] = 2;
    if (self->_msrPlatform == 1869769063)
    {
      deGammaLUT = b01_03->var2.var0.var1.linearization.deGammaLUT;
      lut = &self->_degamma.var0.degmmaS.lutForCModel[514];
      v23 = 6168;
    }

    else
    {
      deGammaLUT = self->_msrCU->var4;
      lut = self->_degamma.var0.degmmaS.lut;
      v23 = 5124;
    }

    memcpy(deGammaLUT, lut, v23);
  }

  else
  {
    if (qword_280C66108)
    {
      fprintf(qword_280C66108, "%s--- B01-03 Frame %d ---\n", prefix, self->super._frameNumber);
      fprintf(v14, "%scontrolpath[%d].DeGammaEnable = %d\n", prefix, self->super._frameNumber, 0);
      fprintf(v14, "%s\n", prefix);
    }

    b01_03->var2.var0.var0[2344] = 0;
  }
}

- (void)populateMSRColorConfigStageB01_04:(id *)b01_04 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  v97 = *MEMORY[0x277D85DE8];
  v13 = qword_280C66108;
  if (enabled)
  {
    sdrMaxBrightnessInNits = control->sdrMaxBrightnessInNits;
    processingType = context->processingType;
    inputTransferFunction = context->inputTransferFunction;
    if (processingType == 5 && inputTransferFunction == 13)
    {
      v21 = ((sdrMaxBrightnessInNits / control->EDRFactor) / 10000.0) * 200.0;
      v22 = 7;
      goto LABEL_19;
    }

    if (inputTransferFunction == 8)
    {
      if (sdrMaxBrightnessInNits <= 4998.0)
      {
        v21 = 0.01;
      }

      else
      {
        v20 = 10000.0 / sdrMaxBrightnessInNits;
        if (context->contentType == 3)
        {
          v20 = v20 * 12.0;
        }

        v21 = 1.0 / v20;
      }
    }

    else
    {
      v21 = sdrMaxBrightnessInNits / 10000.0;
    }

    if ((processingType | 4) == 5)
    {
      v22 = 14;
LABEL_19:
      if (context->operationFlags)
      {
        snprintf(&info, 0x3FFuLL, "postRGBtoRGB, scaler=%f", v21);
        v39 = (1 << v22);
        v40 = *&config[1].var26;
        v41 = *&config[1].var30;
        v42 = *&config[1].var34;
        v43 = v96;
        v44 = -3;
        do
        {
          v91 = v40;
          v45 = (&v89 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v44 - 1) & 3)));
          v46 = (&v90 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v44 - 1) & 3)));
          v47 = *(&v91 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v44 - 1) & 3)));
          v48 = v47 < 0.0;
          if (v47 < 0.0)
          {
            v47 = -v47;
          }

          v49 = ((v47 * v39) + 0.5);
          if (v48)
          {
            v49 = -v49;
          }

          *(v43 - 3) = v49;
          v90 = v41;
          v50 = *v46;
          if (*v46 < 0.0)
          {
            v50 = -*v46;
          }

          v51 = ((v50 * v39) + 0.5);
          if (*v46 < 0.0)
          {
            v51 = -v51;
          }

          *v43 = v51;
          v89 = v42;
          v52 = *v45;
          if (*v45 < 0.0)
          {
            v52 = -*v45;
          }

          v53 = ((v52 * v39) + 0.5);
          if (*v45 < 0.0)
          {
            v53 = -v53;
          }

          v43[3] = v53;
          ++v43;
          v38 = __CFADD__(v44++, 1);
        }

        while (!v38);
      }

      else
      {
        strcpy(&info, "preRGBtoRGB");
        v23 = (1 << v22);
        v24 = *&config[1].var10;
        v25 = *&config[1].var14;
        v26 = *&config[1].var18;
        v27 = v96;
        v28 = -3;
        do
        {
          v88 = v24;
          v29 = (&v86 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v28 - 1) & 3)));
          v30 = (&v87 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v28 - 1) & 3)));
          v31 = *(&v88 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v28 - 1) & 3)));
          v32 = v31 < 0.0;
          if (v31 < 0.0)
          {
            v31 = -v31;
          }

          v33 = ((v31 * v23) + 0.5);
          if (v32)
          {
            v33 = -v33;
          }

          *(v27 - 3) = v33;
          v87 = v25;
          v34 = *v30;
          if (*v30 < 0.0)
          {
            v34 = -*v30;
          }

          v35 = ((v34 * v23) + 0.5);
          if (*v30 < 0.0)
          {
            v35 = -v35;
          }

          *v27 = v35;
          v86 = v26;
          v36 = *v29;
          if (*v29 < 0.0)
          {
            v36 = -*v29;
          }

          v37 = ((v36 * v23) + 0.5);
          if (*v29 < 0.0)
          {
            v37 = -v37;
          }

          v27[3] = v37;
          ++v27;
          v38 = __CFADD__(v28++, 1);
        }

        while (!v38);
      }

LABEL_51:
      if (v13)
      {
        fprintf(v13, "%s--- B01-04 Frame %d ---\n", prefix, self->super._frameNumber);
        fprintf(v13, "%s--- %s ---\n", prefix, &info);
        fprintf(v13, "%scontrolpath[%d].PostDeGamma3x3Enable = %d\n", prefix, self->super._frameNumber, 1);
        fprintf(v13, "%scontrolpath[%d].m33Rgb2Lms = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", prefix, self->super._frameNumber, (v21 * v95[0]), (v21 * v95[1]), (v21 * v95[2]), (v21 * v96[0]), (v21 * v96[1]), (v21 * v96[2]), (v21 * v96[3]), (v21 * v96[4]), (v21 * v96[5]));
        fprintf(v13, "%scontrolpath[%d].m33Rgb2LmsScale2P = %d\n", prefix, self->super._frameNumber, v22);
        fprintf(v13, "%scontrolpath[%d].Rgb2LmsOutMin = %d\n", prefix, self->super._frameNumber, 0);
        fprintf(v13, "%s\n", prefix);
      }

      v54 = 0;
      b01_04->var2.var0.var0[3887] = 1;
      b01_04->var2.var0.var0[3888] = v22;
      coeff = b01_04->var2.var0.var1.colorAtoCommonSpace.a2c.coeff;
      v56 = v95;
      do
      {
        v57 = 0;
        b01_04->var2.var0.var0[v54 + 3889] = 0;
        b01_04->var2.var0.var0[v54 + 3892] = 1124073471;
        b01_04->var2.var0.var0[v54 + 3895] = 0;
        do
        {
          (*coeff)[v57] = (v21 * v56[v57]);
          ++v57;
        }

        while (v57 != 3);
        b01_04->var2.var0.var0[v54 + 3907] = 0;
        b01_04->var2.var0.var0[v54 + 3910] = 0;
        b01_04->var2.var0.var0[v54++ + 3913] = 1120403456;
        ++coeff;
        v56 += 3;
      }

      while (v54 != 3);
      goto LABEL_57;
    }

    var47_low = LOWORD(config[1].var47);
    contentType = context->contentType;
    if (context->contentType == 1)
    {
      if (context->inputColorSpace == 2 && LODWORD(config[1].var46) == 4)
      {
        displayType = context->displayType;
        v64 = displayType > 7 || displayType == 5;
        if (!v64 && context->enableToneMapping && context->enableReshaping)
        {
          snprintf(&info, 0x3FFuLL, "LMS2%% to 4%% conversion");
          for (i = 0; i != 9; ++i)
          {
            v66 = *&m33CrossTalkTwo2FourPercentFlt[i];
            v67 = v66 < 0.0;
            if (v66 < 0.0)
            {
              v66 = -v66;
            }

            v68 = ((v66 * 16384.0) + 0.5);
            if (v67)
            {
              v68 = -v68;
            }

            v95[i] = v68;
            v22 = 14;
          }

          goto LABEL_51;
        }
      }

      goto LABEL_95;
    }

    if (contentType == 3)
    {
      if (!context->inputColorSpace)
      {
        goto LABEL_84;
      }

      inputFormat = context->inputFormat;
      if (inputFormat > 1647534391)
      {
        if (inputFormat == 1815162994)
        {
          goto LABEL_84;
        }

        v62 = 1647534392;
      }

      else
      {
        if (inputFormat == 1378955371)
        {
          goto LABEL_84;
        }

        v62 = 1380411457;
      }

      if (inputFormat != v62)
      {
LABEL_95:
        if (var47_low & 1) == 0 || (debugDM4DisableConf)
        {
          strcpy(&info, "RGBtoLMS from DM metadata");
          v79 = __PAIR64__(*"DM metadata", 1.0);
          if (self->_msrHC.processingType == 4)
          {
            v22 = 14;
            if ((*&self->super._anon_90[484] & 0x80) == 0 || (debugDM4DisableConf & 0x80) != 0)
            {
              v80 = [(MSRHDRProcessing *)self getRgb2LmsScale2P:COERCE_DOUBLE(__PAIR64__(*"DM metadata"];
              [(MSRHDRProcessing *)self getDolby84PostDegammaScale];
              *&v79 = *&v79 / (1 << (14 - v80));
              v22 = v80;
            }
          }

          else
          {
            v22 = 14;
          }

          for (j = 0; j != 9; ++j)
          {
            v95[j] = ((data->var6[j] * *&v79) + 0.5);
          }
        }

        else
        {
          v75 = ((debugDM4DisableConf & 0x40) == 0) & (var47_low >> 6);
          snprintf(&info, 0x3FFuLL, "RGBtoLMS from DM metadata with 4%% crosstalk");
          for (k = 0; k != 9; ++k)
          {
            *&v94[k * 4] = data->var6[k] * 0.000061035;
          }

          v93 = 1064011039;
          v92[0] = m33CrossTalkFourPercentFlt;
          v92[1] = unk_2508CDAA0;
          Matrix3x3_multmatrix(v92, v94);
          if (v75)
          {
            *&v77 = v21;
            v22 = [(MSRHDRProcessing *)self getMatrixScale2P:v92 OutputScale:v77];
            v78 = (1 << v22);
          }

          else
          {
            v22 = 14;
            v78 = 16384.0;
          }

          for (m = 0; m != 9; ++m)
          {
            v83 = *(v92 + m * 4);
            v84 = v83 < 0.0;
            if (v83 < 0.0)
            {
              v83 = -v83;
            }

            v85 = ((v78 * v83) + 0.5);
            if (v84)
            {
              v85 = -v85;
            }

            v95[m] = v85;
          }
        }

        goto LABEL_51;
      }
    }

    else if (contentType != 2)
    {
      goto LABEL_95;
    }

LABEL_84:
    v69 = context->displayType;
    if (v69 <= 7 && v69 != 5)
    {
      v71 = 0;
      strcpy(&info, "RGBtoLMS from hdrCtrl");
      do
      {
        v72 = hdrControl->var20[v71];
        v73 = v72 < 0.0;
        if (v72 < 0.0)
        {
          v72 = -v72;
        }

        v74 = ((v72 * 16384.0) + 0.5);
        if (v73)
        {
          v74 = -v74;
        }

        v95[v71++] = v74;
      }

      while (v71 != 9);
      v22 = 14;
      goto LABEL_51;
    }

    goto LABEL_95;
  }

  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B01-04 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].PostDeGamma3x3Enable = %d\n", prefix, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", prefix);
  }

  b01_04->var2.var0.var0[3887] = 0;
LABEL_57:
  v58 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB01_05:(id *)b01_05 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  enabledCopy = enabled;
  v12 = qword_280C66108;
  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B01-05 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v12, "%scontrolpath[%d].FixedPQReGammaEnable = %d\n", prefix, self->super._frameNumber, enabledCopy);
    fprintf(v12, "%s\n", prefix);
  }

  b01_05->var2.var0.var1.chromaticAdaption.fixedPQRegamma_Enable = enabledCopy;
}

- (void)populateMSRColorConfigStageB01_06:(id *)b01_06 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  v13 = qword_280C66108;
  if (enabled)
  {
    var47_low = LOWORD(config[1].var47);
    if (control->tmData.doviTmMode == 4)
    {
      v15 = debugDM4DisableConf;
    }

    else
    {
      v15 = debugDM4DisableConf;
      if ((((debugDM4DisableConf & 8) == 0) & (var47_low >> 3)) != 1)
      {
        v17 = 0;
        v16 = &m33Lms2IptFlt;
LABEL_10:
        v18 = 12;
        if ((var47_low & 0x40) != 0 && (v15 & 0x40) == 0)
        {
          v18 = [(MSRHDRProcessing *)self getMatrixScale2P:v16];
        }

        if (v17)
        {
          snprintf(&info, 0x3FFuLL, "lms2ictcp");
        }

        else
        {
          snprintf(&info, 0x3FFuLL, "lms2ipt");
        }

        if (v13)
        {
          fprintf(v13, "%s--- B01-06 Frame %d ---\n", prefix, self->super._frameNumber);
          fprintf(v13, "%s--- %s ---\n", prefix, &info);
          fprintf(v13, "%scontrolpath[%d].PreToneMap3x3Enable = %d\n", prefix, self->super._frameNumber, 1);
          v19 = *v16;
          if (*v16 < 0.0)
          {
            v19 = -*v16;
          }

          v20 = (1 << v18);
          v21 = ((v19 * v20) + 0.5);
          if (*v16 < 0.0)
          {
            v21 = -v21;
          }

          v22 = 0.4;
          if (v17)
          {
            v22 = 0.5;
          }

          v23 = ((v22 * v20) + 0.5);
          v24 = 0.2;
          if (v17)
          {
            v24 = 0.0;
          }

          v25 = ((v24 * v20) + 0.5);
          v26 = 4.455;
          if (v17)
          {
            v26 = 0.80688;
          }

          v27 = ((v26 * v20) + 0.5);
          v28 = 4.851;
          if (v17)
          {
            v28 = 1.6617;
          }

          v29 = ((v28 * v20) + 0.5);
          v30 = 0.396;
          if (v17)
          {
            v30 = 0.85486;
          }

          v31 = ((v30 * v20) + 0.5);
          v32 = 0.8056;
          if (v17)
          {
            v32 = 4.3782;
          }

          v33 = ((v32 * v20) + 0.5);
          v34 = 0.3572;
          if (v17)
          {
            v34 = 4.2456;
          }

          v35 = ((v34 * v20) + 0.5);
          if (v17)
          {
            v35 = -v35;
          }

          v36 = 1.1628;
          if (v17)
          {
            v36 = 0.13257;
          }

          fprintf(v13, "%scontrolpath[%d].m33Lms2Ipt = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", prefix, self->super._frameNumber, v21, v23, v25, v27, -v29, v31, v33, v35, -((v36 * v20) + 0.5));
          fprintf(v13, "%scontrolpath[%d].m33Lms2IptScale2P = %d\n", prefix, self->super._frameNumber, v18);
          fprintf(v13, "%s\n", prefix);
        }

        else
        {
          v20 = (1 << v18);
        }

        v37 = 0;
        b01_06->var2.var0.var0[3917] = 1;
        b01_06->var2.var0.var0[3918] = v18;
        coeff = b01_06->var2.var0.var1.chromaticAdaption.cacsc1.coeff;
        do
        {
          v39 = 0;
          b01_06->var2.var0.var0[v37 + 3919] = -1023410177;
          b01_06->var2.var0.var0[v37 + 3922] = 1124073471;
          b01_06->var2.var0.var0[v37 + 3925] = 0;
          do
          {
            v40 = v16[v39];
            v41 = v40 < 0.0;
            if (v40 < 0.0)
            {
              v40 = -v40;
            }

            v42 = ((v20 * v40) + 0.5);
            if (v41)
            {
              v42 = -v42;
            }

            (*coeff)[v39++] = v42;
          }

          while (v39 != 3);
          b01_06->var2.var0.var0[v37 + 3937] = 0;
          b01_06->var2.var0.var0[v37 + 3940] = -1082130433;
          b01_06->var2.var0.var0[v37++ + 3943] = 1065353215;
          ++coeff;
          v16 += 3;
        }

        while (v37 != 3);
        return;
      }
    }

    v16 = &m33Lms2ItpFlt;
    v17 = 1;
    goto LABEL_10;
  }

  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B01-06 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].PreToneMap3x3Enable = %d\n", prefix, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", prefix);
  }

  b01_06->var2.var0.var0[3917] = 0;
}

- (void)populateMSRColorConfigStageB02HDR10:(id *)r10 DMConfig:(id *)config
{
  v7 = &r10->var2.var0.var0[3070];
  r10->var2.var0.var0[3946] = 2;
  r10->var2.var0.var1.chromaticAdaption.var0.toneMapMode1.type = 0;
  r10->var2.var0.var1.chromaticAdaption.var0.toneMapMode1.lumaShiftBits = [(MSRHDRProcessing *)self getLumaShiftBits];
  r10->var2.var0.var0[3952] = 0;
  *&r10->var2.var0.var1.chromaticAdaption.var0.toneMapMode2.spacingComp0 = 512;
  *(v7 + 3509) = 21;
  v8 = &r10->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 4;
  v9 = -3;
  do
  {
    *&v8[-3].msbPos2 = vcvts_n_s32_f32(*(&config[1].var22 + ((v9 - 1) & 3)), 7uLL);
    *&v8->msbPos0 = 128;
    v8 = (v8 + 4);
  }

  while (!__CFADD__(v9++, 1));
  *(&r10->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 6) = 0u;
  *(&r10->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 52) = 0u;
  p_tonemapLUT = &self->_tonemapLUT;
  memcpy(r10->var2.var0.var1.chromaticAdaption.toneMapLUT, p_tonemapLUT, 0x804uLL);

  memcpy(r10->var2.var0.var1.chromaticAdaption.toneMapLUT[1], p_tonemapLUT->cmodel.tmLutS, sizeof(r10->var2.var0.var1.chromaticAdaption.toneMapLUT[1]));
}

- (void)populateMSRColorConfigStageB02HLG:(id *)g hdrControl:(id *)control
{
  v7 = &g->var2.var0.var0[3070];
  g->var2.var0.var0[3946] = 2;
  LOWORD(g->var2.var0.var1.chromaticAdaption.var0.toneMapMode0.precision) = 6144;
  getLumaShiftBits = [(MSRHDRProcessing *)self getLumaShiftBits];
  v9 = 0;
  *&g->var2.var0.var1.chromaticAdaption.var0.toneMapMode2.spacingComp0 = 0;
  *(v7 + 3510) = getLumaShiftBits;
  g->var2.var0.var0[3952] = 0;
  do
  {
    var15 = control->var15;
    v11 = g + v9;
    if (var15 == 1)
    {
      v12 = &RGB709toHLGY_coeff;
    }

    else
    {
      v12 = &RGB2020toHLGY_coeff;
    }

    if (var15 == 12)
    {
      v13 = &RGBP3toHLGY_coeff;
    }

    else
    {
      v13 = v12;
    }

    v14 = (*&v13[v9] * 127.0);
    *(v11 + 3955) = v14;
    *(v11 + 3951) = v14;
    v9 += 4;
  }

  while (v9 != 12);
  *(&g->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 6) = 0u;
  *(&g->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 52) = 0u;

  memcpy(g->var2.var0.var1.chromaticAdaption.toneMapLUT, &self->_tonemapLUT, 0x804uLL);
}

- (void)populateMSRColorConfigStageB02:(id *)b02 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = qword_280C66108;
  if (enabled)
  {
    contentType = context->contentType;
    if (context->contentType == 2 || contentType == 1 && ((inputColorSpace = context->inputColorSpace) == 0 || inputColorSpace == 2))
    {
      displayType = context->displayType;
      if (displayType <= 7 && displayType != 5)
      {
        goto LABEL_26;
      }
    }

    inputFormat = context->inputFormat;
    if (inputFormat > 1647534391)
    {
      v20 = inputFormat == 1815162994;
      v21 = 1647534392;
    }

    else
    {
      v20 = inputFormat == 1378955371;
      v21 = 1380411457;
    }

    if (!v20 && inputFormat != v21)
    {
LABEL_65:
      if (contentType == 1)
      {
        if (context->processingType == 4 && !context->inputColorSpace)
        {
          v32 = context->displayType;
          if (v32 <= 7 && v32 != 5)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_84;
      }

      if (contentType != 3)
      {
        goto LABEL_84;
      }

      if (context->inputColorSpace)
      {
        if (inputFormat > 1647534391)
        {
          if (inputFormat != 1815162994)
          {
            v31 = 1647534392;
LABEL_81:
            if (inputFormat == v31)
            {
              goto LABEL_82;
            }

LABEL_84:
            if (enableLogInstance)
            {
              if (logInstanceID)
              {
                v35 = logInstanceID;
              }

              else
              {
                v35 = prevLogInstanceID;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v37 = WORD1(v35);
                _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: isTonemappingEnabled(msrHC) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 3848\n", buf, 0xCu);
              }

              prevLogInstanceID = v35;
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: isTonemappingEnabled(msrHC) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 3848\n", buf, 2u);
            }

LABEL_26:
            if (v13)
            {
              fprintf(v13, "%s--- B02 Frame %d ---\n", prefix, self->super._frameNumber);
              fprintf(v13, "%scontrolpath[%d].ToneMapEnable = %d\n", prefix, self->super._frameNumber, 1);
              fprintf(v13, "%scontrolpath[%d].toneMapLutPrecision = %d\n", prefix, self->super._frameNumber, 24);
              fprintf(v13, "%scontrolpath[%d].tmLutI = {\n", prefix, self->super._frameNumber);
              [(ProcessingEngine *)self printArray:v13 Prefix:prefix Array:&self->_tonemapLUT Size:self->_tonemappingTableSize NumberPerLine:8 Format:3];
              fprintf(v13, "%scontrolpath[%d].tmLutS = {\n", prefix, self->super._frameNumber);
              [(ProcessingEngine *)self printArray:v13 Prefix:prefix Array:self->_tonemapLUT.cmodel.tmLutS Size:self->_tonemappingTableSize NumberPerLine:8 Format:3];
              fprintf(v13, "%scontrolpath[%d].smLutI = {\n", prefix, self->super._frameNumber);
              [(ProcessingEngine *)self printArray:v13 Prefix:prefix Array:self->_tonemapLUT.cmodel.smLutI Size:self->_tonemappingTableSize NumberPerLine:8 Format:3];
              fprintf(v13, "%scontrolpath[%d].smLutS = {\n", prefix, self->super._frameNumber);
              [(ProcessingEngine *)self printArray:v13 Prefix:prefix Array:self->_tonemapLUT.cmodel.smLutS Size:self->_tonemappingTableSize NumberPerLine:8 Format:3];
              fprintf(v13, "%s\n", prefix);
            }

            processingType = context->processingType;
            if (processingType != 5 && processingType != 2)
            {
              if (processingType == 1)
              {
                strcpy(&info, "RGB Tonemapping");
                [(MSRHDRProcessing *)self populateMSRColorConfigStageB02HDR10:b02 DMConfig:config, prefix, config, data, control];
                goto LABEL_59;
              }

              if ((LOWORD(config[1].var47) & 0x80) == 0 || (debugDM4DisableConf & 0x80) != 0)
              {
                if ((processingType | 4) != 4)
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v27 = logInstanceID;
                    }

                    else
                    {
                      v27 = prevLogInstanceID;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134217984;
                      v37 = WORD1(v27);
                      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: msrHC->processingType == kHDRProcessingTypeDoVi || msrHC->processingType == kHDRProcessingTypeDoVi84 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 3880\n", buf, 0xCu);
                    }

                    prevLogInstanceID = v27;
                  }

                  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: msrHC->processingType == kHDRProcessingTypeDoVi || msrHC->processingType == kHDRProcessingTypeDoVi84 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 3880\n", buf, 2u);
                  }
                }

                strcpy(&info, "IPT Tonemapping");
                *&b02->var2.var0.var1.chromaticAdaption.toneMapMode_Enable = 0x1800000001;
                memcpy(b02->var2.var0.var1.chromaticAdaption.toneMapLUT, &self->_tonemapLUT, sizeof(b02->var2.var0.var1.chromaticAdaption.toneMapLUT));
                goto LABEL_59;
              }
            }

            strcpy(&info, "HLG OOTF");
            [(MSRHDRProcessing *)self populateMSRColorConfigStageB02HLG:b02 hdrControl:hdrControl, prefix, config, data, control];
LABEL_59:
            [(MSRHDRProcessing *)self writeMSRColorConfigFileStageB02Enabled:&b02->var2 Prefix:prefix Info:&info];
            goto LABEL_60;
          }
        }

        else if (inputFormat != 1378955371)
        {
          v31 = 1380411457;
          goto LABEL_81;
        }
      }

LABEL_82:
      v34 = context->displayType;
      if (v34 <= 7 && v34 != 5)
      {
        goto LABEL_26;
      }

      goto LABEL_84;
    }

    v23 = context->displayType;
    if (v23 <= 7 && ((1 << v23) & 0xB8) != 0)
    {
      goto LABEL_26;
    }

    if (inputFormat > 1647534391)
    {
      if (inputFormat == 1815162994)
      {
        goto LABEL_52;
      }

      v28 = 1647534392;
    }

    else
    {
      if (inputFormat == 1378955371)
      {
        goto LABEL_52;
      }

      v28 = 1380411457;
    }

    if (inputFormat != v28)
    {
      goto LABEL_65;
    }

LABEL_52:
    if (v23 == 6)
    {
      goto LABEL_26;
    }

    if (inputFormat > 1647534391)
    {
      if (inputFormat != 1815162994)
      {
        v29 = 1647534392;
LABEL_63:
        if (inputFormat != v29)
        {
          goto LABEL_65;
        }
      }
    }

    else if (inputFormat != 1378955371)
    {
      v29 = 1380411457;
      goto LABEL_63;
    }

    if (v23 == 2)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B02 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].ToneMapEnable = %d\n", prefix, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", prefix);
  }

  b02->var2.var0.var0[3946] = 0;
LABEL_60:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB04_01:(id *)b04_01 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  v12 = &b04_01->var2.var0.var0[5118];
  v13 = qword_280C66108;
  if (enabled)
  {
    if (__PAIR64__(context->enableToneMapping, context->enableReshaping) == 0x100000001)
    {
      var47_low = LOWORD(config[1].var47);
      if (control->tmData.doviTmMode == 4)
      {
        v16 = debugDM4DisableConf;
      }

      else
      {
        v17 = 0;
        v18 = "ipt2lms";
        v19 = 12;
        v20 = &m33Ipt2LmsFlt;
        if ((var47_low & 8) == 0)
        {
          goto LABEL_9;
        }

        v16 = debugDM4DisableConf;
        if ((debugDM4DisableConf & 8) != 0)
        {
          goto LABEL_9;
        }
      }

      v18 = "ictcp2lms";
      v17 = 1;
      v19 = 12;
      v20 = &m33Itp2LmsFlt;
      if ((var47_low & 0x40) != 0 && (v16 & 0x40) == 0)
      {
        v19 = [(MSRHDRProcessing *)self getMatrixScale2P:&m33Itp2LmsFlt];
        snprintf(&info, 0x3FFuLL, "ictcp2lms");
        goto LABEL_10;
      }
    }

    else
    {
      v17 = 0;
      v18 = "ipt2lms";
      v19 = 12;
      v20 = &m33Ipt2LmsFlt;
    }

LABEL_9:
    snprintf(&info, 0x3FFuLL, v18);
LABEL_10:
    if (v13)
    {
      fprintf(v13, "%s--- B04-01 Frame %d ---\n", prefix, self->super._frameNumber);
      fprintf(v13, "%s--- %s ---\n", prefix, &info);
      fprintf(v13, "%scontrolpath[%d].PostCLUT3x3Enable = %d\n", prefix, self->super._frameNumber, 1);
      v21 = *v20;
      if (*v20 < 0.0)
      {
        v21 = -*v20;
      }

      v22 = (1 << v19);
      v23 = ((v21 * v22) + 0.5);
      if (*v20 < 0.0)
      {
        v23 = -v23;
      }

      v24 = 0.097569;
      if (v17)
      {
        v24 = 0.017218;
      }

      v25 = ((v24 * v22) + 0.5);
      v26 = 0.20523;
      if (v17)
      {
        v26 = 0.11103;
      }

      v27 = ((v26 * v22) + 0.5);
      v28 = 0.11388;
      if (v17)
      {
        v28 = 0.017218;
      }

      v29 = ((v28 * v22) + 0.5);
      v30 = 0.13322;
      if (v17)
      {
        v30 = 0.11103;
      }

      v31 = ((v30 * v22) + 0.5);
      if (v17)
      {
        v31 = -v31;
      }

      v32 = 0.032615;
      if (v17)
      {
        v32 = 1.1201;
      }

      v33 = ((v32 * v22) + 0.5);
      v34 = 0.67689;
      if (v17)
      {
        v34 = 0.32063;
      }

      fprintf(v13, "%scontrolpath[%d].m33Ipt2Lms = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", prefix, self->super._frameNumber, v23, v25, v27, (v22 + 0.5), -v29, v31, (v22 + 0.5), v33, -((v34 * v22) + 0.5));
      fprintf(v13, "%scontrolpath[%d].m33Ipt2LmsScale2P = %d\n", prefix, self->super._frameNumber, v19);
      fprintf(v13, "%scontrolpath[%d].Ipt2LmsOutMin = %d\n", prefix, self->super._frameNumber, 0);
      fprintf(v13, "%s\n", prefix);
    }

    else
    {
      v22 = (1 << v19);
    }

    v35 = 0;
    v12[938] = 1;
    v12[939] = v19;
    coeff = b04_01->var2.var0.var1.chromaticAdaption.cacsc2.coeff;
    do
    {
      v37 = 0;
      if (v35)
      {
        v38 = -1.0;
      }

      else
      {
        v38 = 0.0;
      }

      b04_01->var2.var0.var1.chromaticAdaption.cacsc2.inputMinClip[v35] = v38;
      b04_01->var2.var0.var0[v35 + 6061] = 1065353216;
      b04_01->var2.var0.var0[v35 + 6064] = 0;
      do
      {
        v39 = *&v20[v37];
        v40 = v39 < 0.0;
        if (v39 < 0.0)
        {
          v39 = -v39;
        }

        v41 = ((v22 * v39) + 0.5);
        if (v40)
        {
          v41 = -v41;
        }

        (*coeff)[v37++] = v41;
      }

      while (v37 != 3);
      b04_01->var2.var0.var0[v35 + 6076] = 0;
      b04_01->var2.var0.var0[v35 + 6079] = 0;
      b04_01->var2.var0.var0[v35++ + 6082] = 1065353216;
      ++coeff;
      v20 += 3;
    }

    while (v35 != 3);
    return;
  }

  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B04-01 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].PostCLUT3x3Enable = %d\n", prefix, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", prefix);
  }

  v12[938] = 0;
}

- (void)populateMSRColorConfigStageB04_02:(id *)b04_02 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  enabledCopy = enabled;
  v12 = qword_280C66108;
  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B04-02 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v12, "%scontrolpath[%d].FixedPQDeGammaEnable = %d\n", prefix, self->super._frameNumber, enabledCopy);
    fprintf(v12, "%s\n", prefix);
  }

  b04_02->var2.var0.var1.chromaticAdaption.fixedPQDegamma_Enable = enabledCopy;
}

- (void)populateMSRColorConfigStageB04_03:(id *)b04_03 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  v106 = *MEMORY[0x277D85DE8];
  v12 = &b04_03->var2.var0.var0[5118];
  v13 = qword_280C66108;
  if (enabled)
  {
    controlCopy5 = control;
    b04_03Copy2 = b04_03;
    v101 = 0x3F800000uLL;
    *&v102[4] = 0;
    *&v102[12] = 0x3F80000000000000;
    *v102 = 1065353216;
    v18 = 1.0;
    if (control->atmEnable && (targetMaxLinear = control->targetMaxLinearOutput, targetMaxLinear > control->diffuseInNits))
    {
      if (context->processingType == 2)
      {
        v18 = control->targetMaxLinear / targetMaxLinear;
      }
    }

    else
    {
      targetMaxLinear = control->targetMaxLinear;
    }

    v20 = MEMORY[0x277CC4C30];
    processingType = context->processingType;
    if (processingType <= 1)
    {
      if (!processingType)
      {
        goto LABEL_35;
      }

      if (processingType != 1)
      {
LABEL_26:
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v29 = logInstanceID;
          }

          else
          {
            v29 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = WORD1(v29);
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: msrHC->processingType == kHDRProcessingTypeDoVi || msrHC->processingType == kHDRProcessingTypeDoVi84 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 4287\n", buf, 0xCu);
          }

          prevLogInstanceID = v29;
          b04_03Copy2 = b04_03;
          v20 = MEMORY[0x277CC4C30];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: msrHC->processingType == kHDRProcessingTypeDoVi || msrHC->processingType == kHDRProcessingTypeDoVi84 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 4287\n", buf, 2u);
        }

LABEL_35:
        targetColorPrimaries = controlCopy5->targetColorPrimaries;
        if (targetColorPrimaries == *MEMORY[0x277CC4C20])
        {
          v31 = "709";
        }

        else if (targetColorPrimaries == *v20)
        {
          v31 = "P3";
        }

        else if (targetColorPrimaries == *MEMORY[0x277CC4C18])
        {
          v31 = "2020";
        }

        else
        {
          v31 = "P3 (by default)";
        }

        v18 = *&config[1].var7;
        if (context->outputTransferFunction == 16)
        {
          if (controlCopy5->enableHybridCanonicalRendering)
          {
            v18 = v18 * controlCopy5->outputScaler;
          }
        }

        else
        {
          v18 = (v18 * 10000.0) / targetMaxLinear;
        }

        if (targetColorPrimaries == *MEMORY[0x277CC4C20])
        {
          v32 = &LMStoRGB_coeff_709;
        }

        else
        {
          v32 = &LMStoRGB_coeff_P3;
          if (targetColorPrimaries != *v20 && targetColorPrimaries == *MEMORY[0x277CC4C18])
          {
            v32 = &LMStoRGB_coeff_2020;
          }
        }

        var47_low = LOWORD(config[1].var47);
        v34 = &LMStoRGB_coeff_2020_DM4;
        if ((debugDM4DisableConf & 0x10) != 0)
        {
          v34 = v32;
        }

        if ((var47_low & 0x10) != 0)
        {
          v35 = v34;
        }

        else
        {
          v35 = v32;
        }

        if ((var47_low & 2) != 0 && (debugDM4DisableConf & 2) == 0)
        {
          v36 = v35[1];
          v98 = *v35;
          v99 = v36;
          v100 = *(v35 + 8);
          snprintf(&info, 0x3FFuLL, "lms2rgb: %s, with 4%% inverse crosstalk", v31);
          v37 = &m33InverseCrossTalkFourPercentFlt;
          goto LABEL_63;
        }

        if ((LOWORD(config[1].var47) & 0x100) != 0 && (debugDM4DisableConf & 0x100) == 0)
        {
          v38 = v35[1];
          v98 = *v35;
          v99 = v38;
          v100 = *(v35 + 8);
          snprintf(&info, 0x3FFuLL, "lms2rgb: %s, with 2%% inverse crosstalk", v31);
          v37 = &m33InverseCrossTalkTwoPercentFlt;
          goto LABEL_63;
        }

        if ((var47_low & 4) != 0 && (debugDM4DisableConf & 4) == 0)
        {
          v85 = v35[1];
          v98 = *v35;
          v99 = v85;
          v100 = *(v35 + 8);
          if ((var47_low & 0x80) != 0 && (debugDM4DisableConf & 0x80) == 0)
          {
            snprintf(&info, 0x3FFuLL, "rgb2rgb: RGBtoLMS from DM metadata, 2%% crosstalk, and LMStoRGB");
            v86 = 0;
            controlCopy5 = control;
            do
            {
              *&buf[v86 * 4] = data->var6[v86] * 0.000061035;
              ++v86;
            }

            while (v86 != 9);
            Matrix3x3_multmatrix(&v98, &m33CrossTalkTwoPercentFlt);
            Matrix3x3_multmatrix(&v98, buf);
            v18 = 0.1;
            goto LABEL_64;
          }

          snprintf(&info, 0x3FFuLL, "lms2rgb: %s, with 4%%-to-2%% inverse crosstalk", v31);
          v37 = &m33CrossTalkFour2TwoPercentFlt;
LABEL_63:
          Matrix3x3_multmatrix(&v98, v37);
          controlCopy5 = control;
LABEL_64:
          *buf = v98;
          v104 = v99;
          v105 = v100;
          goto LABEL_65;
        }

        if (context->contentType == 1 && context->inputColorSpace == 2 && LODWORD(config[1].var46) == 4)
        {
          displayType = context->displayType;
          if (displayType <= 7 && displayType != 5)
          {
            if (context->enableToneMapping && context->enableReshaping)
            {
              snprintf(&info, 0x3FFuLL, "lms2rgb: %s, with 4%% inverse crosstalk", v31);
              v88 = v35[1];
              v98 = *v35;
              v99 = v88;
              v100 = *(v35 + 8);
              v89 = &m33InverseCrossTalkFourPercentFlt;
LABEL_171:
              Matrix3x3_multmatrix(&v98, v89);
              *buf = v98;
              v104 = v99;
              v93 = v100;
              goto LABEL_169;
            }

            if (displayType == 7 && context->enableReshaping && !context->enableToneMapping)
            {
              snprintf(&info, 0x3FFuLL, "lms2rgb: %s, with 2%% inverse crosstalk", v31);
              v94 = v35[1];
              v98 = *v35;
              v99 = v94;
              v100 = *(v35 + 8);
              v89 = &m33InverseCrossTalkTwoPercentFlt;
              goto LABEL_171;
            }
          }
        }

        snprintf(&info, 0x3FFuLL, "lms2rgb: %s", v31);
        v92 = v35[1];
        *buf = *v35;
        v104 = v92;
        v93 = *(v35 + 8);
LABEL_169:
        v105 = v93;
        controlCopy5 = control;
LABEL_65:
        v39 = 0;
        v40 = 0.0;
        do
        {
          v41 = fabsf(*&buf[v39]);
          if (*&v40 <= v41)
          {
            *&v40 = v41;
          }

          v39 += 4;
        }

        while (v39 != 36);
        v42 = 32767.0 / *&v40;
        if (v18 > v42)
        {
          v18 = v42;
        }

        if ((LOWORD(config[1].var47) & 0x40) == 0 || (debugDM4DisableConf & 0x40) != 0)
        {
          *&v40 = v18;
          v43 = [(MSRHDRProcessing *)self setLms2RgbScale2P:buf OutputScale:v40];
        }

        else
        {
          *&v40 = v18;
          v43 = [(MSRHDRProcessing *)self getMatrixScale2P:buf OutputScale:v40];
        }

        v44 = v43;
        if (v13)
        {
          fprintf(v13, "%s--- B04-03 Frame %d ---\n", prefix, self->super._frameNumber);
          fprintf(v13, "%s--- %s ---\n", prefix, &info);
          fprintf(v13, "%scontrolpath[%d].PreReGamma3x3Enable = %d\n", prefix, self->super._frameNumber, 1);
          v45 = -(v18 * *buf);
          if ((v18 * *buf) >= 0.0)
          {
            v45 = v18 * *buf;
          }

          v46 = (1 << v44);
          v47 = ((v45 * v46) + 0.5);
          if ((v18 * *buf) < 0.0)
          {
            v47 = -v47;
          }

          v48 = -(v18 * *&buf[4]);
          if ((v18 * *&buf[4]) >= 0.0)
          {
            v48 = v18 * *&buf[4];
          }

          v49 = ((v48 * v46) + 0.5);
          if ((v18 * *&buf[4]) < 0.0)
          {
            v49 = -v49;
          }

          v50 = -(v18 * *&buf[8]);
          if ((v18 * *&buf[8]) >= 0.0)
          {
            v50 = v18 * *&buf[8];
          }

          v51 = ((v50 * v46) + 0.5);
          if ((v18 * *&buf[8]) < 0.0)
          {
            v51 = -v51;
          }

          v52 = v18 * *&buf[12];
          if ((v18 * *&buf[12]) < 0.0)
          {
            v52 = -(v18 * *&buf[12]);
          }

          v53 = ((v52 * v46) + 0.5);
          if ((v18 * *&buf[12]) < 0.0)
          {
            v53 = -v53;
          }

          v54 = -(v18 * *v104.i32);
          if ((v18 * *v104.i32) >= 0.0)
          {
            v54 = v18 * *v104.i32;
          }

          v55 = ((v54 * v46) + 0.5);
          if ((v18 * *v104.i32) < 0.0)
          {
            v55 = -v55;
          }

          v56 = v18 * *&v104.i32[1];
          if ((v18 * *&v104.i32[1]) < 0.0)
          {
            v56 = -(v18 * *&v104.i32[1]);
          }

          v57 = ((v56 * v46) + 0.5);
          if ((v18 * *&v104.i32[1]) < 0.0)
          {
            v57 = -v57;
          }

          v58 = -(v18 * *&v104.i32[2]);
          if ((v18 * *&v104.i32[2]) >= 0.0)
          {
            v58 = v18 * *&v104.i32[2];
          }

          v59 = ((v58 * v46) + 0.5);
          if ((v18 * *&v104.i32[2]) < 0.0)
          {
            v59 = -v59;
          }

          v60 = v18 * *&v104.i32[3];
          if ((v18 * *&v104.i32[3]) < 0.0)
          {
            v60 = -(v18 * *&v104.i32[3]);
          }

          v61 = ((v60 * v46) + 0.5);
          if ((v18 * *&v104.i32[3]) < 0.0)
          {
            v61 = -v61;
          }

          v62 = -(v18 * v105);
          if ((v18 * v105) >= 0.0)
          {
            v62 = v18 * v105;
          }

          v63 = ((v62 * v46) + 0.5);
          if ((v18 * v105) < 0.0)
          {
            v63 = -v63;
          }

          fprintf(v13, "%scontrolpath[%d].m33Lms2Rgb = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", prefix, self->super._frameNumber, v47, v49, v51, v53, v55, v57, v59, v61, v63);
          fprintf(v13, "%scontrolpath[%d].m33Lms2RgbScale2P = %d\n", prefix, self->super._frameNumber, v44);
          fprintf(v13, "%scontrolpath[%d].Lms2RgbInMax = %llu\n", prefix, self->super._frameNumber, 0x1387FFE00);
          fprintf(v13, "%scontrolpath[%d].Lms2RgbOutMin = %llu\n", prefix, self->super._frameNumber, 0);
          fprintf(v13, "%scontrolpath[%d].Lms2RgbOutMax = %llu\n", prefix, self->super._frameNumber, 1048576000);
          fprintf(v13, "%s\n", prefix);
        }

        else
        {
          v46 = (1 << v43);
        }

        v64 = 0;
        v12[968] = 1;
        v12[969] = v44;
        inputMinClip = b04_03Copy2->var2.var0.var1.commonSpaceToColorB.c2b.inputMinClip;
        inputMaxClip = b04_03Copy2->var2.var0.var1.commonSpaceToColorB.c2b.inputMaxClip;
        offsetIn = b04_03Copy2->var2.var0.var1.commonSpaceToColorB.c2b.offsetIn;
        coeff = b04_03Copy2->var2.var0.var1.commonSpaceToColorB.c2b.coeff;
        offsetOut = b04_03Copy2->var2.var0.var1.commonSpaceToColorB.c2b.offsetOut;
        v96 = *v20;
        v95 = *MEMORY[0x277CC4C18];
        v70 = b04_03Copy2;
        outputMinClip = b04_03Copy2->var2.var0.var1.commonSpaceToColorB.c2b.outputMinClip;
        outputMaxClip = v70->var2.var0.var1.commonSpaceToColorB.c2b.outputMaxClip;
        v73 = buf;
        do
        {
          v74 = 0;
          inputMinClip[v64] = -2.0;
          inputMaxClip[v64] = 2.0;
          offsetIn[v64] = 0.0;
          do
          {
            v75 = v18 * *&v73[v74 * 4];
            v76 = -v75;
            if (v75 >= 0.0)
            {
              v76 = v18 * *&v73[v74 * 4];
            }

            v77 = ((v46 * v76) + 0.5);
            if (v75 < 0.0)
            {
              v77 = -v77;
            }

            (*coeff)[v74++] = v77;
          }

          while (v74 != 3);
          offsetOut[v64] = 0.0;
          if (controlCopy5->targetTransferFunction == 16)
          {
            v78 = controlCopy5->targetColorPrimaries;
            v80 = v78 != v96 && v78 != v95;
          }

          else
          {
            v80 = 1;
          }

          if (GetConfig() && (Config = GetConfig(), !(v80 | ((*HDRConfig::GetConfigEntryValue(Config, 0x5Bu, 0) & 1) == 0))))
          {
            v82 = 1.0;
            v83 = 0;
          }

          else
          {
            v82 = 2.0;
            v83 = -1073741825;
          }

          LODWORD(outputMinClip[v64]) = v83;
          outputMaxClip[v64++] = v82;
          ++coeff;
          v73 += 12;
          controlCopy5 = control;
        }

        while (v64 != 3);
        goto LABEL_134;
      }
    }

    else if (processingType != 5)
    {
      if (processingType == 4)
      {
        goto LABEL_35;
      }

      if (processingType == 2)
      {
        var15 = hdrControl->var15;
        if (var15 == 9)
        {
          v90 = control->targetColorPrimaries;
          if (v90 == *MEMORY[0x277CC4C30])
          {
            strcpy(&info, "postRGB2RGB: 2020 -> P3");
            v24 = &RGB2020toRGBP3_coeff;
            goto LABEL_153;
          }

          if (v90 == *MEMORY[0x277CC4C20])
          {
            strcpy(&info, "postRGB2RGB: 2020 -> 709");
            v24 = &RGB2020toRGB709_coeff;
            goto LABEL_153;
          }
        }

        else if (var15 == 12)
        {
          v23 = control->targetColorPrimaries;
          if (v23 != *MEMORY[0x277CC4C18])
          {
            if (v23 == *MEMORY[0x277CC4C20])
            {
              strcpy(&info, "postRGB2RGB: P3 -> 709");
              v24 = &RGBP3toRGB709_coeff;
              goto LABEL_153;
            }

            goto LABEL_152;
          }

          strcpy(&info, "postRGB2RGB: P3 -> 2020");
          v24 = &RGBP3toRGB2020_coeff;
LABEL_153:
          v91 = v24[1];
          *buf = *v24;
          v104 = v91;
          v105 = *(v24 + 8);
          if (context->outputTransferFunction == 16)
          {
            if (BYTE1(config[1].var49))
            {
              v18 = targetMaxLinear / 10000.0;
            }

            else
            {
              v18 = *&config->var66 / 10000.0;
            }

            if (control->enableHybridCanonicalRendering)
            {
              v18 = v18 * control->outputScaler;
            }
          }

          else if ((BYTE1(config[1].var49) & 1) == 0)
          {
            v18 = *&config->var66 / targetMaxLinear;
          }

          goto LABEL_65;
        }

LABEL_152:
        strcpy(&info, "postRGB2RGB: No conversion");
        v24 = &v101;
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    if (context->outputTransferFunction == 16)
    {
      if (control->enableHybridCanonicalRendering)
      {
        v18 = v18 * control->outputScaler;
      }
    }

    else
    {
      v18 = 10000.0 / targetMaxLinear;
    }

    snprintf(&info, 0x3FFuLL, "postRGB2RGB: from DM config, scaler=%f", v18);
    v25 = *&config[1].var26;
    HIDWORD(v25) = *&config[1].var30;
    v26 = *&config[1].var34;
    v27 = vextq_s8(vextq_s8(*&config[1].var30, *&config[1].var30, 0xCuLL), v26, 8uLL);
    v101 = v25;
    *v102 = v27;
    *&v102[16] = v26.i32[2];
    v105 = *&v26.i32[2];
    *buf = v25;
    v104 = v27;
    goto LABEL_65;
  }

  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B04-03 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].PreReGamma3x3Enable = %d\n", prefix, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", prefix);
  }

  v12[968] = 0;
LABEL_134:
  v84 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB04_05:(id *)b04_05 Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  v69 = *MEMORY[0x277D85DE8];
  v12 = &b04_05->var2.var0.var1.gammaEncoding.gamma_LUT[2][662];
  v13 = qword_280C66108;
  if (!enabled)
  {
    if (qword_280C66108)
    {
      fprintf(qword_280C66108, "%s--- B04-05 Frame %d ---\n", prefix, self->super._frameNumber);
      fprintf(v13, "%scontrolpath[%d].PostCm3x3Enable = %d\n", prefix, self->super._frameNumber, 0);
      fprintf(v13, "%s\n", prefix);
    }

    v12[44] = 0.0;
    goto LABEL_110;
  }

  memset(v67 + 4, 0, 32);
  if (context->processingType != 5 || !isSupportedMSRColorConversion(context->inputFormat, context->outputFormat))
  {
    if (context->contentType == 1 && !context->inputColorSpace && !context->displayType && ((LOWORD(config[1].var47) & 0x20) == 0 || (debugDM4DisableConf & 0x20) != 0))
    {
      strcpy(&info, "rgb2yuv: DolbyVision to DolbyVision TV");
      v18 = &qword_2508CDCAC;
      RGBtoYUVMatrixForUITargetColorPrimary = &xmmword_2508CDC88;
      goto LABEL_44;
    }

    targetColorPrimaries = control->targetColorPrimaries;
    if (*MEMORY[0x277CC4C20] == targetColorPrimaries)
    {
      v22 = "709";
    }

    else
    {
      v21 = *MEMORY[0x277CC4C18] != targetColorPrimaries || *MEMORY[0x277CC4C30] == targetColorPrimaries;
      v22 = "P3";
      if (!v21)
      {
        v22 = "2020";
      }
    }

    snprintf(&info, 0x3FFuLL, "rgb2yuv: %s", v22);
    if (context->contentType == 1)
    {
      if (context->processingType != 4 || context->inputColorSpace)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    if (context->contentType != 3)
    {
      goto LABEL_42;
    }

    if (context->inputColorSpace)
    {
      LOBYTE(v23) = 0;
      inputFormat = context->inputFormat;
      if (inputFormat > 1647534391)
      {
        if (inputFormat != 1815162994)
        {
          v25 = 1647534392;
LABEL_39:
          if (inputFormat != v25)
          {
LABEL_43:
            RGBtoYUVMatrixForUITargetColorPrimary = getRGBtoYUVMatrixForUITargetColorPrimary(control, v23 & 1);
            v18 = &qword_2508CDCAC;
            goto LABEL_44;
          }
        }
      }

      else if (inputFormat != 1378955371)
      {
        v25 = 1380411457;
        goto LABEL_39;
      }
    }

LABEL_40:
    displayType = context->displayType;
    if (displayType < 8)
    {
      v23 = 0xDFu >> displayType;
      goto LABEL_43;
    }

LABEL_42:
    LOBYTE(v23) = 0;
    goto LABEL_43;
  }

  outputColorSpace = context->outputColorSpace;
  if (outputColorSpace)
  {
    if (outputColorSpace == 2)
    {
      *&info = 0x74706932736D6CLL;
      v18 = &qword_2508CDCB8;
      RGBtoYUVMatrixForUITargetColorPrimary = &m33Lms2IptFlt;
      goto LABEL_44;
    }

    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v26 = logInstanceID;
      }

      else
      {
        v26 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = WORD1(v26);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: isConversionOutputYuv(msrHC) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 4662\n", buf, 0xCu);
      }

      prevLogInstanceID = v26;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: isConversionOutputYuv(msrHC) warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 4662\n", buf, 2u);
    }
  }

  v64 = control->targetColorPrimaries;
  if (*MEMORY[0x277CC4C20] == v64)
  {
    v66 = "709";
  }

  else
  {
    v65 = *MEMORY[0x277CC4C18] != v64 || *MEMORY[0x277CC4C30] == v64;
    v66 = "P3";
    if (!v65)
    {
      v66 = "2020";
    }
  }

  snprintf(&info, 0x3FFuLL, "rgb2yuv: %s", v66);
  if (isFullRangeFromSurfaceFormat(context->outputFormat))
  {
    v18 = &qword_2508CDCB8;
  }

  else
  {
    v18 = &qword_2508CDCAC;
  }

  RGBtoYUVMatrixForUITargetColorPrimary = getRGBtoYUVMatrixForUITargetColorPrimary(control, 0);
LABEL_44:
  *buf = *v18;
  *&buf[8] = *(v18 + 2);
  v28 = RGBtoYUVMatrixForUITargetColorPrimary[1];
  v67[0] = *RGBtoYUVMatrixForUITargetColorPrimary;
  v67[1] = v28;
  LODWORD(v67[2]) = *(RGBtoYUVMatrixForUITargetColorPrimary + 8);
  if (v13)
  {
    fprintf(v13, "%s--- B04-05 Frame %d ---\n", prefix, self->super._frameNumber);
    fprintf(v13, "%s--- %s ---\n", prefix, &info);
    fprintf(v13, "%scontrolpath[%d].PostCm3x3Enable = %d\n", prefix, self->super._frameNumber, 1);
    v29 = *(v67 + 1);
    v30 = -*v67;
    if (*v67 >= 0.0)
    {
      v30 = *v67;
    }

    v31 = ((v30 * 4095.0) + 0.5);
    if (*v67 < 0.0)
    {
      v31 = -v31;
    }

    if (*(v67 + 1) < 0.0)
    {
      v29 = -*(v67 + 1);
    }

    v32 = ((v29 * 4095.0) + 0.5);
    if (*(v67 + 1) < 0.0)
    {
      v32 = -v32;
    }

    v33 = *(v67 + 2);
    if (*(v67 + 2) < 0.0)
    {
      v33 = -*(v67 + 2);
    }

    v34 = ((v33 * 4095.0) + 0.5);
    if (*(v67 + 2) < 0.0)
    {
      v34 = -v34;
    }

    v35 = -*(v67 + 3);
    if (*(v67 + 3) >= 0.0)
    {
      v35 = *(v67 + 3);
    }

    v36 = ((v35 * 4095.0) + 0.5);
    if (*(v67 + 3) < 0.0)
    {
      v36 = -v36;
    }

    v37 = *&v67[1];
    if (*&v67[1] < 0.0)
    {
      v37 = -*&v67[1];
    }

    v38 = ((v37 * 4095.0) + 0.5);
    if (*&v67[1] < 0.0)
    {
      v38 = -v38;
    }

    v39 = -*(&v67[1] + 1);
    if (*(&v67[1] + 1) >= 0.0)
    {
      v39 = *(&v67[1] + 1);
    }

    v40 = ((v39 * 4095.0) + 0.5);
    if (*(&v67[1] + 1) < 0.0)
    {
      v40 = -v40;
    }

    v41 = *(&v67[1] + 2);
    if (*(&v67[1] + 2) < 0.0)
    {
      v41 = -*(&v67[1] + 2);
    }

    v42 = ((v41 * 4095.0) + 0.5);
    if (*(&v67[1] + 2) < 0.0)
    {
      v42 = -v42;
    }

    v43 = -*(&v67[1] + 3);
    if (*(&v67[1] + 3) >= 0.0)
    {
      v43 = *(&v67[1] + 3);
    }

    v44 = ((v43 * 4095.0) + 0.5);
    if (*(&v67[1] + 3) < 0.0)
    {
      v44 = -v44;
    }

    v45 = *&v67[2];
    if (*&v67[2] < 0.0)
    {
      v45 = -*&v67[2];
    }

    v46 = ((v45 * 4095.0) + 0.5);
    if (*&v67[2] < 0.0)
    {
      v46 = -v46;
    }

    fprintf(v13, "%scontrolpath[%d].m33Rgb2Yuv = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", prefix, self->super._frameNumber, v31, v32, v34, v36, v38, v40, v42, v44, v46);
    fprintf(v13, "%scontrolpath[%d].outclr_eq_KClrYuv = %d\n", prefix, self->super._frameNumber, 0);
    fprintf(v13, "%scontrolpath[%d].rangeOverOne = %d\n", prefix, self->super._frameNumber, 0x10000);
    fprintf(v13, "%scontrolpath[%d].rangeMin = %d\n", prefix, self->super._frameNumber, 0);
    fprintf(v13, "%scontrolpath[%d].m33Rgb2YuvScale2P = %d\n", prefix, self->super._frameNumber, 12);
    fprintf(v13, "%scontrolpath[%d].v3Rgb2YuvOff = { %d, %d, %d }\n", prefix, self->super._frameNumber, *buf, *&buf[4], *&buf[8]);
    fprintf(v13, "%s\n", prefix);
  }

  v47 = 0;
  *(v12 + 22) = 0xC00000001;
  v48 = v67;
  coeff = b04_05->var2.var0.var1.rgb2ycc.rgb2ycc.coeff;
  do
  {
    v50 = 0;
    b04_05->var2.var0.var0[v47 + 8236] = -1073741825;
    b04_05->var2.var0.var0[v47 + 8239] = 0x3FFFFFFF;
    b04_05->var2.var0.var0[v47 + 8242] = 0;
    do
    {
      v51 = *(v48 + v50 * 4);
      v52 = v51 < 0.0;
      if (v51 < 0.0)
      {
        v51 = -v51;
      }

      v53 = ((v51 * 4095.0) + 0.5);
      if (v52)
      {
        v53 = -v53;
      }

      (*coeff)[v50++] = v53;
    }

    while (v50 != 3);
    v12[v47 + 64] = *&buf[4 * v47] * 0.00024414;
    b04_05->var2.var0.var0[v47 + 8257] = 0;
    b04_05->var2.var0.var0[v47++ + 8260] = 1065353216;
    ++coeff;
    v48 = (v48 + 12);
  }

  while (v47 != 3);
  if (GetConfig())
  {
    Config = GetConfig();
    if ((*HDRConfig::GetConfigEntryValue(Config, 0x47u, 0) - 1) <= 1)
    {
      outputFormat = context->outputFormat;
      if (outputFormat > 1953903151)
      {
        if (outputFormat != 1953903152 && outputFormat != 1953903668)
        {
          v56 = 1953903154;
LABEL_99:
          if (outputFormat != v56)
          {
            goto LABEL_110;
          }
        }
      }

      else if ((outputFormat - 1886680624) > 4 || ((1 << (outputFormat - 48)) & 0x15) == 0)
      {
        v56 = 1882468912;
        goto LABEL_99;
      }

      if (context->outputTransferFunction == 16)
      {
        v57 = 0;
        for (i = 0; i != 3; ++i)
        {
          v59 = v57;
          v60 = 3;
          do
          {
            v61 = R2020_Rgb2YuvNarrow[v59];
            if ((0x198uLL >> v59))
            {
              v61 = -v61;
            }

            v62 = ((v61 * 4096.0) + 0.5);
            if ((0x198uLL >> v59))
            {
              v62 = -v62;
            }

            b04_05->var2.var0.var0[v59++ + 8245] = v62;
            --v60;
          }

          while (v60);
          v57 += 3;
        }

        *(v12 + 32) = 0x3F0000003D800000;
        v12[66] = 0.5;
      }
    }
  }

LABEL_110:
  v63 = *MEMORY[0x277D85DE8];
}

- (int)getColorConfigSignatureString:(char *)string length:(int)length tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl
{
  p_msrHC = &self->_msrHC;
  var15 = hdrControl->var15;
  switch(var15)
  {
    case 1u:
      v9 = "709";
      break;
    case 9u:
      v9 = "2020";
      break;
    case 0xCu:
      v9 = "P3";
      break;
    default:
      v9 = "Unknown";
      break;
  }

  inputTransferFunction = self->_msrHC.inputTransferFunction;
  if (inputTransferFunction > 15)
  {
    if (inputTransferFunction != 16)
    {
      if (inputTransferFunction == 18)
      {
        v11 = "HLG";
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v11 = "PQ";
  }

  else
  {
    if (inputTransferFunction != 1)
    {
      if (inputTransferFunction == 13)
      {
        v11 = "sRGB";
        goto LABEL_18;
      }

LABEL_15:
      v11 = "Linear";
      goto LABEL_18;
    }

    v11 = "709";
  }

LABEL_18:
  var16 = hdrControl->var16;
  if (var16 <= 11)
  {
    if (var16 == 1)
    {
      v13 = "709";
      goto LABEL_30;
    }

    if (var16 == 9)
    {
      v13 = "2020";
      goto LABEL_30;
    }
  }

  else
  {
    switch(var16)
    {
      case 248:
        v13 = "IPT";
        goto LABEL_30;
      case 14:
        v13 = "ICtCp";
        goto LABEL_30;
      case 12:
        v13 = "P3";
        goto LABEL_30;
    }
  }

  v13 = "Unknown";
LABEL_30:
  targetColorPrimaries = control->targetColorPrimaries;
  if (*MEMORY[0x277CC4C20] == targetColorPrimaries)
  {
    v16 = "709";
  }

  else
  {
    v15 = *MEMORY[0x277CC4C18] != targetColorPrimaries || *MEMORY[0x277CC4C30] == targetColorPrimaries;
    v16 = "P3";
    if (!v15)
    {
      v16 = "2020";
    }
  }

  outputTransferFunction = self->_msrHC.outputTransferFunction;
  if (outputTransferFunction > 15)
  {
    if (outputTransferFunction != 16)
    {
      if (outputTransferFunction == 18)
      {
        v18 = "HLG";
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    v18 = "PQ";
  }

  else
  {
    if (outputTransferFunction != 1)
    {
      if (outputTransferFunction == 13)
      {
        v18 = "sRGB";
        goto LABEL_48;
      }

LABEL_45:
      v18 = "Linear";
      goto LABEL_48;
    }

    v18 = "709";
  }

LABEL_48:
  v19 = processingTypeName[self->_msrHC.processingType];
  v20 = colorSpaceName[self->_msrHC.inputColorSpace];
  inputFormat = self->_msrHC.inputFormat;
  v22 = operationName[self->_msrHC.operation];
  targetMatrixCoeffs = control->targetMatrixCoeffs;
  if (targetMatrixCoeffs <= 11)
  {
    if (targetMatrixCoeffs == 1)
    {
      v24 = "709";
      goto LABEL_60;
    }

    if (targetMatrixCoeffs == 9)
    {
      v24 = "2020";
      goto LABEL_60;
    }
  }

  else
  {
    switch(targetMatrixCoeffs)
    {
      case 248:
        v24 = "IPT";
        goto LABEL_60;
      case 14:
        v24 = "ICtCp";
        goto LABEL_60;
      case 12:
        v24 = "P3";
        goto LABEL_60;
    }
  }

  v24 = "Unknown";
LABEL_60:
  v25 = colorSpaceName[p_msrHC->outputColorSpace];
  outputFormat = p_msrHC->outputFormat;
  inputWidth = p_msrHC->inputWidth;
  inputHeight = p_msrHC->inputHeight;
  AmbientInNits = control->AmbientInNits;
  if (AmbientInNits <= 0.0)
  {
    AmbientInNits = 0.0;
  }

  return snprintf(string, length, "%s_%s-%s-%s-%s-%c%c%c%c_%s_%s-%s-%s-%s-%c%c%c%c_%zdx%zd_edrFactor-%.2f_ambient-%.0fnits_targetnits-%.0fnits", v19, v9, v11, v13, v20, HIBYTE(inputFormat), BYTE2(inputFormat), BYTE1(inputFormat), inputFormat, v22, v16, v18, v24, v25, HIBYTE(outputFormat), BYTE2(outputFormat), BYTE1(outputFormat), outputFormat, inputWidth, inputHeight, control->EDRFactor, AmbientInNits, control->targetMaxLinear);
}

- (void)runPostFrameDumpActions:(id *)actions
{
  v4 = -1;
  v5 = 4;
  v6 = &qword_280C660F0;
  do
  {
    if (v4 <= 2 && *(v6 - 16) == 1)
    {
      frameNumber = self->super._frameNumber;
      if (*(v6 - 3) <= frameNumber && frameNumber <= *(v6 - 2) && *v6)
      {
        fflush(*v6);
        if (self->super._frameNumber == *(v6 - 2))
        {
          fclose(*v6);
          *v6 = 0;
        }
      }
    }

    v6 += 3;
    ++v4;
    --v5;
  }

  while (v5);
}

- (void)populateMSRColorConfig:(id *)config DMConfig:(id *)mConfig DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)context
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v15 = *&mConfig[1].var42;
  *&context->dpcParam.alpha = *&mConfig[1].var38;
  *&context->dpcParam.on = v15;
  [(MSRHDRProcessing *)self decideStageStatus:&v18 MSRHDRContext:context DMConfig:mConfig];
  [(MSRHDRProcessing *)self checkNewFrameForDump];
  [(MSRHDRProcessing *)self populateMSRColorConfigHeader:config Enabled:1 Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_01:config Enabled:v18 Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_02:config Enabled:BYTE1(v18) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_03:config Enabled:BYTE2(v18) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_04:config Enabled:BYTE3(v18) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_05:config Enabled:BYTE4(v18) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_06:config Enabled:BYTE5(v18) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_01:config Enabled:v19 Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_02:config Enabled:BYTE1(v19) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_03:config Enabled:BYTE2(v19) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_04:config Enabled:BYTE3(v19) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_05:config Enabled:BYTE4(v19) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB02:config Enabled:BYTE6(v18) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB03:config Enabled:HIBYTE(v18) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageHwOOTF:config Enabled:BYTE6(v19) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageDownSampleFilter:config Enabled:HIBYTE(v19) Prefix:&v17 DMConfig:mConfig DMData:data tcControl:control hdrControl:hdrControl MSRHDRContext:context];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)attachHDRMetaDataToOutputSurface:(__IOSurface *)surface withDMData:(id *)data withDMConfig:(id *)config withHdrControl:(id *)control withTcControl:(ToneCurve_Control *)tcControl withMSRHDRContext:(MSRHDRContext *)context withInfoFrame:(id *)frame
{
  displayType = self->_msrHC.displayType;
  if (!displayType || control->var3 == 4 && control->var6)
  {
    [(MSRHDRProcessing *)self attachDoViMetadataPacketTo:surface withDMData:data withDMConfig:config withHdrControl:control withMSRHDRContext:context];
  }

  else if (displayType == 2)
  {
    [(MSRHDRProcessing *)self attachInfoFrameTo:surface withDMData:data withTcControl:tcControl withInfoFrame:frame];
  }
}

- (void)attachDoViMetadataPacketTo:(__IOSurface *)to withDMData:(id *)data withDMConfig:(id *)config withHdrControl:(id *)control withMSRHDRContext:(MSRHDRContext *)context
{
  v52 = *MEMORY[0x277D85DE8];
  if (control->var3 != 4)
  {
    v33 = convertMetaDataToPayLoad(data, &self->_payload);
    self->_payLoadLength = v33;
    if (data->var25.var0)
    {
      v35 = 13;
    }

    else
    {
      v35 = 0;
    }

    if (data->var26.var0)
    {
      v36 = 13;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36 + v35;
    if (v33 - (v36 + v35) >= 0x1E3)
    {
      metaDataReduceL2(data);
      v38 = convertMetaDataToPayLoad(data, &self->_payload);
      self->_payLoadLength = v38;
      if (v38 - v37 >= 0x1E3 && data->var31.var0)
      {
        data->var31.var0 = 0;
        --data->var18;
        v38 = convertMetaDataToPayLoad(data, &self->_payload);
        self->_payLoadLength = v38;
      }

      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v39 = logInstanceID;
        }

        else
        {
          v39 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218754;
          v46 = WORD1(v39);
          v47 = 2080;
          *v48 = "[MSRHDRProcessing attachDoViMetadataPacketTo:withDMData:withDMConfig:withHdrControl:withMSRHDRContext:]";
          *&v48[8] = 1024;
          v49 = v38 - v37;
          v50 = 1024;
          v51 = 482;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     %s : Warning: after md reduction, payLoadLength=%d, max packet size=%d", buf, 0x22u);
        }

        prevLogInstanceID = v39;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v46 = "[MSRHDRProcessing attachDoViMetadataPacketTo:withDMData:withDMConfig:withHdrControl:withMSRHDRContext:]";
        v47 = 1024;
        *v48 = v38 - v37;
        *&v48[4] = 1024;
        *&v48[6] = 482;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     %s : Warning: after md reduction, payLoadLength=%d, max packet size=%d", buf, 0x18u);
      }
    }

    if (context->contentType == 3)
    {
      LODWORD(v34) = *&config->var66;
      setTargitBrightnessInMetaData(&self->_payload, v34, control->var22, *&v34, control->var22);
    }

    if (SLODWORD(config[1].var46) <= 3)
    {
      adjustL1MetaData(&self->_payload, 0);
    }

    self->_payLoadLength = adjustL2MetaData(&self->_payload.dm_metadata_id, 0);
    if (GetConfig())
    {
      Config = GetConfig();
      HDRConfig::GetConfigEntryValue(Config, 0x4Au, 0);
    }

    self->_numOfPackets = PacketizeMetadataMSR(&self->_payload, self->_payLoadLength, &self->_doviHDMIMetaData.var0);
    self->_doviHDMIMetaData.version = 1;
    self->_doviHDMIMetaData.var0.v1.output_conversion.metadata_copies = 3;
    self->_doviHDMIMetaData.var0.v1.output_conversion.metadata_valid_packet = self->_numOfPackets;
    v41 = CFDataCreate(*MEMORY[0x277CBECE8], &self->_doviHDMIMetaData, 524);
    IOSurfaceSetValue(to, @"DolbyVisionHDMIData", v41);
    CFRelease(v41);
    goto LABEL_38;
  }

  if (!control->var6)
  {
LABEL_38:
    v42 = *MEMORY[0x277D85DE8];
    return;
  }

  value = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:context->outputTransferFunction];
  [value setObject:v11 forKeyedSubscript:*MEMORY[0x277CD2A08]];

  LOWORD(v12) = data->var21.var2;
  *&v13 = v12 / 4095.0;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [value setObject:v14 forKeyedSubscript:*MEMORY[0x277CD2A18]];

  LOWORD(v15) = data->var21.var1;
  *&v16 = v15 / 4095.0;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [value setObject:v17 forKeyedSubscript:*MEMORY[0x277CD2A20]];

  LOWORD(v18) = data->var21.var3;
  *&v19 = v18 / 4095.0;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [value setObject:v20 forKeyedSubscript:*MEMORY[0x277CD2A10]];

  if (data->var32.var0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInt:data->var32.var2 + 2];
    [value setObject:v21 forKeyedSubscript:*MEMORY[0x277CC4C70]];

    if (data->var32.var2 == 2)
    {
      if (data->var23.var0)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithInt:data->var23.var1];
        [value setObject:v23 forKeyedSubscript:*MEMORY[0x277CC4C80]];

        v24 = [MEMORY[0x277CCABB0] numberWithInt:data->var23.var2];
        [value setObject:v24 forKeyedSubscript:*MEMORY[0x277CC4C78]];

        v25 = [MEMORY[0x277CCABB0] numberWithInt:data->var23.var3];
        [value setObject:v25 forKeyedSubscript:*MEMORY[0x277CC4C68]];
      }

      if (data->var24.var0)
      {
        LOWORD(v22) = data->var24.var2;
        *&v22 = LODWORD(v22) / 4095.0;
        v26 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
        [value setObject:v26 forKeyedSubscript:*MEMORY[0x277CC4C60]];

        LOWORD(v27) = data->var24.var1;
        *&v28 = v27 / 4095.0;
        v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
        [value setObject:v29 forKeyedSubscript:*MEMORY[0x277CC4C58]];
      }
    }
  }

  IOSurfaceSetValue(to, *MEMORY[0x277CD2A00], value);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)attachInfoFrameTo:(__IOSurface *)to withDMData:(id *)data withTcControl:(ToneCurve_Control *)control withInfoFrame:(id *)frame
{
  LODWORD(v14) = unk_2508CDD38;
  if (frame->var0.var2 && frame->var1.var0)
  {
    v13 = *&frame->var0.var0;
    v14 = *&frame->var0.var8;
    var1 = frame->var1;
  }

  else if (data->var26.var0)
  {
    LODWORD(v14) = 10000 * data->var26.var1;
    HIDWORD(v14) = data->var26.var2;
    v9 = *&data->var26.var3;
  }

  else
  {
    var16 = data->var16;
    if (var16 >= 0xC06)
    {
      v12 = PQ12Bit2LinFloat(var16);
      LODWORD(v14) = vcvt_u32_f32(vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(PQ12Bit2LinFloat(data->var15)), LODWORD(v12)), vdup_n_s32(0x461C4000u))).u32[0];
    }
  }

  if (control->dovi50toHDR10TVMode && v14 >= (control->targetMaxLinear * 10000.0))
  {
    v11 = (control->targetMaxLinear * 10000.0);
  }

  IOSurfaceSetBulkAttachments2();
}

+ (void)dolbyIOMFBMetadata:(id *)metadata withMinBrightness:(float)brightness maxBrightness:(float)maxBrightness
{
  v25 = *MEMORY[0x277D85DE8];
  bzero(metadata, 0x20CuLL);
  if (maxBrightness <= brightness)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v12 = logInstanceID;
      }

      else
      {
        v12 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134219010;
        v16 = WORD1(v12);
        v17 = 2080;
        maxBrightnessCopy2 = COERCE_DOUBLE("+[MSRHDRProcessing dolbyIOMFBMetadata:withMinBrightness:maxBrightness:]");
        v19 = 2048;
        brightnessCopy2 = maxBrightness;
        v21 = 2048;
        brightnessCopy = brightness;
        v23 = 2048;
        metadataCopy = metadata;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     %s : error max=%f <= min=%f, metaData=%p", &v15, 0x34u);
      }

      v11 = 0;
      prevLogInstanceID = v12;
    }

    else
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      v11 = 0;
      if (v13)
      {
        v15 = 136315906;
        v16 = "+[MSRHDRProcessing dolbyIOMFBMetadata:withMinBrightness:maxBrightness:]";
        v17 = 2048;
        maxBrightnessCopy2 = maxBrightness;
        v19 = 2048;
        brightnessCopy2 = brightness;
        v21 = 2048;
        brightnessCopy = *&metadata;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     %s : error max=%f <= min=%f, metaData=%p", &v15, 0x2Au);
        v11 = 0;
      }
    }
  }

  else
  {
    v8 = PQIn12Bit(brightness);
    v9 = PQIn12Bit(maxBrightness);
    LOBYTE(dword_27F3DD4A0) = BYTE1(v8);
    BYTE1(dword_27F3DD4A0) = v8;
    BYTE2(dword_27F3DD4A0) = HIBYTE(v9);
    HIBYTE(dword_27F3DD4A0) = v9;
    *&byte_27F3DD4A6 = 1;
    word_27F3DD4AA = 262;
    byte_27F3DD4AC = BYTE1(v8);
    byte_27F3DD4AD = v8;
    word_27F3DD4AE = -23799;
    byte_27F3DD4B0 = ((v8 + 2467) / 2) >> 8;
    byte_27F3DD4B1 = (v8 + 2467) / 2;
    adjustL1MetaData(SDRMetaData, 0);
    v10 = adjustL2MetaData(SDRMetaData, 0);
    v11 = PacketizeMetadataMSR(SDRMetaData, v10, &metadata->var1);
  }

  metadata->var0 = 1;
  metadata->var1.var0.var0.var1 = 3;
  metadata->var1.var0.var0.var2 = v11;
  v14 = *MEMORY[0x277D85DE8];
}

+ (void)dolbyIOMFBMetadata:(id *)metadata withFilteredMinPQ:(float)q FilteredMaxPQ:(float)pQ FilteredAvgPQ:(float)avgPQ EnableLevel4:(BOOL)level4 FilteredAvg:(float)avg FilteredStdDev:(float)dev
{
  level4Copy = level4;
  v13 = q * 4095.0;
  v14 = -(q * 4095.0);
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  v15 = (v14 + 0.5);
  if (v13 < 0.0)
  {
    v15 = -v15;
  }

  if (v15 >= 0xFFF)
  {
    v16 = 4095;
  }

  else
  {
    v16 = v15;
  }

  v17 = pQ * 4095.0;
  v18 = -(pQ * 4095.0);
  v19 = v17 < 0.0;
  if (v17 < 0.0)
  {
    v17 = v18;
  }

  v20 = (v17 + 0.5);
  if (v19)
  {
    v20 = -v20;
  }

  if (v20 >= 0xFFF)
  {
    v21 = 4095;
  }

  else
  {
    v21 = v20;
  }

  v22 = avgPQ * 4095.0;
  if ((avgPQ * 4095.0) < 0.0)
  {
    v22 = -(avgPQ * 4095.0);
  }

  v23 = (v22 + 0.5);
  if ((avgPQ * 4095.0) < 0.0)
  {
    v23 = -v23;
  }

  if (v23 >= 0xFFF)
  {
    v24 = 4095;
  }

  else
  {
    v24 = v23;
  }

  if (v15 >= 0xC)
  {
    v25 = 12;
  }

  else
  {
    v25 = v15;
  }

  if (v24 <= 0x333)
  {
    v26 = 819;
  }

  else
  {
    v26 = v24;
  }

  if (v21 <= 0x821)
  {
    v27 = 2081;
  }

  else
  {
    v27 = v21;
  }

  if (v26 >= v27 - 1)
  {
    v28 = v27 - 1;
  }

  else
  {
    v28 = v26;
  }

  bzero(metadata, 0x20CuLL);
  dword_27F3DD4A0 = 118242816;
  word_27F3DD4AA = 262;
  byte_27F3DD4AC = 0;
  byte_27F3DD4AD = v25;
  LOBYTE(word_27F3DD4AE) = BYTE1(v27);
  HIBYTE(word_27F3DD4AE) = v27;
  byte_27F3DD4B0 = HIBYTE(v28);
  byte_27F3DD4B1 = v28;
  *&byte_27F3DD4A6 = 2;
  unk_27F3DD4B2 = 100663296;
  byte_27F3DD4B6 = 3;
  byte_27F3DD4B7 = (v16 - v25 + 2048) >> 8;
  byte_27F3DD4B8 = v16 - v25;
  byte_27F3DD4B9 = (v21 - v27 + 2048) >> 8;
  byte_27F3DD4BA = v21 - v27;
  byte_27F3DD4BB = (v24 - v28 + 2048) >> 8;
  byte_27F3DD4BC = v24 - v28;
  if (level4Copy)
  {
    v29 = avg * 4095.0;
    if ((avg * 4095.0) < 0.0)
    {
      v29 = -(avg * 4095.0);
    }

    v30 = (v29 + 0.5);
    if ((avg * 4095.0) < 0.0)
    {
      v30 = -v30;
    }

    if (v30 >= 0xFFF)
    {
      LOWORD(v30) = 4095;
    }

    v31 = dev * 4095.0;
    if ((dev * 4095.0) < 0.0)
    {
      v31 = -(dev * 4095.0);
    }

    byte_27F3DD4A6 = 3;
    byte_27F3DD4C1 = 4;
    if ((dev * 4095.0) >= 0.0)
    {
      v32 = (v31 + 0.5);
    }

    else
    {
      v32 = -(v31 + 0.5);
    }

    unk_27F3DD4BD = 0x4000000;
    if (v32 >= 0xFFF)
    {
      LOWORD(v32) = 4095;
    }

    byte_27F3DD4C2 = BYTE1(v30);
    byte_27F3DD4C3 = v30;
    byte_27F3DD4C4 = BYTE1(v32);
    byte_27F3DD4C5 = v32;
  }

  v33 = adjustL2MetaData(SDRMetaData, 0);
  v34 = PacketizeMetadataMSR(SDRMetaData, v33, &metadata->var1);
  if (GetConfig())
  {
    Config = GetConfig();
    HDRConfig::GetConfigEntryValue(Config, 0x4Au, 0);
  }

  metadata->var0 = 1;
  metadata->var1.var0.var0.var1 = 3;
  metadata->var1.var0.var0.var2 = v34;
}

+ (void)HDR10PlusIOMFBMetadata:(id *)metadata withHDR10PlusData:(id *)data
{
  metadata->var0 = 1;
  *(&metadata->var0 + 1) = data->var0;
  *(&metadata->var1.var0.var0 + 1) = data->var2;
  v4 = *data->var5;
  v5 = *&data->var5[4];
  *(&metadata->var1.var0.var2[7] + 1) = data->var5[8];
  *(&metadata->var1.var0.var2[3] + 1) = v5;
  *(&metadata->var1.var0.var1 + 1) = v4;
  *(&metadata->var1.var0.var2[8] + 1) = *&data->var7;
  v6 = *data->var10;
  *(&metadata->var1.var0.var5[6] + 1) = data->var10[8];
  *(&metadata->var1.var0.var3 + 1) = v6;
  HIBYTE(metadata->var1.var0.var5[7]) = data->var6;
  LOBYTE(metadata->var1.var0.var5[8]) = data->var9;
}

- (void)DumpOutputHcu:(id)hcu
{
  hcuCopy = hcu;

  [hcuCopy bytes];
}

@end