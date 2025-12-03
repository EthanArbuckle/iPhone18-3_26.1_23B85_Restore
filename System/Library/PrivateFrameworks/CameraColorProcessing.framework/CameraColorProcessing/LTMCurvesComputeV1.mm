@interface LTMCurvesComputeV1
- (LTMCurvesComputeV1)initWith:(sRefDriverInputs_SOFTISP *)with HITH:(sCLRProcHITHStat_SOFTISP *)h geometryData:(id)data statsObj:(id)obj optimized:(BOOL)optimized digitalFlash:(BOOL)flash computeHDRCurves:(BOOL)curves computeCurvesWoFaceBoost:(BOOL)self0 computeHDRCurvesWoFaceBoost:(BOOL)self1;
- (id)compute;
- (void)compute;
@end

@implementation LTMCurvesComputeV1

- (LTMCurvesComputeV1)initWith:(sRefDriverInputs_SOFTISP *)with HITH:(sCLRProcHITHStat_SOFTISP *)h geometryData:(id)data statsObj:(id)obj optimized:(BOOL)optimized digitalFlash:(BOOL)flash computeHDRCurves:(BOOL)curves computeCurvesWoFaceBoost:(BOOL)self0 computeHDRCurvesWoFaceBoost:(BOOL)self1
{
  dataCopy = data;
  objCopy = obj;
  v35.receiver = self;
  v35.super_class = LTMCurvesComputeV1;
  v19 = [(LTMCurvesComputeV1 *)&v35 init];
  if (!v19)
  {
    [LTMCurvesComputeV1 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:];
LABEL_9:
    v33 = 0;
    goto LABEL_5;
  }

  v20 = objc_opt_new();
  computeLTM = v19->_computeLTM;
  v19->_computeLTM = v20;

  if (!v19->_computeLTM)
  {
    [LTMCurvesComputeV1 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:];
    goto LABEL_9;
  }

  v22 = objc_opt_new();
  driverLTM = v19->_driverLTM;
  v19->_driverLTM = v22;

  if (!v19->_driverLTM)
  {
    [LTMCurvesComputeV1 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:];
    goto LABEL_9;
  }

  memcpy(&v19->_driverInputMetadata, with, 0x8F0uLL);
  v19->_isDigitalFlash = flash;
  v19->_computeHDRCurves = curves;
  v19->_computeCurvesWoFaceBoost = boost;
  v19->_computeHDRCurvesWoFaceBoost = faceBoost;
  v24 = [dataCopy copy];
  geometryData = v19->_geometryData;
  v19->_geometryData = v24;

  v26 = *&h->localHistBlockSizeX;
  v27 = *&h->globalHistWindow;
  v28 = *&h->localHistStat;
  *&v19->_procHITHStat.thumbnailStat = *&h->thumbnailStat;
  *&v19->_procHITHStat.localHistStat = v28;
  v30 = *&h->globalFaceHistStat;
  v29 = *&h->calculatedOnPortraitOrientation;
  v31 = *&h->localHistLowThreshold;
  *&v19->_procHITHStat.globalHistStat = *&h->globalHistStat;
  v32 = *&h->thumbnailWindow;
  *&v19->_procHITHStat.thumbnailDownsampleX = *&h->thumbnailDownsampleX;
  *&v19->_procHITHStat.thumbnailWindow = v32;
  *&v19->_procHITHStat.globalHistWindow = v27;
  *&v19->_procHITHStat.localHistBlockSizeX = v26;
  *&v19->_procHITHStat.localHistLowThreshold = v31;
  *&v19->_procHITHStat.calculatedOnPortraitOrientation = v29;
  *&v19->_procHITHStat.globalFaceHistStat = v30;
  v19->_procHITHStat.thumbnailStat = v19->_thumbnailStat;
  v19->_procHITHStat.localHistStat = v19->_localHistStat;
  v19->_procHITHStat.globalHistStat = v19->_globalHistStat;
  objc_storeStrong(&v19->_ltmStats, obj);
  LOBYTE(v19->_computeInputs.thumbnailHistEV0[150]) = optimized;
  v33 = v19;
LABEL_5:

  return v33;
}

- (id)compute
{
  [(LTMStats *)self->_ltmStats finishCalculateHITHStatistics:&self->_procHITHStat optimized:LOBYTE(self->_computeInputs.thumbnailHistEV0[150])];
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    if (*v3 == 1)
    {
      kdebug_trace();
      if (*v3 == 1)
      {
        kdebug_trace();
      }
    }
  }

  if ([(LTMDriverRefV1 *)self->_driverLTM computeLtmComputeInput:&self->_procHITHStat withMetadata:&self->_driverInputMetadata to:&self->_computeInputs computeInputMetadata:&self->_computeInputs.localHist[4760]])
  {
    [LTMCurvesComputeV1 compute];
  }

  else if ([(LTMComputeRefV1 *)self->_computeLTM computeLTM:&self->_computeInputs withMetadata:&self->_computeInputs.localHist[4760] to:&self->_computeInputs.localHist[4988]])
  {
    [LTMCurvesComputeV1 compute];
  }

  else
  {
    if (*v3 == 1)
    {
      kdebug_trace();
    }

    v4 = [LTMMetadataWriterV1 createLTMMetadataFromLTMOutput:&self->_computeInputs.localHist[4988] statistics:&self->_procHITHStat driverInputMetadata:&self->_driverInputMetadata geometryData:self->_geometryData];
    if (!v4)
    {
      [LTMCurvesComputeV1 compute];
      goto LABEL_21;
    }

    if (self->_computeHDRCurves)
    {
      LODWORD(self->_computeInputs.localHist[4762]) = 1;
      v5 = [(LTMComputeRefV1 *)self->_computeLTM computeLTM:&self->_computeInputs withMetadata:&self->_computeInputs.localHist[4760] to:&self->_computeInputs.localHist[4988]];
      if (v5)
      {
        [(LTMCurvesComputeV1 *)v5 compute];
        goto LABEL_32;
      }

      [LTMMetadataWriterV1 addLTMMetadataTo:v4 curvesType:1 fromLTMOutput:&self->_computeInputs.localHist[4988] statistics:&self->_procHITHStat driverInputMetadata:&self->_driverInputMetadata geometryData:self->_geometryData];
    }

    if (!self->_computeCurvesWoFaceBoost)
    {
      goto LABEL_17;
    }

    self->_driverInputMetadata.forceDisableFaceBoost = 1;
    self->_driverInputMetadata.faceExpRatioFiltered = 1.0;
    self->_driverInputMetadata.gammaCurve = 0;
    v6 = [(LTMDriverRefV1 *)self->_driverLTM computeLtmComputeInput:&self->_procHITHStat withMetadata:&self->_driverInputMetadata to:&self->_computeInputs computeInputMetadata:&self->_computeInputs.localHist[4760]];
    if (v6)
    {
      [(LTMCurvesComputeV1 *)v6 compute];
    }

    else
    {
      v7 = [(LTMComputeRefV1 *)self->_computeLTM computeLTM:&self->_computeInputs withMetadata:&self->_computeInputs.localHist[4760] to:&self->_computeInputs.localHist[4988]];
      if (!v7)
      {
        [LTMMetadataWriterV1 addLTMMetadataTo:v4 curvesType:2 fromLTMOutput:&self->_computeInputs.localHist[4988] statistics:&self->_procHITHStat driverInputMetadata:&self->_driverInputMetadata geometryData:self->_geometryData];
LABEL_17:
        if (!self->_computeHDRCurvesWoFaceBoost)
        {
          goto LABEL_21;
        }

        self->_driverInputMetadata.forceDisableFaceBoost = 1;
        self->_driverInputMetadata.faceExpRatioFiltered = 1.0;
        self->_driverInputMetadata.gammaCurve = 1;
        v8 = [(LTMDriverRefV1 *)self->_driverLTM computeLtmComputeInput:&self->_procHITHStat withMetadata:&self->_driverInputMetadata to:&self->_computeInputs computeInputMetadata:&self->_computeInputs.localHist[4760]];
        if (v8)
        {
          [(LTMCurvesComputeV1 *)v8 compute];
        }

        else
        {
          v9 = [(LTMComputeRefV1 *)self->_computeLTM computeLTM:&self->_computeInputs withMetadata:&self->_computeInputs.localHist[4760] to:&self->_computeInputs.localHist[4988]];
          if (!v9)
          {
            [LTMMetadataWriterV1 addLTMMetadataTo:v4 curvesType:3 fromLTMOutput:&self->_computeInputs.localHist[4988] statistics:&self->_procHITHStat driverInputMetadata:&self->_driverInputMetadata geometryData:self->_geometryData];
            goto LABEL_21;
          }

          [(LTMCurvesComputeV1 *)v9 compute];
        }

        goto LABEL_32;
      }

      [(LTMCurvesComputeV1 *)v7 compute];
    }
  }

LABEL_32:
  v4 = 0;
LABEL_21:

  return v4;
}

- (void)initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:.cold.1()
{
  OUTLINED_FUNCTION_1();
  LODWORD(v10) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMCurvesComputeV1 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:.cold.2()
{
  OUTLINED_FUNCTION_1();
  LODWORD(v10) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMCurvesComputeV1 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:.cold.3()
{
  OUTLINED_FUNCTION_1();
  LODWORD(v10) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMCurvesComputeV1 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)compute
{
  OUTLINED_FUNCTION_3_0();
  FigDebugAssert3();
}

@end