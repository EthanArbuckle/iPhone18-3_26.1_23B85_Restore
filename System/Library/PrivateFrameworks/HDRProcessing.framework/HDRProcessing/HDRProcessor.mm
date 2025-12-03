@interface HDRProcessor
+ (BOOL)isHDRScreenRecording:(__IOSurface *)recording;
+ (BOOL)isNSDataNonEmpty:(id)empty dataLength:(unint64_t *)length dataBytes:(char *)bytes;
+ (id)supportedDestinationColorPropertySets;
+ (id)supportedDestinationPixelFormatTypes;
+ (id)supportedSourceColorPropertySets;
+ (id)supportedSourcePixelFormatTypes;
+ (int64_t)parseHDR10PlusSEI:(id)i outputMetadata:(id *)metadata;
+ (int64_t)parseHDR10PlusSEIMessage:(id)message outputMetadata:(id *)metadata;
+ (int64_t)parseHDR10PlusSEIWithInputSurface:(__IOSurface *)surface outputMetadata:(id *)metadata;
+ (void)dolbyIOMFBMetadata:(id *)metadata withFilteredMinPQ:(float)q FilteredMaxPQ:(float)pQ FilteredAvgPQ:(float)avgPQ EnableLevel4:(BOOL)level4 FilteredAvg:(float)avg FilteredStdDev:(float)dev;
+ (void)dolbyIOMFBMetadata:(id *)metadata withMinBrightness:(float)brightness maxBrightness:(float)maxBrightness;
- (BOOL)allocateSceneLuxB2DItpMLModel;
- (BOOL)applyDoVi81PolicyWithInput:(__IOSurface *)input WithRPU:(BOOL)u;
- (BOOL)hasMetalDeviceChanged:(id)changed;
- (BOOL)isFormatSupportedByDISP:(unsigned int)p outputFormat:(unsigned int)format;
- (BOOL)isFormatSupportedByGPU:(unsigned int)u outputFormat:(unsigned int)format device:(id)device;
- (BOOL)isFormatSupportedByMSR:(unsigned int)r outputFormat:(unsigned int)format;
- (HDRProcessor)initWithConfig:(id *)config;
- (HDRProcessor)initWithDevice:(id)device config:(id *)config;
- (id)initProcessingEngine:(id)engine config:(id *)config;
- (int64_t)ValidateDISPColorConfigInput:(unsigned int)input inputSurface:(__IOSurface *)surface;
- (int64_t)ValidateMSRColorConfigInput:(unsigned int)input inputSurface:(__IOSurface *)surface outputSurface:(__IOSurface *)outputSurface;
- (int64_t)checkInputIOSurface:(__IOSurface *)surface forInfoFrame:(id *)frame withRPUData:(BOOL)data tcControl:(ToneCurve_Control *)control;
- (int64_t)encodeToCommandBuffer:(id)buffer inputSurfaceLayer0:(__IOSurface *)layer0 inputSurfacelayer1:(__IOSurface *)surfacelayer1 outputSurface:(__IOSurface *)surface metadata:(id)metadata;
- (int64_t)extractHEVCHDRParameterFromInputIOSurface:(__IOSurface *)surface forInfoFrame:(id *)frame tcControl:(ToneCurve_Control *)control;
- (int64_t)processFrameInternalWithLayer0:(__IOSurface *)layer0 layer1:(__IOSurface *)layer1 outout:(__IOSurface *)outout metadata:(id)metadata commandbuffer:(id)commandbuffer operation:(unsigned int)operation config:(id *)config histogram:(RgbHistogram_t *)self0 data:(id *)self1;
- (int64_t)processFrameWithLayer0:(__CVBuffer *)layer0 layer1:(__CVBuffer *)layer1 output:(__CVBuffer *)output metadata:(id)metadata commandbuffer:(id)commandbuffer callback:(id)callback;
- (int64_t)processPixelsWithLayer0:(__IOSurface *)layer0 layer1:(__IOSurface *)layer1 output:(__IOSurface *)output metaData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl hdr10InfoFrame:(id *)frame commandbuffer:(id)self0 frameNumebr:(unint64_t)self1;
- (int64_t)updateDoVi81StateWithRPU:(BOOL)u hasHDR10PlusSEIData:(BOOL)data;
- (unsigned)selectHDRUsage:(unsigned int)usage withRPU:(BOOL)u;
- (void)dealloc;
- (void)extractCAMetaData:(id)data withRPU:(BOOL)u;
- (void)extractFrameMetadata:(__CFDictionary *)metadata intoTCControl:(ToneCurve_Control *)control;
- (void)extractHEVCHDRParameterFromInputIOSurfaceForDovi:(__IOSurface *)dovi forInfoFrame:(id *)frame tcControl:(ToneCurve_Control *)control;
- (void)extractHEVCHDRParameterFromOutputIOSurface:(__IOSurface *)surface;
- (void)getAMVEStrengthValue:(id)value;
- (void)getAMVEStrengthValueFromIOSurface:(__IOSurface *)surface;
- (void)getAmbientViewingEnvironmentType:(__IOSurface *)type;
- (void)getDisplayPipelineCompensationType:(id)type gamma:(float)gamma;
- (void)getGCPGammaValue:(id)value;
- (void)getHCRUseSystemBrightness;
- (void)getHDRConstraintStrengthValue:(id)value;
- (void)getHybridCanonicalRenderingEnablement;
- (void)getSceneIllumination:(__IOSurface *)illumination;
- (void)logConstraintWithValue:(float)value fromCA:(BOOL)a onExit:(BOOL)exit;
- (void)releaseResources;
- (void)setCSCMatrixInHDRControl:(id *)control forIndex:(unsigned int)index;
- (void)setCanonicalScreenCaptureParameters:(ToneCurve_Control *)parameters withOperation:(unsigned int *)operation;
- (void)setHDRControl:(id *)control withTCControl:(ToneCurve_Control *)cControl withRPU:(BOOL)u withMMR:(BOOL)r withDmData:(id *)data withOperation:(unsigned int)operation;
@end

@implementation HDRProcessor

- (BOOL)allocateSceneLuxB2DItpMLModel
{
  v3 = objc_alloc_init(sceneLuxB2DItpMLModel);
  [(DolbyVisionDisplayManagement *)self->_dm initWithModelPointer:v3];

  return 1;
}

- (BOOL)isFormatSupportedByMSR:(unsigned int)r outputFormat:(unsigned int)format
{
  if (r)
  {
    v6 = isSupportedMSRInputFormat(r, v4);
    if (!format)
    {
      return v6;
    }
  }

  else
  {
    v6 = 1;
    if (!format)
    {
      return v6;
    }
  }

  if (v6)
  {

    LOBYTE(v6) = isSupportedMSROutputFormat(format);
  }

  return v6;
}

- (BOOL)isFormatSupportedByDISP:(unsigned int)p outputFormat:(unsigned int)format
{
  if (p)
  {
    return isSupportedMSRInputFormat(p, v4);
  }

  else
  {
    return 1;
  }
}

- (BOOL)isFormatSupportedByGPU:(unsigned int)u outputFormat:(unsigned int)format device:(id)device
{
  deviceCopy = device;
  v8 = deviceCopy;
  if (deviceCopy)
  {
    name = [deviceCopy name];
    v10 = [name containsString:@"Apple"];

    if (!u)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 1;
    if (!u)
    {
      goto LABEL_7;
    }
  }

  if (v10)
  {
    v10 = isSupportedGPUInputFormat(u, 1);
  }

LABEL_7:
  if (format)
  {
    if (v10)
    {
      LOBYTE(v10) = 1;
      if (format != 1380411457 && format != 1815162994)
      {
        LOBYTE(v10) = format == 1919365992;
      }
    }
  }

  return v10;
}

+ (BOOL)isHDRScreenRecording:(__IOSurface *)recording
{
  v6 = 0;
  v7 = 0;
  if (!recording)
  {
    return 0;
  }

  v3 = IOSurfaceCopyValue(recording, @"HDR10PlusData");
  if ([HDRProcessor isNSDataNonEmpty:v3 dataLength:&v7 dataBytes:&v6])
  {
    v4 = [HDRProcessor isHdr10PlusSEIScreenRecording:v6 dataLength:v7];
    if (!v3)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }

  return v4;
}

+ (id)supportedSourcePixelFormatTypes
{
  if (qword_280C71918 != -1)
  {
    dispatch_once(&qword_280C71918, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

void __47__HDRProcessor_supportedSourcePixelFormatTypes__block_invoke()
{
  v16[13] = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:1380411457];
  v16[0] = v15;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:2033463606];
  v16[1] = v14;
  v13 = [MEMORY[0x277CCABB0] numberWithInt:1937126452];
  v16[2] = v13;
  v0 = [MEMORY[0x277CCABB0] numberWithInt:2016687156];
  v16[3] = v0;
  v1 = [MEMORY[0x277CCABB0] numberWithInt:2019963956];
  v16[4] = v1;
  v2 = [MEMORY[0x277CCABB0] numberWithInt:1983000886];
  v16[5] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:1937125938];
  v16[6] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:2016686642];
  v16[7] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:2019963442];
  v16[8] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:2016686640];
  v16[9] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:2019963440];
  v16[10] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:875704438];
  v16[11] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:875704422];
  v16[12] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:13];
  v11 = _MergedGlobals_3;
  _MergedGlobals_3 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)supportedDestinationPixelFormatTypes
{
  if (qword_280C71928 != -1)
  {
    dispatch_once(&qword_280C71928, &__block_literal_global_42);
  }

  v3 = qword_280C71920;

  return v3;
}

void __52__HDRProcessor_supportedDestinationPixelFormatTypes__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:1380411457];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = qword_280C71920;
  qword_280C71920 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)supportedSourceColorPropertySets
{
  if (qword_280C71938 != -1)
  {
    dispatch_once(&qword_280C71938, &__block_literal_global_44);
  }

  v3 = qword_280C71930;

  return v3;
}

void __48__HDRProcessor_supportedSourceColorPropertySets__block_invoke()
{
  v18[2] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CC4C18];
  v2 = *MEMORY[0x277CC4CC0];
  v14[0] = *MEMORY[0x277CC4C00];
  v0 = v14[0];
  v14[1] = v2;
  v3 = *MEMORY[0x277CC4CD0];
  v16[0] = v1;
  v16[1] = v3;
  v15 = *MEMORY[0x277CC4D10];
  v4 = v15;
  v17 = *MEMORY[0x277CC4D18];
  v5 = v17;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v14 count:3];
  v18[0] = v6;
  v12[0] = v0;
  v12[1] = v2;
  v7 = *MEMORY[0x277CC4CF0];
  v13[0] = v1;
  v13[1] = v7;
  v12[2] = v4;
  v13[2] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v18[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v10 = qword_280C71930;
  qword_280C71930 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)supportedDestinationColorPropertySets
{
  if (qword_280C71948 != -1)
  {
    dispatch_once(&qword_280C71948, &__block_literal_global_47);
  }

  v3 = qword_280C71940;

  return v3;
}

void __53__HDRProcessor_supportedDestinationColorPropertySets__block_invoke()
{
  v15[2] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CC4C30];
  v2 = *MEMORY[0x277CC4CC0];
  v12[0] = *MEMORY[0x277CC4C00];
  v0 = v12[0];
  v12[1] = v2;
  v3 = *MEMORY[0x277CC4D08];
  v14[0] = v1;
  v14[1] = v3;
  v13 = *MEMORY[0x277CC4D10];
  v4 = v13;
  v14[2] = *MEMORY[0x277CC4D28];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v12 count:3];
  v15[0] = v5;
  v10[0] = v0;
  v10[1] = v2;
  v11[0] = v1;
  v11[1] = v3;
  v10[2] = v4;
  v11[2] = *MEMORY[0x277CC4D18];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v8 = qword_280C71940;
  qword_280C71940 = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (HDRProcessor)initWithConfig:(id *)config
{
  v51 = *MEMORY[0x277D85DE8];
  self->_logOnce = 1;
  v44.receiver = self;
  v44.super_class = HDRProcessor;
  v4 = [(HDRProcessor *)&v44 init];
  v5 = v4;
  v6 = v4 + 843776;
  if (!v4)
  {
    goto LABEL_30;
  }

  v7 = *&config->var0;
  v8 = *&config->var4;
  *(v4 + 105786) = *&config->var6;
  *(v4 + 52891) = v7;
  *(v4 + 52892) = v8;
  DWORD1(v7) = 1065353216;
  *(v4 + 846356) = xmmword_2508CDFC0;
  LODWORD(v7) = *(v4 + 211567);
  *(v4 + 105797) = v7;
  *(v4 + 105799) = *(v4 + 105785);
  v9 = *(v4 + 211573);
  *(v4 + 211468) = v9;
  if (v9 >= 3)
  {
    if (enableLogInstance)
    {
      if (*(v4 + 105793))
      {
        v17 = *(v4 + 105793);
      }

      else
      {
        v17 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v46 = WORD1(v17);
        v47 = 2080;
        v48 = "[HDRProcessor initWithConfig:]";
        v49 = 1024;
        LODWORD(v50) = v9;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : unknown HDRProcessing hw type %d, switching to GPU", buf, 0x1Cu);
      }

      prevLogInstanceID = v17;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "[HDRProcessor initWithConfig:]";
      v47 = 1024;
      LODWORD(v48) = v9;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : unknown HDRProcessing hw type %d, switching to GPU", buf, 0x12u);
    }

    *(v6 + 524) = 0;
    v10 = (v6 + 2568);
    *(v6 + 321) = v5;
    goto LABEL_20;
  }

  v10 = (v4 + 846344);
  *(v4 + 105793) = v4;
  if (v9 == 1)
  {
    v28 = *(v4 + 1);
    *(v4 + 1) = 0;

    v29 = *(v5 + 2);
    *(v5 + 2) = 0;

    v30 = [[DolbyVisionDisplayManagement alloc] initWithTmLutSize:513];
    v31 = *(v5 + 8);
    *(v5 + 8) = v30;

    if (!*(v5 + 8))
    {
      goto LABEL_23;
    }

    v32 = [[DolbyVisionDisplayManagement alloc] initWithTmLutSize:513];
    v33 = *(v5 + 9);
    *(v5 + 9) = v32;

    if (!*(v5 + 9))
    {
      goto LABEL_23;
    }

    v34 = objc_alloc_init(DolbyVisionMR);
    v35 = *(v5 + 10);
    *(v5 + 10) = v34;

    if (!*(v5 + 10))
    {
      goto LABEL_23;
    }

    *(v5 + 3) = MGGetSInt64Answer();
    if (IsVirtualized() & 1) != 0 || GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x12Du, 1)))
    {
      v37 = off_27969FF00;
LABEL_51:
      newCommandQueue = objc_alloc_init(*v37);
      v21 = 32;
      goto LABEL_21;
    }

    v42 = *(v5 + 3);
    if (v42 <= 24655)
    {
      if ((v42 - 24576) > 0x34)
      {
        goto LABEL_63;
      }

      if (((1 << v42) & 0x17000000000000) == 0)
      {
        if (((1 << v42) & 7) == 0)
        {
          if (((1 << v42) & 0x700000000) == 0)
          {
LABEL_63:
            if ((v42 - 24640) >= 2)
            {
              goto LABEL_79;
            }

LABEL_78:
            v37 = off_27969FF20;
            goto LABEL_51;
          }

LABEL_72:
          v37 = off_27969FF10;
          goto LABEL_51;
        }

LABEL_77:
        v37 = off_27969FF08;
        goto LABEL_51;
      }

LABEL_73:
      v37 = off_27969FF18;
      goto LABEL_51;
    }

    v37 = off_27969FF28;
    if (v42 <= 33039)
    {
      if (v42 == 24656)
      {
        goto LABEL_51;
      }

      if (v42 != 33025 && v42 != 33027)
      {
LABEL_79:
        v37 = off_27969FEF8;
        goto LABEL_51;
      }

      goto LABEL_77;
    }

    v43 = v42 - 32;
    if ((v42 - 33056) <= 0x30)
    {
      if (((1 << v43) & 0x10005) != 0)
      {
        goto LABEL_73;
      }

      if (((1 << v43) & 0x100040000) != 0)
      {
        goto LABEL_78;
      }

      if (((1 << v43) & 0x1000400000000) != 0)
      {
        goto LABEL_51;
      }
    }

    if (v42 != 33040 && v42 != 33042)
    {
      goto LABEL_79;
    }

    goto LABEL_72;
  }

  if (v9 != 2)
  {
LABEL_20:
    v18 = MTLCreateSystemDefaultDevice();
    v19 = *(v5 + 1);
    *(v5 + 1) = v18;

    newCommandQueue = [*(v5 + 1) newCommandQueue];
    v21 = 16;
LABEL_21:
    v22 = *&v5[v21];
    *&v5[v21] = newCommandQueue;

    goto LABEL_22;
  }

  v11 = *(v4 + 1);
  *(v4 + 1) = 0;

  v12 = *(v5 + 2);
  *(v5 + 2) = 0;

  v13 = [[DolbyVisionDisplayManagement alloc] initWithTmLutSize:513];
  v14 = *(v5 + 8);
  *(v5 + 8) = v13;

  if (!*(v5 + 8))
  {
    goto LABEL_56;
  }

  v15 = MGGetSInt64Answer();
  *(v5 + 3) = v15;
  if ((v15 - 33058) <= 0x2E)
  {
    if (((1 << (v15 - 34)) & 0x400140010000) != 0)
    {
LABEL_54:
      v16 = off_27969FEA8;
      goto LABEL_55;
    }

    if (v15 == 33058)
    {
      v16 = off_27969FEA0;
LABEL_55:
      v38 = objc_alloc_init(*v16);
      v39 = *(v5 + 5);
      *(v5 + 5) = v38;

      goto LABEL_56;
    }
  }

  if ((v15 - 24640) <= 0x10 && ((1 << (v15 - 64)) & 0x10003) != 0)
  {
    goto LABEL_54;
  }

LABEL_56:
  v40 = [[DolbyVisionDisplayManagement alloc] initWithTmLutSize:513];
  v41 = *(v5 + 9);
  *(v5 + 9) = v40;

  if (!*(v5 + 5))
  {
    goto LABEL_23;
  }

LABEL_22:
  if ([v5 allocateResources])
  {
LABEL_23:
    if (enableLogInstance)
    {
      if (*v10)
      {
        v23 = *v10;
      }

      else
      {
        v23 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v46 = WORD1(v23);
        v47 = 2080;
        v48 = "[HDRProcessor initWithConfig:]";
        v49 = 2048;
        v50 = v5;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Initialization Failed, self=%p\n", buf, 0x20u);
      }

      prevLogInstanceID = v23;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "[HDRProcessor initWithConfig:]";
      v47 = 2048;
      v48 = v5;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Initialization Failed, self=%p\n", buf, 0x16u);
    }

    [v5 releaseResources];
    v25 = 0;
    goto LABEL_43;
  }

LABEL_30:
  if (enableLogInstance)
  {
    if (*(v6 + 321))
    {
      v24 = *(v6 + 321);
    }

    else
    {
      v24 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v46 = WORD1(v24);
      v47 = 2080;
      v48 = "[HDRProcessor initWithConfig:]";
      v49 = 2048;
      v50 = v5;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s : instance=%p\n", buf, 0x20u);
    }

    prevLogInstanceID = v24;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "[HDRProcessor initWithConfig:]";
    v47 = 2048;
    v48 = v5;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s : instance=%p\n", buf, 0x16u);
  }

  v25 = v5;
LABEL_43:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (HDRProcessor)initWithDevice:(id)device config:(id *)config
{
  v32 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  self->_logOnce = 1;
  v25.receiver = self;
  v25.super_class = HDRProcessor;
  v7 = [(HDRProcessor *)&v25 init];
  v8 = v7;
  v9 = v7 + 843776;
  if (!v7)
  {
    if (enableLogInstance)
    {
      if (MEMORY[0xCEA08])
      {
        v14 = MEMORY[0xCEA08];
      }

      else
      {
        v14 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v27 = WORD1(v14);
        v28 = 2080;
        v29 = "[HDRProcessor initWithDevice:config:]";
        v30 = 2048;
        v31 = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Initialization Failed, self = %p\n", buf, 0x20u);
      }

      prevLogInstanceID = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 136315394;
      v27 = "[HDRProcessor initWithDevice:config:]";
      v28 = 2048;
      v29 = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Initialization Failed, self = %p\n", buf, 0x16u);
    }

LABEL_18:
    if (enableLogInstance)
    {
      if (*(v9 + 321))
      {
        v20 = *(v9 + 321);
      }

      else
      {
        v20 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v27 = WORD1(v20);
        v28 = 2080;
        v29 = "[HDRProcessor initWithDevice:config:]";
        v30 = 2048;
        v31 = v8;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s : instance=%p\n", buf, 0x20u);
      }

      prevLogInstanceID = v20;
LABEL_27:
      v21 = v8;
      goto LABEL_28;
    }

LABEL_25:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[HDRProcessor initWithDevice:config:]";
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s : instance=%p\n", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v10 = *&config->var0;
  v11 = *&config->var4;
  *(v7 + 105786) = *&config->var6;
  *(v7 + 52891) = v10;
  *(v7 + 52892) = v11;
  DWORD1(v10) = 1065353216;
  *(v7 + 846356) = xmmword_2508CDFC0;
  LODWORD(v10) = *(v7 + 211567);
  *(v7 + 105797) = v10;
  *(v7 + 105799) = *(v7 + 105785);
  *(v7 + 211468) = 0;
  *(v7 + 105793) = v7;
  if (*(v7 + 1))
  {
    goto LABEL_18;
  }

  if (deviceCopy)
  {
    v12 = deviceCopy;
    v13 = v8[1];
    v8[1] = v12;
  }

  else
  {
    v15 = MTLCreateSystemDefaultDevice();
    v16 = v8[1];
    v8[1] = v15;

    v17 = v8[1];
    if (!v17)
    {
      v19 = -17005;
      goto LABEL_30;
    }

    newCommandQueue = [v17 newCommandQueue];
    v13 = v8[2];
    v8[2] = newCommandQueue;
  }

  if (([v8 allocateResources] & 1) == 0)
  {
    goto LABEL_18;
  }

  v19 = -17004;
LABEL_30:
  if (enableLogInstance)
  {
    if (*(v9 + 321))
    {
      v24 = *(v9 + 321);
    }

    else
    {
      v24 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v27 = WORD1(v24);
      v28 = 2080;
      v29 = "[HDRProcessor initWithDevice:config:]";
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s : failed with error %ld\n", buf, 0x20u);
    }

    prevLogInstanceID = v24;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[HDRProcessor initWithDevice:config:]";
    v28 = 2048;
    v29 = v19;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s : failed with error %ld\n", buf, 0x16u);
  }

  [v8 releaseResources];
  v21 = 0;
LABEL_28:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)initProcessingEngine:(id)engine config:(id *)config
{
  v49 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  self->_logOnce = 1;
  v42.receiver = self;
  v42.super_class = HDRProcessor;
  v7 = [(HDRProcessor *)&v42 init];
  v8 = v7;
  v9 = v7 + 843776;
  if (!v7)
  {
    goto LABEL_35;
  }

  v10 = *&config->var0;
  v11 = *&config->var4;
  *(v7 + 105786) = *&config->var6;
  *(v7 + 52891) = v10;
  *(v7 + 52892) = v11;
  DWORD1(v10) = 1065353216;
  *(v7 + 846356) = xmmword_2508CDFC0;
  LODWORD(v10) = *(v7 + 211567);
  *(v7 + 105797) = v10;
  *(v7 + 105799) = *(v7 + 105785);
  *(v7 + 105793) = v7;
  if (!*(v7 + 1))
  {
    if (engineCopy)
    {
      v12 = engineCopy;
      v13 = *(v8 + 1);
      *(v8 + 1) = v12;
    }

    else
    {
      v14 = MTLCreateSystemDefaultDevice();
      v15 = *(v8 + 1);
      *(v8 + 1) = v14;

      v16 = *(v8 + 1);
      if (!v16)
      {
LABEL_28:
        if (enableLogInstance)
        {
          if (*(v9 + 321))
          {
            v35 = *(v9 + 321);
          }

          else
          {
            v35 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v44 = WORD1(v35);
            v45 = 2080;
            v46 = "[HDRProcessor initProcessingEngine:config:]";
            v47 = 2048;
            v48 = v8;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Initialization Failed, self=%p\n", buf, 0x20u);
          }

          prevLogInstanceID = v35;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v44 = "[HDRProcessor initProcessingEngine:config:]";
          v45 = 2048;
          v46 = v8;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Initialization Failed, self=%p\n", buf, 0x16u);
        }

        [v8 releaseResources];
        v37 = 0;
        goto LABEL_48;
      }

      newCommandQueue = [v16 newCommandQueue];
      v13 = *(v8 + 2);
      *(v8 + 2) = newCommandQueue;
    }
  }

  v18 = [[DolbyVisionDisplayManagement alloc] initTmEngine:513 device:*(v8 + 1)];
  v19 = *(v8 + 8);
  *(v8 + 8) = v18;

  if (!*(v8 + 8))
  {
    goto LABEL_28;
  }

  v20 = [[DolbyVisionDisplayManagement alloc] initTmEngine:513 device:*(v8 + 1)];
  v21 = *(v8 + 9);
  *(v8 + 9) = v20;

  if (!*(v8 + 9))
  {
    goto LABEL_28;
  }

  v22 = objc_alloc_init(DolbyVisionMR);
  v23 = *(v8 + 10);
  *(v8 + 10) = v22;

  if (!*(v8 + 10))
  {
    goto LABEL_28;
  }

  v24 = MGGetSInt64Answer();
  *(v8 + 3) = v24;
  if (v24 != 32784)
  {
    if (GetConfig())
    {
      Config = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(Config, 0xBAu, 1) == 1)
      {
        [v8 allocateSceneLuxB2DItpMLModel];
      }
    }
  }

  if (IsVirtualized() & 1) != 0 || GetConfig() && (v26 = GetConfig(), (*HDRConfig::GetConfigEntryValue(v26, 0x12Du, 1)))
  {
    v27 = off_27969FF00;
    goto LABEL_19;
  }

  v40 = *(v8 + 3);
  if (v40 > 24655)
  {
    v27 = off_27969FF28;
    if (v40 <= 33039)
    {
      if (v40 == 24656)
      {
        goto LABEL_19;
      }

      if (v40 != 33025 && v40 != 33027)
      {
        goto LABEL_70;
      }

LABEL_68:
      v27 = off_27969FF08;
      goto LABEL_19;
    }

    v41 = v40 - 32;
    if ((v40 - 33056) <= 0x30)
    {
      if (((1 << v41) & 0x10005) != 0)
      {
        goto LABEL_64;
      }

      if (((1 << v41) & 0x100040000) != 0)
      {
        goto LABEL_69;
      }

      if (((1 << v41) & 0x1000400000000) != 0)
      {
        goto LABEL_19;
      }
    }

    if (v40 != 33040 && v40 != 33042)
    {
      goto LABEL_70;
    }

LABEL_63:
    v27 = off_27969FF10;
    goto LABEL_19;
  }

  if ((v40 - 24576) > 0x34)
  {
    goto LABEL_54;
  }

  if (((1 << v40) & 0x17000000000000) != 0)
  {
LABEL_64:
    v27 = off_27969FF18;
    goto LABEL_19;
  }

  if (((1 << v40) & 7) != 0)
  {
    goto LABEL_68;
  }

  if (((1 << v40) & 0x700000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_54:
  if ((v40 - 24640) < 2)
  {
LABEL_69:
    v27 = off_27969FF20;
    goto LABEL_19;
  }

LABEL_70:
  v27 = off_27969FEF8;
LABEL_19:
  v28 = objc_alloc_init(*v27);
  v29 = *(v8 + 4);
  *(v8 + 4) = v28;

  v30 = *(v8 + 3);
  if ((v30 - 33058) <= 0x2E)
  {
    if (((1 << (v30 - 34)) & 0x400140010000) != 0)
    {
LABEL_25:
      v31 = off_27969FEA8;
      goto LABEL_26;
    }

    if (v30 == 33058)
    {
      v31 = off_27969FEA0;
LABEL_26:
      v33 = objc_alloc_init(*v31);
      v34 = *(v8 + 5);
      *(v8 + 5) = v33;

      goto LABEL_27;
    }
  }

  v32 = v30 - 24640;
  if (v32 <= 0x10 && ((1 << v32) & 0x10003) != 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  if ([v8 allocateEngineResources])
  {
    goto LABEL_28;
  }

LABEL_35:
  if (enableLogInstance)
  {
    if (*(v9 + 321))
    {
      v36 = *(v9 + 321);
    }

    else
    {
      v36 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v44 = WORD1(v36);
      v45 = 2080;
      v46 = "[HDRProcessor initProcessingEngine:config:]";
      v47 = 2048;
      v48 = v8;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s : instance=%p\n", buf, 0x20u);
    }

    prevLogInstanceID = v36;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v44 = "[HDRProcessor initProcessingEngine:config:]";
    v45 = 2048;
    v46 = v8;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s : instance=%p\n", buf, 0x16u);
  }

  v37 = v8;
LABEL_48:

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  [(HDRProcessor *)self releaseResources];
  [(HDRProcessor *)self logConstraintWithValue:0 fromCA:1 onExit:0.0];
  if (enableLogInstance)
  {
    if (self->logInstanceID)
    {
      logInstanceID = self->logInstanceID;
    }

    else
    {
      logInstanceID = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v7 = WORD1(logInstanceID);
      v8 = 2080;
      selfCopy2 = "[HDRProcessor dealloc]";
      v10 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx -- %s: HDRProcessor exit! instance=%p\n", buf, 0x20u);
    }

    prevLogInstanceID = logInstanceID;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[HDRProcessor dealloc]";
    v8 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] -- %s: HDRProcessor exit! instance=%p\n", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = HDRProcessor;
  [(HDRProcessor *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)releaseResources
{
  v3 = (&self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960);
  composer = self->_composer;
  self->_composer = 0;

  resampler = self->_resampler;
  self->_resampler = 0;

  dm = self->_dm;
  self->_dm = 0;

  dm_constr = self->_dm_constr;
  self->_dm_constr = 0;

  commandQueue = self->_commandQueue;
  self->_commandQueue = 0;

  device = self->_device;
  self->_device = 0;

  msr = self->_msr;
  self->_msr = 0;

  disp = self->_disp;
  self->_disp = 0;

  mr = self->_mr;
  self->_mr = 0;

  parser = self->_parser;
  if (parser)
  {
    MEMORY[0x253062620](parser, 0x1091C40494E7791);
    self->_parser = 0;
  }

  v14 = v3[248];
  if (v14)
  {
    MEMORY[0x253062620](v14, 0x1091C40A2BD7073);
    v3[248] = 0;
  }

  v15 = v3[316];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = v3[315];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v3[317];
  v3[317] = 0;

  v18 = v3[318];
  v3[318] = 0;

  v19 = v3[319];
  v3[319] = 0;

  v20 = v3[320];
  if (v20)
  {

    CFRelease(v20);
  }
}

- (int64_t)processFrameWithLayer0:(__CVBuffer *)layer0 layer1:(__CVBuffer *)layer1 output:(__CVBuffer *)output metadata:(id)metadata commandbuffer:(id)commandbuffer callback:(id)callback
{
  metadataCopy = metadata;
  callbackCopy = callback;
  CFRetain(layer0);
  if (layer1)
  {
    CFRetain(layer1);
  }

  CFRetain(output);
  ++self->_numberOfRequestedFrames;
  scheduleQueue = self->_scheduleQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__HDRProcessor_processFrameWithLayer0_layer1_output_metadata_commandbuffer_callback___block_invoke;
  v19[3] = &unk_2796A0690;
  layer1Copy = layer1;
  outputCopy = output;
  v19[4] = self;
  v20 = metadataCopy;
  v21 = callbackCopy;
  layer0Copy = layer0;
  v16 = callbackCopy;
  v17 = metadataCopy;
  dispatch_async(scheduleQueue, v19);

  return -17000;
}

void __85__HDRProcessor_processFrameWithLayer0_layer1_output_metadata_commandbuffer_callback___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 846328), 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(*(a1 + 32) + 16) commandBuffer];
  IOSurface = CVPixelBufferGetIOSurface(*(a1 + 56));
  v4 = CVPixelBufferGetIOSurface(*(a1 + 64));
  [*(a1 + 32) processFrameInternalWithLayer0:IOSurface layer1:v4 outout:CVPixelBufferGetIOSurface(*(a1 + 72)) metadata:*(a1 + 40) commandbuffer:v2 operation:0 config:0 histogram:0 data:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HDRProcessor_processFrameWithLayer0_layer1_output_metadata_commandbuffer_callback___block_invoke_2;
  v7[3] = &unk_2796A0668;
  v7[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = v6;
  v8 = v6;
  v9 = *(a1 + 72);
  [v2 addScheduledHandler:v7];
  [v2 commit];
}

void __85__HDRProcessor_processFrameWithLayer0_layer1_output_metadata_commandbuffer_callback___block_invoke_2(uint64_t a1)
{
  CFRelease(*(a1 + 48));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 846320);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HDRProcessor_processFrameWithLayer0_layer1_output_metadata_commandbuffer_callback___block_invoke_3;
  block[3] = &unk_2796A0640;
  block[4] = v3;
  v5 = v2;
  v6 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
  dispatch_semaphore_signal(*(*(a1 + 32) + 846328));
}

void __85__HDRProcessor_processFrameWithLayer0_layer1_output_metadata_commandbuffer_callback___block_invoke_3(void *a1)
{
  ++*(a1[4] + 846240);
  v2 = *(a1[4] + 846336);
  (*(a1[5] + 16))();
  v3 = a1[6];

  CFRelease(v3);
}

- (BOOL)hasMetalDeviceChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  registryID = [(MTLDevice *)self->_device registryID];
  device = [changedCopy device];
  registryID2 = [device registryID];

  if (registryID2 != registryID)
  {
    if (enableLogInstance)
    {
      if (self->logInstanceID)
      {
        logInstanceID = self->logInstanceID;
      }

      else
      {
        logInstanceID = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218242;
        v12 = WORD1(logInstanceID);
        v13 = 2080;
        v14 = "[HDRProcessor hasMetalDeviceChanged:]";
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s : metalDevice has changed!\n", &v11, 0x16u);
      }

      prevLogInstanceID = logInstanceID;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[HDRProcessor hasMetalDeviceChanged:]";
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s : metalDevice has changed!\n", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return registryID2 != registryID;
}

- (int64_t)encodeToCommandBuffer:(id)buffer inputSurfaceLayer0:(__IOSurface *)layer0 inputSurfacelayer1:(__IOSurface *)surfacelayer1 outputSurface:(__IOSurface *)surface metadata:(id)metadata
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  bufferCopy = buffer;
  metadataCopy = metadata;
  v15 = metadataCopy;
  if (layer0 && surface && metadataCopy)
  {
    *(v12 + 524) = 0;
    chromVectorWeight = 1077936128;
    if ([(HDRProcessor *)self hasMetalDeviceChanged:bufferCopy])
    {
      if (enableLogInstance)
      {
        if (*(v12 + 321))
        {
          v16 = *(v12 + 321);
        }

        else
        {
          v16 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v23 = WORD1(v16);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx failed due to metalDevice change!", buf, 0xCu);
        }

        prevLogInstanceID = v16;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v18 = -17000;
          goto LABEL_36;
        }

        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] failed due to metalDevice change!", buf, 2u);
      }

      v18 = -17000;
    }

    else
    {
      ++*(v12 + 306);
      v18 = [(HDRProcessor *)self processFrameInternalWithLayer0:layer0 layer1:surfacelayer1 outout:surface metadata:v15 commandbuffer:bufferCopy operation:0 config:0 histogram:0 data:0];
      if (v18 == -17000)
      {
        ++g_frame_idx;
        v18 = -17000;
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (enableLogInstance)
    {
      if (*(v12 + 321))
      {
        v17 = *(v12 + 321);
      }

      else
      {
        v17 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219266;
        v23 = WORD1(v17);
        v24 = 2080;
        layer0Copy2 = "[HDRProcessor encodeToCommandBuffer:inputSurfaceLayer0:inputSurfacelayer1:outputSurface:metadata:]";
        v26 = 2048;
        surfacelayer1Copy2 = layer0;
        v28 = 2048;
        surfaceCopy2 = surfacelayer1;
        v30 = 2048;
        surfaceCopy = surface;
        v32 = 2048;
        v33 = v15;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : layer0=%p, layer1=%p, output=%p, metatdata=%p", buf, 0x3Eu);
      }

      prevLogInstanceID = v17;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v18 = -17006;
        goto LABEL_36;
      }

      *buf = 136316162;
      v23 = "[HDRProcessor encodeToCommandBuffer:inputSurfaceLayer0:inputSurfacelayer1:outputSurface:metadata:]";
      v24 = 2048;
      layer0Copy2 = layer0;
      v26 = 2048;
      surfacelayer1Copy2 = surfacelayer1;
      v28 = 2048;
      surfaceCopy2 = surface;
      v30 = 2048;
      surfaceCopy = v15;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : layer0=%p, layer1=%p, output=%p, metatdata=%p", buf, 0x34u);
    }

    v18 = -17006;
  }

  if (enableLogInstance)
  {
    if (*(v12 + 321))
    {
      v19 = *(v12 + 321);
    }

    else
    {
      v19 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v23 = WORD1(v19);
      v24 = 2080;
      layer0Copy2 = "[HDRProcessor encodeToCommandBuffer:inputSurfaceLayer0:inputSurfacelayer1:outputSurface:metadata:]";
      v26 = 1024;
      LODWORD(surfacelayer1Copy2) = v18;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : failed with error %d\n", buf, 0x1Cu);
    }

    prevLogInstanceID = v19;
    goto LABEL_38;
  }

LABEL_36:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[HDRProcessor encodeToCommandBuffer:inputSurfaceLayer0:inputSurfacelayer1:outputSurface:metadata:]";
    v24 = 1024;
    LODWORD(layer0Copy2) = v18;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : failed with error %d\n", buf, 0x12u);
  }

LABEL_38:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (void)dolbyIOMFBMetadata:(id *)metadata withMinBrightness:(float)brightness maxBrightness:(float)maxBrightness
{
  v14 = *MEMORY[0x277D85DE8];
  if (metadata)
  {
    v5 = *MEMORY[0x277D85DE8];

    [MSRHDRProcessing dolbyIOMFBMetadata:"dolbyIOMFBMetadata:withMinBrightness:maxBrightness:" withMinBrightness:? maxBrightness:?];
  }

  else
  {
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
        v8 = 134218498;
        v9 = WORD1(v6);
        v10 = 2080;
        v11 = "+[HDRProcessor dolbyIOMFBMetadata:withMinBrightness:maxBrightness:]";
        v12 = 2048;
        v13 = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     %s: metatdata= %p, bailout!!!\n", &v8, 0x20u);
      }

      prevLogInstanceID = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "+[HDRProcessor dolbyIOMFBMetadata:withMinBrightness:maxBrightness:]";
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     %s: metatdata= %p, bailout!!!\n", &v8, 0x16u);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

+ (int64_t)parseHDR10PlusSEI:(id)i outputMetadata:(id *)metadata
{
  v23 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v6 = iCopy;
  if (!metadata)
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

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v17 = 134218498;
      v18 = WORD1(v8);
      v19 = 2080;
      v20 = "+[HDRProcessor parseHDR10PlusSEI:outputMetadata:]";
      v21 = 2048;
      v22 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = " [1.450.54] #%04llx     %s: output=%p, bailout!!!\n";
      v11 = 32;
      goto LABEL_16;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v17 = 136315394;
    v18 = "+[HDRProcessor parseHDR10PlusSEI:outputMetadata:]";
    v19 = 2048;
    v20 = 0;
    v12 = MEMORY[0x277D86220];
    v13 = " [1.450.54]     %s: output=%p, bailout!!!\n";
    v14 = 22;
LABEL_22:
    _os_log_impl(&dword_250836000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, v14);
    goto LABEL_23;
  }

  if (!iCopy)
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

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v17 = 134218242;
      v18 = WORD1(v8);
      v19 = 2080;
      v20 = "+[HDRProcessor parseHDR10PlusSEI:outputMetadata:]";
      v9 = MEMORY[0x277D86220];
      v10 = " [1.450.54] #%04llx     %s: missing SEI";
      v11 = 22;
LABEL_16:
      _os_log_impl(&dword_250836000, v9, OS_LOG_TYPE_DEFAULT, v10, &v17, v11);
LABEL_17:
      prevLogInstanceID = v8;
LABEL_23:
      v7 = -17006;
      goto LABEL_24;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v17 = 136315138;
    v18 = "+[HDRProcessor parseHDR10PlusSEI:outputMetadata:]";
    v12 = MEMORY[0x277D86220];
    v13 = " [1.450.54]     %s: missing SEI";
    v14 = 12;
    goto LABEL_22;
  }

  v7 = [HDRProcessor parseHDR10PlusSEIMessage:iCopy outputMetadata:metadata];
LABEL_24:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (int64_t)parseHDR10PlusSEIWithInputSurface:(__IOSurface *)surface outputMetadata:(id *)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  if (!metadata)
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

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = 134218498;
      v15 = WORD1(v7);
      v16 = 2080;
      v17 = "+[HDRProcessor parseHDR10PlusSEIWithInputSurface:outputMetadata:]";
      v18 = 2048;
      v19 = 0;
      v8 = MEMORY[0x277D86220];
      v9 = " [1.450.54] #%04llx     %s: output=%p, bailout!!!\n";
      goto LABEL_17;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v14 = 136315394;
    v15 = "+[HDRProcessor parseHDR10PlusSEIWithInputSurface:outputMetadata:]";
    v16 = 2048;
    v17 = 0;
    v10 = MEMORY[0x277D86220];
    v11 = " [1.450.54]     %s: output=%p, bailout!!!\n";
LABEL_23:
    _os_log_impl(&dword_250836000, v10, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x16u);
    goto LABEL_24;
  }

  if (!surface)
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

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = 134218498;
      v15 = WORD1(v7);
      v16 = 2080;
      v17 = "+[HDRProcessor parseHDR10PlusSEIWithInputSurface:outputMetadata:]";
      v18 = 2048;
      v19 = 0;
      v8 = MEMORY[0x277D86220];
      v9 = " [1.450.54] #%04llx     %s: input=%p";
LABEL_17:
      _os_log_impl(&dword_250836000, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 0x20u);
LABEL_18:
      prevLogInstanceID = v7;
LABEL_24:
      v6 = -17006;
      goto LABEL_25;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v14 = 136315394;
    v15 = "+[HDRProcessor parseHDR10PlusSEIWithInputSurface:outputMetadata:]";
    v16 = 2048;
    v17 = 0;
    v10 = MEMORY[0x277D86220];
    v11 = " [1.450.54]     %s: input=%p";
    goto LABEL_23;
  }

  v5 = IOSurfaceCopyValue(surface, @"HDR10PlusData");
  v6 = [HDRProcessor parseHDR10PlusSEIMessage:v5 outputMetadata:metadata];
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)ValidateMSRColorConfigInput:(unsigned int)input inputSurface:(__IOSurface *)surface outputSurface:(__IOSurface *)outputSurface
{
  v40 = *MEMORY[0x277D85DE8];
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  v9 = IOSurfaceGetPixelFormat(outputSurface);
  FourCCforType = getFourCCforType(PixelFormat);
  v11 = getFourCCforType(v9);
  if ((input & 4) != 0)
  {
    v13 = -17006;
    if (input == 4 && isSupportedMSRColorConversion(FourCCforType, v11))
    {
      v13 = -17000;
    }
  }

  else
  {
    switch(input)
    {
      case 1u:
        if (isSupportedMSRInputFormat(FourCCforType, v12))
        {
          v13 = -17000;
        }

        else
        {
          v13 = -17006;
        }

        break;
      case 3u:
        if (isSupportedMSRInputFormat(FourCCforType, v12))
        {
          v13 = -17000;
          break;
        }

LABEL_20:
        v13 = -17006;
        break;
      case 2u:
        v13 = -17000;
        if (FourCCforType > 1647534391)
        {
          if (FourCCforType == 1647534392)
          {
            break;
          }

          v14 = 1815162994;
        }

        else
        {
          if (FourCCforType == 1378955371)
          {
            break;
          }

          v14 = 1380411457;
        }

        if (FourCCforType != v14)
        {
          goto LABEL_20;
        }

        break;
      default:
        goto LABEL_20;
    }
  }

  if (!isSupportedMSROutputFormat(v11))
  {
    v13 = -17006;
  }

  if (v13 != -17000)
  {
    if (enableLogInstance)
    {
      if (self->logInstanceID)
      {
        logInstanceID = self->logInstanceID;
      }

      else
      {
        logInstanceID = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134222594;
        v19 = WORD1(logInstanceID);
        v20 = 2080;
        *v21 = "[HDRProcessor ValidateMSRColorConfigInput:inputSurface:outputSurface:]";
        *&v21[8] = 1024;
        *v22 = input;
        *&v22[4] = 1024;
        *v23 = BYTE3(PixelFormat);
        *&v23[4] = 1024;
        *v24 = BYTE2(PixelFormat);
        *&v24[4] = 1024;
        *v25 = BYTE1(PixelFormat);
        *&v25[4] = 1024;
        *v26 = PixelFormat;
        *&v26[4] = 1024;
        *v27 = HIBYTE(FourCCforType);
        *&v27[4] = 1024;
        *v28 = BYTE2(FourCCforType);
        *&v28[4] = 1024;
        *v29 = BYTE1(FourCCforType);
        *&v29[4] = 1024;
        *v30 = FourCCforType;
        *&v30[4] = 1024;
        *v31 = BYTE3(v9);
        *&v31[4] = 1024;
        *v32 = BYTE2(v9);
        *&v32[4] = 1024;
        *v33 = BYTE1(v9);
        *&v33[4] = 1024;
        *v34 = v9;
        *&v34[4] = 1024;
        *v35 = HIBYTE(v11);
        *&v35[4] = 1024;
        *v36 = BYTE2(v11);
        *&v36[4] = 1024;
        v37 = BYTE1(v11);
        v38 = 1024;
        v39 = v11;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s : Error: Unsupported MSR input: operation=0x%x, input=%c%c%c%c [%c%c%c%c], output=%c%c%c%c [%c%c%c%c]", &v18, 0x7Cu);
      }

      prevLogInstanceID = logInstanceID;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136319490;
      v19 = "[HDRProcessor ValidateMSRColorConfigInput:inputSurface:outputSurface:]";
      v20 = 1024;
      *v21 = input;
      *&v21[4] = 1024;
      *&v21[6] = BYTE3(PixelFormat);
      *v22 = 1024;
      *&v22[2] = BYTE2(PixelFormat);
      *v23 = 1024;
      *&v23[2] = BYTE1(PixelFormat);
      *v24 = 1024;
      *&v24[2] = PixelFormat;
      *v25 = 1024;
      *&v25[2] = HIBYTE(FourCCforType);
      *v26 = 1024;
      *&v26[2] = BYTE2(FourCCforType);
      *v27 = 1024;
      *&v27[2] = BYTE1(FourCCforType);
      *v28 = 1024;
      *&v28[2] = FourCCforType;
      *v29 = 1024;
      *&v29[2] = BYTE3(v9);
      *v30 = 1024;
      *&v30[2] = BYTE2(v9);
      *v31 = 1024;
      *&v31[2] = BYTE1(v9);
      *v32 = 1024;
      *&v32[2] = v9;
      *v33 = 1024;
      *&v33[2] = HIBYTE(v11);
      *v34 = 1024;
      *&v34[2] = BYTE2(v11);
      *v35 = 1024;
      *&v35[2] = BYTE1(v11);
      *v36 = 1024;
      *&v36[2] = v11;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s : Error: Unsupported MSR input: operation=0x%x, input=%c%c%c%c [%c%c%c%c], output=%c%c%c%c [%c%c%c%c]", &v18, 0x72u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int64_t)ValidateDISPColorConfigInput:(unsigned int)input inputSurface:(__IOSurface *)surface
{
  v28 = *MEMORY[0x277D85DE8];
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  v7 = PixelFormat;
  FourCCforType = getFourCCforType(PixelFormat);
  v10 = FourCCforType;
  if (input == 1 || input == 3)
  {
    if (isSupportedMSRInputFormat(FourCCforType, v9))
    {
      result = -17000;
      goto LABEL_19;
    }
  }

  else if (input == 2)
  {
    result = -17000;
    if (v10 == 1380411457 || v10 == 1815162994)
    {
      goto LABEL_19;
    }
  }

  if (enableLogInstance)
  {
    if (self->logInstanceID)
    {
      logInstanceID = self->logInstanceID;
    }

    else
    {
      logInstanceID = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134220546;
      v15 = WORD1(logInstanceID);
      v16 = 2080;
      *v17 = "[HDRProcessor ValidateDISPColorConfigInput:inputSurface:]";
      *&v17[8] = 1024;
      *v18 = input;
      *&v18[4] = 1024;
      *v19 = HIBYTE(v7);
      *&v19[4] = 1024;
      *v20 = BYTE2(v7);
      *&v20[4] = 1024;
      *v21 = BYTE1(v7);
      *&v21[4] = 1024;
      *v22 = v7;
      *&v22[4] = 1024;
      *v23 = HIBYTE(v10);
      *&v23[4] = 1024;
      *v24 = BYTE2(v10);
      *&v24[4] = 1024;
      v25 = BYTE1(v10);
      v26 = 1024;
      v27 = v10;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Error: Unsupported input: operation=0x%x, input=%c%c%c%c [%c%c%c%c]", &v14, 0x4Cu);
    }

    prevLogInstanceID = logInstanceID;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136317442;
    v15 = "[HDRProcessor ValidateDISPColorConfigInput:inputSurface:]";
    v16 = 1024;
    *v17 = input;
    *&v17[4] = 1024;
    *&v17[6] = HIBYTE(v7);
    *v18 = 1024;
    *&v18[2] = BYTE2(v7);
    *v19 = 1024;
    *&v19[2] = BYTE1(v7);
    *v20 = 1024;
    *&v20[2] = v7;
    *v21 = 1024;
    *&v21[2] = HIBYTE(v10);
    *v22 = 1024;
    *&v22[2] = BYTE2(v10);
    *v23 = 1024;
    *&v23[2] = BYTE1(v10);
    *v24 = 1024;
    *&v24[2] = v10;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Error: Unsupported input: operation=0x%x, input=%c%c%c%c [%c%c%c%c]", &v14, 0x42u);
  }

  result = -17006;
LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)applyDoVi81PolicyWithInput:(__IOSurface *)input WithRPU:(BOOL)u
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = IOSurfaceCopyValue(input, @"DolbyCompatibilityID");
  if (v6)
  {
    v7 = v6;
    if (CFStringGetIntValue(v6) == 1)
    {
      v8 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
      *(v8 + 526) = 2;
      if (GetConfig())
      {
        Config = GetConfig();
        v10 = *HDRConfig::GetConfigEntryValue(Config, 0x46u, 0) != 1;
      }

      else
      {
        v10 = 1;
      }

      if (*(v8 + 532) == 2 && v10)
      {
        u = 0;
        *(v8 + 525) = 2;
      }

      else if (*(v8 + 525) != 1)
      {
        if (enableLogInstance)
        {
          if (*(v8 + 321))
          {
            v11 = *(v8 + 321);
          }

          else
          {
            v11 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 134217984;
            v15 = WORD1(v11);
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: _hdrMode == kHDRContentDolbyVision warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/HDRProcessorMetal.mm at line 1864\n", &v14, 0xCu);
          }

          prevLogInstanceID = v11;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: _hdrMode == kHDRContentDolbyVision warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/HDRProcessorMetal.mm at line 1864\n", &v14, 2u);
        }
      }
    }

    CFRelease(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return u;
}

- (int64_t)updateDoVi81StateWithRPU:(BOOL)u hasHDR10PlusSEIData:(BOOL)data
{
  dataCopy = data;
  uCopy = u;
  v26 = *MEMORY[0x277D85DE8];
  if (GetConfig())
  {
    Config = GetConfig();
    v8 = *HDRConfig::GetConfigEntryValue(Config, 0x46u, 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  if (uCopy && (dataCopy || *(v9 + 532) == 2))
  {
    if (v8 == 2 || v8 == 1 || (v8 = *(v9 + 532), v8 == 2))
    {
      *(v9 + 525) = v8;
    }

    else if (*(v9 + 525) != 1)
    {
      if (enableLogInstance)
      {
        if (*(v9 + 321))
        {
          v15 = *(v9 + 321);
        }

        else
        {
          v15 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 134217984;
          v18 = WORD1(v15);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: _hdrMode == kHDRContentDolbyVision warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/HDRProcessorMetal.mm at line 1896\n", &v17, 0xCu);
        }

        prevLogInstanceID = v15;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: _hdrMode == kHDRContentDolbyVision warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/HDRProcessorMetal.mm at line 1896\n", &v17, 2u);
      }
    }

    goto LABEL_37;
  }

  v10 = *(v9 + 525);
  if (v10 != 2)
  {
    if (v10 != 1 || *(v9 + 532) == 2 || !uCopy)
    {
      goto LABEL_17;
    }

LABEL_37:
    result = -17000;
    goto LABEL_38;
  }

  if (*(v9 + 532) == 2)
  {
    goto LABEL_37;
  }

LABEL_17:
  if (enableLogInstance)
  {
    if (*(v9 + 321))
    {
      v11 = *(v9 + 321);
    }

    else
    {
      v11 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v9 + 532);
      v17 = 134219266;
      v18 = WORD1(v11);
      v19 = 2080;
      *v20 = "[HDRProcessor updateDoVi81StateWithRPU:hasHDR10PlusSEIData:]";
      *&v20[8] = 1024;
      *v21 = v10;
      *&v21[4] = 1024;
      *v22 = v12;
      *&v22[4] = 1024;
      v23 = uCopy;
      v24 = 1024;
      v25 = dataCopy;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Error: Unsupported DoVi81 state: _hdrMode = %d, _displayType = %d, hasRPUData = %d, hasHDR10PlusSEIData = %d", &v17, 0x2Eu);
    }

    prevLogInstanceID = v11;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(v9 + 532);
    v17 = 136316162;
    v18 = "[HDRProcessor updateDoVi81StateWithRPU:hasHDR10PlusSEIData:]";
    v19 = 1024;
    *v20 = v10;
    *&v20[4] = 1024;
    *&v20[6] = v13;
    *v21 = 1024;
    *&v21[2] = uCopy;
    *v22 = 1024;
    *&v22[2] = dataCopy;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Error: Unsupported DoVi81 state: _hdrMode = %d, _displayType = %d, hasRPUData = %d, hasHDR10PlusSEIData = %d", &v17, 0x24u);
  }

  result = -17006;
LABEL_38:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)processFrameInternalWithLayer0:(__IOSurface *)layer0 layer1:(__IOSurface *)layer1 outout:(__IOSurface *)outout metadata:(id)metadata commandbuffer:(id)commandbuffer operation:(unsigned int)operation config:(id *)config histogram:(RgbHistogram_t *)self0 data:(id *)self1
{
  v158 = *MEMORY[0x277D85DE8];
  v15 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  metadataCopy = metadata;
  commandbufferCopy = commandbuffer;
  operationCopy = operation;
  UpdateConfigFromDefaultsWrite(*(v15 + 614));
  if (!IsGpuOnlySystem() && GetConfig())
  {
    Config = GetConfig();
    HDRConfig::GetConfigEntryValue(Config, 0x1Au, 0);
  }

  v18 = metadataCopy;

  cf = v18;
  v144 = [v18 valueForKey:@"DolbyVisionRPUData"];
  v19 = [v144 length];
  bytes = [v144 bytes];
  if (bytes)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  v23 = *(v15 + 307);
  layer1Copy = layer1;
  v141 = bytes;
  v142 = v19;
  v136 = *(v15 + 524) == 1 && [(MSRHDRProcessing *)self->_msr isMMREnabled];
  v151 = 0;
  v152 = 0;
  [(HDRProcessor *)self extractCAMetaData:v18 withRPU:v22];
  v149 = self + 422832 * (v23 & 1);
  [(HDRProcessor *)self extractFrameMetadata:v18 intoTCControl:v149 + 416064];
  v147 = [(HDRProcessor *)self applyDoVi81PolicyWithInput:layer0 WithRPU:v22];
  v24 = *(v15 + 532);
  v137 = v149 + 422896;
  v25 = [HDRProcessor checkInputOutputIOSurface:"checkInputOutputIOSurface:output:tcControl:forInfoFrame:withRPUData:" output:layer0 tcControl:outout forInfoFrame:v149 + 416064 withRPUData:?];
  if (v25 != -17000)
  {
    if (enableLogInstance)
    {
      if (*(v15 + 321))
      {
        v31 = *(v15 + 321);
      }

      else
      {
        v31 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v155 = WORD1(v31);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx checkInputOutputIOSurface() failed!", buf, 0xCu);
      }

      v32 = 0;
      v33 = 0;
      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] checkInputOutputIOSurface() failed!", buf, 2u);
    }

    v32 = 0;
    v33 = 0;
LABEL_36:
    getDolbyVisionDM42 = 0;
    getDolbyVisionDM4 = 0;
    goto LABEL_264;
  }

  v140 = IOSurfaceCopyValue(layer0, @"HDR10PlusData");
  v139 = [HDRProcessor isNSDataNonEmpty:v140 dataLength:&v152 dataBytes:&v151];
  v26 = v149 + 96;
  *(v149 + 211348) = 0;
  if (((v24 < 8) & (0xB8u >> v24) & v139) == 1)
  {
    if (GetConfig())
    {
      v27 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v27, 0x69u, 0) == 1)
      {
        (***(v15 + 248))(*(v15 + 248), v151, v152);
        if (HDR10PlusMetaData_RBSP::parse_hdr10plus_sei(*(v15 + 248), (v149 + 422600)))
        {
          if (enableLogInstance)
          {
            if (*(v15 + 321))
            {
              v28 = *(v15 + 321);
            }

            else
            {
              v28 = prevLogInstanceID;
            }

            v29 = MEMORY[0x277D86220];
            v30 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v155 = WORD1(v28);
              v156 = 2080;
              *v157 = "[HDRProcessor processFrameInternalWithLayer0:layer1:outout:metadata:commandbuffer:operation:config:histogram:data:]";
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     %s: illegal HDR10Plus SEI, fall back to HDR10", buf, 0x16u);
            }

            prevLogInstanceID = v28;
          }

          else
          {
            v37 = MEMORY[0x277D86220];
            v38 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v155 = "[HDRProcessor processFrameInternalWithLayer0:layer1:outout:metadata:commandbuffer:operation:config:histogram:data:]";
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     %s: illegal HDR10Plus SEI, fall back to HDR10", buf, 0xCu);
            }
          }
        }

        else
        {
          v149[422696] = 1;
          if (GetConfig())
          {
            v36 = GetConfig();
            if (*HDRConfig::GetConfigEntryValue(v36, 0x6Du, 0) == 1)
            {
              v149[422697] = [HDRProcessor isHdr10PlusSEIScreenRecording:v151 dataLength:v152];
            }
          }
        }
      }
    }
  }

  if (v149[422697])
  {
    v39 = 1;
  }

  else if (GetConfig())
  {
    v40 = GetConfig();
    v39 = *HDRConfig::GetConfigEntryValue(v40, 0x6Cu, 0);
  }

  else
  {
    v39 = 0;
  }

  v149[422697] = v39 & 1;
  if (GetConfig() && (v41 = GetConfig(), *HDRConfig::GetConfigEntryValue(v41, 0x1Fu, 0) == 1))
  {
    getHistBasedToneMapping = [(DolbyVisionDisplayManagement *)self->_dm getHistBasedToneMapping];
    LODWORD(v43) = *(v15 + 608);
    [getHistBasedToneMapping setMasteringNits:*(v15 + 303) minMasteringNits:v43];
    LODWORD(v44) = 1045220557;
    [getHistBasedToneMapping getHistStatFromLayer:layer0 HDRMode:*(v15 + 525) transferFunction:*(v15 + 594) temporalMode:2 iirAlpha:*(v15 + 307) frameNumber:v44];
    [getHistBasedToneMapping isDataValid];
    getHistBasedToneMapping2 = [(DolbyVisionDisplayManagement *)self->_dm_constr getHistBasedToneMapping];
    v32 = getHistBasedToneMapping2;
    if ([getHistBasedToneMapping2 copyHistStatFromObject:getHistBasedToneMapping] == -17000)
    {
      [getHistBasedToneMapping2 isDataValid];
    }
  }

  else
  {
    v32 = 0;
    getHistBasedToneMapping = 0;
  }

  if (GetConfig() && (v46 = GetConfig(), *HDRConfig::GetConfigEntryValue(v46, 0xBu, 0) == 1))
  {
    getHistBasedToneMapping3 = [(DolbyVisionDisplayManagement *)self->_dm getHistBasedToneMapping];

    v33 = getHistBasedToneMapping3;
    [getHistBasedToneMapping3 debugHistDataFromLayer:layer0];
  }

  else
  {
    v33 = getHistBasedToneMapping;
  }

  if (v149[422698] == 1)
  {
    [(HDRProcessor *)self setCanonicalScreenCaptureParameters:v149 + 416064 withOperation:&operationCopy];
  }

  [(HDRProcessor *)self getAmbientViewingEnvironmentType:layer0];
  [(HDRProcessor *)self getAMVEStrengthValueFromIOSurface:layer0];
  if (*(v15 + 525) != 1 || *(v15 + 297) != 18 || *(v15 + 567) != 1 || (*(v15 + 532) - 5) < 0xFFFFFFFE || *(v15 + 569) == 1.0)
  {
    v15[2272] = 0;
  }

  [(HDRProcessor *)self getSceneIllumination:layer0];
  if (*(v15 + 526) == 2)
  {
    v25 = [(HDRProcessor *)self updateDoVi81StateWithRPU:v147 hasHDR10PlusSEIData:v139];
    if (v25 != -17000)
    {
      if (enableLogInstance)
      {
        if (*(v15 + 321))
        {
          v31 = *(v15 + 321);
        }

        else
        {
          v31 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v155 = WORD1(v31);
          v156 = 2080;
          *v157 = "[HDRProcessor processFrameInternalWithLayer0:layer1:outout:metadata:commandbuffer:operation:config:histogram:data:]";
          *&v157[8] = 2048;
          *&v157[10] = v25;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     %s : Error: Unsupported config! retVal = %d", buf, 0x20u);
        }

LABEL_32:
        getDolbyVisionDM42 = 0;
        getDolbyVisionDM4 = 0;
        prevLogInstanceID = v31;
        goto LABEL_264;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v155 = "[HDRProcessor processFrameInternalWithLayer0:layer1:outout:metadata:commandbuffer:operation:config:histogram:data:]";
        v156 = 2048;
        *v157 = v25;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     %s : Error: Unsupported config! retVal = %d", buf, 0x16u);
      }

      goto LABEL_36;
    }
  }

  if (v15[2336] != 1)
  {
    *(v149 + 104063) = 1065353216;
    goto LABEL_103;
  }

  v48 = *(v15 + 525) == 1 && *(v15 + 297) == 18 && *(v15 + 567) == 1;
  *(v149 + 104063) = 1065353216;
  if (GetConfig())
  {
    v49 = GetConfig();
    v50 = *HDRConfig::GetConfigEntryValue(v49, 0xF8u, 0);
  }

  else
  {
    v50 = 0.0;
  }

  v51 = *(v149 + 52008);
  v52 = *(v149 + 104023);
  v53 = v51 / v52;
  if (v48)
  {
    if ((v15[2338] & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  else
  {
    if (v15[2337] != 1)
    {
LABEL_97:
      *(v149 + 52008) = (v50 * v52);
LABEL_98:
      *(v149 + 104063) = v53 / v50;
      goto LABEL_99;
    }

    if (v53 < v50)
    {
      if (GetConfig())
      {
        v54 = GetConfig();
        if (*HDRConfig::GetConfigEntryValue(v54, 0xFFu, 0) == 1)
        {
          if (v50 <= v51)
          {
            v55 = v51;
          }

          else
          {
            v55 = v50;
          }

          *(v149 + 52008) = v55;
        }
      }

      v50 = *(v149 + 52008) / *(v149 + 104023);
      goto LABEL_98;
    }
  }

LABEL_99:
  if (GetConfig())
  {
    v56 = GetConfig();
    v57 = *HDRConfig::GetConfigEntryValue(v56, 0xF9u, 0);
  }

  else
  {
    v57 = 0;
  }

  *(v149 + 104026) = v57;
LABEL_103:
  v58 = *(v149 + 104023);
  if (v58 >= 1.0)
  {
    v62 = v58;
    v59 = (self + 422832 * (v23 & 1));
    v60 = *(v149 + 52008);
    v61 = v60 / v62;
  }

  else
  {
    v59 = (self + 422832 * (v23 & 1));
    v60 = *(v149 + 52008);
    v61 = v60;
  }

  v63 = v61;
  *(v149 + 104022) = v63;
  v64 = v60;
  *(v149 + 104055) = v64;
  v65 = fmax(v60, 40.0);
  v59[52008] = v65;
  *(v149 + 52010) = v65;
  v66 = [(HDRProcessor *)self selectHDRUsage:operationCopy withRPU:v147];
  v67 = v66;
  if (v66 <= 0xF && ((1 << v66) & 0xC01C) != 0)
  {
    (*self->_parser->var0)(self->_parser, v141, v142, v66);
    if (EDRMetaData_RBSP::parse_rpu_data(self->_parser, v26, (v149 + 415144)))
    {
      getDolbyVisionDM42 = 0;
      getDolbyVisionDM4 = 0;
      v25 = -17003;
      goto LABEL_280;
    }

    v68 = powf(*(v15 + 268) * 0.0001, 0.1593);
    *(v149 + 208026) = (powf(((v68 * 18.852) + 0.83594) / ((v68 * 18.688) + 1.0), 78.844) * 4095.0);
    *(v149 + 104014) = *(v15 + 562);
    if (v147)
    {
      v69 = v136;
      v70 = *(v149 + 102) == 1 || *(v149 + 111) == 1;
    }

    else
    {
      v70 = 0;
      v69 = v136;
    }

    if (*(v149 + 208020))
    {
      v71 = v149[416043] + 2;
    }

    else
    {
      v71 = 3;
    }

    v143 = v70;
    if (!v69 && v70 && (*(v15 + 526) == 2 || GetConfig() && (v73 = GetConfig(), *HDRConfig::GetConfigEntryValue(v73, 0x5Cu, 0) == 1)))
    {
      v74 = 0.0;
      v75 = 0.0;
      if (v15[2436] == 1)
      {
        v75 = *(v15 + 303);
      }

      if (v15[2437] == 1)
      {
        v74 = *(v15 + 608);
      }

      if (v75 == 0.0)
      {
        v76 = 1000.0;
      }

      else
      {
        v76 = v75;
      }

      if (v74 == 0.0)
      {
        v77 = 0.001;
      }

      else
      {
        v77 = v74;
      }

      LODWORD(v135) = *(v15 + 307);
      if ([(DolbyVisionMR *)self->_mr metadataReconstruction:v149 + 96 dmData:v149 + 415144 maxDisplayBrightnessNits:self->_displayPrimaries targetMaxNits:*(v15 + 590) targetMinNits:*(v15 + 592) displayPrimaries:*(v15 + 596) baseMax:*(v15 + 268) baseMin:*(v149 + 52008) videoFullRangeFlag:*(v149 + 52009) colourPrimaries:v76 matrixCoeffs:v77 numFrames:v135])
      {
        v72 = 1;
      }

      else
      {
        v72 = 0;
        if (*(v149 + 208020))
        {
          v71 = v149[416043] + 2;
        }

        else
        {
          v71 = 3;
        }
      }
    }

    else
    {
      v72 = 0;
    }

    if (GetConfig() && (v78 = GetConfig(), *(v78 + 2073)) && (v78[4144] & 0x80) != 0 && *(v15 + 526) == 2)
    {
      if (!GetConfig())
      {
        goto LABEL_148;
      }

      v79 = GetConfig();
      if ((*HDRConfig::GetConfigEntryValue(v79, 0x5Eu, 0) & 1) == 0)
      {
        goto LABEL_148;
      }
    }

    else if ((v72 & 1) == 0)
    {
LABEL_148:
      [(DolbyVisionDisplayManagement *)self->_dm setInputDmVersion:v71];
      getDolbyVisionDM4 = [(DolbyVisionDisplayManagement *)self->_dm getDolbyVisionDM4];
      [getDolbyVisionDM4 initDmAlgVerInCm:v71];
      v80 = *(v15 + 327);
      v81 = *MEMORY[0x277CC4C20];
      if (*MEMORY[0x277CC4C20] == v80)
      {
        v82 = MEMORY[0x277CC4C30];
        v83 = 1;
      }

      else
      {
        v82 = MEMORY[0x277CC4C30];
        v83 = 12;
        if (*MEMORY[0x277CC4C30] != v80)
        {
          if (*MEMORY[0x277CC4C18] == v80)
          {
            v83 = 9;
          }

          else
          {
            v83 = 12;
          }
        }
      }

      [getDolbyVisionDM4 initOutputColorPrimaries:v83];
      [(DolbyVisionDisplayManagement *)self->_dm_constr setInputDmVersion:v71];
      getDolbyVisionDM42 = [(DolbyVisionDisplayManagement *)self->_dm_constr getDolbyVisionDM4];
      [getDolbyVisionDM42 initDmAlgVerInCm:v71];
      v85 = *(v15 + 327);
      if (v81 == v85)
      {
        v86 = 1;
      }

      else
      {
        v86 = 12;
        if (*v82 != v85)
        {
          if (*MEMORY[0x277CC4C18] == v85)
          {
            v86 = 9;
          }

          else
          {
            v86 = 12;
          }
        }
      }

      [getDolbyVisionDM42 initOutputColorPrimaries:v86];
      *(v15 + 303) = (PQ12Bit2LinFloat(*(v149 + 103820)) + 0.5);
      *(v15 + 608) = PQ12Bit2LinFloat(*(v149 + 103819));
      goto LABEL_170;
    }

    *(v15 + 525) = 2;
    if (!*(v15 + 303))
    {
      *(v15 + 303) = 1000;
    }

    if (*(v15 + 608) == 0.0)
    {
      *(v15 + 608) = 981668463;
    }

    v67 = [(HDRProcessor *)self selectHDRUsage:operationCopy withRPU:0];
    v147 = 0;
  }

  else
  {
    v143 = 0;
  }

  EDRMetaData_RBSP::set_rpu_data_forHDRx(self->_parser, v26, (v149 + 415144), v67);
  v84 = *(v15 + 303);
  getDolbyVisionDM42 = 0;
  getDolbyVisionDM4 = 0;
  if ((v84 - 1001) >> 3 <= 0x464)
  {
    *(v149 + 103820) = PQIn12Bit(v84);
  }

LABEL_170:
  CFRelease(cf);
  if (v140)
  {
    CFRelease(v140);
  }

  PixelFormat = IOSurfaceGetPixelFormat(outout);
  *(v15 + 587) = PixelFormat;
  FourCCforType = getFourCCforType(PixelFormat);
  *(v149 + 104043) = *(v15 + 587);
  *(v149 + 104044) = FourCCforType;
  *(v15 + 589) = FourCCforType;
  *(v149 + 416132) = vrev64_s32(*(v15 + 2120));
  if (GetConfig())
  {
    v89 = GetConfig();
    if (*(v89 + 1985))
    {
      if ((v89[3968] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v90 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v90, 0x5Au, 0) == 9)
          {
            v91 = MEMORY[0x277CC4C18];
LABEL_181:
            *(v15 + 327) = *v91;
            goto LABEL_182;
          }
        }

        if (GetConfig())
        {
          v92 = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(v92, 0x5Au, 0) == 12)
          {
            v91 = MEMORY[0x277CC4C30];
            goto LABEL_181;
          }
        }
      }
    }
  }

LABEL_182:
  *(v149 + 52019) = *(v15 + 327);
  *(v149 + 104029) = *(v15 + 544);
  v93 = *(v15 + 2156);
  *(v149 + 104041) = *(v15 + 300);
  *(v149 + 416108) = v93;
  *(v149 + 104040) = *(v15 + 301);
  *(v149 + 104042) = *(v15 + 302);
  *(v149 + 104053) = 0;
  v149[416129] = IOSurfaceGetProtectionOptions() != 0;
  v149[416216] &= ~1u;
  if (GetConfig())
  {
    v94 = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(v94, 0x2Bu, 0) == 1 && *(v15 + 532) == 2 && !*(v15 + 524))
    {
      v149[416216] |= 1u;
    }
  }

  if (v149[416216])
  {
    v95 = operationCopy;
LABEL_189:
    v96 = v143;
    goto LABEL_197;
  }

  if (GetConfig())
  {
    v97 = GetConfig();
    ConfigEntryValue = HDRConfig::GetConfigEntryValue(v97, 0x36u, 0);
    v95 = operationCopy;
    if (*ConfigEntryValue)
    {
      goto LABEL_189;
    }
  }

  else
  {
    v95 = operationCopy;
  }

  v96 = v143;
  if (v95 != 1 && (*(v149 + 104045) != 1 || (v95 - 1) < 4))
  {
    v149[416216] &= ~2u;
    goto LABEL_198;
  }

LABEL_197:
  v149[416216] |= 2u;
  *(v149 + 104026) = -1082130432;
LABEL_198:
  [(HDRProcessor *)self setHDRControl:v149 + 422712 withTCControl:v149 + 416064 withRPU:v147 withMMR:v96 withDmData:v149 + 415144 withOperation:v95];
  if (*(v149 + 105678) != 1 || *(v149 + 105688) != 2)
  {
    goto LABEL_214;
  }

  if (!GetConfig())
  {
    if ((v149[422892] & 1) == 0)
    {
      goto LABEL_212;
    }

LABEL_207:
    *(v149 + 104053) = 3;
    goto LABEL_214;
  }

  v99 = GetConfig();
  v100 = HDRConfig::GetConfigEntryValue(v99, 0x18u, 0);
  if (v149[422892])
  {
    goto LABEL_207;
  }

  v101 = *v100;
  if (*v100 >= 3)
  {
    *(v149 + 104053) = 1;
  }

  else
  {
    *(v149 + 104053) = v101;
    if ((v101 - 1) > 1)
    {
      goto LABEL_214;
    }
  }

  if (!*(v15 + 524))
  {
    *(v149 + 52008) = 0x408F400000000000;
    goto LABEL_214;
  }

  if (*(v149 + 105681) != 3 || *(v149 + 52008) != 1000.0)
  {
LABEL_212:
    *(v149 + 104053) = 0;
  }

LABEL_214:
  if (v15[2576] == 1)
  {
    v15[2576] = 0;
    if (enableLogInstance)
    {
      if (*(v15 + 321))
      {
        v102 = *(v15 + 321);
      }

      else
      {
        v102 = prevLogInstanceID;
      }

      v103 = MEMORY[0x277D86220];
      v104 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v105 = contentTypeName[*(v149 + 105678)];
        v106 = v149[422697];
        *buf = 134218498;
        v155 = WORD1(v102);
        v156 = 2080;
        *v157 = v105;
        *&v157[8] = 1024;
        *&v157[10] = v106;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx ContentType: %s, sr=%d", buf, 0x1Cu);
      }

      prevLogInstanceID = v102;
    }

    else
    {
      v103 = MEMORY[0x277D86220];
      v107 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v108 = contentTypeName[*(v149 + 105678)];
        v109 = v149[422697];
        *buf = 136315394;
        v155 = v108;
        v156 = 1024;
        *v157 = v109;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] ContentType: %s, sr=%d", buf, 0x12u);
      }
    }

    if (enableLogInstance)
    {
      if (*(v15 + 321))
      {
        v110 = *(v15 + 321);
      }

      else
      {
        v110 = prevLogInstanceID;
      }

      v111 = v103;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v112 = "Off";
        if (v15[2280])
        {
          v112 = "On";
        }

        *buf = 134218242;
        v155 = WORD1(v110);
        v156 = 2080;
        *v157 = v112;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Constraint: %s", buf, 0x16u);
      }

      prevLogInstanceID = v110;
    }

    else
    {
      v113 = v103;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        if (v15[2280])
        {
          v114 = "On";
        }

        else
        {
          v114 = "Off";
        }

        *buf = 136315138;
        v155 = v114;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Constraint: %s", buf, 0xCu);
      }
    }
  }

  if (GetConfig())
  {
    v115 = GetConfig();
    if (*(v115 + 3085))
    {
      if ((v115[6168] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v116 = GetConfig();
          v117 = *HDRConfig::GetConfigEntryValue(v116, 0x8Cu, 0);
        }

        else
        {
          v117 = 0.0;
        }

        *(v149 + 104027) = v117;
      }
    }
  }

  v118 = *(v15 + 524);
  if (v118 == 1)
  {
    if (data)
    {
      [(MSRHDRProcessing *)self->_msr processFrameByMSRWithComposerData:v26 DM:self->_dm constraintDM:self->_dm_constr DMData:v149 + 415144 tcControl:v149 + 416064 hdrControl:v149 + 422712 hdr10InfoFrame:v137 layer0:layer0 layer1:layer1Copy output:outout frameNumebr:*(v15 + 307) computedNumber:&self->_numberOfComputedFrames config:data];
    }

    else if (enableLogInstance)
    {
      if (*(v15 + 321))
      {
        v119 = *(v15 + 321);
      }

      else
      {
        v119 = prevLogInstanceID;
      }

      v120 = MEMORY[0x277D86220];
      v121 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v155 = WORD1(v119);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/HDRProcessorMetal.mm at line 2599\n", buf, 0xCu);
      }

      prevLogInstanceID = v119;
    }

    else
    {
      v122 = MEMORY[0x277D86220];
      v123 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/HDRProcessorMetal.mm at line 2599\n", buf, 2u);
      }
    }
  }

  else
  {
    if (v118 != 2)
    {
      v25 = [(HDRProcessor *)self processPixelsWithLayer0:layer0 layer1:layer1Copy output:outout metaData:v26 tcControl:v149 + 416064 hdrControl:v149 + 422712 hdr10InfoFrame:v137 commandbuffer:commandbufferCopy frameNumebr:*(v15 + 307)];
      goto LABEL_264;
    }

    [(DISPHDRProcessing *)self->_disp processFrameByDISPWithComposerData:v26 DM:self->_dm constraintDM:self->_dm_constr DMData:v149 + 415144 tcControl:v149 + 416064 hdrControl:v149 + 422712 hdr10InfoFrame:v137 layer0:layer0 layer1:layer1Copy frameNumebr:*(v15 + 307)];
  }

  v25 = -17000;
LABEL_264:
  v124 = *(v15 + 307) + 1;
  *(v15 + 307) = v124;
  if (v124 >= 0x80)
  {
    if (GetConfig())
    {
      v125 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v125, 0x57u, 0) == 1)
      {
        *(v15 + 307) = 0;
      }
    }
  }

  if (v25 == -17000)
  {
    v25 = -17000;
  }

  else if (enableLogInstance)
  {
    if (*(v15 + 321))
    {
      v126 = *(v15 + 321);
    }

    else
    {
      v126 = prevLogInstanceID;
    }

    v127 = MEMORY[0x277D86220];
    v128 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      v129 = *(v15 + 307);
      *buf = 134218754;
      v155 = WORD1(v126);
      v156 = 2080;
      *v157 = "[HDRProcessor processFrameInternalWithLayer0:layer1:outout:metadata:commandbuffer:operation:config:histogram:data:]";
      *&v157[8] = 1024;
      *&v157[10] = v25;
      *&v157[14] = 2048;
      *&v157[16] = v129;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx -- %s : Failed with error %d, _numberOfScheduledFrames=%ld\n", buf, 0x26u);
    }

    prevLogInstanceID = v126;
  }

  else
  {
    v130 = MEMORY[0x277D86220];
    v131 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      v132 = *(v15 + 307);
      *buf = 136315650;
      v155 = "[HDRProcessor processFrameInternalWithLayer0:layer1:outout:metadata:commandbuffer:operation:config:histogram:data:]";
      v156 = 1024;
      *v157 = v25;
      *&v157[4] = 2048;
      *&v157[6] = v132;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] -- %s : Failed with error %d, _numberOfScheduledFrames=%ld\n", buf, 0x1Cu);
    }
  }

LABEL_280:

  v133 = *MEMORY[0x277D85DE8];
  return v25;
}

- (int64_t)processPixelsWithLayer0:(__IOSurface *)layer0 layer1:(__IOSurface *)layer1 output:(__IOSurface *)output metaData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl hdr10InfoFrame:(id *)frame commandbuffer:(id)self0 frameNumebr:(unint64_t)self1
{
  v18 = (&self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960);
  commandbufferCopy = commandbuffer;
  p_var1 = &data->var1;
  v29 = 0;
  pixelBufferOut = 0;
  if (*(v18 + 622) == 3)
  {
    v21 = -17000;
    if (layer1)
    {
LABEL_10:
      [(DolbyVisionDisplayManagement *)self->_dm encodeToCommandBuffer:commandbufferCopy Input:layer0 Output:output MetaData:p_var1];
      goto LABEL_11;
    }
  }

  else
  {
    hdrControlCopy = hdrControl;
    controlCopy = control;
    IOSurface = layer1;
    if (data->var0.var9)
    {
      CVPixelBufferPoolCreatePixelBuffer(0, v18[315], &pixelBufferOut);
      IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
      [(SpatialResampler *)self->_resampler encodeToCommandBuffer:commandbufferCopy input:layer1 output:IOSurface];
    }

    outputCopy = output;
    if (layer1)
    {
      CVPixelBufferPoolCreatePixelBuffer(0, v18[316], &v29);
      outputCopy = CVPixelBufferGetIOSurface(v29);
    }

    v21 = [(DolbyVisionComposer *)self->_composer encodeToCommandBuffer:commandbufferCopy BL:layer0 EL:IOSurface Output:outputCopy ComposerData:data DM:self->_dm DMData:&data->var1 tcControl:controlCopy hdrControl:hdrControlCopy hdr10InfoFrame:frame frameNumber:numebr];
    layer0 = outputCopy;
    if (layer1)
    {
      goto LABEL_10;
    }
  }

  if (*(v18 + 622) == 3)
  {
    goto LABEL_10;
  }

LABEL_11:
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __125__HDRProcessor_processPixelsWithLayer0_layer1_output_metaData_tcControl_hdrControl_hdr10InfoFrame_commandbuffer_frameNumebr___block_invoke;
  v27[3] = &unk_2796A06B8;
  v27[4] = self;
  [commandbufferCopy addScheduledHandler:v27];

  return v21;
}

- (int64_t)checkInputIOSurface:(__IOSurface *)surface forInfoFrame:(id *)frame withRPUData:(BOOL)data tcControl:(ToneCurve_Control *)control
{
  v7 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  if (data)
  {
    [(HDRProcessor *)self extractHEVCHDRParameterFromInputIOSurfaceForDovi:surface forInfoFrame:frame tcControl:control];
    v8 = -17000;
  }

  else
  {
    v8 = [(HDRProcessor *)self extractHEVCHDRParameterFromInputIOSurface:surface forInfoFrame:frame tcControl:control];
  }

  if (*(v7 + 525) == 1)
  {
    if (*(v7 + 297) == 18)
    {
      *(v7 + 526) = 3;
    }

    PixelFormat = IOSurfaceGetPixelFormat(surface);
    if (getFourCCforType(PixelFormat) == 1111970369)
    {
      return -17007;
    }
  }

  return v8;
}

- (void)getDisplayPipelineCompensationType:(id)type gamma:(float)gamma
{
  typeCopy = type;
  v6 = [(NSDictionary *)typeCopy valueForKey:@"HDRProcessingDisplayPipelineCompensationType"];
  FloatFromDictionayForKey = getFloatFromDictionayForKey(typeCopy, &cfstr_Hdrprocessingd_24.isa, gamma);
  v8 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  if ([v6 isEqualToString:@"HDRProcessingDisplayPipelineCompensationTypePurePower"])
  {
    v9 = 1;
  }

  else if ([v6 isEqualToString:@"HDRProcessingDisplayPipelineCompensationTypeHeadRoomDependent"])
  {
    v9 = 2;
  }

  else
  {
    if ([v6 isEqualToString:@"HDRProcessingDisplayPipelineCompensationTypeNone"])
    {
      *(v8 + 2252) = 0x3F80000000000000;
      goto LABEL_9;
    }

    v9 = 3;
  }

  *(v8 + 563) = v9;
  *(v8 + 564) = FloatFromDictionayForKey;
LABEL_9:
}

- (void)getAMVEStrengthValue:(id)value
{
  v3 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  valueCopy = value;
  v3[2272] = 1;
  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 4207))
    {
      if ((Config[8412] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v5 = GetConfig();
          v6 = *HDRConfig::GetConfigEntryValue(v5, 0xBFu, 0);
        }

        else
        {
          v6 = 0;
        }

        v3[2272] = v6 & 1;
      }
    }
  }

  *(v3 + 569) = 1065353216;
  if (v3[2272] == 1)
  {
    v7 = [valueCopy valueForKey:@"AVEStrength"];
    v8 = v7;
    if (v7)
    {
      [v7 floatValue];
      *(v3 + 569) = v9;
    }

    if (GetConfig() && (v10 = GetConfig(), *(v10 + 4229)) && (v10[8456] & 0x80) != 0)
    {
      if (GetConfig())
      {
        v14 = GetConfig();
        v11 = *HDRConfig::GetConfigEntryValue(v14, 0xC0u, 0);
      }

      else
      {
        v11 = 0.0;
      }

      *(v3 + 569) = v11;
    }

    else
    {
      v11 = *(v3 + 569);
    }

    v12 = 1.0;
    v13 = v11 >= 1.0 || v11 < 0.0;
    if (v11 < 1.0 && v11 < 0.0)
    {
      v12 = 0.0;
    }

    if (v13)
    {
      v11 = v12;
    }

    *(v3 + 569) = v11;
  }
}

- (void)getAMVEStrengthValueFromIOSurface:(__IOSurface *)surface
{
  v3 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  if (self->_enableAmveStrength)
  {
    v5 = IOSurfaceCopyValue(surface, @"AVEStrength");
    if (v5)
    {
      v6 = v5;
      CFNumberGetValue(v5, kCFNumberFloatType, &self->_amveStrengthValue);
      CFRelease(v6);
    }

    if (GetConfig())
    {
      Config = GetConfig();
      if (*(Config + 4229))
      {
        if ((Config[8456] & 0x80) != 0)
        {
          if (GetConfig())
          {
            v8 = GetConfig();
            v9 = *HDRConfig::GetConfigEntryValue(v8, 0xC0u, 0);
          }

          else
          {
            v9 = 0;
          }

          *(v3 + 569) = v9;
        }
      }
    }

    v10 = *(v3 + 569);
    v11 = 1.0;
    v12 = v10 >= 1.0 || v10 < 0.0;
    if (v10 < 1.0 && v10 < 0.0)
    {
      v11 = 0.0;
    }

    if (v12)
    {
      v10 = v11;
    }

    *(v3 + 569) = v10;
  }
}

- (void)logConstraintWithValue:(float)value fromCA:(BOOL)a onExit:(BOOL)exit
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  if (!exit)
  {
    aCopy = a;
    totalFramesForConstraintStats = self->_totalFramesForConstraintStats;
    v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    if (totalFramesForConstraintStats)
    {
      v11 = *(v6 + 290);
      if (v10 < v11)
      {
        *(v6 + 290) = v10;
        v11 = v10;
      }

      valueCopy = *(v6 + 572);
      if (valueCopy <= value)
      {
        valueCopy = value;
      }

      *(v6 + 572) = valueCopy;
      valueCopy2 = *(v6 + 573);
      if (valueCopy2 >= value)
      {
        valueCopy2 = value;
      }

      *(v6 + 573) = valueCopy2;
    }

    else
    {
      *(v6 + 290) = v10;
      *(v6 + 573) = value;
      v11 = v10;
      *(v6 + 572) = value;
    }

    v14 = 846076;
    ++*(v6 + 574);
    if (aCopy)
    {
      if (value != 0.0)
      {
        if (value == 0.5)
        {
          v14 = 846080;
        }

        else
        {
          if (value <= 0.0 || value >= 0.5)
          {
LABEL_17:
            if (v10 - v11 < 0x45D964B800)
            {
              goto LABEL_28;
            }

            goto LABEL_18;
          }

          v14 = 846084;
        }
      }
    }

    else
    {
      v14 = 846088;
    }

    ++*(&self->super.isa + v14);
    goto LABEL_17;
  }

LABEL_18:
  if (enableLogInstance)
  {
    if (*(v6 + 321))
    {
      v15 = *(v6 + 321);
    }

    else
    {
      v15 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v6 + 574);
      v17 = *(v6 + 575);
      v18 = *(v6 + 576);
      v19 = *(v6 + 577);
      v20 = *(v6 + 578);
      v21 = *(v6 + 573);
      v22 = *(v6 + 572);
      v31 = 134219776;
      *v32 = WORD1(v15);
      *&v32[8] = 1024;
      *v33 = v16;
      *&v33[4] = 1024;
      *v34 = v17;
      *&v34[4] = 1024;
      *v35 = v18;
      *&v35[4] = 1024;
      *v36 = v19;
      *&v36[4] = 1024;
      *&v36[6] = v20;
      v37 = 2048;
      v38 = v21;
      v39 = 2048;
      v40 = v22;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Constraint: #=%d F=%d C=%d T=%d NP=%d(%2.4f - %2.4f)", &v31, 0x3Eu);
    }

    prevLogInstanceID = v15;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v6 + 574);
    v24 = *(v6 + 575);
    v25 = *(v6 + 576);
    v26 = *(v6 + 577);
    v27 = *(v6 + 578);
    v28 = *(v6 + 573);
    v29 = *(v6 + 572);
    v31 = 67110656;
    *v32 = v23;
    *&v32[4] = 1024;
    *&v32[6] = v24;
    *v33 = 1024;
    *&v33[2] = v25;
    *v34 = 1024;
    *&v34[2] = v26;
    *v35 = 1024;
    *&v35[2] = v27;
    *v36 = 2048;
    *&v36[2] = v28;
    v37 = 2048;
    v38 = v29;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Constraint: #=%d F=%d C=%d T=%d NP=%d(%2.4f - %2.4f)", &v31, 0x34u);
  }

  self->_noConstraintInfoFrames = 0;
  *&self->_totalFramesForConstraintStats = 0u;
LABEL_28:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)getHDRConstraintStrengthValue:(id)value
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  valueCopy = value;
  v6 = v4[2280];
  v4[2280] = 1;
  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 4273))
    {
      if ((Config[8544] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v8 = GetConfig();
          v9 = *HDRConfig::GetConfigEntryValue(v8, 0xC2u, 0);
        }

        else
        {
          v9 = 0;
        }

        v4[2280] = v9 & 1;
        if ((v4[2576] & 1) == 0 && v6 != (v9 & 1))
        {
          if (enableLogInstance)
          {
            if (*(v4 + 321))
            {
              v10 = *(v4 + 321);
            }

            else
            {
              v10 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v11 = "Off";
              if (v9)
              {
                v11 = "On";
              }

              v25 = 134218242;
              v26 = WORD1(v10);
              v27 = 2080;
              v28 = v11;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Constraint changed to: %s", &v25, 0x16u);
            }

            prevLogInstanceID = v10;
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v12 = "Off";
            if (v9)
            {
              v12 = "On";
            }

            v25 = 136315138;
            v26 = v12;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Constraint changed to: %s", &v25, 0xCu);
          }
        }
      }
    }
  }

  *(v4 + 571) = 0;
  if (v4[2280] == 1)
  {
    v13 = [valueCopy valueForKey:@"HDRConstraintStrength"];
    v15 = v13;
    if (v13)
    {
      [v13 floatValue];
      *(v4 + 571) = LODWORD(v14);
    }

    else
    {
      LODWORD(v14) = *(v4 + 571);
    }

    [(HDRProcessor *)self logConstraintWithValue:v15 != 0 fromCA:0 onExit:v14];
    if (GetConfig())
    {
      v16 = GetConfig();
      if (*(v16 + 4317))
      {
        if ((v16[8632] & 0x80) != 0)
        {
          if (GetConfig())
          {
            v17 = GetConfig();
            v18 = *HDRConfig::GetConfigEntryValue(v17, 0xC4u, 0);
          }

          else
          {
            v18 = 0;
          }

          *(v4 + 571) = v18;
        }
      }
    }

    if (GetConfig() && (v19 = GetConfig(), *HDRConfig::GetConfigEntryValue(v19, 0xC3u, 0) == 1))
    {
      v20 = *(v4 + 571);
      v21 = 0.0;
      if (v20 >= 0.0)
      {
        v21 = 1.0;
        if (v20 <= 1.0)
        {
          v21 = *(v4 + 571);
        }
      }
    }

    else
    {
      v22 = *(v4 + 571);
      v23 = 0.5;
      if (v22 <= 0.5)
      {
        v23 = *(v4 + 571);
      }

      if (v22 >= 0.0)
      {
        v21 = v23;
      }

      else
      {
        v21 = 0.0;
      }
    }

    *(v4 + 571) = v21;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)getGCPGammaValue:(id)value
{
  v3 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  self->_gcpGammaValue = 1.0;
  v4 = [value valueForKey:@"GCPGammaValue"];
  v12 = v4;
  if (v4)
  {
    v3[2328] = 1;
    [v4 floatValue];
    *(v3 + 583) = v5;
  }

  else
  {
    v3[2328] = 0;
  }

  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 5175))
    {
      if ((Config[10348] & 0x80) != 0)
      {
        v3[2328] = 1;
        if (GetConfig())
        {
          v7 = GetConfig();
          v8 = *HDRConfig::GetConfigEntryValue(v7, 0xEBu, 0);
        }

        else
        {
          v8 = 0;
        }

        *(v3 + 583) = v8;
      }
    }
  }

  if (GetConfig() && (v9 = GetConfig(), *(v9 + 5197)) && (v9[10392] & 0x80) != 0 && GetConfig() && (v10 = GetConfig(), *HDRConfig::GetConfigEntryValue(v10, 0xECu, 0) == 1))
  {
    v11 = v3[2328];
  }

  else
  {
    v11 = 0;
  }

  v3[2329] = v11 & 1;
}

- (void)getHybridCanonicalRenderingEnablement
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  enableHybridCanonicalRendering = self->_enableHybridCanonicalRendering;
  if (GetConfig() && (Config = GetConfig(), *(Config + 5351)) && (Config[10700] & 0x80) != 0 && (!GetConfig() || (v5 = GetConfig(), *HDRConfig::GetConfigEntryValue(v5, 0xF3u, 0) != 1)))
  {
    v6 = 0;
  }

  else
  {
    v6 = v2[2328];
  }

  v7 = v6 & 1;
  v2[2336] = v6 & 1;
  if (v2[2576] == 1)
  {
    if (enableLogInstance)
    {
      if (*(v2 + 321))
      {
        v8 = *(v2 + 321);
      }

      else
      {
        v8 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v9 = "Off";
      if (v7)
      {
        v9 = "On";
      }

      v18 = 134218242;
      v19 = WORD1(v8);
      v20 = 2080;
      v21 = v9;
      v10 = MEMORY[0x277D86220];
      v11 = " [1.450.54] #%04llx hcr : %s";
LABEL_25:
      _os_log_impl(&dword_250836000, v10, OS_LOG_TYPE_DEFAULT, v11, &v18, 0x16u);
LABEL_26:
      prevLogInstanceID = v8;
      goto LABEL_37;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v13 = "Off";
    if (v7)
    {
      v13 = "On";
    }

    v18 = 136315138;
    v19 = v13;
    v14 = MEMORY[0x277D86220];
    v15 = " [1.450.54] hcr : %s";
    goto LABEL_36;
  }

  if (enableHybridCanonicalRendering != v7)
  {
    if (enableLogInstance)
    {
      if (*(v2 + 321))
      {
        v8 = *(v2 + 321);
      }

      else
      {
        v8 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v12 = "Off";
      if (v7)
      {
        v12 = "On";
      }

      v18 = 134218242;
      v19 = WORD1(v8);
      v20 = 2080;
      v21 = v12;
      v10 = MEMORY[0x277D86220];
      v11 = " [1.450.54] #%04llx hcr changes to: %s";
      goto LABEL_25;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v16 = "Off";
    if (v7)
    {
      v16 = "On";
    }

    v18 = 136315138;
    v19 = v16;
    v14 = MEMORY[0x277D86220];
    v15 = " [1.450.54] hcr changes to: %s";
LABEL_36:
    _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, v15, &v18, 0xCu);
  }

LABEL_37:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)getHCRUseSystemBrightness
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  hcrUseSystemBrightnessForProContent = self->_hcrUseSystemBrightnessForProContent;
  if (GetConfig() && (Config = GetConfig(), *(Config + 5505)) && (Config[11008] & 0x80) != 0 && GetConfig() && (v5 = GetConfig(), *HDRConfig::GetConfigEntryValue(v5, 0xFAu, 0) == 1))
  {
    v6 = v2[2328];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 1;
  v2[2337] = v6 & 1;
  if (v2[2576] == 1)
  {
    if (enableLogInstance)
    {
      if (*(v2 + 321))
      {
        v8 = *(v2 + 321);
      }

      else
      {
        v8 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v9 = "Off";
      if (v7)
      {
        v9 = "On";
      }

      v32 = 134218242;
      v33 = WORD1(v8);
      v34 = 2080;
      v35 = v9;
      v10 = MEMORY[0x277D86220];
      v11 = " [1.450.54] #%04llx hcrUseSystemBrightnessForProContent : %s";
LABEL_26:
      _os_log_impl(&dword_250836000, v10, OS_LOG_TYPE_DEFAULT, v11, &v32, 0x16u);
LABEL_27:
      prevLogInstanceID = v8;
      goto LABEL_37;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v13 = "Off";
    if (v7)
    {
      v13 = "On";
    }

    v32 = 136315138;
    v33 = v13;
    v14 = MEMORY[0x277D86220];
    v15 = " [1.450.54] hcrUseSystemBrightnessForProContent : %s";
    goto LABEL_36;
  }

  if (hcrUseSystemBrightnessForProContent != v7)
  {
    if (enableLogInstance)
    {
      if (*(v2 + 321))
      {
        v8 = *(v2 + 321);
      }

      else
      {
        v8 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v12 = "Off";
      if (v7)
      {
        v12 = "On";
      }

      v32 = 134218242;
      v33 = WORD1(v8);
      v34 = 2080;
      v35 = v12;
      v10 = MEMORY[0x277D86220];
      v11 = " [1.450.54] #%04llx hcrUseSystemBrightnessForProContent changes to: %s";
      goto LABEL_26;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v16 = "Off";
    if (v7)
    {
      v16 = "On";
    }

    v32 = 136315138;
    v33 = v16;
    v14 = MEMORY[0x277D86220];
    v15 = " [1.450.54] hcrUseSystemBrightnessForProContent changes to: %s";
LABEL_36:
    _os_log_impl(&dword_250836000, v14, OS_LOG_TYPE_DEFAULT, v15, &v32, 0xCu);
  }

LABEL_37:
  v17 = v2[2338];
  if (GetConfig() && (v18 = GetConfig(), *(v18 + 5527)) && (v18[11052] & 0x80) != 0 && (!GetConfig() || (v19 = GetConfig(), *HDRConfig::GetConfigEntryValue(v19, 0xFBu, 0) != 1)))
  {
    v20 = 0;
  }

  else
  {
    v20 = v2[2328];
  }

  v21 = v20 & 1;
  v2[2338] = v20 & 1;
  if (v2[2576] == 1)
  {
    if (enableLogInstance)
    {
      if (*(v2 + 321))
      {
        v22 = *(v2 + 321);
      }

      else
      {
        v22 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      v23 = "Off";
      if (v21)
      {
        v23 = "On";
      }

      v32 = 134218242;
      v33 = WORD1(v22);
      v34 = 2080;
      v35 = v23;
      v24 = MEMORY[0x277D86220];
      v25 = " [1.450.54] #%04llx hcrUseSystemBrightnessForCaptureContent : %s";
LABEL_61:
      _os_log_impl(&dword_250836000, v24, OS_LOG_TYPE_DEFAULT, v25, &v32, 0x16u);
LABEL_62:
      prevLogInstanceID = v22;
      goto LABEL_73;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v27 = "Off";
    if (v21)
    {
      v27 = "On";
    }

    v32 = 136315138;
    v33 = v27;
    v28 = MEMORY[0x277D86220];
    v29 = " [1.450.54] hcrUseSystemBrightnessForCaptureContent : %s";
    goto LABEL_72;
  }

  if (v17 != v21)
  {
    if (enableLogInstance)
    {
      if (*(v2 + 321))
      {
        v22 = *(v2 + 321);
      }

      else
      {
        v22 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      v26 = "Off";
      if (v21)
      {
        v26 = "On";
      }

      v32 = 134218242;
      v33 = WORD1(v22);
      v34 = 2080;
      v35 = v26;
      v24 = MEMORY[0x277D86220];
      v25 = " [1.450.54] #%04llx hcrUseSystemBrightnessForCaptureContent changes to: %s";
      goto LABEL_61;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v30 = "Off";
    if (v21)
    {
      v30 = "On";
    }

    v32 = 136315138;
    v33 = v30;
    v28 = MEMORY[0x277D86220];
    v29 = " [1.450.54] hcrUseSystemBrightnessForCaptureContent changes to: %s";
LABEL_72:
    _os_log_impl(&dword_250836000, v28, OS_LOG_TYPE_DEFAULT, v29, &v32, 0xCu);
  }

LABEL_73:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)getAmbientViewingEnvironmentType:(__IOSurface *)type
{
  v3 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  v4 = IOSurfaceCopyValue(type, @"AmbientViewingEnvironment");
  if (v4)
  {
    v5 = v4;
    CFDataGetLength(v4);
    v6 = bswap32(*CFDataGetBytePtr(v5));
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 566);
  if (v6 > v7)
  {
    v7 = v6;
  }

  *(v3 + 566) = v7;
  *(v3 + 567) = v7 > 0x27100;
  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 2535))
    {
      if ((Config[5068] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v9 = GetConfig();
          v10 = *HDRConfig::GetConfigEntryValue(v9, 0x73u, 0);
        }

        else
        {
          v10 = 0;
        }

        *(v3 + 567) = v10;
      }
    }
  }
}

- (void)getSceneIllumination:(__IOSurface *)illumination
{
  valuePtr = 0;
  p_sceneLux = &self->_sceneLux;
  if (self->_sceneLux < 0.0)
  {
    v4 = IOSurfaceCopyValue(illumination, @"SceneIllumination");
    if (v4)
    {
      v5 = v4;
      CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
      *p_sceneLux = valuePtr / 1000.0;
      CFRelease(v5);
    }
  }

  if (GetConfig())
  {
    Config = GetConfig();
    if (*(Config + 4031))
    {
      if ((Config[8060] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v7 = GetConfig();
          v8 = *HDRConfig::GetConfigEntryValue(v7, 0xB7u, 0);
        }

        else
        {
          v8 = 0.0;
        }

        *p_sceneLux = v8 / 1000.0;
      }
    }
  }
}

- (void)extractCAMetaData:(id)data withRPU:(BOOL)u
{
  uCopy = u;
  v79 = *MEMORY[0x277D85DE8];
  v6 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  dataCopy = data;
  v8 = dataCopy;
  if (uCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *(v6 + 525) = v9;
  *(v6 + 526) = uCopy;
  *(v6 + 264) = 10;
  *&self->_displayDiagonalSize = xmmword_2508CDFD0;
  *(v6 + 532) = 0;
  *(v6 + 265) = vdup_n_s32(0x461C4000u);
  *&self->_minDisplayBrightnessNits = xmmword_2508CDFE0;
  *(v6 + 271) = 0x3F0000003E75C28FLL;
  *self->_displayPrimaries = xmmword_2508CDFF0;
  *&self->_displayPrimaries[2] = xmmword_2508CE000;
  *&self->_displayPrimaries[4] = xmmword_2508CE010;
  *&self->_displayPrimaries[6] = xmmword_2508CE020;
  v10 = [(NSDictionary *)dataCopy valueForKey:@"HDRProcessingSourceContentKey"];
  v12 = v10;
  if (v10)
  {
    v13 = *(v6 + 525);
    v14 = [(NSDictionary *)v10 valueForKey:@"HDRProcessingSourceContentTypeKey"];
    v15 = v14;
    if (v14)
    {
      if ([v14 isEqualToString:@"HDRProcessingSourceContentTypeDolbyVision"])
      {
        v13 = 1;
      }

      else if ([v15 isEqualToString:@"HDRProcessingSourceContentTypeHDR10"])
      {
        v13 = 2;
      }

      else if ([v15 isEqualToString:@"HDRProcessingSourceContentTypeHLG"])
      {
        v13 = 3;
      }

      else if ([v15 isEqualToString:@"HDRProcessingSourceContentTypeSDR"])
      {
        v13 = 4;
      }
    }

    *(v6 + 525) = v13;
    *(v6 + 264) = getIntFromDictionayForKey(v12, &cfstr_Khdrprocessing.isa, 10);
    *(v6 + 530) = getFloatFromDictionayForKey(v12, &cfstr_Khdrprocessing_0.isa, 10000.0);
    *(v6 + 531) = getFloatFromDictionayForKey(v12, &cfstr_Khdrprocessing_1.isa, 10000.0);
  }

  LODWORD(v11) = 1074580685;
  [(HDRProcessor *)self getDisplayPipelineCompensationType:v8 gamma:v11];
  [(HDRProcessor *)self getAMVEStrengthValue:v8];
  [(HDRProcessor *)self getHDRConstraintStrengthValue:v8];
  [(HDRProcessor *)self getGCPGammaValue:v8];
  [(HDRProcessor *)self getHybridCanonicalRenderingEnablement];
  [(HDRProcessor *)self getHCRUseSystemBrightness];
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0, 0) == 1)
    {
      if (GetConfig())
      {
        v17 = GetConfig();
        if (*(v17 + 2953))
        {
          if ((v17[5904] & 0x80) != 0)
          {
            if (GetConfig())
            {
              v18 = GetConfig();
              v19 = *HDRConfig::GetConfigEntryValue(v18, 0x86u, 0);
            }

            else
            {
              v19 = 0.0;
            }

            *(v6 + 530) = v19;
            if (enableLogInstance)
            {
              if (*(v6 + 321))
              {
                v20 = *(v6 + 321);
              }

              else
              {
                v20 = prevLogInstanceID;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v75 = 134218240;
                *&v76 = WORD1(v20);
                v77 = 2048;
                v78 = v19;
                _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx sdrMaxBrightnessInNits was forced to %f!", &v75, 0x16u);
              }

              prevLogInstanceID = v20;
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v75 = 134217984;
              v76 = v19;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] sdrMaxBrightnessInNits was forced to %f!", &v75, 0xCu);
            }
          }
        }
      }

      if (GetConfig())
      {
        v21 = GetConfig();
        if (*(v21 + 2975))
        {
          if ((v21[5948] & 0x80) != 0)
          {
            if (GetConfig())
            {
              v22 = GetConfig();
              v23 = *HDRConfig::GetConfigEntryValue(v22, 0x87u, 0);
            }

            else
            {
              v23 = 0.0;
            }

            *(v6 + 531) = v23;
            if (enableLogInstance)
            {
              if (*(v6 + 321))
              {
                v24 = *(v6 + 321);
              }

              else
              {
                v24 = prevLogInstanceID;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v75 = 134218240;
                *&v76 = WORD1(v24);
                v77 = 2048;
                v78 = v23;
                _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx hdrMaxBrightnessInNits was forced to %f!", &v75, 0x16u);
              }

              prevLogInstanceID = v24;
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v75 = 134217984;
              v76 = v23;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] hdrMaxBrightnessInNits was forced to %f!", &v75, 0xCu);
            }
          }
        }
      }
    }
  }

  *(v6 + 565) = -1;
  v25 = [(NSDictionary *)v8 valueForKey:@"HDRProcessingDisplayKey"];
  if (v25)
  {
    IntFromDictionayForKey = getIntFromDictionayForKey(v8, &cfstr_Apiinterfaceve.isa, 0);
    *(v6 + 261) = IntFromDictionayForKey;
    v27 = [(NSDictionary *)v25 valueForKey:@"HDRProcessingDestinationDisplayTypeKey"];
    v28 = v27;
    if (IntFromDictionayForKey <= 0 && v27)
    {
      if (([v27 isEqualToString:@"HDRProcessingDestinationDisplayTypeDolbyVisionTV"] & 1) == 0)
      {
        if (([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeLowLatencyDolbyVisionTV"] & 1) == 0)
        {
          if (([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeHDR10TV"] & 1) == 0)
          {
            if (([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanel"] & 1) == 0)
            {
              if ([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanelLCD"])
              {
LABEL_55:
                v29 = 4;
                goto LABEL_66;
              }

              if ([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanelMac"])
              {
                v29 = 5;
                goto LABEL_66;
              }

              if ([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeSDRTV"])
              {
                v29 = 6;
                goto LABEL_66;
              }

              v73 = [v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeReferenceDisplay"] == 0;
              v74 = 7;
              goto LABEL_125;
            }

            goto LABEL_65;
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }
    }

    else
    {
      v29 = 0;
      if (IntFromDictionayForKey < 1 || !v27)
      {
LABEL_66:

        *(v6 + 532) = v29;
        self->_displayDiagonalSize = getIntFromDictionayForKey(v25, &cfstr_Diagonaldispla.isa, 42);
        *(v6 + 268) = getIntFromDictionayForKey(v25, &cfstr_Maximumdisplay.isa, 1000);
        self->_minDisplayBrightnessNits = getFloatFromDictionayForKey(v25, &cfstr_Minimumdisplay.isa, 0.005);
        *(v6 + 539) = getFloatFromDictionayForKey(v25, &cfstr_Displaycontras.isa, -1.0);
        *(v6 + 540) = getFloatFromDictionayForKey(v25, &cfstr_Displayaverage.isa, 1.0);
        if (GetConfig())
        {
          v30 = GetConfig();
          ConfigEntryValue = HDRConfig::GetConfigEntryValue(v30, 0x2Eu, 0);
          if (*ConfigEntryValue != 0.0)
          {
            *(v6 + 540) = *ConfigEntryValue;
          }
        }

        *(v6 + 541) = getFloatFromDictionayForKey(v25, &cfstr_Displayaverage_0.isa, 0.26);
        *(v6 + 542) = getFloatFromDictionayForKey(v25, &cfstr_Displayaverage_1.isa, 0.24);
        *(v6 + 543) = getFloatFromDictionayForKey(v25, &cfstr_Displayaverage_2.isa, 0.5);
        *(v6 + 544) = getFloatFromDictionayForKey(v25, &cfstr_Displaysustain.isa, 1200.0);
        *(v6 + 562) = ((getIntFromDictionayForKey(v25, &cfstr_Displaydolbyvi.isa, 32) >> 4) + 6) & 7;
        v32 = [(NSDictionary *)v25 valueForKey:@"DisplayChromaticityRx"];
        v33 = v32;
        if (v32)
        {
          [v32 floatValue];
          v35 = v34;
          v36 = 1;
        }

        else
        {
          v36 = 0;
          v35 = 0.68;
        }

        v37 = [(NSDictionary *)v25 valueForKey:@"DisplayChromaticityRy"];

        v38 = v37;
        if (v37)
        {
          [v37 floatValue];
          v40 = v39;
          ++v36;
        }

        else
        {
          v40 = 0.32;
        }

        v41 = [(NSDictionary *)v25 valueForKey:@"DisplayChromaticityGx"];

        v42 = v41;
        if (v41)
        {
          [v41 floatValue];
          v44 = v43;
          ++v36;
        }

        else
        {
          v44 = 0.265;
        }

        v45 = [(NSDictionary *)v25 valueForKey:@"DisplayChromaticityGy"];

        v46 = v45;
        if (v45)
        {
          [v45 floatValue];
          v48 = v47;
          ++v36;
        }

        else
        {
          v48 = 0.69;
        }

        v49 = [(NSDictionary *)v25 valueForKey:@"DisplayChromaticityBx"];

        v50 = v49;
        if (v49)
        {
          [v49 floatValue];
          v52 = v51;
          ++v36;
        }

        else
        {
          v52 = 0.15;
        }

        v53 = [(NSDictionary *)v25 valueForKey:@"DisplayChromaticityBy"];

        v54 = v53;
        if (v53)
        {
          [v53 floatValue];
          v56 = v55;
          ++v36;
        }

        else
        {
          v56 = 0.06;
        }

        v57 = [(NSDictionary *)v25 valueForKey:@"DisplayChromaticityWx"];

        v58 = v57;
        if (v57)
        {
          [v57 floatValue];
          v60 = v59;
          ++v36;
        }

        else
        {
          v60 = 0.3127;
        }

        v61 = [(NSDictionary *)v25 valueForKey:@"DisplayChromaticityWy"];

        if (v61)
        {
          [v61 floatValue];
          v63 = v62;
          ++v36;
        }

        else
        {
          v63 = 0.329;
        }

        v64 = [(NSDictionary *)v25 valueForKey:@"HDRProcessingEdrRangeTypeKey"];
        if ([v64 isEqualToString:@"HDRProcessingEdrRangeTypeNormalized"])
        {
          v65 = 1;
        }

        else
        {
          if (![v64 isEqualToString:@"HDRProcessingEdrRangeTypeNonNormalized"])
          {
LABEL_98:
            if (v36 == 8)
            {
              *(v6 + 273) = v35;
              *(v6 + 274) = v40;
              *(v6 + 275) = v44;
              *(v6 + 276) = v48;
              *(v6 + 277) = v52;
              *(v6 + 278) = v56;
              *(v6 + 279) = v60;
              *(v6 + 280) = v63;
            }

            goto LABEL_101;
          }

          v65 = 2;
        }

        *(v6 + 565) = v65;
        goto LABEL_98;
      }

      if (([v27 isEqualToString:@"HDRProcessingDestinationDisplayTypeDolbyVisionTV"] & 1) == 0)
      {
        if (([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeLowLatencyDolbyVisionTV"] & 1) == 0)
        {
          if (([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeHDR10TV"] & 1) == 0)
          {
            if (([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanelOLED"] & 1) == 0)
            {
              if ([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanel2DBL"])
              {
                v29 = 7;
                goto LABEL_66;
              }

              if ([v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanel0DBL"])
              {
                goto LABEL_55;
              }

              v73 = [v28 isEqualToString:@"HDRProcessingDestinationDisplayTypeSDRTV"] == 0;
              v74 = 6;
LABEL_125:
              if (v73)
              {
                v29 = 0;
              }

              else
              {
                v29 = v74;
              }

              goto LABEL_66;
            }

LABEL_65:
            v29 = 3;
            goto LABEL_66;
          }

LABEL_63:
          v29 = 2;
          goto LABEL_66;
        }

LABEL_61:
        v29 = 1;
        goto LABEL_66;
      }
    }

    v29 = 0;
    goto LABEL_66;
  }

LABEL_101:
  if (GetConfig())
  {
    v66 = GetConfig();
    if (*(v66 + 2557))
    {
      if ((v66[5112] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v67 = GetConfig();
          v68 = *HDRConfig::GetConfigEntryValue(v67, 0x74u, 0);
        }

        else
        {
          v68 = 0;
        }

        *(v6 + 532) = v68;
      }
    }
  }

  if (GetConfig())
  {
    v69 = GetConfig();
    if (*(v69 + 2645))
    {
      if ((v69[5288] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v70 = GetConfig();
          v71 = *HDRConfig::GetConfigEntryValue(v70, 0x78u, 0);
        }

        else
        {
          v71 = 0;
        }

        *(v6 + 565) = v71;
      }
    }
  }

  v72 = *MEMORY[0x277D85DE8];
}

- (int64_t)extractHEVCHDRParameterFromInputIOSurface:(__IOSurface *)surface forInfoFrame:(id *)frame tcControl:(ToneCurve_Control *)control
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v7 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  self->_ambientViewingEnvironmentIlluminance = 0;
  self->_sceneLux = -1.0;
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  *(v7 + 586) = PixelFormat;
  FourCCforType = getFourCCforType(PixelFormat);
  *(v7 + 588) = FourCCforType;
  v10 = isFormatYUV(FourCCforType);
  *(v7 + 299) = v10 ^ 1u;
  v11 = 13;
  if (v10)
  {
    v11 = 16;
  }

  v12 = (v7 + 2376);
  *(v7 + 297) = v11;
  BulkAttachments = IOSurfaceGetBulkAttachments();
  v14 = *(v7 + 525);
  if (BulkAttachments)
  {
    if (v14 == 4)
    {
      *(v7 + 2360) = xmmword_2508CD910;
      *v12 = vdupq_n_s64(1uLL);
      v18 = 100;
    }

    else
    {
      if (v14 == 3)
      {
        *(v7 + 2360) = xmmword_2508CE030;
        v15 = xmmword_2508CE040;
      }

      else
      {
        if (v14 != 2)
        {
          goto LABEL_15;
        }

        *(v7 + 2360) = xmmword_2508CE030;
        v15 = xmmword_2508CE050;
      }

      *v12 = v15;
      v18 = 1000;
    }

    *(v7 + 303) = v18;
    *(v7 + 608) = 1000593162;
  }

  else if (v14 != 1)
  {
    v16 = IOSurfaceGetPixelFormat(surface);
    v17 = getFourCCforType(v16);
    LOWORD(v21[0]) = isFullRangeFromSurfaceFormat(v17);
    goto LABEL_17;
  }

LABEL_15:
  if (*(v7 + 524) != 1 || v12->i64[0] != 1)
  {
    *(v7 + 305) = 0;
    *&frame->var0.var0 = *&v21[1];
    *&frame->var0.var8 = v21[3];
    frame->var1 = 0;
    result = -17000;
    goto LABEL_19;
  }

LABEL_17:
  result = -17012;
LABEL_19:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)extractHEVCHDRParameterFromInputIOSurfaceForDovi:(__IOSurface *)dovi forInfoFrame:(id *)frame tcControl:(ToneCurve_Control *)control
{
  v20 = 0uLL;
  v6 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  v22 = 0;
  v21 = 0;
  self->_ambientViewingEnvironmentIlluminance = 0;
  self->_sceneLux = -1.0;
  PixelFormat = IOSurfaceGetPixelFormat(dovi);
  *(v6 + 586) = PixelFormat;
  FourCCforType = getFourCCforType(PixelFormat);
  *(v6 + 588) = FourCCforType;
  v9 = isFormatYUV(FourCCforType);
  *(v6 + 299) = v9 ^ 1u;
  v10 = 13;
  if (v9)
  {
    v10 = 16;
  }

  *(v6 + 297) = v10;
  if (IOSurfaceGetBulkAttachments())
  {
    *(v6 + 148) = xmmword_2508CE060;
  }

  else
  {
    v11 = *(v6 + 588);
    v13 = v11 == 2019963440 || v11 == 1885745714;
    v16 = v13;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0u;
    v21 = 0;
    v22 = 0;
    *(v6 + 566) = 0;
    *(v6 + 295) = v13;
    *(v6 + 296) = extractInputColorPrimaries(&v16, *(v6 + 299));
    *(v6 + 297) = v18;
    if (v21)
    {
      *(v6 + 303) = v21 / 0x2710uLL;
      v6[2436] = 1;
    }

    if (HIDWORD(v21))
    {
      *(v6 + 608) = (HIDWORD(v21) / 0x2710);
      v6[2437] = 1;
    }

    v14 = v19;
    if (v19 > 0xCu || ((1 << v19) & 0x1202) == 0)
    {
      if (v17 == 9)
      {
        v15 = 9;
      }

      else
      {
        v15 = 1;
      }

      if (v17 == 12)
      {
        v14 = 12;
      }

      else
      {
        v14 = v15;
      }
    }

    *(v6 + 298) = v14;
  }

  *&frame->var0.var0 = 0;
  *&frame->var0.var4 = 0;
  frame->var1 = 0;
  *&frame->var0.var8 = 0;
}

- (void)extractHEVCHDRParameterFromOutputIOSurface:(__IOSurface *)surface
{
  v3 = (&self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960);
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  FourCCforType = getFourCCforType(PixelFormat);
  v6 = isFormatYUV(FourCCforType);
  v3[300] = v6 ^ 1u;
  v7 = 13;
  if (v6)
  {
    v7 = 16;
  }

  v3[302] = v7;
  if (IOSurfaceGetBulkAttachments())
  {
    v8 = 13;
    if (FourCCforType <= 1953903151)
    {
      if ((FourCCforType - 1886680624) > 4 || ((1 << (FourCCforType - 48)) & 0x15) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    if (FourCCforType > 1953903667)
    {
      if (FourCCforType == 1953969204)
      {
        goto LABEL_15;
      }

      v9 = 13364;
    }

    else
    {
      if (FourCCforType == 1953903152)
      {
        goto LABEL_15;
      }

      v9 = 12850;
    }

    if (FourCCforType != (v9 | 0x74760000))
    {
LABEL_25:
      v3[302] = v8;
      return;
    }

LABEL_15:
    v8 = 16;
    goto LABEL_25;
  }

  v10 = v3[327];
  v11 = 9;
  if (*MEMORY[0x277CC4C18] != v10)
  {
    v11 = 1;
  }

  if (*MEMORY[0x277CC4C30] == v10 || *MEMORY[0x277CC4C20] == v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  v3[301] = v13;
}

- (void)setCanonicalScreenCaptureParameters:(ToneCurve_Control *)parameters withOperation:(unsigned int *)operation
{
  parameters->targetMinLinear = 0.005;
  parameters->EDRFactor = 1.0;
  parameters->AmbientInNits = -1.0;
  self->_displayType = 7;
  *operation = 3;
}

- (void)setHDRControl:(id *)control withTCControl:(ToneCurve_Control *)cControl withRPU:(BOOL)u withMMR:(BOOL)r withDmData:(id *)data withOperation:(unsigned int)operation
{
  rCopy = r;
  uCopy = u;
  v13 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  *&control->var28 = 0;
  *&control->var20[8] = 0u;
  *&control->var24 = 0u;
  *control->var20 = 0u;
  *&control->var20[4] = 0u;
  *&control->var19[1] = 0u;
  *&control->var19[5] = 0u;
  *&control->var12 = 0u;
  *&control->var16 = 0u;
  *&control->var4 = 0u;
  *&control->var8 = 0u;
  *&control->var0 = 0u;
  hardwareType = self->_hardwareType;
  control->var1 = self->_hdrProfile;
  control->var2 = hardwareType;
  control->var10 = self->_displayType;
  *&control->var11 = vmovn_s64(*&self->_displayDiagonalSize);
  control->var13 = self->_minDisplayBrightnessNits;
  control->var7 = self->_inputFormatRaw;
  bitDepth = self->_bitDepth;
  control->var8 = self->_inputFormat;
  control->var9 = bitDepth;
  operationFlags = cControl->operationFlags;
  control->var3 = operation;
  control->var4 = operationFlags;
  if (operation == 4)
  {
    colorSpace = self->_colorSpace;
    outputColorSpace = self->_outputColorSpace;
    if (colorSpace)
    {
      if (colorSpace == 2)
      {
        if (outputColorSpace <= 2)
        {
          v19 = &unk_2508CE4DC;
          goto LABEL_11;
        }
      }

      else if (colorSpace == 1 && outputColorSpace < 3)
      {
        v19 = &unk_2508CE4C4;
LABEL_11:
        v20 = v19[outputColorSpace];
        goto LABEL_13;
      }
    }

    else if (outputColorSpace < 3)
    {
      v19 = &unk_2508CE4D0;
      goto LABEL_11;
    }
  }

  v20 = 0;
LABEL_13:
  control->var5 = v20;
  colourPrimaries = self->_colourPrimaries;
  transferFunction = self->_transferFunction;
  control->var17 = transferFunction;
  matrixCoeffs = self->_matrixCoeffs;
  control->var15 = colourPrimaries;
  control->var16 = matrixCoeffs;
  if (operation == 4)
  {
    var12 = self->_colorSpace;
  }

  else
  {
    var12 = data->var12;
  }

  control->var18 = var12;
  maxMasteringNits = self->_maxMasteringNits;
  if (maxMasteringNits >= 0x2710)
  {
    LODWORD(maxMasteringNits) = 10000;
  }

  control->var21 = maxMasteringNits;
  minMasteringNits = self->_minMasteringNits;
  v27 = 10000.0;
  if (minMasteringNits <= 10000.0)
  {
    if (minMasteringNits >= 0.005)
    {
      v27 = self->_minMasteringNits;
    }

    else
    {
      v27 = 0.005;
    }
  }

  control->var22 = v27;
  if (!u || operation == 4 || transferFunction == 18)
  {
    control->var14 = self->_videoFullRangeFlag;
    [(HDRProcessor *)self setCSCMatrixInHDRControl:control forIndex:?];
    LODWORD(transferFunction) = *(v13 + 594);
  }

  control->var25 = *(v13 + 565);
  control->var23 = *(v13 + 563);
  control->var24 = *(v13 + 564);
  v28 = *(v13 + 525);
  control->var0 = v28;
  control->var28 = transferFunction;
  if (v28 == 1 && *(v13 + 524) == 1 && [(MSRHDRProcessing *)self->_msr isMMREnabled]&& rCopy && *(v13 + 526) == 2)
  {
    control->var26 = 1;
  }

  control->var29 = 0;
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x19u, 0) == 1 && *(v13 + 532) == 2 && !*(v13 + 524))
    {
      control->var29 = 1;
    }
  }

  control->var30 = 0;
  if (IsGpuOnlySystem() || !GetConfig())
  {
    v31 = 0;
  }

  else
  {
    v30 = GetConfig();
    v31 = *HDRConfig::GetConfigEntryValue(v30, 0x1Au, 0);
  }

  control->var30 = v31 & 1;
  if (control->var0 == 1 && control->var17 == 18)
  {
    if ((var10 = control->var10, var10 == 7) && (*(cControl + 152) & 2) != 0 || var10 == 8 || var10 == 6 || var10 == 2 && !control->var29)
    {
      control->var0 = 3;
    }
  }

  control->var6 = uCopy;
  control->var27 = *(v13 + 567);
  cControl->sceneLux = *(v13 + 585);
  cControl->enableAmveStrength = v13[2272];
  cControl->amveStrengthValue = *(v13 + 569);
  cControl->enableHdrConstraintStrength = v13[2280];
  cControl->hdrConstraintStrengthValue = *(v13 + 571);
  if (GetConfig() && (v33 = GetConfig(), *(v33 + 4339)) && (v33[8676] & 0x80) != 0)
  {
    if (GetConfig())
    {
      v48 = GetConfig();
      v34 = *HDRConfig::GetConfigEntryValue(v48, 0xC5u, 0);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 1;
  }

  if (!control->var2)
  {
    v34 = 0;
  }

  cControl->hdrConstraintTransitionMode = v34;
  v35 = v13[2329];
  cControl->gcpcData.on = v35;
  cControl->gcpcData.gamma = *(v13 + 583);
  v36 = v13[2336];
  cControl->enableHybridCanonicalRendering = v36;
  cControl->gcpcData.on = v35 & (v36 ^ 1);
  if (GetConfig() && (v37 = GetConfig(), *(v37 + 5395)) && (v37[10788] & 0x80) != 0)
  {
    if (GetConfig())
    {
      v49 = GetConfig();
      v38 = *HDRConfig::GetConfigEntryValue(v49, 0xF5u, 0);
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 1;
  }

  cControl->hcrEnableAdaptiveHeadroom = v38 & 1;
  if (GetConfig() && (v39 = GetConfig(), *(v39 + 5417)) && (v39[10832] & 0x80) != 0)
  {
    if (GetConfig())
    {
      v50 = GetConfig();
      v40 = *HDRConfig::GetConfigEntryValue(v50, 0xF6u, 0);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 1;
  }

  cControl->hcrHeadroomLimitMode = v40;
  cControl->hcrDm4TmMode = -1;
  if (GetConfig() && (v41 = GetConfig(), *(v41 + 5439)) && (v41[10876] & 0x80) != 0)
  {
    if (GetConfig())
    {
      v51 = GetConfig();
      v42 = *HDRConfig::GetConfigEntryValue(v51, 0xF7u, 0);
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 1;
  }

  cControl->hcrEnableHistBasedTM = v42 & 1;
  if (GetConfig() && (v43 = GetConfig(), *(v43 + 5461)) && (v43[10920] & 0x80) != 0)
  {
    if (GetConfig())
    {
      v52 = GetConfig();
      v44 = *HDRConfig::GetConfigEntryValue(v52, 0xF8u, 0);
    }

    else
    {
      v44 = 0.0;
    }
  }

  else
  {
    v44 = 100.0;
  }

  cControl->hcrRefWhiteNits = v44;
  v45 = 5.0;
  if (GetConfig())
  {
    v46 = GetConfig();
    if (*(v46 + 5483))
    {
      if ((v46[10964] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v47 = GetConfig();
          v45 = *HDRConfig::GetConfigEntryValue(v47, 0xF9u, 0);
        }

        else
        {
          v45 = 0.0;
        }
      }
    }
  }

  cControl->hcrRefAmbientInNits = v45;
  if (GetConfig() && (v53 = GetConfig(), *(v53 + 5373)) && (v53[10744] & 0x80) != 0)
  {
    if (GetConfig())
    {
      v60 = GetConfig();
      v54 = *HDRConfig::GetConfigEntryValue(v60, 0xF4u, 0);
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    v54 = 1;
  }

  cControl->hcrEnablePQScaling = v54 & 1;
  if (control->var0 == 1 && control->var17 == 18 && control->var27 == 1)
  {
    v55 = v13[2338];
    cControl->hcrUseSystemBrightness = v55;
    if (v55 == 1)
    {
      cControl->hcrEnableAdaptiveHeadroom = 0;
      cControl->hcrHeadroomLimitMode = 0;
      if (!GetConfig() || (v56 = GetConfig(), !*(v56 + 5571)) || (v56[11140] & 0x80) == 0)
      {
        v57 = 7;
LABEL_106:
        cControl->hcrDm4TmMode = v57;
        goto LABEL_107;
      }

      if (GetConfig())
      {
        v61 = 253;
        goto LABEL_112;
      }

      goto LABEL_121;
    }
  }

  else
  {
    v58 = v13[2337];
    cControl->hcrUseSystemBrightness = v58;
    if (v58 == 1)
    {
      if (!GetConfig() || (v59 = GetConfig(), !*(v59 + 5549)) || (v59[11096] & 0x80) == 0)
      {
        v57 = -1;
        goto LABEL_106;
      }

      if (GetConfig())
      {
        v61 = 252;
LABEL_112:
        v62 = GetConfig();
        v57 = *HDRConfig::GetConfigEntryValue(v62, v61, 0);
        goto LABEL_106;
      }

LABEL_121:
      v57 = 0;
      goto LABEL_106;
    }
  }

LABEL_107:
  cControl->max_content_light_level = *(v13 + 305);
}

- (void)setCSCMatrixInHDRControl:(id *)control forIndex:(unsigned int)index
{
  v4 = 0;
  v5 = &R2020_Yuv2RgbFull;
  var14 = control->var14;
  var15 = control->var15;
  if (!var14)
  {
    v5 = &R2020_Yuv2RgbNarrow;
  }

  v8 = &R709_Yuv2RgbFull;
  if (!var14)
  {
    v8 = &R709_Yuv2RgbNarrow;
  }

  if (index != 9)
  {
    v5 = v8;
  }

  do
  {
    control->var19[v4] = *&v5[v4 * 4];
    ++v4;
  }

  while (v4 != 9);
  v9 = 0;
  v10 = &R709_Rgb2LMS;
  if (var15 == 12)
  {
    v10 = &P3_Rgb2LMS;
  }

  if (var15 == 9)
  {
    v11 = &R2020_Rgb2LMS;
  }

  else
  {
    v11 = v10;
  }

  do
  {
    control->var20[v9] = *&v11[v9 * 4];
    ++v9;
  }

  while (v9 != 9);
}

- (unsigned)selectHDRUsage:(unsigned int)usage withRPU:(BOOL)u
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  if (usage == 4)
  {
    if (u)
    {
      displayType = self->_displayType;
      if (displayType)
      {
        if (displayType != 7 && displayType != 2)
        {
          goto LABEL_44;
        }

LABEL_9:
        result = 15;
        goto LABEL_71;
      }

      goto LABEL_25;
    }

    hdrMode = self->_hdrMode;
    switch(hdrMode)
    {
      case 3u:
        v16 = self->_displayType;
        if (!v16)
        {
          result = 18;
          goto LABEL_71;
        }

        if (v16 == 7 || v16 == 2)
        {
          result = 19;
          goto LABEL_71;
        }

        break;
      case 2u:
        v15 = self->_displayType;
        if (!v15)
        {
          result = 16;
          goto LABEL_71;
        }

        if (v15 == 7 || v15 == 2)
        {
          result = 17;
          goto LABEL_71;
        }

        break;
      case 1u:
        v11 = self->_displayType;
        if (v11)
        {
          if (v11 != 7 && v11 != 2)
          {
            break;
          }

          goto LABEL_9;
        }

LABEL_25:
        result = 14;
        goto LABEL_71;
      default:
        break;
    }

LABEL_44:
    if (enableLogInstance)
    {
      if (self->logInstanceID)
      {
        logInstanceID = self->logInstanceID;
      }

      else
      {
        logInstanceID = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v4 + 525);
        v27 = 134218496;
        *v28 = WORD1(logInstanceID);
        *&v28[8] = 1024;
        v29 = 0;
        v30 = 1024;
        v31 = v19;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Incorrect mode usage : %d _hdrMode = %d", &v27, 0x18u);
      }

      prevLogInstanceID = logInstanceID;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_60:
        v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        result = 0;
        if (v22)
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/HDRProcessorMetal.mm at line 4112\n", &v27, 2u);
          result = 0;
        }

        goto LABEL_71;
      }

      v20 = *(v4 + 525);
      v27 = 67109376;
      *v28 = 0;
      *&v28[4] = 1024;
      *&v28[6] = v20;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Incorrect mode usage : %d _hdrMode = %d", &v27, 0xEu);
    }

    if (enableLogInstance)
    {
      if (*(v4 + 321))
      {
        v21 = *(v4 + 321);
      }

      else
      {
        v21 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v27 = 134217984;
        *v28 = WORD1(v21);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/HDRProcessorMetal.mm at line 4112\n", &v27, 0xCu);
      }

      result = 0;
      prevLogInstanceID = v21;
      goto LABEL_71;
    }

    goto LABEL_60;
  }

  v8 = self->_hdrMode;
  if (v8 == 1)
  {
    v9 = self->_displayType;
    if (v9 > 8)
    {
      if (enableLogInstance)
      {
        if (self->logInstanceID)
        {
          v26 = self->logInstanceID;
        }

        else
        {
          v26 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v27 = 134218496;
          *v28 = WORD1(v26);
          *&v28[8] = 1024;
          v29 = 2;
          v30 = 1024;
          v31 = 1;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Incorrect mode usage : %d _hdrMode = %d", &v27, 0x18u);
        }

        prevLogInstanceID = v26;
        v12 = 2;
      }

      else
      {
        v12 = 2;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v27 = 67109376;
          *v28 = 2;
          *&v28[4] = 1024;
          *&v28[6] = 1;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Incorrect mode usage : %d _hdrMode = %d", &v27, 0xEu);
        }
      }
    }

    else
    {
      if (v9 != 2)
      {
        result = 2;
        goto LABEL_71;
      }

      v12 = 4;
    }

    v8 = *(v4 + 525);
  }

  else
  {
    v12 = 2;
  }

  if (v8 == 2)
  {
    v13 = *(v4 + 532);
    if (v13 >= 9)
    {
      if (enableLogInstance)
      {
        if (*(v4 + 321))
        {
          v14 = *(v4 + 321);
        }

        else
        {
          v14 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v27 = 134218496;
          *v28 = WORD1(v14);
          *&v28[8] = 1024;
          v29 = 7;
          v30 = 1024;
          v31 = 2;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Incorrect mode usage : %d _hdrMode = %d", &v27, 0x18u);
        }

        prevLogInstanceID = v14;
        v12 = 7;
      }

      else
      {
        v12 = 7;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v27 = 67109376;
          *v28 = 7;
          *&v28[4] = 1024;
          *&v28[6] = 2;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Incorrect mode usage : %d _hdrMode = %d", &v27, 0xEu);
        }
      }
    }

    else
    {
      v12 = dword_2508CE4E8[v13];
    }
  }

  v23 = *(v4 + 525);
  if (v23 == 3)
  {
    result = 12;
  }

  else
  {
    result = v12;
  }

  if (v23 == 4)
  {
    v24 = *(v4 + 532);
    if (v24 > 6)
    {
      result = 9;
    }

    else
    {
      result = dword_2508CE50C[v24];
    }
  }

LABEL_71:
  *(v4 + 622) = result;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)extractFrameMetadata:(__CFDictionary *)metadata intoTCControl:(ToneCurve_Control *)control
{
  v6 = &self->_edrMetaData[1].tcControl.hlgTmParam.artisticOOTFParam.tmCurveParam.param.hdr10Plus + 960;
  Value = CFDictionaryGetValue(metadata, @"MaximumExtendedDynamicRangeColorComponentValue");
  if (Value)
  {
    valuePtr = 0.0;
    CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
    v8 = valuePtr;
  }

  else
  {
    v8 = *(v6 + 645);
  }

  control->maxEDRValue = v8;
  v9 = CFDictionaryGetValue(metadata, @"HDRProcessingOperationEnum");
  if (v9)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
    v10 = LODWORD(valuePtr);
  }

  else
  {
    v10 = 5;
  }

  control->operationFromDict = v10;
  v11 = CFDictionaryGetValue(metadata, @"HDRProcessingOperationFlags");
  if (v11)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
    v12 = LODWORD(valuePtr);
  }

  else
  {
    v12 = 0;
  }

  control->operationFlags = v12;
  v13 = CFDictionaryGetValue(metadata, @"EDRFactor");
  if (v13)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v13, kCFNumberFloatType, &valuePtr);
    v14 = valuePtr;
  }

  else
  {
    v14 = *(v6 + 646);
  }

  control->EDRFactor = v14;
  v15 = CFDictionaryGetValue(metadata, @"AmbientLightInNits");
  if (v15)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v15, kCFNumberFloatType, &valuePtr);
    v16 = valuePtr;
  }

  else
  {
    v16 = *(v6 + 647);
  }

  control->AmbientInNits = v16;
  v17 = CFDictionaryGetValue(metadata, @"HDRProcessingDisplaySupportsAmbientAdaptationKey");
  if (v17)
  {
    v18 = CFBooleanGetValue(v17) == 0;
  }

  else
  {
    v18 = 1;
  }

  control->HDRProcessingFullAmbientAdaptation = v18;
  control->HDRProcessingDisplayAdjustsBlackLevel = 1;
  v19 = CFDictionaryGetValue(metadata, @"HDRProcessingDisplayAdjustsBlackLevelKey");
  if (v19)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
    *&control->HDRProcessingDisplayAdjustsBlackLevel = valuePtr;
  }

  v20 = CFDictionaryGetValue(metadata, @"CurrentMaxPanelNits");
  if (v20)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v20, kCFNumberFloatType, &valuePtr);
    v21 = valuePtr;
  }

  else
  {
    v21 = *(v6 + 325);
  }

  control->targetMaxLinear = v21;
  v22 = CFDictionaryGetValue(metadata, @"CurrentMinPanelNits");
  if (v22)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v22, kCFNumberFloatType, &valuePtr);
    v23 = valuePtr;
  }

  else
  {
    v23 = *(v6 + 538);
  }

  control->targetMinLinear = v23;
  v24 = CFDictionaryGetValue(metadata, @"ScreenCaptureSession");
  if (v24)
  {
    v25 = CFBooleanGetValue(v24) != 0;
  }

  else
  {
    v25 = 0;
  }

  control->hdrCanonicalScreenCapture = v25;
  if (GetConfig())
  {
    Config = GetConfig();
    v27 = *HDRConfig::GetConfigEntryValue(Config, 0x8Eu, 0);
    if (v27 > 0.00001)
    {
      control->targetMaxLinear = v27;
    }
  }

  if (GetConfig())
  {
    v28 = GetConfig();
    v29 = *HDRConfig::GetConfigEntryValue(v28, 0x79u, 0);
    if (v29 > 0.00001)
    {
      v30 = v29;
      control->EDRFactor = v30;
    }
  }

  if (GetConfig())
  {
    v31 = GetConfig();
    v32 = *HDRConfig::GetConfigEntryValue(v31, 0x81u, 0);
    if (v32 > 0.00001)
    {
      v33 = v32;
      control->maxEDRValue = v33;
    }
  }

  if (GetConfig())
  {
    v34 = GetConfig();
    if (*(v34 + 3151))
    {
      if ((v34[6300] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v35 = GetConfig();
          v36 = *HDRConfig::GetConfigEntryValue(v35, 0x8Fu, 0);
          if (v36 > 0.00001)
          {
            control->targetMinLinear = v36;
          }
        }
      }
    }
  }

  v37 = CFDictionaryGetValue(metadata, @"HDRProcessingOrientationKey");
  if (v37)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v37, kCFNumberIntType, &valuePtr);
    v38 = LOBYTE(valuePtr) & 7;
  }

  else
  {
    v38 = 0;
  }

  control->orientation = v38;
  if (GetConfig())
  {
    v39 = GetConfig();
    if (*(v39 + 2513))
    {
      if ((v39[5024] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v40 = GetConfig();
          v41 = *HDRConfig::GetConfigEntryValue(v40, 0x72u, 0);
        }

        else
        {
          v41 = 0.0;
        }

        control->AmbientInNits = v41;
      }
    }
  }

  maxEDRValue = control->maxEDRValue;
  if (maxEDRValue < 1.0)
  {
    syslog(27, "HDR Processor error: Invalid MaximumExtendedDynamicRangeColorComponentValue : %f\n", maxEDRValue);
    control->maxEDRValue = 1.0;
  }

  EDRFactor = control->EDRFactor;
  if (EDRFactor > 1.0 || EDRFactor <= 0.0)
  {
    syslog(27, "HDR Processor error: Invalid EDRFactor : %f\n", EDRFactor);
    control->EDRFactor = 1.0;
  }
}

+ (BOOL)isNSDataNonEmpty:(id)empty dataLength:(unint64_t *)length dataBytes:(char *)bytes
{
  emptyCopy = empty;
  *length = [emptyCopy length];
  bytes = [emptyCopy bytes];
  *bytes = bytes;
  if (bytes)
  {
    v9 = *length != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)dolbyIOMFBMetadata:(id *)metadata withFilteredMinPQ:(float)q FilteredMaxPQ:(float)pQ FilteredAvgPQ:(float)avgPQ EnableLevel4:(BOOL)level4 FilteredAvg:(float)avg FilteredStdDev:(float)dev
{
  v18 = *MEMORY[0x277D85DE8];
  if (metadata)
  {
    v9 = *MEMORY[0x277D85DE8];

    [MSRHDRProcessing dolbyIOMFBMetadata:"dolbyIOMFBMetadata:withFilteredMinPQ:FilteredMaxPQ:FilteredAvgPQ:EnableLevel4:FilteredAvg:FilteredStdDev:" withFilteredMinPQ:? FilteredMaxPQ:? FilteredAvgPQ:? EnableLevel4:? FilteredAvg:? FilteredStdDev:?];
  }

  else
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v10 = logInstanceID;
      }

      else
      {
        v10 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218498;
        v13 = WORD1(v10);
        v14 = 2080;
        v15 = "+[HDRProcessor dolbyIOMFBMetadata:withFilteredMinPQ:FilteredMaxPQ:FilteredAvgPQ:EnableLevel4:FilteredAvg:FilteredStdDev:]";
        v16 = 2048;
        v17 = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     %s: metatdata= %p, bailout!!!\n", &v12, 0x20u);
      }

      prevLogInstanceID = v10;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "+[HDRProcessor dolbyIOMFBMetadata:withFilteredMinPQ:FilteredMaxPQ:FilteredAvgPQ:EnableLevel4:FilteredAvg:FilteredStdDev:]";
      v14 = 2048;
      v15 = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]     %s: metatdata= %p, bailout!!!\n", &v12, 0x16u);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

+ (int64_t)parseHDR10PlusSEIMessage:(id)message outputMetadata:(id *)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  *(&metadata->var1.var0.var5[2] + 1) = 0u;
  *&metadata->var1.var0.var2[5] = 0u;
  *&metadata->var1.var0.var3 = 0u;
  *&metadata->var0 = 0u;
  *&metadata->var1.var0.var2[1] = 0u;
  v12 = 0;
  v13 = 0;
  if (![HDRProcessor isNSDataNonEmpty:message dataLength:&v13 dataBytes:&v12])
  {
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
        LODWORD(v19.var0) = 134218242;
        *(&v19.var0 + 4) = WORD1(v6);
        WORD2(v19.var1) = 2080;
        *(&v19.var1 + 6) = "+[HDRProcessor parseHDR10PlusSEIMessage:outputMetadata:]";
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     %s: illegal SEI", &v19, 0x16u);
      }

      prevLogInstanceID = v6;
      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v19.var0) = 136315138;
      *(&v19.var0 + 4) = "+[HDRProcessor parseHDR10PlusSEIMessage:outputMetadata:]";
      v7 = MEMORY[0x277D86220];
      v8 = &v19;
LABEL_24:
      _os_log_impl(&dword_250836000, v7, OS_LOG_TYPE_DEFAULT, " [1.450.54]     %s: illegal SEI", v8, 0xCu);
    }

LABEL_25:
    result = -17003;
    goto LABEL_26;
  }

  HDR10PlusMetaData_RBSP::HDR10PlusMetaData_RBSP(&v19);
  commonRBSP::setRBSP(&v19, v12, v13);
  if (HDR10PlusMetaData_RBSP::parse_hdr10plus_sei(&v19, v18))
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v5 = logInstanceID;
      }

      else
      {
        v5 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v15 = WORD1(v5);
        v16 = 2080;
        v17 = "+[HDRProcessor parseHDR10PlusSEIMessage:outputMetadata:]";
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx     %s: illegal SEI", buf, 0x16u);
      }

      prevLogInstanceID = v5;
      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "+[HDRProcessor parseHDR10PlusSEIMessage:outputMetadata:]";
      v7 = MEMORY[0x277D86220];
      v8 = buf;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  [MSRHDRProcessing HDR10PlusIOMFBMetadata:metadata withHDR10PlusData:v18];
  if (GetConfig())
  {
    Config = GetConfig();
    HDRConfig::GetConfigEntryValue(Config, 0x4Bu, 0);
  }

  result = -17000;
LABEL_26:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end