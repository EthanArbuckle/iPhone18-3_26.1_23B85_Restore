@interface DolbyVisionComposer
- (BOOL)dovi_tm_configChanged:(id *)changed HDRControl:(id *)control DM:(id)m EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam tcCtrl:(ToneCurve_Control *)ctrl;
- (BOOL)hdr10_tm_configChanged:(_HDR10TMParam *)changed HDRControl:(id *)control EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam;
- (BOOL)hlg_tm_configChanged:(id *)changed HDRControl:(id *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam;
- (DolbyVisionComposer)initWithDevice:(id)device;
- (id)getComputePipeLineStateForShader:(id)shader;
- (int64_t)checkForContent:(unsigned int)content contentReturn1:(BOOL *)return1 contentReturn2:(BOOL *)return2 contentReturn3:(BOOL *)return3 forDisplay:(unsigned int)display displayReturn1:(BOOL *)displayReturn1 displayReturn2:(BOOL *)displayReturn2 displayReturn3:(BOOL *)self0 displayReturn4:(BOOL *)self1 displayReturn5:(BOOL *)self2;
- (int64_t)checkInputFormats:(unsigned int)formats returnInput1:(BOOL *)input1 returnInput2:(BOOL *)input2 returnInput3:(BOOL *)input3 returnInput4:(BOOL *)input4 returnInput5:(BOOL *)input5 outputFormat:(unsigned int)format returnOutput1:(BOOL *)self0 returnOutput2:(BOOL *)self1 returnOutput3:(BOOL *)self2 returnOutput4:(BOOL *)self3;
- (int64_t)embeddedSetupEncoderForCommandBuffer:(id)buffer DMData:(id *)data dmConfig:(id)config isInput422:(BOOL)input422 hasThreeOutputPlane:(BOOL)plane isSdrOnDolbyOrHDR10:(BOOL)r10 isHDR10OnHDR10TV:(BOOL)v isDolbyOnHDR10TV:(BOOL)self0 isHDR10OnDolby:(BOOL)self1 isHDR10OnPad:(BOOL)self2 isHLGOnPad:(BOOL)self3 isDoviOnPad:(BOOL)self4 isDoviOnLLDovi:(BOOL)self5 isHDR10OnLLDovi:(BOOL)self6 isHLGOnHDR10TV:(BOOL)self7 isHLGOnDolbyTV:(BOOL)self8 isHLGOnLLDovi:(BOOL)self9 isPtvMode:(BOOL)mode orientation:(int)orientation isDolby84:(BOOL)dolby84 dovi50toHDR10TVMode:(unsigned int)vMode isDM4:(BOOL)m4 isGpuTmRefMode:(BOOL)refMode;
- (int64_t)embeddedSetupEncoderForGpuMatchMsrCommandBuffer:(id)buffer DMData:(id *)data dmConfig:(id)config isInput422:(BOOL)input422 orientation:(int)orientation isDolby84:(BOOL)dolby84 dovi50toHDR10TVMode:(unsigned int)mode isDM4:(BOOL)self0 dpcParam:(_DpcParam *)self1 tcControl:(ToneCurve_Control *)self2 hdrControl:(id *)self3 isHDR10Content:(BOOL)self4 isHLGContent:(BOOL)self5 isDOVIContent:(BOOL)self6;
- (int64_t)embeddedSetupToneMappingWithContent:(BOOL)content Output:(__IOSurface *)output DM:(id)m DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl hdr10InfoFrame:(id *)frame dmConfig:(id *)self0 hdr10OnPad:(BOOL)self1 useYUVScalingTable:(BOOL)self2;
- (int64_t)encodeDualLayerToCommandBuffer:(id)buffer BL:(__IOSurface *)l EL:(__IOSurface *)eL Output:(__IOSurface *)output MetaData:(id *)data tcControl:(ToneCurve_Control *)control;
- (int64_t)encodeSingleLayerToCommandBuffer:(id)buffer BL:(__IOSurface *)l Output:(__IOSurface *)output ComposerData:(id *)data DM:(id)m DMData:(id *)mData tcControl:(ToneCurve_Control *)control hdrControl:(id *)self0 hdr10InfoFrame:(id *)self1;
- (int64_t)encodeToCommandBuffer:(id)buffer BL:(__IOSurface *)l EL:(__IOSurface *)eL Output:(__IOSurface *)output ComposerData:(id *)data DM:(id)m DMData:(id *)mData tcControl:(ToneCurve_Control *)self0 hdrControl:(id *)self1 hdr10InfoFrame:(id *)self2 frameNumber:(unint64_t)self3;
- (int64_t)setupInputTexturesWithBL:(__IOSurface *)l EL:(__IOSurface *)eL Output:(__IOSurface *)output MetaData:(id *)data;
- (int64_t)setupOutputTexturesWithBuffer:(__IOSurface *)buffer orientation:(int)orientation ptvMode:(BOOL)mode;
- (void)createHLG2LTable;
- (void)createL2PQTable;
- (void)createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control HDRControl:(id *)rControl;
- (void)createPQ2LTable;
- (void)createScalingTable_YUVTM;
- (void)dovi_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TMParam:(_DoViTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam HlgOOTFCombined:(BOOL)combined HlgOOTFOnly:(BOOL)self0 IsDoVi84:(BOOL)self1 tcCtrl:(ToneCurve_Control *)self2;
- (void)dovi_dm4_updateInterleavedLUT;
- (void)dovi_tm_createLUTFromDMConfig:(id *)config HDRControl:(id *)control DM:(id)m TMParam:(_DoViTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam HlgOOTFCombined:(BOOL)combined HlgOOTFOnly:(BOOL)self0 IsDoVi84:(BOOL)self1 tcCtrl:(ToneCurve_Control *)self2;
- (void)dovi_tm_reserveConfig:(id *)config HDRControl:(id *)control DM:(id)m EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam tcCtrl:(ToneCurve_Control *)ctrl;
- (void)dovi_tm_updateLUT;
- (void)embeddedCreateKernels;
- (void)encodeComposeChromaToCommandBuffer:(id)buffer withMetaData:(id *)data;
- (void)encodeComposeCombinedToCommandBuffer:(id)buffer;
- (void)encodeComposeLumaToCommandBuffer:(id)buffer;
- (void)encodeSubsampleLumaHorizontalToCommandBuffer:(id)buffer;
- (void)encodeSubsampleLumaVerticalToCommandBuffer:(id)buffer;
- (void)fillInScalingTable_YUVTM:(id *)m target_White:(float)white target_Black:(float)black source_White:(float)source_White source_Black:(float)source_Black satBoost:(float)boost scalingFactor:(BOOL)factor;
- (void)getTmLutInput:(unint64_t)input lutInput:(float *)lutInput;
- (void)getTmLutInput_C:(unint64_t)c lutInput:(float *)input;
- (void)hdr10_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam;
- (void)hdr10_tm_createLUTFromDMConfig:(id *)config TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam HDRControl:(id *)control DM:(id)m;
- (void)hdr10_tm_reserveConfig:(_HDR10TMParam *)config HDRControl:(id *)control EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam;
- (void)hdr10_tm_updateLUT;
- (void)hlg_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)mode;
- (void)hlg_tm_createLUTFromDMConfig:(id *)config DM:(id)m TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)mode;
- (void)hlg_tm_reserveConfig:(id *)config HDRControl:(id *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam;
- (void)hlg_tm_updateLUT;
- (void)initBuffers;
- (void)setupComposerKernelConfiguration:(id *)configuration fromMetaData:(id *)data;
- (void)setupInputBuffersWithMetadata:(id *)metadata;
- (void)setupMetal;
@end

@implementation DolbyVisionComposer

- (DolbyVisionComposer)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = DolbyVisionComposer;
  v6 = [(DolbyVisionComposer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    *&v7->_yuvCombinedCompose = 0;
    v7->_bypassDisplayManagement = 0;
    [(DolbyVisionComposer *)v7 setupMetal];
    [(DolbyVisionComposer *)v7 initBuffers];
    [(DolbyVisionComposer *)v7 createPQ2LTable];
    [(DolbyVisionComposer *)v7 createL2PQTable];
    [(DolbyVisionComposer *)v7 createHLG2LTable];
    [(DolbyVisionComposer *)v7 createScalingTable_YUVTM];
    [(DolbyVisionComposer *)v7 initDMConfigCache];
    [(DolbyVisionComposer *)v7 embeddedCreateKernels];
    v7->_iosurface_ReadOnlyTextureAlignmentBytes = [(MTLDeviceSPI *)v7->_device iosurfaceReadOnlyTextureAlignmentBytes];
  }

  return v7;
}

- (void)setupMetal
{
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HDRProcessing"];
  v3 = [v7 pathForResource:@"default.metallib" ofType:0];
  device = self->_device;
  if (v3)
  {
    newDefaultLibrary = [(MTLDeviceSPI *)device newLibraryWithFile:v3 error:0];
  }

  else
  {
    newDefaultLibrary = [(MTLDeviceSPI *)device newDefaultLibrary];
  }

  defaultLibrary = self->_defaultLibrary;
  self->_defaultLibrary = newDefaultLibrary;
}

- (id)getComputePipeLineStateForShader:(id)shader
{
  v3 = [shader getComputePipeLineStateForDevice:self->_device Library:self->_defaultLibrary];

  return v3;
}

- (void)embeddedCreateKernels
{
  v3 = [(DolbyVisionComposer *)self createShaderWithName:@"composeLuma" dolby84:0 forLLDovi:0];
  composeLumaKernel = self->_composeLumaKernel;
  self->_composeLumaKernel = v3;

  v5 = [(DolbyVisionComposer *)self createShaderWithName:@"composeChroma" dolby84:0 forLLDovi:0];
  composeChromaKernel = self->_composeChromaKernel;
  self->_composeChromaKernel = v5;

  v7 = [(DolbyVisionComposer *)self createShaderWithName:@"composeYUV" dolby84:0 forLLDovi:0];
  composeYUVKernel = self->_composeYUVKernel;
  self->_composeYUVKernel = v7;

  if (self->_dumpPolynomialResult)
  {
    v9 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer_with_dump" dolby84:0 forLLDovi:0];
    v10 = self->_singleLayerIntegratedKernel[0];
    self->_singleLayerIntegratedKernel[0] = v9;
  }

  else
  {
    v11 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer" dolby84:0 forLLDovi:0];
    v12 = self->_singleLayerIntegratedKernel[0];
    self->_singleLayerIntegratedKernel[0] = v11;

    v13 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer" dolby84:1 forLLDovi:0];
    v14 = self->_singleLayerIntegratedKernel[1];
    self->_singleLayerIntegratedKernel[1] = v13;

    v15 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer_hdr2sdr" dolby84:0 forLLDovi:1];
    v16 = self->_singleLayerIntegratedKernel[2];
    self->_singleLayerIntegratedKernel[2] = v15;

    v17 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer_hdr2sdr" dolby84:1 forLLDovi:1];
    v10 = self->_singleLayerIntegratedKernel[3];
    self->_singleLayerIntegratedKernel[3] = v17;
  }

  v18 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer_ipt" dolby84:0 forLLDovi:0];
  v19 = self->_singleLayerIntegratedIPTKernel[0];
  self->_singleLayerIntegratedIPTKernel[0] = v18;

  v20 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer_ipt" dolby84:1 forLLDovi:0];
  v21 = self->_singleLayerIntegratedIPTKernel[1];
  self->_singleLayerIntegratedIPTKernel[1] = v20;

  v22 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer_ipt2sdr" dolby84:0 forLLDovi:1];
  v23 = self->_singleLayerIntegratedIPTKernel[2];
  self->_singleLayerIntegratedIPTKernel[2] = v22;

  createNullShader = [(DolbyVisionComposer *)self createNullShader];
  v25 = self->_singleLayerIntegratedIPTKernel[3];
  self->_singleLayerIntegratedIPTKernel[3] = createNullShader;

  v26 = [(DolbyVisionComposer *)self createShaderWithName:@"compose_and_dm_singlelayer_ipt_msr" dolby84:0 forLLDovi:0];
  singleLayerIntegratedIPTKernelMsr = self->_singleLayerIntegratedIPTKernelMsr;
  self->_singleLayerIntegratedIPTKernelMsr = v26;

  v28 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrd2RGBPlane" dolby84:0 forLLDovi:0];
  v29 = self->_singleLayerIntegratedKernelPlanar[0];
  self->_singleLayerIntegratedKernelPlanar[0] = v28;

  v30 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrd2RGBPlane" dolby84:1 forLLDovi:0];
  v31 = self->_singleLayerIntegratedKernelPlanar[1];
  self->_singleLayerIntegratedKernelPlanar[1] = v30;

  v32 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrd2RGBPlane" dolby84:0 forLLDovi:1];
  v33 = self->_singleLayerIntegratedKernelPlanar[2];
  self->_singleLayerIntegratedKernelPlanar[2] = v32;

  v34 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrd2RGBPlane" dolby84:1 forLLDovi:1];
  v35 = self->_singleLayerIntegratedKernelPlanar[3];
  self->_singleLayerIntegratedKernelPlanar[3] = v34;

  v36 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrd2RGBPlane_ipt" dolby84:0 forLLDovi:0];
  v37 = self->_singleLayerIntegratedIPTKernelPlanar[0];
  self->_singleLayerIntegratedIPTKernelPlanar[0] = v36;

  v38 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrd2RGBPlane_ipt" dolby84:1 forLLDovi:0];
  v39 = self->_singleLayerIntegratedIPTKernelPlanar[1];
  self->_singleLayerIntegratedIPTKernelPlanar[1] = v38;

  v40 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrd2RGBPlane_ipt" dolby84:0 forLLDovi:1];
  v41 = self->_singleLayerIntegratedIPTKernelPlanar[2];
  self->_singleLayerIntegratedIPTKernelPlanar[2] = v40;

  createNullShader2 = [(DolbyVisionComposer *)self createNullShader];
  v43 = self->_singleLayerIntegratedIPTKernelPlanar[3];
  self->_singleLayerIntegratedIPTKernelPlanar[3] = createNullShader2;

  v44 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane" dolby84:0 forLLDovi:0];
  v45 = self->_singleLayerIntegratedKernelPackedPlanar[0];
  self->_singleLayerIntegratedKernelPackedPlanar[0] = v44;

  v46 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane" dolby84:1 forLLDovi:0];
  v47 = self->_singleLayerIntegratedKernelPackedPlanar[1];
  self->_singleLayerIntegratedKernelPackedPlanar[1] = v46;

  v48 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane" dolby84:0 forLLDovi:1];
  v49 = self->_singleLayerIntegratedKernelPackedPlanar[2];
  self->_singleLayerIntegratedKernelPackedPlanar[2] = v48;

  v50 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane" dolby84:1 forLLDovi:1];
  v51 = self->_singleLayerIntegratedKernelPackedPlanar[3];
  self->_singleLayerIntegratedKernelPackedPlanar[3] = v50;

  v52 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_flip" dolby84:0 forLLDovi:0];
  v53 = self->_singleLayerIntegratedKernelPackedPlanar_flip[0];
  self->_singleLayerIntegratedKernelPackedPlanar_flip[0] = v52;

  v54 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_flip" dolby84:1 forLLDovi:0];
  v55 = self->_singleLayerIntegratedKernelPackedPlanar_flip[1];
  self->_singleLayerIntegratedKernelPackedPlanar_flip[1] = v54;

  v56 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_flip" dolby84:0 forLLDovi:1];
  v57 = self->_singleLayerIntegratedKernelPackedPlanar_flip[2];
  self->_singleLayerIntegratedKernelPackedPlanar_flip[2] = v56;

  v58 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_flip" dolby84:1 forLLDovi:1];
  v59 = self->_singleLayerIntegratedKernelPackedPlanar_flip[3];
  self->_singleLayerIntegratedKernelPackedPlanar_flip[3] = v58;

  v60 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_rotate" dolby84:0 forLLDovi:0];
  v61 = self->_singleLayerIntegratedKernelPackedPlanar_rotate[0];
  self->_singleLayerIntegratedKernelPackedPlanar_rotate[0] = v60;

  v62 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_rotate" dolby84:1 forLLDovi:0];
  v63 = self->_singleLayerIntegratedKernelPackedPlanar_rotate[1];
  self->_singleLayerIntegratedKernelPackedPlanar_rotate[1] = v62;

  v64 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_rotate" dolby84:0 forLLDovi:1];
  v65 = self->_singleLayerIntegratedKernelPackedPlanar_rotate[2];
  self->_singleLayerIntegratedKernelPackedPlanar_rotate[2] = v64;

  v66 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_rotate" dolby84:1 forLLDovi:1];
  v67 = self->_singleLayerIntegratedKernelPackedPlanar_rotate[3];
  self->_singleLayerIntegratedKernelPackedPlanar_rotate[3] = v66;

  v68 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_msr" dolby84:0 forLLDovi:0];
  v69 = self->_singleLayerIntegratedKernelPackedPlanar_msr[0];
  self->_singleLayerIntegratedKernelPackedPlanar_msr[0] = v68;

  v70 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_msr" dolby84:1 forLLDovi:0];
  v71 = self->_singleLayerIntegratedKernelPackedPlanar_msr[1];
  self->_singleLayerIntegratedKernelPackedPlanar_msr[1] = v70;

  v72 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_msr" dolby84:0 forLLDovi:1];
  v73 = self->_singleLayerIntegratedKernelPackedPlanar_msr[2];
  self->_singleLayerIntegratedKernelPackedPlanar_msr[2] = v72;

  v74 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_msr" dolby84:1 forLLDovi:1];
  v75 = self->_singleLayerIntegratedKernelPackedPlanar_msr[3];
  self->_singleLayerIntegratedKernelPackedPlanar_msr[3] = v74;

  v76 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane" dolby84:0 forLLDovi:0];
  v77 = self->_singleLayerIntegratedKernelPackedPlanarDM4[0];
  self->_singleLayerIntegratedKernelPackedPlanarDM4[0] = v76;

  v78 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane" dolby84:1 forLLDovi:0];
  v79 = self->_singleLayerIntegratedKernelPackedPlanarDM4[1];
  self->_singleLayerIntegratedKernelPackedPlanarDM4[1] = v78;

  v80 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlaneDM4llDovi" dolby84:0 forLLDovi:1];
  v81 = self->_singleLayerIntegratedKernelPackedPlanarDM4[2];
  self->_singleLayerIntegratedKernelPackedPlanarDM4[2] = v80;

  v82 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlaneDM4llDovi" dolby84:1 forLLDovi:1];
  v83 = self->_singleLayerIntegratedKernelPackedPlanarDM4[3];
  self->_singleLayerIntegratedKernelPackedPlanarDM4[3] = v82;

  v84 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_flip" dolby84:0 forLLDovi:0];
  v85 = self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[0];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[0] = v84;

  v86 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_flip" dolby84:1 forLLDovi:0];
  v87 = self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[1];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[1] = v86;

  v88 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlaneDM4llDovi_flip" dolby84:0 forLLDovi:1];
  v89 = self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[2];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[2] = v88;

  v90 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlaneDM4llDovi_flip" dolby84:1 forLLDovi:1];
  v91 = self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[3];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[3] = v90;

  v92 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_rotate" dolby84:0 forLLDovi:0];
  v93 = self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[0];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[0] = v92;

  v94 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_rotate" dolby84:1 forLLDovi:0];
  v95 = self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[1];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[1] = v94;

  v96 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlaneDM4llDovi_rotate" dolby84:0 forLLDovi:1];
  v97 = self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[2];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[2] = v96;

  v98 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlaneDM4llDovi_rotate" dolby84:1 forLLDovi:1];
  v99 = self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[3];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[3] = v98;

  v100 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_msr" dolby84:0 forLLDovi:0];
  v101 = self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[0];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[0] = v100;

  v102 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_msr" dolby84:1 forLLDovi:0];
  v103 = self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[1];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[1] = v102;

  v104 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlaneDM4msr" dolby84:0 forLLDovi:1];
  v105 = self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[2];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[2] = v104;

  v106 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlaneDM4msr" dolby84:1 forLLDovi:1];
  v107 = self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[3];
  self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[3] = v106;

  v108 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_ipt" dolby84:0 forLLDovi:0];
  v109 = self->_singleLayerIntegratedIPTKernelPackedPlanar[0];
  self->_singleLayerIntegratedIPTKernelPackedPlanar[0] = v108;

  v110 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_ipt" dolby84:1 forLLDovi:0];
  v111 = self->_singleLayerIntegratedIPTKernelPackedPlanar[1];
  self->_singleLayerIntegratedIPTKernelPackedPlanar[1] = v110;

  v112 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_ipt" dolby84:0 forLLDovi:1];
  v113 = self->_singleLayerIntegratedIPTKernelPackedPlanar[2];
  self->_singleLayerIntegratedIPTKernelPackedPlanar[2] = v112;

  createNullShader3 = [(DolbyVisionComposer *)self createNullShader];
  v115 = self->_singleLayerIntegratedIPTKernelPackedPlanar[3];
  self->_singleLayerIntegratedIPTKernelPackedPlanar[3] = createNullShader3;

  v116 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_ipt_msr" dolby84:0 forLLDovi:0];
  singleLayerIntegratedIPTKernelPackedPlanar_msr = self->_singleLayerIntegratedIPTKernelPackedPlanar_msr;
  self->_singleLayerIntegratedIPTKernelPackedPlanar_msr = v116;

  v118 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:0 forLLDovi:0];
  v119 = self->_yuvP422PackedPlanar[0];
  self->_yuvP422PackedPlanar[0] = v118;

  v120 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:1 forLLDovi:0];
  v121 = self->_yuvP422PackedPlanar[1];
  self->_yuvP422PackedPlanar[1] = v120;

  v122 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:0 forLLDovi:1];
  v123 = self->_yuvP422PackedPlanar[2];
  self->_yuvP422PackedPlanar[2] = v122;

  v124 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:1 forLLDovi:1];
  v125 = self->_yuvP422PackedPlanar[3];
  self->_yuvP422PackedPlanar[3] = v124;

  v126 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_flip" dolby84:0 forLLDovi:0];
  v127 = self->_yuvP422PackedPlanar_flip[0];
  self->_yuvP422PackedPlanar_flip[0] = v126;

  v128 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_flip" dolby84:1 forLLDovi:0];
  v129 = self->_yuvP422PackedPlanar_flip[1];
  self->_yuvP422PackedPlanar_flip[1] = v128;

  v130 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_flip" dolby84:0 forLLDovi:1];
  v131 = self->_yuvP422PackedPlanar_flip[2];
  self->_yuvP422PackedPlanar_flip[2] = v130;

  v132 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_flip" dolby84:1 forLLDovi:1];
  v133 = self->_yuvP422PackedPlanar_flip[3];
  self->_yuvP422PackedPlanar_flip[3] = v132;

  v134 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_rotate" dolby84:0 forLLDovi:0];
  v135 = self->_yuvP422PackedPlanar_rotate[0];
  self->_yuvP422PackedPlanar_rotate[0] = v134;

  v136 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_rotate" dolby84:1 forLLDovi:0];
  v137 = self->_yuvP422PackedPlanar_rotate[1];
  self->_yuvP422PackedPlanar_rotate[1] = v136;

  v138 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_rotate" dolby84:0 forLLDovi:1];
  v139 = self->_yuvP422PackedPlanar_rotate[2];
  self->_yuvP422PackedPlanar_rotate[2] = v138;

  v140 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_rotate" dolby84:1 forLLDovi:1];
  v141 = self->_yuvP422PackedPlanar_rotate[3];
  self->_yuvP422PackedPlanar_rotate[3] = v140;

  v142 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_msr" dolby84:0 forLLDovi:0];
  v143 = self->_yuvP422PackedPlanar_msr[0];
  self->_yuvP422PackedPlanar_msr[0] = v142;

  v144 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_msr" dolby84:1 forLLDovi:0];
  v145 = self->_yuvP422PackedPlanar_msr[1];
  self->_yuvP422PackedPlanar_msr[1] = v144;

  v146 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_msr" dolby84:0 forLLDovi:1];
  v147 = self->_yuvP422PackedPlanar_msr[2];
  self->_yuvP422PackedPlanar_msr[2] = v146;

  v148 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_msr" dolby84:1 forLLDovi:1];
  v149 = self->_yuvP422PackedPlanar_msr[3];
  self->_yuvP422PackedPlanar_msr[3] = v148;

  v150 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:0 forLLDovi:0];
  v151 = self->_yuvP422PackedPlanarDM4[0];
  self->_yuvP422PackedPlanarDM4[0] = v150;

  v152 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:1 forLLDovi:0];
  v153 = self->_yuvP422PackedPlanarDM4[1];
  self->_yuvP422PackedPlanarDM4[1] = v152;

  v154 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_dm4_llDovi" dolby84:0 forLLDovi:1];
  v155 = self->_yuvP422PackedPlanarDM4[2];
  self->_yuvP422PackedPlanarDM4[2] = v154;

  v156 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_dm4_llDovi" dolby84:1 forLLDovi:1];
  v157 = self->_yuvP422PackedPlanarDM4[3];
  self->_yuvP422PackedPlanarDM4[3] = v156;

  v158 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_flip" dolby84:0 forLLDovi:0];
  v159 = self->_yuvP422PackedPlanarDM4_flip[0];
  self->_yuvP422PackedPlanarDM4_flip[0] = v158;

  v160 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_flip" dolby84:1 forLLDovi:0];
  v161 = self->_yuvP422PackedPlanarDM4_flip[1];
  self->_yuvP422PackedPlanarDM4_flip[1] = v160;

  v162 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_dm4_llDovi_flip" dolby84:0 forLLDovi:1];
  v163 = self->_yuvP422PackedPlanarDM4_flip[2];
  self->_yuvP422PackedPlanarDM4_flip[2] = v162;

  v164 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_dm4_llDovi_flip" dolby84:1 forLLDovi:1];
  v165 = self->_yuvP422PackedPlanarDM4_flip[3];
  self->_yuvP422PackedPlanarDM4_flip[3] = v164;

  v166 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_rotate" dolby84:0 forLLDovi:0];
  v167 = self->_yuvP422PackedPlanarDM4_rotate[0];
  self->_yuvP422PackedPlanarDM4_rotate[0] = v166;

  v168 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_rotate" dolby84:1 forLLDovi:0];
  v169 = self->_yuvP422PackedPlanarDM4_rotate[1];
  self->_yuvP422PackedPlanarDM4_rotate[1] = v168;

  v170 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_dm4_llDovi_rotate" dolby84:0 forLLDovi:1];
  v171 = self->_yuvP422PackedPlanarDM4_rotate[2];
  self->_yuvP422PackedPlanarDM4_rotate[2] = v170;

  v172 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_dm4_llDovi_rotate" dolby84:1 forLLDovi:1];
  v173 = self->_yuvP422PackedPlanarDM4_rotate[3];
  self->_yuvP422PackedPlanarDM4_rotate[3] = v172;

  v174 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:0 forLLDovi:0];
  v175 = self->_yuvP422PackedPlanarDM4_msr[0];
  self->_yuvP422PackedPlanarDM4_msr[0] = v174;

  v176 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:1 forLLDovi:0];
  v177 = self->_yuvP422PackedPlanarDM4_msr[1];
  self->_yuvP422PackedPlanarDM4_msr[1] = v176;

  v178 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_dm4_msr" dolby84:0 forLLDovi:1];
  v179 = self->_yuvP422PackedPlanarDM4_msr[2];
  self->_yuvP422PackedPlanarDM4_msr[2] = v178;

  v180 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby_dm4_msr" dolby84:1 forLLDovi:1];
  v181 = self->_yuvP422PackedPlanarDM4_msr[3];
  self->_yuvP422PackedPlanarDM4_msr[3] = v180;

  v182 = [(DolbyVisionComposer *)self createShaderWithName:@"packedipt422_rgbplane_dolby" dolby84:0 forLLDovi:0];
  v183 = self->_iptP422PackedPlanar[0];
  self->_iptP422PackedPlanar[0] = v182;

  v184 = [(DolbyVisionComposer *)self createShaderWithName:@"packedipt422_rgbplane_dolby" dolby84:1 forLLDovi:0];
  v185 = self->_iptP422PackedPlanar[1];
  self->_iptP422PackedPlanar[1] = v184;

  v186 = [(DolbyVisionComposer *)self createShaderWithName:@"packedipt422_rgbplane_dolby" dolby84:0 forLLDovi:1];
  v187 = self->_iptP422PackedPlanar[2];
  self->_iptP422PackedPlanar[2] = v186;

  createNullShader4 = [(DolbyVisionComposer *)self createNullShader];
  v189 = self->_iptP422PackedPlanar[3];
  self->_iptP422PackedPlanar[3] = createNullShader4;

  v190 = [(DolbyVisionComposer *)self createShaderWithName:@"packedipt422_rgbplane_dolby_msr" dolby84:0 forLLDovi:0];
  iptP422PackedPlanar_msr = self->_iptP422PackedPlanar_msr;
  self->_iptP422PackedPlanar_msr = v190;

  v192 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_packed420_cif10" dolby84:0 forLLDovi:0];
  v193 = self->_packedHDR10Cif10[0];
  self->_packedHDR10Cif10[0] = v192;

  v194 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_packed420_cif10" dolby84:1 forLLDovi:0];
  v195 = self->_packedHDR10Cif10[1];
  self->_packedHDR10Cif10[1] = v194;

  v196 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_packed420_cif10_hdr2sdr" dolby84:0 forLLDovi:1];
  v197 = self->_packedHDR10Cif10[2];
  self->_packedHDR10Cif10[2] = v196;

  createNullShader5 = [(DolbyVisionComposer *)self createNullShader];
  v199 = self->_packedHDR10Cif10[3];
  self->_packedHDR10Cif10[3] = createNullShader5;

  v200 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_packed422_cif10" dolby84:0 forLLDovi:0];
  v201 = self->_packed422HDR10Cif10[0];
  self->_packed422HDR10Cif10[0] = v200;

  v202 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_packed422_cif10" dolby84:1 forLLDovi:0];
  v203 = self->_packed422HDR10Cif10[1];
  self->_packed422HDR10Cif10[1] = v202;

  v204 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_packed422_cif10_hdr2sdr" dolby84:0 forLLDovi:1];
  v205 = self->_packed422HDR10Cif10[2];
  self->_packed422HDR10Cif10[2] = v204;

  createNullShader6 = [(DolbyVisionComposer *)self createNullShader];
  v207 = self->_packed422HDR10Cif10[3];
  self->_packed422HDR10Cif10[3] = createNullShader6;

  v208 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_cif10_hlg" dolby84:0 forLLDovi:0];
  v209 = self->_packedHLGCif10[0];
  self->_packedHLGCif10[0] = v208;

  v210 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_cif10_hlg" dolby84:1 forLLDovi:0];
  v211 = self->_packedHLGCif10[1];
  self->_packedHLGCif10[1] = v210;

  v212 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_cif10_hlg2sdr" dolby84:0 forLLDovi:1];
  v213 = self->_packedHLGCif10[2];
  self->_packedHLGCif10[2] = v212;

  createNullShader7 = [(DolbyVisionComposer *)self createNullShader];
  v215 = self->_packedHLGCif10[3];
  self->_packedHLGCif10[3] = createNullShader7;

  v216 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_cif10_hlg" dolby84:0 forLLDovi:0];
  v217 = self->_packed422HLGCif10[0];
  self->_packed422HLGCif10[0] = v216;

  v218 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_cif10_hlg" dolby84:1 forLLDovi:0];
  v219 = self->_packed422HLGCif10[1];
  self->_packed422HLGCif10[1] = v218;

  v220 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_cif10_hlg2sdr" dolby84:0 forLLDovi:1];
  v221 = self->_packed422HLGCif10[2];
  self->_packed422HLGCif10[2] = v220;

  createNullShader8 = [(DolbyVisionComposer *)self createNullShader];
  v223 = self->_packed422HLGCif10[3];
  self->_packed422HLGCif10[3] = createNullShader8;

  v224 = [(DolbyVisionComposer *)self createShaderWithName:@"y416_hlg" dolby84:0 forLLDovi:0];
  y416HLGw30r = self->_y416HLGw30r;
  self->_y416HLGw30r = v224;

  v226 = [(DolbyVisionComposer *)self createShaderWithName:@"RGhA_hlg" dolby84:0 forLLDovi:0];
  RGhAHLGw30r = self->_RGhAHLGw30r;
  self->_RGhAHLGw30r = v226;

  v228 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_y416_w30r" dolby84:0 forLLDovi:0];
  y416HDR10w30r = self->_y416HDR10w30r;
  self->_y416HDR10w30r = v228;

  v230 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_x444_w30r" dolby84:0 forLLDovi:0];
  x444HDR10w30r = self->_x444HDR10w30r;
  self->_x444HDR10w30r = v230;

  v232 = [(DolbyVisionComposer *)self createShaderWithName:@"hdr10_RGhA_w30r" dolby84:0 forLLDovi:0];
  RGhAHDR10w30r = self->_RGhAHDR10w30r;
  self->_RGhAHDR10w30r = v232;

  v234 = [(DolbyVisionComposer *)self createShaderWithName:@"horizontal_half_luma" dolby84:0 forLLDovi:0];
  horizontalHalfLumaKernel = self->_horizontalHalfLumaKernel;
  self->_horizontalHalfLumaKernel = v234;

  v236 = [(DolbyVisionComposer *)self createShaderWithName:@"vertical_half_luma" dolby84:0 forLLDovi:0];
  verticalHalfLumaKernel = self->_verticalHalfLumaKernel;
  self->_verticalHalfLumaKernel = v236;

  v238 = [(DolbyVisionComposer *)self createShaderWithName:@"sdr_8or10_cif10" dolby84:0 forLLDovi:0];
  sdr2cif10 = self->_sdr2cif10;
  self->_sdr2cif10 = v238;

  v240 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hdr10" dolby84:0 forLLDovi:0];
  packedHDR10toRGB = self->_packedHDR10toRGB;
  self->_packedHDR10toRGB = v240;

  v242 = [(DolbyVisionComposer *)self createShaderWithName:@"unpacked_rgbplane_hdr10" dolby84:0 forLLDovi:0];
  unpackedHDR10toRGB = self->_unpackedHDR10toRGB;
  self->_unpackedHDR10toRGB = v242;

  v244 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hdr10_YUVTM" dolby84:0 forLLDovi:0];
  packedHDR10toRGB_YUVTM = self->_packedHDR10toRGB_YUVTM;
  self->_packedHDR10toRGB_YUVTM = v244;

  v246 = [(DolbyVisionComposer *)self createShaderWithName:@"unpacked_rgbplane_hdr10_YUVTM" dolby84:0 forLLDovi:0];
  unpackedHDR10toRGB_YUVTM = self->_unpackedHDR10toRGB_YUVTM;
  self->_unpackedHDR10toRGB_YUVTM = v246;

  v248 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hdr10_YUVTM" dolby84:0 forLLDovi:0];
  packed422HDR10toRGB_YUVTM = self->_packed422HDR10toRGB_YUVTM;
  self->_packed422HDR10toRGB_YUVTM = v248;

  v250 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hlg_YUVTM" dolby84:0 forLLDovi:0];
  packedHLGtoRGB_YUVTM = self->_packedHLGtoRGB_YUVTM;
  self->_packedHLGtoRGB_YUVTM = v250;

  v252 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hlg_YUVTM_flip" dolby84:0 forLLDovi:0];
  packedHLGtoRGB_YUVTM_flip = self->_packedHLGtoRGB_YUVTM_flip;
  self->_packedHLGtoRGB_YUVTM_flip = v252;

  v254 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hlg_YUVTM_rotate" dolby84:0 forLLDovi:0];
  packedHLGtoRGB_YUVTM_rotate = self->_packedHLGtoRGB_YUVTM_rotate;
  self->_packedHLGtoRGB_YUVTM_rotate = v254;

  v256 = [(DolbyVisionComposer *)self createShaderWithName:@"unpacked_rgbplane_hlg_8bit_YUVTM" dolby84:0 forLLDovi:0];
  unpackedHLG8toRGB_YUVTM = self->_unpackedHLG8toRGB_YUVTM;
  self->_unpackedHLG8toRGB_YUVTM = v256;

  v258 = [(DolbyVisionComposer *)self createShaderWithName:@"unpacked_rgbplane_hlg_10bit_YUVTM" dolby84:0 forLLDovi:0];
  unpackedHLG10toRGB_YUVTM = self->_unpackedHLG10toRGB_YUVTM;
  self->_unpackedHLG10toRGB_YUVTM = v258;

  v260 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hlg_YUVTM" dolby84:0 forLLDovi:0];
  packed422HLGtoRGB_YUVTM = self->_packed422HLGtoRGB_YUVTM;
  self->_packed422HLGtoRGB_YUVTM = v260;

  v262 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hlg_YUVTM_flip" dolby84:0 forLLDovi:0];
  packed422HLGtoRGB_YUVTM_flip = self->_packed422HLGtoRGB_YUVTM_flip;
  self->_packed422HLGtoRGB_YUVTM_flip = v262;

  v264 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hlg_YUVTM_rotate" dolby84:0 forLLDovi:0];
  packed422HLGtoRGB_YUVTM_rotate = self->_packed422HLGtoRGB_YUVTM_rotate;
  self->_packed422HLGtoRGB_YUVTM_rotate = v264;

  v266 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_dolbyYUV_YUVTM" dolby84:0 forLLDovi:0];
  v267 = self->_packedDolbyYUVtoRGB_YUVTM[0];
  self->_packedDolbyYUVtoRGB_YUVTM[0] = v266;

  v268 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane" dolby84:1 forLLDovi:0];
  v269 = self->_packedDolbyYUVtoRGB_YUVTM[1];
  self->_packedDolbyYUVtoRGB_YUVTM[1] = v268;

  createNullShader9 = [(DolbyVisionComposer *)self createNullShader];
  v271 = self->_packedDolbyYUVtoRGB_YUVTM[2];
  self->_packedDolbyYUVtoRGB_YUVTM[2] = createNullShader9;

  createNullShader10 = [(DolbyVisionComposer *)self createNullShader];
  v273 = self->_packedDolbyYUVtoRGB_YUVTM[3];
  self->_packedDolbyYUVtoRGB_YUVTM[3] = createNullShader10;

  v274 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_dolbyYUV_IPTTM_HLGOOTF" dolby84:0 forLLDovi:0];
  packedDolbyYUVtoRGB_IPTTM_HLGOOTF = self->_packedDolbyYUVtoRGB_IPTTM_HLGOOTF;
  self->_packedDolbyYUVtoRGB_IPTTM_HLGOOTF = v274;

  v276 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_dolbyYUV_IPTTM_YScale" dolby84:0 forLLDovi:0];
  packedDolbyYUVtoRGB_IPTTM_YScale = self->_packedDolbyYUVtoRGB_IPTTM_YScale;
  self->_packedDolbyYUVtoRGB_IPTTM_YScale = v276;

  v278 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_dolbyYUV_YUVTM" dolby84:0 forLLDovi:0];
  v279 = self->_packed422DolbyYUVtoRGB_YUVTM[0];
  self->_packed422DolbyYUVtoRGB_YUVTM[0] = v278;

  v280 = [(DolbyVisionComposer *)self createShaderWithName:@"packedyuv422_rgbplane_dolby" dolby84:1 forLLDovi:0];
  v281 = self->_packed422DolbyYUVtoRGB_YUVTM[1];
  self->_packed422DolbyYUVtoRGB_YUVTM[1] = v280;

  createNullShader11 = [(DolbyVisionComposer *)self createNullShader];
  v283 = self->_packed422DolbyYUVtoRGB_YUVTM[2];
  self->_packed422DolbyYUVtoRGB_YUVTM[2] = createNullShader11;

  createNullShader12 = [(DolbyVisionComposer *)self createNullShader];
  v285 = self->_packed422DolbyYUVtoRGB_YUVTM[3];
  self->_packed422DolbyYUVtoRGB_YUVTM[3] = createNullShader12;

  v286 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_dolbyYUV_IPTTM_HLGOOTF" dolby84:0 forLLDovi:0];
  packed422DolbyYUVtoRGB_IPTTM_HLGOOTF = self->_packed422DolbyYUVtoRGB_IPTTM_HLGOOTF;
  self->_packed422DolbyYUVtoRGB_IPTTM_HLGOOTF = v286;

  v288 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_dolbyYUV_IPTTM_YScale" dolby84:0 forLLDovi:0];
  packed422DolbyYUVtoRGB_IPTTM_YScale = self->_packed422DolbyYUVtoRGB_IPTTM_YScale;
  self->_packed422DolbyYUVtoRGB_IPTTM_YScale = v288;

  v290 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_dolbyIPT_YUVTM" dolby84:0 forLLDovi:0];
  v291 = self->_packedDolbyIPTtoRGB_YUVTM[0];
  self->_packedDolbyIPTtoRGB_YUVTM[0] = v290;

  v292 = [(DolbyVisionComposer *)self createShaderWithName:@"fwrdPacked2RGBPlane_ipt" dolby84:1 forLLDovi:0];
  v293 = self->_packedDolbyIPTtoRGB_YUVTM[1];
  self->_packedDolbyIPTtoRGB_YUVTM[1] = v292;

  createNullShader13 = [(DolbyVisionComposer *)self createNullShader];
  v295 = self->_packedDolbyIPTtoRGB_YUVTM[2];
  self->_packedDolbyIPTtoRGB_YUVTM[2] = createNullShader13;

  createNullShader14 = [(DolbyVisionComposer *)self createNullShader];
  v297 = self->_packedDolbyIPTtoRGB_YUVTM[3];
  self->_packedDolbyIPTtoRGB_YUVTM[3] = createNullShader14;

  v298 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_dolbyIPT_IPTTM_HLGOOTF" dolby84:0 forLLDovi:0];
  packedDolbyIPTtoRGB_IPTTM_HLGOOTF = self->_packedDolbyIPTtoRGB_IPTTM_HLGOOTF;
  self->_packedDolbyIPTtoRGB_IPTTM_HLGOOTF = v298;

  v300 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_dolbyIPT_IPTTM_YScale" dolby84:0 forLLDovi:0];
  packedDolbyIPTtoRGB_IPTTM_YScale = self->_packedDolbyIPTtoRGB_IPTTM_YScale;
  self->_packedDolbyIPTtoRGB_IPTTM_YScale = v300;

  v302 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_dolbyIPT_YUVTM" dolby84:0 forLLDovi:0];
  v303 = self->_packed422DolbyIPTtoRGB_YUVTM[0];
  self->_packed422DolbyIPTtoRGB_YUVTM[0] = v302;

  v304 = [(DolbyVisionComposer *)self createShaderWithName:@"packedipt422_rgbplane_dolby" dolby84:1 forLLDovi:0];
  v305 = self->_packed422DolbyIPTtoRGB_YUVTM[1];
  self->_packed422DolbyIPTtoRGB_YUVTM[1] = v304;

  createNullShader15 = [(DolbyVisionComposer *)self createNullShader];
  v307 = self->_packed422DolbyIPTtoRGB_YUVTM[2];
  self->_packed422DolbyIPTtoRGB_YUVTM[2] = createNullShader15;

  createNullShader16 = [(DolbyVisionComposer *)self createNullShader];
  v309 = self->_packed422DolbyIPTtoRGB_YUVTM[3];
  self->_packed422DolbyIPTtoRGB_YUVTM[3] = createNullShader16;

  v310 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_dolbyIPT_IPTTM_HLGOOTF" dolby84:0 forLLDovi:0];
  packed422DolbyIPTtoRGB_IPTTM_HLGOOTF = self->_packed422DolbyIPTtoRGB_IPTTM_HLGOOTF;
  self->_packed422DolbyIPTtoRGB_IPTTM_HLGOOTF = v310;

  v312 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_dolbyIPT_IPTTM_YScale" dolby84:0 forLLDovi:0];
  packed422DolbyIPTtoRGB_IPTTM_YScale = self->_packed422DolbyIPTtoRGB_IPTTM_YScale;
  self->_packed422DolbyIPTtoRGB_IPTTM_YScale = v312;

  v314 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hdr10" dolby84:0 forLLDovi:0];
  packed422HDR10toRGB = self->_packed422HDR10toRGB;
  self->_packed422HDR10toRGB = v314;

  v316 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hdr10_ptv" dolby84:0 forLLDovi:0];
  packedHDR10_ptv = self->_packedHDR10_ptv;
  self->_packedHDR10_ptv = v316;

  v318 = [(DolbyVisionComposer *)self createShaderWithName:@"unpacked_rgbplane_hdr10_ptv" dolby84:0 forLLDovi:0];
  unpackedHDR10_ptv = self->_unpackedHDR10_ptv;
  self->_unpackedHDR10_ptv = v318;

  v320 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hdr10_ptv" dolby84:0 forLLDovi:0];
  packed422HDR10_ptv = self->_packed422HDR10_ptv;
  self->_packed422HDR10_ptv = v320;

  v322 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hlg_ptv" dolby84:0 forLLDovi:0];
  packedHLG_ptv = self->_packedHLG_ptv;
  self->_packedHLG_ptv = v322;

  v324 = [(DolbyVisionComposer *)self createShaderWithName:@"unpacked_rgbplane_hlg_ptv" dolby84:0 forLLDovi:0];
  unpackedHLG_ptv = self->_unpackedHLG_ptv;
  self->_unpackedHLG_ptv = v324;

  v326 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hlg_ptv" dolby84:0 forLLDovi:0];
  packed422HLG_ptv = self->_packed422HLG_ptv;
  self->_packed422HLG_ptv = v326;

  v328 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_dolbyIPT_ptv" dolby84:0 forLLDovi:0];
  packedDolbyIPT_ptv = self->_packedDolbyIPT_ptv;
  self->_packedDolbyIPT_ptv = v328;

  v330 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_dolbyIPT_ptv" dolby84:0 forLLDovi:0];
  packed422DolbyIPT_ptv = self->_packed422DolbyIPT_ptv;
  self->_packed422DolbyIPT_ptv = v330;

  v332 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hdr10_msr" dolby84:0 forLLDovi:0];
  packedHDR10_msr = self->_packedHDR10_msr;
  self->_packedHDR10_msr = v332;

  v334 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hdr10_msr" dolby84:0 forLLDovi:0];
  packed422HDR10_msr = self->_packed422HDR10_msr;
  self->_packed422HDR10_msr = v334;

  v336 = [(DolbyVisionComposer *)self createShaderWithName:@"packed_rgbplane_hlg_msr" dolby84:0 forLLDovi:0];
  packedHLG_msr = self->_packedHLG_msr;
  self->_packedHLG_msr = v336;

  v338 = [(DolbyVisionComposer *)self createShaderWithName:@"packed422_rgbplane_hlg_msr" dolby84:0 forLLDovi:0];
  packed422HLG_msr = self->_packed422HLG_msr;
  self->_packed422HLG_msr = v338;

  v340 = [(DolbyVisionComposer *)self createShaderWithName:@"display_management_16bit_444" dolby84:0 forLLDovi:0];
  singleLayer16bit444Kernel = self->_singleLayer16bit444Kernel;
  self->_singleLayer16bit444Kernel = v340;

  v342 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"hlg_1input_half_rgb_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  hlg_1input_half_msr = self->_hlg_1input_half_msr;
  self->_hlg_1input_half_msr = v342;

  v344 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"hlg_two_inputs_ushort_rgb_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  hlg_two_inputs_ushort_msr = self->_hlg_two_inputs_ushort_msr;
  self->_hlg_two_inputs_ushort_msr = v344;

  v346 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"hdr10_1input_half_rgb_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  hdr10_1input_half_msr = self->_hdr10_1input_half_msr;
  self->_hdr10_1input_half_msr = v346;

  v348 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"hdr10_two_inputs_ushort_rgb_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  hdr10_two_inputs_ushort_msr = self->_hdr10_two_inputs_ushort_msr;
  self->_hdr10_two_inputs_ushort_msr = v348;

  v350 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi84_1input_half_rgb_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  v351 = self->_dovi84_1input_half_msr[0];
  self->_dovi84_1input_half_msr[0] = v350;

  v352 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi84_two_inputs_ushort_rgb_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  v353 = self->_dovi84_two_inputs_ushort_msr[0];
  self->_dovi84_two_inputs_ushort_msr[0] = v352;

  v354 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi84_1input_half_rgb_msr" dolby84:1 forLLDovi:0 input:38 output:6];
  v355 = self->_dovi84_1input_half_msr[1];
  self->_dovi84_1input_half_msr[1] = v354;

  v356 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi84_two_inputs_ushort_rgb_msr" dolby84:1 forLLDovi:0 input:38 output:6];
  v357 = self->_dovi84_two_inputs_ushort_msr[1];
  self->_dovi84_two_inputs_ushort_msr[1] = v356;

  v358 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi84_DM3_1input_half_rgb_msr" dolby84:1 forLLDovi:0 input:38 output:6];
  dovi84_DM3_1input_half_msr = self->_dovi84_DM3_1input_half_msr;
  self->_dovi84_DM3_1input_half_msr = v358;

  v360 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi84_DM3_two_inputs_ushort_rgb_msr" dolby84:1 forLLDovi:0 input:38 output:6];
  dovi84_DM3_two_inputs_ushort_msr = self->_dovi84_DM3_two_inputs_ushort_msr;
  self->_dovi84_DM3_two_inputs_ushort_msr = v360;

  v362 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi5_yuv_1input_compose_dm_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  dovi5_yuv_1input_compose_dm_msr = self->_dovi5_yuv_1input_compose_dm_msr;
  self->_dovi5_yuv_1input_compose_dm_msr = v362;

  v364 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi5_ipt_1input_compose_dm_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  dovi5_ipt_1input_compose_dm_msr = self->_dovi5_ipt_1input_compose_dm_msr;
  self->_dovi5_ipt_1input_compose_dm_msr = v364;

  v366 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi5_yuv_two_inputs_compose_dm_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  dovi5_yuv_two_inputs_compose_dm_msr = self->_dovi5_yuv_two_inputs_compose_dm_msr;
  self->_dovi5_yuv_two_inputs_compose_dm_msr = v366;

  v368 = [(DolbyVisionComposer *)self createShaderWithNameAndInputOutput:@"dovi5_ipt_two_inputs_compose_dm_msr" dolby84:0 forLLDovi:0 input:38 output:6];
  dovi5_ipt_two_inputs_compose_dm_msr = self->_dovi5_ipt_two_inputs_compose_dm_msr;
  self->_dovi5_ipt_two_inputs_compose_dm_msr = v368;
}

- (int64_t)encodeToCommandBuffer:(id)buffer BL:(__IOSurface *)l EL:(__IOSurface *)eL Output:(__IOSurface *)output ComposerData:(id *)data DM:(id)m DMData:(id *)mData tcControl:(ToneCurve_Control *)self0 hdrControl:(id *)self1 hdr10InfoFrame:(id *)self2 frameNumber:(unint64_t)self3
{
  v38 = *MEMORY[0x277D85DE8];
  v19 = &self->_timeArray[107];
  bufferCopy = buffer;
  mCopy = m;
  *(v19 + 689) = number;
  if (IsGpuOnlySystem() || !GetConfig())
  {
    v22 = 0;
  }

  else
  {
    Config = GetConfig();
    v22 = *HDRConfig::GetConfigEntryValue(Config, 0x1Au, 0);
  }

  v23 = v22 & 1;
  hdrControl->var30 = v23;
  *(v19 + 2760) = v23;
  if (__PAIR64__(mData->var21.var2, mData->var21.var1) == -1 || IsVirtualized() && control->maxEDRValue <= 1.0 || IOSurfaceGetPlaneCount(output) == 3)
  {
    *(v19 + 2760) = 0;
    hdrControl->var30 = 0;
  }

  v24 = [(DolbyVisionComposer *)self setupInputTexturesWithBL:l EL:eL Output:output MetaData:data];
  if (v24 != -17000)
  {
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

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 134218242;
      v35 = WORD1(v26);
      v36 = 2080;
      v37 = "[DolbyVisionComposer encodeToCommandBuffer:BL:EL:Output:ComposerData:DM:DMData:tcControl:hdrControl:hdr10InfoFrame:frameNumber:]";
      v27 = MEMORY[0x277D86220];
      v28 = " [1.450.54] #%04llx %s : Failed with setupInputTexturesWithBL\n";
      goto LABEL_26;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v35 = "[DolbyVisionComposer encodeToCommandBuffer:BL:EL:Output:ComposerData:DM:DMData:tcControl:hdrControl:hdr10InfoFrame:frameNumber:]";
    v29 = MEMORY[0x277D86220];
    v30 = " [1.450.54] %s : Failed with setupInputTexturesWithBL\n";
LABEL_32:
    _os_log_impl(&dword_250836000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
    goto LABEL_35;
  }

  v24 = [(DolbyVisionComposer *)self setupOutputTexturesWithBuffer:output orientation:control->orientation ptvMode:*(control + 152) & 1];
  if (v24 != -17000)
  {
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

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 134218242;
      v35 = WORD1(v26);
      v36 = 2080;
      v37 = "[DolbyVisionComposer encodeToCommandBuffer:BL:EL:Output:ComposerData:DM:DMData:tcControl:hdrControl:hdr10InfoFrame:frameNumber:]";
      v27 = MEMORY[0x277D86220];
      v28 = " [1.450.54] #%04llx %s : Failed with setupOutputTexturesWithBuffer\n";
LABEL_26:
      _os_log_impl(&dword_250836000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);
LABEL_27:
      prevLogInstanceID = v26;
      goto LABEL_35;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v35 = "[DolbyVisionComposer encodeToCommandBuffer:BL:EL:Output:ComposerData:DM:DMData:tcControl:hdrControl:hdr10InfoFrame:frameNumber:]";
    v29 = MEMORY[0x277D86220];
    v30 = " [1.450.54] %s : Failed with setupOutputTexturesWithBuffer\n";
    goto LABEL_32;
  }

  [(DolbyVisionComposer *)self setupInputBuffersWithMetadata:data];
  if (eL)
  {
    v25 = [(DolbyVisionComposer *)self encodeDualLayerToCommandBuffer:bufferCopy BL:l EL:eL Output:output MetaData:data tcControl:control];
  }

  else
  {
    v25 = [(DolbyVisionComposer *)self encodeSingleLayerToCommandBuffer:bufferCopy BL:l Output:output ComposerData:data DM:mCopy DMData:mData tcControl:control hdrControl:hdrControl hdr10InfoFrame:frame];
  }

  v24 = v25;
  ++self->_frameIndex;
LABEL_35:

  v31 = *MEMORY[0x277D85DE8];
  return v24;
}

- (int64_t)checkInputFormats:(unsigned int)formats returnInput1:(BOOL *)input1 returnInput2:(BOOL *)input2 returnInput3:(BOOL *)input3 returnInput4:(BOOL *)input4 returnInput5:(BOOL *)input5 outputFormat:(unsigned int)format returnOutput1:(BOOL *)self0 returnOutput2:(BOOL *)self1 returnOutput3:(BOOL *)self2 returnOutput4:(BOOL *)self3
{
  v32 = *MEMORY[0x277D85DE8];
  v16 = 1;
  if (formats != 875704422 && formats != 875704438 && formats != 2016686640)
  {
    v16 = formats == 2019963440 || formats == 1882468912 && self->_enableGpuTmMatchMSR;
  }

  v17 = format == 1380411457 || format == 1919365992 && self->_enableGpuTmMatchMSR;
  *input5 = (formats & 0xFFEFFFFF) == 1952855092;
  v19 = formats == 2019963442 || formats == 2016686642;
  *input4 = v19;
  if ((formats == 1885745714 || formats == 1882468914) && __PAIR128__(output4, output3) == 0)
  {
    input3Copy = input3;
    if (enableLogInstance)
    {
      v20 = logInstanceID;
      if (!logInstanceID)
      {
        v20 = prevLogInstanceID;
      }

      v28 = v20;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = WORD1(v28);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: hasThreeOutputPlane || has10BitOutput warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1145\n", buf, 0xCu);
      }

      input3 = input3Copy;
      prevLogInstanceID = v28;
    }

    else
    {
      v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      input3 = input3Copy;
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: hasThreeOutputPlane || has10BitOutput warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1145\n", buf, 2u);
        input3 = input3Copy;
      }
    }
  }

  v23 = formats == 1882468914 || formats == 1885745714;
  v25 = format == 1999843442 || format == 2021078128;
  *input1 = v16;
  *input2 = v23;
  *output1 = v17;
  *output2 = format == 1815162994;
  *output3 = format == 1919365992;
  *output4 = v25;
  *input3 = formats == 1815162994;
  v26 = *MEMORY[0x277D85DE8];
  return -17000;
}

- (int64_t)checkForContent:(unsigned int)content contentReturn1:(BOOL *)return1 contentReturn2:(BOOL *)return2 contentReturn3:(BOOL *)return3 forDisplay:(unsigned int)display displayReturn1:(BOOL *)displayReturn1 displayReturn2:(BOOL *)displayReturn2 displayReturn3:(BOOL *)self0 displayReturn4:(BOOL *)self1 displayReturn5:(BOOL *)self2
{
  v12 = content - 1;
  v14 = content == 1 || content == 4;
  v16 = display == 7 || display - 3 < 2;
  *return1 = content == 2;
  *return3 = content == 3;
  *return2 = v14;
  *displayReturn1 = display == 0;
  *displayReturn2 = display == 2;
  *displayReturn3 = v16;
  *return4 = (display & 0xFFFFFFFD) == 5;
  *return5 = 0;
  if (display == 6 || display == 1)
  {
    if (v12 <= 3)
    {
      v17 = 8 * v12;
      *displayReturn2 = 0x10100u >> v17;
      *displayReturn1 = 0x1000001u >> v17;
    }

    *return5 = 1;
  }

  return -17000;
}

- (int64_t)encodeSingleLayerToCommandBuffer:(id)buffer BL:(__IOSurface *)l Output:(__IOSurface *)output ComposerData:(id *)data DM:(id)m DMData:(id *)mData tcControl:(ToneCurve_Control *)control hdrControl:(id *)self0 hdr10InfoFrame:(id *)self1
{
  p_inputPixelFormat = &self->_inputPixelFormat;
  bufferCopy = buffer;
  mCopy = m;
  v54 = 0;
  v55[0] = 0;
  v53 = 0;
  LODWORD(v30) = control->outputPixelFormat;
  v19 = [(DolbyVisionComposer *)self checkInputFormats:*p_inputPixelFormat returnInput1:v55 + 3 returnInput2:v55 + 2 returnInput3:v55 + 1 returnInput4:v55 returnInput5:&v54 + 3 outputFormat:v30 returnOutput1:&v54 + 2 returnOutput2:&v54 + 1 returnOutput3:&v54 returnOutput4:&v53];
  if (v19 == -17000)
  {
    v52 = 0;
    v51 = 0;
    v19 = [(DolbyVisionComposer *)self checkForContent:hdrControl->var0 contentReturn1:&v52 + 3 contentReturn2:&v52 + 2 contentReturn3:&v52 + 1 forDisplay:hdrControl->var10 displayReturn1:&v52 displayReturn2:&v51 + 3 displayReturn3:&v51 + 2 displayReturn4:&v51 + 1 displayReturn5:&v51];
    if (v19 == -17000)
    {
      v49 = bufferCopy;
      v50 = mCopy;
      IOSurfaceGetWidthOfPlane(l, 0);
      IOSurfaceGetHeightOfPlane(l, 0);
      IOSurfaceGetWidthOfPlane(output, 0);
      IOSurfaceGetHeightOfPlane(output, 0);
      var2 = mData->var21.var2;
      v44 = var2 == 65534 && mData->var21.var1 == -2;
      v43 = var2 == 0xFFFF && mData->var21.var1 == -1;
      v45 = (v52 & 0x10000) != 0 && hdrControl->var17 == 18;
      v21 = HIBYTE(v52);
      v22 = v53 | BYTE2(v54);
      v23 = BYTE1(v52);
      mDataCopy = mData;
      outputCopy = output;
      v42 = BYTE2(v52);
      if (*(p_inputPixelFormat + 3220) == 1)
      {
        if (hdrControl->var10 == 7)
        {
          v24 = BYTE1(v52);
        }

        else
        {
          v24 = 0;
        }

        v47 = HIBYTE(v52) & (hdrControl->var10 == 7);
      }

      else
      {
        v47 = HIBYTE(v52) & v22;
        v24 = BYTE1(v52) & v53;
      }

      v25 = v51;
      v40 = v52;
      v41 = HIBYTE(v51);
      v26 = [(MTLDeviceSPI *)self->_device newBufferWithLength:528 options:0];
      v38 = v22;
      v39 = v23;
      contents = [v26 contents];
      bzero(contents, 0x210uLL);
      contents[63] = -971227136;
      BYTE1(v34) = (HIBYTE(v51) | v21 & v25) & 1;
      LOBYTE(v34) = v47 & 1;
      v19 = [(DolbyVisionComposer *)self embeddedSetupToneMappingWithContent:BYTE2(v52) Output:outputCopy DM:v50 DMData:mDataCopy tcControl:control hdrControl:hdrControl hdr10InfoFrame:frame dmConfig:contents hdr10OnPad:v34 useYUVScalingTable:?];
      if (v19 == -17000)
      {
        if (*(p_inputPixelFormat + 3220) == 1)
        {
          *(&v37 + 1) = *(&v52 + 1);
          LOBYTE(v37) = HIBYTE(v52);
          BYTE4(v31) = contents[120] == 4;
          LODWORD(v31) = control->dovi50toHDR10TVMode;
          v28 = [DolbyVisionComposer embeddedSetupEncoderForGpuMatchMsrCommandBuffer:"embeddedSetupEncoderForGpuMatchMsrCommandBuffer:DMData:dmConfig:isInput422:orientation:isDolby84:dovi50toHDR10TVMode:isDM4:dpcParam:tcControl:hdrControl:isHDR10Content:isHLGContent:isDOVIContent:" DMData:v49 dmConfig:mDataCopy isInput422:v26 orientation:BYTE2(v55[0]) isDolby84:control->orientation dovi50toHDR10TVMode:v45 isDM4:v31 dpcParam:contents + 112 tcControl:control hdrControl:hdrControl isHDR10Content:v37 isHLGContent:? isDOVIContent:?];
        }

        else
        {
          BYTE1(v36) = hdrControl->var29;
          LOBYTE(v36) = contents[120] == 4;
          HIDWORD(v35) = control->dovi50toHDR10TVMode;
          LOBYTE(v35) = v45;
          HIDWORD(v33) = control->orientation;
          BYTE3(v33) = *(control + 152) & 1;
          BYTE2(v33) = v39 & v25;
          BYTE1(v33) = v39 & v40;
          LOBYTE(v33) = v39 & v41;
          HIBYTE(v32) = v21 & v25 & 1;
          BYTE6(v32) = v42 & v25 & 1;
          BYTE5(v32) = v42 & v38 & 1;
          BYTE4(v32) = v24;
          BYTE3(v32) = v47 & 1;
          BYTE2(v32) = v44;
          BYTE1(v32) = v41 & v42;
          LOBYTE(v32) = v41 & v21;
          v28 = [DolbyVisionComposer embeddedSetupEncoderForCommandBuffer:"embeddedSetupEncoderForCommandBuffer:DMData:dmConfig:isInput422:hasThreeOutputPlane:isSdrOnDolbyOrHDR10:isHDR10OnHDR10TV:isDolbyOnHDR10TV:isHDR10OnDolby:isHDR10OnPad:isHLGOnPad:isDoviOnPad:isDoviOnLLDovi:isHDR10OnLLDovi:isHLGOnHDR10TV:isHLGOnDolbyTV:isHLGOnLLDovi:isPtvMode:orientation:isDolby84:dovi50toHDR10TVMode:isDM4:isGpuTmRefMode:" DMData:v49 dmConfig:mDataCopy isInput422:v26 hasThreeOutputPlane:BYTE2(v55[0]) isSdrOnDolbyOrHDR10:v54 isHDR10OnHDR10TV:v43 isDolbyOnHDR10TV:v32 isHDR10OnDolby:v33 isHDR10OnPad:v35 isHLGOnPad:v36 isDoviOnPad:? isDoviOnLLDovi:? isHDR10OnLLDovi:? isHLGOnHDR10TV:? isHLGOnDolbyTV:? isHLGOnLLDovi:? isPtvMode:? orientation:? isDolby84:? dovi50toHDR10TVMode:? isDM4:? isGpuTmRefMode:?];
        }

        v19 = v28;
      }

      bufferCopy = v49;
      mCopy = v50;
    }
  }

  return v19;
}

- (int64_t)embeddedSetupToneMappingWithContent:(BOOL)content Output:(__IOSurface *)output DM:(id)m DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl hdr10InfoFrame:(id *)frame dmConfig:(id *)self0 hdr10OnPad:(BOOL)self1 useYUVScalingTable:(BOOL)self2
{
  contentCopy = content;
  p_l2PQMidPoint = &self->_l2PQMidPoint;
  mCopy = m;
  if (*(p_l2PQMidPoint + 3240) == 1)
  {
    if (GetConfig())
    {
      Config = GetConfig();
      v20 = *HDRConfig::GetConfigEntryValue(Config, 0x2Du, 0);
    }

    else
    {
      v20 = 0;
    }

    tableCopy = 0;
    control->atmEnable = v20 & 1;
  }

  else
  {
    tableCopy = table;
  }

  control->tmData.contentPercentiles.n = 3;
  control->tmData.contentPercentiles.percents[0] = 0.25;
  *&control->tmData.contentPercentiles.percents[1] = 0x3F4000003F000000;
  control->tmData.contentPercentiles.percentiles[0] = 0.25;
  *&control->tmData.contentPercentiles.percentiles[1] = 0x3F4000003F000000;
  var10 = hdrControl->var10;
  if (var10 <= 7 && ((1 << var10) & 0xB8) != 0)
  {
    BYTE1(config[1].var49) = 1;
    control->targetMaxLinear = control->Tmax_nits;
  }

  else
  {
    BYTE1(config[1].var49) = 0;
  }

  if (hdrControl->var29 || hdrControl->var30 && !hdrControl->var2)
  {
    chromVectorWeight = 1081291571;
  }

  if (contentCopy)
  {
    [mCopy setDisplayManagementConfigFromMetaData:data config:config hdrCtrl:hdrControl tcCtrl:control];
  }

  else
  {
    [mCopy setDisplayManagementConfigFromDictionary:config hdrCtrl:hdrControl tcCtrl:control infoFrame:frame];
  }

  if (*(p_l2PQMidPoint + 3240) == 1 && control->atmEnable)
  {
    getAdaptiveTM = [mCopy getAdaptiveTM];
    *(&v40 + 1) = p_l2PQMidPoint[809];
    LOBYTE(v40) = 1;
    [getAdaptiveTM adaptiveToneMappingManagement:data DMConfig:config DM:mCopy TCControl:control HDRControl:hdrControl hdr10InfoFrame:frame LLDoVi:v40 frameNumber:?];
  }

  LODWORD(config[1].var8) = control->orientation;
  *&config->var45 = *p_l2PQMidPoint;
  config->var46 = p_l2PQMidPoint[1];
  config->var47 = 0.5 / *p_l2PQMidPoint;
  *&config->var48 = 0.5 / (p_l2PQMidPoint[1] - *p_l2PQMidPoint);
  config[1].var3 = control->sdrMaxBrightnessInNits;
  if (pad)
  {
    v28 = 0.05;
  }

  else
  {
    v28 = 0.005;
  }

  if (control->dovi50toHDR10TVMode || !tableCopy || hdrControl->var29)
  {
    [(DolbyVisionComposer *)self createLUTFromDMConfig:config DM:mCopy TCControl:control HDRControl:hdrControl];
    if (control->dovi50toHDR10TVMode == 1)
    {
      maxForwardTargetInNits = control->maxForwardTargetInNits;
      *&maxForwardTargetInNits = maxForwardTargetInNits;
      targetMaxLinear = control->targetMaxLinear;
      v31.f32[0] = control->targetMaxLinear;
      LODWORD(v33) = 1.0;
      *&targetMaxLinear = v28;
      *&v32 = v28;
      [(DolbyVisionComposer *)self fillInScalingTable_YUVTM:config target_White:0 target_Black:maxForwardTargetInNits source_White:targetMaxLinear source_Black:*v31.i64 satBoost:v32 scalingFactor:v33];
    }

    if (contentCopy && LODWORD(config[1].var46) == 4)
    {
      v36 = hdrControl->var10;
      if (v36 == 6 || v36 == 1)
      {
        getDolbyVisionDM4 = [mCopy getDolbyVisionDM4];
        [getDolbyVisionDM4 createTmLuts:self->_dm4_tLutIBuffer tLutS:self->_dm4_tLutSBuffer sLutI:self->_dm4_sLutIBuffer sLutS:self->_dm4_sLutSBuffer tLutISize:512 tLutSSize:512 sLutISize:512 sLutSSize:512];
        [(DolbyVisionComposer *)self dovi_dm4_updateInterleavedLUT];
      }

      else if (hdrControl->var29 || hdrControl->var30 && !hdrControl->var2)
      {
        BYTE1(v41) = 1;
        LOBYTE(v41) = hdrControl->var17 == 18;
        [mCopy dovi_computeDM4Tables:&control->doviTmParam config:config edrAdaptationParam:&control->edrAdaptationParam ambAdaptationParam:&control->ambAdaptationParam tLutI:self->_dm4_tLutIBuffer tLutS:self->_dm4_tLutSBuffer sLutI:self->_dm4_sLutIBuffer sLutS:self->_dm4_sLutSBuffer tLutISize:512 tLutSSize:512 sLutISize:512 sLutSSize:512 IsDoVi84:v41 HlgOOTFCombined:?];
        [(DolbyVisionComposer *)self dovi_dm4_updateInterleavedLUT];
      }
    }
  }

  else
  {
    v38 = control->targetMaxLinear;
    *&v38 = control->targetMaxLinear;
    *&v25 = hdrControl->var22;
    *&v24 = hdrControl->var21;
    LODWORD(v26) = 1.0;
    *&v23 = v28;
    [(DolbyVisionComposer *)self fillInScalingTable_YUVTM:config target_White:0 target_Black:v38 source_White:v23 source_Black:v24 satBoost:v25 scalingFactor:v26];
  }

  attachBackwardDisplayManagementMetaDataToBuffer(data, config, control, hdrControl, frame, output, v29, v30, v31);

  return -17000;
}

- (int64_t)embeddedSetupEncoderForCommandBuffer:(id)buffer DMData:(id *)data dmConfig:(id)config isInput422:(BOOL)input422 hasThreeOutputPlane:(BOOL)plane isSdrOnDolbyOrHDR10:(BOOL)r10 isHDR10OnHDR10TV:(BOOL)v isDolbyOnHDR10TV:(BOOL)self0 isHDR10OnDolby:(BOOL)self1 isHDR10OnPad:(BOOL)self2 isHLGOnPad:(BOOL)self3 isDoviOnPad:(BOOL)self4 isDoviOnLLDovi:(BOOL)self5 isHDR10OnLLDovi:(BOOL)self6 isHLGOnHDR10TV:(BOOL)self7 isHLGOnDolbyTV:(BOOL)self8 isHLGOnLLDovi:(BOOL)self9 isPtvMode:(BOOL)mode orientation:(int)orientation isDolby84:(BOOL)dolby84 dovi50toHDR10TVMode:(unsigned int)vMode isDM4:(BOOL)m4 isGpuTmRefMode:(BOOL)refMode
{
  r10Copy = r10;
  planeCopy = plane;
  input422Copy = input422;
  v123 = *MEMORY[0x277D85DE8];
  v28 = &self->_dm4_sLutIBuffer[120];
  bufferCopy = buffer;
  configCopy = config;
  v30 = bufferCopy;
  v31 = v28;
  v32 = v30;
  v114 = v30;
  if (*(v28 + 457))
  {
    [v30 setProtectionOptions:?];
  }

  computeCommandEncoder = [v32 computeCommandEncoder];
  if (dovi || lDovi || lLDovi)
  {
    LODWORD(v34) = 2;
  }

  else
  {
    LODWORD(v34) = dolby84;
  }

  v105 = dovi && dolby84;
  if (dovi && dolby84)
  {
    v34 = 3;
  }

  else
  {
    v34 = v34;
  }

  if (dolby84)
  {
    v35 = 3;
  }

  else
  {
    v35 = 2;
  }

  v107 = tV && refMode;
  v106 = v34;
  if (v107)
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  if (r10Copy)
  {
    p_sdr2cif10 = &self->_sdr2cif10;
LABEL_17:
    v38 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:*p_sdr2cif10];
    v109 = 0;
    goto LABEL_44;
  }

  if (pad || lDovi)
  {
    if (input422Copy)
    {
LABEL_25:
      p_y416HDR10w30r = &self->_packed422HDR10Cif10[v36];
LABEL_26:
      v38 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:*p_y416HDR10w30r];
      lLDoviCopy = lDovi;
      goto LABEL_43;
    }

    v41 = *(v31 + 909);
    if (v41 > 2019963441)
    {
      if (v41 == 2019963442)
      {
        goto LABEL_25;
      }

      if (v41 != 2019963956)
      {
        if (v41 == 2033463606)
        {
          p_y416HDR10w30r = &self->_y416HDR10w30r;
          goto LABEL_26;
        }

        goto LABEL_158;
      }
    }

    else
    {
      if (v41 == 1380411457)
      {
        p_y416HDR10w30r = &self->_RGhAHDR10w30r;
        goto LABEL_26;
      }

      if (v41 == 2016686642)
      {
        goto LABEL_25;
      }

      if (v41 != 2016687156)
      {
LABEL_158:
        p_y416HDR10w30r = &self->_packedHDR10Cif10[v36];
        goto LABEL_26;
      }
    }

    p_y416HDR10w30r = &self->_x444HDR10w30r;
    goto LABEL_26;
  }

  if (!onPad && !lLDovi)
  {
    if (*(v31 + 909) == 2033463606)
    {
      p_sdr2cif10 = &self->_singleLayer16bit444Kernel;
    }

    else
    {
      v55 = &self->super.isa + v36;
      if (data->var12 == 2)
      {
        p_sdr2cif10 = (v55 + 66);
      }

      else
      {
        p_sdr2cif10 = (v55 + 62);
      }
    }

    goto LABEL_17;
  }

  v42 = &self->super.isa + v36;
  if (input422Copy)
  {
    p_RGhAHLGw30r = (v42 + 165);
  }

  else
  {
    v44 = *(v31 + 909);
    p_RGhAHLGw30r = (v42 + 161);
    if (v44 == 1380411457)
    {
      p_RGhAHLGw30r = &self->_RGhAHLGw30r;
    }

    if (v44 == 2033463606)
    {
      p_RGhAHLGw30r = &self->_y416HLGw30r;
    }
  }

  v38 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:*p_RGhAHLGw30r];
  lLDoviCopy = lLDovi;
LABEL_43:
  v109 = !lLDoviCopy;
LABEL_44:
  width = [(MTLTexture *)self->_blTexture width];
  v117 = v38;
  height = [(MTLTexture *)self->_blTexture height];
  [computeCommandEncoder setTexture:self->_blTexture atIndex:0];
  if (self->_blTextureUV)
  {
    if (r10Copy)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v45 = logInstanceID;
        }

        else
        {
          v45 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = WORD1(v45);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: sdrOnDolbyOrHDR10 == __objc_no warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1739\n", &buf, 0xCu);
        }

        prevLogInstanceID = v45;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: sdrOnDolbyOrHDR10 == __objc_no warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1739\n", &buf, 2u);
      }
    }

    [computeCommandEncoder setTexture:self->_blTextureUV atIndex:1];
    v46 = 2;
  }

  else
  {
    v46 = 1;
  }

  [computeCommandEncoder setTexture:self->_outputTexture[0] atIndex:v46];
  modeCopy2 = mode;
  v108 = r10TV && refMode;
  v48 = v46 + 1;
  if (planeCopy)
  {
    if (r10Copy)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v49 = logInstanceID;
        }

        else
        {
          v49 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = WORD1(v49);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: sdrOnDolbyOrHDR10 == __objc_no warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1746\n", &buf, 0xCu);
        }

        prevLogInstanceID = v49;
        modeCopy2 = mode;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: sdrOnDolbyOrHDR10 == __objc_no warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1746\n", &buf, 2u);
      }
    }

    v50 = 568;
    if (data->var12 == 2)
    {
      v50 = 600;
    }

    v51 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:*(&self->super.isa + 8 * v36 + v50)];

    if (modeCopy2)
    {
      v117 = v51;
      if (*(v31 + 3664) == 1)
      {
        if (tV)
        {
          if (data->var12 == 2)
          {
            if (input422Copy)
            {
              [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422DolbyIPT_ptv];
            }

            else
            {
              [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedDolbyIPT_ptv];
            }

            v64 = LABEL_358:;

            goto LABEL_187;
          }
        }

        else if (!v)
        {
          if (!r10TV)
          {
            if (enableLogInstance)
            {
              v65 = planeCopy;
              if (logInstanceID)
              {
                v66 = logInstanceID;
              }

              else
              {
                v66 = prevLogInstanceID;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 134217984;
                *(&buf + 4) = WORD1(v66);
                _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: HLGOnHDR10TV warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1768\n", &buf, 0xCu);
              }

              prevLogInstanceID = v66;
              planeCopy = v65;
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: HLGOnHDR10TV warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1768\n", &buf, 2u);
            }
          }

          if (input422Copy)
          {
            [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HLG_ptv];
          }

          else
          {
            [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHLG_ptv];
          }

          goto LABEL_358;
        }

        if (input422Copy)
        {
          [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HDR10_ptv];
        }

        else
        {
          [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHDR10_ptv];
        }

        goto LABEL_358;
      }

      if (r10TV)
      {
        if (input422Copy)
        {
          if (enableLogInstance)
          {
            v53 = planeCopy;
            if (logInstanceID)
            {
              v54 = logInstanceID;
            }

            else
            {
              v54 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 134217984;
              *(&buf + 4) = WORD1(v54);
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: !inputP422 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1778\n", &buf, 0xCu);
            }

            prevLogInstanceID = v54;
            planeCopy = v53;
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: !inputP422 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1778\n", &buf, 2u);
          }
        }

        v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_unpackedHLG_ptv];

        goto LABEL_187;
      }

      if (!v)
      {
        if (enableLogInstance)
        {
          v56 = modeCopy2;
          v57 = planeCopy;
          if (logInstanceID)
          {
            v58 = logInstanceID;
          }

          else
          {
            v58 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_145;
          }

          LODWORD(buf) = 134217984;
          *(&buf + 4) = WORD1(v58);
          v59 = MEMORY[0x277D86220];
          v60 = " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1791\n";
          goto LABEL_144;
        }

        v56 = modeCopy2;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_189;
        }

        LOWORD(buf) = 0;
        v96 = MEMORY[0x277D86220];
        v97 = " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1791\n";
        goto LABEL_365;
      }

      if (data->var12 == 2)
      {
        if (enableLogInstance)
        {
          v56 = modeCopy2;
          v57 = planeCopy;
          if (logInstanceID)
          {
            v58 = logInstanceID;
          }

          else
          {
            v58 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_145;
          }

          LODWORD(buf) = 134217984;
          *(&buf + 4) = WORD1(v58);
          v59 = MEMORY[0x277D86220];
          v60 = " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1782\n";
LABEL_144:
          _os_log_impl(&dword_250836000, v59, OS_LOG_TYPE_DEFAULT, v60, &buf, 0xCu);
LABEL_145:
          prevLogInstanceID = v58;
          planeCopy = v57;
LABEL_189:
          v67 = v46 + 1;
LABEL_190:
          [computeCommandEncoder setTexture:self->_outputTexture[1] atIndex:v67];
          modeCopy2 = v56;
          [computeCommandEncoder setTexture:self->_outputTexture[2] atIndex:v46 + 2];
          v48 = v46 + 3;
          goto LABEL_191;
        }

        v56 = modeCopy2;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_189;
        }

        LOWORD(buf) = 0;
        v96 = MEMORY[0x277D86220];
        v97 = " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1782\n";
        goto LABEL_365;
      }

      if (input422Copy)
      {
        if (enableLogInstance)
        {
          v56 = modeCopy2;
          v57 = planeCopy;
          if (logInstanceID)
          {
            v58 = logInstanceID;
          }

          else
          {
            v58 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_145;
          }

          LODWORD(buf) = 134217984;
          *(&buf + 4) = WORD1(v58);
          v59 = MEMORY[0x277D86220];
          v60 = " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1785\n";
          goto LABEL_144;
        }

        v56 = modeCopy2;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_189;
        }

        LOWORD(buf) = 0;
        v96 = MEMORY[0x277D86220];
        v97 = " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1785\n";
        goto LABEL_365;
      }

      v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_unpackedHDR10_ptv];

      goto LABEL_187;
    }

    if (!refMode)
    {
      v117 = v51;
      if (*(v31 + 3664) == 1)
      {
        if (dolby)
        {
          if (input422Copy)
          {
            [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HDR10toRGB];
          }

          else
          {
            [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHDR10toRGB];
          }

          goto LABEL_358;
        }

        if (r10TV || dolbyTV || lLDovi)
        {
          if (input422Copy)
          {
            if ((orientation & 4) == 0)
            {
              if (orientation)
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HLGtoRGB_YUVTM_flip];
              }

              else
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HLGtoRGB_YUVTM];
              }

              goto LABEL_358;
            }

            v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HLGtoRGB_YUVTM_rotate];
          }

          else
          {
            if ((orientation & 4) == 0)
            {
              if (orientation)
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHLGtoRGB_YUVTM_flip];
              }

              else
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHLGtoRGB_YUVTM];
              }

              goto LABEL_358;
            }

            v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHLGtoRGB_YUVTM_rotate];
          }
        }

        else
        {
          var12 = data->var12;
          if (v || tV)
          {
            if (var12 == 2)
            {
              if (input422Copy)
              {
                if (vMode == 2)
                {
                  v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422DolbyIPTtoRGB_IPTTM_HLGOOTF];

                  goto LABEL_187;
                }

                if (vMode == 1)
                {
                  [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422DolbyIPTtoRGB_IPTTM_YScale];
                }

                else
                {
                  [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422DolbyIPTtoRGB_YUVTM[v106]];
                }
              }

              else
              {
                if (vMode == 2)
                {
                  v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedDolbyIPTtoRGB_IPTTM_HLGOOTF];

                  goto LABEL_187;
                }

                if (vMode == 1)
                {
                  [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedDolbyIPTtoRGB_IPTTM_YScale];
                }

                else
                {
                  [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedDolbyIPTtoRGB_YUVTM[v106]];
                }
              }
            }

            else if (input422Copy)
            {
              if (!tV)
              {
                v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HDR10toRGB_YUVTM];

                goto LABEL_187;
              }

              if (vMode == 2)
              {
                v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422DolbyYUVtoRGB_IPTTM_HLGOOTF];

                goto LABEL_187;
              }

              if (vMode == 1)
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422DolbyYUVtoRGB_IPTTM_YScale];
              }

              else
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422DolbyYUVtoRGB_YUVTM[v106]];
              }
            }

            else
            {
              if (!tV)
              {
                v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHDR10toRGB_YUVTM];

                goto LABEL_187;
              }

              if (vMode == 2)
              {
                v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedDolbyYUVtoRGB_IPTTM_HLGOOTF];

                goto LABEL_187;
              }

              if (vMode == 1)
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedDolbyYUVtoRGB_IPTTM_YScale];
              }

              else
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedDolbyYUVtoRGB_YUVTM[v106]];
              }
            }

            goto LABEL_358;
          }

          if (input422Copy)
          {
            if (var12 != 2)
            {
              if (!v105 || !m4)
              {
                if ((orientation & 4) != 0 && dolby84)
                {
                  v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_yuvP422PackedPlanar_rotate[v106]];
                }

                else
                {
                  v103 = &self->super.isa + v106;
                  if (orientation && dolby84)
                  {
                    v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:v103[124]];
                  }

                  else
                  {
                    v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:v103[116]];
                  }
                }

                goto LABEL_187;
              }

              if ((orientation & 4) != 0)
              {
                v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_yuvP422PackedPlanarDM4_rotate[v106]];

                goto LABEL_187;
              }

              if (orientation)
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_yuvP422PackedPlanarDM4_flip[v106]];
              }

              else
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_yuvP422PackedPlanarDM4[v106]];
              }

              goto LABEL_358;
            }

            v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_iptP422PackedPlanar[v106]];
          }

          else
          {
            if (var12 != 2)
            {
              if (!v105 || !m4)
              {
                if ((orientation & 4) != 0 && dolby84)
                {
                  v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_singleLayerIntegratedKernelPackedPlanar_rotate[v106]];
                }

                else
                {
                  v104 = &self->super.isa + v106;
                  if (orientation && dolby84)
                  {
                    v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:v104[83]];
                  }

                  else
                  {
                    v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:v104[79]];
                  }
                }

                goto LABEL_187;
              }

              if ((orientation & 4) != 0)
              {
                v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_singleLayerIntegratedKernelPackedPlanarDM4_rotate[v106]];

                goto LABEL_187;
              }

              if (orientation)
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_singleLayerIntegratedKernelPackedPlanarDM4_flip[v106]];
              }

              else
              {
                [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_singleLayerIntegratedKernelPackedPlanarDM4[v106]];
              }

              goto LABEL_358;
            }

            v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_singleLayerIntegratedIPTKernelPackedPlanar[v106]];
          }
        }
      }

      else
      {
        if (!dolby)
        {
          if (!r10TV && !dolbyTV && !lLDovi)
          {
            v56 = modeCopy2;
            v67 = v46 + 1;
            if (v)
            {
              if (data->var12 == 2)
              {
                if (enableLogInstance)
                {
                  v57 = planeCopy;
                  if (logInstanceID)
                  {
                    v58 = logInstanceID;
                  }

                  else
                  {
                    v58 = prevLogInstanceID;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_145;
                  }

                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = WORD1(v58);
                  v59 = MEMORY[0x277D86220];
                  v60 = " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1966\n";
                  goto LABEL_144;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_190;
                }

                LOWORD(buf) = 0;
                v101 = MEMORY[0x277D86220];
                v102 = " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1966\n";
              }

              else
              {
                if (!input422Copy)
                {
                  v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_unpackedHDR10toRGB_YUVTM];

                  goto LABEL_188;
                }

                if (enableLogInstance)
                {
                  v57 = planeCopy;
                  if (logInstanceID)
                  {
                    v58 = logInstanceID;
                  }

                  else
                  {
                    v58 = prevLogInstanceID;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_145;
                  }

                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = WORD1(v58);
                  v59 = MEMORY[0x277D86220];
                  v60 = " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1969\n";
                  goto LABEL_144;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_190;
                }

                LOWORD(buf) = 0;
                v101 = MEMORY[0x277D86220];
                v102 = " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1969\n";
              }
            }

            else
            {
              if (enableLogInstance)
              {
                v57 = planeCopy;
                if (logInstanceID)
                {
                  v58 = logInstanceID;
                }

                else
                {
                  v58 = prevLogInstanceID;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_145;
                }

                LODWORD(buf) = 134217984;
                *(&buf + 4) = WORD1(v58);
                v59 = MEMORY[0x277D86220];
                v60 = " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1975\n";
                goto LABEL_144;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_190;
              }

              LOWORD(buf) = 0;
              v101 = MEMORY[0x277D86220];
              v102 = " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1975\n";
            }

            _os_log_impl(&dword_250836000, v101, OS_LOG_TYPE_DEFAULT, v102, &buf, 2u);
            goto LABEL_190;
          }

          if (input422Copy)
          {
            if (enableLogInstance)
            {
              v68 = planeCopy;
              if (logInstanceID)
              {
                v69 = logInstanceID;
              }

              else
              {
                v69 = prevLogInstanceID;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 134217984;
                *(&buf + 4) = WORD1(v69);
                _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: !inputP422 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1952\n", &buf, 0xCu);
              }

              prevLogInstanceID = v69;
              planeCopy = v68;
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: !inputP422 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1952\n", &buf, 2u);
            }
          }

          v100 = *(v31 + 909);
          if (v100 > 2016686639)
          {
            if (v100 == 2016686640 || v100 == 2019963440)
            {
              v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_unpackedHLG10toRGB_YUVTM];

              goto LABEL_187;
            }
          }

          else if (v100 == 875704422 || v100 == 875704438)
          {
            v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_unpackedHLG8toRGB_YUVTM];

            goto LABEL_187;
          }

          if (enableLogInstance)
          {
            v56 = modeCopy2;
            v57 = planeCopy;
            if (logInstanceID)
            {
              v58 = logInstanceID;
            }

            else
            {
              v58 = prevLogInstanceID;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_145;
            }

            LODWORD(buf) = 134217984;
            *(&buf + 4) = WORD1(v58);
            v59 = MEMORY[0x277D86220];
            v60 = " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1962\n";
            goto LABEL_144;
          }

          v56 = modeCopy2;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_189;
          }

          LOWORD(buf) = 0;
          v96 = MEMORY[0x277D86220];
          v97 = " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1962\n";
LABEL_365:
          _os_log_impl(&dword_250836000, v96, OS_LOG_TYPE_DEFAULT, v97, &buf, 2u);
          goto LABEL_189;
        }

        if (input422Copy)
        {
          if (enableLogInstance)
          {
            v56 = modeCopy2;
            v57 = planeCopy;
            if (logInstanceID)
            {
              v58 = logInstanceID;
            }

            else
            {
              v58 = prevLogInstanceID;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_145;
            }

            LODWORD(buf) = 134217984;
            *(&buf + 4) = WORD1(v58);
            v59 = MEMORY[0x277D86220];
            v60 = " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1947\n";
            goto LABEL_144;
          }

          v56 = modeCopy2;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_189;
          }

          LOWORD(buf) = 0;
          v96 = MEMORY[0x277D86220];
          v97 = " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1947\n";
          goto LABEL_365;
        }

        v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_unpackedHDR10toRGB];
      }

LABEL_187:
      v56 = modeCopy2;
LABEL_188:
      v117 = v64;
      goto LABEL_189;
    }

    if (v107)
    {
      v118 = v51;
      if (data->var12 == 2)
      {
        if (input422Copy)
        {
          p_iptP422PackedPlanar_msr = &self->_iptP422PackedPlanar_msr;
        }

        else
        {
          p_iptP422PackedPlanar_msr = &self->_singleLayerIntegratedIPTKernelPackedPlanar_msr;
        }
      }

      else if (input422Copy)
      {
        v61 = &self->super.isa + v35;
        v62 = (v61 + 120);
        p_iptP422PackedPlanar_msr = (v61 + 144);
        if (!m4)
        {
          p_iptP422PackedPlanar_msr = v62;
        }
      }

      else if (m4)
      {
        p_iptP422PackedPlanar_msr = &self->_singleLayerIntegratedKernelPackedPlanarDM4_msr[v35];
      }

      else
      {
        p_iptP422PackedPlanar_msr = &self->_singleLayerIntegratedKernelPackedPlanar_msr[v35];
      }

      v51 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:*p_iptP422PackedPlanar_msr];
    }

    v117 = v51;
    if (v && refMode)
    {
      if (input422Copy)
      {
        v98 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HDR10_msr];

        v56 = modeCopy2;
        v117 = v98;
        v67 = v46 + 1;
        if (!v108)
        {
          goto LABEL_190;
        }

        goto LABEL_289;
      }

      v99 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHDR10_msr];

      v56 = modeCopy2;
      v117 = v99;
      v67 = v46 + 1;
      if (!v108)
      {
        goto LABEL_190;
      }
    }

    else
    {
      v56 = modeCopy2;
      v67 = v46 + 1;
      if (!v108)
      {
        goto LABEL_190;
      }

      if (input422Copy)
      {
LABEL_289:
        v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packed422HLG_msr];

        goto LABEL_188;
      }
    }

    v64 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_packedHLG_msr];

    goto LABEL_188;
  }

LABEL_191:
  v70 = v48;
  if (v117)
  {
    [computeCommandEncoder setComputePipelineState:?];
  }

  else if (enableLogInstance)
  {
    v71 = planeCopy;
    if (logInstanceID)
    {
      v72 = logInstanceID;
    }

    else
    {
      v72 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = WORD1(v72);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1984\n", &buf, 0xCu);
    }

    prevLogInstanceID = v72;
    planeCopy = v71;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1984\n", &buf, 2u);
  }

  if (!modeCopy2)
  {
    if (!v109)
    {
      if (r10Copy)
      {
        goto LABEL_249;
      }

      currentPolynomialTable = self->_currentPolynomialTable;
      if (currentPolynomialTable)
      {
        [computeCommandEncoder setTexture:currentPolynomialTable atIndex:v70];
        [computeCommandEncoder setBuffer:self->_config offset:0 atIndex:0];
        ++v70;
        v77 = 1;
      }

      else
      {
        v77 = 0;
      }

      v81 = 9664;
      if (r10TV && refMode)
      {
        v81 = 9680;
      }

      [computeCommandEncoder setTexture:*(&self->super.isa + v81) atIndex:v70];
      tVCopy = tV;
      if (vMode)
      {
        tVCopy = 0;
      }

      v83 = tVCopy | v & ~refMode | lDovi;
      v84 = 17896;
      if ((v107 || dovi) && m4)
      {
        v84 = 28176;
      }

      v85 = v83 == 0;
      v86 = 9696;
      if (v85)
      {
        v86 = v84;
      }

      [computeCommandEncoder setTexture:*(&self->super.isa + v86) atIndex:v70 + 1];
      v87 = 28160;
      if (v && refMode || v108)
      {
        v87 = 26104;
      }

      if ((v107 || dovi) && m4)
      {
        v87 = 28184;
      }

      v88 = 9696;
      if (vMode - 1 >= 2 || !tV)
      {
        v88 = v87;
      }

      [computeCommandEncoder setTexture:*(&self->super.isa + v88) atIndex:v70 + 2];
      goto LABEL_248;
    }

    v76 = 9664;
    if (onPad || lLDovi)
    {
      v76 = 9680;
    }

    [computeCommandEncoder setTexture:*(&self->super.isa + v76) atIndex:v70];
    [computeCommandEncoder setTexture:self->_scalingFactorTable atIndex:v70 + 1];
    [computeCommandEncoder setTexture:self->_lumaMixFactorTable atIndex:v70 + 2];
LABEL_218:
    v77 = 0;
LABEL_248:
    [computeCommandEncoder setBuffer:configCopy offset:0 atIndex:v77];
    goto LABEL_249;
  }

  if (tV && data->var12 == 2)
  {
    v73 = v70;
    if (!self->_currentPolynomialTable)
    {
      if (enableLogInstance)
      {
        v74 = planeCopy;
        if (logInstanceID)
        {
          v75 = logInstanceID;
        }

        else
        {
          v75 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = WORD1(v75);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: _currentPolynomialTable warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1991\n", &buf, 0xCu);
        }

        prevLogInstanceID = v75;
        planeCopy = v74;
        v73 = v70;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: _currentPolynomialTable warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1991\n", &buf, 2u);
      }
    }

    [computeCommandEncoder setTexture:self->_currentPolynomialTable atIndex:v73];
    goto LABEL_249;
  }

  if (r10TV)
  {
    goto LABEL_218;
  }

  if (!v && !tV)
  {
    if (enableLogInstance)
    {
      v79 = planeCopy;
      if (logInstanceID)
      {
        v80 = logInstanceID;
      }

      else
      {
        v80 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = WORD1(v80);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: HDR10OnHDR10TV || DolbyOnHDR10TV warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1996\n", &buf, 0xCu);
      }

      prevLogInstanceID = v80;
      planeCopy = v79;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: HDR10OnHDR10TV || DolbyOnHDR10TV warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 1996\n", &buf, 2u);
    }
  }

LABEL_249:
  if ((orientation & 4) != 0)
  {
    v92 = 8;
    v93 = width;
  }

  else
  {
    v89 = *(v31 + 3664);
    v90 = 2;
    if (!orientation)
    {
      v90 = 8;
    }

    v91 = width >> 2;
    if ((v89 & planeCopy) == 0)
    {
      v91 = width;
    }

    v85 = v89 == 0;
    v92 = 4;
    if (!v85)
    {
      v92 = v90;
    }

    if (!planeCopy)
    {
      v92 = 16;
    }

    v93 = v91 >> (pad | onPad);
    if (pad || onPad)
    {
      v92 = 8;
    }
  }

  if (v117)
  {
    *&buf = (v93 + v92 - 1) / v92;
    *(&buf + 1) = (height + 15) >> 4;
    v122 = 1;
    v119 = v92;
    v120 = xmmword_2508CEC50;
    [computeCommandEncoder dispatchThreadgroups:&buf threadsPerThreadgroup:&v119];
  }

  [computeCommandEncoder endEncoding];

  v94 = *MEMORY[0x277D85DE8];
  return -17000;
}

- (int64_t)embeddedSetupEncoderForGpuMatchMsrCommandBuffer:(id)buffer DMData:(id *)data dmConfig:(id)config isInput422:(BOOL)input422 orientation:(int)orientation isDolby84:(BOOL)dolby84 dovi50toHDR10TVMode:(unsigned int)mode isDM4:(BOOL)self0 dpcParam:(_DpcParam *)self1 tcControl:(ToneCurve_Control *)self2 hdrControl:(id *)self3 isHDR10Content:(BOOL)self4 isHLGContent:(BOOL)self5 isDOVIContent:(BOOL)self6
{
  dolby84Copy = dolby84;
  orientationCopy = orientation;
  v22 = &self->_dm4_sLutIBuffer[120];
  bufferCopy = buffer;
  configCopy = config;
  v25 = bufferCopy;
  v26 = v25;
  if (*(v22 + 457))
  {
    [v25 setProtectionOptions:?];
  }

  computeCommandEncoder = [v26 computeCommandEncoder];
  v28 = computeCommandEncoder;
  targetTransferFunction = control->targetTransferFunction;
  if (targetTransferFunction == 8)
  {
    v73 = orientationCopy;
    if (param->on)
    {
      v30 = 3;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    if (targetTransferFunction != 13)
    {
      [computeCommandEncoder endEncoding];
      v38 = 0;
      v39 = 0;
      v40 = -17013;
      goto LABEL_106;
    }

    v73 = orientationCopy;
    if (param->on)
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }
  }

  if (content)
  {
    gContentCopy2 = gContent;
    iContentCopy3 = iContent;
    LODWORD(v68) = m4;
    HIDWORD(v68) = content;
    v31 = *(v22 + 909);
    if ((isFormatYUV(v31) & 1) == 0)
    {
      if (hdrControl->var17 == 8)
      {
        v32 = 23;
      }

      else
      {
        v32 = 22;
      }

      v33 = 2;
      goto LABEL_30;
    }

    v32 = 27;
    v33 = 1;
    v34 = 1448;
    if (v31 > 1952854575)
    {
      if (v31 > 1953903151)
      {
        if (v31 == 1953903152)
        {
          goto LABEL_82;
        }

        if (v31 == 1953903668)
        {
LABEL_65:
          v32 = 29;
          goto LABEL_66;
        }

        if (v31 != 1953903154)
        {
LABEL_124:
          v32 = 20;
          v33 = 2;
          v34 = 1408;
          if (v31 == 2016686642 || input422)
          {
            goto LABEL_82;
          }

          if (v31 > 2019963955)
          {
            if (v31 != 2019963956)
            {
              if (v31 != 2033463606)
              {
LABEL_171:
                v32 = 19;
                goto LABEL_30;
              }

              v32 = 1;
LABEL_30:
              v34 = 1408;
              goto LABEL_82;
            }
          }

          else
          {
            if (v31 == 1983000886)
            {
              v32 = 11;
              v33 = 1;
              goto LABEL_30;
            }

            if (v31 != 2016687156)
            {
              goto LABEL_171;
            }
          }

          v32 = 21;
          goto LABEL_30;
        }

        goto LABEL_64;
      }

      if (v31 == 1952854576)
      {
        goto LABEL_82;
      }

      if (v31 == 1952854578)
      {
        goto LABEL_64;
      }

      v35 = 1952855092;
    }

    else
    {
      if (v31 <= 1937125935)
      {
        if (v31 != 1936077360)
        {
          if (v31 != 1936077362)
          {
            v35 = 1936077876;
            goto LABEL_55;
          }

LABEL_64:
          v32 = 28;
LABEL_66:
          v34 = 1448;
        }

LABEL_82:
        v48 = (&self->super.isa + v34);
        goto LABEL_83;
      }

      if (v31 == 1937125936)
      {
        goto LABEL_82;
      }

      if (v31 == 1937125938)
      {
        goto LABEL_64;
      }

      v35 = 1937126452;
    }

LABEL_55:
    if (v31 != v35)
    {
      goto LABEL_124;
    }

    goto LABEL_65;
  }

  if (gContent)
  {
    gContentCopy2 = gContent;
    iContentCopy3 = iContent;
    LODWORD(v68) = m4;
    HIDWORD(v68) = content;
    v36 = *(v22 + 909);
    if (!isFormatYUV(v36))
    {
      v32 = 18;
      v33 = 2;
      goto LABEL_45;
    }

    v32 = 24;
    v33 = 1;
    v34 = 1440;
    if (v36 > 1952854575)
    {
      if (v36 > 1953903151)
      {
        if (v36 == 1953903152)
        {
          goto LABEL_82;
        }

        if (v36 == 1953903668)
        {
LABEL_80:
          v32 = 26;
          goto LABEL_81;
        }

        if (v36 != 1953903154)
        {
          goto LABEL_131;
        }

        goto LABEL_79;
      }

      if (v36 == 1952854576)
      {
        goto LABEL_82;
      }

      if (v36 == 1952854578)
      {
        goto LABEL_79;
      }

      v37 = 1952855092;
    }

    else
    {
      if (v36 <= 1937125935)
      {
        if (v36 == 1936077360)
        {
          goto LABEL_82;
        }

        if (v36 != 1936077362)
        {
          v37 = 1936077876;
          goto LABEL_74;
        }

LABEL_79:
        v32 = 25;
LABEL_81:
        v34 = 1440;
        goto LABEL_82;
      }

      if (v36 == 1937125936)
      {
        goto LABEL_82;
      }

      if (v36 == 1937125938)
      {
        goto LABEL_79;
      }

      v37 = 1937126452;
    }

LABEL_74:
    if (v36 != v37)
    {
LABEL_131:
      v32 = 16;
      v33 = 2;
      v34 = 1400;
      if (v36 == 2016686642 || input422)
      {
        goto LABEL_82;
      }

      if (v36 > 2019963955)
      {
        if (v36 != 2019963956)
        {
          if (v36 == 2033463606)
          {
            v34 = 1400;
            v32 = 2;
            goto LABEL_82;
          }

LABEL_184:
          v32 = 15;
          goto LABEL_45;
        }
      }

      else
      {
        if (v36 == 1983000886)
        {
          v32 = 12;
          v33 = 1;
          goto LABEL_45;
        }

        if (v36 != 2016687156)
        {
          goto LABEL_184;
        }
      }

      v32 = 17;
LABEL_45:
      v34 = 1400;
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (!iContent)
  {
    v39 = 0;
    [computeCommandEncoder endEncoding];
    v40 = -17014;
    v38 = 0;
    goto LABEL_106;
  }

  LODWORD(v68) = m4;
  HIDWORD(v68) = content;
  gContentCopy2 = 0;
  iContentCopy3 = iContent;
  if (hdrControl->var17 == 18 && hdrControl->var0 == 1)
  {
    v41 = *(v22 + 909);
    if (!isFormatYUV(v41))
    {
      v32 = 18;
      v42 = 1;
      v33 = 2;
      m4Copy3 = m4;
      goto LABEL_160;
    }

    v42 = 0;
    v32 = 24;
    v33 = 1;
    if (v41 > 1952854575)
    {
      m4Copy3 = m4;
      if (v41 > 1953903151)
      {
        if (v41 == 1953903152)
        {
          goto LABEL_160;
        }

        if (v41 == 1953903668)
        {
          goto LABEL_159;
        }

        if (v41 != 1953903154)
        {
          goto LABEL_178;
        }

        goto LABEL_158;
      }

      if (v41 == 1952854576)
      {
        goto LABEL_160;
      }

      if (v41 == 1952854578)
      {
        goto LABEL_158;
      }

      v44 = 1952855092;
    }

    else
    {
      m4Copy3 = m4;
      if (v41 <= 1937125935)
      {
        if (v41 == 1936077360)
        {
          goto LABEL_160;
        }

        if (v41 != 1936077362)
        {
          v44 = 1936077876;
          goto LABEL_153;
        }

LABEL_158:
        v42 = 0;
        v32 = 25;
        goto LABEL_160;
      }

      if (v41 == 1937125936)
      {
        goto LABEL_160;
      }

      if (v41 == 1937125938)
      {
        goto LABEL_158;
      }

      v44 = 1937126452;
    }

LABEL_153:
    if (v41 != v44)
    {
LABEL_178:
      v32 = 16;
      v42 = 1;
      v33 = 2;
      if (v41 == 2016686642 || input422)
      {
        goto LABEL_160;
      }

      if (v41 <= 2019963955)
      {
        if (v41 == 1983000886)
        {
          v32 = 12;
          v33 = 1;
          goto LABEL_195;
        }

        if (v41 != 2016687156)
        {
          goto LABEL_193;
        }

LABEL_192:
        v32 = 17;
LABEL_195:
        v42 = 1;
        goto LABEL_160;
      }

      if (v41 == 2019963956)
      {
        goto LABEL_192;
      }

      if (v41 != 2033463606)
      {
LABEL_193:
        v32 = 15;
        goto LABEL_195;
      }

      v42 = 1;
      v32 = 2;
LABEL_160:
      v65 = 1472;
      if (v42)
      {
        v65 = 1432;
      }

      v66 = (&self->super.isa + v65);
      v63 = v42 == 0;
      v67 = 1456;
      if (!v63)
      {
        v67 = 1416;
      }

      v48 = (&self->super.isa + 8 * dolby84Copy + v67);
      if (!m4Copy3)
      {
        v48 = v66;
      }

      goto LABEL_83;
    }

LABEL_159:
    v42 = 0;
    v32 = 26;
    goto LABEL_160;
  }

  v45 = 0;
  v46 = *(v22 + 909);
  v32 = 35;
  v33 = 1;
  if (v46 > 1952854575)
  {
    if (v46 > 1953903151)
    {
      if (v46 == 1953903152)
      {
        goto LABEL_117;
      }

      if (v46 == 1953903668)
      {
LABEL_116:
        v45 = 0;
        v32 = 37;
        goto LABEL_117;
      }

      if (v46 != 1953903154)
      {
LABEL_141:
        v32 = 31;
        v45 = 1;
        v33 = 2;
        if (v46 == 2016686642 || input422)
        {
          goto LABEL_117;
        }

        if (v46 > 2019963955)
        {
          if (v46 != 2019963956)
          {
            if (v46 != 2033463606)
            {
LABEL_186:
              v32 = 30;
              goto LABEL_188;
            }

            v32 = 34;
LABEL_188:
            v45 = 1;
            goto LABEL_117;
          }
        }

        else
        {
          if (v46 == 1983000886)
          {
            v32 = 33;
            v33 = 1;
            goto LABEL_188;
          }

          if (v46 != 2016687156)
          {
            goto LABEL_186;
          }
        }

        v32 = 32;
        goto LABEL_188;
      }
    }

    else
    {
      if (v46 == 1952854576)
      {
        goto LABEL_117;
      }

      if (v46 != 1952854578)
      {
        v47 = 1952855092;
        goto LABEL_110;
      }
    }

LABEL_115:
    v45 = 0;
    v32 = 36;
    goto LABEL_117;
  }

  if (v46 > 1937125935)
  {
    if (v46 == 1937125936)
    {
      goto LABEL_117;
    }

    if (v46 != 1937125938)
    {
      v47 = 1937126452;
LABEL_110:
      if (v46 != v47)
      {
        goto LABEL_141;
      }

      goto LABEL_116;
    }

    goto LABEL_115;
  }

  if (v46 != 1936077360)
  {
    if (v46 != 1936077362)
    {
      v47 = 1936077876;
      goto LABEL_110;
    }

    goto LABEL_115;
  }

LABEL_117:
  v61 = 1496;
  if (v45)
  {
    v61 = 1480;
  }

  v62 = (&self->super.isa + v61);
  v63 = v45 == 0;
  v64 = 1504;
  if (!v63)
  {
    v64 = 1488;
  }

  v48 = (&self->super.isa + v64);
  if (data->var12 != 2)
  {
    v48 = v62;
  }

LABEL_83:
  v39 = *v48;
  if (!v39 || ([(DolbyVisionComposer *)self getComputePipeLineStateForShader:v39 input:v32 output:v30], (v38 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [v28 endEncoding];
    v38 = 0;
    v40 = -17005;
    goto LABEL_106;
  }

  width = [(MTLTexture *)self->_blTexture width];
  height = [(MTLTexture *)self->_blTexture height];
  [v28 setTexture:self->_blTexture atIndex:0];
  blTextureUV = self->_blTextureUV;
  if (blTextureUV)
  {
    [v28 setTexture:blTextureUV atIndex:1];
    v52 = 2;
  }

  else
  {
    v52 = 1;
  }

  [v28 setTexture:self->_outputTexture[0] atIndex:{v52, v68}];
  [v28 setComputePipelineState:v38];
  v53 = v52 + 1;
  if (iContentCopy3)
  {
    currentPolynomialTable = self->_currentPolynomialTable;
    if (currentPolynomialTable)
    {
      [v28 setTexture:currentPolynomialTable atIndex:v53];
      LODWORD(v53) = v52 + 2;
    }
  }

  v55 = v53;
  if (gContentCopy2)
  {
    [v28 setTexture:self->_hlg2LTable atIndex:v53];
    LODWORD(v56) = v55 + 1;
  }

  else
  {
    [v28 setTexture:self->_pq2LTable atIndex:v53];
    v56 = (v55 + 1);
    if (!v70)
    {
      if (v69)
      {
        [v28 setTexture:self->_dm4_tLutI atIndex:v56];
        v58 = 28184;
      }

      else
      {
        [v28 setTexture:self->_scalingFactorTable atIndex:v56];
        v58 = 28160;
      }

      [v28 setTexture:*(&self->super.isa + v58) atIndex:(v55 + 2)];
      v57 = 16;
      goto LABEL_100;
    }
  }

  [v28 setTexture:self->_scalingFactorTable atIndex:v56];
  [v28 setTexture:self->_lumaMixFactorTable atIndex:(v55 + 2)];
  v57 = 8;
LABEL_100:
  [v28 setBuffer:configCopy offset:0 atIndex:0];
  if ((v73 & 4) != 0)
  {
    v57 = 8;
  }

  v76 = (v57 + width / v33 - 1) / v57;
  v77 = ((height + 15) >> 4);
  v78 = 1;
  v80 = v57;
  v81 = xmmword_2508CEC50;
  [v28 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v80];
  [v28 endEncoding];
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x43u, 0) == 1)
    {
      v76 = 0;
      v77 = &v76;
      v78 = 0x2020000000;
      frameIndex = self->_frameIndex;
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __218__DolbyVisionComposer_embeddedSetupEncoderForGpuMatchMsrCommandBuffer_DMData_dmConfig_isInput422_orientation_isDolby84_dovi50toHDR10TVMode_isDM4_dpcParam_tcControl_hdrControl_isHDR10Content_isHLGContent_isDOVIContent___block_invoke;
      v74[3] = &unk_2796A0700;
      v74[4] = self;
      v74[5] = &v76;
      v74[6] = v57;
      v75 = xmmword_2508CEC50;
      [v26 addCompletedHandler:v74];
      _Block_object_dispose(&v76, 8);
    }
  }

  v40 = -17000;
LABEL_106:

  return v40;
}

void __218__DolbyVisionComposer_embeddedSetupEncoderForGpuMatchMsrCommandBuffer_DMData_dmConfig_isInput422_orientation_isDolby84_dovi50toHDR10TVMode_isDM4_dpcParam_tcControl_hdrControl_isHDR10Content_isHLGContent_isDOVIContent___block_invoke(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 GPUEndTime];
  v5 = v4;
  [v3 GPUStartTime];
  *&v6 = (v5 - v6) * 1000.0;
  *(a1[4] + 4 * (*(*(a1[5] + 8) + 24) % 0x12CuLL) + 40532) = LODWORD(v6);
  v7 = *(*(a1[5] + 8) + 24);
  if (v7 != 0.0 && *&v7 % 0x12CuLL == 0)
  {
    v9 = 0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v10 = a1[4] + 40532;
      v13 = *(v10 + v9);
      v11 = v11 + v13;
      if (v12 <= v13)
      {
        v12 = *(v10 + v9);
      }

      v9 += 4;
    }

    while (v9 != 1200);
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v14 = logInstanceID;
      }

      else
      {
        v14 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134219264;
        v15 = a1[6];
        v16 = a1[7];
        *&v21 = WORD1(v14);
        v22 = 2048;
        v23 = v7;
        v24 = 2048;
        v25 = (v11 / 300.0);
        v26 = 2048;
        *v27 = v12;
        *&v27[8] = 1024;
        v28 = v15;
        v29 = 1024;
        v30 = v16;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx [frame_%llu] scheduled2completed: avg: %5.1f, max: %5.1f [in ms], [ %d : %d ]\n", &v20, 0x36u);
      }

      prevLogInstanceID = v14;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134219008;
      v17 = a1[6];
      v18 = a1[7];
      v21 = v7;
      v22 = 2048;
      v23 = (v11 / 300.0);
      v24 = 2048;
      v25 = v12;
      v26 = 1024;
      *v27 = v17;
      *&v27[4] = 1024;
      *&v27[6] = v18;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] [frame_%llu] scheduled2completed: avg: %5.1f, max: %5.1f [in ms], [ %d : %d ]\n", &v20, 0x2Cu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)encodeDualLayerToCommandBuffer:(id)buffer BL:(__IOSurface *)l EL:(__IOSurface *)eL Output:(__IOSurface *)output MetaData:(id *)data tcControl:(ToneCurve_Control *)control
{
  v10 = &self->_timeArray[107];
  bufferCopy = buffer;
  if (*(v10 + 2762) == 1)
  {
    [(DolbyVisionComposer *)self encodeSubsampleLumaHorizontalToCommandBuffer:bufferCopy];
    [(DolbyVisionComposer *)self encodeSubsampleLumaVerticalToCommandBuffer:bufferCopy];
  }

  if (*(v10 + 2761) == 1)
  {
    [(DolbyVisionComposer *)self encodeComposeCombinedToCommandBuffer:bufferCopy];
  }

  else
  {
    [(DolbyVisionComposer *)self encodeComposeLumaToCommandBuffer:bufferCopy];
    [(DolbyVisionComposer *)self encodeComposeChromaToCommandBuffer:bufferCopy withMetaData:data];
  }

  return -17000;
}

- (void)initBuffers
{
  v23 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v23 setTextureType:0];
  [v23 setHeight:1];
  [v23 setWidth:3072];
  [v23 setDepth:1];
  [v23 setPixelFormat:23];
  [v23 setArrayLength:1];
  [v23 setMipmapLevelCount:1];
  v3 = 0;
  polynomialTables = self->_polynomialTables;
  do
  {
    v5 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v23];
    v6 = polynomialTables[v3];
    polynomialTables[v3] = v5;

    ++v3;
  }

  while (v3 != 3);
  v7 = 0;
  configBuffers = self->_configBuffers;
  do
  {
    v9 = [(MTLDeviceSPI *)self->_device newBufferWithLength:272 options:0];
    v10 = configBuffers[v7];
    configBuffers[v7] = v9;

    ++v7;
  }

  while (v7 != 3);
  v11 = &self->_ambientHeadroomAdaptationLut[1000];
  v12 = xmmword_2508CD8F0;
  v13 = vdupq_n_s32(0x3A828C14u);
  v14 = 1000;
  v15 = vdupq_n_s64(0x3F747AE147AE147BuLL);
  __asm { FMOV            V3.4S, #1.0 }

  v21.i64[0] = 0x400000004;
  v21.i64[1] = 0x400000004;
  do
  {
    v22 = vmulq_f32(vcvtq_f32_u32(v12), v13);
    *(v11 - 250) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*v22.f32), v15)), vaddq_f64(vcvt_hight_f64_f32(v22), v15));
    *v11 = _Q3;
    v11 += 4;
    v12 = vaddq_s32(v12, v21);
    v14 -= 4;
  }

  while (v14);
}

- (void)setupInputBuffersWithMetadata:(id *)metadata
{
  objc_storeStrong(&self->_config, self->_configBuffers[self->_frameIndex % 3]);
  objc_storeStrong(&self->_currentPolynomialTable, self->_polynomialTables[self->_frameIndex % 3]);
  v5 = metadata->var0 + 8;
  [(DolbyVisionComposer *)self setupComposerKernelConfiguration:[(MTLBuffer *)self->_config contents] fromMetaData:metadata];
  v6 = malloc_type_malloc(6 << v5, 0x1000040BDFB0063uLL);
  v7 = 0;
  v8 = metadata->var0 + 8;
  do
  {
    createPolynomialTableForComponent(metadata, v7, v6 + 2 * (v7 << v8));
    ++v7;
  }

  while (v7 != 3);
  currentPolynomialTable = self->_currentPolynomialTable;
  memset(v15, 0, 24);
  v15[3] = (3 << v5);
  v16 = vdupq_n_s64(1uLL);
  [(MTLTexture *)currentPolynomialTable replaceRegion:v15 mipmapLevel:0 slice:0 withBytes:v6 bytesPerRow:6 << v5 bytesPerImage:0];
  free(v6);
  if (!metadata->var32)
  {
    v10 = [(MTLDeviceSPI *)self->_device newBufferWithLength:4 * (3 << v5) options:0];
    dequantizelTable = self->_dequantizelTable;
    self->_dequantizelTable = v10;

    contents = [(MTLBuffer *)self->_dequantizelTable contents];
    v13 = 0;
    v14 = metadata->var1 + 8;
    do
    {
      createNlqTableForComponent(metadata, v13, (contents + 4 * (v13 << v14)));
      ++v13;
    }

    while (v13 != 3);
  }
}

- (int64_t)setupInputTexturesWithBL:(__IOSurface *)l EL:(__IOSurface *)eL Output:(__IOSurface *)output MetaData:(id *)data
{
  v80 = *MEMORY[0x277D85DE8];
  p_srcFormat = &self->_srcFormat;
  PixelFormat = IOSurfaceGetPixelFormat(l);
  *p_srcFormat = PixelFormat;
  p_srcFormat[2] = PixelFormat;
  if (*(p_srcFormat + 3228) == 1)
  {
    p_srcFormat[2] = getFourCCforType(PixelFormat);
  }

  *(p_srcFormat + 5) = IOSurfaceGetProtectionOptions();
  *(p_srcFormat + 7) = IOSurfaceGetProtectionOptions();
  PlaneCount = IOSurfaceGetPlaneCount(output);
  WidthOfPlane = IOSurfaceGetWidthOfPlane(l, 0);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(l, 0);
  v14 = p_srcFormat[2];
  if (!data->var0)
  {
    if (v14 > 2016686639)
    {
      v15 = 1;
      v16 = 2;
      v63 = 0;
      v64 = 525;
      if (v14 == 2016686640 || v14 == 2019963440)
      {
        goto LABEL_114;
      }
    }

    else if (v14 == 1882468912 || v14 == 1885745712)
    {
      v63 = 0;
      v15 = 1;
      v16 = 2;
      v17 = 528;
LABEL_27:
      v64 = v17;
      [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v17 width:WidthOfPlane height:HeightOfPlane mipmapped:0, eL];
      goto LABEL_115;
    }

    v63 = 0;
    v15 = 1;
    v16 = 2;
    v17 = 520;
    goto LABEL_27;
  }

  if (v14 > 1937126451)
  {
    if (v14 > 1999843441)
    {
      if (v14 > 2016687155)
      {
        if (v14 > 2019963441)
        {
          if (v14 != 2019963442)
          {
            if (v14 != 2019963956)
            {
              if (v14 == 2033463606)
              {
                v63 = 0;
LABEL_85:
                v15 = 1;
                v16 = 2;
                v64 = 110;
                goto LABEL_113;
              }

              goto LABEL_100;
            }

            goto LABEL_87;
          }

          goto LABEL_52;
        }

        if (v14 == 2016687156)
        {
LABEL_87:
          *(p_srcFormat + 36) = 0;
          if (PlaneCount == 3)
          {
            if (!enableLogInstance)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_148;
              }

              goto LABEL_147;
            }

            if (logInstanceID)
            {
              v24 = logInstanceID;
            }

            else
            {
              v24 = prevLogInstanceID;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_145;
            }

            goto LABEL_144;
          }

          v15 = 1;
          v16 = 2;
          v21 = 545;
          goto LABEL_99;
        }

        if (v14 == 2019963440)
        {
          goto LABEL_57;
        }

        goto LABEL_100;
      }

      if (v14 > 2016686639)
      {
        if (v14 == 2016686640)
        {
LABEL_57:
          if (PlaneCount != 3 || (p_srcFormat[807] & 1) != 0)
          {
            v18 = 543;
            goto LABEL_60;
          }

          WidthOfPlane >>= 2;
          v64 = 113;
          v25 = 63;
LABEL_111:
          v63 = v25;
          goto LABEL_112;
        }

        if (v14 == 2016686642)
        {
LABEL_52:
          if (PlaneCount == 3 && (p_srcFormat[807] & 1) == 0)
          {
            WidthOfPlane >>= 2;
            v64 = 113;
            v63 = 63;
          }

          else
          {
            v63 = 0;
            v64 = 544;
          }

          *(p_srcFormat + 36) = 0;
          v16 = 1;
          goto LABEL_109;
        }

LABEL_100:
        if (!enableLogInstance)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        }

        if (logInstanceID)
        {
          v24 = logInstanceID;
        }

        else
        {
          v24 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_145;
        }

LABEL_144:
        v52 = *p_srcFormat;
        *buf = 134220546;
        v67 = WORD1(v24);
        v68 = 2080;
        *v69 = "[DolbyVisionComposer setupInputTexturesWithBL:EL:Output:MetaData:]";
        *&v69[8] = 1024;
        *v70 = v52;
        *&v70[4] = 1024;
        *v71 = HIBYTE(v52);
        *&v71[4] = 1024;
        *v72 = BYTE2(v52);
        *&v72[4] = 1024;
        *v73 = BYTE1(v52);
        *&v73[4] = 1024;
        *v74 = v52;
        *&v74[4] = 1024;
        *v75 = HIBYTE(v14);
        *&v75[4] = 1024;
        *v76 = BYTE2(v14);
        *&v76[4] = 1024;
        v77 = BYTE1(v14);
        v78 = 1024;
        v79 = v14;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : format (%d) %c%c%c%c [%c%c%c%c]is not supported yet\n", buf, 0x4Cu);
LABEL_145:
        prevLogInstanceID = v24;
LABEL_148:
        result = -17007;
        goto LABEL_149;
      }

      if (v14 != 1999843442)
      {
        if (v14 != 1999908961)
        {
          goto LABEL_100;
        }

        v15 = 1;
        v16 = 2;
        v21 = 552;
LABEL_99:
        v63 = 0;
        v64 = v21;
        goto LABEL_113;
      }

LABEL_43:
      v15 = 1;
      v16 = 2;
      v21 = 554;
      goto LABEL_99;
    }

    if (v14 <= 1953903151)
    {
      if (v14 <= 1952854577)
      {
        if (v14 != 1937126452)
        {
          v20 = 1952854576;
          goto LABEL_66;
        }

        goto LABEL_86;
      }

      if (v14 != 1952854578)
      {
        v22 = 1952855092;
LABEL_79:
        if (v14 != v22)
        {
          goto LABEL_100;
        }

        goto LABEL_86;
      }

      goto LABEL_81;
    }

    if (v14 > 1953903667)
    {
      if (v14 != 1953903668)
      {
        if (v14 == 1983000886)
        {
          v63 = 0;
          WidthOfPlane >>= 1;
          goto LABEL_85;
        }

        goto LABEL_100;
      }

LABEL_86:
      v16 = 1;
      v64 = 23;
      v63 = 63;
LABEL_109:
      v15 = 1;
      goto LABEL_113;
    }

    if (v14 == 1953903152)
    {
      goto LABEL_76;
    }

    v23 = 1953903154;
    goto LABEL_74;
  }

  if (v14 > 1882468913)
  {
    if (v14 > 1936077361)
    {
      if (v14 <= 1937125935)
      {
        if (v14 != 1936077362)
        {
          v22 = 1936077876;
          goto LABEL_79;
        }

LABEL_81:
        v15 = 2;
        v16 = 1;
        v64 = 23;
        v63 = 63;
        goto LABEL_113;
      }

      if (v14 == 1937125936)
      {
        goto LABEL_76;
      }

      v23 = 1937125938;
LABEL_74:
      if (v14 != v23)
      {
        goto LABEL_100;
      }

      goto LABEL_81;
    }

    if (v14 > 1885745713)
    {
      if (v14 != 1885745714)
      {
        v20 = 1936077360;
LABEL_66:
        if (v14 != v20)
        {
          goto LABEL_100;
        }

LABEL_76:
        v16 = 2;
        v64 = 23;
        v63 = 63;
        v15 = 2;
        goto LABEL_113;
      }
    }

    else if (v14 != 1882468914)
    {
      v19 = 1885745712;
      goto LABEL_70;
    }

    v16 = 1;
    *(p_srcFormat + 36) = 1;
    v63 = 0;
    v64 = 547;
    goto LABEL_109;
  }

  if (v14 > 1380411456)
  {
    if (v14 <= 1815162993)
    {
      if (v14 == 1380411457)
      {
        v15 = 1;
        v16 = 2;
        v21 = 115;
        goto LABEL_99;
      }

      if (v14 != 1647534392)
      {
        goto LABEL_100;
      }

      goto LABEL_43;
    }

    if (v14 == 1815162994)
    {
      v15 = 1;
      v16 = 2;
      v21 = 94;
      goto LABEL_99;
    }

    v19 = 1882468912;
LABEL_70:
    if (v14 != v19)
    {
      goto LABEL_100;
    }

    v15 = 1;
    *(p_srcFormat + 36) = 1;
    v16 = 2;
    v21 = 546;
    goto LABEL_99;
  }

  if (v14 > 1111970368)
  {
    if (v14 == 1111970369)
    {
      v15 = 1;
      v16 = 2;
      v21 = 80;
    }

    else
    {
      if (v14 != 1378955371)
      {
        goto LABEL_100;
      }

      v15 = 1;
      v16 = 2;
      v21 = 90;
    }

    goto LABEL_99;
  }

  if (v14 != 875704422 && v14 != 875704438)
  {
    goto LABEL_100;
  }

  if (PlaneCount == 3 && (p_srcFormat[807] & 1) == 0)
  {
    WidthOfPlane >>= 2;
    v64 = 70;
    v25 = 30;
    goto LABEL_111;
  }

  v18 = 540;
LABEL_60:
  v63 = 0;
  v64 = v18;
LABEL_112:
  *(p_srcFormat + 36) = 0;
  v15 = 1;
  v16 = 2;
LABEL_113:
  if ((p_srcFormat[807] & 1) == 0)
  {
    if (v14 <= 1815162993)
    {
      if (v14 == 1111970369 || v14 == 1378955371)
      {
        goto LABEL_139;
      }

      v51 = 1647534392;
    }

    else
    {
      if (v14 <= 1999843441)
      {
        if (v14 != 1815162994)
        {
          v51 = 1937125936;
          goto LABEL_138;
        }

LABEL_139:
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v24 = logInstanceID;
          }

          else
          {
            v24 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_145;
          }

          goto LABEL_144;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_148;
        }

LABEL_147:
        v53 = *p_srcFormat;
        v54 = HIBYTE(*p_srcFormat);
        v55 = BYTE2(*p_srcFormat);
        *buf = 136317442;
        v67 = "[DolbyVisionComposer setupInputTexturesWithBL:EL:Output:MetaData:]";
        v68 = 1024;
        *v69 = v53;
        *&v69[4] = 1024;
        *&v69[6] = v54;
        *v70 = 1024;
        *&v70[2] = v55;
        *v71 = 1024;
        *&v71[2] = BYTE1(v53);
        *v72 = 1024;
        *&v72[2] = v53;
        *v73 = 1024;
        *&v73[2] = HIBYTE(v14);
        *v74 = 1024;
        *&v74[2] = BYTE2(v14);
        *v75 = 1024;
        *&v75[2] = BYTE1(v14);
        *v76 = 1024;
        *&v76[2] = v14;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : format (%d) %c%c%c%c [%c%c%c%c]is not supported yet\n", buf, 0x42u);
        goto LABEL_148;
      }

      if (v14 == 1999908961)
      {
        goto LABEL_139;
      }

      v51 = 1999843442;
    }

LABEL_138:
    if (v14 != v51)
    {
      goto LABEL_114;
    }

    goto LABEL_139;
  }

LABEL_114:
  [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v64 width:WidthOfPlane height:HeightOfPlane mipmapped:0, eL];
  v26 = LABEL_115:;
  v27 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v26 iosurface:l plane:0];
  blTexture = self->_blTexture;
  self->_blTexture = v27;

  if (PlaneCount != 3 || (p_srcFormat[9] & 1) != 0 || (p_srcFormat[807] & 1) != 0)
  {
    blTextureUV = self->_blTextureUV;
    self->_blTextureUV = 0;

    v30 = v63;
    if (v63 && (p_srcFormat[807] & 1) != 0)
    {
      v31 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v63 width:WidthOfPlane / v15 height:HeightOfPlane / v16 mipmapped:0];
      v32 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v31 iosurface:l plane:1];
      v33 = self->_blTextureUV;
      self->_blTextureUV = v32;
    }
  }

  else
  {
    if (!v63)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v57 = logInstanceID;
        }

        else
        {
          v57 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v67 = WORD1(v57);
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: chromaPixelFormat != MTLPixelFormatInvalid warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 3750\n", buf, 0xCu);
        }

        prevLogInstanceID = v57;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: chromaPixelFormat != MTLPixelFormatInvalid warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/Composer/DolbyVisionComposer.mm at line 3750\n", buf, 2u);
      }
    }

    v58 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v63 width:2 * WidthOfPlane height:HeightOfPlane / v16 mipmapped:0];
    v59 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v58 iosurface:l plane:1];
    v60 = self->_blTextureUV;
    self->_blTextureUV = v59;

    v30 = v63;
  }

  if (*(p_srcFormat + 3230) == 1 && data->var14[0][0][1][0])
  {
    v34 = WidthOfPlane >> 1;
    v35 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v64 width:WidthOfPlane >> 1 height:WidthOfPlane mipmapped:0];
    [v35 setUsage:3];
    v36 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v30 width:v34 height:HeightOfPlane >> 1 mipmapped:0];
    [v36 setUsage:3];
    v37 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v35];
    blSubsampledTempTexture = self->_blSubsampledTempTexture;
    self->_blSubsampledTempTexture = v37;

    v39 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v36];
    blSubsampledTexture = self->_blSubsampledTexture;
    self->_blSubsampledTexture = v39;
  }

  else
  {
    v41 = self->_blSubsampledTempTexture;
    self->_blSubsampledTempTexture = 0;

    v35 = self->_blSubsampledTexture;
    self->_blSubsampledTexture = 0;
  }

  if (buffera && !data->var32)
  {
    v42 = IOSurfaceGetWidthOfPlane(buffera, 0);
    v43 = IOSurfaceGetHeightOfPlane(buffera, 0);
    v44 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v64 width:v42 height:v43 mipmapped:0];
    v45 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v63 width:v42 >> 1 height:v43 >> 1 mipmapped:0];
    v46 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v44 iosurface:buffera plane:0];
    elTexture = self->_elTexture;
    self->_elTexture = v46;

    v48 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v45 iosurface:buffera plane:1];
    elTextureUV = self->_elTextureUV;
    self->_elTextureUV = v48;
  }

  result = -17000;
LABEL_149:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)setupOutputTexturesWithBuffer:(__IOSurface *)buffer orientation:(int)orientation ptvMode:(BOOL)mode
{
  modeCopy = mode;
  orientationCopy = orientation;
  WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, 0);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(buffer, 0);
  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  self->_dstFormat = PixelFormat;
  self->_outputPixelFormat = PixelFormat;
  if (self->_enableGpuTmMatchMSR)
  {
    LODWORD(PixelFormat) = getFourCCforType(PixelFormat);
    self->_outputPixelFormat = PixelFormat;
  }

  if (PixelFormat <= 1919365991)
  {
    if (PixelFormat == 1380411457)
    {
      v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
      setTextureDescriptorOptions(v12, self->_outputProtectionOptions);
      v13 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:buffer plane:0];
      goto LABEL_23;
    }

    if (PixelFormat == 1815162994)
    {
      v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:90 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
      v13 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:buffer plane:0];
      goto LABEL_23;
    }

LABEL_26:
    v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:113 width:WidthOfPlane >> 2 height:HeightOfPlane mipmapped:0];
    v26 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:63 width:WidthOfPlane >> 1 height:HeightOfPlane >> 1 mipmapped:0];
    setTextureDescriptorOptions(v12, self->_outputProtectionOptions);
    setTextureDescriptorOptions(v26, self->_outputProtectionOptions);
    v28 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:buffer plane:0];
    v29 = self->_outputTexture[0];
    self->_outputTexture[0] = v28;

    v30 = self->_outputTexture[1];
    self->_outputTexture[1] = 0;

    v31 = self->_outputTexture[2];
    self->_outputTexture[2] = 0;

    v32 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v26 iosurface:buffer plane:1];
    outputTextureUV = self->_outputTextureUV;
    self->_outputTextureUV = v32;

    goto LABEL_25;
  }

  if (PixelFormat == 1919365992)
  {
    v14 = 25;
    if ((orientationCopy & 4) != 0)
    {
      v15 = WidthOfPlane;
    }

    else
    {
      v14 = 115;
      v15 = WidthOfPlane >> 2;
    }

    if (modeCopy)
    {
      v16 = 113;
    }

    else
    {
      v16 = v14;
    }

    if (modeCopy)
    {
      v17 = WidthOfPlane >> 2;
    }

    else
    {
      v17 = v15;
    }

    v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v16 width:v17 height:HeightOfPlane mipmapped:0];
    setTextureDescriptorOptions(v12, self->_outputProtectionOptions);
    v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:buffer plane:0];
    v19 = self->_outputTexture[0];
    self->_outputTexture[0] = v18;

    v20 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:buffer plane:1];
    v21 = self->_outputTexture[1];
    self->_outputTexture[1] = v20;

    v22 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:buffer plane:2];
    v23 = self->_outputTexture[2];
    self->_outputTexture[2] = v22;
    goto LABEL_24;
  }

  if (PixelFormat == 1999843442)
  {
    v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:555 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
    setTextureDescriptorOptions(v12, self->_outputProtectionOptions);
    v13 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:buffer plane:0];
    goto LABEL_23;
  }

  if (PixelFormat != 2021078128)
  {
    goto LABEL_26;
  }

  v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:524 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
  setTextureDescriptorOptions(v12, self->_outputProtectionOptions);
  v13 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v12 iosurface:buffer plane:0];
LABEL_23:
  v24 = self->_outputTexture[0];
  self->_outputTexture[0] = v13;

  v25 = self->_outputTexture[1];
  self->_outputTexture[1] = 0;

  v23 = self->_outputTexture[2];
  self->_outputTexture[2] = 0;
LABEL_24:

  v26 = self->_outputTextureUV;
  self->_outputTextureUV = 0;
LABEL_25:

  return -17000;
}

- (void)encodeSubsampleLumaHorizontalToCommandBuffer:(id)buffer
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  width = [(MTLTexture *)self->_blSubsampledTempTexture width];
  height = [(MTLTexture *)self->_blSubsampledTempTexture height];
  v7 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_horizontalHalfLumaKernel];
  [computeCommandEncoder setComputePipelineState:v7];

  [computeCommandEncoder setTexture:self->_blTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_blSubsampledTempTexture atIndex:1];
  v10[0] = (width + 15) >> 4;
  v10[1] = (height + 15) >> 4;
  v10[2] = 1;
  v8 = vdupq_n_s64(0x10uLL);
  v9 = 1;
  [computeCommandEncoder dispatchThreadgroups:v10 threadsPerThreadgroup:&v8];
  [computeCommandEncoder endEncoding];
}

- (void)encodeSubsampleLumaVerticalToCommandBuffer:(id)buffer
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  width = [(MTLTexture *)self->_blSubsampledTexture width];
  height = [(MTLTexture *)self->_blSubsampledTexture height];
  v7 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_verticalHalfLumaKernel];
  [computeCommandEncoder setComputePipelineState:v7];

  [computeCommandEncoder setTexture:self->_blSubsampledTempTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_blSubsampledTexture atIndex:1];
  v10[0] = (width + 15) >> 4;
  v10[1] = (height + 15) >> 4;
  v10[2] = 1;
  v8 = vdupq_n_s64(0x10uLL);
  v9 = 1;
  [computeCommandEncoder dispatchThreadgroups:v10 threadsPerThreadgroup:&v8];
  [computeCommandEncoder endEncoding];
}

- (void)encodeComposeLumaToCommandBuffer:(id)buffer
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  width = [(MTLTexture *)self->_blTexture width];
  height = [(MTLTexture *)self->_blTexture height];
  v7 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_composeLumaKernel];
  [computeCommandEncoder setComputePipelineState:v7];

  [computeCommandEncoder setTexture:self->_blTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_elTexture atIndex:1];
  [computeCommandEncoder setTexture:self->_outputTexture[0] atIndex:2];
  [computeCommandEncoder setBuffer:self->_currentPolynomialTable offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_dequantizelTable offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_config offset:0 atIndex:2];
  v10[0] = ((width >> 2) + 15) >> 4;
  v10[1] = (height + 15) >> 4;
  v10[2] = 1;
  v8 = vdupq_n_s64(0x10uLL);
  v9 = 1;
  [computeCommandEncoder dispatchThreadgroups:v10 threadsPerThreadgroup:&v8];
  [computeCommandEncoder endEncoding];
}

- (void)encodeComposeChromaToCommandBuffer:(id)buffer withMetaData:(id *)data
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  width = [(MTLTexture *)self->_blTextureUV width];
  height = [(MTLTexture *)self->_blTextureUV height];
  var0 = data->var0;
  v10 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_composeChromaKernel];
  [computeCommandEncoder setComputePipelineState:v10];

  [computeCommandEncoder setTexture:self->_blTextureUV atIndex:0];
  v11 = 9584;
  if (self->_preSubsampleLumaForMMR)
  {
    v11 = 9608;
  }

  [computeCommandEncoder setTexture:*(&self->super.isa + v11) atIndex:1];
  [computeCommandEncoder setTexture:self->_elTextureUV atIndex:2];
  [computeCommandEncoder setTexture:self->_outputTextureUV atIndex:3];
  [computeCommandEncoder setBuffer:self->_currentPolynomialTable offset:2 * (1 << (var0 + 8)) atIndex:0];
  [computeCommandEncoder setBuffer:self->_dequantizelTable offset:4 * (1 << (var0 + 8)) atIndex:1];
  [computeCommandEncoder setBuffer:self->_config offset:0 atIndex:2];
  v14[0] = (width + 15) >> 4;
  v14[1] = (height + 15) >> 4;
  v14[2] = 1;
  v12 = vdupq_n_s64(0x10uLL);
  v13 = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:&v12];
  [computeCommandEncoder endEncoding];
}

- (void)encodeComposeCombinedToCommandBuffer:(id)buffer
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  width = [(MTLTexture *)self->_blTexture width];
  height = [(MTLTexture *)self->_blTexture height];
  v7 = [(DolbyVisionComposer *)self getComputePipeLineStateForShader:self->_composeYUVKernel];
  [computeCommandEncoder setComputePipelineState:v7];

  [computeCommandEncoder setTexture:self->_blTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_blTextureUV atIndex:1];
  [computeCommandEncoder setTexture:self->_elTexture atIndex:2];
  [computeCommandEncoder setTexture:self->_elTextureUV atIndex:3];
  [computeCommandEncoder setTexture:self->_outputTexture[0] atIndex:4];
  [computeCommandEncoder setBuffer:self->_currentPolynomialTable offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_dequantizelTable offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_config offset:0 atIndex:2];
  v10[0] = (width + 15) >> 4;
  v10[1] = (height + 15) >> 4;
  v10[2] = 1;
  v8 = vdupq_n_s64(0x10uLL);
  v9 = 1;
  [computeCommandEncoder dispatchThreadgroups:v10 threadsPerThreadgroup:&v8];
  [computeCommandEncoder endEncoding];
}

- (void)setupComposerKernelConfiguration:(id *)configuration fromMetaData:(id *)data
{
  v6 = &self->_timeArray[107];
  var2 = data->var2;
  configuration->var0 = var2;
  var32 = data->var32;
  configuration->var1 = var32 != 0;
  var11 = data->var11;
  configuration->var2 = data->var14[0][0][1][0];
  configuration->var3 = var11;
  configuration->var4 = ~(-1 << var2);
  configuration->var5 = 1 << (15 - var2);
  configuration->var6 = 16 - var2;
  v10 = data->var23[0][0][1][0];
  if (v10 <= data->var23[0][0][2][0])
  {
    v10 = data->var23[0][0][2][0];
  }

  configuration->var9 = v10;
  configuration->var10 = 1.0 / (1 << (var11 + 4));
  configuration->var7 = !self->_preSubsampleLumaForMMR;
  if (v10)
  {
    createMMRCoefficients(data, configuration);
    var32 = data->var32;
  }

  if (!var32)
  {
    setupNlqParameters(data, configuration);
  }

  configuration->var8 = *(v6 + 2763);
}

- (void)createHLG2LTable
{
  self->_hlg2LTableSize = 4096;
  v3 = malloc_type_malloc(0x4000uLL, 0x100004052888210uLL);
  setHLG2LBuffer(v3, self->_hlg2LTableSize);
  v4 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v4 setTextureType:0];
  [v4 setHeight:1];
  [v4 setWidth:self->_hlg2LTableSize];
  [v4 setDepth:1];
  [v4 setPixelFormat:55];
  [v4 setArrayLength:1];
  [v4 setMipmapLevelCount:1];
  v5 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v4];
  hlg2LTable = self->_hlg2LTable;
  self->_hlg2LTable = v5;

  v7 = self->_hlg2LTable;
  hlg2LTableSize = self->_hlg2LTableSize;
  memset(v9, 0, 24);
  v9[3] = hlg2LTableSize;
  v10 = vdupq_n_s64(1uLL);
  [(MTLTexture *)v7 replaceRegion:v9 mipmapLevel:0 slice:0 withBytes:v3 bytesPerRow:0x4000 bytesPerImage:0];
  free(v3);
}

- (void)createPQ2LTable
{
  self->_pq2LTableSize = 4096;
  v3 = malloc_type_malloc(0x2000uLL, 0x1000040BDFB0063uLL);
  setPQ2LBufferFP16(v3, self->_pq2LTableSize);
  v4 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v4 setTextureType:0];
  [v4 setHeight:1];
  [v4 setWidth:self->_pq2LTableSize];
  [v4 setDepth:1];
  [v4 setPixelFormat:25];
  [v4 setArrayLength:1];
  [v4 setMipmapLevelCount:1];
  v5 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v4];
  pq2LTable = self->_pq2LTable;
  self->_pq2LTable = v5;

  v7 = self->_pq2LTable;
  pq2LTableSize = self->_pq2LTableSize;
  memset(v9, 0, 24);
  v9[3] = pq2LTableSize;
  v10 = vdupq_n_s64(1uLL);
  [(MTLTexture *)v7 replaceRegion:v9 mipmapLevel:0 slice:0 withBytes:v3 bytesPerRow:0x2000 bytesPerImage:0];
  free(v3);
}

- (void)createL2PQTable
{
  self->_l2PQTableSize = 1024;
  v3 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  updateL2PQTable(v3, self->_l2PQTableSize);
  v4 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v4 setTextureType:0];
  [v4 setHeight:1];
  [v4 setWidth:self->_l2PQTableSize];
  [v4 setDepth:1];
  [v4 setPixelFormat:55];
  [v4 setArrayLength:1];
  [v4 setMipmapLevelCount:1];
  v5 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v4];
  xferToLinear = self->_xferToLinear;
  self->_xferToLinear = v5;

  v7 = self->_xferToLinear;
  l2PQTableSize = self->_l2PQTableSize;
  memset(v9, 0, 24);
  v9[3] = l2PQTableSize;
  v10 = vdupq_n_s64(1uLL);
  [(MTLTexture *)v7 replaceRegion:v9 mipmapLevel:0 slice:0 withBytes:v3 bytesPerRow:4096 bytesPerImage:0];
  free(v3);
}

- (void)createScalingTable_YUVTM
{
  v5 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v5 setTextureType:0];
  [v5 setHeight:1];
  [v5 setWidth:1024];
  [v5 setDepth:1];
  [v5 setPixelFormat:105];
  [v5 setArrayLength:1];
  [v5 setMipmapLevelCount:1];
  v3 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v5];
  yuvScalingFactorTable = self->_yuvScalingFactorTable;
  self->_yuvScalingFactorTable = v3;
}

- (void)fillInScalingTable_YUVTM:(id *)m target_White:(float)white target_Black:(float)black source_White:(float)source_White source_Black:(float)source_Black satBoost:(float)boost scalingFactor:(BOOL)factor
{
  v14 = &self->_timeArray[107];
  if (vabds_f32(self->_cached_target_white, white) > 0.0000001 || vabds_f32(self->_cached_target_black, black) > 0.0000001 || vabds_f32(self->_cached_source_white, source_White) > 0.0000001 || vabds_f32(self->_cached_source_black, source_Black) > 0.0000001)
  {
    GetToneMap_YUV_TM(self->_yuvScalingFactorTableBuffer, 0x400uLL, factor, 0, white, black, source_White, source_Black, boost);
    v14[193] = white;
    v14[194] = black;
    v14[195] = source_White;
    v14[196] = source_Black;
  }

  yuvScalingFactorTable = self->_yuvScalingFactorTable;
  memset(v16, 0, sizeof(v16));
  v17 = xmmword_2508CE5F0;
  v18 = 1;
  [(MTLTexture *)yuvScalingFactorTable replaceRegion:v16 mipmapLevel:0 slice:0 withBytes:self->_yuvScalingFactorTableBuffer bytesPerRow:0x2000 bytesPerImage:0];
}

- (void)hdr10_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam
{
  mCopy = m;
  if ([(DolbyVisionComposer *)self hdr10_tm_configChanged:param HDRControl:control EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam])
  {
    [(DolbyVisionComposer *)self hdr10_tm_createLUTFromDMConfig:config TMParam:param TMParam:mParam EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam HDRControl:control DM:mCopy];
    [(DolbyVisionComposer *)self hdr10_tm_updateLUT];
    [(DolbyVisionComposer *)self hdr10_tm_reserveConfig:param HDRControl:control EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam];
  }
}

- (BOOL)hdr10_tm_configChanged:(_HDR10TMParam *)changed HDRControl:(id *)control EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x39u, 0))
    {
      return 1;
    }
  }

  if (control->var0 != self->_prev.contentType)
  {
    return 1;
  }

  return hasHdr10TonemapConfigChanged(&self->_prev.tm, changed, param, adaptationParam);
}

- (void)hdr10_tm_reserveConfig:(_HDR10TMParam *)config HDRControl:(id *)control EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam
{
  self->_prev.contentType = control->var0;
  memcpy(&self->_prev.tm.tmParam, config, sizeof(self->_prev.tm.tmParam));
  v10 = *&param->Xs[3];
  v9 = *&param->Ys[3];
  *&self->_prev.tm.edrAdaptationParam.on = *&param->on;
  *&self->_prev.tm.edrAdaptationParam.Xs[3] = v10;
  *&self->_prev.tm.edrAdaptationParam.Ys[3] = v9;
  v11 = *&param->splCs[1][2];
  v12 = *&param->splCs[2][2];
  v13 = *&param->splCs[0][2];
  *&self->_prev.tm.edrAdaptationParam.Ms[3] = *&param->Ms[3];
  *&self->_prev.tm.edrAdaptationParam.splCs[2][2] = v12;
  *&self->_prev.tm.edrAdaptationParam.splCs[1][2] = v11;
  *&self->_prev.tm.edrAdaptationParam.splCs[0][2] = v13;
  v14 = *&param->polyCs[2][2];
  v15 = *&param->linCs[1][0];
  v16 = *&param->polyCs[1][2];
  *&self->_prev.tm.edrAdaptationParam.polyCs[0][2] = *&param->polyCs[0][2];
  *&self->_prev.tm.edrAdaptationParam.linCs[1][0] = v15;
  *&self->_prev.tm.edrAdaptationParam.polyCs[2][2] = v14;
  *&self->_prev.tm.edrAdaptationParam.polyCs[1][2] = v16;
  v18 = *&param->RWTMO_b;
  v17 = *&param->RWTMO_p2x;
  v19 = *&param->RWTMO_ExtensionWeight;
  *&self->_prev.tm.edrAdaptationParam.RWTMO_tgtRefWtNits = *&param->RWTMO_tgtRefWtNits;
  *&self->_prev.tm.edrAdaptationParam.RWTMO_ExtensionWeight = v19;
  *&self->_prev.tm.edrAdaptationParam.RWTMO_p2x = v17;
  *&self->_prev.tm.edrAdaptationParam.RWTMO_b = v18;
  *&self->_prev.tm.ambAdaptationParam.on = *&adaptationParam->on;
  v20 = *adaptationParam->YsC;
  v21 = *&adaptationParam->MsC[1];
  v22 = *&adaptationParam->splCs[0][3];
  *&self->_prev.tm.ambAdaptationParam.withLinearExtension = *&adaptationParam->withLinearExtension;
  *&self->_prev.tm.ambAdaptationParam.splCs[0][3] = v22;
  *self->_prev.tm.ambAdaptationParam.YsC = v20;
  *&self->_prev.tm.ambAdaptationParam.MsC[1] = v21;
  v23 = *&adaptationParam->splCs[1][3];
  v24 = *&adaptationParam->polyCs[0][3];
  v25 = *&adaptationParam->polyCs[1][3];
  *&self->_prev.tm.ambAdaptationParam.linCs[1][1] = *&adaptationParam->linCs[1][1];
  *&self->_prev.tm.ambAdaptationParam.polyCs[0][3] = v24;
  *&self->_prev.tm.ambAdaptationParam.polyCs[1][3] = v25;
  *&self->_prev.tm.ambAdaptationParam.splCs[1][3] = v23;
}

- (void)hdr10_tm_createLUTFromDMConfig:(id *)config TMParam:(_HDR10TMParam *)param TMParam:(_HDR10TMParam *)mParam EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam HDRControl:(id *)control DM:(id)m
{
  getDolbyVisionDM4 = [m getDolbyVisionDM4];
  hdr10_setScalingFactorTableS_C(self->_scalingFactorTableBuffer, 0x400uLL, param, adaptationParam, ambAdaptationParam, config, control, getDolbyVisionDM4);
  if (adaptationParam->RWTMO_v2_on && GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0xB0u, 0) == 1))
  {
    bzero(self->_lumaMixFactorTableBuffer, 0x800uLL);
  }

  else
  {
    hdr10_setLumaMixFactorTableS_L(self->_lumaMixFactorTableBuffer, 0x200uLL, param);
  }
}

- (void)hdr10_tm_updateLUT
{
  v3 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v3 setTextureType:0];
  [v3 setHeight:1];
  [v3 setWidth:1024];
  [v3 setDepth:1];
  [v3 setPixelFormat:55];
  [v3 setArrayLength:1];
  [v3 setMipmapLevelCount:1];
  v4 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v3];
  scalingFactorTable = self->_scalingFactorTable;
  self->_scalingFactorTable = v4;

  v6 = self->_scalingFactorTable;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = xmmword_2508CE5F0;
  v15 = 1;
  [(MTLTexture *)v6 replaceRegion:&v11 mipmapLevel:0 slice:0 withBytes:self->_scalingFactorTableBuffer bytesPerRow:4096 bytesPerImage:0];
  v7 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v7 setTextureType:0];
  [v7 setHeight:1];
  [v7 setWidth:512];
  [v7 setDepth:1];
  [v7 setPixelFormat:55];
  [v7 setArrayLength:1];
  [v7 setMipmapLevelCount:1];
  v8 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v7];
  lumaMixFactorTable = self->_lumaMixFactorTable;
  self->_lumaMixFactorTable = v8;

  v10 = self->_lumaMixFactorTable;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = xmmword_2508CEC60;
  v15 = 1;
  [(MTLTexture *)v10 replaceRegion:&v11 mipmapLevel:0 slice:0 withBytes:self->_lumaMixFactorTableBuffer bytesPerRow:2048 bytesPerImage:0];
}

- (void)hlg_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)mode
{
  mCopy = m;
  if ([(DolbyVisionComposer *)self hlg_tm_configChanged:config HDRControl:control TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam])
  {
    [(DolbyVisionComposer *)self hlg_tm_createLUTFromDMConfig:config DM:mCopy TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam TMMode:mode];
    [(DolbyVisionComposer *)self hlg_tm_updateLUT];
    [(DolbyVisionComposer *)self hlg_tm_reserveConfig:config HDRControl:control TMParam:param EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam];
  }
}

- (BOOL)hlg_tm_configChanged:(id *)changed HDRControl:(id *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam
{
  if (GetConfig())
  {
    Config = GetConfig();
    if (*HDRConfig::GetConfigEntryValue(Config, 0x39u, 0))
    {
      return 1;
    }
  }

  if (control->var0 != self->_prev.contentType)
  {
    return 1;
  }

  return hasHlgTonemapConfigChanged(&self->_prev.tm, &changed->var0, param, adaptationParam, ambAdaptationParam);
}

- (void)hlg_tm_reserveConfig:(id *)config HDRControl:(id *)control TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam
{
  self->_prev.contentType = control->var0;
  self->_prev.tm.ambientnits = *&config->var68;
  self->_prev.tm.maxedr = config->var53;
  self->_prev.tm.maxpq = config->var55.gain;
  self->_prev.tm.var0.dovi.slope = config->var67;
  applyArtisticOOTF = param->applyArtisticOOTF;
  self->_prev.tm.var0.hlg.applyArtisticOOTF = applyArtisticOOTF;
  if (applyArtisticOOTF)
  {
    memcpy(&self->_prev.tm.tmParam, &param->artisticOOTFParam, sizeof(self->_prev.tm.tmParam));
    v12 = *&adaptationParam->Xs[3];
    v11 = *&adaptationParam->Ys[3];
    *&self->_prev.tm.edrAdaptationParam.on = *&adaptationParam->on;
    *&self->_prev.tm.edrAdaptationParam.Xs[3] = v12;
    *&self->_prev.tm.edrAdaptationParam.Ys[3] = v11;
    v13 = *&adaptationParam->splCs[1][2];
    v14 = *&adaptationParam->splCs[2][2];
    v15 = *&adaptationParam->splCs[0][2];
    *&self->_prev.tm.edrAdaptationParam.Ms[3] = *&adaptationParam->Ms[3];
    *&self->_prev.tm.edrAdaptationParam.splCs[2][2] = v14;
    *&self->_prev.tm.edrAdaptationParam.splCs[1][2] = v13;
    *&self->_prev.tm.edrAdaptationParam.splCs[0][2] = v15;
    v16 = *&adaptationParam->polyCs[2][2];
    v17 = *&adaptationParam->linCs[1][0];
    v18 = *&adaptationParam->polyCs[1][2];
    *&self->_prev.tm.edrAdaptationParam.polyCs[0][2] = *&adaptationParam->polyCs[0][2];
    *&self->_prev.tm.edrAdaptationParam.linCs[1][0] = v17;
    *&self->_prev.tm.edrAdaptationParam.polyCs[2][2] = v16;
    *&self->_prev.tm.edrAdaptationParam.polyCs[1][2] = v18;
    v20 = *&adaptationParam->RWTMO_b;
    v19 = *&adaptationParam->RWTMO_p2x;
    v21 = *&adaptationParam->RWTMO_ExtensionWeight;
    *&self->_prev.tm.edrAdaptationParam.RWTMO_tgtRefWtNits = *&adaptationParam->RWTMO_tgtRefWtNits;
    *&self->_prev.tm.edrAdaptationParam.RWTMO_ExtensionWeight = v21;
    *&self->_prev.tm.edrAdaptationParam.RWTMO_p2x = v19;
    *&self->_prev.tm.edrAdaptationParam.RWTMO_b = v20;
    *&self->_prev.tm.ambAdaptationParam.on = *&ambAdaptationParam->on;
    v22 = *ambAdaptationParam->YsC;
    v23 = *&ambAdaptationParam->MsC[1];
    v24 = *&ambAdaptationParam->splCs[0][3];
    *&self->_prev.tm.ambAdaptationParam.withLinearExtension = *&ambAdaptationParam->withLinearExtension;
    *&self->_prev.tm.ambAdaptationParam.splCs[0][3] = v24;
    *self->_prev.tm.ambAdaptationParam.YsC = v22;
    *&self->_prev.tm.ambAdaptationParam.MsC[1] = v23;
    v25 = *&ambAdaptationParam->splCs[1][3];
    v26 = *&ambAdaptationParam->polyCs[0][3];
    v27 = *&ambAdaptationParam->polyCs[1][3];
    *&self->_prev.tm.ambAdaptationParam.linCs[1][1] = *&ambAdaptationParam->linCs[1][1];
    *&self->_prev.tm.ambAdaptationParam.polyCs[0][3] = v26;
    *&self->_prev.tm.ambAdaptationParam.polyCs[1][3] = v27;
    *&self->_prev.tm.ambAdaptationParam.splCs[1][3] = v25;
  }
}

- (void)getTmLutInput:(unint64_t)input lutInput:(float *)lutInput
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

- (void)getTmLutInput_C:(unint64_t)c lutInput:(float *)input
{
  if (c)
  {
    v4 = 0;
    do
    {
      input[v4] = v4 / (c - 1);
      ++v4;
    }

    while (c > v4);
  }
}

- (void)hlg_tm_createLUTFromDMConfig:(id *)config DM:(id)m TMParam:(_HLGTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam TMMode:(int)mode
{
  getDolbyVisionDM4 = [m getDolbyVisionDM4];
  v14 = malloc_type_calloc(0x400uLL, 4uLL, 0x100004052888210uLL);
  if (v14)
  {
    if (mode == -1)
    {
      [(DolbyVisionComposer *)self getTmLutInput:1024 lutInput:v14];
      hlg_setScalingFactorTable(self->_scalingFactorTableBuffer, v14, 0x400uLL, config, param, adaptationParam, ambAdaptationParam, -1, getDolbyVisionDM4);
    }

    else
    {
      [(DolbyVisionComposer *)self getTmLutInput_C:1024 lutInput:v14];
      hlg_setScalingFactorTable_C(self->_scalingFactorTableBuffer, v14, 0x400uLL, config, param, adaptationParam, ambAdaptationParam, mode, getDolbyVisionDM4);
    }

    free(v14);
  }
}

- (void)hlg_tm_updateLUT
{
  v3 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v3 setTextureType:0];
  [v3 setHeight:1];
  [v3 setWidth:1024];
  [v3 setDepth:1];
  [v3 setPixelFormat:55];
  [v3 setArrayLength:1];
  [v3 setMipmapLevelCount:1];
  v4 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v3];
  scalingFactorTable = self->_scalingFactorTable;
  self->_scalingFactorTable = v4;

  v6 = self->_scalingFactorTable;
  memset(v7, 0, sizeof(v7));
  v8 = xmmword_2508CE5F0;
  v9 = 1;
  [(MTLTexture *)v6 replaceRegion:v7 mipmapLevel:0 slice:0 withBytes:self->_scalingFactorTableBuffer bytesPerRow:4096 bytesPerImage:0];
}

- (void)dovi_createLUTFromDMConfig:(id *)config DM:(id)m HDRControl:(id *)control TMParam:(_DoViTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam HlgOOTFCombined:(BOOL)combined HlgOOTFOnly:(BOOL)self0 IsDoVi84:(BOOL)self1 tcCtrl:(ToneCurve_Control *)self2
{
  mCopy = m;
  if ([DolbyVisionComposer dovi_tm_configChanged:"dovi_tm_configChanged:HDRControl:DM:EdrAdaptationParam:AmbAdaptationParam:tcCtrl:" HDRControl:config DM:control EdrAdaptationParam:? AmbAdaptationParam:? tcCtrl:?])
  {
    BYTE2(v18) = vi84;
    LOWORD(v18) = __PAIR16__(only, combined);
    [DolbyVisionComposer dovi_tm_createLUTFromDMConfig:"dovi_tm_createLUTFromDMConfig:HDRControl:DM:TMParam:EdrAdaptationParam:AmbAdaptationParam:HlgOOTFCombined:HlgOOTFOnly:IsDoVi84:tcCtrl:" HDRControl:config DM:control TMParam:mCopy EdrAdaptationParam:param AmbAdaptationParam:adaptationParam HlgOOTFCombined:ambAdaptationParam HlgOOTFOnly:v18 IsDoVi84:ctrl tcCtrl:?];
    [(DolbyVisionComposer *)self dovi_tm_updateLUT];
    [(DolbyVisionComposer *)self dovi_tm_reserveConfig:config HDRControl:control DM:mCopy EdrAdaptationParam:adaptationParam AmbAdaptationParam:ambAdaptationParam tcCtrl:ctrl];
  }
}

- (BOOL)dovi_tm_configChanged:(id *)changed HDRControl:(id *)control DM:(id)m EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam tcCtrl:(ToneCurve_Control *)ctrl
{
  mCopy = m;
  if (GetConfig() && (Config = GetConfig(), (*HDRConfig::GetConfigEntryValue(Config, 0x39u, 0) & 1) != 0) || control->var0 != self->_prev.contentType || [(DolbyVisionComposer *)self hasAMVEConfigChanged:&self->_prev.amve tcCtrl:ctrl])
  {
    v16 = 1;
  }

  else if (LODWORD(changed[1].var46) == 4)
  {
    getDolbyVisionDM4 = [mCopy getDolbyVisionDM4];
    v16 = [getDolbyVisionDM4 hasDM4TonemapConfigChanged:changed TonemapConfig:&self->_prev.tm TCControl:ctrl EdrAdaptationParam:param AmbAdaptationParam:adaptationParam];
  }

  else
  {
    v16 = hasDoviTonemapConfigChanged(&self->_prev.tm, changed, ctrl, 1, param, adaptationParam);
  }

  return v16;
}

- (void)dovi_tm_reserveConfig:(id *)config HDRControl:(id *)control DM:(id)m EdrAdaptationParam:(_EdrAdaptationParam *)param AmbAdaptationParam:(_AmbAdaptationParam *)adaptationParam tcCtrl:(ToneCurve_Control *)ctrl
{
  mCopy = m;
  self->_prev.contentType = control->var0;
  [(DolbyVisionComposer *)self updateAMVEConfig:&self->_prev.amve tcCtrl:ctrl];
  if (LODWORD(config[1].var46) == 4)
  {
    getDolbyVisionDM4 = [mCopy getDolbyVisionDM4];
    [getDolbyVisionDM4 updateDM4TonemapConfig:&self->_prev.tm DMConfig:config TCControl:ctrl EdrAdaptationParam:param AmbAdaptationParam:adaptationParam];
  }

  else
  {
    updateDoViTonemapConfig(&self->_prev.tm, config, ctrl, 1, &param->on, adaptationParam);
  }
}

- (void)dovi_tm_createLUTFromDMConfig:(id *)config HDRControl:(id *)control DM:(id)m TMParam:(_DoViTMParam *)param EdrAdaptationParam:(_EdrAdaptationParam *)adaptationParam AmbAdaptationParam:(_AmbAdaptationParam *)ambAdaptationParam HlgOOTFCombined:(BOOL)combined HlgOOTFOnly:(BOOL)self0 IsDoVi84:(BOOL)self1 tcCtrl:(ToneCurve_Control *)self2
{
  mCopy = m;
  v17 = malloc_type_calloc(0x400uLL, 4uLL, 0x100004052888210uLL);
  if (v17)
  {
    [(DolbyVisionComposer *)self getTmLutInput_C:1024 lutInput:v17];
    BYTE2(v18) = vi84;
    LOWORD(v18) = __PAIR16__(only, combined);
    [mCopy dovi_setScalingFactorTable:self->_scalingFactorTableBuffer lutInput:v17 tableSize:1024 config:config hdrCtrl:control tmParam:param edrAdaptationParam:adaptationParam ambAdaptationParam:ambAdaptationParam hlgOOTFCombined:v18 hlgOOTFOnly:ctrl isDoVi84:? tcCtrl:?];
    [mCopy dovi_setSat2FactorTable:self->_sat2FactorTableBuffer tableSize:512 config:config llDovi:0 applyDoVi84SatAdjustment:0];
    free(v17);
  }
}

- (void)dovi_tm_updateLUT
{
  v3 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v3 setTextureType:0];
  [v3 setHeight:1];
  [v3 setWidth:1024];
  [v3 setDepth:1];
  [v3 setPixelFormat:55];
  [v3 setArrayLength:1];
  [v3 setMipmapLevelCount:1];
  v4 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v3];
  scalingFactorTable = self->_scalingFactorTable;
  self->_scalingFactorTable = v4;

  v6 = self->_scalingFactorTable;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = xmmword_2508CE5F0;
  v15 = 1;
  [(MTLTexture *)v6 replaceRegion:&v11 mipmapLevel:0 slice:0 withBytes:self->_scalingFactorTableBuffer bytesPerRow:4096 bytesPerImage:0];
  v7 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v7 setTextureType:0];
  [v7 setHeight:1];
  [v7 setWidth:512];
  [v7 setDepth:1];
  [v7 setPixelFormat:105];
  [v7 setArrayLength:1];
  [v7 setMipmapLevelCount:1];
  v8 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v7];
  sat2FactorTable = self->_sat2FactorTable;
  self->_sat2FactorTable = v8;

  v10 = self->_sat2FactorTable;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = xmmword_2508CEC60;
  v15 = 1;
  [(MTLTexture *)v10 replaceRegion:&v11 mipmapLevel:0 slice:0 withBytes:self->_sat2FactorTableBuffer bytesPerRow:4096 bytesPerImage:0];
}

- (void)dovi_dm4_updateInterleavedLUT
{
  v3 = &self->_dm4_tLutIBuffer[1022];
  v4 = &self->_dm4_tLutIBuffer[511];
  v5 = -512;
  do
  {
    v3[1] = v4[2048];
    *v3 = *v4;
    v3[1025] = v4[2560];
    v3[1024] = v4[1024];
    v3 -= 2;
    --v4;
  }

  while (!__CFADD__(v5++, 1));
  v7 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v7 setTextureType:0];
  [v7 setHeight:1];
  [v7 setDepth:1];
  [v7 setWidth:512];
  [v7 setPixelFormat:105];
  [v7 setArrayLength:1];
  [v7 setMipmapLevelCount:1];
  v8 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v7];
  dm4_tLutI = self->_dm4_tLutI;
  self->_dm4_tLutI = v8;

  v10 = self->_dm4_tLutI;
  v14 = vdupq_n_s64(1uLL);
  -[MTLTexture replaceRegion:mipmapLevel:slice:withBytes:bytesPerRow:bytesPerImage:](v10, "replaceRegion:mipmapLevel:slice:withBytes:bytesPerRow:bytesPerImage:", &v13, 0, 0, self->_dm4_tLutIBuffer, 8 * [v7 width], 0);
  v11 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v7];
  dm4_tLutS = self->_dm4_tLutS;
  self->_dm4_tLutS = v11;

  -[MTLTexture replaceRegion:mipmapLevel:slice:withBytes:bytesPerRow:bytesPerImage:](self->_dm4_tLutS, "replaceRegion:mipmapLevel:slice:withBytes:bytesPerRow:bytesPerImage:", &v13, 0, 0, self->_dm4_tLutSBuffer, 8 * [v7 width], 0);
}

- (void)createLUTFromDMConfig:(id *)config DM:(id)m TCControl:(ToneCurve_Control *)control HDRControl:(id *)rControl
{
  mCopy = m;
  processingType = control->tmData.processingType;
  p_ambAdaptationParam = &control->ambAdaptationParam;
  v17 = mCopy;
  if (processingType == 2)
  {
    LODWORD(v16) = control->tmData.hlgTmMode;
    [(DolbyVisionComposer *)self hlg_createLUTFromDMConfig:config DM:mCopy HDRControl:rControl TMParam:&control->hlgTmParam EdrAdaptationParam:&control->edrAdaptationParam AmbAdaptationParam:p_ambAdaptationParam TMMode:v16];
  }

  else if (processingType == 1)
  {
    [(DolbyVisionComposer *)self hdr10_createLUTFromDMConfig:config DM:mCopy HDRControl:rControl TMParam:&control->hdr10TmParam TMParam:&control->hdr10TmParamCano EdrAdaptationParam:&control->edrAdaptationParam AmbAdaptationParam:&control->ambAdaptationParam];
  }

  else
  {
    LOBYTE(v13) = 0;
    if (processingType == 4 && (config[1].var51 & 0x100) != 0 && !TMOOTFSeparate)
    {
      var10 = rControl->var10;
      v15 = var10 > 7;
      v13 = 0xB0u >> var10;
      if (v15)
      {
        LOBYTE(v13) = 0;
      }
    }

    BYTE2(v16) = processingType == 4;
    LOWORD(v16) = v13 & 1;
    [DolbyVisionComposer dovi_createLUTFromDMConfig:"dovi_createLUTFromDMConfig:DM:HDRControl:TMParam:EdrAdaptationParam:AmbAdaptationParam:HlgOOTFCombined:HlgOOTFOnly:IsDoVi84:tcCtrl:" DM:config HDRControl:mCopy TMParam:rControl EdrAdaptationParam:&control->doviTmParam AmbAdaptationParam:&control->edrAdaptationParam HlgOOTFCombined:p_ambAdaptationParam HlgOOTFOnly:v16 IsDoVi84:control tcCtrl:?];
  }
}

@end