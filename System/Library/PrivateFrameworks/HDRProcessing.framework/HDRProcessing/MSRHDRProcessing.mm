@interface MSRHDRProcessing
+ (void)HDR10PlusIOMFBMetadata:(id *)a3 withHDR10PlusData:(id *)a4;
+ (void)dolbyIOMFBMetadata:(id *)a3 withFilteredMinPQ:(float)a4 FilteredMaxPQ:(float)a5 FilteredAvgPQ:(float)a6 EnableLevel4:(BOOL)a7 FilteredAvg:(float)a8 FilteredStdDev:(float)a9;
+ (void)dolbyIOMFBMetadata:(id *)a3 withMinBrightness:(float)a4 maxBrightness:(float)a5;
- (BOOL)dovi_tm_configChanged:(id *)a3 HDRControl:(id *)a4 DM:(id)a5 LLDoVi:(BOOL)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8 tcCtrl:(ToneCurve_Control *)a9;
- (BOOL)isMMREnabled;
- (BOOL)processFrameByMSRWithComposerData:(id *)a3 DM:(id)a4 constraintDM:(id)a5 DMData:(id *)a6 tcControl:(ToneCurve_Control *)a7 hdrControl:(id *)a8 hdr10InfoFrame:(id *)a9 layer0:(__IOSurface *)a10 layer1:(__IOSurface *)a11 output:(__IOSurface *)a12 frameNumebr:(unint64_t)a13 computedNumber:(unint64_t *)a14 config:(id *)a15;
- (MSRHDRProcessing)init;
- (int)getColorConfigSignatureString:(char *)a3 length:(int)a4 tcControl:(ToneCurve_Control *)a5 hdrControl:(id *)a6;
- (unsigned)getMatrixScale2P:(const float *)a3 OutputScale:(float)a4;
- (unsigned)setLms2RgbScale2P:(const float *)a3 OutputScale:(float)a4;
- (void)DumpOutputHcu:(id)a3;
- (void)attachDoViMetadataPacketTo:(__IOSurface *)a3 withDMData:(id *)a4 withDMConfig:(id *)a5 withHdrControl:(id *)a6 withMSRHDRContext:(MSRHDRContext *)a7;
- (void)attachHDRMetaDataToOutputSurface:(__IOSurface *)a3 withDMData:(id *)a4 withDMConfig:(id *)a5 withHdrControl:(id *)a6 withTcControl:(ToneCurve_Control *)a7 withMSRHDRContext:(MSRHDRContext *)a8 withInfoFrame:(id *)a9;
- (void)attachInfoFrameTo:(__IOSurface *)a3 withDMData:(id *)a4 withTcControl:(ToneCurve_Control *)a5 withInfoFrame:(id *)a6;
- (void)createAdaptationLut;
- (void)createCustomScalingTables;
- (void)dealloc;
- (void)decideStageStatus:(BOOL *)a3 MSRHDRContext:(MSRHDRContext *)a4 DMConfig:(id *)a5;
- (void)dovi_getTmLutInput:(unint64_t)a3 lutInput:(float *)a4;
- (void)dovi_mixLUTFromTCControl:(ToneCurve_Control *)a3 TCControlConstr:(ToneCurve_Control *)a4 withFactor:(float)a5;
- (void)dovi_tm_createLUTFromDMConfig:(id *)a3 HDRControl:(id *)a4 DM:(id)a5 LLDoVi:(BOOL)a6 TMParam:(_DoViTMParam *)a7 EdrAdaptationParam:(_EdrAdaptationParam *)a8 AmbAdaptationParam:(_AmbAdaptationParam *)a9 HlgOOTFCombined:(BOOL)a10 HlgOOTFOnly:(BOOL)a11 IsDoVi84:(BOOL)a12 IsInternalDisplay:(BOOL)a13 tcCtrl:(ToneCurve_Control *)a14;
- (void)dovi_tm_reserveConfig:(id *)a3 HDRControl:(id *)a4 DM:(id)a5 LLDoVi:(BOOL)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8 tcCtrl:(ToneCurve_Control *)a9;
- (void)dovi_tm_updateLUT:(int64_t)a3 ScalingFactorBuffer:(float *)a4 ScalingFactorBufferSize:(unint64_t)a5 Sat2FactorBuffer:(float *)a6 Sat2FactorBufferSize:(unint64_t)a7 dmConfig:(id *)a8 HlgOOTFCombined:(BOOL)a9;
- (void)getDegammaLutInput:(float *)a3;
- (void)getRegammaLutInput:(float *)a3;
- (void)handleDoViToHDR10TV:(id *)a3 TCControl:(ToneCurve_Control *)a4 DMData:(id *)a5;
- (void)hdr10_createLUTFromDMConfig:(id *)a3 DM:(id)a4 TCControl:(ToneCurve_Control *)a5 HDRControl:(id *)a6 TMParam:(_HDR10TMParam *)a7 TMParam:(_HDR10TMParam *)a8 EdrAdaptationParam:(_EdrAdaptationParam *)a9 AmbAdaptationParam:(_AmbAdaptationParam *)a10;
- (void)hdr10_getTmLutInput:(unint64_t)a3 lutInput:(float *)a4;
- (void)hdr10_mixLUTFromTCControl:(ToneCurve_Control *)a3 TCControlConstr:(ToneCurve_Control *)a4 withFactor:(float)a5;
- (void)hdr10_tm_createLUTFromDMConfig:(id *)a3 TMParam:(_HDR10TMParam *)a4 TMParam:(_HDR10TMParam *)a5 TCControl:(ToneCurve_Control *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8 DM:(id)a9;
- (void)hdr10_tm_updateLUT:(int64_t)a3 ScalingFactorBuffer:(float *)a4 LumaMixFactorBuffer:(float *)a5;
- (void)hlg_createLUTFromDMConfig:(id *)a3 DM:(id)a4 HDRControl:(id *)a5 TCControl:(ToneCurve_Control *)a6 TMParam:(_HLGTMParam *)a7 EdrAdaptationParam:(_EdrAdaptationParam *)a8 AmbAdaptationParam:(_AmbAdaptationParam *)a9 TMMode:(int)a10;
- (void)hlg_getTmLutInput:(unint64_t)a3 lutInput:(float *)a4;
- (void)hlg_mixLUTFromTCControl:(ToneCurve_Control *)a3 TCControlConstr:(ToneCurve_Control *)a4 withFactor:(float)a5;
- (void)hlg_tm_createLUTFromDMConfig:(id *)a3 DM:(id)a4 TCControl:(ToneCurve_Control *)a5 TMParam:(_HLGTMParam *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8 TMMode:(int)a9;
- (void)hlg_tm_reserveConfig:(id *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 TMParam:(_HLGTMParam *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8;
- (void)hlg_tm_updateLUT:(int64_t)a3 ScalingFactorBuffer:(float *)a4;
- (void)initDMConfigCache;
- (void)populateMSRColorConfig:(id *)a3 DMConfig:(id *)a4 DMData:(id *)a5 tcControl:(ToneCurve_Control *)a6 hdrControl:(id *)a7 MSRHDRContext:(MSRHDRContext *)a8;
- (void)populateMSRColorConfigHeader:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB01_01:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB01_02:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB01_03:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB01_04:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB01_05:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB01_06:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB02:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB02HDR10:(id *)a3 DMConfig:(id *)a4;
- (void)populateMSRColorConfigStageB02HLG:(id *)a3 hdrControl:(id *)a4;
- (void)populateMSRColorConfigStageB04_01:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB04_02:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB04_03:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)populateMSRColorConfigStageB04_05:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10;
- (void)runPostFrameDumpActions:(id *)a3;
- (void)setDegammaBuffer:(int64_t)a3 Buffer:(float *)a4 TableSize:(unint64_t)a5 LutInput:(float *)a6 Type:(int)a7 scalerForSrgbBeyondMax:(float)a8 InputScale:(float)a9 OutputScale:(float)a10;
- (void)setRegammaBuffer:(int64_t)a3 LutInput:(float *)a4 Buffer:(float *)a5 TableSize:(unint64_t)a6 Type:(int)a7 DPCParam:(_DpcParam *)a8;
- (void)setupMSRHDRContext:(id *)a3 TCControl:(ToneCurve_Control *)a4 DMData:(id *)a5 input:(__IOSurface *)a6 output:(__IOSurface *)a7;
- (void)setupMSRMappingTableWithMetadata:(id *)a3;
- (void)setupMSRPolynomialTableForHDR10;
- (void)setupMSRPolynomialTableForHDR10:(unsigned __int16 *)a3 TableLength:(unsigned int)a4;
- (void)updateDegammaLUT:(MSRHDRContext *)a3 AdditionalScaler:(float)a4 tcControl:(ToneCurve_Control *)a5;
- (void)updateDegammaTable:(int64_t)a3 Table:(float *)a4 TableSize:(unint64_t)a5 Type:(int)a6 Scaler:(float)a7;
- (void)updateLUTFromDMConfig:(id *)a3 TCControl:(ToneCurve_Control *)a4 HDRControl:(id *)a5;
- (void)updatePolynomialTables:(unsigned __int16 *)a3 TableSize:(unint64_t)a4;
- (void)updateRegammaLUT:(MSRHDRContext *)a3;
- (void)updateRegammaTable:(int64_t)a3 Table:(float *)a4 TableSize:(unint64_t)a5;
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
      v12 = "[MSRHDRProcessing dealloc]";
      v13 = 2048;
      v14 = self;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx -- %s: MSR exit! instance=%p\n", buf, 0x20u);
    }

    prevLogInstanceID = v6;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[MSRHDRProcessing dealloc]";
    v11 = 2048;
    v12 = self;
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
  v3 = [(MSRHDRProcessing *)self getHorizontalScalingTableTapNumber];
  v4 = [(MSRHDRProcessing *)self getVerticalScalingTableTapNumber];
  v5 = [(MSRHDRProcessing *)self getHorizontalScalingTablePhaseNumber];
  v6 = [(MSRHDRProcessing *)self getVerticalScalingTablePhaseNumber];
  if (v3 < 8 || v4 <= 1)
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

  v8 = v4 >> 1;
  v9 = v3 >> 1;
  v10 = v6 >> 1;
  v11 = v5 >> 1;
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

- (void)updateDegammaLUT:(MSRHDRContext *)a3 AdditionalScaler:(float)a4 tcControl:(ToneCurve_Control *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  inputTransferFunction = a3->inputTransferFunction;
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

  inputColorSpace = a3->inputColorSpace;
  if (!inputColorSpace)
  {
    if (a3->processingType == 5)
    {
      v19 = isSupportedMSRColorConversion(a3->inputFormat, a3->outputFormat);
      goto LABEL_18;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  if (inputColorSpace != 1 || a3->processingType != 5)
  {
    goto LABEL_17;
  }

  inputFormat = a3->inputFormat;
  v19 = isSupportedMSRColorConversion(inputFormat, a3->outputFormat);
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
    if (a3->processingType == 1)
    {
      v22 = a4 * 0.0001;
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
    inputSurfaceEDR = a5->inputSurfaceEDR;
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
  if (GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x37u, 0) & 1) != 0) || self->_degamma.type != v13 || inputTransferFunction == 13 && self->_max_fp16 != self->super._prev.degamma.max_fp16 || self->super._prev.degamma.additional_scaler != a4 || max_fp16 != self->super._prev.degamma.inputScale || inputSurfaceEDR != self->super._prev.degamma.outputScale || a3->processingType != self->super._prev.processingType)
  {
    v28 = [(MSRHDRProcessing *)self getDegammaLutSize];
    v29 = malloc_type_malloc(4 * v28, 0x100004052888210uLL);
    if (v29)
    {
      v30 = v29;
      if (inputTransferFunction == 13)
      {
        self->super._prev.degamma.max_fp16 = self->_max_fp16;
      }

      self->_degamma.type = v13;
      self->super._prev.degamma.additional_scaler = a4;
      self->super._prev.processingType = a3->processingType;
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
        [(MSRHDRProcessing *)self setDegammaBuffer:2 Buffer:v30 TableSize:v28 LutInput:v32 Type:v13 scalerForSrgbBeyondMax:v33 InputScale:v34 OutputScale:v35];
        *&v36 = v22;
        [(MSRHDRProcessing *)self updateDegammaTable:2 Table:v30 TableSize:v28 Type:v13 Scaler:v36];
        free(v32);
      }

      free(v30);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)getDegammaLutInput:(float *)a3
{
  v3 = 0;
  v4 = xmmword_2508CD900;
  v5 = xmmword_2508CD910;
  v6 = a3 + 2;
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
  a3[513] = 1.125;
}

- (void)setDegammaBuffer:(int64_t)a3 Buffer:(float *)a4 TableSize:(unint64_t)a5 LutInput:(float *)a6 Type:(int)a7 scalerForSrgbBeyondMax:(float)a8 InputScale:(float)a9 OutputScale:(float)a10
{
  if (a3 != 2)
  {
    return;
  }

  v10 = a6;
  v11 = a5;
  v12 = a4;
  if (a7 <= 2)
  {
    if (a7 != 1)
    {
      if (a7 == 2 && a5)
      {
        do
        {
          v13 = *v10++;
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
          --v11;
        }

        while (v11);
      }

      return;
    }

    if (!a5)
    {
      return;
    }

    v23 = 0;
    v24 = 100.0 / a8;
    while (1)
    {
      v25 = v10[v23];
      if (v25 < 1.0)
      {
        break;
      }

      v26 = v24;
      if (a9 == 1.0)
      {
        goto LABEL_23;
      }

LABEL_27:
      v12[v23++] = v26;
      if (v11 <= v23)
      {
        return;
      }
    }

    v25 = v25 * a9;
LABEL_23:
    if (v25 >= 0.03928)
    {
      v27 = powf((v25 * 0.94787) + 0.052133, 2.4);
    }

    else
    {
      v27 = v25 * 0.077399;
    }

    v26 = v27 * a10;
    goto LABEL_27;
  }

  if (a7 == 4)
  {

    memcpy(a4, a6, 4 * a5);
  }

  else if (a7 == 3 && a5)
  {
    do
    {
      v19 = fminf(*v10, 1.125);
      if (v19 <= 0.5)
      {
        v20 = (v19 * v19) / 3.0;
      }

      else
      {
        v20 = (exp((v19 + -0.55991073) / 0.17883277) + 0.28466892) / 12.0;
      }

      *v12++ = v20;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

- (void)updateDegammaTable:(int64_t)a3 Table:(float *)a4 TableSize:(unint64_t)a5 Type:(int)a6 Scaler:(float)a7
{
  if (a3 == 2)
  {
    if (self->_msrPlatform == 1869769064)
    {
      if (a5)
      {
        p_degamma = &self->_degamma;
        do
        {
          p_degamma->var0.degmmaC.lutForCModel[0] = *a4 * a7;
          p_degamma = (p_degamma + 4);
          v8 = *a4++;
          p_degamma->var0.degmmaS.lutForCModel[1280] = v8 * a7;
          --a5;
        }

        while (a5);
      }
    }

    else if (a5)
    {
      v9 = 0;
      v10 = &self->_degamma.var0.degmmaS.lutForCModel[514];
      do
      {
        self->_degamma.var0.degmmaC.lutForCModel[v9] = a4[v9] * a7;
        v11 = v10;
        v12 = 3;
        do
        {
          v13 = a4[v9] * a7;
          v14 = -v13;
          if (v13 >= 0.0)
          {
            v14 = a4[v9] * a7;
          }

          *v11 = ((v14 * 16777000.0) + 0.5) & 0x7FFFFFFF | ((v13 < 0.0) << 31);
          v11 += 514;
          --v12;
        }

        while (v12);
        ++v9;
        ++v10;
      }

      while (v9 != a5);
    }
  }
}

- (void)getRegammaLutInput:(float *)a3
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
      a3[v11++] = vcvts_n_f32_u32(v10 & 0x7FFFFFF8, 0x1EuLL);
      v10 += v9;
      --v12;
    }

    while (v12);
    v5 += v7;
    v4 += v6;
    v6 <<= v3++ != 0;
  }

  while (v3 != 21);
  *(a3 + 352) = 0x3F9000003F800000;
}

- (void)updateRegammaLUT:(MSRHDRContext *)a3
{
  p_regamma = &self->_regamma;
  p_dpcParam = &self->_regamma.dpcParam;
  outputTransferFunction = a3->outputTransferFunction;
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

    if (a3->dpcParam.on)
    {
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }
  }

  if (GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x37u, 0) & 1) != 0) || p_regamma->type != v8 || (*&p_dpcParam->alpha == *&a3->dpcParam.alpha ? (v11 = *&p_dpcParam->rangeMax == *&a3->dpcParam.rangeMax) : (v11 = 0), v11 ? (v12 = *&p_dpcParam->on == *&a3->dpcParam.on) : (v12 = 0), v12 ? (v13 = *&p_dpcParam->gcpcStage == *&a3->dpcParam.gcpcStage) : (v13 = 0), !v13))
  {
    v14 = [(MSRHDRProcessing *)self getRegammaLutSize];
    v15 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
    v16 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
    v17 = v16;
    if (v15 && v16)
    {
      p_regamma->type = v8;
      v18 = *&a3->dpcParam.on;
      *&p_dpcParam->alpha = *&a3->dpcParam.alpha;
      *&p_dpcParam->on = v18;
      [(MSRHDRProcessing *)self getRegammaLutInput:v16];
      [(MSRHDRProcessing *)self setRegammaBuffer:11 LutInput:v17 Buffer:v15 TableSize:v14 Type:v8 DPCParam:&a3->dpcParam];
      [(MSRHDRProcessing *)self updateRegammaTable:11 Table:v15 TableSize:v14];
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

- (void)setRegammaBuffer:(int64_t)a3 LutInput:(float *)a4 Buffer:(float *)a5 TableSize:(unint64_t)a6 Type:(int)a7 DPCParam:(_DpcParam *)a8
{
  if (a3 != 4 && a6)
  {
    v13 = 0;
    while (1)
    {
      if (a7 == 1)
      {
        applyDPCompensationS(&self->super._anon_90[448], a4[v13]);
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

      if (a7 == 3)
      {
        break;
      }

      if (a7 == 2)
      {
        applyDPCompensationS(&self->super._anon_90[448], a4[v13]);
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
      if (a6 <= ++v13)
      {
        return;
      }
    }

    applyDPCompensationS(&self->super._anon_90[448], a4[v13]);
LABEL_15:
    a5[v13] = v17;
    goto LABEL_16;
  }
}

- (void)updateRegammaTable:(int64_t)a3 Table:(float *)a4 TableSize:(unint64_t)a5
{
  if (a3 != 4)
  {
    [(MSRHDRProcessing *)self getRegammaLutSize];
    if (a5)
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
        --a5;
      }

      while (a5);
    }
  }
}

- (void)handleDoViToHDR10TV:(id *)a3 TCControl:(ToneCurve_Control *)a4 DMData:(id *)a5
{
  if (a3->var0 == 1)
  {
    var16 = a5->var16;
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

    if (a3->var17 != 16)
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  if (a3->var3 == 3 && a3->var10 == 2 && a4->targetMaxLinear == 1000.0)
  {
    self->_msrHC.operation = v7;
  }
}

- (void)setupMSRHDRContext:(id *)a3 TCControl:(ToneCurve_Control *)a4 DMData:(id *)a5 input:(__IOSurface *)a6 output:(__IOSurface *)a7
{
  v30 = *MEMORY[0x277D85DE8];
  p_msrHC = &self->_msrHC;
  self->_msrHC.contentType = a3->var0;
  self->_msrHC.displayType = a3->var10;
  self->_msrHC.processingType = a4->tmData.processingType;
  *&self->_msrHC.operation = *&a3->var3;
  self->_msrHC.convertType = a3->var5;
  self->_msrHC.inputFormatRaw = IOSurfaceGetPixelFormat(a6);
  p_msrHC->outputFormatRaw = IOSurfaceGetPixelFormat(a7);
  p_msrHC->inputFormat = getFourCCforType(p_msrHC->inputFormatRaw);
  p_msrHC->outputFormat = getFourCCforType(p_msrHC->outputFormatRaw);
  v14 = *&a3->var17;
  *&v15 = vext_s8(v14, *&a4->targetColorSpace, 4uLL);
  v14.i32[1] = HIDWORD(*&a4->targetColorSpace);
  *(&v15 + 1) = v14;
  *&p_msrHC->inputColorSpace = v15;
  p_msrHC->originalInputTransferFunction = a3->var28;
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
  [(MSRHDRProcessing *)self handleDoViToHDR10TV:a3 TCControl:a4 DMData:a5];
  displayType = p_msrHC->displayType;
  if (displayType == 6 || displayType == 1)
  {
    chromVectorWeight = 1077936128;
  }

  p_msrHC->inputWidth = IOSurfaceGetWidth(a6);
  p_msrHC->inputHeight = IOSurfaceGetHeight(a6);
  p_msrHC->outputWidth = IOSurfaceGetWidth(a7);
  p_msrHC->outputHeight = IOSurfaceGetHeight(a7);
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

- (BOOL)processFrameByMSRWithComposerData:(id *)a3 DM:(id)a4 constraintDM:(id)a5 DMData:(id *)a6 tcControl:(ToneCurve_Control *)a7 hdrControl:(id *)a8 hdr10InfoFrame:(id *)a9 layer0:(__IOSurface *)a10 layer1:(__IOSurface *)a11 output:(__IOSurface *)a12 frameNumebr:(unint64_t)a13 computedNumber:(unint64_t *)a14 config:(id *)a15
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = a4;
  v32 = a5;
  v21 = [(MSRColorConfigMemoryPool *)self->_msrCUPool getAlloc];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 mutableBytes];
    self->_msrCU = v23;
    bzero(v23, 0xBD10uLL);
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
    self->super._frameNumber = a13;
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
    [(ProcessingEngine *)self setupToneMappingWithDmData:a6 tcControl:a7 hdrControl:a8 dmConfig:self->super._anon_90 DM:v31 constraintDM:v32 hdr10InfoFrame:a9];
    [(MSRHDRProcessing *)self setupMSRColorConfig];
    [(MSRHDRProcessing *)self setupMSRHDRContext:a8 TCControl:a7 DMData:a6 input:a10 output:a12];
    if (p_msrHC->contentType - 2 < 2 || p_msrHC->contentType == 1 && self->_msrHC.originalInputTransferFunction == 18)
    {
      [(MSRHDRProcessing *)self setupMSRPolynomialTableForHDR10];
    }

    else
    {
      [(MSRHDRProcessing *)self setupMSRMappingTableWithMetadata:a3];
    }

    [(MSRHDRProcessing *)self runPreFrameDumpActions:&self->_msrHC tcControl:a7 hdrControl:a8];
    [(MSRHDRProcessing *)self populateMSRColorConfig:&self->_msrCC DMConfig:self->super._anon_90 DMData:a6 tcControl:a7 hdrControl:a8 MSRHDRContext:&self->_msrHC];
    [(MSRHDRProcessing *)self attachHDRMetaDataToOutputSurface:a12 withDMData:a6 withDMConfig:self->super._anon_90 withHdrControl:a8 withTcControl:a7 withMSRHDRContext:&self->_msrHC withInfoFrame:a9];
    memcpy(&msrCU->var2, &self->_msrCC, sizeof(msrCU->var2));
    *a14 = self->_computedFrames;
    [(MSRHDRProcessing *)self runPostFrameDumpActions:&self->_msrCC];
    *a15 = [(MSRColorConfigMemoryPool *)self->_msrCUPool generateColorConfig:v22 msrCU:self->_msrCU];
    if (GetConfig())
    {
      v27 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v27, 0x13u, 0))
      {
        [(MSRHDRProcessing *)self DumpOutputHcu:*a15];
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

- (void)setupMSRPolynomialTableForHDR10:(unsigned __int16 *)a3 TableLength:(unsigned int)a4
{
  v6 = [(MSRHDRProcessing *)self polynomialTableScale];
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(a4 - 1);
  v10 = vdupq_n_s64(8uLL);
  do
  {
    if (a4)
    {
      v11 = 0;
      v12 = (a4 + 7) & 0x1FFFFFFF8;
      v13 = xmmword_2508CD910;
      v14 = xmmword_2508CD900;
      v15 = xmmword_2508CD940;
      v16 = xmmword_2508CD930;
      v17 = &a3[v7 + 4];
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v9, v13));
        if (vuzp1_s8(vuzp1_s16(v18, *v9.i8), *v9.i8).u8[0])
        {
          *(v17 - 4) = v11;
        }

        if (vuzp1_s8(vuzp1_s16(v18, *&v9), *&v9).i8[1])
        {
          *(v17 - 3) = v6 + v11;
        }

        if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v14))), *&v9).i8[2])
        {
          *(v17 - 2) = 2 * v6 + v11;
          *(v17 - 1) = 3 * v6 + v11;
        }

        v19 = vmovn_s64(vcgeq_u64(v9, v15));
        if (vuzp1_s8(*&v9, vuzp1_s16(v19, *&v9)).i32[1])
        {
          *v17 = 4 * v6 + v11;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(v19, *&v9)).i8[5])
        {
          v17[1] = 5 * v6 + v11;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v16)))).i8[6])
        {
          v17[2] = 6 * v6 + v11;
          v17[3] = 7 * v6 + v11;
        }

        v15 = vaddq_s64(v15, v10);
        v14 = vaddq_s64(v14, v10);
        v13 = vaddq_s64(v13, v10);
        v11 += 8 * v6;
        v17 += 8;
        v16 = vaddq_s64(v16, v10);
        v12 -= 8;
      }

      while (v12);
    }

    ++v8;
    v7 += a4;
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

- (void)setupMSRMappingTableWithMetadata:(id *)a3
{
  v5 = a3->var0 + 8;
  v6 = malloc_type_malloc(6 << (LOBYTE(a3->var0) + 8), 0x1000040BDFB0063uLL);
  v7 = 0;
  v8 = a3->var0 + 8;
  do
  {
    createPolynomialTableForComponent(a3, v7, v6 + 2 * (v7 << v8));
    ++v7;
  }

  while (v7 != 3);
  [(MSRHDRProcessing *)self updatePolynomialTables:v6 TableSize:(1 << v5)];

  free(v6);
}

- (void)updatePolynomialTables:(unsigned __int16 *)a3 TableSize:(unint64_t)a4
{
  v4 = 0;
  self->_reshapeLUTCreated = 1;
  self->_reshapeLUTSize = a4;
  do
  {
    if (a4)
    {
      reshapeLUT = self->_reshapeLUT;
      v6 = a3;
      v7 = a4;
      do
      {
        v8 = *v6++;
        *reshapeLUT = v8;
        reshapeLUT = (reshapeLUT + 2);
        --v7;
      }

      while (v7);
    }

    ++v4;
    self = (self + 2048);
    a3 += a4;
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

- (void)hdr10_createLUTFromDMConfig:(id *)a3 DM:(id)a4 TCControl:(ToneCurve_Control *)a5 HDRControl:(id *)a6 TMParam:(_HDR10TMParam *)a7 TMParam:(_HDR10TMParam *)a8 EdrAdaptationParam:(_EdrAdaptationParam *)a9 AmbAdaptationParam:(_AmbAdaptationParam *)a10
{
  v16 = a4;
  if ([(ProcessingEngine *)self hdr10_tm_configChanged:a7 HDRControl:a6 TCControl:a5 EdrAdaptationParam:a9 AmbAdaptationParam:a10])
  {
    [(MSRHDRProcessing *)self hdr10_tm_createLUTFromDMConfig:a3 TMParam:a7 TMParam:a8 TCControl:a5 EdrAdaptationParam:a9 AmbAdaptationParam:a10 DM:v16];
    [(ProcessingEngine *)self hdr10_tm_reserveConfig:a7 HDRControl:a6 TCControl:a5 EdrAdaptationParam:a9 AmbAdaptationParam:a10];
    ++self->_computedFrames;
  }
}

- (void)hdr10_getTmLutInput:(unint64_t)a3 lutInput:(float *)a4
{
  if (a3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      if (!v4)
      {
        v5 = 0.25;
      }

      a4[v4++] = v5 / (a3 - 1);
    }

    while (a3 > v4);
  }
}

- (void)dovi_getTmLutInput:(unint64_t)a3 lutInput:(float *)a4
{
  if (a3)
  {
    v4 = 0;
    do
    {
      a4[v4] = v4 / (a3 - 1);
      ++v4;
    }

    while (a3 > v4);
  }
}

- (void)hdr10_tm_createLUTFromDMConfig:(id *)a3 TMParam:(_HDR10TMParam *)a4 TMParam:(_HDR10TMParam *)a5 TCControl:(ToneCurve_Control *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8 DM:(id)a9
{
  v24 = [a9 getDolbyVisionDM4];
  v16 = [(MSRHDRProcessing *)self getTmLutSize];
  v17 = v16;
  v18 = 10;
  if (a6->tcForHdrConstraint)
  {
    v18 = 9;
  }

  v19 = OBJC_IVAR___MSRHDRProcessing__dump[v18];
  v20 = 12;
  if (a6->tcForHdrConstraint)
  {
    v20 = 11;
  }

  v21 = OBJC_IVAR___MSRHDRProcessing__dump[v20];
  v22 = malloc_type_calloc(v16, 4uLL, 0x100004052888210uLL);
  if (v22)
  {
    [(MSRHDRProcessing *)self hdr10_getTmLutInput:v17 lutInput:v22];
    hdr10_setScalingFactorTableS_L_NormIn(self + v19, v22, v17, a4, a5, a7, a8, a3, v24);
    if (a7->RWTMO_v2_on && GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0xB0u, 0) == 1))
    {
      if (v17)
      {
        bzero(self + v21, 4 * v17);
      }
    }

    else
    {
      hdr10_setLumaMixFactorTableS_L_NormIn(self + v21, v22, v17, a4);
    }

    free(v22);
  }
}

- (void)hdr10_mixLUTFromTCControl:(ToneCurve_Control *)a3 TCControlConstr:(ToneCurve_Control *)a4 withFactor:(float)a5
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

  v9 = [(MSRHDRProcessing *)self getTmLutSize];
  if (v9)
  {
    v10 = 1.0 - a5;
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

      *scalingFactorTableBuffer++ = (v10 * v20) + (a5 * v18);
      v22 = *lumaMixFactorTableBufferFull++;
      v23 = v22;
      v24 = *lumaMixFactorTableBufferConstr++;
      *lumaMixFactorTableBuffer++ = (v10 * v23) + (a5 * v24);
      --v9;
    }

    while (v9);
  }
}

- (void)hdr10_tm_updateLUT:(int64_t)a3 ScalingFactorBuffer:(float *)a4 LumaMixFactorBuffer:(float *)a5
{
  if (a3 == 6)
  {
    v5 = 0;
    self->_tmMode = 1;
    self->_tonemappingTableSize = 513;
    do
    {
      v6 = a4[v5];
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
      v9[513] = ((a5[v5++] * 32768.0) + 0.5) & 0x7FFFFFFF;
    }

    while (v5 < self->_tonemappingTableSize);
  }
}

- (void)hlg_getTmLutInput:(unint64_t)a3 lutInput:(float *)a4
{
  if (a3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      if (!v4)
      {
        v5 = 0.15;
      }

      a4[v4++] = v5 / (a3 - 1);
    }

    while (a3 > v4);
  }
}

- (void)hlg_createLUTFromDMConfig:(id *)a3 DM:(id)a4 HDRControl:(id *)a5 TCControl:(ToneCurve_Control *)a6 TMParam:(_HLGTMParam *)a7 EdrAdaptationParam:(_EdrAdaptationParam *)a8 AmbAdaptationParam:(_AmbAdaptationParam *)a9 TMMode:(int)a10
{
  v17 = a4;
  if ([(ProcessingEngine *)self hlg_tm_configChanged:a3 HDRControl:a5 TCControl:a6 TMParam:a7 EdrAdaptationParam:a8 AmbAdaptationParam:a9])
  {
    LODWORD(v16) = a10;
    [(MSRHDRProcessing *)self hlg_tm_createLUTFromDMConfig:a3 DM:v17 TCControl:a6 TMParam:a7 EdrAdaptationParam:a8 AmbAdaptationParam:a9 TMMode:v16];
    [(MSRHDRProcessing *)self hlg_tm_reserveConfig:a3 HDRControl:a5 TCControl:a6 TMParam:a7 EdrAdaptationParam:a8 AmbAdaptationParam:a9];
    ++self->_computedFrames;
  }
}

- (void)hlg_tm_reserveConfig:(id *)a3 HDRControl:(id *)a4 TCControl:(ToneCurve_Control *)a5 TMParam:(_HLGTMParam *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8
{
  v8 = &OBJC_IVAR___ProcessingEngine__prev;
  if (a5->tcForHdrConstraint)
  {
    v8 = &OBJC_IVAR___ProcessingEngine__prevConstr;
  }

  v9 = self + *v8;
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

- (void)hlg_tm_createLUTFromDMConfig:(id *)a3 DM:(id)a4 TCControl:(ToneCurve_Control *)a5 TMParam:(_HLGTMParam *)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8 TMMode:(int)a9
{
  v19 = [a4 getDolbyVisionDM4];
  v15 = 10;
  if (a5->tcForHdrConstraint)
  {
    v15 = 9;
  }

  v16 = OBJC_IVAR___MSRHDRProcessing__dump[v15];
  v17 = [(MSRHDRProcessing *)self getTmLutSize];
  v18 = malloc_type_calloc(v17, 4uLL, 0x100004052888210uLL);
  if (v18)
  {
    [(MSRHDRProcessing *)self hlg_getTmLutInput:v17 lutInput:v18];
    hlg_setScalingFactorTable(self + v16, v18, v17, a3, a6, a7, a8, a9, v19);
    free(v18);
  }
}

- (void)hlg_mixLUTFromTCControl:(ToneCurve_Control *)a3 TCControlConstr:(ToneCurve_Control *)a4 withFactor:(float)a5
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

  v11 = [(MSRHDRProcessing *)self getTmLutSize];
  if (v11)
  {
    v12 = 1.0 - a5;
    do
    {
      v13 = self->_scalingFactorTableBufferConstr[0];
      if (v10)
      {
        v14 = a4->targetMaxLinear * v13 / a3->targetMaxLinear;
        v15 = self->_scalingFactorTableBufferFull[0];
        if (v14 >= v15)
        {
          v14 = v15;
        }

        v16 = (v12 * v15) + a5 * v14;
      }

      else
      {
        v16 = a4->targetMaxLinear * (v13 * a5) / a3->targetMaxLinear + (v12 * self->_scalingFactorTableBufferFull[0]);
      }

      v17 = v16;
      self->_scalingFactorTableBuffer[0] = v17;
      self = (self + 4);
      --v11;
    }

    while (v11);
  }
}

- (void)hlg_tm_updateLUT:(int64_t)a3 ScalingFactorBuffer:(float *)a4
{
  if (a3 == 6)
  {
    v4 = 0;
    self->_tmMode = 1;
    self->_tonemappingTableSize = 513;
    do
    {
      v5 = a4[v4];
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

- (BOOL)dovi_tm_configChanged:(id *)a3 HDRControl:(id *)a4 DM:(id)a5 LLDoVi:(BOOL)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8 tcCtrl:(ToneCurve_Control *)a9
{
  v15 = a5;
  if (GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x39u, 0) & 1) != 0) || (!a9->tcForHdrConstraint ? (v17 = &OBJC_IVAR___ProcessingEngine__prev) : (v17 = &OBJC_IVAR___ProcessingEngine__prevConstr), (v18 = (self + *v17), a4->var0 != *v18) || [(MSRHDRProcessing *)self hasAMVEConfigChanged:v18 + 487 tcCtrl:a9]))
  {
    v19 = 1;
  }

  else if (LODWORD(a3[1].var46) == 4)
  {
    v21 = [v15 getDolbyVisionDM4];
    v19 = [v21 hasDM4TonemapConfigChanged:a3 TonemapConfig:v18 + 6 TCControl:a9 EdrAdaptationParam:a7 AmbAdaptationParam:a8];
  }

  else
  {
    v19 = hasDoviTonemapConfigChanged((v18 + 6), a3, a9, a6, a7, a8);
  }

  return v19;
}

- (void)dovi_tm_reserveConfig:(id *)a3 HDRControl:(id *)a4 DM:(id)a5 LLDoVi:(BOOL)a6 EdrAdaptationParam:(_EdrAdaptationParam *)a7 AmbAdaptationParam:(_AmbAdaptationParam *)a8 tcCtrl:(ToneCurve_Control *)a9
{
  v18 = a5;
  if (a9->tcForHdrConstraint)
  {
    v15 = &OBJC_IVAR___ProcessingEngine__prevConstr;
  }

  else
  {
    v15 = &OBJC_IVAR___ProcessingEngine__prev;
  }

  v16 = (self + *v15);
  *v16 = a4->var0;
  [(MSRHDRProcessing *)self updateAMVEConfig:v16 + 487 tcCtrl:a9];
  if (LODWORD(a3[1].var46) == 4)
  {
    v17 = [v18 getDolbyVisionDM4];
    [v17 updateDM4TonemapConfig:v16 + 6 DMConfig:a3 TCControl:a9 EdrAdaptationParam:a7 AmbAdaptationParam:a8];
  }

  else
  {
    updateDoViTonemapConfig((v16 + 6), a3, a9, a6, &a7->on, a8);
  }
}

- (void)dovi_tm_createLUTFromDMConfig:(id *)a3 HDRControl:(id *)a4 DM:(id)a5 LLDoVi:(BOOL)a6 TMParam:(_DoViTMParam *)a7 EdrAdaptationParam:(_EdrAdaptationParam *)a8 AmbAdaptationParam:(_AmbAdaptationParam *)a9 HlgOOTFCombined:(BOOL)a10 HlgOOTFOnly:(BOOL)a11 IsDoVi84:(BOOL)a12 IsInternalDisplay:(BOOL)a13 tcCtrl:(ToneCurve_Control *)a14
{
  v24 = a6;
  v28 = a5;
  v16 = 10;
  if (a14->tcForHdrConstraint)
  {
    v16 = 9;
  }

  v17 = OBJC_IVAR___MSRHDRProcessing__dump[v16];
  v18 = 19;
  if (a14->tcForHdrConstraint)
  {
    v18 = 18;
  }

  v19 = OBJC_IVAR___MSRHDRProcessing__dump[v18];
  if (a11)
  {
    v20 = [(MSRHDRProcessing *)self getTmLutSize];
  }

  else
  {
    v20 = 513;
  }

  v21 = malloc_type_calloc(v20, 4uLL, 0x100004052888210uLL);
  if (v21)
  {
    if (a11)
    {
      [(MSRHDRProcessing *)self dovi_ootf_getTmLutInput:v20 lutInput:v21];
    }

    else
    {
      [(MSRHDRProcessing *)self dovi_getTmLutInput:v20 lutInput:v21];
    }

    BYTE2(v23) = a12;
    LOWORD(v23) = __PAIR16__(a11, a10);
    [v28 dovi_setScalingFactorTable:self + v17 lutInput:v21 tableSize:v20 config:a3 hdrCtrl:a4 tmParam:a7 edrAdaptationParam:a8 ambAdaptationParam:a9 hlgOOTFCombined:v23 hlgOOTFOnly:a14 isDoVi84:? tcCtrl:?];
    v22 = self + v19;
    [v28 dovi_setSat2FactorTable:v22 tableSize:512 config:a3 llDovi:v24 applyDoVi84SatAdjustment:(a12 && a13) & a10];
    *(v22 + 512) = *(v22 + 511);
    free(v21);
  }
}

- (void)dovi_mixLUTFromTCControl:(ToneCurve_Control *)a3 TCControlConstr:(ToneCurve_Control *)a4 withFactor:(float)a5
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

  v9 = 1.0 - a5;
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

    self->_sat2FactorTableBuffer[v11] = (v9 * v13) + (a5 * v12);
    self->_lumaMixFactorTableBuffer[v11] = (v9 * self->_lumaMixFactorTableBufferFull[v11]) + (a5 * self->_lumaMixFactorTableBufferConstr[v11]);
    ++v11;
  }

  while (v11 * 4);
}

- (void)dovi_tm_updateLUT:(int64_t)a3 ScalingFactorBuffer:(float *)a4 ScalingFactorBufferSize:(unint64_t)a5 Sat2FactorBuffer:(float *)a6 Sat2FactorBufferSize:(unint64_t)a7 dmConfig:(id *)a8 HlgOOTFCombined:(BOOL)a9
{
  if (a3 == 6)
  {
    self->_tonemappingTableSize = a5;
    if ((LOBYTE(a8[1].var47) & 0x80) == 0 || (debugDM4DisableConf & 0x80) != 0)
    {
      self->_tmMode = 0;
      if (LODWORD(a8[1].var46) == 4)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (a5)
      {
        v13 = 0;
        v14 = 1.0 / (a5 - 1);
        p_tonemapLUT = &self->_tonemapLUT;
        v16 = a6 + 1;
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

          v18 = *a4 * v17;
          v19 = -v18;
          if (v18 >= 0.0)
          {
            v19 = *a4 * v17;
          }

          p_tonemapLUT->lut[0][0] = ((v19 * 16777000.0) + 0.5) & 0x7FFFFFFF | ((v18 < 0.0) << 31);
          if (LOBYTE(a8[1].var51) == 1)
          {
            v20 = a4[513];
          }

          else
          {
            v21 = *a4;
            v20 = getMesopicCrushForDM3(a8, v17 * *a4) * (((v21 + -1.0) * v17) + 1.0);
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
          v26 = v25 * a8->var55.gcpcRefWhiteNits;
          v27 = -v26;
          if (v26 >= 0.0)
          {
            v27 = v26;
          }

          p_tonemapLUT->lut[3][0] = ((v27 * 16777000.0) + 0.5) & 0x7FFFFFFF | ((v26 < 0.0) << 31);
          ++v13;
          ++a4;
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

- (void)updateLUTFromDMConfig:(id *)a3 TCControl:(ToneCurve_Control *)a4 HDRControl:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  processingType = a4->tmData.processingType;
  switch(processingType)
  {
    case 5:
      if (a5->var17 != 18)
      {
LABEL_36:
        v13 = *MEMORY[0x277D85DE8];
        return;
      }

      if (a4->targetTransferFunction == 18)
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
          if (a5->var17 == 18)
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
      [(MSRHDRProcessing *)self dovi_tm_updateLUT:6 ScalingFactorBuffer:self->_scalingFactorTableBuffer ScalingFactorBufferSize:513 Sat2FactorBuffer:self->_sat2FactorTableBuffer Sat2FactorBufferSize:513 dmConfig:a3 HlgOOTFCombined:v14];
      goto LABEL_36;
  }

  v9 = *MEMORY[0x277D85DE8];

  [(MSRHDRProcessing *)self hlg_tm_updateLUT:6 ScalingFactorBuffer:self->_scalingFactorTableBuffer];
}

- (unsigned)setLms2RgbScale2P:(const float *)a3 OutputScale:(float)a4
{
  v4 = (fabsf(*a3) + fabsf(a3[1])) + fabsf(a3[2]);
  v5 = (fabsf(a3[3]) + fabsf(a3[4])) + fabsf(a3[5]);
  v6 = (fabsf(a3[6]) + fabsf(a3[7])) + fabsf(a3[8]);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  v7 = log2f(32768.0 / (v4 * a4));
  if (v7 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v7;
  }
}

- (unsigned)getMatrixScale2P:(const float *)a3 OutputScale:(float)a4
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = fabsf(a3[v4]);
    if (v5 < v6)
    {
      v5 = v6;
    }

    ++v4;
  }

  while (v4 != 9);
  v7 = log2f(32768.0 / (v5 * a4));
  if (v7 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v7;
  }
}

- (void)decideStageStatus:(BOOL *)a3 MSRHDRContext:(MSRHDRContext *)a4 DMConfig:(id *)a5
{
  v81 = *MEMORY[0x277D85DE8];
  *&a4->enableReshaping = 0;
  operation = a4->operation;
  if (operation == 1)
  {
    inputFormat = a4->inputFormat;
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
          if (a4->inputTransferFunction == 16)
          {
            outputFormat = a4->outputFormat;
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

            if (a4->outputTransferFunction == 16)
            {
              v12 = 1;
LABEL_62:
              a4->enableReshaping = v12;
              goto LABEL_67;
            }
          }

LABEL_63:
          v25 = 0;
          a4->enableToneMapping = 1;
          if (inputFormat != 1380411457 && inputFormat != 1919365992)
          {
            v25 = getBitDepthFromSurfaceFormat(inputFormat) < 0x10;
          }

          a4->enableReshaping = v25;
          a4->operation = 3;
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
    a4->enableToneMapping = 1;
    goto LABEL_67;
  }

  if ((operation & 4) != 0)
  {
    a4->enableReshaping = isFormatYUV(a4->inputFormat);
    a4->operation = 4;
    a4->enableConverting = 1;
    goto LABEL_67;
  }

  if (operation == 3)
  {
    v12 = 0;
    a4->enableToneMapping = 1;
    v13 = a4->inputFormat;
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
      v19 = a4->operation;
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
      v22 = a4->operation;
      v77 = 67109120;
      LODWORD(v78) = v22;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     ERROR: Not supported operation %d !!!", &v77, 8u);
    }
  }

LABEL_67:
  outputTransferFunction = a4->outputTransferFunction;
  v27 = outputTransferFunction - 1 < 0x12 && ((0x29001u >> (outputTransferFunction - 1)) & 1) != 0 || outputTransferFunction == 8 && a4->dpcParam.on;
  v28 = a4->outputFormat;
  v30 = v28 != 1919365992 && v28 != 1380411457;
  v31 = a4->operation;
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
      contentType = a4->contentType;
      if (a4->contentType != 3)
      {
        if (contentType == 2)
        {
          displayType = a4->displayType;
          if (displayType > 7 || displayType == 5)
          {
            goto LABEL_201;
          }

          processingType = a4->processingType;
          *a3 = 1;
          a3[1] = isFormatYUV(a4->inputFormat);
          if (processingType != 1)
          {
            a3[6] = 1;
            *(a3 + 2) = 16843009;
            goto LABEL_200;
          }

          *(a3 + 2) = 0x100000101;
          a3[10] = 1;
        }

        else if (contentType == 1)
        {
          inputColorSpace = a4->inputColorSpace;
          if (inputColorSpace)
          {
            if (inputColorSpace != 2)
            {
              goto LABEL_201;
            }

            v44 = a4->displayType;
            if (v44 > 7 || v44 == 5)
            {
              goto LABEL_201;
            }

            var46 = a5[1].var46;
            if (SLODWORD(var46) <= 3)
            {
              *a3 = 257;
              *(a3 + 2) = 0;
              *(a3 + 6) = 16842753;
LABEL_168:
              a3[10] = 1;
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

            *(a3 + 3) = 16843009;
            *a3 = 16843009;
LABEL_200:
            *(a3 + 7) = 16843008;
            goto LABEL_201;
          }

          v63 = a4->displayType;
          if (v63 > 7 || v63 == 5)
          {
            goto LABEL_201;
          }

          if ((*&self->super._anon_90[484] & 0x80) != 0 && (debugDM4DisableConf & 0x80) == 0)
          {
            *a3 = 0x1000000010101;
            *(a3 + 4) = 0;
            goto LABEL_168;
          }

          *(a3 + 3) = 16843009;
          *a3 = 16843009;
          *(a3 + 7) = 16843008;
          if (a4->processingType != 4)
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
        if (isFormatYUV(a4->outputFormat))
        {
          v71 = 1;
          a3[11] = 1;
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
          a3[11] = enableFp16Regamma;
        }

        a3[12] = v71;
        goto LABEL_208;
      }

      if (a4->inputColorSpace)
      {
        v48 = a4->inputFormat;
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
      v64 = a4->displayType;
      if (v64 > 7 || v64 == 5)
      {
        goto LABEL_201;
      }

      *a3 = 1;
      a3[1] = isFormatYUV(a4->inputFormat);
      *(a3 + 2) = 0x100000001;
      a3[10] = 1;
      if (self->super._enableHwOOTF)
      {
        enableHwOotfForDolby84 = self->super._enableHwOotfForHLG;
LABEL_180:
        a3[14] = enableHwOotfForDolby84;
        goto LABEL_201;
      }

LABEL_179:
      enableHwOotfForDolby84 = 0;
      goto LABEL_180;
    }

    if (!a4->enableConverting || a4->enableToneMapping)
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

    v52 = a4->inputColorSpace;
    if (v52 && v52 != 2 && v52 != 1 || a4->processingType != 5 || (isSupportedMSRColorConversion(a4->inputFormat, a4->outputFormat) & 1) == 0)
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

    operationFlags = a4->operationFlags;
    *a3 = 1;
    v59 = a4->inputColorSpace;
    if (v59 == 2)
    {
      if (a4->processingType == 5 && isSupportedMSRColorConversion(a4->inputFormat, a4->outputFormat))
      {
        a3[1] = 1;
      }
    }

    else if (!v59 && a4->processingType == 5)
    {
      if (isSupportedMSRColorConversion(a4->inputFormat, a4->outputFormat))
      {
        *(a3 + 1) = 257;
        a3[3] = 1;
      }

      else
      {
        *(a3 + 1) = 257;
      }

      if (a4->inputTransferFunction == 18 && isSupportedMSRColorConversion(a4->inputFormat, a4->outputFormat))
      {
        outputColorSpace = a4->outputColorSpace;
        if (outputColorSpace)
        {
          v61 = 6;
          goto LABEL_153;
        }

        if (a4->outputTransferFunction != 18)
        {
          v62 = (operationFlags & 1) == 0;
          a3[6] = v62;
          a3[10] = v62;
          a3[11] = v62;
          goto LABEL_155;
        }
      }

LABEL_152:
      a3[4] = 1;
      outputColorSpace = a4->outputColorSpace;
      v61 = 9;
LABEL_153:
      v62 = (operationFlags & 1) == 0;
      a3[v61] = v62;
      a3[10] = v62;
      a3[11] = v62;
      if (outputColorSpace == 2)
      {
        if (a4->processingType != 5 || !isSupportedMSRColorConversion(a4->inputFormat, a4->outputFormat))
        {
          goto LABEL_161;
        }

LABEL_160:
        a3[12] = v62;
        goto LABEL_161;
      }

      if (outputColorSpace)
      {
LABEL_161:
        a3[13] = v62;
        goto LABEL_209;
      }

LABEL_155:
      if (a4->processingType != 5 || (isSupportedMSRColorConversion(a4->inputFormat, a4->outputFormat) & 1) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_160;
    }

    *(a3 + 1) = 257;
    goto LABEL_152;
  }

  if (v31 != 1)
  {
    if (v31 == 2)
    {
      *a3 = 0x1000001010001;
      *(a3 + 4) = 0;
      a3[10] = 1;
      if (v30 || !v27)
      {
        v32 = v30 && v27;
      }

      else
      {
        v32 = self->_enableFp16Regamma;
      }

      a3[11] = v32;
      a3[12] = isFormatYUV(v28);
LABEL_208:
      a3[13] = 0;
      goto LABEL_209;
    }

    goto LABEL_93;
  }

  v39 = a4->inputColorSpace;
  *a3 = 1;
  if (v39 == 2)
  {
    a3[1] = 1;
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *(a3 + 2) = 16843009;
    *(a3 + 6) = 1;
  }

  else
  {
    *(a3 + 6) = 0;
    *(a3 + 1) = 0;
  }

LABEL_209:
  a3[15] = 1;
  if (!GetConfig())
  {
    goto LABEL_221;
  }

  Config = GetConfig();
  if ((*HDRConfig::GetConfigEntryValue(Config, 0x47u, 0) - 1) > 1)
  {
    goto LABEL_221;
  }

  v74 = a4->outputFormat;
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

  if (a4->outputTransferFunction == 16)
  {
    *(a3 + 11) = 257;
  }

LABEL_221:
  v76 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigHeader:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = qword_280C66108;
  if (qword_280C66108)
  {
    frameNumber = self->super._frameNumber;
    if (frameNumber != dword_280C660FC)
    {
LABEL_27:
      fprintf(v10, "%scontrolpath[%d] = {}\n", a5, frameNumber);
      fprintf(v10, "%s\n", a5);
      goto LABEL_28;
    }

    *v22 = 0u;
    v23 = 0u;
    v20 = time(0);
    localtime_r(&v20, &v21);
    asctime_r(&v21, v22);
    fprintf(v10, "%s---## %s %s on %s FDM Control Path Parameters (operation=%d %s, convertType=%d %s)\n", a5, contentTypeName[a10->contentType], colorSpaceName[a10->inputColorSpace], displayTypeName[a10->displayType], a10->operation, operationName[a10->operation], a10->convertType, convertTypeName[a10->convertType]);
    fprintf(v10, "%s---## Created on: %s", a5, v22);
    if (dword_280C66100 == -1)
    {
      fprintf(v10, "%s---## Frames: all\n");
    }

    else
    {
      fprintf(v10, "%s---## Frames: %d - %d\n");
    }

    fprintf(v10, "%s---## Targetnits: %f\n", a5, a8->targetMaxLinear);
    fprintf(v10, "%s---## TargetMinNits: %f\n", a5, a8->targetMinLinear);
    inputTransferFunction = a10->inputTransferFunction;
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
    fprintf(v10, "%s---## Input: %c%c%c%c [%c%c%c%c]%s\n", a5, HIBYTE(a10->inputFormatRaw), BYTE2(a10->inputFormatRaw), BYTE1(a10->inputFormatRaw), a10->inputFormatRaw, HIBYTE(a10->inputFormat), BYTE2(a10->inputFormat), BYTE1(a10->inputFormat), a10->inputFormat, v16);
    outputTransferFunction = a10->outputTransferFunction;
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
        fprintf(v10, "%s---## Output: %c%c%c%c [%c%c%c%c]%s\n", a5, HIBYTE(a10->outputFormatRaw), BYTE2(a10->outputFormatRaw), BYTE1(a10->outputFormatRaw), a10->outputFormatRaw, HIBYTE(a10->outputFormat), BYTE2(a10->outputFormat), BYTE1(a10->outputFormat), a10->outputFormat, v18);
        fprintf(v10, "%s\n", a5);
        fprintf(v10, "%scontrolpath = {}\n", a5);
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

- (void)populateMSRColorConfigStageB01_01:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v13 = a4;
  v16 = qword_280C66108;
  contentType = a10->contentType;
  if (a10->contentType == 3)
  {
    if (a10->inputColorSpace)
    {
      inputFormat = a10->inputFormat;
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
    displayType = a10->displayType;
    if (displayType <= 7 && displayType != 5)
    {
      BitDepthFromSurfaceFormat = getBitDepthFromSurfaceFormat(a10->inputFormat);
LABEL_21:
      sdrMaxBrightnessInNits = a8->sdrMaxBrightnessInNits;
      goto LABEL_22;
    }

LABEL_44:
    BitDepthFromSurfaceFormat = a7->var11 - 2;
    goto LABEL_21;
  }

  BitDepthFromSurfaceFormat = a7->var11 - 2;
  sdrMaxBrightnessInNits = a8->sdrMaxBrightnessInNits;
  if (contentType == 1)
  {
    v20 = a10->inputFormat;
    if (isFormatYUV(v20))
    {
      var13 = a7->var13;
      if (!v13)
      {
        return;
      }

      goto LABEL_23;
    }
  }

LABEL_22:
  v20 = a10->inputFormat;
  var13 = getChromaFormatFromSurfaceFormat(v20);
  if (!v13)
  {
    return;
  }

LABEL_23:
  if (v16)
  {
    fprintf(v16, "%s--- general and B01-01 Frame %d ---\n", a5, self->super._frameNumber);
    v40 = BitDepthFromSurfaceFormat;
    fprintf(v16, "%scontrolpath[%d].signal_bit_depth = %d\n", a5, self->super._frameNumber, BitDepthFromSurfaceFormat);
    fprintf(v16, "%scontrolpath[%d].signal_color_space = %d\n", a5, self->super._frameNumber, a10->inputColorSpace);
    fprintf(v16, "%scontrolpath[%d].signal_chroma_format = %d\n", a5, self->super._frameNumber, var13);
    fprintf(v16, "%scontrolpath[%d].reshapeEnabled = %d\n", a5, self->super._frameNumber, a10->enableReshaping);
    if (a10->enableReshaping)
    {
      v28 = 0;
      v29 = self;
      do
      {
        fprintf(v16, "%scontrolpath[%d].reshapeLUT%d = {\n", a5, self->super._frameNumber, v28);
        [(ProcessingEngine *)self printArray:v16 Prefix:a5 Array:v29->_reshapeLUT Size:1024 NumberPerLine:8 Format:1];
        ++v28;
        v29 = (v29 + 2048);
      }

      while (v28 != 3);
    }

    fprintf(v16, "%s\n", a5);
    v20 = a10->inputFormat;
    LOBYTE(BitDepthFromSurfaceFormat) = v40;
  }

  a3->var2.var0.var1.dmaConfig.inputBitDepth = BitDepthFromSurfaceFormat;
  inputColorSpace = a10->inputColorSpace;
  outputColorSpace = a10->outputColorSpace;
  a3->var2.var0.var0[1] = inputColorSpace;
  a3->var2.var0.var0[2] = var13;
  a3->var2.var0.var1.dmaConfig.outputBitDepth = 16;
  a3->var2.var0.var0[7] = outputColorSpace;
  if (v20 <= 1647534391)
  {
    if (v20 != 1378955371)
    {
      v32 = 1380411457;
      goto LABEL_33;
    }

LABEL_34:
    v33 = a10->displayType;
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
    if (inputColorSpace != 1 || a10->processingType != 5 || (isSupportedMSRColorConversion(v20, a10->outputFormat) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (a10->processingType != 5 || !isSupportedMSRColorConversion(v20, a10->outputFormat))
  {
    goto LABEL_47;
  }

LABEL_36:
  if (a10->inputTransferFunction == 13)
  {
    a3->var2.var0.var1.dmaConfig.fp16RangeadjustEnable = 1;
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
    a3->var2.var0.var1.dmaConfig.fp16RangeadjustEnable = 0;
    v35 = 0.0;
    goto LABEL_76;
  }

LABEL_53:
  v37 = a10->displayType;
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
  if (a10->inputTransferFunction != 8)
  {
    goto LABEL_75;
  }

  a3->var2.var0.var1.dmaConfig.fp16RangeadjustEnable = 1;
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
  if (a10->contentType == 3)
  {
    max_fp16 = max_fp16 * 12.0;
  }

LABEL_38:
  v35 = 1.0 / max_fp16;
LABEL_76:
  a3->var2.var0.var1.dmaConfig.fp16Mult = v35;
LABEL_77:
  a3->var2.var0.var0[5] = 0;
  a3->var2.var0.var1.reshaping.mode = 0;
  a3->var2.var0.var1.chormaScaling.vscaleMode = 0;
  a3->var2.var0.var1.chormaScaling.hscaleMode = 0;
  if (inputColorSpace <= 2)
  {
    if (var13 == 1)
    {
      a3->var2.var0.var1.chormaScaling.hscaleMode = 4;
      a3->var2.var0.var1.chormaScaling.hscaleNumTaps = 15;
    }

    else
    {
      if (var13)
      {
        goto LABEL_83;
      }

      a3->var2.var0.var1.chormaScaling.vscaleMode = 4;
      a3->var2.var0.var1.chormaScaling.vscaleNumTaps = 9;
      a3->var2.var0.var1.chormaScaling.hscaleMode = 4;
      a3->var2.var0.var1.chormaScaling.hscaleNumTaps = 15;
      memmove(a3->var2.var0.var1.chormaScaling.vscaleCoefficents, self->_vScaleCoefficents, 0x480uLL);
    }

    memmove(a3->var2.var0.var1.chormaScaling.hscaleCoefficents, self->_hScaleCoefficents, 0x780uLL);
LABEL_83:
    if (a10->enableReshaping)
    {
      a3->var2.var0.var1.reshaping.mode = 3;
      memmove(a3->var2.var0.var1.reshaping.reshapeData, self->_reshapeLUT, 0x1800uLL);
    }
  }

  [(MSRHDRProcessing *)self dumpMmrConfig];
}

- (void)populateMSRColorConfigStageB01_02:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v12 = a5;
  v13 = a3;
  v14 = self;
  v115 = *MEMORY[0x277D85DE8];
  contentType = a10->contentType;
  if (a10->contentType == 3)
  {
    if (a10->inputColorSpace)
    {
      inputFormat = a10->inputFormat;
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

  displayType = a10->displayType;
  if (displayType < 8 && ((0xDFu >> displayType) & 1) != 0)
  {
    LOBYTE(var11) = 12;
    goto LABEL_17;
  }

LABEL_16:
  var11 = a7->var11;
LABEL_17:
  v22 = qword_280C66108;
  if (a4)
  {
    v23 = ~(-1 << var11);
    v24 = -a6->var29 / a6->var28;
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
        v29 = a10->displayType;
        if (v29 < 8 && ((0xDFu >> v29) & 1) != 0)
        {
          p_displayType = (&unk_2508CDD6C + 4 * v29);
LABEL_58:
          v43 = *p_displayType;
          if (v43 > 7 || v43 == 5)
          {
            inputColorSpace = a10->inputColorSpace;
            goto LABEL_108;
          }

          goto LABEL_106;
        }
      }

      else if (contentType == 1 && !a10->inputColorSpace)
      {
        v28 = a10->displayType;
        if (v28 <= 7 && v28 != 5)
        {
          goto LABEL_109;
        }

        if (a10->processingType == 4 && v28 <= 7 && ((1 << v28) & 0xC3) != 0)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_52;
    }

    inputColorSpace = a10->inputColorSpace;
    if (inputColorSpace)
    {
      v32 = a10->inputFormat;
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

    v34 = a10->displayType;
    if (v34 <= 7 && v34 != 5)
    {
      if (inputColorSpace)
      {
        v35 = a10->inputFormat;
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
      v74 = a10->displayType;
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
    v37 = a10->inputColorSpace;
    if (!v37 && a10->processingType == 5)
    {
      v104 = ~(-1 << var11);
      v40 = v27;
      v41 = var11;
      v42 = isSupportedMSRColorConversion(a10->inputFormat, a10->outputFormat);
      LOBYTE(var11) = v41;
      v27 = v40;
      v13 = a3;
      v12 = a5;
      v14 = self;
      v23 = v104;
      if (v42)
      {
        if (contentType != 3)
        {
          v26 = v106;
          if (contentType == 2)
          {
            p_displayType = &a10->displayType;
            goto LABEL_58;
          }

LABEL_109:
          if (a10->processingType != 5)
          {
            goto LABEL_111;
          }

          v75 = v23;
          v78 = v14;
          v79 = v12;
          v80 = v13;
          v81 = v27;
          v82 = var11;
          v83 = isSupportedMSRColorConversion(a10->inputFormat, a10->outputFormat);
          LOBYTE(var11) = v82;
          v27 = v81;
          v13 = v80;
          v12 = v79;
          v14 = v78;
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
              v86 = a7->var5[v84] >> v77;
            }

            else
            {
              v86 = (*(&a6->var0 + (v84 & 3)) * 0.25);
            }

            v114[v84++] = v86;
          }

          while (v84 != 3);
          for (i = 0; i != 9; ++i)
          {
            if (v76)
            {
              v88 = a7->var4[i];
            }

            else
            {
              v89 = a9->var19[i];
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
            fprintf(v22, "%s--- B01-02 Frame %d ---\n", v12, v14->super._frameNumber);
            fprintf(v22, "%s--- %s ---\n", v12, &info);
            fprintf(v22, "%scontrolpath[%d].PreCm3x3Enable = %d\n", v12, v14->super._frameNumber, 1);
            fprintf(v22, "%scontrolpath[%d].OutputBitDepth = %d\n", v12, v14->super._frameNumber, 16);
            fprintf(v22, "%scontrolpath[%d].rangeMin = %d\n", v12, v14->super._frameNumber, v108);
            fprintf(v22, "%scontrolpath[%d].range = %d\n", v12, v14->super._frameNumber, v75);
            fprintf(v22, "%scontrolpath[%d].rangeInv = %u\n", v12, v14->super._frameNumber, v107);
            fprintf(v22, "%scontrolpath[%d].m33Yuv2RgbScale2P = %d\n", v12, v14->super._frameNumber, 13);
            fprintf(v22, "%scontrolpath[%d].m33Yuv2Rgb = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", v12, v14->super._frameNumber, v109, v110, SHIDWORD(v110), v111, SHIDWORD(v111), v112, SHIDWORD(v112), v113, SHIDWORD(v113));
            fprintf(v22, "%scontrolpath[%d].v3Yuv2RgbOffInRgb = { %d, %d, %d }\n", v12, v14->super._frameNumber, v114[0], v114[1], v114[2]);
            fprintf(v22, "%s\n", v12);
            v27 = v91;
          }

          v92 = 0;
          *&v13->var2.var0.var1.sourceToRGB.mode = 0xD00000002;
          v93 = -1 << v27;
          coeff = v13->var2.var0.var1.sourceToRGB.src2rgb.coeff;
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
            v13->var2.var0.var0[v92 + 2317] = 0;
            v13->var2.var0.var0[v92 + 2320] = 1065353215;
            v13->var2.var0.var1.sourceToRGB.src2rgb.offsetIn[v92] = -v114[v92] / (1 << v85);
            do
            {
              (*coeff)[v101] = v100[v101];
              ++v101;
            }

            while (v101 != 3);
            v13->var2.var0.var1.sourceToRGB.src2rgb.offsetOut[v92] = v95;
            v13->var2.var0.var1.sourceToRGB.src2rgb.outputMinClip[v92] = v98;
            v13->var2.var0.var1.sourceToRGB.src2rgb.outputMaxClip[v92++] = v99;
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

      v44 = a10->displayType;
      if (v44 <= 7 && v44 != 5)
      {
        v105 = var11;
        v111 = 0x100000000;
        v110 = 0;
        v112 = 0;
        v113 = 0x100000000;
        v109 = 1;
        if (a10->processingType == 5)
        {
          v45 = v14;
          v46 = v12;
          v47 = v13;
          v48 = v27;
          v49 = isSupportedMSRColorConversion(a10->inputFormat, a10->outputFormat);
          v27 = v48;
          v13 = v47;
          v12 = v46;
          v14 = v45;
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
        if (LODWORD(a6[1].var46) == 4)
        {
          v52 = a10->displayType;
          if (v52 <= 7 && v52 != 5 && a10->enableToneMapping && a10->enableReshaping)
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
          fprintf(v22, "%s--- B01-02 Frame %d ---\n", v12, v14->super._frameNumber);
          fprintf(v22, "%s--- %s ---\n", v12, &info);
          fprintf(v22, "%scontrolpath[%d].PreCm3x3Enable = %d\n", v12, v14->super._frameNumber, 1);
          fprintf(v22, "%scontrolpath[%d].OutputBitDepth = %d\n", v12, v14->super._frameNumber, 16);
          fprintf(v22, "%scontrolpath[%d].rangeMin = %d\n", v12, v14->super._frameNumber, v57);
          fprintf(v22, "%scontrolpath[%d].range = %d\n", v12, v14->super._frameNumber, v23);
          fprintf(v22, "%scontrolpath[%d].rangeInv = %u\n", v12, v14->super._frameNumber, v107);
          fprintf(v22, "%scontrolpath[%d].m33Yuv2RgbScale2P = %d\n", v12, v14->super._frameNumber, v62);
          fprintf(v22, "%scontrolpath[%d].m33Yuv2Rgb = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", v12, v14->super._frameNumber, v109, v110, HIDWORD(v110), v111, HIDWORD(v111), v112, HIDWORD(v112), v113, HIDWORD(v113));
          fprintf(v22, "%scontrolpath[%d].v3Yuv2RgbOffInRgb = { %d, %d, %d }\n", v12, v14->super._frameNumber, 0, 1 << (v105 - 3), 1 << (v105 - 3));
          fprintf(v22, "%s\n", v12);
          v27 = v63;
        }

        v13->var2.var0.var0[2315] = 1;
        v13->var2.var0.var0[2316] = v62;
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
        outputMaxClip = v13->var2.var0.var1.sourceToRGB.src2rgb.outputMaxClip;
        *v13->var2.var0.var1.sourceToRGB.src2rgb.inputMinClip = 0;
        v13->var2.var0.var0[2319] = 0;
        memset_pattern16(v13->var2.var0.var1.sourceToRGB.src2rgb.inputMaxClip, &unk_2508CD950, 0xCuLL);
        for (k = 0; k != 3; ++k)
        {
          v71 = v13->var2.var0.var1.sourceToRGB.src2rgb.coeff[k];
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

    if (a10->processingType != 5)
    {
      goto LABEL_134;
    }

    v50 = v27;
    v105 = var11;
    if ((isSupportedMSRColorConversion(a10->inputFormat, a10->outputFormat) & 1) == 0)
    {
      goto LABEL_134;
    }

    v111 = 0x100000000;
    v110 = 0;
    v112 = 0;
    v113 = 0x100000000;
    v109 = 1;
    v51 = isSupportedMSRColorConversion(a10->inputFormat, a10->outputFormat);
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
    fprintf(qword_280C66108, "%s--- B01-02 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v22, "%scontrolpath[%d].PreCm3x3Enable = %d\n", v12, v14->super._frameNumber, 0);
    fprintf(v22, "%s\n", v12);
  }

  v13->var2.var0.var0[2315] = 0;
LABEL_134:
  v102 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB01_03:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v14 = qword_280C66108;
  if (a4)
  {
    tm_Send_nits = a8->auxData.tm_Send_nits;
    v16 = 10000.0 / tm_Send_nits;
    v17 = tm_Send_nits == 0.0;
    LODWORD(v10) = 1.0;
    if (!v17)
    {
      *&v10 = v16;
    }

    [(MSRHDRProcessing *)self updateDegammaLUT:a10 AdditionalScaler:a8 tcControl:a5, a6, a7, v10];
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
      fprintf(v14, "%s--- B01-03 Frame %d ---\n", a5, self->super._frameNumber);
      fprintf(v14, "%s--- %s ---\n", a5, &info);
      fprintf(v14, "%scontrolpath[%d].DeGammaEnable = %d\n", a5, self->super._frameNumber, 1);
      fprintf(v14, "%scontrolpath[%d].custom_degamma_LUT = {\n", a5, self->super._frameNumber);
      if (self->_msrPlatform - 1869769063 <= 1)
      {
        [(ProcessingEngine *)self printArray:v14 Prefix:a5 Array:&self->_degamma.var0 Size:v18 NumberPerLine:8 Format:0];
      }

      fprintf(v14, "%s\n", a5);
    }

    a3->var2.var0.var0[2344] = 2;
    if (self->_msrPlatform == 1869769063)
    {
      deGammaLUT = a3->var2.var0.var1.linearization.deGammaLUT;
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
      fprintf(qword_280C66108, "%s--- B01-03 Frame %d ---\n", a5, self->super._frameNumber);
      fprintf(v14, "%scontrolpath[%d].DeGammaEnable = %d\n", a5, self->super._frameNumber, 0);
      fprintf(v14, "%s\n", a5);
    }

    a3->var2.var0.var0[2344] = 0;
  }
}

- (void)populateMSRColorConfigStageB01_04:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v97 = *MEMORY[0x277D85DE8];
  v13 = qword_280C66108;
  if (a4)
  {
    sdrMaxBrightnessInNits = a8->sdrMaxBrightnessInNits;
    processingType = a10->processingType;
    inputTransferFunction = a10->inputTransferFunction;
    if (processingType == 5 && inputTransferFunction == 13)
    {
      v21 = ((sdrMaxBrightnessInNits / a8->EDRFactor) / 10000.0) * 200.0;
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
        if (a10->contentType == 3)
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
      if (a10->operationFlags)
      {
        snprintf(&info, 0x3FFuLL, "postRGBtoRGB, scaler=%f", v21);
        v39 = (1 << v22);
        v40 = *&a6[1].var26;
        v41 = *&a6[1].var30;
        v42 = *&a6[1].var34;
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
        v24 = *&a6[1].var10;
        v25 = *&a6[1].var14;
        v26 = *&a6[1].var18;
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
        fprintf(v13, "%s--- B01-04 Frame %d ---\n", a5, self->super._frameNumber);
        fprintf(v13, "%s--- %s ---\n", a5, &info);
        fprintf(v13, "%scontrolpath[%d].PostDeGamma3x3Enable = %d\n", a5, self->super._frameNumber, 1);
        fprintf(v13, "%scontrolpath[%d].m33Rgb2Lms = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", a5, self->super._frameNumber, (v21 * v95[0]), (v21 * v95[1]), (v21 * v95[2]), (v21 * v96[0]), (v21 * v96[1]), (v21 * v96[2]), (v21 * v96[3]), (v21 * v96[4]), (v21 * v96[5]));
        fprintf(v13, "%scontrolpath[%d].m33Rgb2LmsScale2P = %d\n", a5, self->super._frameNumber, v22);
        fprintf(v13, "%scontrolpath[%d].Rgb2LmsOutMin = %d\n", a5, self->super._frameNumber, 0);
        fprintf(v13, "%s\n", a5);
      }

      v54 = 0;
      a3->var2.var0.var0[3887] = 1;
      a3->var2.var0.var0[3888] = v22;
      coeff = a3->var2.var0.var1.colorAtoCommonSpace.a2c.coeff;
      v56 = v95;
      do
      {
        v57 = 0;
        a3->var2.var0.var0[v54 + 3889] = 0;
        a3->var2.var0.var0[v54 + 3892] = 1124073471;
        a3->var2.var0.var0[v54 + 3895] = 0;
        do
        {
          (*coeff)[v57] = (v21 * v56[v57]);
          ++v57;
        }

        while (v57 != 3);
        a3->var2.var0.var0[v54 + 3907] = 0;
        a3->var2.var0.var0[v54 + 3910] = 0;
        a3->var2.var0.var0[v54++ + 3913] = 1120403456;
        ++coeff;
        v56 += 3;
      }

      while (v54 != 3);
      goto LABEL_57;
    }

    var47_low = LOWORD(a6[1].var47);
    contentType = a10->contentType;
    if (a10->contentType == 1)
    {
      if (a10->inputColorSpace == 2 && LODWORD(a6[1].var46) == 4)
      {
        displayType = a10->displayType;
        v64 = displayType > 7 || displayType == 5;
        if (!v64 && a10->enableToneMapping && a10->enableReshaping)
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
      if (!a10->inputColorSpace)
      {
        goto LABEL_84;
      }

      inputFormat = a10->inputFormat;
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
            v95[j] = ((a7->var6[j] * *&v79) + 0.5);
          }
        }

        else
        {
          v75 = ((debugDM4DisableConf & 0x40) == 0) & (var47_low >> 6);
          snprintf(&info, 0x3FFuLL, "RGBtoLMS from DM metadata with 4%% crosstalk");
          for (k = 0; k != 9; ++k)
          {
            *&v94[k * 4] = a7->var6[k] * 0.000061035;
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
    v69 = a10->displayType;
    if (v69 <= 7 && v69 != 5)
    {
      v71 = 0;
      strcpy(&info, "RGBtoLMS from hdrCtrl");
      do
      {
        v72 = a9->var20[v71];
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
    fprintf(qword_280C66108, "%s--- B01-04 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].PostDeGamma3x3Enable = %d\n", a5, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", a5);
  }

  a3->var2.var0.var0[3887] = 0;
LABEL_57:
  v58 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB01_05:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v10 = a4;
  v12 = qword_280C66108;
  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B01-05 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v12, "%scontrolpath[%d].FixedPQReGammaEnable = %d\n", a5, self->super._frameNumber, v10);
    fprintf(v12, "%s\n", a5);
  }

  a3->var2.var0.var1.chromaticAdaption.fixedPQRegamma_Enable = v10;
}

- (void)populateMSRColorConfigStageB01_06:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v13 = qword_280C66108;
  if (a4)
  {
    var47_low = LOWORD(a6[1].var47);
    if (a8->tmData.doviTmMode == 4)
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
          fprintf(v13, "%s--- B01-06 Frame %d ---\n", a5, self->super._frameNumber);
          fprintf(v13, "%s--- %s ---\n", a5, &info);
          fprintf(v13, "%scontrolpath[%d].PreToneMap3x3Enable = %d\n", a5, self->super._frameNumber, 1);
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

          fprintf(v13, "%scontrolpath[%d].m33Lms2Ipt = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", a5, self->super._frameNumber, v21, v23, v25, v27, -v29, v31, v33, v35, -((v36 * v20) + 0.5));
          fprintf(v13, "%scontrolpath[%d].m33Lms2IptScale2P = %d\n", a5, self->super._frameNumber, v18);
          fprintf(v13, "%s\n", a5);
        }

        else
        {
          v20 = (1 << v18);
        }

        v37 = 0;
        a3->var2.var0.var0[3917] = 1;
        a3->var2.var0.var0[3918] = v18;
        coeff = a3->var2.var0.var1.chromaticAdaption.cacsc1.coeff;
        do
        {
          v39 = 0;
          a3->var2.var0.var0[v37 + 3919] = -1023410177;
          a3->var2.var0.var0[v37 + 3922] = 1124073471;
          a3->var2.var0.var0[v37 + 3925] = 0;
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
          a3->var2.var0.var0[v37 + 3937] = 0;
          a3->var2.var0.var0[v37 + 3940] = -1082130433;
          a3->var2.var0.var0[v37++ + 3943] = 1065353215;
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
    fprintf(qword_280C66108, "%s--- B01-06 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].PreToneMap3x3Enable = %d\n", a5, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", a5);
  }

  a3->var2.var0.var0[3917] = 0;
}

- (void)populateMSRColorConfigStageB02HDR10:(id *)a3 DMConfig:(id *)a4
{
  v7 = &a3->var2.var0.var0[3070];
  a3->var2.var0.var0[3946] = 2;
  a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode1.type = 0;
  a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode1.lumaShiftBits = [(MSRHDRProcessing *)self getLumaShiftBits];
  a3->var2.var0.var0[3952] = 0;
  *&a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode2.spacingComp0 = 512;
  *(v7 + 3509) = 21;
  v8 = &a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 4;
  v9 = -3;
  do
  {
    *&v8[-3].msbPos2 = vcvts_n_s32_f32(*(&a4[1].var22 + ((v9 - 1) & 3)), 7uLL);
    *&v8->msbPos0 = 128;
    v8 = (v8 + 4);
  }

  while (!__CFADD__(v9++, 1));
  *(&a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 6) = 0u;
  *(&a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 52) = 0u;
  p_tonemapLUT = &self->_tonemapLUT;
  memcpy(a3->var2.var0.var1.chromaticAdaption.toneMapLUT, p_tonemapLUT, 0x804uLL);

  memcpy(a3->var2.var0.var1.chromaticAdaption.toneMapLUT[1], p_tonemapLUT->cmodel.tmLutS, sizeof(a3->var2.var0.var1.chromaticAdaption.toneMapLUT[1]));
}

- (void)populateMSRColorConfigStageB02HLG:(id *)a3 hdrControl:(id *)a4
{
  v7 = &a3->var2.var0.var0[3070];
  a3->var2.var0.var0[3946] = 2;
  LOWORD(a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode0.precision) = 6144;
  v8 = [(MSRHDRProcessing *)self getLumaShiftBits];
  v9 = 0;
  *&a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode2.spacingComp0 = 0;
  *(v7 + 3510) = v8;
  a3->var2.var0.var0[3952] = 0;
  do
  {
    var15 = a4->var15;
    v11 = a3 + v9;
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
  *(&a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 6) = 0u;
  *(&a3->var2.var0.var1.chromaticAdaption.var0.toneMapMode2 + 52) = 0u;

  memcpy(a3->var2.var0.var1.chromaticAdaption.toneMapLUT, &self->_tonemapLUT, 0x804uLL);
}

- (void)populateMSRColorConfigStageB02:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = qword_280C66108;
  if (a4)
  {
    contentType = a10->contentType;
    if (a10->contentType == 2 || contentType == 1 && ((inputColorSpace = a10->inputColorSpace) == 0 || inputColorSpace == 2))
    {
      displayType = a10->displayType;
      if (displayType <= 7 && displayType != 5)
      {
        goto LABEL_26;
      }
    }

    inputFormat = a10->inputFormat;
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
        if (a10->processingType == 4 && !a10->inputColorSpace)
        {
          v32 = a10->displayType;
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

      if (a10->inputColorSpace)
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
              fprintf(v13, "%s--- B02 Frame %d ---\n", a5, self->super._frameNumber);
              fprintf(v13, "%scontrolpath[%d].ToneMapEnable = %d\n", a5, self->super._frameNumber, 1);
              fprintf(v13, "%scontrolpath[%d].toneMapLutPrecision = %d\n", a5, self->super._frameNumber, 24);
              fprintf(v13, "%scontrolpath[%d].tmLutI = {\n", a5, self->super._frameNumber);
              [(ProcessingEngine *)self printArray:v13 Prefix:a5 Array:&self->_tonemapLUT Size:self->_tonemappingTableSize NumberPerLine:8 Format:3];
              fprintf(v13, "%scontrolpath[%d].tmLutS = {\n", a5, self->super._frameNumber);
              [(ProcessingEngine *)self printArray:v13 Prefix:a5 Array:self->_tonemapLUT.cmodel.tmLutS Size:self->_tonemappingTableSize NumberPerLine:8 Format:3];
              fprintf(v13, "%scontrolpath[%d].smLutI = {\n", a5, self->super._frameNumber);
              [(ProcessingEngine *)self printArray:v13 Prefix:a5 Array:self->_tonemapLUT.cmodel.smLutI Size:self->_tonemappingTableSize NumberPerLine:8 Format:3];
              fprintf(v13, "%scontrolpath[%d].smLutS = {\n", a5, self->super._frameNumber);
              [(ProcessingEngine *)self printArray:v13 Prefix:a5 Array:self->_tonemapLUT.cmodel.smLutS Size:self->_tonemappingTableSize NumberPerLine:8 Format:3];
              fprintf(v13, "%s\n", a5);
            }

            processingType = a10->processingType;
            if (processingType != 5 && processingType != 2)
            {
              if (processingType == 1)
              {
                strcpy(&info, "RGB Tonemapping");
                [(MSRHDRProcessing *)self populateMSRColorConfigStageB02HDR10:a3 DMConfig:a6, a5, a6, a7, a8];
                goto LABEL_59;
              }

              if ((LOWORD(a6[1].var47) & 0x80) == 0 || (debugDM4DisableConf & 0x80) != 0)
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
                *&a3->var2.var0.var1.chromaticAdaption.toneMapMode_Enable = 0x1800000001;
                memcpy(a3->var2.var0.var1.chromaticAdaption.toneMapLUT, &self->_tonemapLUT, sizeof(a3->var2.var0.var1.chromaticAdaption.toneMapLUT));
                goto LABEL_59;
              }
            }

            strcpy(&info, "HLG OOTF");
            [(MSRHDRProcessing *)self populateMSRColorConfigStageB02HLG:a3 hdrControl:a9, a5, a6, a7, a8];
LABEL_59:
            [(MSRHDRProcessing *)self writeMSRColorConfigFileStageB02Enabled:&a3->var2 Prefix:a5 Info:&info];
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
      v34 = a10->displayType;
      if (v34 <= 7 && v34 != 5)
      {
        goto LABEL_26;
      }

      goto LABEL_84;
    }

    v23 = a10->displayType;
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
    fprintf(qword_280C66108, "%s--- B02 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].ToneMapEnable = %d\n", a5, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", a5);
  }

  a3->var2.var0.var0[3946] = 0;
LABEL_60:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB04_01:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v12 = &a3->var2.var0.var0[5118];
  v13 = qword_280C66108;
  if (a4)
  {
    if (__PAIR64__(a10->enableToneMapping, a10->enableReshaping) == 0x100000001)
    {
      var47_low = LOWORD(a6[1].var47);
      if (a8->tmData.doviTmMode == 4)
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
      fprintf(v13, "%s--- B04-01 Frame %d ---\n", a5, self->super._frameNumber);
      fprintf(v13, "%s--- %s ---\n", a5, &info);
      fprintf(v13, "%scontrolpath[%d].PostCLUT3x3Enable = %d\n", a5, self->super._frameNumber, 1);
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

      fprintf(v13, "%scontrolpath[%d].m33Ipt2Lms = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", a5, self->super._frameNumber, v23, v25, v27, (v22 + 0.5), -v29, v31, (v22 + 0.5), v33, -((v34 * v22) + 0.5));
      fprintf(v13, "%scontrolpath[%d].m33Ipt2LmsScale2P = %d\n", a5, self->super._frameNumber, v19);
      fprintf(v13, "%scontrolpath[%d].Ipt2LmsOutMin = %d\n", a5, self->super._frameNumber, 0);
      fprintf(v13, "%s\n", a5);
    }

    else
    {
      v22 = (1 << v19);
    }

    v35 = 0;
    v12[938] = 1;
    v12[939] = v19;
    coeff = a3->var2.var0.var1.chromaticAdaption.cacsc2.coeff;
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

      a3->var2.var0.var1.chromaticAdaption.cacsc2.inputMinClip[v35] = v38;
      a3->var2.var0.var0[v35 + 6061] = 1065353216;
      a3->var2.var0.var0[v35 + 6064] = 0;
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
      a3->var2.var0.var0[v35 + 6076] = 0;
      a3->var2.var0.var0[v35 + 6079] = 0;
      a3->var2.var0.var0[v35++ + 6082] = 1065353216;
      ++coeff;
      v20 += 3;
    }

    while (v35 != 3);
    return;
  }

  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B04-01 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].PostCLUT3x3Enable = %d\n", a5, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", a5);
  }

  v12[938] = 0;
}

- (void)populateMSRColorConfigStageB04_02:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v10 = a4;
  v12 = qword_280C66108;
  if (qword_280C66108)
  {
    fprintf(qword_280C66108, "%s--- B04-02 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v12, "%scontrolpath[%d].FixedPQDeGammaEnable = %d\n", a5, self->super._frameNumber, v10);
    fprintf(v12, "%s\n", a5);
  }

  a3->var2.var0.var1.chromaticAdaption.fixedPQDegamma_Enable = v10;
}

- (void)populateMSRColorConfigStageB04_03:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v106 = *MEMORY[0x277D85DE8];
  v12 = &a3->var2.var0.var0[5118];
  v13 = qword_280C66108;
  if (a4)
  {
    v14 = a8;
    v17 = a3;
    v101 = 0x3F800000uLL;
    *&v102[4] = 0;
    *&v102[12] = 0x3F80000000000000;
    *v102 = 1065353216;
    v18 = 1.0;
    if (a8->atmEnable && (targetMaxLinear = a8->targetMaxLinearOutput, targetMaxLinear > a8->diffuseInNits))
    {
      if (a10->processingType == 2)
      {
        v18 = a8->targetMaxLinear / targetMaxLinear;
      }
    }

    else
    {
      targetMaxLinear = a8->targetMaxLinear;
    }

    v20 = MEMORY[0x277CC4C30];
    processingType = a10->processingType;
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
          v17 = a3;
          v20 = MEMORY[0x277CC4C30];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: msrHC->processingType == kHDRProcessingTypeDoVi || msrHC->processingType == kHDRProcessingTypeDoVi84 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/MSR/MSRHDRProcessingImpl.mm at line 4287\n", buf, 2u);
        }

LABEL_35:
        targetColorPrimaries = v14->targetColorPrimaries;
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

        v18 = *&a6[1].var7;
        if (a10->outputTransferFunction == 16)
        {
          if (v14->enableHybridCanonicalRendering)
          {
            v18 = v18 * v14->outputScaler;
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

        var47_low = LOWORD(a6[1].var47);
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

        if ((LOWORD(a6[1].var47) & 0x100) != 0 && (debugDM4DisableConf & 0x100) == 0)
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
            v14 = a8;
            do
            {
              *&buf[v86 * 4] = a7->var6[v86] * 0.000061035;
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
          v14 = a8;
LABEL_64:
          *buf = v98;
          v104 = v99;
          v105 = v100;
          goto LABEL_65;
        }

        if (a10->contentType == 1 && a10->inputColorSpace == 2 && LODWORD(a6[1].var46) == 4)
        {
          displayType = a10->displayType;
          if (displayType <= 7 && displayType != 5)
          {
            if (a10->enableToneMapping && a10->enableReshaping)
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

            if (displayType == 7 && a10->enableReshaping && !a10->enableToneMapping)
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
        v14 = a8;
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

        if ((LOWORD(a6[1].var47) & 0x40) == 0 || (debugDM4DisableConf & 0x40) != 0)
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
          fprintf(v13, "%s--- B04-03 Frame %d ---\n", a5, self->super._frameNumber);
          fprintf(v13, "%s--- %s ---\n", a5, &info);
          fprintf(v13, "%scontrolpath[%d].PreReGamma3x3Enable = %d\n", a5, self->super._frameNumber, 1);
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

          fprintf(v13, "%scontrolpath[%d].m33Lms2Rgb = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", a5, self->super._frameNumber, v47, v49, v51, v53, v55, v57, v59, v61, v63);
          fprintf(v13, "%scontrolpath[%d].m33Lms2RgbScale2P = %d\n", a5, self->super._frameNumber, v44);
          fprintf(v13, "%scontrolpath[%d].Lms2RgbInMax = %llu\n", a5, self->super._frameNumber, 0x1387FFE00);
          fprintf(v13, "%scontrolpath[%d].Lms2RgbOutMin = %llu\n", a5, self->super._frameNumber, 0);
          fprintf(v13, "%scontrolpath[%d].Lms2RgbOutMax = %llu\n", a5, self->super._frameNumber, 1048576000);
          fprintf(v13, "%s\n", a5);
        }

        else
        {
          v46 = (1 << v43);
        }

        v64 = 0;
        v12[968] = 1;
        v12[969] = v44;
        inputMinClip = v17->var2.var0.var1.commonSpaceToColorB.c2b.inputMinClip;
        inputMaxClip = v17->var2.var0.var1.commonSpaceToColorB.c2b.inputMaxClip;
        offsetIn = v17->var2.var0.var1.commonSpaceToColorB.c2b.offsetIn;
        coeff = v17->var2.var0.var1.commonSpaceToColorB.c2b.coeff;
        offsetOut = v17->var2.var0.var1.commonSpaceToColorB.c2b.offsetOut;
        v96 = *v20;
        v95 = *MEMORY[0x277CC4C18];
        v70 = v17;
        outputMinClip = v17->var2.var0.var1.commonSpaceToColorB.c2b.outputMinClip;
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
          if (v14->targetTransferFunction == 16)
          {
            v78 = v14->targetColorPrimaries;
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
          v14 = a8;
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
        var15 = a9->var15;
        if (var15 == 9)
        {
          v90 = a8->targetColorPrimaries;
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
          v23 = a8->targetColorPrimaries;
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
          if (a10->outputTransferFunction == 16)
          {
            if (BYTE1(a6[1].var49))
            {
              v18 = targetMaxLinear / 10000.0;
            }

            else
            {
              v18 = *&a6->var66 / 10000.0;
            }

            if (a8->enableHybridCanonicalRendering)
            {
              v18 = v18 * a8->outputScaler;
            }
          }

          else if ((BYTE1(a6[1].var49) & 1) == 0)
          {
            v18 = *&a6->var66 / targetMaxLinear;
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

    if (a10->outputTransferFunction == 16)
    {
      if (a8->enableHybridCanonicalRendering)
      {
        v18 = v18 * a8->outputScaler;
      }
    }

    else
    {
      v18 = 10000.0 / targetMaxLinear;
    }

    snprintf(&info, 0x3FFuLL, "postRGB2RGB: from DM config, scaler=%f", v18);
    v25 = *&a6[1].var26;
    HIDWORD(v25) = *&a6[1].var30;
    v26 = *&a6[1].var34;
    v27 = vextq_s8(vextq_s8(*&a6[1].var30, *&a6[1].var30, 0xCuLL), v26, 8uLL);
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
    fprintf(qword_280C66108, "%s--- B04-03 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v13, "%scontrolpath[%d].PreReGamma3x3Enable = %d\n", a5, self->super._frameNumber, 0);
    fprintf(v13, "%s\n", a5);
  }

  v12[968] = 0;
LABEL_134:
  v84 = *MEMORY[0x277D85DE8];
}

- (void)populateMSRColorConfigStageB04_05:(id *)a3 Enabled:(BOOL)a4 Prefix:(char *)a5 DMConfig:(id *)a6 DMData:(id *)a7 tcControl:(ToneCurve_Control *)a8 hdrControl:(id *)a9 MSRHDRContext:(MSRHDRContext *)a10
{
  v69 = *MEMORY[0x277D85DE8];
  v12 = &a3->var2.var0.var1.gammaEncoding.gamma_LUT[2][662];
  v13 = qword_280C66108;
  if (!a4)
  {
    if (qword_280C66108)
    {
      fprintf(qword_280C66108, "%s--- B04-05 Frame %d ---\n", a5, self->super._frameNumber);
      fprintf(v13, "%scontrolpath[%d].PostCm3x3Enable = %d\n", a5, self->super._frameNumber, 0);
      fprintf(v13, "%s\n", a5);
    }

    v12[44] = 0.0;
    goto LABEL_110;
  }

  memset(v67 + 4, 0, 32);
  if (a10->processingType != 5 || !isSupportedMSRColorConversion(a10->inputFormat, a10->outputFormat))
  {
    if (a10->contentType == 1 && !a10->inputColorSpace && !a10->displayType && ((LOWORD(a6[1].var47) & 0x20) == 0 || (debugDM4DisableConf & 0x20) != 0))
    {
      strcpy(&info, "rgb2yuv: DolbyVision to DolbyVision TV");
      v18 = &qword_2508CDCAC;
      RGBtoYUVMatrixForUITargetColorPrimary = &xmmword_2508CDC88;
      goto LABEL_44;
    }

    targetColorPrimaries = a8->targetColorPrimaries;
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
    if (a10->contentType == 1)
    {
      if (a10->processingType != 4 || a10->inputColorSpace)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    if (a10->contentType != 3)
    {
      goto LABEL_42;
    }

    if (a10->inputColorSpace)
    {
      LOBYTE(v23) = 0;
      inputFormat = a10->inputFormat;
      if (inputFormat > 1647534391)
      {
        if (inputFormat != 1815162994)
        {
          v25 = 1647534392;
LABEL_39:
          if (inputFormat != v25)
          {
LABEL_43:
            RGBtoYUVMatrixForUITargetColorPrimary = getRGBtoYUVMatrixForUITargetColorPrimary(a8, v23 & 1);
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
    displayType = a10->displayType;
    if (displayType < 8)
    {
      v23 = 0xDFu >> displayType;
      goto LABEL_43;
    }

LABEL_42:
    LOBYTE(v23) = 0;
    goto LABEL_43;
  }

  outputColorSpace = a10->outputColorSpace;
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

  v64 = a8->targetColorPrimaries;
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
  if (isFullRangeFromSurfaceFormat(a10->outputFormat))
  {
    v18 = &qword_2508CDCB8;
  }

  else
  {
    v18 = &qword_2508CDCAC;
  }

  RGBtoYUVMatrixForUITargetColorPrimary = getRGBtoYUVMatrixForUITargetColorPrimary(a8, 0);
LABEL_44:
  *buf = *v18;
  *&buf[8] = *(v18 + 2);
  v28 = RGBtoYUVMatrixForUITargetColorPrimary[1];
  v67[0] = *RGBtoYUVMatrixForUITargetColorPrimary;
  v67[1] = v28;
  LODWORD(v67[2]) = *(RGBtoYUVMatrixForUITargetColorPrimary + 8);
  if (v13)
  {
    fprintf(v13, "%s--- B04-05 Frame %d ---\n", a5, self->super._frameNumber);
    fprintf(v13, "%s--- %s ---\n", a5, &info);
    fprintf(v13, "%scontrolpath[%d].PostCm3x3Enable = %d\n", a5, self->super._frameNumber, 1);
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

    fprintf(v13, "%scontrolpath[%d].m33Rgb2Yuv = { {%d, %d, %d}, {%d, %d, %d}, {%d, %d, %d} }\n", a5, self->super._frameNumber, v31, v32, v34, v36, v38, v40, v42, v44, v46);
    fprintf(v13, "%scontrolpath[%d].outclr_eq_KClrYuv = %d\n", a5, self->super._frameNumber, 0);
    fprintf(v13, "%scontrolpath[%d].rangeOverOne = %d\n", a5, self->super._frameNumber, 0x10000);
    fprintf(v13, "%scontrolpath[%d].rangeMin = %d\n", a5, self->super._frameNumber, 0);
    fprintf(v13, "%scontrolpath[%d].m33Rgb2YuvScale2P = %d\n", a5, self->super._frameNumber, 12);
    fprintf(v13, "%scontrolpath[%d].v3Rgb2YuvOff = { %d, %d, %d }\n", a5, self->super._frameNumber, *buf, *&buf[4], *&buf[8]);
    fprintf(v13, "%s\n", a5);
  }

  v47 = 0;
  *(v12 + 22) = 0xC00000001;
  v48 = v67;
  coeff = a3->var2.var0.var1.rgb2ycc.rgb2ycc.coeff;
  do
  {
    v50 = 0;
    a3->var2.var0.var0[v47 + 8236] = -1073741825;
    a3->var2.var0.var0[v47 + 8239] = 0x3FFFFFFF;
    a3->var2.var0.var0[v47 + 8242] = 0;
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
    a3->var2.var0.var0[v47 + 8257] = 0;
    a3->var2.var0.var0[v47++ + 8260] = 1065353216;
    ++coeff;
    v48 = (v48 + 12);
  }

  while (v47 != 3);
  if (GetConfig())
  {
    Config = GetConfig();
    if ((*HDRConfig::GetConfigEntryValue(Config, 0x47u, 0) - 1) <= 1)
    {
      outputFormat = a10->outputFormat;
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

      if (a10->outputTransferFunction == 16)
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

            a3->var2.var0.var0[v59++ + 8245] = v62;
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

- (int)getColorConfigSignatureString:(char *)a3 length:(int)a4 tcControl:(ToneCurve_Control *)a5 hdrControl:(id *)a6
{
  p_msrHC = &self->_msrHC;
  var15 = a6->var15;
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
  var16 = a6->var16;
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
  targetColorPrimaries = a5->targetColorPrimaries;
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
  targetMatrixCoeffs = a5->targetMatrixCoeffs;
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
  AmbientInNits = a5->AmbientInNits;
  if (AmbientInNits <= 0.0)
  {
    AmbientInNits = 0.0;
  }

  return snprintf(a3, a4, "%s_%s-%s-%s-%s-%c%c%c%c_%s_%s-%s-%s-%s-%c%c%c%c_%zdx%zd_edrFactor-%.2f_ambient-%.0fnits_targetnits-%.0fnits", v19, v9, v11, v13, v20, HIBYTE(inputFormat), BYTE2(inputFormat), BYTE1(inputFormat), inputFormat, v22, v16, v18, v24, v25, HIBYTE(outputFormat), BYTE2(outputFormat), BYTE1(outputFormat), outputFormat, inputWidth, inputHeight, a5->EDRFactor, AmbientInNits, a5->targetMaxLinear);
}

- (void)runPostFrameDumpActions:(id *)a3
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

- (void)populateMSRColorConfig:(id *)a3 DMConfig:(id *)a4 DMData:(id *)a5 tcControl:(ToneCurve_Control *)a6 hdrControl:(id *)a7 MSRHDRContext:(MSRHDRContext *)a8
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v15 = *&a4[1].var42;
  *&a8->dpcParam.alpha = *&a4[1].var38;
  *&a8->dpcParam.on = v15;
  [(MSRHDRProcessing *)self decideStageStatus:&v18 MSRHDRContext:a8 DMConfig:a4];
  [(MSRHDRProcessing *)self checkNewFrameForDump];
  [(MSRHDRProcessing *)self populateMSRColorConfigHeader:a3 Enabled:1 Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_01:a3 Enabled:v18 Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_02:a3 Enabled:BYTE1(v18) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_03:a3 Enabled:BYTE2(v18) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_04:a3 Enabled:BYTE3(v18) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_05:a3 Enabled:BYTE4(v18) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB01_06:a3 Enabled:BYTE5(v18) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_01:a3 Enabled:v19 Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_02:a3 Enabled:BYTE1(v19) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_03:a3 Enabled:BYTE2(v19) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_04:a3 Enabled:BYTE3(v19) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB04_05:a3 Enabled:BYTE4(v19) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB02:a3 Enabled:BYTE6(v18) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageB03:a3 Enabled:HIBYTE(v18) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageHwOOTF:a3 Enabled:BYTE6(v19) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  [(MSRHDRProcessing *)self populateMSRColorConfigStageDownSampleFilter:a3 Enabled:HIBYTE(v19) Prefix:&v17 DMConfig:a4 DMData:a5 tcControl:a6 hdrControl:a7 MSRHDRContext:a8];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)attachHDRMetaDataToOutputSurface:(__IOSurface *)a3 withDMData:(id *)a4 withDMConfig:(id *)a5 withHdrControl:(id *)a6 withTcControl:(ToneCurve_Control *)a7 withMSRHDRContext:(MSRHDRContext *)a8 withInfoFrame:(id *)a9
{
  displayType = self->_msrHC.displayType;
  if (!displayType || a6->var3 == 4 && a6->var6)
  {
    [(MSRHDRProcessing *)self attachDoViMetadataPacketTo:a3 withDMData:a4 withDMConfig:a5 withHdrControl:a6 withMSRHDRContext:a8];
  }

  else if (displayType == 2)
  {
    [(MSRHDRProcessing *)self attachInfoFrameTo:a3 withDMData:a4 withTcControl:a7 withInfoFrame:a9];
  }
}

- (void)attachDoViMetadataPacketTo:(__IOSurface *)a3 withDMData:(id *)a4 withDMConfig:(id *)a5 withHdrControl:(id *)a6 withMSRHDRContext:(MSRHDRContext *)a7
{
  v52 = *MEMORY[0x277D85DE8];
  if (a6->var3 != 4)
  {
    v33 = convertMetaDataToPayLoad(a4, &self->_payload);
    self->_payLoadLength = v33;
    if (a4->var25.var0)
    {
      v35 = 13;
    }

    else
    {
      v35 = 0;
    }

    if (a4->var26.var0)
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
      metaDataReduceL2(a4);
      v38 = convertMetaDataToPayLoad(a4, &self->_payload);
      self->_payLoadLength = v38;
      if (v38 - v37 >= 0x1E3 && a4->var31.var0)
      {
        a4->var31.var0 = 0;
        --a4->var18;
        v38 = convertMetaDataToPayLoad(a4, &self->_payload);
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

    if (a7->contentType == 3)
    {
      LODWORD(v34) = *&a5->var66;
      setTargitBrightnessInMetaData(&self->_payload, v34, a6->var22, *&v34, a6->var22);
    }

    if (SLODWORD(a5[1].var46) <= 3)
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
    IOSurfaceSetValue(a3, @"DolbyVisionHDMIData", v41);
    CFRelease(v41);
    goto LABEL_38;
  }

  if (!a6->var6)
  {
LABEL_38:
    v42 = *MEMORY[0x277D85DE8];
    return;
  }

  value = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:a7->outputTransferFunction];
  [value setObject:v11 forKeyedSubscript:*MEMORY[0x277CD2A08]];

  LOWORD(v12) = a4->var21.var2;
  *&v13 = v12 / 4095.0;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [value setObject:v14 forKeyedSubscript:*MEMORY[0x277CD2A18]];

  LOWORD(v15) = a4->var21.var1;
  *&v16 = v15 / 4095.0;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [value setObject:v17 forKeyedSubscript:*MEMORY[0x277CD2A20]];

  LOWORD(v18) = a4->var21.var3;
  *&v19 = v18 / 4095.0;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [value setObject:v20 forKeyedSubscript:*MEMORY[0x277CD2A10]];

  if (a4->var32.var0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInt:a4->var32.var2 + 2];
    [value setObject:v21 forKeyedSubscript:*MEMORY[0x277CC4C70]];

    if (a4->var32.var2 == 2)
    {
      if (a4->var23.var0)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithInt:a4->var23.var1];
        [value setObject:v23 forKeyedSubscript:*MEMORY[0x277CC4C80]];

        v24 = [MEMORY[0x277CCABB0] numberWithInt:a4->var23.var2];
        [value setObject:v24 forKeyedSubscript:*MEMORY[0x277CC4C78]];

        v25 = [MEMORY[0x277CCABB0] numberWithInt:a4->var23.var3];
        [value setObject:v25 forKeyedSubscript:*MEMORY[0x277CC4C68]];
      }

      if (a4->var24.var0)
      {
        LOWORD(v22) = a4->var24.var2;
        *&v22 = LODWORD(v22) / 4095.0;
        v26 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
        [value setObject:v26 forKeyedSubscript:*MEMORY[0x277CC4C60]];

        LOWORD(v27) = a4->var24.var1;
        *&v28 = v27 / 4095.0;
        v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
        [value setObject:v29 forKeyedSubscript:*MEMORY[0x277CC4C58]];
      }
    }
  }

  IOSurfaceSetValue(a3, *MEMORY[0x277CD2A00], value);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)attachInfoFrameTo:(__IOSurface *)a3 withDMData:(id *)a4 withTcControl:(ToneCurve_Control *)a5 withInfoFrame:(id *)a6
{
  LODWORD(v14) = unk_2508CDD38;
  if (a6->var0.var2 && a6->var1.var0)
  {
    v13 = *&a6->var0.var0;
    v14 = *&a6->var0.var8;
    var1 = a6->var1;
  }

  else if (a4->var26.var0)
  {
    LODWORD(v14) = 10000 * a4->var26.var1;
    HIDWORD(v14) = a4->var26.var2;
    v9 = *&a4->var26.var3;
  }

  else
  {
    var16 = a4->var16;
    if (var16 >= 0xC06)
    {
      v12 = PQ12Bit2LinFloat(var16);
      LODWORD(v14) = vcvt_u32_f32(vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(PQ12Bit2LinFloat(a4->var15)), LODWORD(v12)), vdup_n_s32(0x461C4000u))).u32[0];
    }
  }

  if (a5->dovi50toHDR10TVMode && v14 >= (a5->targetMaxLinear * 10000.0))
  {
    v11 = (a5->targetMaxLinear * 10000.0);
  }

  IOSurfaceSetBulkAttachments2();
}

+ (void)dolbyIOMFBMetadata:(id *)a3 withMinBrightness:(float)a4 maxBrightness:(float)a5
{
  v25 = *MEMORY[0x277D85DE8];
  bzero(a3, 0x20CuLL);
  if (a5 <= a4)
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
        v18 = COERCE_DOUBLE("+[MSRHDRProcessing dolbyIOMFBMetadata:withMinBrightness:maxBrightness:]");
        v19 = 2048;
        v20 = a5;
        v21 = 2048;
        v22 = a4;
        v23 = 2048;
        v24 = a3;
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
        v18 = a5;
        v19 = 2048;
        v20 = a4;
        v21 = 2048;
        v22 = *&a3;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     %s : error max=%f <= min=%f, metaData=%p", &v15, 0x2Au);
        v11 = 0;
      }
    }
  }

  else
  {
    v8 = PQIn12Bit(a4);
    v9 = PQIn12Bit(a5);
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
    v11 = PacketizeMetadataMSR(SDRMetaData, v10, &a3->var1);
  }

  a3->var0 = 1;
  a3->var1.var0.var0.var1 = 3;
  a3->var1.var0.var0.var2 = v11;
  v14 = *MEMORY[0x277D85DE8];
}

+ (void)dolbyIOMFBMetadata:(id *)a3 withFilteredMinPQ:(float)a4 FilteredMaxPQ:(float)a5 FilteredAvgPQ:(float)a6 EnableLevel4:(BOOL)a7 FilteredAvg:(float)a8 FilteredStdDev:(float)a9
{
  v11 = a7;
  v13 = a4 * 4095.0;
  v14 = -(a4 * 4095.0);
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

  v17 = a5 * 4095.0;
  v18 = -(a5 * 4095.0);
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

  v22 = a6 * 4095.0;
  if ((a6 * 4095.0) < 0.0)
  {
    v22 = -(a6 * 4095.0);
  }

  v23 = (v22 + 0.5);
  if ((a6 * 4095.0) < 0.0)
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

  bzero(a3, 0x20CuLL);
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
  if (v11)
  {
    v29 = a8 * 4095.0;
    if ((a8 * 4095.0) < 0.0)
    {
      v29 = -(a8 * 4095.0);
    }

    v30 = (v29 + 0.5);
    if ((a8 * 4095.0) < 0.0)
    {
      v30 = -v30;
    }

    if (v30 >= 0xFFF)
    {
      LOWORD(v30) = 4095;
    }

    v31 = a9 * 4095.0;
    if ((a9 * 4095.0) < 0.0)
    {
      v31 = -(a9 * 4095.0);
    }

    byte_27F3DD4A6 = 3;
    byte_27F3DD4C1 = 4;
    if ((a9 * 4095.0) >= 0.0)
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
  v34 = PacketizeMetadataMSR(SDRMetaData, v33, &a3->var1);
  if (GetConfig())
  {
    Config = GetConfig();
    HDRConfig::GetConfigEntryValue(Config, 0x4Au, 0);
  }

  a3->var0 = 1;
  a3->var1.var0.var0.var1 = 3;
  a3->var1.var0.var0.var2 = v34;
}

+ (void)HDR10PlusIOMFBMetadata:(id *)a3 withHDR10PlusData:(id *)a4
{
  a3->var0 = 1;
  *(&a3->var0 + 1) = a4->var0;
  *(&a3->var1.var0.var0 + 1) = a4->var2;
  v4 = *a4->var5;
  v5 = *&a4->var5[4];
  *(&a3->var1.var0.var2[7] + 1) = a4->var5[8];
  *(&a3->var1.var0.var2[3] + 1) = v5;
  *(&a3->var1.var0.var1 + 1) = v4;
  *(&a3->var1.var0.var2[8] + 1) = *&a4->var7;
  v6 = *a4->var10;
  *(&a3->var1.var0.var5[6] + 1) = a4->var10[8];
  *(&a3->var1.var0.var3 + 1) = v6;
  HIBYTE(a3->var1.var0.var5[7]) = a4->var6;
  LOBYTE(a3->var1.var0.var5[8]) = a4->var9;
}

- (void)DumpOutputHcu:(id)a3
{
  v3 = a3;

  [v3 bytes];
}

@end