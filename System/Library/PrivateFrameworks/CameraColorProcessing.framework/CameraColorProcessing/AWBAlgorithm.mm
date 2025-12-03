@interface AWBAlgorithm
+ (int)awbSensorCalibrationsLoad:(id)load idealColorCalibrations:(id)calibrations to:(id)to;
+ (int)calculateSTRBKeyFromWideCamera:(id *)camera moduleConfig:(id)config secondaryModuleConfig:(id)moduleConfig;
+ (int)calculateSTRBKeyFromWideCameraLatticeModel:(id *)model moduleConfig:(id)config absoluteColorCalibrations:(id)calibrations secondaryModuleConfig:(id)moduleConfig secondaryAbsoluteColorCalibrations:(id)colorCalibrations;
+ (int)doAWBConfigLoad:(id)load to:(id)to;
+ (int)encodeSetFileIDForModuleConfig:(id)config setFileID:(unsigned int *)d;
+ (int)getColorCalibrationsUsingIdealColorCalbrations:(id)calbrations absoluteColorCalibrations:(id)calibrations colorCalibrationsOut:(id *)out awbConfig:(id)config;
+ (int)getInternalAWBMetadataForMIWB:(id)b cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo;
+ (int)getInternalAWBMetadataForMIWB:(id)b cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo platformID:(int)d;
+ (int)populateSlaveConfigWithModuleConfigIfColorMatchingModelExistsInPrimaryAWBConfig:(id)config secondaryAWBConfig:(id)bConfig secondaryIdealColorCals:(id)cals secondaryAbsoluteColorCals:(id)colorCals secondarySetFileID:(unsigned int)d secondarySensorConfig:(SensorConfigAWBParams *)sensorConfig;
+ (int)translateAWBGainsToSecondaryPortType:(id)type cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo primaryRGain:(float)gain primaryBGain:(float)self0 secondaryChannelID:(unsigned int)self1 secondaryRGain:(float *)self2 secondaryBGain:(float *)self3;
+ (void)calculateNonComboGainsFromComboGains:(unsigned int)gains[3] awbAlgorithm:(CAWBAFEH14 *)algorithm gains:(unsigned int)a5[3];
- ($938B03310D06493B2963E5A84CB75A7E)awbComboGains;
- ($938B03310D06493B2963E5A84CB75A7E)awbComboGainsNormalized;
- ($938B03310D06493B2963E5A84CB75A7E)awbGains;
- (AWBAlgorithm)initWithAWBObject:(id)object;
- (AWBAlgorithm)initWithMetalContext:(id)context platformID:(int)d;
- (CGRect)tileStatsROIRect;
- (id).cxx_construct;
- (int)_calculateComboGainsAndNormalizedGainsFromAWBGains:(id)gains awbComboGains:(id)comboGains colorCalGains:(id)calGains;
- (int)_processSkyMask:(void *)mask skyMaskWidth:(int)width skyMaskHeight:(int)height cropRectFromSourceDict:(id)dict;
- (int)_updateHRGainDownRatioMetadata;
- (int)awbConfigLoad:(id)load to:(CAWBAFE *)to;
- (int)calculateEIT:(id)t result:(unint64_t *)result;
- (int)calculateInternalAWBMetadataForMIWB:(float)b bGain:(float)gain rSkinGain:(float)skinGain bSkinGain:(float)bSkinGain cct:(float)cct internalMetadata:(id)metadata;
- (int)configFaceMetadata:(id)metadata awbParams:(id)params;
- (int)configFallbackMetadata:(id)metadata;
- (int)configFlashRFCMetadata:(id)metadata cameraInfo:(id)info moduleConfig:(id)config;
- (int)configFlickerDetectionMetadata:(id)metadata moduleConfig:(id)config;
- (int)configPortTypeMetadata:(id)metadata;
- (int)configWithModuleConfig:(id)config metadata:(id)metadata cameraInfo:(id)info awbParams:(id)params;
- (int)initTuningParameters:(id)parameters;
- (int)process;
- (int)translateAWBGainsToSecondaryChannelID:(unsigned int)d[3] secondaryChannelID:(unsigned int)iD secondaryConfig:(SensorConfigAWBParams *)config secondaryAWBParams:(sSlaveCameraAWBParam *)params;
- (uint64_t)_updateHRGainDownRatioMetadata;
- (void)dealloc;
@end

@implementation AWBAlgorithm

- (AWBAlgorithm)initWithMetalContext:(id)context platformID:(int)d
{
  contextCopy = context;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v12.receiver = self;
  v12.super_class = AWBAlgorithm;
  v8 = [(AWBAlgorithm *)&v12 init];
  v9 = v8;
  if (!v8)
  {
    FigDebugAssert3();
    goto LABEL_13;
  }

  if (contextCopy)
  {
    objc_storeStrong(&v8->_metalContext, context);
    if (![(AWBAlgorithm *)v9 _createShaders])
    {
      operator new();
    }

    FigDebugAssert3();
  }

  else
  {
    FigDebugAssert3();
    if (!FigSignalErrorAtGM())
    {
      goto LABEL_13;
    }
  }

  FigDebugAssert3();
  if (dword_1EDD78228)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (AWBAlgorithm)initWithAWBObject:(id)object
{
  objectCopy = object;
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v10.receiver = self;
  v10.super_class = AWBAlgorithm;
  v6 = [(AWBAlgorithm *)&v10 init];
  if (v6 && (v7 = [objectCopy pointerValue], (v6->_AWBAlgorithmObj = v7) != 0))
  {
    v8 = v6;
  }

  else
  {
    FigDebugAssert3();
    if (*v5 == 1)
    {
      kdebug_trace();
    }

    v8 = 0;
  }

  return v8;
}

- (int)configWithModuleConfig:(id)config metadata:(id)metadata cameraInfo:(id)info awbParams:(id)params
{
  configCopy = config;
  metadataCopy = metadata;
  infoCopy = info;
  paramsCopy = params;
  v87 = configCopy;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (![metadataCopy count])
  {
    v80 = v85;
    LODWORD(v79) = 0;
    FigDebugAssert3();
LABEL_43:
    v34 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  bzero(&self->_sMetaData, 0x1310uLL);
  self->_awbGains.bGain = 0;
  *&self->_awbComboGains.rGain = 0u;
  *&self->_awbComboGainsNormalized.gGain = 0u;
  digitalFlash = [paramsCopy digitalFlash];
  digitalFlash = self->_digitalFlash;
  self->_digitalFlash = digitalFlash;

  *&self->_numTilesX = 0x2000000020;
  v107[0] = 0;
  [metadataCopy cmi_floatValueForKey:*MEMORY[0x1E6991090] defaultValue:v107 found:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0) | 0x2000000000)];
  self->_sMetaData.ae.luxLevel = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v13 doubleValue];
  *&v14 = v14;
  self->_sMetaData.ae.luxLevel = *&v14;

  if ((v107[0] & 1) == 0 || (self->_sMetaData.ae.gainDigi.v16 = [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990CD8] defaultValue:1 found:v107], (v107[0] & 1) == 0) || (self->_sMetaData.ae.gainAnal.v16 = objc_msgSend(metadataCopy, "cmi_intValueForKey:defaultValue:found:", *MEMORY[0x1E6990CC8], 1, v107), (v107[0] & 1) == 0) || (LODWORD(v15) = 1.0, objc_msgSend(metadataCopy, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6990CD0], v107, v15), (v107[0] & 1) == 0) || (self->_sMetaData.ae.exposureTime = (v16 * 1000000.0), self->_sMetaData.ae.gainDigiSensor.v16 = objc_msgSend(metadataCopy, "cmi_intValueForKey:defaultValue:found:", *MEMORY[0x1E6990CE0], 1, v107), (v107[0] & 1) == 0) || (LODWORD(v17) = 1.0, objc_msgSend(metadataCopy, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6990FB0], v107, v17), (v107[0] & 1) == 0) || (self->_sMetaData.frameRate = vcvts_n_u32_f32(v18, 8uLL), self->_sMetaData.flash.flashCaptureCount = objc_msgSend(metadataCopy, "cmi_BOOLValueForKey:defaultValue:found:", *MEMORY[0x1E6991028], 0, v107), (v107[0] & 1) == 0) || (LODWORD(v19) = 1.0, objc_msgSend(metadataCopy, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E69910B8], 0, v19), self->_sMetaData.ae.inverseBinningGainFactor = vcvts_n_s32_f32(v20, 8uLL), objc_msgSend(configCopy, "objectForKeyedSubscript:", @"Exposure"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectForKeyedSubscript:", @"LuxModel"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectForKeyedSubscript:", @"Scale"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v21, !v23) || (objc_msgSend(configCopy, "objectForKeyedSubscript:", @"Exposure"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectForKeyedSubscript:", @"LuxModel"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", @"Scale"), v26 = objc_claimAutoreleasedReturnValue(), self->_sMetaData.ae.luxCalcParams.scale = objc_msgSend(v26, "intValue"), v26, v25, v24, objc_msgSend(configCopy, "objectForKeyedSubscript:", @"Exposure"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "objectForKeyedSubscript:", @"LuxModel"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "objectForKeyedSubscript:", @"ScaleShift"), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v27, !v29))
  {
    v80 = v85;
    LODWORD(v79) = 0;
    FigDebugAssert3();
    goto LABEL_43;
  }

  v30 = [configCopy objectForKeyedSubscript:@"Exposure"];
  v31 = [v30 objectForKeyedSubscript:@"LuxModel"];
  v32 = [v31 objectForKeyedSubscript:@"ScaleShift"];
  self->_sMetaData.ae.luxCalcParams.scaleShift = [v32 intValue];

  [(AWBAlgorithm *)self calculateEIT:metadataCopy result:&self->_sMetaData.ae.currentEIT];
  *&self->_sMetaData.flash.flashStatusAE = 0x100000001;
  self->_sMetaData.flash.strobeStatus = 1;
  self->_sMetaData.flash.flashCaptureSequence = 0;
  *&self->_sMetaData.ae.aeAverage = 0;
  *&self->_sMetaData.masterCam = 257;
  self->_sMetaData.awb.isDefaultSetting = 1;
  self->_sMetaData.maxLSgainUnadjusted = 0x2000;
  self->_sMetaData.isReplay = 1;
  [(AWBAlgorithm *)self configPortTypeMetadata:metadataCopy];
  self->_sMetaData.ae.UBMisc.awbReflow.bGenerateReflowAWB = [(NSNumber *)self->_digitalFlash intValue]!= 0;
  if (((*(self->_AWBAlgorithmObj->var0 + 2))(self->_AWBAlgorithmObj, 1) & 1) == 0)
  {
    v80 = v85;
    LODWORD(v79) = 0;
    FigDebugAssert3();
    v34 = -1;
    goto LABEL_30;
  }

  v102 = [configCopy objectForKeyedSubscript:@"AutoWhiteBalance"];
  if (!v102)
  {
    goto LABEL_47;
  }

  v33 = [AWBAlgorithm awbConfigLoad:"awbConfigLoad:to:" to:?];
  v34 = v33;
  if (v33)
  {
    v80 = v85;
    LODWORD(v79) = v33;
    FigDebugAssert3();
    v66 = 0;
    v51 = 0;
    v92 = 0;
    v94 = 0;
    v97 = 0;
    v67 = 0;
    v65 = 6;
    goto LABEL_23;
  }

  v35 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6990C50]];
  v99 = v35;
  if (!v35)
  {
LABEL_47:
    v80 = v85;
    LODWORD(v79) = 0;
    FigDebugAssert3();
    v34 = FigSignalErrorAtGM();
    v65 = 6;
    v66 = 0;
    v51 = 0;
    v92 = 0;
    v94 = 0;
    v97 = 0;
    v67 = 0;
    goto LABEL_23;
  }

  v36 = *MEMORY[0x1E6990E48];
  v97 = [v35 objectForKeyedSubscript:*MEMORY[0x1E6990E48]];
  if (v97)
  {
    v37 = *MEMORY[0x1E6990E50];
    v94 = [v99 objectForKeyedSubscript:*MEMORY[0x1E6990E50]];
    if (v94)
    {
      v89 = *MEMORY[0x1E6990E40];
      v38 = [v97 objectForKeyedSubscript:?];
      [v38 floatValue];
      v40 = v39;

      v41 = *MEMORY[0x1E6990E38];
      v42 = [v97 objectForKeyedSubscript:*MEMORY[0x1E6990E38]];
      [v42 floatValue];
      v44 = v43;

      v45 = [v94 objectForKeyedSubscript:v89];
      [v45 floatValue];
      v47 = v46;

      v48 = [v94 objectForKeyedSubscript:v41];
      [v48 floatValue];
      v50 = v49;

      v92 = [v102 objectForKeyedSubscript:@"IdealColorCalibrations"];
      v51 = [v92 objectForKeyedSubscript:v36];
      if (v51)
      {
        v52 = [v92 objectForKeyedSubscript:v37];
        if (!v52)
        {
          v80 = v85;
          LODWORD(v79) = 0;
          FigDebugAssert3();
          v34 = FigSignalErrorAtGM();
          v65 = 6;
          configCopy = v87;
          v67 = v99;
          v66 = 0;
          goto LABEL_23;
        }

        v53 = [v51 objectForKeyedSubscript:v89];
        [v53 floatValue];
        v55 = v54;

        v56 = [v51 objectForKeyedSubscript:v41];
        [v56 floatValue];
        v58 = v57;

        v59 = [v52 objectForKeyedSubscript:v89];
        [v59 floatValue];
        v61 = v60;

        v62 = [v52 objectForKeyedSubscript:v41];
        [v62 floatValue];
        v64 = v63;

        CAWBAFE::SensorCalSet(self->_AWBAlgorithmObj, v40 * 16384.0, v44 * 16384.0, v47 * 16384.0, v50 * 16384.0, v55, v58, v61, v64);
        v65 = 0;
        v34 = 0;
        v66 = v52;
      }

      else
      {
        v80 = v85;
        LODWORD(v79) = 0;
        FigDebugAssert3();
        v34 = FigSignalErrorAtGM();
        v65 = 6;
        v66 = 0;
        v51 = 0;
      }
    }

    else
    {
      v80 = v85;
      LODWORD(v79) = 0;
      FigDebugAssert3();
      v34 = FigSignalErrorAtGM();
      v65 = 6;
      v66 = 0;
      v51 = 0;
      v92 = 0;
      v94 = 0;
    }
  }

  else
  {
    v80 = v85;
    LODWORD(v79) = 0;
    FigDebugAssert3();
    v34 = FigSignalErrorAtGM();
    v65 = 6;
    v66 = 0;
    v51 = 0;
    v92 = 0;
    v94 = 0;
    v97 = 0;
  }

  configCopy = v87;
  v67 = v99;
LABEL_23:

  if (v65 != 6)
  {
    CAWBAFE::SetDigitalFlashBehaviorMode(self->_AWBAlgorithmObj, [(NSNumber *)self->_digitalFlash intValue]);
    v68 = [(AWBAlgorithm *)self initTuningParameters:metadataCopy];
    v34 = v68;
    if (v68 || (v68 = [(AWBAlgorithm *)self configFallbackMetadata:metadataCopy], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFaceMetadata:metadataCopy awbParams:paramsCopy], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFlickerDetectionMetadata:metadataCopy moduleConfig:configCopy], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFlashRFCMetadata:metadataCopy cameraInfo:infoCopy moduleConfig:configCopy], (v34 = v68) != 0))
    {
      v80 = v85;
      LODWORD(v79) = v68;
      FigDebugAssert3();
    }
  }

LABEL_30:
  if (dword_1EDD78228)
  {
    v109 = 0;
    v108 = OS_LOG_TYPE_DEFAULT;
    v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v70 = v109;
    v105 = v69;
    if (os_log_type_enabled(v105, v108))
    {
      v71 = v70;
    }

    else
    {
      v71 = v70 & 0xFFFFFFFE;
    }

    if (v71)
    {
      imageTex = [paramsCopy imageTex];
      clippedTex = [paramsCopy clippedTex];
      lscGainsTex = [paramsCopy lscGainsTex];
      skinMask = [paramsCopy skinMask];
      skyMask = [paramsCopy skyMask];
      firstPixel = [paramsCopy firstPixel];
      [firstPixel intValue];
      cfaLayout = [paramsCopy cfaLayout];
      [cfaLayout intValue];
      downsizeFactor = [paramsCopy downsizeFactor];
      [downsizeFactor intValue];
      digitalFlash2 = [paramsCopy digitalFlash];
      [digitalFlash2 intValue];
      skipDemosaic = [paramsCopy skipDemosaic];
      [skipDemosaic intValue];
      lscMaxGain = [paramsCopy lscMaxGain];
      [lscMaxGain floatValue];
      faceAssistedBehaviorMode = [paramsCopy faceAssistedBehaviorMode];
      [faceAssistedBehaviorMode intValue];
      validRectInSensorReadoutCoords = [paramsCopy validRectInSensorReadoutCoords];
      v73 = stringFromCGRectDictionaryRepresentation(validRectInSensorReadoutCoords);
      validRectInBufferCoords = [paramsCopy validRectInBufferCoords];
      v75 = stringFromCGRectDictionaryRepresentation(validRectInBufferCoords);
      regionOfInterestRectInBufferCoords = [paramsCopy regionOfInterestRectInBufferCoords];
      v106 = stringFromCGRectDictionaryRepresentation(regionOfInterestRectInBufferCoords);
      v77 = v105;
      _os_log_send_and_compose_impl();

      configCopy = v87;
    }

    else
    {
      v77 = v105;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v34;
}

- (int)calculateEIT:(id)t result:(unint64_t *)result
{
  tCopy = t;
  v6 = tCopy;
  v18 = 0;
  if (tCopy && result)
  {
    v7 = [tCopy cmi_intValueForKey:*MEMORY[0x1E6991158] defaultValue:0 found:&v18];
    if (v18 & 1) != 0 && (v8 = v7, v9 = [v6 cmi_intValueForKey:*MEMORY[0x1E6990ED8] defaultValue:0 found:&v18], (v18) && (v10 = v9, objc_msgSend(v6, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6991170], &v18, 0.0), (v18) && (v12 = v11, objc_msgSend(v6, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6991160], &v18, 0.0), (v18) && (v14 = v13, objc_msgSend(v6, "cmi_doubleValueForKey:defaultValue:found:", *MEMORY[0x1E6990FC8], &v18, 0.0), (v18))
    {
      v16 = 0;
      *result = (v15 * 1000000.0 * (((vcvts_n_f32_s32(v8, 8uLL) * vcvts_n_f32_s32(v10, 8uLL)) * v12) * v14));
    }

    else
    {
      FigDebugAssert3();
      v16 = FigSignalErrorAtGM();
    }
  }

  else
  {
    FigDebugAssert3();
    v16 = 0;
  }

  return v16;
}

- (int)calculateInternalAWBMetadataForMIWB:(float)b bGain:(float)gain rSkinGain:(float)skinGain bSkinGain:(float)bSkinGain cct:(float)cct internalMetadata:(id)metadata
{
  metadataCopy = metadata;
  v39 = 0;
  v40 = 0;
  v38 = 0.0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 4096;
  v33 = 4096;
  CAWBAFE::GetSensorCalGain(self->_AWBAlgorithmObj, &v35);
  CAWBAFE::GetNewCSensorCalGains(self->_AWBAlgorithmObj, &v34, &v33, cct, &v35);
  LOWORD(v9) = v34;
  LOWORD(v8) = v33;
  CAWBAFE::ComputeHistWPFromChannelGains(self->_AWBAlgorithmObj, b, gain, &v40, &v40 + 1, v17, v18);
  LODWORD(v19) = 4.0;
  *&v20 = v9;
  v21 = ((skinGain * 4096.0) * 4.0) / v9;
  v22 = ((bSkinGain * 4096.0) * 4.0) / v8;
  CAWBAFE::ComputeHistWPFromChannelGains(self->_AWBAlgorithmObj, v21, v22, &v39, &v39 + 1, v19, v20);
  CAWBAFE::GetDaylightScore(self->_AWBAlgorithmObj, &v36);
  CAWBAFE::CalculateSkyWhitePoint(self->_AWBAlgorithmObj, cct, &v40, &v37);
  CAWBAFE::CalculateSkinWeightForSTF(self->_AWBAlgorithmObj, 0, &v40, &v39, &v36 + 1);
  if (metadataCopy)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInt:((v21 * 4096.0) + 0.5)];
    [metadataCopy setObject:v23 forKeyedSubscript:@"MIWBSkinNonComboRGain"];

    v24 = [MEMORY[0x1E696AD98] numberWithInt:((v22 * 4096.0) + 0.5)];
    [metadataCopy setObject:v24 forKeyedSubscript:@"MIWBSkinNonComboBGain"];

    v25 = [MEMORY[0x1E696AD98] numberWithInt:((*&v37 * 4096.0) + 0.5)];
    [metadataCopy setObject:v25 forKeyedSubscript:@"MIWBSkyRGain"];

    v26 = [MEMORY[0x1E696AD98] numberWithInt:((v38 * 4096.0) + 0.5)];
    [metadataCopy setObject:v26 forKeyedSubscript:@"MIWBSkyBGain"];

    LODWORD(v27) = HIDWORD(v36);
    v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
    [metadataCopy setObject:v28 forKeyedSubscript:@"MIWBSkinWeight"];

    LODWORD(v29) = v36;
    v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
    [metadataCopy setObject:v30 forKeyedSubscript:@"DaylightScore"];

    v31 = 0;
  }

  else
  {
    FigDebugAssert3();
    v31 = FigSignalErrorAtGM();
  }

  return v31;
}

- (int)translateAWBGainsToSecondaryChannelID:(unsigned int)d[3] secondaryChannelID:(unsigned int)iD secondaryConfig:(SensorConfigAWBParams *)config secondaryAWBParams:(sSlaveCameraAWBParam *)params
{
  AWBAlgorithmObj = self->_AWBAlgorithmObj;
  if (AWBAlgorithmObj)
  {
    iDCopy = iD;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v11 = getFigCapturePlatformIdentifierSymbolLoc(void)::ptr;
    v20 = getFigCapturePlatformIdentifierSymbolLoc(void)::ptr;
    if (!getFigCapturePlatformIdentifierSymbolLoc(void)::ptr)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___ZL40getFigCapturePlatformIdentifierSymbolLocv_block_invoke;
      v16[3] = &unk_1E833AC48;
      v16[4] = &v17;
      ___ZL40getFigCapturePlatformIdentifierSymbolLocv_block_invoke(v16);
      v11 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (v11)
    {
      v12 = v11() > 11;
      (*(AWBAlgorithmObj->var0 + 5))(AWBAlgorithmObj, d, iDCopy, config, params, 0, v12);
      return 0;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"FigCapturePlatformID soft_FigCapturePlatformIdentifier()"];
      [currentHandler handleFailureInFunction:v15 file:@"AWBAlgorithm.mm" lineNumber:52 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }

  else
  {
    [AWBAlgorithm translateAWBGainsToSecondaryChannelID:v16 secondaryChannelID:? secondaryConfig:? secondaryAWBParams:?];
    return v16[0];
  }

  return result;
}

- (int)initTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ([parametersCopy count])
  {
    v6 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
    if ([v6 isEqual:*MEMORY[0x1E6990C80]] & 1) != 0 || (objc_msgSend(v6, "isEqual:", *MEMORY[0x1E6990C90]) & 1) != 0 || (objc_msgSend(v6, "isEqual:", *MEMORY[0x1E6990C98]))
    {
      v7 = 0;
      v8 = &lowLightWPBlendingTuningTable_RFCDefault;
      v9 = 1;
      v10 = &ccmStrengthTuningTable_RFCDefault;
      v11 = 16;
      v12 = &wpStableZoneControlTable_RFCDefault;
LABEL_8:
      CAWBAFE::SetFDAWBEnable(self->_AWBAlgorithmObj, 1);
      CAWBAFE::SetSpatialCCMEnable(self->_AWBAlgorithmObj, v7);
      CAWBAFE::SetFlickerAWBEnable(self->_AWBAlgorithmObj, v9);
      CAWBAFE::SetUnlockWPEnable(self->_AWBAlgorithmObj, 1);
      CAWBAFE::SetLowLightWPBlending(self->_AWBAlgorithmObj, *v8, v8 + 1, v8 + 9);
      CAWBAFE::SetCCMStrengthTuningTable(self->_AWBAlgorithmObj, *v10, v10 + 1, v10 + 9);
      CAWBAFE::SetCCMDesatForSkinEnable(self->_AWBAlgorithmObj, v9, v11);
      CAWBAFE::SetFaceMaskDetectionEnable(self->_AWBAlgorithmObj, 1);
      CAWBAFE::SetWPStableZoneControl(self->_AWBAlgorithmObj, v7, v12);
      CAWBAFE::SetFDAWBVersion(self->_AWBAlgorithmObj, 1u);
      v13 = 0;
      goto LABEL_9;
    }

    if ([v6 isEqual:*MEMORY[0x1E6990CA0]] & 1) != 0 || (objc_msgSend(v6, "isEqual:", *MEMORY[0x1E6990CA8]))
    {
      v11 = 0;
      v9 = 0;
      v7 = 1;
      v8 = &lowLightWPBlendingTuningTable_FFCDefault;
      v10 = &ccmStrengthTuningTable_FFCDefault;
      v12 = &wpStableZoneControlTable_FFCDefault;
      goto LABEL_8;
    }

    FigDebugAssert3();
    v15 = FigSignalErrorAtGM();
  }

  else
  {
    FigDebugAssert3();
    v6 = 0;
    v15 = FigSignalErrorAtGM();
  }

  v13 = v15;
LABEL_9:
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v13;
}

- (int)configFaceMetadata:(id)metadata awbParams:(id)params
{
  metadataCopy = metadata;
  paramsCopy = params;
  memset(v135, 0, 44);
  bzero(__src, 0x5F0uLL);
  v113 = metadataCopy;
  dict = [paramsCopy validRectInBufferCoords];
  regionOfInterestRectInBufferCoords = [paramsCopy regionOfInterestRectInBufferCoords];
  faceAssistedBehaviorMode = [paramsCopy faceAssistedBehaviorMode];
  v7 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v7;
  v131.origin = rect.origin;
  v131.size = v7;
  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v130.a = *MEMORY[0x1E695EFD0];
  *&v130.c = v9;
  *&v130.tx = *(MEMORY[0x1E695EFD0] + 32);
  v10 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991108]];
  intValue = [v10 intValue];

  v12 = faceAssistedBehaviorMode;
  if (!faceAssistedBehaviorMode)
  {
    LODWORD(v88) = 0;
    FigDebugAssert3();
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{0, v88, v109}];
    FigSignalErrorAtGM();
  }

  v118 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "intValue")}];

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (![metadataCopy count])
  {
    FigDebugAssert3();
LABEL_91:
    v120 = 0;
    v85 = FigSignalErrorAtGM();
    v119 = 0;
    goto LABEL_75;
  }

  if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
  {
    FigDebugAssert3();
    goto LABEL_91;
  }

  if (!regionOfInterestRectInBufferCoords)
  {
    goto LABEL_11;
  }

  if (!CGRectMakeWithDictionaryRepresentation(regionOfInterestRectInBufferCoords, &v131))
  {
    FigDebugAssert3();
    goto LABEL_91;
  }

  if (CGRectContainsRect(rect, v131))
  {
    rect = v131;
  }

  else
  {
    v99 = v109;
    LODWORD(v88) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

LABEL_11:
  [(GeometryUtilities *)metadataCopy getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:rect.origin.x validBufferRect:rect.origin.y, rect.size.width, rect.size.height];
  v130 = v125;
  v13 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990FB8]];
  v119 = v13;
  if (v13 && ([v13 objectForKeyedSubscript:*MEMORY[0x1E6990E98]], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v112 = paramsCopy;
    v120 = v14;
    faceAssistedSkinGainsToMatch = [v14 objectForKeyedSubscript:*MEMORY[0x1E6990EC0]];
    if ([faceAssistedSkinGainsToMatch count])
    {
      v16 = [faceAssistedSkinGainsToMatch sortedArrayUsingComparator:&__block_literal_global_0];
      v17 = v16;
      if (v16 && [v16 count])
      {
        v18 = 0;
        v111 = *MEMORY[0x1E69910D8];
        if (intValue == 2324)
        {
          v19 = v8;
        }

        else
        {
          v19 = &v130;
        }

        v110 = *MEMORY[0x1E6990F58];
        v20 = *MEMORY[0x1E6990FF8];
        v21 = *MEMORY[0x1E6990FD8];
        v22 = &v134;
        while (1)
        {
          v23 = [v17 count];
          v24 = 10;
          if (v23 < 0xA)
          {
            v24 = v23;
          }

          if (v24 <= v18)
          {
            goto LABEL_36;
          }

          LOBYTE(v121) = 0;
          v25 = [v17 objectAtIndexedSubscript:v18];
          v26 = v25;
          if (!v25)
          {
            goto LABEL_84;
          }

          [v25 cmi_cgRectForKey:v111 defaultValue:&v121 found:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
          if ((v121 & 1) == 0)
          {
            v85 = 0;
LABEL_85:

            goto LABEL_87;
          }

          v31 = *&v19->c;
          *&v125.a = *&v19->a;
          *&v125.c = v31;
          *&v125.tx = *&v19->tx;
          v136 = CGRectApplyAffineTransform(*&v27, &v125);
          x = v136.origin.x;
          y = v136.origin.y;
          width = v136.size.width;
          height = v136.size.height;
          v36 = rect.size.width;
          v37 = rect.size.height;
          if ([(NSNumber *)self->_digitalFlash intValue])
          {
            v40 = 5000;
          }

          else
          {
            v40 = 50000;
          }

          v38 = width * v36;
          v39 = height * v37;
          if (v40 >= (v38 * v39))
          {

LABEL_36:
            DWORD2(v135[1]) = v18;
            goto LABEL_37;
          }

          v41 = [v26 objectForKeyedSubscript:v110];
          v42 = v41;
          if (!v41)
          {
LABEL_84:
            FigDebugAssert3();
            v85 = FigSignalErrorAtGM();
            goto LABEL_85;
          }

          *(v22 - 29) = (x * v36);
          *(v22 - 28) = (y * v37);
          *(v22 - 27) = (width * v36);
          *(v22 - 26) = (height * v37);
          [v41 floatValue];
          *(v22 - 7) = v43;

          v44 = [v26 objectForKeyedSubscript:v20];
          v45 = [v26 objectForKeyedSubscript:v21];
          if (!v44)
          {
            break;
          }

          unsignedIntValue = [v44 unsignedIntValue];
          *v22 = *v22 & 0xFFFFFC00 | unsignedIntValue & 0x3FF;
          DWORD1(v135[2]) = DWORD1(v135[2]) & 0xFFFFE007 | (8 * (unsignedIntValue & 0x3FF));
          if (!v45)
          {
            break;
          }

          unsignedIntValue2 = [v45 unsignedIntValue];
          *v22 = *v22 & 0xFFF003FF | ((unsignedIntValue2 & 0x3FF) << 10);
          v22 += 38;
          LODWORD(v135[2]) = 0;
          DWORD1(v135[2]) = DWORD1(v135[2]) & 0xFF801FFF | ((unsignedIntValue2 & 0x3FF) << 13);

          ++v18;
          metadataCopy = v113;
        }

        FigDebugAssert3();

        v85 = 0;
        metadataCopy = v113;
LABEL_87:

        goto LABEL_78;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_37:

    paramsCopy = v112;
  }

  else
  {
    v120 = 0;
  }

  *&v135[1] = vmovn_s64(vcvtq_u64_f64(rect.size));
  LODWORD(v135[0]) = 0;
  if (CAWBAFE::GetFDAWBEnable(self->_AWBAlgorithmObj))
  {
    if (DWORD2(v135[1]))
    {
      CAWBAFE::SetFaceData(self->_AWBAlgorithmObj, v135, __src);
    }

    AWBAlgorithmObj = self->_AWBAlgorithmObj;
    v49 = [(NSNumber *)self->_digitalFlash intValue]!= 1 && CAWBAFE::GetFDAWBVersion(self->_AWBAlgorithmObj) == 1;
    CAWBAFE::SetSemanticAWBEnable(AWBAlgorithmObj, v49);
    if (!DWORD2(v135[1]) && CAWBAFE::GetFDAWBVersion(self->_AWBAlgorithmObj) != 1)
    {
      CAWBAFE::SetFDAWBEnable(self->_AWBAlgorithmObj, 0);
    }
  }

  if ([v118 intValue] != 3)
  {
    v85 = 0;
LABEL_75:
    v86 = MEMORY[0x1E695FF58];
    goto LABEL_79;
  }

  v112 = paramsCopy;
  faceAssistedSkinGainsToMatch = [paramsCopy faceAssistedSkinGainsToMatch];
  if (!faceAssistedSkinGainsToMatch)
  {
    v99 = v109;
    LODWORD(v89) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  if (![faceAssistedSkinGainsToMatch count])
  {
    v100 = v109;
    LODWORD(v90) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v128 = 0;
  v129 = 0;
  v50 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"wpRgLogRatio", v90, v100}];

  if (!v50)
  {
    v101 = v109;
    LODWORD(v91) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v51 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"wpRgLogRatio", v91, v101}];
  [v51 floatValue];
  v53 = v52;
  *&v129 = v52;

  v54 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpBgLogRatio"];

  if (!v54)
  {
    v102 = v109;
    LODWORD(v92) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v55 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"wpBgLogRatio", v92, v102}];
  [v55 floatValue];
  v57 = v56;
  *(&v129 + 1) = v56;

  v58 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpSkinRgLogRatio"];

  if (!v58)
  {
    v103 = v109;
    LODWORD(v93) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v59 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"wpSkinRgLogRatio", v93, v103}];
  [v59 floatValue];
  v61 = v60;
  *&v128 = v60;

  v62 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"wpSkinBgLogRatio"];

  if (!v62)
  {
    v104 = v109;
    LODWORD(v94) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v63 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"wpSkinBgLogRatio", v94, v104}];
  [v63 floatValue];
  v65 = v64;
  *(&v128 + 1) = v64;

  v66 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"continuousFDTimes"];

  if (!v66)
  {
    v105 = v109;
    LODWORD(v95) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v67 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"continuousFDTimes", v95, v105}];
  intValue2 = [v67 intValue];

  v69 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"skinColorSampleNum"];

  if (!v69)
  {
    v106 = v109;
    LODWORD(v96) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v70 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"skinColorSampleNum", v96, v106}];
  intValue3 = [v70 intValue];

  v72 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"skinColorSampleVariance"];

  if (!v72)
  {
    v107 = v109;
    LODWORD(v97) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v73 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"skinColorSampleVariance", v97, v107}];
  [v73 floatValue];
  v75 = v74;

  v76 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:@"minDistSkinToWhiteMapping"];

  if (!v76)
  {
    v108 = v109;
    LODWORD(v98) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v77 = [faceAssistedSkinGainsToMatch objectForKeyedSubscript:{@"minDistSkinToWhiteMapping", v98, v108}];
  [v77 floatValue];
  v79 = v78;

  v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wbLogRatios=[%.3f, %.3f], wbSkinLogRatios=[%.3f, %.3f], continuousFDTimes=%d, skinColorSampleNum=%d, skinColorSampleVariance=%.3f, minDistSkinToWhiteMapping=%.3f", v53, v57, v61, v65, intValue2, intValue3, v75, v79];
  v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wblr=[%d, %d], wbslr=[%d, %d], cfdt=%d, scsn=%d, scsv=%d, mdstwm=%d", v53 != 0.0, v57 != 0.0, v61 != 0.0, v65 != 0.0, intValue2 != 0, intValue3 != 0, v75 != 0.0, v79 != 0.0];

  if (dword_1EDD78228)
  {
    v127 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v83 = v127;
    if (os_log_type_enabled(v82, type))
    {
      v84 = v83;
    }

    else
    {
      v84 = v83 & 0xFFFFFFFE;
    }

    if (v84)
    {
      v121 = 136315394;
      v122 = "[AWBAlgorithm configFaceMetadata:awbParams:]";
      v123 = 2112;
      v124 = v81;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CAWBAFE::SetFaceAssistedAWBResultsForMatchProvidedSkinGains(self->_AWBAlgorithmObj, &v129, &v128, intValue3, intValue2, v75, v79);

  v85 = 0;
LABEL_78:
  v86 = MEMORY[0x1E695FF58];

  paramsCopy = v112;
LABEL_79:
  if (*v86 == 1)
  {
    kdebug_trace();
  }

  return v85;
}

uint64_t __45__AWBAlgorithm_configFaceMetadata_awbParams___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 valueForKey:@"Rect"];
  if (!v6 || ([v5 valueForKey:@"Rect"], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    FigDebugAssert3();
    v7 = 0;
LABEL_11:
    v10 = 0;
    goto LABEL_8;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v6, &rect) || !CGRectMakeWithDictionaryRepresentation(v7, &v12))
  {
    FigDebugAssert3();
    goto LABEL_11;
  }

  v8 = rect.size.width * rect.size.height;
  v9 = v12.size.width * v12.size.height;
  if (v8 <= v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_8:

  return v10;
}

- (int)configFlickerDetectionMetadata:(id)metadata moduleConfig:(id)config
{
  metadataCopy = metadata;
  configCopy = config;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v41 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E69910A0]];
  v6 = [v41 objectForKeyedSubscript:*MEMORY[0x1E6991198]];
  v7 = v6;
  if (v6)
  {
    self->_flickerDetectionStatus = [v6 intValue];
  }

  if (configCopy)
  {
    v8 = [configCopy objectForKeyedSubscript:@"AutoWhiteBalance"];
    if (!v8)
    {
      FigDebugAssert3();
      v36 = FigSignalErrorAtGM();
      goto LABEL_29;
    }

    v38 = v8;
    v9 = [v8 objectForKeyedSubscript:@"DaylightProjectionPoint"];
    v10 = malloc_type_malloc(4 * [v9 count], 0x100004052888210uLL);
    if (!v10)
    {
      FigDebugAssert3();
      v36 = FigSignalErrorAtGM();

      goto LABEL_29;
    }

    for (i = 0; [v9 count] > i; ++i)
    {
      v12 = [v9 objectAtIndexedSubscript:i];
      v13 = [v12 objectForKeyedSubscript:@"X"];
      v14 = &v10[4 * i];
      *v14 = [v13 intValue];

      v15 = [v9 objectAtIndexedSubscript:i];
      v16 = [v15 objectForKeyedSubscript:@"Y"];
      *(v14 + 1) = [v16 intValue];
    }

    CAWBAFE::SetDaylightProjectionPoint(self->_AWBAlgorithmObj, [v9 count], v10);
    free(v10);
  }

  v17 = [v41 objectForKeyedSubscript:*MEMORY[0x1E6991190]];

  if (v17)
  {
    v18 = MEMORY[0x1E696AD98];
    [v17 doubleValue];
    v19 = [v18 numberWithDouble:?];

    [v19 doubleValue];
    self->_flickerDetectionIRRatio = vcvtd_n_s64_f64(v20, 0x10uLL);
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E6991180];
  v23 = [v41 objectForKeyedSubscript:*MEMORY[0x1E6991180]];
  v24 = [v23 objectAtIndex:0];
  v25 = *MEMORY[0x1E6991178];
  v26 = [v24 objectForKeyedSubscript:*MEMORY[0x1E6991178]];

  if (v26)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v26, "intValue")}];
    self->_flickerConfidence[0] = [v27 intValue];
  }

  v28 = [v41 objectForKeyedSubscript:v22];
  v29 = [v28 objectAtIndex:1];
  v30 = [v29 objectForKeyedSubscript:v25];

  if (v30)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v30, "intValue")}];
    self->_flickerConfidence[1] = [v31 intValue];
  }

  v32 = [v41 objectForKeyedSubscript:*MEMORY[0x1E6991188]];

  if (v32)
  {
    v33 = MEMORY[0x1E696AD98];
    [v32 doubleValue];
    v34 = [v33 numberWithDouble:?];
    [v34 doubleValue];
    *&v35 = v35;
    self->_photometerAWBDebug_externalLux = *&v35;
  }

  if (CAWBAFE::GetFlickerAWBEnable(self->_AWBAlgorithmObj))
  {
    v36 = 3;
    do
    {
      if (v36 != 3)
      {
        CAWBAFE::updatePhotometerDetectionOutput(self->_AWBAlgorithmObj, &self->_sMetaData.ae);
      }

      CAWBAFE::SetFlickerDetectionResult(self->_AWBAlgorithmObj, self->_flickerDetectionStatus, 0.0, 0.0, self->_photometerAWBDebug_externalLux, 0, self->_flickerDetectionIRRatio, self->_flickerConfidence[0], 0, self->_flickerConfidence[1], 1);
      --v36;
    }

    while (v36);
  }

  else
  {
    v36 = 0;
  }

  v7 = v32;
LABEL_29:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v36;
}

- (int)configFlashRFCMetadata:(id)metadata cameraInfo:(id)info moduleConfig:(id)config
{
  metadataCopy = metadata;
  infoCopy = info;
  configCopy = config;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v7 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991028]];
  bOOLValue = [v7 BOOLValue];

  if (!bOOLValue)
  {
    v96 = 0;
    v92 = 0;
    v93 = 0;
    goto LABEL_49;
  }

  self->_isNominalStrobe = 1;
  v92 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991120]];
  v9 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991128]];
  v93 = v9;
  if (v92)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [v92 floatValue];
    v12 = v11;
    [v93 floatValue];
    self->_flashRatio = 1.0 - (v12 / v13);
  }

  if (infoCopy)
  {
    v14 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69911A0]];
    v15 = v14;
    if (v14)
    {
      bytes = [v14 bytes];
      self->_pmLEDCalibData.isvalid = 1;
      self->_ledType = 10;
      v17 = *bytes;
      if (*bytes)
      {
        if (v17 == 1)
        {
          self->_pmLEDCalibData.programID = 0;
          self->_pmLEDCalibData.version = 3;
          self->_pmLEDCalibData.ledWidePtrn_rg = *(bytes + 4);
          self->_pmLEDCalibData.ledWidePtrn_bg = *(bytes + 8);
        }

        else
        {
          if (v17 != 2)
          {
            FigDebugAssert3();
            v88 = 0;
            v67 = 0;
            v69 = 0;
            v87 = -1;
            v96 = v15;
            goto LABEL_66;
          }

          self->_pmLEDCalibData.programID = 1;
          self->_pmLEDCalibData.version = 3;
          self->_pmLEDCalibData.ledWidePtrn_rg = *(bytes + 4);
          self->_pmLEDCalibData.ledWidePtrn_bg = *(bytes + 8);
          self->_pmLEDCalibData.ledTelePtrn_rg = *(bytes + 4);
          self->_pmLEDCalibData.ledTelePtrn_bg = *(bytes + 8);
          self->_pmLEDCalibData.ledSWidePtrn_rg = *(bytes + 4);
          self->_pmLEDCalibData.ledSWidePtrn_bg = *(bytes + 8);
        }
      }

      else
      {
        self->_pmLEDCalibData.version = 2;
        self->_pmLEDCalibData.cw_rg = *(bytes + 4);
        self->_pmLEDCalibData.cw_bg = *(bytes + 8);
        self->_pmLEDCalibData.ww_rg = *(bytes + 12);
        self->_pmLEDCalibData.ww_bg = *(bytes + 16);
      }

      v96 = v15;
    }

    else
    {
      v96 = 0;
      self->_pmLEDCalibData.isvalid = 0;
    }
  }

  else
  {
    v96 = 0;
  }

  if (!configCopy)
  {
LABEL_49:
    v66 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991158]];
    v67 = v66;
    if (!v66)
    {
      FigDebugAssert3();
      v88 = 0;
      v87 = FigSignalErrorAtGM();
      v67 = 0;
      v69 = 0;
      goto LABEL_66;
    }

    self->_sMetaData.ae.gainDigiAE = vcvtms_s32_f32([v66 intValue] / 1.0159);
    v68 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990FD0]];
    v69 = v68;
    if (v68)
    {
      [v68 floatValue];
      v71 = vcvts_n_s32_f32(v70, 8uLL);
    }

    else
    {
      v71 = 1;
    }

    selfCopy2 = self;
    self->_sMetaData.ae.ev0Ratio = v71;
    if (configCopy)
    {
      v73 = [configCopy objectForKeyedSubscript:@"Exposure"];
      v74 = [v73 objectForKeyedSubscript:@"LuxModel"];
      v75 = [v74 objectForKeyedSubscript:@"Scale"];

      if (!v75 || ([configCopy objectForKeyedSubscript:@"Exposure"], v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "objectForKeyedSubscript:", @"LuxModel"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "objectForKeyedSubscript:", @"Scale"), v78 = objc_claimAutoreleasedReturnValue(), self->_sMetaData.ae.luxCalcParams.scale = objc_msgSend(v78, "intValue"), v78, v77, v76, objc_msgSend(configCopy, "objectForKeyedSubscript:", @"Exposure"), v79 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "objectForKeyedSubscript:", @"LuxModel"), v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v80, "objectForKeyedSubscript:", @"ScaleShift"), v81 = objc_claimAutoreleasedReturnValue(), v81, v80, v79, !v81))
      {
        FigDebugAssert3();
        v88 = 0;
        v87 = FigSignalErrorAtGM();
        goto LABEL_66;
      }

      v82 = [configCopy objectForKeyedSubscript:@"Exposure"];
      v83 = [v82 objectForKeyedSubscript:@"LuxModel"];
      v84 = [v83 objectForKeyedSubscript:@"ScaleShift"];
      selfCopy2 = self;
      self->_sMetaData.ae.luxCalcParams.scaleShift = [v84 intValue];
    }

    selfCopy2->_sMetaData.ae.overflowDGain = 256;
    if (infoCopy && ([infoCopy objectForKeyedSubscript:*MEMORY[0x1E69911A8]], v85 = objc_claimAutoreleasedReturnValue(), (v86 = v85) != 0))
    {
      v87 = 0;
      self->_sensorClockFreqHz = [v85 unsignedIntValue];
      v88 = v86;
    }

    else
    {
      v88 = 0;
      FigDebugAssert3();
      v87 = 0;
    }

    goto LABEL_66;
  }

  v18 = [configCopy objectForKeyedSubscript:@"AutoWhiteBalance"];
  v90 = v18;
  if (v18)
  {
    v19 = [v18 objectForKeyedSubscript:@"Flash"];
    v20 = [v19 objectForKeyedSubscript:@"Projection"];

    v21 = 0;
    while (1)
    {
      v22 = [v20 objectForKeyedSubscript:@"MatrixRGBToXYZ"];
      v23 = [v22 objectAtIndexedSubscript:v21];

      if (!v23)
      {
        break;
      }

      v24 = [v20 objectForKeyedSubscript:@"MatrixRGBToXYZ"];
      v25 = [v24 objectAtIndexedSubscript:v21];
      v99[v21] = [v25 intValue];

      v26 = [v20 objectForKeyedSubscript:@"MatrixXYZToRGB"];
      v27 = [v26 objectAtIndexedSubscript:v21];

      if (!v27)
      {
        break;
      }

      v28 = [v20 objectForKeyedSubscript:@"MatrixXYZToRGB"];
      v29 = [v28 objectAtIndexedSubscript:v21];
      v99[v21 + 9] = [v29 intValue];

      if (++v21 == 9)
      {
        v30 = 0;
        v31 = &v100;
LABEL_28:
        v32 = 0;
        while (1)
        {
          v33 = [v20 objectForKeyedSubscript:@"MatrixRGBToXYZ"];
          v34 = [v33 objectAtIndexedSubscript:v30];

          if (!v34)
          {
            goto LABEL_61;
          }

          v35 = [v20 objectForKeyedSubscript:@"CCMModel"];
          v36 = [v35 objectAtIndexedSubscript:v30];
          v37 = [v36 objectAtIndexedSubscript:v32];
          v31[v32] = [v37 intValue];

          if (++v32 == 5)
          {
            ++v30;
            v31 += 5;
            if (v30 != 6)
            {
              goto LABEL_28;
            }

            v38 = 0;
            v39 = v101;
LABEL_33:
            v40 = [v20 objectForKeyedSubscript:@"BoundingEllipsesModel"];
            v41 = [v40 objectAtIndexedSubscript:v38];

            if (v41)
            {
              v42 = 0;
              while (1)
              {
                v43 = [v20 objectForKeyedSubscript:@"BoundingEllipsesModel"];
                v44 = [v43 objectAtIndexedSubscript:v38];
                v45 = [v44 objectAtIndexedSubscript:v42];

                if (!v45)
                {
                  break;
                }

                v46 = [v20 objectForKeyedSubscript:@"BoundingEllipsesModel"];
                v47 = [v46 objectAtIndexedSubscript:v38];
                v48 = [v47 objectAtIndexedSubscript:v42];
                *&v39[4 * v42] = [v48 intValue];

                if (++v42 == 6)
                {
                  ++v38;
                  v39 += 24;
                  if (v38 != 6)
                  {
                    goto LABEL_33;
                  }

                  v49 = 0;
                  v98 = v102;
                  do
                  {
                    v50 = [&unk_1F48E6168 objectAtIndexedSubscript:v49];
                    v51 = [v20 objectForKeyedSubscript:v50];

                    if (!v51)
                    {
LABEL_63:
                      FigDebugAssert3();
                      v87 = FigSignalErrorAtGM();

                      goto LABEL_64;
                    }

                    *&v101[26 * v49 + 144] = [v51 count];
                    v52 = v98;
                    for (i = 175; [v51 count] > (i - 175); ++i)
                    {
                      v54 = [v51 objectAtIndexedSubscript:i - 175];
                      v55 = [v54 objectForKeyedSubscript:@"Index"];

                      if (!v55)
                      {
                        goto LABEL_63;
                      }

                      v56 = [v51 objectAtIndexedSubscript:i - 175];
                      v57 = [v56 objectForKeyedSubscript:@"Index"];
                      *v52 = [v57 intValue];

                      v58 = [v51 objectAtIndexedSubscript:i - 175];
                      v59 = [v58 objectForKeyedSubscript:@"Weight"];

                      if (!v59)
                      {
                        goto LABEL_63;
                      }

                      v60 = [v51 objectAtIndexedSubscript:i - 175];
                      v61 = [v60 objectForKeyedSubscript:@"Weight"];
                      v52[6] = [v61 intValue];

                      ++v52;
                    }

                    ++v49;
                    v98 += 26;
                  }

                  while (v49 != 4);
                  v62 = [v20 objectForKeyedSubscript:@"UseQuantileLuxLevels"];

                  if (v62)
                  {
                    v63 = [v20 objectForKeyedSubscript:@"UseQuantileLuxLevels"];
                    v102[102] = [v63 intValue];

                    v64 = [v20 objectForKeyedSubscript:@"UseFlashCCMMixing"];

                    if (v64)
                    {
                      v65 = [v20 objectForKeyedSubscript:@"UseFlashCCMMixing"];
                      v102[103] = [v65 intValue];

                      CAWBAFE::SetFlashProjectionConfig(self->_AWBAlgorithmObj, v99);
                      goto LABEL_49;
                    }
                  }

                  goto LABEL_61;
                }
              }
            }

            goto LABEL_61;
          }
        }
      }
    }

LABEL_61:
    FigDebugAssert3();
    v87 = FigSignalErrorAtGM();
LABEL_64:
  }

  else
  {
    FigDebugAssert3();
    v87 = FigSignalErrorAtGM();
  }

  v88 = 0;
  v67 = 0;
  v69 = 0;
LABEL_66:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v87;
}

- (int)configFallbackMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  self->_fallbackGains.validAWBData = 1;
  v7 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F20]];
  awbRGain = self->_fallbackGains.awbRGain;
  self->_fallbackGains.awbRGain = v7;

  if (!self->_fallbackGains.awbRGain)
  {
    v25 = v3;
    LODWORD(v20) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v9 = [metadataCopy objectForKeyedSubscript:{*MEMORY[0x1E6990F18], v20, v25}];
  awbGGain = self->_fallbackGains.awbGGain;
  self->_fallbackGains.awbGGain = v9;

  if (!self->_fallbackGains.awbGGain)
  {
    v26 = v3;
    LODWORD(v21) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v11 = [metadataCopy objectForKeyedSubscript:{*MEMORY[0x1E6990EE0], v21, v26}];
  awbBGain = self->_fallbackGains.awbBGain;
  self->_fallbackGains.awbBGain = v11;

  if (!self->_fallbackGains.awbBGain)
  {
    v27 = v3;
    LODWORD(v22) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v13 = [metadataCopy objectForKeyedSubscript:{*MEMORY[0x1E6990EF8], v22, v27}];
  awbComboRGain = self->_fallbackGains.awbComboRGain;
  self->_fallbackGains.awbComboRGain = v13;

  if (!self->_fallbackGains.awbComboRGain)
  {
    v28 = v3;
    LODWORD(v23) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v15 = [metadataCopy objectForKeyedSubscript:{*MEMORY[0x1E6990EF0], v23, v28}];
  awbComboGGain = self->_fallbackGains.awbComboGGain;
  self->_fallbackGains.awbComboGGain = v15;

  if (!self->_fallbackGains.awbComboGGain)
  {
    v29 = v3;
    LODWORD(v24) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v17 = [metadataCopy objectForKeyedSubscript:{*MEMORY[0x1E6990EE8], v24, v29}];
  awbComboBGain = self->_fallbackGains.awbComboBGain;
  self->_fallbackGains.awbComboBGain = v17;

  if (!self->_fallbackGains.awbComboBGain)
  {
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (int)configPortTypeMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
  if (([v5 isEqual:*MEMORY[0x1E6990CA0]] & 1) != 0 || objc_msgSend(v5, "isEqual:", *MEMORY[0x1E6990CA8]))
  {
    v6 = 2;
  }

  else if ([v5 isEqual:*MEMORY[0x1E6990C90]])
  {
    v6 = 4;
  }

  else
  {
    if (![v5 isEqual:*MEMORY[0x1E6990C98]])
    {
      self->_sMetaData.channel = 0;
      goto LABEL_5;
    }

    v6 = 1;
  }

  self->_sMetaData.channel = v6;
LABEL_5:

  return 0;
}

+ (int)doAWBConfigLoad:(id)load to:(id)to
{
  loadCopy = load;
  toCopy = to;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pointerValue = [toCopy pointerValue];
  if (!loadCopy || !pointerValue)
  {
    FigDebugAssert3();
    v172 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v183 = 0;
    v184 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v185 = 0;
LABEL_84:
    v170 = 0;
    goto LABEL_85;
  }

  v5 = [loadCopy objectForKeyedSubscript:@"Histogram"];
  v6 = [v5 objectForKeyedSubscript:@"WeightMasks"];

  v190 = v6;
  v7 = malloc_type_malloc(1026 * [v6 count], 0x100004040BEE09CuLL);
  for (i = 0; ; i = v9 + 1)
  {
    v9 = i;
    if ([v6 count] <= i)
    {
      break;
    }

    v10 = [v6 objectAtIndexedSubscript:i];
    v11 = [v10 objectForKeyedSubscript:@"Lux"];
    v12 = &v7[513 * i + 1];
    v7[513 * v9] = [v11 intValue];

    for (j = 0; j != 1024; ++j)
    {
      v14 = [v6 objectAtIndexedSubscript:v9];
      v15 = [v14 objectForKeyedSubscript:@"WeightMask"];
      v16 = [v15 objectAtIndexedSubscript:j];
      *(v12 + j) = [v16 intValue];
    }
  }

  CAWBAFE::SetHistogramWeight(pointerValue, [v6 count], v7);
  free(v7);
  v188 = [loadCopy objectForKeyedSubscript:@"CSC"];
  if (!v188)
  {
    FigDebugAssert3();
    v170 = FigSignalErrorAtGM();
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v183 = 0;
    v184 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v185 = 0;
    v172 = 0;
    goto LABEL_85;
  }

  v17 = 0;
  v18 = &v208;
  do
  {
    v19 = [v188 objectForKeyedSubscript:@"CCMCoef"];
    v20 = [v19 objectAtIndexedSubscript:v17];
    v18->var0[0] = [v20 intValue];

    v21 = [v188 objectForKeyedSubscript:@"CSCCoef"];
    v22 = [v21 objectAtIndexedSubscript:v17];
    v18->var1[0] = [v22 intValue];

    ++v17;
    v18 = (v18 + 2);
  }

  while (v17 != 9);
  v23 = 0;
  var4 = v208.var4;
  do
  {
    v25 = [v188 objectForKeyedSubscript:@"CSCMax"];
    v26 = [v25 objectAtIndexedSubscript:v23];
    *var4 = [v26 intValue];

    v27 = [v188 objectForKeyedSubscript:@"CSCMin"];
    v28 = [v27 objectAtIndexedSubscript:v23];
    *(var4 - 3) = [v28 intValue];

    v29 = [v188 objectForKeyedSubscript:@"CSCOffset"];
    v30 = [v29 objectAtIndexedSubscript:v23];
    *(var4 - 6) = [v30 intValue];

    ++v23;
    ++var4;
  }

  while (v23 != 3);
  v208.var6 = 1;
  v31 = [v188 objectForKeyedSubscript:@"CSCChromaScale0"];
  v208.var5[0] = [v31 intValue];

  v32 = [v188 objectForKeyedSubscript:@"CSCChromaScale1"];
  v208.var5[1] = [v32 intValue];

  v33 = [loadCopy objectForKeyedSubscript:{@"Histogram", CAWBAFE::UpdateCSCConfig(pointerValue, &v208).n128_f64[0]}];
  v34 = [v33 objectForKeyedSubscript:@"Config"];

  v183 = v34;
  if (!v34)
  {
    FigDebugAssert3();
    v170 = FigSignalErrorAtGM();
    v172 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v183 = 0;
LABEL_93:
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v187 = 0;
    v189 = 0;
    v184 = 0;
    v185 = 0;
    v182 = 0;
    goto LABEL_85;
  }

  for (k = 0; k != 15; ++k)
  {
    v36 = [v34 objectForKeyedSubscript:@"YThd"];
    v37 = [v36 objectAtIndexedSubscript:k];
    v207.var0[k] = [v37 intValue];
  }

  for (m = 0; m != 16; ++m)
  {
    v39 = [v34 objectForKeyedSubscript:@"Count"];
    v40 = [v39 objectAtIndexedSubscript:m];
    v207.var1[m] = [v40 intValue];
  }

  v41 = [v34 objectForKeyedSubscript:@"C1Offset"];
  v207.var2 = [v41 intValue];

  v42 = [v34 objectForKeyedSubscript:@"C1Scale"];
  v207.var3 = [v42 intValue];

  v43 = [v34 objectForKeyedSubscript:@"C2Offset"];
  v207.var4 = [v43 intValue];

  v44 = [v34 objectForKeyedSubscript:@"C2Scale"];
  v207.var5 = [v44 intValue];

  v45 = [loadCopy objectForKeyedSubscript:{@"ProjectionPoint", CAWBAFE::UpdateColorHistConfig(pointerValue, &v207).n128_f64[0]}];
  if (!v45)
  {
    FigDebugAssert3();
    v170 = FigSignalErrorAtGM();
    v172 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    goto LABEL_93;
  }

  v184 = v45;
  v46 = malloc_type_malloc(4 * [v45 count], 0x100004052888210uLL);
  for (n = 0; ; n = v48 + 1)
  {
    v48 = n;
    if ([v184 count] <= n)
    {
      break;
    }

    v49 = [v184 objectAtIndexedSubscript:n];
    v50 = [v49 objectForKeyedSubscript:@"X"];
    v51 = &v46[4 * n];
    *v51 = [v50 intValue];

    v52 = [v184 objectAtIndexedSubscript:v48];
    v53 = [v52 objectForKeyedSubscript:@"Y"];
    *(v51 + 1) = [v53 intValue];
  }

  CAWBAFE::SetProjectionPoint(pointerValue, [v184 count], v46);
  free(v46);
  v54 = [loadCopy objectForKeyedSubscript:@"Histogram"];
  v55 = [v54 objectForKeyedSubscript:@"XToCCT"];

  if (!v55)
  {
    FigDebugAssert3();
    v170 = FigSignalErrorAtGM();
    v172 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v187 = 0;
    v189 = 0;
    v185 = 0;
    goto LABEL_85;
  }

  v185 = v55;
  v56 = malloc_type_malloc(6 * [v55 count], 0x1000040274DC3F3uLL);
  for (ii = 0; [v55 count] > ii; ++ii)
  {
    v58 = [v55 objectAtIndexedSubscript:ii];
    v59 = [v58 objectForKeyedSubscript:@"X"];
    v60 = &v56[6 * ii];
    *v60 = [v59 intValue];

    v61 = [v55 objectAtIndexedSubscript:ii];
    v62 = [v61 objectForKeyedSubscript:@"Y"];
    *(v60 + 1) = [v62 intValue];

    v63 = [v55 objectAtIndexedSubscript:ii];
    v64 = [v63 objectForKeyedSubscript:@"CCT"];
    *(v60 + 2) = [v64 intValue];
  }

  CAWBAFE::SetHistogramXToCCTLut(pointerValue, [v55 count], v56);
  free(v56);
  v182 = [loadCopy objectForKeyedSubscript:@"AWBSkinToWhiteLut"];
  if (v182 && [v182 count] <= 0x96)
  {
    v65 = malloc_type_malloc(8 * [v182 count], 0x100004000313F17uLL);
    if (!v65)
    {
LABEL_105:
      FigDebugAssert3();
      v170 = FigSignalErrorAtGM();
      v172 = 0;
      v175 = 0;
      v176 = 0;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0;
      v181 = 0;
      v187 = 0;
      v189 = 0;
      goto LABEL_85;
    }

    for (jj = 0; [v182 count] > jj; ++jj)
    {
      v67 = [v182 objectAtIndexedSubscript:jj];
      v68 = [v67 objectForKeyedSubscript:@"Xs"];
      v69 = &v65[8 * jj];
      *(v69 + 2) = [v68 unsignedIntValue];

      v70 = [v182 objectAtIndexedSubscript:jj];
      v71 = [v70 objectForKeyedSubscript:@"Xw"];
      *v69 = [v71 unsignedIntValue];

      v72 = [v182 objectAtIndexedSubscript:jj];
      v73 = [v72 objectForKeyedSubscript:@"Ys"];
      *(v69 + 3) = [v73 unsignedIntValue];

      v74 = [v182 objectAtIndexedSubscript:jj];
      v75 = [v74 objectForKeyedSubscript:@"Yw"];
      *(v69 + 1) = [v75 unsignedIntValue];
    }

    CAWBAFE::SetSkinToWhiteLut(pointerValue, [v182 count], v65);
    free(v65);
  }

  v189 = [loadCopy objectForKeyedSubscript:@"CCM"];
  if (!v189)
  {
    goto LABEL_105;
  }

  v76 = 0;
  v77 = v204;
  do
  {
    v78 = [v189 objectForKeyedSubscript:@"Offset"];
    v79 = [v78 objectAtIndexedSubscript:v76];
    *(v77 - 27) = [v79 intValue];

    v80 = [v189 objectForKeyedSubscript:@"X1stOrder"];
    v81 = [v80 objectAtIndexedSubscript:v76];
    *(v77 - 18) = [v81 intValue];

    v82 = [v189 objectForKeyedSubscript:@"Y1stOrder"];
    v83 = [v82 objectAtIndexedSubscript:v76];
    *(v77 - 9) = [v83 intValue];

    v84 = [v189 objectForKeyedSubscript:@"X2ndOrder"];
    v85 = [v84 objectAtIndexedSubscript:v76];
    *v77 = [v85 intValue];

    v86 = [v189 objectForKeyedSubscript:@"Y2ndOrder"];
    v87 = [v86 objectAtIndexedSubscript:v76];
    v77[9] = [v87 intValue];

    v88 = [v189 objectForKeyedSubscript:@"LuxFactor"];
    v89 = [v88 objectAtIndexedSubscript:v76];
    v77[18] = [v89 intValue];

    ++v76;
    ++v77;
  }

  while (v76 != 9);
  v90 = [v189 objectForKeyedSubscript:{@"CCMLuxClipLevel", CAWBAFE::SetCCM2DCoefficient(pointerValue, v201, v202, v203, v204, v205, &v206).n128_f64[0]}];
  CAWBAFE::SetCCMLuxClip(pointerValue, [v90 intValue]);

  v91 = [loadCopy objectForKeyedSubscript:@"PostTint"];
  if (v91)
  {
    v187 = v91;
    v92 = malloc_type_malloc(8 * [v91 count], 0x100004000313F17uLL);
    for (kk = 0; ; kk = v94 + 1)
    {
      v94 = kk;
      if ([v187 count] <= kk)
      {
        break;
      }

      v95 = [v187 objectAtIndexedSubscript:kk];
      v96 = [v95 objectForKeyedSubscript:@"Offset"];
      v97 = &v92[8 * kk];
      *v97 = [v96 intValue];

      v98 = [v187 objectAtIndexedSubscript:v94];
      v99 = [v98 objectForKeyedSubscript:@"KEst"];
      *(v97 + 1) = [v99 intValue];

      v100 = [v187 objectAtIndexedSubscript:v94];
      v101 = [v100 objectForKeyedSubscript:@"KHist"];
      *(v97 + 2) = [v101 intValue];

      v102 = [v187 objectAtIndexedSubscript:v94];
      v103 = [v102 objectForKeyedSubscript:@"HClip"];
      *(v97 + 3) = [v103 intValue];
    }

    CAWBAFE::SetPostTintParam(pointerValue, [v187 count], v92);
    free(v92);
    v104 = [loadCopy objectForKeyedSubscript:@"MixLighting"];
    v105 = [v104 objectForKeyedSubscript:@"XCoordinate"];

    v181 = v105;
    if (v105)
    {
      for (mm = 0; mm != 3; ++mm)
      {
        v107 = [v181 objectAtIndexedSubscript:mm];
        v200[mm] = [v107 intValue];
      }

      CAWBAFE::SetMixLightingXLoc(pointerValue, v200);
      v108 = [loadCopy objectForKeyedSubscript:@"MixLighting"];
      v109 = [v108 objectForKeyedSubscript:@"CCM"];

      v180 = v109;
      if (v109)
      {
        for (nn = 0; nn != 9; ++nn)
        {
          v111 = [v180 objectAtIndexedSubscript:nn];
          v199.n128_u16[nn] = [v111 intValue];
        }

        v179 = [loadCopy objectForKeyedSubscript:{@"YThreshold", CAWBAFE::SetMixLightingCCM(pointerValue, &v199).n128_f64[0]}];
        if (v179)
        {
          v112 = 0;
          v113 = 1;
          do
          {
            v114 = v113;
            v115 = [v179 objectAtIndexedSubscript:v112];
            v198[v112] = [v115 intValue];

            v113 = 0;
            v112 = 1;
          }

          while ((v114 & 1) != 0);
          CAWBAFE::SetTileStatsYThreshold(pointerValue, v198);
          v178 = [loadCopy objectForKeyedSubscript:@"RatioSpace2ndGainThreshold"];
          if (v178)
          {
            v116 = 0;
            v117 = 1;
            do
            {
              v118 = v117;
              v119 = [v178 objectAtIndexedSubscript:v116];
              v197[v116] = [v119 intValue];

              v117 = 0;
              v116 = 1;
            }

            while ((v118 & 1) != 0);
            CAWBAFE::SetRatioSpace2ndGainThreshold(pointerValue, v197);
            v120 = [loadCopy objectForKeyedSubscript:@"Histogram"];
            v121 = [v120 objectForKeyedSubscript:@"TrimFilterV"];

            v177 = v121;
            if (v121)
            {
              for (i1 = 0; i1 != 13; ++i1)
              {
                v123 = [v177 objectAtIndexedSubscript:i1];
                v196[i1] = [v123 intValue];
              }

              v124 = [loadCopy objectForKeyedSubscript:{@"Histogram", CAWBAFE::SetHistogramTrimFilterV(pointerValue, v196).n128_f64[0]}];
              v125 = [v124 objectForKeyedSubscript:@"TrimFilterH"];

              v176 = v125;
              if (v125)
              {
                for (i2 = 0; i2 != 3; ++i2)
                {
                  v127 = [v176 objectAtIndexedSubscript:i2];
                  v195[i2] = [v127 intValue];
                }

                CAWBAFE::SetHistogramTrimFilterH(pointerValue, v195);
                v128 = [loadCopy objectForKeyedSubscript:@"Histogram"];
                v129 = [v128 objectForKeyedSubscript:@"TrimScaleProfile"];

                v175 = v129;
                if (v129)
                {
                  for (i3 = 0; i3 != 32; ++i3)
                  {
                    v131 = [v175 objectAtIndexedSubscript:i3];
                    v194[i3] = [v131 intValue];
                  }

                  v132 = [loadCopy objectForKeyedSubscript:{@"Scheme", CAWBAFE::SetHistogramTrimScaleProfile(pointerValue, v194).n128_f64[0]}];
                  v133 = v132;
                  if (v132)
                  {
                    CAWBAFE::SetScheme(pointerValue, [v132 isEqualToString:@"2DHistogram"]);
                    v172 = v133;
                    memset(v193, 0, sizeof(v193));
                    v192 = 0u;
                    v134 = [loadCopy objectForKeyedSubscript:@"ColorMatchingModel"];
                    [v134 count];

                    for (i4 = 0; ; i4 = v138 + 1)
                    {
                      v136 = [loadCopy objectForKeyedSubscript:@"ColorMatchingModel"];
                      v137 = [v136 count];
                      v138 = i4;

                      if (v137 <= i4)
                      {
                        break;
                      }

                      v139 = [loadCopy objectForKeyedSubscript:@"ColorMatchingModel"];
                      v140 = [v139 objectAtIndexedSubscript:i4];

                      if (!v140)
                      {
                        FigDebugAssert3();
                        v170 = FigSignalErrorAtGM();
                        goto LABEL_85;
                      }

                      v141 = 0;
                      v142 = 28 * i4;
                      v143 = &v192 + v142 + 4;
                      v144 = v193 + v142;
                      do
                      {
                        v145 = [v140 objectForKeyedSubscript:@"BGGainMatchingModel"];
                        v146 = [v145 objectAtIndexedSubscript:v141];
                        *&v144[4 * v141] = [v146 intValue];

                        ++v141;
                      }

                      while (v141 != 3);
                      for (i5 = 0; i5 != 3; ++i5)
                      {
                        v148 = [v140 objectForKeyedSubscript:@"RGGainMatchingModel"];
                        v149 = [v148 objectAtIndexedSubscript:i5];
                        *&v143[4 * i5] = [v149 intValue];
                      }

                      v150 = [v140 objectForKeyedSubscript:@"SlaveCameraID"];
                      *(&v193[-1] + 7 * v138) = [v150 intValue];
                    }

                    v151 = [loadCopy objectForKeyedSubscript:@"ColorMatchingModel"];
                    (*(*pointerValue + 144))(pointerValue, [v151 count], &v192);

                    bzero(v191, 0xA40uLL);
                    v152 = [loadCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                    [v152 count];

                    for (i6 = 0; ; i6 = v156 + 1)
                    {
                      v154 = [loadCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                      v155 = [v154 count];
                      v156 = i6;

                      if (v155 <= i6)
                      {
                        break;
                      }

                      v157 = [loadCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                      v158 = [v157 objectAtIndexedSubscript:i6];

                      if (v158)
                      {
                        v159 = [v158 objectForKeyedSubscript:@"latticeModelLUTGridSize"];
                        intValue = [v159 intValue];

                        if (intValue == 9)
                        {
                          v161 = [v158 objectForKeyedSubscript:@"wbGainMatchingModel"];
                          v162 = v161;
                          if (v161 && [v161 count] == 162)
                          {
                            v163 = [v158 objectForKeyedSubscript:@"latticeModelLUTGridSize"];
                            v164 = &v191[656 * i6 + 8];
                            v165 = &v191[656 * i6];
                            v165[1] = [v163 intValue];

                            for (i7 = 0; i7 != 162; ++i7)
                            {
                              v167 = [v162 objectAtIndex:i7];
                              *&v164[4 * i7] = [v167 intValue];
                            }

                            v168 = [v158 objectForKeyedSubscript:@"SlaveCameraID"];
                            *v165 = [v168 intValue];
                          }
                        }
                      }
                    }

                    v169 = [loadCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                    (*(*pointerValue + 152))(pointerValue, [v169 count], v191);

                    goto LABEL_84;
                  }

                  FigDebugAssert3();
                  v170 = FigSignalErrorAtGM();
                  v172 = 0;
                }

                else
                {
                  FigDebugAssert3();
                  v170 = FigSignalErrorAtGM();
                  v172 = 0;
                  v175 = 0;
                }
              }

              else
              {
                FigDebugAssert3();
                v170 = FigSignalErrorAtGM();
                v172 = 0;
                v175 = 0;
                v176 = 0;
              }
            }

            else
            {
              FigDebugAssert3();
              v170 = FigSignalErrorAtGM();
              v172 = 0;
              v175 = 0;
              v176 = 0;
              v177 = 0;
            }
          }

          else
          {
            FigDebugAssert3();
            v170 = FigSignalErrorAtGM();
            v172 = 0;
            v175 = 0;
            v176 = 0;
            v177 = 0;
            v178 = 0;
          }
        }

        else
        {
          FigDebugAssert3();
          v170 = FigSignalErrorAtGM();
          v172 = 0;
          v175 = 0;
          v176 = 0;
          v177 = 0;
          v178 = 0;
          v179 = 0;
        }
      }

      else
      {
        FigDebugAssert3();
        v170 = FigSignalErrorAtGM();
        v172 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
      }
    }

    else
    {
      FigDebugAssert3();
      v170 = FigSignalErrorAtGM();
      v172 = 0;
      v175 = 0;
      v176 = 0;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0;
      v181 = 0;
    }
  }

  else
  {
    FigDebugAssert3();
    v170 = FigSignalErrorAtGM();
    v172 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v187 = 0;
  }

LABEL_85:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v170;
}

- (int)awbConfigLoad:(id)load to:(CAWBAFE *)to
{
  loadCopy = load;
  if (loadCopy && to)
  {
    v6 = [MEMORY[0x1E696B098] valueWithPointer:to];
    v7 = [AWBAlgorithm doAWBConfigLoad:loadCopy to:v6];
  }

  else
  {
    FigDebugAssert3();
    v7 = FigSignalErrorAtGM();
  }

  return v7;
}

+ (int)awbSensorCalibrationsLoad:(id)load idealColorCalibrations:(id)calibrations to:(id)to
{
  loadCopy = load;
  calibrationsCopy = calibrations;
  toCopy = to;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v60 = 0;
  pointerValue = [toCopy pointerValue];
  if (pointerValue)
  {
    v60 = 0;
    v11 = MEMORY[0x1E6990E48];
    v12 = MEMORY[0x1E6990E40];
    v13 = MEMORY[0x1E6990E38];
    v14 = MEMORY[0x1E6990E50];
    if (loadCopy)
    {
      v15 = *MEMORY[0x1E6990E48];
      v16 = [loadCopy objectForKeyedSubscript:*MEMORY[0x1E6990E48]];

      if (v16)
      {
        v17 = [loadCopy objectForKeyedSubscript:v15];
        LODWORD(v18) = 1.0;
        [v17 cmi_floatValueForKey:*v12 defaultValue:&v60 found:v18];
        v20 = ((v19 * 16384.0) + 0.5);
      }

      else
      {
        v20 = 16384.0;
      }

      v60 = 0;
      v24 = [loadCopy objectForKeyedSubscript:v15];

      if (v24)
      {
        v25 = [loadCopy objectForKeyedSubscript:v15];
        LODWORD(v26) = 1.0;
        [v25 cmi_floatValueForKey:*v13 defaultValue:&v60 found:v26];
        v22 = ((v27 * 16384.0) + 0.5);
      }

      else
      {
        v22 = 16384.0;
      }

      v60 = 0;
      v28 = *v14;
      v29 = [loadCopy objectForKeyedSubscript:*v14];

      if (v29)
      {
        v30 = [loadCopy objectForKeyedSubscript:v28];
        LODWORD(v31) = 1.0;
        [v30 cmi_floatValueForKey:*v12 defaultValue:&v60 found:v31];
        v21 = ((v32 * 16384.0) + 0.5);
      }

      else
      {
        v21 = 16384.0;
      }

      v60 = 0;
      v33 = [loadCopy objectForKeyedSubscript:v28];

      if (v33)
      {
        v34 = [loadCopy objectForKeyedSubscript:v28];
        LODWORD(v35) = 1.0;
        [v34 cmi_floatValueForKey:*v13 defaultValue:&v60 found:v35];
        v23 = ((v36 * 16384.0) + 0.5);
      }

      else
      {
        v23 = 16384.0;
      }
    }

    else
    {
      v21 = 16384.0;
      v20 = 16384.0;
      v22 = 16384.0;
      v23 = 16384.0;
    }

    v60 = 0;
    if (calibrationsCopy)
    {
      v37 = *v11;
      v38 = [calibrationsCopy objectForKeyedSubscript:*v11];

      if (v38)
      {
        v39 = [calibrationsCopy objectForKeyedSubscript:v37];
        LODWORD(v40) = 1182793728;
        [v39 cmi_floatValueForKey:*v12 defaultValue:&v60 found:v40];
        v42 = v41;
      }

      else
      {
        v42 = 16384.0;
      }

      v60 = 0;
      v46 = [calibrationsCopy objectForKeyedSubscript:v37];

      if (v46)
      {
        v47 = [calibrationsCopy objectForKeyedSubscript:v37];
        LODWORD(v48) = 1182793728;
        [v47 cmi_floatValueForKey:*v13 defaultValue:&v60 found:v48];
        v44 = v49;
      }

      else
      {
        v44 = 16384.0;
      }

      v60 = 0;
      v50 = *v14;
      v51 = [calibrationsCopy objectForKeyedSubscript:*v14];

      if (v51)
      {
        v52 = [calibrationsCopy objectForKeyedSubscript:v50];
        LODWORD(v53) = 1182793728;
        [v52 cmi_floatValueForKey:*v12 defaultValue:&v60 found:v53];
        v43 = v54;
      }

      else
      {
        v43 = 16384.0;
      }

      v60 = 0;
      v55 = [calibrationsCopy objectForKeyedSubscript:v50];

      if (v55)
      {
        v56 = [calibrationsCopy objectForKeyedSubscript:v50];
        LODWORD(v57) = 1182793728;
        [v56 cmi_floatValueForKey:*v13 defaultValue:&v60 found:v57];
        v45 = v58;
      }

      else
      {
        v45 = 16384.0;
      }
    }

    else
    {
      v43 = 16384.0;
      v42 = 16384.0;
      v44 = 16384.0;
      v45 = 16384.0;
    }

    CAWBAFE::SensorCalSet(pointerValue, v20, v22, v21, v23, v42, v44, v43, v45);
  }

  else
  {
    FigDebugAssert3();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return 0;
}

+ (int)populateSlaveConfigWithModuleConfigIfColorMatchingModelExistsInPrimaryAWBConfig:(id)config secondaryAWBConfig:(id)bConfig secondaryIdealColorCals:(id)cals secondaryAbsoluteColorCals:(id)colorCals secondarySetFileID:(unsigned int)d secondarySensorConfig:(SensorConfigAWBParams *)sensorConfig
{
  configCopy = config;
  bConfigCopy = bConfig;
  calsCopy = cals;
  colorCalsCopy = colorCals;
  v136 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v13 = 0;
  do
  {
    v14 = [configCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
    v15 = [v14 count];

    if (v15 <= v13)
    {
      v30 = 0;
      FigDebugAssert3();
      v31 = 0;
LABEL_11:
      v32 = 0;
      v33 = 0;
      v34 = 0;
      goto LABEL_86;
    }

    v16 = [configCopy objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
    v17 = [v16 objectAtIndexedSubscript:v13];

    v18 = [v17 objectForKeyedSubscript:@"SlaveCameraID"];
    intValue = [v18 intValue];

    ++v13;
  }

  while (((intValue ^ d) & 0xFFFFFF) != 0 || !intValue);
  sensorConfig->var4 = intValue;
  v136 = 0;
  v20 = MEMORY[0x1E6990E48];
  v21 = MEMORY[0x1E6990E40];
  v22 = MEMORY[0x1E6990E38];
  v23 = MEMORY[0x1E6990E50];
  sensorConfigCopy = sensorConfig;
  if (colorCalsCopy)
  {
    v24 = *MEMORY[0x1E6990E48];
    v25 = [colorCalsCopy objectForKeyedSubscript:*MEMORY[0x1E6990E48]];

    if (v25)
    {
      v26 = [colorCalsCopy objectForKeyedSubscript:v24];
      LODWORD(v27) = 1.0;
      [v26 cmi_floatValueForKey:*v21 defaultValue:&v136 found:v27];
      v29 = ((v28 * 16384.0) + 0.5);
    }

    else
    {
      v29 = 16384.0;
    }

    v136 = 0;
    v38 = [colorCalsCopy objectForKeyedSubscript:v24];

    if (v38)
    {
      v39 = [colorCalsCopy objectForKeyedSubscript:v24];
      LODWORD(v40) = 1.0;
      [v39 cmi_floatValueForKey:*v22 defaultValue:&v136 found:v40];
      v36 = ((v41 * 16384.0) + 0.5);
    }

    else
    {
      v36 = 16384.0;
    }

    v136 = 0;
    v42 = *v23;
    v43 = [colorCalsCopy objectForKeyedSubscript:*v23];

    if (v43)
    {
      v44 = [colorCalsCopy objectForKeyedSubscript:v42];
      LODWORD(v45) = 1.0;
      [v44 cmi_floatValueForKey:*v21 defaultValue:&v136 found:v45];
      v35 = ((v46 * 16384.0) + 0.5);
    }

    else
    {
      v35 = 16384.0;
    }

    v136 = 0;
    v47 = [colorCalsCopy objectForKeyedSubscript:v42];

    if (v47)
    {
      v48 = [colorCalsCopy objectForKeyedSubscript:v42];
      LODWORD(v49) = 1.0;
      [v48 cmi_floatValueForKey:*v22 defaultValue:&v136 found:v49];
      v37 = ((v50 * 16384.0) + 0.5);
    }

    else
    {
      v37 = 16384.0;
    }
  }

  else
  {
    v35 = 16384.0;
    v29 = 16384.0;
    v36 = 16384.0;
    v37 = 16384.0;
  }

  v136 = 0;
  if (calsCopy)
  {
    v51 = *v20;
    v52 = [calsCopy objectForKeyedSubscript:*v20];

    if (v52)
    {
      v53 = [calsCopy objectForKeyedSubscript:v51];
      LODWORD(v54) = 1182793728;
      [v53 cmi_floatValueForKey:*v21 defaultValue:&v136 found:v54];
      v56 = v55;
    }

    else
    {
      v56 = 16384.0;
    }

    v136 = 0;
    v60 = [calsCopy objectForKeyedSubscript:v51];

    if (v60)
    {
      v61 = [calsCopy objectForKeyedSubscript:v51];
      LODWORD(v62) = 1182793728;
      [v61 cmi_floatValueForKey:*v22 defaultValue:&v136 found:v62];
      v58 = v63;
    }

    else
    {
      v58 = 16384.0;
    }

    v136 = 0;
    v64 = *v23;
    v65 = [calsCopy objectForKeyedSubscript:*v23];

    if (v65)
    {
      v66 = [calsCopy objectForKeyedSubscript:v64];
      LODWORD(v67) = 1182793728;
      [v66 cmi_floatValueForKey:*v21 defaultValue:&v136 found:v67];
      v57 = v68;
    }

    else
    {
      v57 = 16384.0;
    }

    v136 = 0;
    v69 = [calsCopy objectForKeyedSubscript:v64];

    if (v69)
    {
      v70 = [calsCopy objectForKeyedSubscript:v64];
      LODWORD(v71) = 1182793728;
      [v70 cmi_floatValueForKey:*v22 defaultValue:&v136 found:v71];
      v59 = v72;
    }

    else
    {
      v59 = 16384.0;
    }
  }

  else
  {
    v57 = 16384.0;
    v56 = 16384.0;
    v58 = 16384.0;
    v59 = 16384.0;
  }

  sensorConfig->var0.var0 = v57;
  sensorConfig->var0.var1 = v59;
  sensorConfig->var0.var2 = v56;
  sensorConfig->var0.var3 = v58;
  sensorConfig->var1.var0 = v35;
  sensorConfig->var1.var1 = v37;
  sensorConfig->var1.var2 = v29;
  sensorConfig->var1.var3 = v36;
  v73 = v57 > 0.0;
  if (v35 <= 0.0)
  {
    v73 = 0;
  }

  if (v73)
  {
    v74 = ((v57 * 16384.0) / v35);
  }

  else
  {
    LOWORD(v74) = 0x4000;
  }

  sensorConfig->var3.var0 = v74;
  v75 = v59 > 0.0;
  if (v37 <= 0.0)
  {
    v75 = 0;
  }

  if (v75)
  {
    v76 = ((v59 * 16384.0) / v37);
  }

  else
  {
    LOWORD(v76) = 0x4000;
  }

  sensorConfig->var3.var1 = v76;
  v77 = v56 > 0.0;
  if (v29 <= 0.0)
  {
    v77 = 0;
  }

  if (v77)
  {
    v78 = ((v56 * 16384.0) / v29);
  }

  else
  {
    LOWORD(v78) = 0x4000;
  }

  sensorConfig->var3.var2 = v78;
  v79 = v58 > 0.0;
  if (v36 <= 0.0)
  {
    v79 = 0;
  }

  if (v79)
  {
    v80 = ((v58 * 16384.0) / v36);
  }

  else
  {
    LOWORD(v80) = 0x4000;
  }

  sensorConfig->var3.var3 = v80;
  if (v73)
  {
    v81 = ((v35 * 16384.0) / v57);
  }

  else
  {
    LOWORD(v81) = 0x4000;
  }

  sensorConfig->var2.var0 = v81;
  if (v75)
  {
    v82 = ((v37 * 16384.0) / v59);
  }

  else
  {
    LOWORD(v82) = 0x4000;
  }

  sensorConfig->var2.var1 = v82;
  if (v77)
  {
    v83 = ((v29 * 16384.0) / v56);
  }

  else
  {
    LOWORD(v83) = 0x4000;
  }

  sensorConfig->var2.var2 = v83;
  if (v79)
  {
    v84 = ((v36 * 16384.0) / v58);
  }

  else
  {
    LOWORD(v84) = 0x4000;
  }

  sensorConfig->var2.var3 = v84;
  v130 = [bConfigCopy objectForKeyedSubscript:@"CSC"];
  if (!v130)
  {
    FigDebugAssert3();
    v30 = 0;
    v31 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  p_var6 = &sensorConfig->var6;
  v86 = -9;
  do
  {
    v87 = [v130 objectForKeyedSubscript:@"CCMCoef"];
    v88 = [v87 objectAtIndexedSubscript:v86 + 9];
    p_var6->var0[0] = [v88 intValue];

    v89 = [v130 objectForKeyedSubscript:@"CSCCoef"];
    v90 = [v89 objectAtIndexedSubscript:v86 + 9];
    p_var6->var1[0] = [v90 intValue];

    p_var6 = (p_var6 + 2);
  }

  while (!__CFADD__(v86++, 1));
  *sensorConfig->var6.var2 = 0;
  v92 = [v130 objectForKeyedSubscript:@"CSCChromaScale0"];
  sensorConfig->var6.var3[0] = [v92 intValue];

  v93 = [v130 objectForKeyedSubscript:@"CSCChromaScale1"];
  sensorConfig->var6.var3[1] = [v93 intValue];

  v94 = [bConfigCopy objectForKeyedSubscript:@"CCM"];
  v95 = [v94 objectForKeyedSubscript:@"CCMLuxClipLevel"];
  sensorConfig->var6.var4 = [v95 intValue];

  v96 = [bConfigCopy objectForKeyedSubscript:@"CCM"];
  if (v96)
  {
    v97 = 0;
    v98 = sensorConfigCopy->var6.var5[5];
    do
    {
      v99 = [v96 objectForKeyedSubscript:@"Offset"];
      v100 = [v99 objectAtIndexedSubscript:v97];
      *(v98 - 45) = [v100 intValue];

      v101 = [v96 objectForKeyedSubscript:@"X1stOrder"];
      v102 = [v101 objectAtIndexedSubscript:v97];
      *(v98 - 36) = [v102 intValue];

      v103 = [v96 objectForKeyedSubscript:@"Y1stOrder"];
      v104 = [v103 objectAtIndexedSubscript:v97];
      *(v98 - 27) = [v104 intValue];

      v105 = [v96 objectForKeyedSubscript:@"X2ndOrder"];
      v106 = [v105 objectAtIndexedSubscript:v97];
      *(v98 - 18) = [v106 intValue];

      v107 = [v96 objectForKeyedSubscript:@"Y2ndOrder"];
      v108 = [v107 objectAtIndexedSubscript:v97];
      *(v98 - 9) = [v108 intValue];

      v109 = [v96 objectForKeyedSubscript:@"LuxFactor"];
      v110 = [v109 objectAtIndexedSubscript:v97];
      *v98++ = [v110 intValue];

      ++v97;
    }

    while (v97 != 9);
    v111 = [bConfigCopy objectForKeyedSubscript:@"Histogram"];
    v32 = [v111 objectForKeyedSubscript:@"XToCCT"];

    if (v32)
    {
      for (i = 0; ; i = v113 + 1)
      {
        v113 = i;
        if ([v32 count] <= i)
        {
          break;
        }

        v114 = [v32 objectAtIndexedSubscript:i];
        v115 = [v114 objectForKeyedSubscript:@"X"];
        v116 = sensorConfigCopy->var6.var6[v113];
        *v116 = [v115 intValue];

        v117 = [v32 objectAtIndexedSubscript:v113];
        v118 = [v117 objectForKeyedSubscript:@"Y"];
        v116[1] = [v118 intValue];

        v119 = [v32 objectAtIndexedSubscript:v113];
        v120 = [v119 objectForKeyedSubscript:@"CCT"];
        v116[2] = [v120 intValue];
      }

      v121 = [bConfigCopy objectForKeyedSubscript:@"ProjectionPoint"];
      if (v121)
      {
        for (j = 0; ; j = v123 + 1)
        {
          v123 = j;
          if ([v121 count] <= j)
          {
            break;
          }

          v124 = [v121 objectAtIndexedSubscript:j];
          v125 = [v124 objectForKeyedSubscript:@"X"];
          v126 = sensorConfigCopy->var6.var7[v123];
          *v126 = [v125 intValue];

          v127 = [v121 objectAtIndexedSubscript:v123];
          v128 = [v127 objectForKeyedSubscript:@"Y"];
          v126[1] = [v128 intValue];
        }

        v31 = 0;
        v30 = v96;
        v33 = v121;
      }

      else
      {
        FigDebugAssert3();
        v33 = 0;
        v31 = FigSignalErrorAtGM();
        v30 = v96;
      }
    }

    else
    {
      FigDebugAssert3();
      v32 = 0;
      v31 = FigSignalErrorAtGM();
      v30 = v96;
      v33 = 0;
    }
  }

  else
  {
    FigDebugAssert3();
    v30 = 0;
    v31 = FigSignalErrorAtGM();
    v32 = 0;
    v33 = 0;
  }

  v34 = v130;
LABEL_86:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v31;
}

+ (void)calculateNonComboGainsFromComboGains:(unsigned int)gains[3] awbAlgorithm:(CAWBAFEH14 *)algorithm gains:(unsigned int)a5[3]
{
  v12 = COERCE_DOUBLE(vcvt_f32_u32(*gains));
  v24 = v12;
  *&v12 = gains[2];
  v25 = *&v12;
  v23 = 0;
  *v22 = 0;
  CAWBAFE::GetBinIndices(algorithm, &v23 + 1, &v23, &v24, 0, v12, v5, v6, v7, v8);
  CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(algorithm, *(&v23 + 1), v13, v14, v15, v16);
  CAWBAFE::GetInterpolatedCSensorCalGains(algorithm, &v22[1], v22, CCTFromColorRatio);
  LOWORD(v18) = v22[1];
  v19 = (*gains * 4.0) / v18;
  *&v20 = gains[2];
  v21 = *&v20 * 4.0;
  LOWORD(v20) = v22[0];
  *a5 = ((v19 * 4096.0) + 0.5);
  a5[1] = 4096;
  a5[2] = (((v21 / v20) * 4096.0) + 0.5);
}

- (int)process
{
  v3 = MEMORY[0x1EEE9AC00](self);
  v272[2] = 0;
  *v272 = 0;
  *(v3 + 5096) = 0;
  *(v3 + 5112) = 0;
  *(v3 + 5104) = 0;
  *&v271.x = 0;
  *&v271.width = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  bzero(v255, 0x4D10uLL);
  v264 = *(v3 + 5056);
  v265 = *(v3 + 5060);
  v261 = 1;
  v4 = *(v3 + 5064);
  v268 = v4;
  v5 = *(v3 + 5068);
  v269 = v5;
  v256 = v5 + (v4 << 16);
  v259 = 1;
  if (CAWBAFE::GetLargestFaceRect(*(v3 + 16), &v271))
  {
    v6 = (v271.width * 0.4) / 2;
    v8 = v6 + 3;
    v7 = v6 < -3;
    v9 = v6 + 6;
    if (!v7)
    {
      v9 = v8;
    }

    v10 = v9 >> 2;
    v11 = (v271.height * 0.4) / 2;
    v12 = v11 + 3;
    v7 = v11 < -3;
    v13 = v11 + 6;
    if (!v7)
    {
      v13 = v12;
    }

    v14 = v13 & 0xFFFFFFFC;
    v15 = (v271.width * 0.6) / 2;
    v16 = v15 + 3;
    v7 = v15 < -3;
    v17 = v15 + 6;
    if (!v7)
    {
      v17 = v16;
    }

    v18 = v17 >> 2;
    v19 = (v271.height * 0.6) / 2;
    v20 = v19 + 3;
    v7 = v19 < -3;
    v21 = v19 + 6;
    if (!v7)
    {
      v21 = v20;
    }

    v260 = 257;
    v257 = v14 + (v10 << 18);
    v258 = (v21 & 0xFFFFFFFC) + (v18 << 18);
  }

  v270 = 0x800000008000;
  __asm { FMOV            V2.2D, #0.5 }

  v27 = vcvtq_s64_f64(vmulq_f64(*(v3 + 5152), _Q2));
  v28 = vcvtq_s64_f64(vmulq_f64(*(v3 + 5136), _Q2));
  *&_Q2.f64[0] = vmovn_s64(v27);
  v29 = vmovn_s64(v28);
  v266 = v29.i16[0];
  v267 = v29.i16[2];
  v262 = LOWORD(_Q2.f64[0]);
  v263 = WORD2(_Q2.f64[0]);
  *(v3 + 3876) = vuzp1q_s32(v28, v27);
  v252 = 0;
  v253 = 0;
  bytes3 = 0;
  v30 = [*(v3 + 5072) objectForKey:@"tileStats"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_33;
  }

  v31 = [*(v3 + 5072) objectForKeyedSubscript:@"tileStats"];
  v32 = [v31 length];

  if (v32 != 0x10000)
  {
LABEL_33:
    v204 = v2;
    LODWORD(v203) = 0;
LABEL_38:
    FigDebugAssert3();
LABEL_39:
    v54 = 0;
    goto LABEL_40;
  }

  v33 = [*(v3 + 5072) objectForKey:@"windowStats"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_35;
  }

  v34 = [*(v3 + 5072) objectForKeyedSubscript:@"windowStats"];
  v35 = [v34 length];

  if (v35 != 768)
  {
LABEL_35:
    v204 = v2;
    LODWORD(v203) = 0;
    goto LABEL_38;
  }

  v36 = [*(v3 + 5072) objectForKey:@"histStats"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_37;
  }

  v37 = [*(v3 + 5072) objectForKeyedSubscript:@"histStats"];
  v38 = [v37 length];

  if (v38 != 0x4000)
  {
LABEL_37:
    v204 = v2;
    LODWORD(v203) = 0;
    goto LABEL_38;
  }

  CAWBAFE::SetScheme(*(v3 + 16), 1);
  v39 = *(v3 + 16);
  v40 = [*(v3 + 5072) objectForKeyedSubscript:@"tileStats"];
  bytes = [v40 bytes];
  v42 = [*(v3 + 5072) objectForKeyedSubscript:@"windowStats"];
  bytes2 = [v42 bytes];
  v44 = [*(v3 + 5072) objectForKeyedSubscript:@"histStats"];
  CAWBAFE::SetStats(v39, v255, bytes, bytes2, [v44 bytes], 0);

  CAWBAFE::SetFrameRateForHistAWB(*(v3 + 16), *(v3 + 88));
  CAWBAFE::SetSensorClockFreq(*(v3 + 16), *(v3 + 4988));
  CAWBAFE::EstimateCurrentSceneLuxLevels(*(v3 + 16), (v3 + 24));
  CAWBAFE::GetCurrentSceneLuxLevels(*(v3 + 16), v272);
  *(v3 + 320) = *&v272[1];
  *(v3 + 312) = CAWBAFE::GetSceneBrightnessForLux(*(v3 + 16));
  CAWBAFE::SetRgbColorspace(*(v3 + 16), 1);
  v45 = v272[0];
  if (!*(v3 + 4924))
  {
    *(v3 + 4992) = v272[0];
    *(v3 + 4994) = *&v272[1];
  }

  *(v3 + 4998) = v45;
  if (CAWBAFE::GetFDAWBEnable(*(v3 + 16)) && CAWBAFE::GetFDAWBVersion(*(v3 + 16)) == 1)
  {
    v46 = [*(v3 + 5072) objectForKeyedSubscript:@"anstSkinMask"];

    if (v46 && (([*(v3 + 5072) objectForKeyedSubscript:@"anstSkinMask"], v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "length"), v47, v48 == 49152) || -[AWBAlgorithm process].cold.1()))
    {
      v49 = [*(v3 + 5072) objectForKeyedSubscript:@"anstSkinMask"];
      bytes3 = [v49 bytes];

      CAWBAFE::SetSemanticConfidenceMap(*(v3 + 16), &v252);
      *(v3 + 4868) = 0u;
      *(v3 + 4884) = 0u;
      v50 = [*(v3 + 5072) objectForKeyedSubscript:@"FESOutputSize"];
      if ([v50 pointerValue])
      {
        v51 = [*(v3 + 5072) objectForKeyedSubscript:@"FESOutputSize"];
        *(v3 + 4860) = *([v51 pointerValue] + 16);
      }

      else
      {
        *(v3 + 4860) = 0;
      }

      v52 = [*(v3 + 5072) objectForKeyedSubscript:@"FESOutputSize"];
      if ([v52 pointerValue])
      {
        v53 = [*(v3 + 5072) objectForKeyedSubscript:@"FESOutputSize"];
        *(v3 + 4864) = *([v53 pointerValue] + 24);
      }

      else
      {
        *(v3 + 4864) = 0;
      }
    }

    else
    {
      CAWBAFE::SetSemanticAWBEnable(*(v3 + 16), 0);
    }
  }

  v74 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskData"];

  if (v74)
  {
    v75 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskData"];
    bytes4 = [v75 bytes];

    v77 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskSize"];
    if ([v77 pointerValue])
    {
      v78 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskSize"];
      v79 = *([v78 pointerValue] + 16);
    }

    else
    {
      v79 = 0;
    }

    v80 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskSize"];
    if ([v80 pointerValue])
    {
      v81 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskSize"];
      v82 = *([v81 pointerValue] + 24);
    }

    else
    {
      v82 = 0;
    }

    v83 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskData"];
    v84 = [v83 length];

    if (v84 == v82 * v79 || [AWBAlgorithm process])
    {
      v85 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990DA0]];
      [v3 _processSkyMask:bytes4 skyMaskWidth:v79 skyMaskHeight:v82 cropRectFromSourceDict:v85];
    }
  }

  v86 = 1;
  do
  {
    v87 = v86;
    if (*(v3 + 4924) >= 1)
    {
      CAWBAFE::SetSensorClockFreq(*(v3 + 16), *(v3 + 4988));
      CAWBAFE::SetFlashStateForHistAWB(*(v3 + 16), 0, 0, 0, 0);
      CAWBAFE::SetFlashStateForHistAWB(*(v3 + 16), 1, *(v3 + 4992), *(v3 + 4994), *(v3 + 4996));
    }

    (*(**(v3 + 16) + 32))(*(v3 + 16), v3 + 24);
    v88 = *(v3 + 4924);
    if (v88 >= 1 && *(v3 + 4937))
    {
      v89 = *(v3 + 16);
      v90 = *(v3 + 4928);
      v91 = *(v3 + 4932);
      v92 = *(v3 + 4952);
      v244[0] = *(v3 + 4936);
      v244[1] = v92;
      v244[2] = *(v3 + 4968);
      v245 = *(v3 + 4984);
      (*(*v89 + 128))(v89, v91, v244, v88, v90);
    }

    (*(**(v3 + 16) + 64))(*(v3 + 16), &[AWBAlgorithm process]::pstAWBMetaData, 0);
    v86 = 0;
  }

  while ((v87 & 1) != 0);
  if ((byte_1EDD77BC4 & 1) != 0 && *(v3 + 5000) == 1)
  {
    *(v3 + 5120) = [*(v3 + 5008) unsignedIntValue];
    *(v3 + 5124) = [*(v3 + 5016) unsignedIntValue];
    *(v3 + 5128) = [*(v3 + 5024) unsignedIntValue];
    unsignedIntValue = [*(v3 + 5032) unsignedIntValue];
    unsignedIntValue2 = [*(v3 + 5040) unsignedIntValue];
    unsignedIntValue3 = [*(v3 + 5048) unsignedIntValue];
    v96 = word_1EDD77BC0;
    v97 = *(v3 + 5120);
    v98 = *(v3 + 5128);
    v99 = unsignedIntValue | (unsignedIntValue2 << 32);
    v100 = unsignedIntValue3;
    v101 = word_1EDD77BBE | 0x400000000000;
    v102 = v3;
  }

  else
  {
    if ([*(v3 + 5080) BOOLValue])
    {
      *(v3 + 5120) = word_1EDD77C50;
      *(v3 + 5124) = word_1EDD77C52;
      v98 = word_1EDD77C56;
      *(v3 + 5128) = word_1EDD77C56;
      v103 = word_1EDD77C70;
      v96 = word_1EDD77C72;
    }

    else
    {
      *(v3 + 5120) = word_1EDD7789E;
      *(v3 + 5124) = word_1EDD778A0;
      v98 = word_1EDD778A4;
      *(v3 + 5128) = word_1EDD778A4;
      v103 = word_1EDD77BBE;
      v96 = word_1EDD77BC0;
    }

    v97 = *(v3 + 5120);
    v101 = v103 | 0x400000000000;
    v102 = v3;
    v99 = 0;
    v100 = 0;
  }

  [v102 _calculateComboGainsAndNormalizedGainsFromAWBGains:v97 awbComboGains:v98 colorCalGains:{v99, v100, v101, v96}];
  if (!*(v3 + 5088))
  {
    goto LABEL_39;
  }

  if ((byte_1EDD77BC4 & 1) == 0)
  {
    v125 = 0;
    v126 = &unk_1EDD77C74;
    do
    {
      bOOLValue = [*(v3 + 5080) BOOLValue];
      v128 = v126 - 227;
      if (bOOLValue)
      {
        v128 = v126;
      }

      *(v244 + v125) = vcvts_n_f32_s32(*v128, 0xCuLL);
      *(&v224 + v125) = vcvts_n_f32_s32(*(v126 - 209), 0xCuLL);
      v126 += 2;
      v125 += 4;
    }

    while (v125 != 36);
    v217 = [MEMORY[0x1E695DEF0] dataWithBytes:v244 length:36];
    v220 = [MEMORY[0x1E695DEF0] dataWithBytes:&v224 length:36];
    [*(v3 + 5088) setObject:v217 forKeyedSubscript:*MEMORY[0x1E6990F98]];
    v129 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77BC2];
    [*(v3 + 5088) setObject:v129 forKeyedSubscript:*MEMORY[0x1E6990F48]];

    v130 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77BB8];
    [*(v3 + 5088) setObject:v130 forKeyedSubscript:*MEMORY[0x1E6990F90]];

    v131 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5120)];
    [*(v3 + 5088) setObject:v131 forKeyedSubscript:*MEMORY[0x1E6990F10]];

    v132 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5124)];
    [*(v3 + 5088) setObject:v132 forKeyedSubscript:*MEMORY[0x1E6990F08]];

    v133 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5128)];
    [*(v3 + 5088) setObject:v133 forKeyedSubscript:*MEMORY[0x1E6990F00]];

    v134 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5120)];
    [*(v3 + 5088) setObject:v134 forKeyedSubscript:*MEMORY[0x1E6990F20]];

    v135 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5124)];
    [*(v3 + 5088) setObject:v135 forKeyedSubscript:*MEMORY[0x1E6990F18]];

    v136 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5128)];
    [*(v3 + 5088) setObject:v136 forKeyedSubscript:*MEMORY[0x1E6990EE0]];

    v137 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5096)];
    [*(v3 + 5088) setObject:v137 forKeyedSubscript:*MEMORY[0x1E6990EF8]];

    v138 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5100)];
    [*(v3 + 5088) setObject:v138 forKeyedSubscript:*MEMORY[0x1E6990EF0]];

    v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 5104)];
    [*(v3 + 5088) setObject:v139 forKeyedSubscript:*MEMORY[0x1E6990EE8]];

    v140 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6991038]];
    bOOLValue2 = [v140 BOOLValue];

    if (bOOLValue2)
    {
      _updateHRGainDownRatioMetadata = [v3 _updateHRGainDownRatioMetadata];
      if (_updateHRGainDownRatioMetadata)
      {
        v204 = v2;
        LODWORD(v203) = _updateHRGainDownRatioMetadata;
        FigDebugAssert3();
        FigSignalErrorAtGM();
      }
    }

    v143 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{word_1EDD77B79, v203, v204}];
    [*(v3 + 5088) setObject:v143 forKeyedSubscript:*MEMORY[0x1E6990F38]];

    v144 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:(word_1EDD77B7D + word_1EDD77B7B) >> 1];
    [*(v3 + 5088) setObject:v144 forKeyedSubscript:*MEMORY[0x1E6990F30]];

    v145 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7F];
    [*(v3 + 5088) setObject:v145 forKeyedSubscript:*MEMORY[0x1E6990F28]];

    v146 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77C00];
    [*(v3 + 5088) setObject:v146 forKeyedSubscript:*MEMORY[0x1E6990F40]];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (dictionary)
    {
      LODWORD(v147) = dword_1EDD77B84;
      v148 = [MEMORY[0x1E696AD98] numberWithFloat:v147];
      [dictionary setObject:v148 forKeyedSubscript:@"FlashProjMixWeighting"];

      v149 = MEMORY[0x1E695DEC8];
      v150 = [MEMORY[0x1E696AD98] numberWithInt:dword_1EDD77C94];
      v151 = [MEMORY[0x1E696AD98] numberWithInt:dword_1EDD77C98];
      v152 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77C9C];
      v153 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77CA0];
      v154 = [v149 arrayWithObjects:{v150, v151, v152, v153, 0}];
      [dictionary setObject:v154 forKeyedSubscript:@"TileStatsRegionInRaw"];

      v155 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77C00];
      [dictionary setObject:v155 forKeyedSubscript:@"FdAWBChistMixFactor"];

      v156 = MEMORY[0x1E695DEC8];
      v157 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B79];
      v158 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7B];
      v159 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7D];
      v160 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7F];
      v161 = [v156 arrayWithObjects:{v157, v158, v159, v160, 0}];
      [dictionary setObject:v161 forKeyedSubscript:@"AwbGainsSkinOnly"];

      v162 = MEMORY[0x1E695DEC8];
      v163 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B88];
      v164 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8A];
      v165 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8C];
      v166 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8E];
      v167 = [v162 arrayWithObjects:{v163, v164, v165, v166, 0}];
      [dictionary setObject:v167 forKeyedSubscript:@"AwbGainsFlashProj"];

      v168 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77B74];
      [dictionary setObject:v168 forKeyedSubscript:@"AwbColorspace"];

      v169 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77B82];
      v170 = dictionary;
      [dictionary setObject:v169 forKeyedSubscript:@"IsLEDMainFlashforAWB"];

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      if (dictionary2)
      {
        v251 = 0.0;
        *&v172 = CAWBAFE::GetMixedLightingScore(*(v3 + 16), &v251);
        v250 = 0;
        CAWBAFE::GetSkyCCT(*(v3 + 16), &v250, v172, v173, v174, v175, v176);
        v177 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77BC4];
        [dictionary2 setObject:v177 forKeyedSubscript:@"UsePrevFrameWP"];

        *&v178 = v251;
        v179 = [MEMORY[0x1E696AD98] numberWithFloat:v178];
        [dictionary2 setObject:v179 forKeyedSubscript:@"MixedLightingScore"];

        v180 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v250];
        [dictionary2 setObject:v180 forKeyedSubscript:@"SkyCCT"];

        [dictionary2 setObject:v220 forKeyedSubscript:@"StrobeWhitePointCCM"];
        *type = 0;
        v249 = 0;
        v246 = 0;
        *v247 = 0;
        CAWBAFE::GetFaceAssistedAWBResultsForMatchProvidedSkinGains(*(v3 + 16), &v249, type, v247, &v247[1], &v246 + 1, &v246);
        LODWORD(v181) = v249;
        v182 = [MEMORY[0x1E696AD98] numberWithFloat:v181];
        [dictionary2 setObject:v182 forKeyedSubscript:@"wpRgLogRatio"];

        LODWORD(v183) = HIDWORD(v249);
        v184 = [MEMORY[0x1E696AD98] numberWithFloat:v183];
        [dictionary2 setObject:v184 forKeyedSubscript:@"wpBgLogRatio"];

        LODWORD(v185) = *type;
        v186 = [MEMORY[0x1E696AD98] numberWithFloat:v185];
        [dictionary2 setObject:v186 forKeyedSubscript:@"wpSkinRgLogRatio"];

        LODWORD(v187) = *&type[4];
        v188 = [MEMORY[0x1E696AD98] numberWithFloat:v187];
        [dictionary2 setObject:v188 forKeyedSubscript:@"wpSkinBgLogRatio"];

        v189 = [MEMORY[0x1E696AD98] numberWithInt:v247[1]];
        [dictionary2 setObject:v189 forKeyedSubscript:@"continuousFDTimes"];

        v190 = [MEMORY[0x1E696AD98] numberWithInt:v247[0]];
        [dictionary2 setObject:v190 forKeyedSubscript:@"skinColorSampleNum"];

        LODWORD(v191) = HIDWORD(v246);
        v192 = [MEMORY[0x1E696AD98] numberWithFloat:v191];
        [dictionary2 setObject:v192 forKeyedSubscript:@"skinColorSampleVariance"];

        LODWORD(v193) = v246;
        v194 = [MEMORY[0x1E696AD98] numberWithFloat:v193];
        [dictionary2 setObject:v194 forKeyedSubscript:@"minDistSkinToWhiteMapping"];

        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        v201 = v217;
        if (dictionary3)
        {
          *&v196 = *(v3 + 5120) * 0.00024414;
          *&v198 = vcvts_n_f32_u32(word_1EDD77B79, 0xCuLL);
          *&v197 = *(v3 + 5128) * 0.00024414;
          *&v199 = vcvts_n_f32_u32(word_1EDD77B7F, 0xCuLL);
          *&v200 = dword_1EDD77BB8;
          v202 = [v3 calculateInternalAWBMetadataForMIWB:dictionary3 bGain:v196 rSkinGain:v197 bSkinGain:v198 cct:v199 internalMetadata:v200];
          if (v202)
          {
            v205 = v2;
            LODWORD(v203) = v202;
            FigDebugAssert3();
            v201 = v217;
            v54 = FigSignalErrorAtGM();
            v170 = dictionary;
          }

          else
          {
            v54 = 0;
          }

          [*(v3 + 5088) setObject:v170 forKeyedSubscript:{@"SpatialCCMOutputMetadata", v203, v205}];
          [*(v3 + 5088) setObject:dictionary2 forKeyedSubscript:@"AwbOutputMetadata"];
          [*(v3 + 5088) setObject:dictionary3 forKeyedSubscript:@"MIWBOutputMetadata"];
        }

        else
        {
          v204 = v2;
          LODWORD(v203) = 0;
          FigDebugAssert3();
          v54 = FigSignalErrorAtGM();
        }

        goto LABEL_40;
      }

      v204 = v2;
      LODWORD(v203) = 0;
      FigDebugAssert3();
      v54 = FigSignalErrorAtGM();
    }

    else
    {
      v204 = v2;
      LODWORD(v203) = 0;
      FigDebugAssert3();
      v54 = FigSignalErrorAtGM();
    }

    v124 = v217;
LABEL_108:

    goto LABEL_40;
  }

  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  v219 = dictionary4;
  if (dictionary4)
  {
    v105 = dictionary4;
    v106 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77BC4];
    [v105 setObject:v106 forKeyedSubscript:@"UsePrevFrameWP"];

    v107 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F98]];
    [v105 setObject:v107 forKeyedSubscript:@"StrobeWhitePointCCM"];

    v108 = [*(v3 + 5088) objectForKeyedSubscript:@"AwbOutputMetadata"];

    if (!v108)
    {
      [*(v3 + 5088) setObject:v105 forKeyedSubscript:@"AwbOutputMetadata"];
    }

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    if (dictionary5)
    {
      v109 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F20]];
      intValue = [v109 intValue];
      v111 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990EE0]];
      intValue2 = [v111 intValue];
      v113 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F38]];
      intValue3 = [v113 intValue];
      v115 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F28]];
      intValue4 = [v115 intValue];
      v117 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F90]];
      intValue5 = [v117 intValue];
      *&v119 = vcvts_n_f32_s32(intValue, 0xCuLL);
      *&v120 = vcvts_n_f32_s32(intValue2, 0xCuLL);
      *&v121 = vcvts_n_f32_s32(intValue3, 0xCuLL);
      *&v122 = vcvts_n_f32_s32(intValue4, 0xCuLL);
      *&v123 = intValue5;
      v54 = [v3 calculateInternalAWBMetadataForMIWB:dictionary5 bGain:v119 rSkinGain:v120 bSkinGain:v121 cct:v122 internalMetadata:v123];

      if (v54)
      {
        LODWORD(v203) = v54;
        FigDebugAssert3();
        v54 = FigSignalErrorAtGM();
        [*(v3 + 5088) setObject:dictionary5 forKeyedSubscript:{@"MIWBOutputMetadata", v203, v2}];
      }

      else
      {
        [*(v3 + 5088) setObject:dictionary5 forKeyedSubscript:{@"MIWBOutputMetadata", v203, v204}];
      }
    }

    else
    {
      v204 = v2;
      LODWORD(v203) = 0;
      FigDebugAssert3();
      v54 = FigSignalErrorAtGM();
    }

    v124 = v219;
    goto LABEL_108;
  }

  v204 = v2;
  LODWORD(v203) = 0;
  FigDebugAssert3();
  v54 = FigSignalErrorAtGM();
LABEL_40:
  if (dword_1EDD78228)
  {
    LODWORD(v249) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v56 = v249;
    v57 = v55;
    if (os_log_type_enabled(v57, type[0]))
    {
      v58 = v56;
    }

    else
    {
      v58 = v56 & 0xFFFFFFFE;
    }

    if (v58)
    {
      v218 = v57;
      v216 = [*(v3 + 5072) objectForKey:@"tileStats"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v208 = [*(v3 + 5072) objectForKeyedSubscript:@"tileStats"];
        v60 = [v208 length] == 0x10000;
      }

      else
      {
        v60 = 0;
      }

      v215 = [*(v3 + 5072) objectForKey:{@"windowStats", v203, v204}];
      objc_opt_class();
      v61 = objc_opt_isKindOfClass();
      v212 = v60;
      if (v61)
      {
        v207 = [*(v3 + 5072) objectForKeyedSubscript:@"windowStats"];
        v210 = [v207 length] == 768;
      }

      else
      {
        v210 = 0;
      }

      [*(v3 + 5072) objectForKey:@"histStats"];
      v213 = v214 = v61;
      objc_opt_class();
      v221 = objc_opt_isKindOfClass();
      if (v221)
      {
        v206 = [*(v3 + 5072) objectForKeyedSubscript:@"histStats"];
        v62 = [v206 length] == 0x4000;
      }

      else
      {
        v62 = 0;
      }

      v211 = [*(v3 + 5072) objectForKeyedSubscript:@"anstSkinMask"];
      v63 = [v211 length] != 0;
      v64 = [*(v3 + 5072) objectForKeyedSubscript:@"skyMaskData"];
      v209 = v54;
      v65 = [v64 length] != 0;
      v66 = byte_1EDD77BC4;
      v67 = [*(v3 + 5088) objectForKeyedSubscript:@"SpatialCCMOutputMetadata"];
      v68 = [*(v3 + 5088) objectForKeyedSubscript:@"AwbOutputMetadata"];
      v69 = [*(v3 + 5088) objectForKeyedSubscript:@"MIWBOutputMetadata"];
      v224 = 136317442;
      v225 = "[AWBAlgorithm process]";
      v226 = 1024;
      v227 = v212;
      v228 = 1024;
      v229 = v210;
      v230 = 1024;
      v231 = v62;
      v232 = 1024;
      v233 = v63;
      v234 = 1024;
      v235 = v65;
      v236 = 1024;
      v237 = v66;
      v238 = 1024;
      v239 = v67 != 0;
      v240 = 1024;
      v241 = v68 != 0;
      v242 = 1024;
      v243 = v69 != 0;
      v57 = v218;
      _os_log_send_and_compose_impl();

      if (v221)
      {
      }

      v54 = v209;
      if (v214)
      {
      }

      if (isKindOfClass)
      {
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v54)
  {
    FigDebugAssert3();
    if (dword_1EDD78228)
    {
      LODWORD(v249) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v72 = v249;
      if (os_log_type_enabled(v71, type[0]))
      {
        v73 = v72;
      }

      else
      {
        v73 = v72 & 0xFFFFFFFE;
      }

      if (v73)
      {
        v224 = 136315394;
        v225 = "[AWBAlgorithm process]";
        v226 = 1024;
        v227 = v54;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v54;
}

- (int)_processSkyMask:(void *)mask skyMaskWidth:(int)width skyMaskHeight:(int)height cropRectFromSourceDict:(id)dict
{
  dictCopy = dict;
  v11 = dictCopy;
  if (mask)
  {
    if (dictCopy && CGRectMakeWithDictionaryRepresentation(dictCopy, &rect))
    {
      v12 = (rect.size.width * width);
      v13 = (rect.size.height * height);
      v14 = (rect.origin.y * height);
      v15 = v13 * v12;
      if (v14 < v13)
      {
        v16 = 0;
        v17 = (rect.origin.x * width);
        v18 = v14;
        v19 = mask + v17 + v14 * width;
        do
        {
          v20 = v12 - v17;
          v21 = v19;
          if (v17 < v12)
          {
            do
            {
              v22 = *v21++;
              if (v22 > 0x32)
              {
                ++v16;
              }

              --v20;
            }

            while (v20);
          }

          ++v18;
          v19 += width;
        }

        while (v18 != v13);
        goto LABEL_20;
      }
    }

    else
    {
      v15 = height * width;
      if (height * width >= 1)
      {
        v16 = 0;
        v23 = (height * width);
        do
        {
          v24 = *mask;
          mask = mask + 1;
          if (v24 > 0x32)
          {
            ++v16;
          }

          --v23;
        }

        while (v23);
        goto LABEL_20;
      }
    }

    v16 = 0;
LABEL_20:
    v25 = (v16 / v15) >= 0.005;
    goto LABEL_21;
  }

  v25 = 2;
LABEL_21:
  v28 = v25;
  CAWBAFE::setUnagiSkyDetected(self->_AWBAlgorithmObj, &v28);

  return 0;
}

- (int)_calculateComboGainsAndNormalizedGainsFromAWBGains:(id)gains awbComboGains:(id)comboGains colorCalGains:(id)calGains
{
  var1 = comboGains.var1;
  self->_awbGains = gains;
  v5.i64[0] = *&comboGains.var0;
  v5.i32[2] = comboGains.var2;
  v7 = vtstq_s32(v5, v5);
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0)
  {
    if ((calGains.var0 * gains.var0) >> 14 >= 0xFFFF)
    {
      comboGains.var0 = 0xFFFF;
    }

    else
    {
      comboGains.var0 = (calGains.var0 * gains.var0) >> 14;
    }

    if ((calGains.var2 * gains.var2) >> 14 >= 0xFFFF)
    {
      comboGains.var2 = 0xFFFF;
    }

    else
    {
      comboGains.var2 = (calGains.var2 * gains.var2) >> 14;
    }

    var1 = gains.var1;
  }

  self->_awbComboGains.rGain = comboGains.var0;
  self->_awbComboGains.gGain = var1;
  self->_awbComboGains.bGain = comboGains.var2;
  if (var1 <= comboGains.var2)
  {
    var2 = comboGains.var2;
  }

  else
  {
    var2 = var1;
  }

  if (var1 >= comboGains.var2)
  {
    v9 = comboGains.var2;
  }

  else
  {
    v9 = var1;
  }

  if (comboGains.var0 > var2)
  {
    LOWORD(var2) = comboGains.var0;
  }

  if (comboGains.var0 < v9)
  {
    LOWORD(v9) = comboGains.var0;
  }

  v10 = ((var2 << 12) / v9);
  self->_awbComboGainsNormalized.rGain = ((comboGains.var0 << 12) / v10);
  self->_awbComboGainsNormalized.gGain = ((var1 << 12) / v10);
  self->_awbComboGainsNormalized.bGain = ((comboGains.var2 << 12) / v10);
  return 0;
}

- (int)_updateHRGainDownRatioMetadata
{
  v3 = *MEMORY[0x1E6990EF8];
  v4 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];

  if (!v4)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v5 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v3];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = *MEMORY[0x1E6990EF0];
  v8 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:*MEMORY[0x1E6990EF0]];

  if (!v8)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v9 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v7];
  unsignedIntValue2 = [v9 unsignedIntValue];

  v11 = *MEMORY[0x1E6990EE8];
  v12 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];

  if (!v12)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v13 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v11];
  unsignedIntValue3 = [v13 unsignedIntValue];

  if (unsignedIntValue3 <= unsignedIntValue)
  {
    v17 = unsignedIntValue;
  }

  else
  {
    v17 = unsignedIntValue3;
  }

  if (unsignedIntValue2 > v17)
  {
    v17 = unsignedIntValue2;
  }

  if (v17 <= 0xFFF)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v16.i64[0] = __PAIR64__(unsignedIntValue2, unsignedIntValue);
  v16.i32[2] = unsignedIntValue3;
  v18 = vaddq_s32(vdupq_n_s32(v17 >> 1), vshlq_n_s32(v16, 0xCuLL));
  v18.i32[0] /= v17;
  v18.i32[1] /= v17;
  v18.i32[2] /= v17;
  v19 = vcvtq_f32_u32(v18);
  v20 = fmaxf(fmaxf(v19.f32[0], v19.f32[2]), v19.f32[1]) / fminf(fminf(v19.f32[0], v19.f32[2]), v19.f32[1]);
  if (v20 < 1.0)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  LODWORD(v15) = llroundf(v20 * 4096.0);
  v21 = [MEMORY[0x1E696AD98] numberWithInt:v15];
  v22 = *MEMORY[0x1E6991040];
  [(NSMutableDictionary *)self->_outputMetadata setObject:v21 forKeyedSubscript:*MEMORY[0x1E6991040]];

  v23 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v22];

  if (!v23)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  return 0;
}

+ (int)getColorCalibrationsUsingIdealColorCalbrations:(id)calbrations absoluteColorCalibrations:(id)calibrations colorCalibrationsOut:(id *)out awbConfig:(id)config
{
  calbrations;
  calibrations;
  configCopy = config;
  operator new();
}

+ (int)calculateSTRBKeyFromWideCamera:(id *)camera moduleConfig:(id)config secondaryModuleConfig:(id)moduleConfig
{
  config;
  moduleConfig;
  operator new();
}

+ (int)calculateSTRBKeyFromWideCameraLatticeModel:(id *)model moduleConfig:(id)config absoluteColorCalibrations:(id)calibrations secondaryModuleConfig:(id)moduleConfig secondaryAbsoluteColorCalibrations:(id)colorCalibrations
{
  configCopy = config;
  calibrations;
  moduleConfigCopy = moduleConfig;
  colorCalibrations;
  operator new();
}

+ (int)translateAWBGainsToSecondaryPortType:(id)type cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo primaryRGain:(float)gain primaryBGain:(float)self0 secondaryChannelID:(unsigned int)self1 secondaryRGain:(float *)self2 secondaryBGain:(float *)self3
{
  type;
  info;
  metadata;
  rect;
  config;
  cameraInfo;
  operator new();
}

+ (int)getInternalAWBMetadataForMIWB:(id)b cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo
{
  bCopy = b;
  infoCopy = info;
  metadataCopy = metadata;
  rectCopy = rect;
  configCopy = config;
  cameraInfoCopy = cameraInfo;
  LODWORD(v21) = +[FWPlatformIDUtilities getFWPlatformID];
  v19 = [AWBAlgorithm getInternalAWBMetadataForMIWB:bCopy cameraInfo:infoCopy metadata:metadataCopy validRect:rectCopy secondaryModuleConfig:configCopy secondaryCameraInfo:cameraInfoCopy platformID:v21];

  return v19;
}

+ (int)getInternalAWBMetadataForMIWB:(id)b cameraInfo:(id)info metadata:(id)metadata validRect:(id)rect secondaryModuleConfig:(id)config secondaryCameraInfo:(id)cameraInfo platformID:(int)d
{
  bCopy = b;
  infoCopy = info;
  metadataCopy = metadata;
  rectCopy = rect;
  configCopy = config;
  cameraInfoCopy = cameraInfo;
  v39 = 0;
  v38 = 0;
  [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990F20] defaultValue:4096 found:&v38];
  if (v38)
  {
    [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990EE0] defaultValue:4096 found:&v38];
    if (v38 == 1)
    {
      v32 = *MEMORY[0x1E6990E20];
      v18 = [metadataCopy objectForKeyedSubscript:?];

      if (v18)
      {
        v20 = [metadataCopy objectForKeyedSubscript:v32];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E6990E30]];
          v23 = v22;
          if (v22)
          {
            v37 = 0;
            v24 = [v22 cmi_intValueForKey:*MEMORY[0x1E6990F38] defaultValue:4096 found:&v37];
            v36 = 0;
            v25 = [v23 cmi_intValueForKey:*MEMORY[0x1E6990F28] defaultValue:4096 found:&v36];
            if (v37)
            {
              if (cameraInfoCopy)
              {
                if (configCopy)
                {
                  if (v36)
                  {
                    *&v26 = v24;
                    *&v27 = v25;
                    LODWORD(v30) = 4;
                    v28 = [AWBAlgorithm translateAWBGainsToSecondaryPortType:configCopy cameraInfo:cameraInfoCopy metadata:metadataCopy validRect:rectCopy secondaryModuleConfig:bCopy secondaryCameraInfo:infoCopy primaryRGain:v26 primaryBGain:v27 secondaryChannelID:v30 secondaryRGain:&v39 + 4 secondaryBGain:&v39];
                    if (v28)
                    {
                      v31 = v9;
                      LODWORD(v30) = v28;
                      FigDebugAssert3();
                    }
                  }
                }
              }
            }
          }
        }
      }

      LODWORD(v19) = HIDWORD(v39);
      if (*(&v39 + 1) != 0.0 || (*(&v39 + 1) = [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990F38] defaultValue:4096 found:{&v38, v19}], v38 == 1))
      {
        LODWORD(v19) = v39;
        if (*&v39 != 0.0 || (*&v19 = [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990F28] defaultValue:4096 found:{&v38, v19}], *&v39 = *&v19, v38 == 1))
        {
          [metadataCopy cmi_intValueForKey:*MEMORY[0x1E6990F90] defaultValue:6500 found:{&v38, v19, v30, v31}];
          if (v38 == 1)
          {
            *&v39 = *&v39 * 0.00024414;
            *(&v39 + 1) = *(&v39 + 1) * 0.00024414;
            operator new();
          }
        }
      }
    }
  }

  return 0;
}

+ (int)encodeSetFileIDForModuleConfig:(id)config setFileID:(unsigned int *)d
{
  configCopy = config;
  v14 = 0;
  v6 = [configCopy objectForKeyedSubscript:@"SetFile"];
  v7 = [v6 objectForKeyedSubscript:@"Origin"];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    v9 = v8;
    if (v8)
    {
      [v8 setScanLocation:0];
      [v9 scanHexInt:&v14 + 4];
      [v9 setScanLocation:{objc_msgSend(v7, "rangeOfString:", @"_"}];
      [v9 scanHexInt:&v14];
      v10 = BYTE1(v14) << 8;
      LODWORD(v14) = v10;
      if (d)
      {
        v11 = 0;
        *d = (HIDWORD(v14) >> 8) | (v10 << 8) | (BYTE4(v14) << 8);
      }

      else
      {
        FigDebugAssert3();
        v11 = FigSignalErrorAtGM();
      }

      v12 = v9;
    }

    else
    {
      FigDebugAssert3();
      v11 = FigSignalErrorAtGM();
      v12 = 0;
    }
  }

  else
  {
    FigDebugAssert3();
    v12 = 0;
    v11 = FigSignalErrorAtGM();
  }

  return v11;
}

- (void)dealloc
{
  AWBAlgorithmObj = self->_AWBAlgorithmObj;
  if (AWBAlgorithmObj)
  {
    (*(AWBAlgorithmObj->var0 + 1))(AWBAlgorithmObj, a2);
  }

  self->_AWBAlgorithmObj = 0;
  v4.receiver = self;
  v4.super_class = AWBAlgorithm;
  [(AWBAlgorithm *)&v4 dealloc];
}

- (CGRect)tileStatsROIRect
{
  x = self->_tileStatsROIRect.origin.x;
  y = self->_tileStatsROIRect.origin.y;
  width = self->_tileStatsROIRect.size.width;
  height = self->_tileStatsROIRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbComboGains
{
  bGain = self->_awbComboGains.bGain;
  v3 = *&self->_awbComboGains.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbComboGainsNormalized
{
  bGain = self->_awbComboGainsNormalized.bGain;
  v3 = *&self->_awbComboGainsNormalized.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

- ($938B03310D06493B2963E5A84CB75A7E)awbGains
{
  bGain = self->_awbGains.bGain;
  v3 = *&self->_awbGains.rGain;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = bGain;
  return result;
}

- (id).cxx_construct
{
  *(self + 315) = 0u;
  *(self + 314) = 0u;
  *(self + 313) = 0u;
  return self;
}

- (uint64_t)translateAWBGainsToSecondaryChannelID:(_DWORD *)a1 secondaryChannelID:secondaryConfig:secondaryAWBParams:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_updateHRGainDownRatioMetadata
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *self = result;
  return result;
}

@end