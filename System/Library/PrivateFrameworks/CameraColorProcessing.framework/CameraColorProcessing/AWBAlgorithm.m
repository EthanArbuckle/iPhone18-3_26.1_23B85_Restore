@interface AWBAlgorithm
+ (int)awbSensorCalibrationsLoad:(id)a3 idealColorCalibrations:(id)a4 to:(id)a5;
+ (int)calculateSTRBKeyFromWideCamera:(id *)a3 moduleConfig:(id)a4 secondaryModuleConfig:(id)a5;
+ (int)calculateSTRBKeyFromWideCameraLatticeModel:(id *)a3 moduleConfig:(id)a4 absoluteColorCalibrations:(id)a5 secondaryModuleConfig:(id)a6 secondaryAbsoluteColorCalibrations:(id)a7;
+ (int)doAWBConfigLoad:(id)a3 to:(id)a4;
+ (int)encodeSetFileIDForModuleConfig:(id)a3 setFileID:(unsigned int *)a4;
+ (int)getColorCalibrationsUsingIdealColorCalbrations:(id)a3 absoluteColorCalibrations:(id)a4 colorCalibrationsOut:(id *)a5 awbConfig:(id)a6;
+ (int)getInternalAWBMetadataForMIWB:(id)a3 cameraInfo:(id)a4 metadata:(id)a5 validRect:(id)a6 secondaryModuleConfig:(id)a7 secondaryCameraInfo:(id)a8;
+ (int)getInternalAWBMetadataForMIWB:(id)a3 cameraInfo:(id)a4 metadata:(id)a5 validRect:(id)a6 secondaryModuleConfig:(id)a7 secondaryCameraInfo:(id)a8 platformID:(int)a9;
+ (int)populateSlaveConfigWithModuleConfigIfColorMatchingModelExistsInPrimaryAWBConfig:(id)a3 secondaryAWBConfig:(id)a4 secondaryIdealColorCals:(id)a5 secondaryAbsoluteColorCals:(id)a6 secondarySetFileID:(unsigned int)a7 secondarySensorConfig:(SensorConfigAWBParams *)a8;
+ (int)translateAWBGainsToSecondaryPortType:(id)a3 cameraInfo:(id)a4 metadata:(id)a5 validRect:(id)a6 secondaryModuleConfig:(id)a7 secondaryCameraInfo:(id)a8 primaryRGain:(float)a9 primaryBGain:(float)a10 secondaryChannelID:(unsigned int)a11 secondaryRGain:(float *)a12 secondaryBGain:(float *)a13;
+ (void)calculateNonComboGainsFromComboGains:(unsigned int)a3[3] awbAlgorithm:(CAWBAFEH14 *)a4 gains:(unsigned int)a5[3];
- ($938B03310D06493B2963E5A84CB75A7E)awbComboGains;
- ($938B03310D06493B2963E5A84CB75A7E)awbComboGainsNormalized;
- ($938B03310D06493B2963E5A84CB75A7E)awbGains;
- (AWBAlgorithm)initWithAWBObject:(id)a3;
- (AWBAlgorithm)initWithMetalContext:(id)a3 platformID:(int)a4;
- (CGRect)tileStatsROIRect;
- (id).cxx_construct;
- (int)_calculateComboGainsAndNormalizedGainsFromAWBGains:(id)a3 awbComboGains:(id)a4 colorCalGains:(id)a5;
- (int)_processSkyMask:(void *)a3 skyMaskWidth:(int)a4 skyMaskHeight:(int)a5 cropRectFromSourceDict:(id)a6;
- (int)_updateHRGainDownRatioMetadata;
- (int)awbConfigLoad:(id)a3 to:(CAWBAFE *)a4;
- (int)calculateEIT:(id)a3 result:(unint64_t *)a4;
- (int)calculateInternalAWBMetadataForMIWB:(float)a3 bGain:(float)a4 rSkinGain:(float)a5 bSkinGain:(float)a6 cct:(float)a7 internalMetadata:(id)a8;
- (int)configFaceMetadata:(id)a3 awbParams:(id)a4;
- (int)configFallbackMetadata:(id)a3;
- (int)configFlashRFCMetadata:(id)a3 cameraInfo:(id)a4 moduleConfig:(id)a5;
- (int)configFlickerDetectionMetadata:(id)a3 moduleConfig:(id)a4;
- (int)configPortTypeMetadata:(id)a3;
- (int)configWithModuleConfig:(id)a3 metadata:(id)a4 cameraInfo:(id)a5 awbParams:(id)a6;
- (int)initTuningParameters:(id)a3;
- (int)process;
- (int)translateAWBGainsToSecondaryChannelID:(unsigned int)a3[3] secondaryChannelID:(unsigned int)a4 secondaryConfig:(SensorConfigAWBParams *)a5 secondaryAWBParams:(sSlaveCameraAWBParam *)a6;
- (uint64_t)_updateHRGainDownRatioMetadata;
- (void)dealloc;
@end

@implementation AWBAlgorithm

- (AWBAlgorithm)initWithMetalContext:(id)a3 platformID:(int)a4
{
  v6 = a3;
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

  if (v6)
  {
    objc_storeStrong(&v8->_metalContext, a3);
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

- (AWBAlgorithm)initWithAWBObject:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v10.receiver = self;
  v10.super_class = AWBAlgorithm;
  v6 = [(AWBAlgorithm *)&v10 init];
  if (v6 && (v7 = [v4 pointerValue], (v6->_AWBAlgorithmObj = v7) != 0))
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

- (int)configWithModuleConfig:(id)a3 metadata:(id)a4 cameraInfo:(id)a5 awbParams:(id)a6
{
  v9 = a3;
  v96 = a4;
  v88 = a5;
  v91 = a6;
  v87 = v9;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (![v96 count])
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
  v10 = [v91 digitalFlash];
  digitalFlash = self->_digitalFlash;
  self->_digitalFlash = v10;

  *&self->_numTilesX = 0x2000000020;
  v107[0] = 0;
  [v96 cmi_floatValueForKey:*MEMORY[0x1E6991090] defaultValue:v107 found:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0) | 0x2000000000)];
  self->_sMetaData.ae.luxLevel = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v13 doubleValue];
  *&v14 = v14;
  self->_sMetaData.ae.luxLevel = *&v14;

  if ((v107[0] & 1) == 0 || (self->_sMetaData.ae.gainDigi.v16 = [v96 cmi_intValueForKey:*MEMORY[0x1E6990CD8] defaultValue:1 found:v107], (v107[0] & 1) == 0) || (self->_sMetaData.ae.gainAnal.v16 = objc_msgSend(v96, "cmi_intValueForKey:defaultValue:found:", *MEMORY[0x1E6990CC8], 1, v107), (v107[0] & 1) == 0) || (LODWORD(v15) = 1.0, objc_msgSend(v96, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6990CD0], v107, v15), (v107[0] & 1) == 0) || (self->_sMetaData.ae.exposureTime = (v16 * 1000000.0), self->_sMetaData.ae.gainDigiSensor.v16 = objc_msgSend(v96, "cmi_intValueForKey:defaultValue:found:", *MEMORY[0x1E6990CE0], 1, v107), (v107[0] & 1) == 0) || (LODWORD(v17) = 1.0, objc_msgSend(v96, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6990FB0], v107, v17), (v107[0] & 1) == 0) || (self->_sMetaData.frameRate = vcvts_n_u32_f32(v18, 8uLL), self->_sMetaData.flash.flashCaptureCount = objc_msgSend(v96, "cmi_BOOLValueForKey:defaultValue:found:", *MEMORY[0x1E6991028], 0, v107), (v107[0] & 1) == 0) || (LODWORD(v19) = 1.0, objc_msgSend(v96, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E69910B8], 0, v19), self->_sMetaData.ae.inverseBinningGainFactor = vcvts_n_s32_f32(v20, 8uLL), objc_msgSend(v9, "objectForKeyedSubscript:", @"Exposure"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectForKeyedSubscript:", @"LuxModel"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectForKeyedSubscript:", @"Scale"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v21, !v23) || (objc_msgSend(v9, "objectForKeyedSubscript:", @"Exposure"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectForKeyedSubscript:", @"LuxModel"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", @"Scale"), v26 = objc_claimAutoreleasedReturnValue(), self->_sMetaData.ae.luxCalcParams.scale = objc_msgSend(v26, "intValue"), v26, v25, v24, objc_msgSend(v9, "objectForKeyedSubscript:", @"Exposure"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "objectForKeyedSubscript:", @"LuxModel"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "objectForKeyedSubscript:", @"ScaleShift"), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v27, !v29))
  {
    v80 = v85;
    LODWORD(v79) = 0;
    FigDebugAssert3();
    goto LABEL_43;
  }

  v30 = [v9 objectForKeyedSubscript:@"Exposure"];
  v31 = [v30 objectForKeyedSubscript:@"LuxModel"];
  v32 = [v31 objectForKeyedSubscript:@"ScaleShift"];
  self->_sMetaData.ae.luxCalcParams.scaleShift = [v32 intValue];

  [(AWBAlgorithm *)self calculateEIT:v96 result:&self->_sMetaData.ae.currentEIT];
  *&self->_sMetaData.flash.flashStatusAE = 0x100000001;
  self->_sMetaData.flash.strobeStatus = 1;
  self->_sMetaData.flash.flashCaptureSequence = 0;
  *&self->_sMetaData.ae.aeAverage = 0;
  *&self->_sMetaData.masterCam = 257;
  self->_sMetaData.awb.isDefaultSetting = 1;
  self->_sMetaData.maxLSgainUnadjusted = 0x2000;
  self->_sMetaData.isReplay = 1;
  [(AWBAlgorithm *)self configPortTypeMetadata:v96];
  self->_sMetaData.ae.UBMisc.awbReflow.bGenerateReflowAWB = [(NSNumber *)self->_digitalFlash intValue]!= 0;
  if (((*(self->_AWBAlgorithmObj->var0 + 2))(self->_AWBAlgorithmObj, 1) & 1) == 0)
  {
    v80 = v85;
    LODWORD(v79) = 0;
    FigDebugAssert3();
    v34 = -1;
    goto LABEL_30;
  }

  v102 = [v9 objectForKeyedSubscript:@"AutoWhiteBalance"];
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

  v35 = [v88 objectForKeyedSubscript:*MEMORY[0x1E6990C50]];
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
          v9 = v87;
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

  v9 = v87;
  v67 = v99;
LABEL_23:

  if (v65 != 6)
  {
    CAWBAFE::SetDigitalFlashBehaviorMode(self->_AWBAlgorithmObj, [(NSNumber *)self->_digitalFlash intValue]);
    v68 = [(AWBAlgorithm *)self initTuningParameters:v96];
    v34 = v68;
    if (v68 || (v68 = [(AWBAlgorithm *)self configFallbackMetadata:v96], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFaceMetadata:v96 awbParams:v91], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFlickerDetectionMetadata:v96 moduleConfig:v9], (v34 = v68) != 0) || (v68 = [(AWBAlgorithm *)self configFlashRFCMetadata:v96 cameraInfo:v88 moduleConfig:v9], (v34 = v68) != 0))
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
      v103 = [v91 imageTex];
      v101 = [v91 clippedTex];
      v100 = [v91 lscGainsTex];
      v98 = [v91 skinMask];
      v95 = [v91 skyMask];
      v93 = [v91 firstPixel];
      [v93 intValue];
      v90 = [v91 cfaLayout];
      [v90 intValue];
      v86 = [v91 downsizeFactor];
      [v86 intValue];
      v84 = [v91 digitalFlash];
      [v84 intValue];
      v83 = [v91 skipDemosaic];
      [v83 intValue];
      v82 = [v91 lscMaxGain];
      [v82 floatValue];
      v81 = [v91 faceAssistedBehaviorMode];
      [v81 intValue];
      v72 = [v91 validRectInSensorReadoutCoords];
      v73 = stringFromCGRectDictionaryRepresentation(v72);
      v74 = [v91 validRectInBufferCoords];
      v75 = stringFromCGRectDictionaryRepresentation(v74);
      v76 = [v91 regionOfInterestRectInBufferCoords];
      v106 = stringFromCGRectDictionaryRepresentation(v76);
      v77 = v105;
      _os_log_send_and_compose_impl();

      v9 = v87;
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

- (int)calculateEIT:(id)a3 result:(unint64_t *)a4
{
  v5 = a3;
  v6 = v5;
  v18 = 0;
  if (v5 && a4)
  {
    v7 = [v5 cmi_intValueForKey:*MEMORY[0x1E6991158] defaultValue:0 found:&v18];
    if (v18 & 1) != 0 && (v8 = v7, v9 = [v6 cmi_intValueForKey:*MEMORY[0x1E6990ED8] defaultValue:0 found:&v18], (v18) && (v10 = v9, objc_msgSend(v6, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6991170], &v18, 0.0), (v18) && (v12 = v11, objc_msgSend(v6, "cmi_floatValueForKey:defaultValue:found:", *MEMORY[0x1E6991160], &v18, 0.0), (v18) && (v14 = v13, objc_msgSend(v6, "cmi_doubleValueForKey:defaultValue:found:", *MEMORY[0x1E6990FC8], &v18, 0.0), (v18))
    {
      v16 = 0;
      *a4 = (v15 * 1000000.0 * (((vcvts_n_f32_s32(v8, 8uLL) * vcvts_n_f32_s32(v10, 8uLL)) * v12) * v14));
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

- (int)calculateInternalAWBMetadataForMIWB:(float)a3 bGain:(float)a4 rSkinGain:(float)a5 bSkinGain:(float)a6 cct:(float)a7 internalMetadata:(id)a8
{
  v16 = a8;
  v39 = 0;
  v40 = 0;
  v38 = 0.0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 4096;
  v33 = 4096;
  CAWBAFE::GetSensorCalGain(self->_AWBAlgorithmObj, &v35);
  CAWBAFE::GetNewCSensorCalGains(self->_AWBAlgorithmObj, &v34, &v33, a7, &v35);
  LOWORD(v9) = v34;
  LOWORD(v8) = v33;
  CAWBAFE::ComputeHistWPFromChannelGains(self->_AWBAlgorithmObj, a3, a4, &v40, &v40 + 1, v17, v18);
  LODWORD(v19) = 4.0;
  *&v20 = v9;
  v21 = ((a5 * 4096.0) * 4.0) / v9;
  v22 = ((a6 * 4096.0) * 4.0) / v8;
  CAWBAFE::ComputeHistWPFromChannelGains(self->_AWBAlgorithmObj, v21, v22, &v39, &v39 + 1, v19, v20);
  CAWBAFE::GetDaylightScore(self->_AWBAlgorithmObj, &v36);
  CAWBAFE::CalculateSkyWhitePoint(self->_AWBAlgorithmObj, a7, &v40, &v37);
  CAWBAFE::CalculateSkinWeightForSTF(self->_AWBAlgorithmObj, 0, &v40, &v39, &v36 + 1);
  if (v16)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInt:((v21 * 4096.0) + 0.5)];
    [v16 setObject:v23 forKeyedSubscript:@"MIWBSkinNonComboRGain"];

    v24 = [MEMORY[0x1E696AD98] numberWithInt:((v22 * 4096.0) + 0.5)];
    [v16 setObject:v24 forKeyedSubscript:@"MIWBSkinNonComboBGain"];

    v25 = [MEMORY[0x1E696AD98] numberWithInt:((*&v37 * 4096.0) + 0.5)];
    [v16 setObject:v25 forKeyedSubscript:@"MIWBSkyRGain"];

    v26 = [MEMORY[0x1E696AD98] numberWithInt:((v38 * 4096.0) + 0.5)];
    [v16 setObject:v26 forKeyedSubscript:@"MIWBSkyBGain"];

    LODWORD(v27) = HIDWORD(v36);
    v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
    [v16 setObject:v28 forKeyedSubscript:@"MIWBSkinWeight"];

    LODWORD(v29) = v36;
    v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
    [v16 setObject:v30 forKeyedSubscript:@"DaylightScore"];

    v31 = 0;
  }

  else
  {
    FigDebugAssert3();
    v31 = FigSignalErrorAtGM();
  }

  return v31;
}

- (int)translateAWBGainsToSecondaryChannelID:(unsigned int)a3[3] secondaryChannelID:(unsigned int)a4 secondaryConfig:(SensorConfigAWBParams *)a5 secondaryAWBParams:(sSlaveCameraAWBParam *)a6
{
  AWBAlgorithmObj = self->_AWBAlgorithmObj;
  if (AWBAlgorithmObj)
  {
    v9 = a4;
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
      (*(AWBAlgorithmObj->var0 + 5))(AWBAlgorithmObj, a3, v9, a5, a6, 0, v12);
      return 0;
    }

    else
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"FigCapturePlatformID soft_FigCapturePlatformIdentifier()"];
      [v14 handleFailureInFunction:v15 file:@"AWBAlgorithm.mm" lineNumber:52 description:{@"%s", dlerror()}];

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

- (int)initTuningParameters:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ([v4 count])
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
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

- (int)configFaceMetadata:(id)a3 awbParams:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(v135, 0, 44);
  bzero(__src, 0x5F0uLL);
  v113 = v5;
  dict = [v6 validRectInBufferCoords];
  v115 = [v6 regionOfInterestRectInBufferCoords];
  v117 = [v6 faceAssistedBehaviorMode];
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
  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6991108]];
  v11 = [v10 intValue];

  v12 = v117;
  if (!v117)
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

  if (![v5 count])
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

  if (!v115)
  {
    goto LABEL_11;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v115, &v131))
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
  [(GeometryUtilities *)v5 getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:rect.origin.x validBufferRect:rect.origin.y, rect.size.width, rect.size.height];
  v130 = v125;
  v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6990FB8]];
  v119 = v13;
  if (v13 && ([v13 objectForKeyedSubscript:*MEMORY[0x1E6990E98]], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v112 = v6;
    v120 = v14;
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E6990EC0]];
    if ([v15 count])
    {
      v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_0];
      v17 = v16;
      if (v16 && [v16 count])
      {
        v18 = 0;
        v111 = *MEMORY[0x1E69910D8];
        if (v11 == 2324)
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

          v46 = [v44 unsignedIntValue];
          *v22 = *v22 & 0xFFFFFC00 | v46 & 0x3FF;
          DWORD1(v135[2]) = DWORD1(v135[2]) & 0xFFFFE007 | (8 * (v46 & 0x3FF));
          if (!v45)
          {
            break;
          }

          v47 = [v45 unsignedIntValue];
          *v22 = *v22 & 0xFFF003FF | ((v47 & 0x3FF) << 10);
          v22 += 38;
          LODWORD(v135[2]) = 0;
          DWORD1(v135[2]) = DWORD1(v135[2]) & 0xFF801FFF | ((v47 & 0x3FF) << 13);

          ++v18;
          v5 = v113;
        }

        FigDebugAssert3();

        v85 = 0;
        v5 = v113;
LABEL_87:

        goto LABEL_78;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_37:

    v6 = v112;
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

  v112 = v6;
  v15 = [v6 faceAssistedSkinGainsToMatch];
  if (!v15)
  {
    v99 = v109;
    LODWORD(v89) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  if (![v15 count])
  {
    v100 = v109;
    LODWORD(v90) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v128 = 0;
  v129 = 0;
  v50 = [v15 objectForKeyedSubscript:{@"wpRgLogRatio", v90, v100}];

  if (!v50)
  {
    v101 = v109;
    LODWORD(v91) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v51 = [v15 objectForKeyedSubscript:{@"wpRgLogRatio", v91, v101}];
  [v51 floatValue];
  v53 = v52;
  *&v129 = v52;

  v54 = [v15 objectForKeyedSubscript:@"wpBgLogRatio"];

  if (!v54)
  {
    v102 = v109;
    LODWORD(v92) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v55 = [v15 objectForKeyedSubscript:{@"wpBgLogRatio", v92, v102}];
  [v55 floatValue];
  v57 = v56;
  *(&v129 + 1) = v56;

  v58 = [v15 objectForKeyedSubscript:@"wpSkinRgLogRatio"];

  if (!v58)
  {
    v103 = v109;
    LODWORD(v93) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v59 = [v15 objectForKeyedSubscript:{@"wpSkinRgLogRatio", v93, v103}];
  [v59 floatValue];
  v61 = v60;
  *&v128 = v60;

  v62 = [v15 objectForKeyedSubscript:@"wpSkinBgLogRatio"];

  if (!v62)
  {
    v104 = v109;
    LODWORD(v94) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v63 = [v15 objectForKeyedSubscript:{@"wpSkinBgLogRatio", v94, v104}];
  [v63 floatValue];
  v65 = v64;
  *(&v128 + 1) = v64;

  v66 = [v15 objectForKeyedSubscript:@"continuousFDTimes"];

  if (!v66)
  {
    v105 = v109;
    LODWORD(v95) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v67 = [v15 objectForKeyedSubscript:{@"continuousFDTimes", v95, v105}];
  v68 = [v67 intValue];

  v69 = [v15 objectForKeyedSubscript:@"skinColorSampleNum"];

  if (!v69)
  {
    v106 = v109;
    LODWORD(v96) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v70 = [v15 objectForKeyedSubscript:{@"skinColorSampleNum", v96, v106}];
  v71 = [v70 intValue];

  v72 = [v15 objectForKeyedSubscript:@"skinColorSampleVariance"];

  if (!v72)
  {
    v107 = v109;
    LODWORD(v97) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v73 = [v15 objectForKeyedSubscript:{@"skinColorSampleVariance", v97, v107}];
  [v73 floatValue];
  v75 = v74;

  v76 = [v15 objectForKeyedSubscript:@"minDistSkinToWhiteMapping"];

  if (!v76)
  {
    v108 = v109;
    LODWORD(v98) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  v77 = [v15 objectForKeyedSubscript:{@"minDistSkinToWhiteMapping", v98, v108}];
  [v77 floatValue];
  v79 = v78;

  v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wbLogRatios=[%.3f, %.3f], wbSkinLogRatios=[%.3f, %.3f], continuousFDTimes=%d, skinColorSampleNum=%d, skinColorSampleVariance=%.3f, minDistSkinToWhiteMapping=%.3f", v53, v57, v61, v65, v68, v71, v75, v79];
  v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wblr=[%d, %d], wbslr=[%d, %d], cfdt=%d, scsn=%d, scsv=%d, mdstwm=%d", v53 != 0.0, v57 != 0.0, v61 != 0.0, v65 != 0.0, v68 != 0, v71 != 0, v75 != 0.0, v79 != 0.0];

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

  CAWBAFE::SetFaceAssistedAWBResultsForMatchProvidedSkinGains(self->_AWBAlgorithmObj, &v129, &v128, v71, v68, v75, v79);

  v85 = 0;
LABEL_78:
  v86 = MEMORY[0x1E695FF58];

  v6 = v112;
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

- (int)configFlickerDetectionMetadata:(id)a3 moduleConfig:(id)a4
{
  v39 = a3;
  v40 = a4;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v41 = [v39 objectForKeyedSubscript:*MEMORY[0x1E69910A0]];
  v6 = [v41 objectForKeyedSubscript:*MEMORY[0x1E6991198]];
  v7 = v6;
  if (v6)
  {
    self->_flickerDetectionStatus = [v6 intValue];
  }

  if (v40)
  {
    v8 = [v40 objectForKeyedSubscript:@"AutoWhiteBalance"];
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

- (int)configFlashRFCMetadata:(id)a3 cameraInfo:(id)a4 moduleConfig:(id)a5
{
  v97 = a3;
  v91 = a4;
  v94 = a5;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v7 = [v97 objectForKeyedSubscript:*MEMORY[0x1E6991028]];
  v8 = [v7 BOOLValue];

  if (!v8)
  {
    v96 = 0;
    v92 = 0;
    v93 = 0;
    goto LABEL_49;
  }

  self->_isNominalStrobe = 1;
  v92 = [v97 objectForKeyedSubscript:*MEMORY[0x1E6991120]];
  v9 = [v97 objectForKeyedSubscript:*MEMORY[0x1E6991128]];
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

  if (v91)
  {
    v14 = [v91 objectForKeyedSubscript:*MEMORY[0x1E69911A0]];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 bytes];
      self->_pmLEDCalibData.isvalid = 1;
      self->_ledType = 10;
      v17 = *v16;
      if (*v16)
      {
        if (v17 == 1)
        {
          self->_pmLEDCalibData.programID = 0;
          self->_pmLEDCalibData.version = 3;
          self->_pmLEDCalibData.ledWidePtrn_rg = *(v16 + 4);
          self->_pmLEDCalibData.ledWidePtrn_bg = *(v16 + 8);
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
          self->_pmLEDCalibData.ledWidePtrn_rg = *(v16 + 4);
          self->_pmLEDCalibData.ledWidePtrn_bg = *(v16 + 8);
          self->_pmLEDCalibData.ledTelePtrn_rg = *(v16 + 4);
          self->_pmLEDCalibData.ledTelePtrn_bg = *(v16 + 8);
          self->_pmLEDCalibData.ledSWidePtrn_rg = *(v16 + 4);
          self->_pmLEDCalibData.ledSWidePtrn_bg = *(v16 + 8);
        }
      }

      else
      {
        self->_pmLEDCalibData.version = 2;
        self->_pmLEDCalibData.cw_rg = *(v16 + 4);
        self->_pmLEDCalibData.cw_bg = *(v16 + 8);
        self->_pmLEDCalibData.ww_rg = *(v16 + 12);
        self->_pmLEDCalibData.ww_bg = *(v16 + 16);
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

  if (!v94)
  {
LABEL_49:
    v66 = [v97 objectForKeyedSubscript:*MEMORY[0x1E6991158]];
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
    v68 = [v97 objectForKeyedSubscript:*MEMORY[0x1E6990FD0]];
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

    v72 = self;
    self->_sMetaData.ae.ev0Ratio = v71;
    if (v94)
    {
      v73 = [v94 objectForKeyedSubscript:@"Exposure"];
      v74 = [v73 objectForKeyedSubscript:@"LuxModel"];
      v75 = [v74 objectForKeyedSubscript:@"Scale"];

      if (!v75 || ([v94 objectForKeyedSubscript:@"Exposure"], v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "objectForKeyedSubscript:", @"LuxModel"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "objectForKeyedSubscript:", @"Scale"), v78 = objc_claimAutoreleasedReturnValue(), self->_sMetaData.ae.luxCalcParams.scale = objc_msgSend(v78, "intValue"), v78, v77, v76, objc_msgSend(v94, "objectForKeyedSubscript:", @"Exposure"), v79 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "objectForKeyedSubscript:", @"LuxModel"), v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v80, "objectForKeyedSubscript:", @"ScaleShift"), v81 = objc_claimAutoreleasedReturnValue(), v81, v80, v79, !v81))
      {
        FigDebugAssert3();
        v88 = 0;
        v87 = FigSignalErrorAtGM();
        goto LABEL_66;
      }

      v82 = [v94 objectForKeyedSubscript:@"Exposure"];
      v83 = [v82 objectForKeyedSubscript:@"LuxModel"];
      v84 = [v83 objectForKeyedSubscript:@"ScaleShift"];
      v72 = self;
      self->_sMetaData.ae.luxCalcParams.scaleShift = [v84 intValue];
    }

    v72->_sMetaData.ae.overflowDGain = 256;
    if (v91 && ([v91 objectForKeyedSubscript:*MEMORY[0x1E69911A8]], v85 = objc_claimAutoreleasedReturnValue(), (v86 = v85) != 0))
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

  v18 = [v94 objectForKeyedSubscript:@"AutoWhiteBalance"];
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

- (int)configFallbackMetadata:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  self->_fallbackGains.validAWBData = 1;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6990F20]];
  awbRGain = self->_fallbackGains.awbRGain;
  self->_fallbackGains.awbRGain = v7;

  if (!self->_fallbackGains.awbRGain)
  {
    v25 = v3;
    LODWORD(v20) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v9 = [v5 objectForKeyedSubscript:{*MEMORY[0x1E6990F18], v20, v25}];
  awbGGain = self->_fallbackGains.awbGGain;
  self->_fallbackGains.awbGGain = v9;

  if (!self->_fallbackGains.awbGGain)
  {
    v26 = v3;
    LODWORD(v21) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v11 = [v5 objectForKeyedSubscript:{*MEMORY[0x1E6990EE0], v21, v26}];
  awbBGain = self->_fallbackGains.awbBGain;
  self->_fallbackGains.awbBGain = v11;

  if (!self->_fallbackGains.awbBGain)
  {
    v27 = v3;
    LODWORD(v22) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v13 = [v5 objectForKeyedSubscript:{*MEMORY[0x1E6990EF8], v22, v27}];
  awbComboRGain = self->_fallbackGains.awbComboRGain;
  self->_fallbackGains.awbComboRGain = v13;

  if (!self->_fallbackGains.awbComboRGain)
  {
    v28 = v3;
    LODWORD(v23) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v15 = [v5 objectForKeyedSubscript:{*MEMORY[0x1E6990EF0], v23, v28}];
  awbComboGGain = self->_fallbackGains.awbComboGGain;
  self->_fallbackGains.awbComboGGain = v15;

  if (!self->_fallbackGains.awbComboGGain)
  {
    v29 = v3;
    LODWORD(v24) = 0;
    FigDebugAssert3();
    self->_fallbackGains.validAWBData = 0;
  }

  v17 = [v5 objectForKeyedSubscript:{*MEMORY[0x1E6990EE8], v24, v29}];
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

- (int)configPortTypeMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
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

+ (int)doAWBConfigLoad:(id)a3 to:(id)a4
{
  v186 = a3;
  v173 = a4;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v174 = [v173 pointerValue];
  if (!v186 || !v174)
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

  v5 = [v186 objectForKeyedSubscript:@"Histogram"];
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

  CAWBAFE::SetHistogramWeight(v174, [v6 count], v7);
  free(v7);
  v188 = [v186 objectForKeyedSubscript:@"CSC"];
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

  v33 = [v186 objectForKeyedSubscript:{@"Histogram", CAWBAFE::UpdateCSCConfig(v174, &v208).n128_f64[0]}];
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

  v45 = [v186 objectForKeyedSubscript:{@"ProjectionPoint", CAWBAFE::UpdateColorHistConfig(v174, &v207).n128_f64[0]}];
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

  CAWBAFE::SetProjectionPoint(v174, [v184 count], v46);
  free(v46);
  v54 = [v186 objectForKeyedSubscript:@"Histogram"];
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

  CAWBAFE::SetHistogramXToCCTLut(v174, [v55 count], v56);
  free(v56);
  v182 = [v186 objectForKeyedSubscript:@"AWBSkinToWhiteLut"];
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

    CAWBAFE::SetSkinToWhiteLut(v174, [v182 count], v65);
    free(v65);
  }

  v189 = [v186 objectForKeyedSubscript:@"CCM"];
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
  v90 = [v189 objectForKeyedSubscript:{@"CCMLuxClipLevel", CAWBAFE::SetCCM2DCoefficient(v174, v201, v202, v203, v204, v205, &v206).n128_f64[0]}];
  CAWBAFE::SetCCMLuxClip(v174, [v90 intValue]);

  v91 = [v186 objectForKeyedSubscript:@"PostTint"];
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

    CAWBAFE::SetPostTintParam(v174, [v187 count], v92);
    free(v92);
    v104 = [v186 objectForKeyedSubscript:@"MixLighting"];
    v105 = [v104 objectForKeyedSubscript:@"XCoordinate"];

    v181 = v105;
    if (v105)
    {
      for (mm = 0; mm != 3; ++mm)
      {
        v107 = [v181 objectAtIndexedSubscript:mm];
        v200[mm] = [v107 intValue];
      }

      CAWBAFE::SetMixLightingXLoc(v174, v200);
      v108 = [v186 objectForKeyedSubscript:@"MixLighting"];
      v109 = [v108 objectForKeyedSubscript:@"CCM"];

      v180 = v109;
      if (v109)
      {
        for (nn = 0; nn != 9; ++nn)
        {
          v111 = [v180 objectAtIndexedSubscript:nn];
          v199.n128_u16[nn] = [v111 intValue];
        }

        v179 = [v186 objectForKeyedSubscript:{@"YThreshold", CAWBAFE::SetMixLightingCCM(v174, &v199).n128_f64[0]}];
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
          CAWBAFE::SetTileStatsYThreshold(v174, v198);
          v178 = [v186 objectForKeyedSubscript:@"RatioSpace2ndGainThreshold"];
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
            CAWBAFE::SetRatioSpace2ndGainThreshold(v174, v197);
            v120 = [v186 objectForKeyedSubscript:@"Histogram"];
            v121 = [v120 objectForKeyedSubscript:@"TrimFilterV"];

            v177 = v121;
            if (v121)
            {
              for (i1 = 0; i1 != 13; ++i1)
              {
                v123 = [v177 objectAtIndexedSubscript:i1];
                v196[i1] = [v123 intValue];
              }

              v124 = [v186 objectForKeyedSubscript:{@"Histogram", CAWBAFE::SetHistogramTrimFilterV(v174, v196).n128_f64[0]}];
              v125 = [v124 objectForKeyedSubscript:@"TrimFilterH"];

              v176 = v125;
              if (v125)
              {
                for (i2 = 0; i2 != 3; ++i2)
                {
                  v127 = [v176 objectAtIndexedSubscript:i2];
                  v195[i2] = [v127 intValue];
                }

                CAWBAFE::SetHistogramTrimFilterH(v174, v195);
                v128 = [v186 objectForKeyedSubscript:@"Histogram"];
                v129 = [v128 objectForKeyedSubscript:@"TrimScaleProfile"];

                v175 = v129;
                if (v129)
                {
                  for (i3 = 0; i3 != 32; ++i3)
                  {
                    v131 = [v175 objectAtIndexedSubscript:i3];
                    v194[i3] = [v131 intValue];
                  }

                  v132 = [v186 objectForKeyedSubscript:{@"Scheme", CAWBAFE::SetHistogramTrimScaleProfile(v174, v194).n128_f64[0]}];
                  v133 = v132;
                  if (v132)
                  {
                    CAWBAFE::SetScheme(v174, [v132 isEqualToString:@"2DHistogram"]);
                    v172 = v133;
                    memset(v193, 0, sizeof(v193));
                    v192 = 0u;
                    v134 = [v186 objectForKeyedSubscript:@"ColorMatchingModel"];
                    [v134 count];

                    for (i4 = 0; ; i4 = v138 + 1)
                    {
                      v136 = [v186 objectForKeyedSubscript:@"ColorMatchingModel"];
                      v137 = [v136 count];
                      v138 = i4;

                      if (v137 <= i4)
                      {
                        break;
                      }

                      v139 = [v186 objectForKeyedSubscript:@"ColorMatchingModel"];
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

                    v151 = [v186 objectForKeyedSubscript:@"ColorMatchingModel"];
                    (*(*v174 + 144))(v174, [v151 count], &v192);

                    bzero(v191, 0xA40uLL);
                    v152 = [v186 objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                    [v152 count];

                    for (i6 = 0; ; i6 = v156 + 1)
                    {
                      v154 = [v186 objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                      v155 = [v154 count];
                      v156 = i6;

                      if (v155 <= i6)
                      {
                        break;
                      }

                      v157 = [v186 objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                      v158 = [v157 objectAtIndexedSubscript:i6];

                      if (v158)
                      {
                        v159 = [v158 objectForKeyedSubscript:@"latticeModelLUTGridSize"];
                        v160 = [v159 intValue];

                        if (v160 == 9)
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

                    v169 = [v186 objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
                    (*(*v174 + 152))(v174, [v169 count], v191);

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

- (int)awbConfigLoad:(id)a3 to:(CAWBAFE *)a4
{
  v5 = a3;
  if (v5 && a4)
  {
    v6 = [MEMORY[0x1E696B098] valueWithPointer:a4];
    v7 = [AWBAlgorithm doAWBConfigLoad:v5 to:v6];
  }

  else
  {
    FigDebugAssert3();
    v7 = FigSignalErrorAtGM();
  }

  return v7;
}

+ (int)awbSensorCalibrationsLoad:(id)a3 idealColorCalibrations:(id)a4 to:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v60 = 0;
  v10 = [v9 pointerValue];
  if (v10)
  {
    v60 = 0;
    v11 = MEMORY[0x1E6990E48];
    v12 = MEMORY[0x1E6990E40];
    v13 = MEMORY[0x1E6990E38];
    v14 = MEMORY[0x1E6990E50];
    if (v7)
    {
      v15 = *MEMORY[0x1E6990E48];
      v16 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6990E48]];

      if (v16)
      {
        v17 = [v7 objectForKeyedSubscript:v15];
        LODWORD(v18) = 1.0;
        [v17 cmi_floatValueForKey:*v12 defaultValue:&v60 found:v18];
        v20 = ((v19 * 16384.0) + 0.5);
      }

      else
      {
        v20 = 16384.0;
      }

      v60 = 0;
      v24 = [v7 objectForKeyedSubscript:v15];

      if (v24)
      {
        v25 = [v7 objectForKeyedSubscript:v15];
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
      v29 = [v7 objectForKeyedSubscript:*v14];

      if (v29)
      {
        v30 = [v7 objectForKeyedSubscript:v28];
        LODWORD(v31) = 1.0;
        [v30 cmi_floatValueForKey:*v12 defaultValue:&v60 found:v31];
        v21 = ((v32 * 16384.0) + 0.5);
      }

      else
      {
        v21 = 16384.0;
      }

      v60 = 0;
      v33 = [v7 objectForKeyedSubscript:v28];

      if (v33)
      {
        v34 = [v7 objectForKeyedSubscript:v28];
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
    if (v8)
    {
      v37 = *v11;
      v38 = [v8 objectForKeyedSubscript:*v11];

      if (v38)
      {
        v39 = [v8 objectForKeyedSubscript:v37];
        LODWORD(v40) = 1182793728;
        [v39 cmi_floatValueForKey:*v12 defaultValue:&v60 found:v40];
        v42 = v41;
      }

      else
      {
        v42 = 16384.0;
      }

      v60 = 0;
      v46 = [v8 objectForKeyedSubscript:v37];

      if (v46)
      {
        v47 = [v8 objectForKeyedSubscript:v37];
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
      v51 = [v8 objectForKeyedSubscript:*v14];

      if (v51)
      {
        v52 = [v8 objectForKeyedSubscript:v50];
        LODWORD(v53) = 1182793728;
        [v52 cmi_floatValueForKey:*v12 defaultValue:&v60 found:v53];
        v43 = v54;
      }

      else
      {
        v43 = 16384.0;
      }

      v60 = 0;
      v55 = [v8 objectForKeyedSubscript:v50];

      if (v55)
      {
        v56 = [v8 objectForKeyedSubscript:v50];
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

    CAWBAFE::SensorCalSet(v10, v20, v22, v21, v23, v42, v44, v43, v45);
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

+ (int)populateSlaveConfigWithModuleConfigIfColorMatchingModelExistsInPrimaryAWBConfig:(id)a3 secondaryAWBConfig:(id)a4 secondaryIdealColorCals:(id)a5 secondaryAbsoluteColorCals:(id)a6 secondarySetFileID:(unsigned int)a7 secondarySensorConfig:(SensorConfigAWBParams *)a8
{
  v135 = a3;
  v133 = a4;
  v131 = a5;
  v132 = a6;
  v136 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v13 = 0;
  do
  {
    v14 = [v135 objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
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

    v16 = [v135 objectForKeyedSubscript:@"ColorMatchingLatticeModel"];
    v17 = [v16 objectAtIndexedSubscript:v13];

    v18 = [v17 objectForKeyedSubscript:@"SlaveCameraID"];
    v19 = [v18 intValue];

    ++v13;
  }

  while (((v19 ^ a7) & 0xFFFFFF) != 0 || !v19);
  a8->var4 = v19;
  v136 = 0;
  v20 = MEMORY[0x1E6990E48];
  v21 = MEMORY[0x1E6990E40];
  v22 = MEMORY[0x1E6990E38];
  v23 = MEMORY[0x1E6990E50];
  v134 = a8;
  if (v132)
  {
    v24 = *MEMORY[0x1E6990E48];
    v25 = [v132 objectForKeyedSubscript:*MEMORY[0x1E6990E48]];

    if (v25)
    {
      v26 = [v132 objectForKeyedSubscript:v24];
      LODWORD(v27) = 1.0;
      [v26 cmi_floatValueForKey:*v21 defaultValue:&v136 found:v27];
      v29 = ((v28 * 16384.0) + 0.5);
    }

    else
    {
      v29 = 16384.0;
    }

    v136 = 0;
    v38 = [v132 objectForKeyedSubscript:v24];

    if (v38)
    {
      v39 = [v132 objectForKeyedSubscript:v24];
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
    v43 = [v132 objectForKeyedSubscript:*v23];

    if (v43)
    {
      v44 = [v132 objectForKeyedSubscript:v42];
      LODWORD(v45) = 1.0;
      [v44 cmi_floatValueForKey:*v21 defaultValue:&v136 found:v45];
      v35 = ((v46 * 16384.0) + 0.5);
    }

    else
    {
      v35 = 16384.0;
    }

    v136 = 0;
    v47 = [v132 objectForKeyedSubscript:v42];

    if (v47)
    {
      v48 = [v132 objectForKeyedSubscript:v42];
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
  if (v131)
  {
    v51 = *v20;
    v52 = [v131 objectForKeyedSubscript:*v20];

    if (v52)
    {
      v53 = [v131 objectForKeyedSubscript:v51];
      LODWORD(v54) = 1182793728;
      [v53 cmi_floatValueForKey:*v21 defaultValue:&v136 found:v54];
      v56 = v55;
    }

    else
    {
      v56 = 16384.0;
    }

    v136 = 0;
    v60 = [v131 objectForKeyedSubscript:v51];

    if (v60)
    {
      v61 = [v131 objectForKeyedSubscript:v51];
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
    v65 = [v131 objectForKeyedSubscript:*v23];

    if (v65)
    {
      v66 = [v131 objectForKeyedSubscript:v64];
      LODWORD(v67) = 1182793728;
      [v66 cmi_floatValueForKey:*v21 defaultValue:&v136 found:v67];
      v57 = v68;
    }

    else
    {
      v57 = 16384.0;
    }

    v136 = 0;
    v69 = [v131 objectForKeyedSubscript:v64];

    if (v69)
    {
      v70 = [v131 objectForKeyedSubscript:v64];
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

  a8->var0.var0 = v57;
  a8->var0.var1 = v59;
  a8->var0.var2 = v56;
  a8->var0.var3 = v58;
  a8->var1.var0 = v35;
  a8->var1.var1 = v37;
  a8->var1.var2 = v29;
  a8->var1.var3 = v36;
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

  a8->var3.var0 = v74;
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

  a8->var3.var1 = v76;
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

  a8->var3.var2 = v78;
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

  a8->var3.var3 = v80;
  if (v73)
  {
    v81 = ((v35 * 16384.0) / v57);
  }

  else
  {
    LOWORD(v81) = 0x4000;
  }

  a8->var2.var0 = v81;
  if (v75)
  {
    v82 = ((v37 * 16384.0) / v59);
  }

  else
  {
    LOWORD(v82) = 0x4000;
  }

  a8->var2.var1 = v82;
  if (v77)
  {
    v83 = ((v29 * 16384.0) / v56);
  }

  else
  {
    LOWORD(v83) = 0x4000;
  }

  a8->var2.var2 = v83;
  if (v79)
  {
    v84 = ((v36 * 16384.0) / v58);
  }

  else
  {
    LOWORD(v84) = 0x4000;
  }

  a8->var2.var3 = v84;
  v130 = [v133 objectForKeyedSubscript:@"CSC"];
  if (!v130)
  {
    FigDebugAssert3();
    v30 = 0;
    v31 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  p_var6 = &a8->var6;
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
  *a8->var6.var2 = 0;
  v92 = [v130 objectForKeyedSubscript:@"CSCChromaScale0"];
  a8->var6.var3[0] = [v92 intValue];

  v93 = [v130 objectForKeyedSubscript:@"CSCChromaScale1"];
  a8->var6.var3[1] = [v93 intValue];

  v94 = [v133 objectForKeyedSubscript:@"CCM"];
  v95 = [v94 objectForKeyedSubscript:@"CCMLuxClipLevel"];
  a8->var6.var4 = [v95 intValue];

  v96 = [v133 objectForKeyedSubscript:@"CCM"];
  if (v96)
  {
    v97 = 0;
    v98 = v134->var6.var5[5];
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
    v111 = [v133 objectForKeyedSubscript:@"Histogram"];
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
        v116 = v134->var6.var6[v113];
        *v116 = [v115 intValue];

        v117 = [v32 objectAtIndexedSubscript:v113];
        v118 = [v117 objectForKeyedSubscript:@"Y"];
        v116[1] = [v118 intValue];

        v119 = [v32 objectAtIndexedSubscript:v113];
        v120 = [v119 objectForKeyedSubscript:@"CCT"];
        v116[2] = [v120 intValue];
      }

      v121 = [v133 objectForKeyedSubscript:@"ProjectionPoint"];
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
          v126 = v134->var6.var7[v123];
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

+ (void)calculateNonComboGainsFromComboGains:(unsigned int)a3[3] awbAlgorithm:(CAWBAFEH14 *)a4 gains:(unsigned int)a5[3]
{
  v12 = COERCE_DOUBLE(vcvt_f32_u32(*a3));
  v24 = v12;
  *&v12 = a3[2];
  v25 = *&v12;
  v23 = 0;
  *v22 = 0;
  CAWBAFE::GetBinIndices(a4, &v23 + 1, &v23, &v24, 0, v12, v5, v6, v7, v8);
  CCTFromColorRatio = CAWBAFE::GetCCTFromColorRatio(a4, *(&v23 + 1), v13, v14, v15, v16);
  CAWBAFE::GetInterpolatedCSensorCalGains(a4, &v22[1], v22, CCTFromColorRatio);
  LOWORD(v18) = v22[1];
  v19 = (*a3 * 4.0) / v18;
  *&v20 = a3[2];
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
  v254 = 0;
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
  v41 = [v40 bytes];
  v42 = [*(v3 + 5072) objectForKeyedSubscript:@"windowStats"];
  v43 = [v42 bytes];
  v44 = [*(v3 + 5072) objectForKeyedSubscript:@"histStats"];
  CAWBAFE::SetStats(v39, v255, v41, v43, [v44 bytes], 0);

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
      v254 = [v49 bytes];

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
    v76 = [v75 bytes];

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
      [v3 _processSkyMask:v76 skyMaskWidth:v79 skyMaskHeight:v82 cropRectFromSourceDict:v85];
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
    v93 = [*(v3 + 5032) unsignedIntValue];
    v94 = [*(v3 + 5040) unsignedIntValue];
    v95 = [*(v3 + 5048) unsignedIntValue];
    v96 = word_1EDD77BC0;
    v97 = *(v3 + 5120);
    v98 = *(v3 + 5128);
    v99 = v93 | (v94 << 32);
    v100 = v95;
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
      v127 = [*(v3 + 5080) BOOLValue];
      v128 = v126 - 227;
      if (v127)
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
    v141 = [v140 BOOLValue];

    if (v141)
    {
      v142 = [v3 _updateHRGainDownRatioMetadata];
      if (v142)
      {
        v204 = v2;
        LODWORD(v203) = v142;
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

    v223 = [MEMORY[0x1E695DF90] dictionary];
    if (v223)
    {
      LODWORD(v147) = dword_1EDD77B84;
      v148 = [MEMORY[0x1E696AD98] numberWithFloat:v147];
      [v223 setObject:v148 forKeyedSubscript:@"FlashProjMixWeighting"];

      v149 = MEMORY[0x1E695DEC8];
      v150 = [MEMORY[0x1E696AD98] numberWithInt:dword_1EDD77C94];
      v151 = [MEMORY[0x1E696AD98] numberWithInt:dword_1EDD77C98];
      v152 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77C9C];
      v153 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77CA0];
      v154 = [v149 arrayWithObjects:{v150, v151, v152, v153, 0}];
      [v223 setObject:v154 forKeyedSubscript:@"TileStatsRegionInRaw"];

      v155 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77C00];
      [v223 setObject:v155 forKeyedSubscript:@"FdAWBChistMixFactor"];

      v156 = MEMORY[0x1E695DEC8];
      v157 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B79];
      v158 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7B];
      v159 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7D];
      v160 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B7F];
      v161 = [v156 arrayWithObjects:{v157, v158, v159, v160, 0}];
      [v223 setObject:v161 forKeyedSubscript:@"AwbGainsSkinOnly"];

      v162 = MEMORY[0x1E695DEC8];
      v163 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B88];
      v164 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8A];
      v165 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8C];
      v166 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:word_1EDD77B8E];
      v167 = [v162 arrayWithObjects:{v163, v164, v165, v166, 0}];
      [v223 setObject:v167 forKeyedSubscript:@"AwbGainsFlashProj"];

      v168 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dword_1EDD77B74];
      [v223 setObject:v168 forKeyedSubscript:@"AwbColorspace"];

      v169 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77B82];
      v170 = v223;
      [v223 setObject:v169 forKeyedSubscript:@"IsLEDMainFlashforAWB"];

      v171 = [MEMORY[0x1E695DF90] dictionary];
      if (v171)
      {
        v251 = 0.0;
        *&v172 = CAWBAFE::GetMixedLightingScore(*(v3 + 16), &v251);
        v250 = 0;
        CAWBAFE::GetSkyCCT(*(v3 + 16), &v250, v172, v173, v174, v175, v176);
        v177 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77BC4];
        [v171 setObject:v177 forKeyedSubscript:@"UsePrevFrameWP"];

        *&v178 = v251;
        v179 = [MEMORY[0x1E696AD98] numberWithFloat:v178];
        [v171 setObject:v179 forKeyedSubscript:@"MixedLightingScore"];

        v180 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v250];
        [v171 setObject:v180 forKeyedSubscript:@"SkyCCT"];

        [v171 setObject:v220 forKeyedSubscript:@"StrobeWhitePointCCM"];
        *type = 0;
        v249 = 0;
        v246 = 0;
        *v247 = 0;
        CAWBAFE::GetFaceAssistedAWBResultsForMatchProvidedSkinGains(*(v3 + 16), &v249, type, v247, &v247[1], &v246 + 1, &v246);
        LODWORD(v181) = v249;
        v182 = [MEMORY[0x1E696AD98] numberWithFloat:v181];
        [v171 setObject:v182 forKeyedSubscript:@"wpRgLogRatio"];

        LODWORD(v183) = HIDWORD(v249);
        v184 = [MEMORY[0x1E696AD98] numberWithFloat:v183];
        [v171 setObject:v184 forKeyedSubscript:@"wpBgLogRatio"];

        LODWORD(v185) = *type;
        v186 = [MEMORY[0x1E696AD98] numberWithFloat:v185];
        [v171 setObject:v186 forKeyedSubscript:@"wpSkinRgLogRatio"];

        LODWORD(v187) = *&type[4];
        v188 = [MEMORY[0x1E696AD98] numberWithFloat:v187];
        [v171 setObject:v188 forKeyedSubscript:@"wpSkinBgLogRatio"];

        v189 = [MEMORY[0x1E696AD98] numberWithInt:v247[1]];
        [v171 setObject:v189 forKeyedSubscript:@"continuousFDTimes"];

        v190 = [MEMORY[0x1E696AD98] numberWithInt:v247[0]];
        [v171 setObject:v190 forKeyedSubscript:@"skinColorSampleNum"];

        LODWORD(v191) = HIDWORD(v246);
        v192 = [MEMORY[0x1E696AD98] numberWithFloat:v191];
        [v171 setObject:v192 forKeyedSubscript:@"skinColorSampleVariance"];

        LODWORD(v193) = v246;
        v194 = [MEMORY[0x1E696AD98] numberWithFloat:v193];
        [v171 setObject:v194 forKeyedSubscript:@"minDistSkinToWhiteMapping"];

        v195 = [MEMORY[0x1E695DF90] dictionary];
        v201 = v217;
        if (v195)
        {
          *&v196 = *(v3 + 5120) * 0.00024414;
          *&v198 = vcvts_n_f32_u32(word_1EDD77B79, 0xCuLL);
          *&v197 = *(v3 + 5128) * 0.00024414;
          *&v199 = vcvts_n_f32_u32(word_1EDD77B7F, 0xCuLL);
          *&v200 = dword_1EDD77BB8;
          v202 = [v3 calculateInternalAWBMetadataForMIWB:v195 bGain:v196 rSkinGain:v197 bSkinGain:v198 cct:v199 internalMetadata:v200];
          if (v202)
          {
            v205 = v2;
            LODWORD(v203) = v202;
            FigDebugAssert3();
            v201 = v217;
            v54 = FigSignalErrorAtGM();
            v170 = v223;
          }

          else
          {
            v54 = 0;
          }

          [*(v3 + 5088) setObject:v170 forKeyedSubscript:{@"SpatialCCMOutputMetadata", v203, v205}];
          [*(v3 + 5088) setObject:v171 forKeyedSubscript:@"AwbOutputMetadata"];
          [*(v3 + 5088) setObject:v195 forKeyedSubscript:@"MIWBOutputMetadata"];
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

  v104 = [MEMORY[0x1E695DF90] dictionary];
  v219 = v104;
  if (v104)
  {
    v105 = v104;
    v106 = [MEMORY[0x1E696AD98] numberWithBool:byte_1EDD77BC4];
    [v105 setObject:v106 forKeyedSubscript:@"UsePrevFrameWP"];

    v107 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F98]];
    [v105 setObject:v107 forKeyedSubscript:@"StrobeWhitePointCCM"];

    v108 = [*(v3 + 5088) objectForKeyedSubscript:@"AwbOutputMetadata"];

    if (!v108)
    {
      [*(v3 + 5088) setObject:v105 forKeyedSubscript:@"AwbOutputMetadata"];
    }

    v222 = [MEMORY[0x1E695DF90] dictionary];
    if (v222)
    {
      v109 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F20]];
      v110 = [v109 intValue];
      v111 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990EE0]];
      v112 = [v111 intValue];
      v113 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F38]];
      v114 = [v113 intValue];
      v115 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F28]];
      v116 = [v115 intValue];
      v117 = [*(v3 + 5088) objectForKeyedSubscript:*MEMORY[0x1E6990F90]];
      v118 = [v117 intValue];
      *&v119 = vcvts_n_f32_s32(v110, 0xCuLL);
      *&v120 = vcvts_n_f32_s32(v112, 0xCuLL);
      *&v121 = vcvts_n_f32_s32(v114, 0xCuLL);
      *&v122 = vcvts_n_f32_s32(v116, 0xCuLL);
      *&v123 = v118;
      v54 = [v3 calculateInternalAWBMetadataForMIWB:v222 bGain:v119 rSkinGain:v120 bSkinGain:v121 cct:v122 internalMetadata:v123];

      if (v54)
      {
        LODWORD(v203) = v54;
        FigDebugAssert3();
        v54 = FigSignalErrorAtGM();
        [*(v3 + 5088) setObject:v222 forKeyedSubscript:{@"MIWBOutputMetadata", v203, v2}];
      }

      else
      {
        [*(v3 + 5088) setObject:v222 forKeyedSubscript:{@"MIWBOutputMetadata", v203, v204}];
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

- (int)_processSkyMask:(void *)a3 skyMaskWidth:(int)a4 skyMaskHeight:(int)a5 cropRectFromSourceDict:(id)a6
{
  v10 = a6;
  v11 = v10;
  if (a3)
  {
    if (v10 && CGRectMakeWithDictionaryRepresentation(v10, &rect))
    {
      v12 = (rect.size.width * a4);
      v13 = (rect.size.height * a5);
      v14 = (rect.origin.y * a5);
      v15 = v13 * v12;
      if (v14 < v13)
      {
        v16 = 0;
        v17 = (rect.origin.x * a4);
        v18 = v14;
        v19 = a3 + v17 + v14 * a4;
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
          v19 += a4;
        }

        while (v18 != v13);
        goto LABEL_20;
      }
    }

    else
    {
      v15 = a5 * a4;
      if (a5 * a4 >= 1)
      {
        v16 = 0;
        v23 = (a5 * a4);
        do
        {
          v24 = *a3;
          a3 = a3 + 1;
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

- (int)_calculateComboGainsAndNormalizedGainsFromAWBGains:(id)a3 awbComboGains:(id)a4 colorCalGains:(id)a5
{
  var1 = a4.var1;
  self->_awbGains = a3;
  v5.i64[0] = *&a4.var0;
  v5.i32[2] = a4.var2;
  v7 = vtstq_s32(v5, v5);
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0)
  {
    if ((a5.var0 * a3.var0) >> 14 >= 0xFFFF)
    {
      a4.var0 = 0xFFFF;
    }

    else
    {
      a4.var0 = (a5.var0 * a3.var0) >> 14;
    }

    if ((a5.var2 * a3.var2) >> 14 >= 0xFFFF)
    {
      a4.var2 = 0xFFFF;
    }

    else
    {
      a4.var2 = (a5.var2 * a3.var2) >> 14;
    }

    var1 = a3.var1;
  }

  self->_awbComboGains.rGain = a4.var0;
  self->_awbComboGains.gGain = var1;
  self->_awbComboGains.bGain = a4.var2;
  if (var1 <= a4.var2)
  {
    var2 = a4.var2;
  }

  else
  {
    var2 = var1;
  }

  if (var1 >= a4.var2)
  {
    v9 = a4.var2;
  }

  else
  {
    v9 = var1;
  }

  if (a4.var0 > var2)
  {
    LOWORD(var2) = a4.var0;
  }

  if (a4.var0 < v9)
  {
    LOWORD(v9) = a4.var0;
  }

  v10 = ((var2 << 12) / v9);
  self->_awbComboGainsNormalized.rGain = ((a4.var0 << 12) / v10);
  self->_awbComboGainsNormalized.gGain = ((var1 << 12) / v10);
  self->_awbComboGainsNormalized.bGain = ((a4.var2 << 12) / v10);
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
  v6 = [v5 unsignedIntValue];

  v7 = *MEMORY[0x1E6990EF0];
  v8 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:*MEMORY[0x1E6990EF0]];

  if (!v8)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v9 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntValue];

  v11 = *MEMORY[0x1E6990EE8];
  v12 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];

  if (!v12)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v13 = [(NSMutableDictionary *)self->_outputMetadata objectForKeyedSubscript:v11];
  v14 = [v13 unsignedIntValue];

  if (v14 <= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v14;
  }

  if (v10 > v17)
  {
    v17 = v10;
  }

  if (v17 <= 0xFFF)
  {
    [(AWBAlgorithm *)&v25 _updateHRGainDownRatioMetadata];
    return v25;
  }

  v16.i64[0] = __PAIR64__(v10, v6);
  v16.i32[2] = v14;
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

+ (int)getColorCalibrationsUsingIdealColorCalbrations:(id)a3 absoluteColorCalibrations:(id)a4 colorCalibrationsOut:(id *)a5 awbConfig:(id)a6
{
  a3;
  a4;
  v8 = a6;
  operator new();
}

+ (int)calculateSTRBKeyFromWideCamera:(id *)a3 moduleConfig:(id)a4 secondaryModuleConfig:(id)a5
{
  a4;
  a5;
  operator new();
}

+ (int)calculateSTRBKeyFromWideCameraLatticeModel:(id *)a3 moduleConfig:(id)a4 absoluteColorCalibrations:(id)a5 secondaryModuleConfig:(id)a6 secondaryAbsoluteColorCalibrations:(id)a7
{
  v10 = a4;
  a5;
  v11 = a6;
  a7;
  operator new();
}

+ (int)translateAWBGainsToSecondaryPortType:(id)a3 cameraInfo:(id)a4 metadata:(id)a5 validRect:(id)a6 secondaryModuleConfig:(id)a7 secondaryCameraInfo:(id)a8 primaryRGain:(float)a9 primaryBGain:(float)a10 secondaryChannelID:(unsigned int)a11 secondaryRGain:(float *)a12 secondaryBGain:(float *)a13
{
  a3;
  a4;
  a5;
  a6;
  a7;
  a8;
  operator new();
}

+ (int)getInternalAWBMetadataForMIWB:(id)a3 cameraInfo:(id)a4 metadata:(id)a5 validRect:(id)a6 secondaryModuleConfig:(id)a7 secondaryCameraInfo:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  LODWORD(v21) = +[FWPlatformIDUtilities getFWPlatformID];
  v19 = [AWBAlgorithm getInternalAWBMetadataForMIWB:v13 cameraInfo:v14 metadata:v15 validRect:v16 secondaryModuleConfig:v17 secondaryCameraInfo:v18 platformID:v21];

  return v19;
}

+ (int)getInternalAWBMetadataForMIWB:(id)a3 cameraInfo:(id)a4 metadata:(id)a5 validRect:(id)a6 secondaryModuleConfig:(id)a7 secondaryCameraInfo:(id)a8 platformID:(int)a9
{
  v35 = a3;
  v34 = a4;
  v15 = a5;
  v16 = a6;
  v33 = a7;
  v17 = a8;
  v39 = 0;
  v38 = 0;
  [v15 cmi_intValueForKey:*MEMORY[0x1E6990F20] defaultValue:4096 found:&v38];
  if (v38)
  {
    [v15 cmi_intValueForKey:*MEMORY[0x1E6990EE0] defaultValue:4096 found:&v38];
    if (v38 == 1)
    {
      v32 = *MEMORY[0x1E6990E20];
      v18 = [v15 objectForKeyedSubscript:?];

      if (v18)
      {
        v20 = [v15 objectForKeyedSubscript:v32];
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
              if (v17)
              {
                if (v33)
                {
                  if (v36)
                  {
                    *&v26 = v24;
                    *&v27 = v25;
                    LODWORD(v30) = 4;
                    v28 = [AWBAlgorithm translateAWBGainsToSecondaryPortType:v33 cameraInfo:v17 metadata:v15 validRect:v16 secondaryModuleConfig:v35 secondaryCameraInfo:v34 primaryRGain:v26 primaryBGain:v27 secondaryChannelID:v30 secondaryRGain:&v39 + 4 secondaryBGain:&v39];
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
      if (*(&v39 + 1) != 0.0 || (*(&v39 + 1) = [v15 cmi_intValueForKey:*MEMORY[0x1E6990F38] defaultValue:4096 found:{&v38, v19}], v38 == 1))
      {
        LODWORD(v19) = v39;
        if (*&v39 != 0.0 || (*&v19 = [v15 cmi_intValueForKey:*MEMORY[0x1E6990F28] defaultValue:4096 found:{&v38, v19}], *&v39 = *&v19, v38 == 1))
        {
          [v15 cmi_intValueForKey:*MEMORY[0x1E6990F90] defaultValue:6500 found:{&v38, v19, v30, v31}];
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

+ (int)encodeSetFileIDForModuleConfig:(id)a3 setFileID:(unsigned int *)a4
{
  v5 = a3;
  v14 = 0;
  v6 = [v5 objectForKeyedSubscript:@"SetFile"];
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
      if (a4)
      {
        v11 = 0;
        *a4 = (HIDWORD(v14) >> 8) | (v10 << 8) | (BYTE4(v14) << 8);
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
  *a1 = result;
  return result;
}

@end