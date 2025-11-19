@interface LTMCurvesComputeV2
- (LTMCurvesComputeV2)initWith:(sRefDriverInputs_SOFTISP *)a3 HITH:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5 statsObj:(id)a6 optimized:(BOOL)a7 digitalFlash:(BOOL)a8 computeHDRCurves:(BOOL)a9 computeCurvesWoFaceBoost:(BOOL)a10 computeHDRCurvesWoFaceBoost:(BOOL)a11 enhancedLocalHistogram:(BOOL)a12 enableCB:(BOOL)a13 enableFATE:(BOOL)a14;
- (id)compute;
- (void)compute;
@end

@implementation LTMCurvesComputeV2

- (LTMCurvesComputeV2)initWith:(sRefDriverInputs_SOFTISP *)a3 HITH:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5 statsObj:(id)a6 optimized:(BOOL)a7 digitalFlash:(BOOL)a8 computeHDRCurves:(BOOL)a9 computeCurvesWoFaceBoost:(BOOL)a10 computeHDRCurvesWoFaceBoost:(BOOL)a11 enhancedLocalHistogram:(BOOL)a12 enableCB:(BOOL)a13 enableFATE:(BOOL)a14
{
  v20 = a5;
  v21 = a6;
  v38.receiver = self;
  v38.super_class = LTMCurvesComputeV2;
  v22 = [(LTMCurvesComputeV2 *)&v38 init];
  if (!v22)
  {
    [LTMCurvesComputeV2 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:];
LABEL_9:
    v36 = 0;
    goto LABEL_5;
  }

  v23 = objc_opt_new();
  computeLTM = v22->_computeLTM;
  v22->_computeLTM = v23;

  if (!v22->_computeLTM)
  {
    [LTMCurvesComputeV2 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:];
    goto LABEL_9;
  }

  v25 = objc_opt_new();
  driverLTM = v22->_driverLTM;
  v22->_driverLTM = v25;

  if (!v22->_driverLTM)
  {
    [LTMCurvesComputeV2 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:];
    goto LABEL_9;
  }

  memcpy(&v22->_driverInputMetadata, a3, 0x8F0uLL);
  v22->_isDigitalFlash = a8;
  v22->_computeHDRCurves = a9;
  v22->_computeCurvesWoFaceBoost = a10;
  v22->_computeHDRCurvesWoFaceBoost = a11;
  v22->_enableHiResLocalHistogram = a12;
  v22->_enableCB = a13;
  v22->_enableFATE = a14;
  v27 = [v20 copy];
  geometryData = v22->_geometryData;
  v22->_geometryData = v27;

  v29 = *&a4->localHistBlockSizeX;
  v30 = *&a4->globalHistWindow;
  v31 = *&a4->localHistStat;
  *&v22->_procHITHStat.thumbnailStat = *&a4->thumbnailStat;
  *&v22->_procHITHStat.localHistStat = v31;
  v33 = *&a4->globalFaceHistStat;
  v32 = *&a4->calculatedOnPortraitOrientation;
  v34 = *&a4->localHistLowThreshold;
  *&v22->_procHITHStat.globalHistStat = *&a4->globalHistStat;
  *&v22->_procHITHStat.globalFaceHistStat = v33;
  v35 = *&a4->thumbnailWindow;
  *&v22->_procHITHStat.thumbnailDownsampleX = *&a4->thumbnailDownsampleX;
  *&v22->_procHITHStat.thumbnailWindow = v35;
  *&v22->_procHITHStat.globalHistWindow = v30;
  *&v22->_procHITHStat.localHistBlockSizeX = v29;
  *&v22->_procHITHStat.localHistLowThreshold = v34;
  *&v22->_procHITHStat.calculatedOnPortraitOrientation = v32;
  v22->_procHITHStat.thumbnailStat = v22->_thumbnailStat;
  v22->_procHITHStat.localHistStat = v22->_localHistStat;
  v22->_procHITHStat.globalHistStat = v22->_globalHistStat;
  v22->_procHITHStat.globalFaceHistStat = v22->_globalFaceHistStat;
  objc_storeStrong(&v22->_ltmStats, a6);
  LOBYTE(v22[1].super.isa) = a7;
  v36 = v22;
LABEL_5:

  return v36;
}

- (id)compute
{
  p_faceLTMVer = &self->_computeInputsMetadata.ltmComputeMeta.faceLTMVer;
  [(LTMStats *)self->_ltmStats finishCalculateHITHStatistics:&self->_procHITHStat optimized:LOBYTE(self[1].super.isa)];
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    v5 = *v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  self->_anon_594[901] = self->_enableCB;
  self->_anon_594[900] = self->_enableFATE;
  p_faceLTMVer[874] = self->_enableHiResLocalHistogram;
  if (v5)
  {
    kdebug_trace();
    if (*v4 == 1)
    {
      kdebug_trace();
    }
  }

  if ([(LTMDriverRefV2 *)self->_driverLTM computeLtmComputeInput:&self->_procHITHStat withMetadata:&self->_driverInputMetadata to:&self->_computeInputs computeInputMetadata:&self->_computeInputsMetadata.ltmComputeMeta.useFlash])
  {
    [LTMCurvesComputeV2 compute];
  }

  else if ([(LTMComputeRefV2 *)self->_computeLTM computeLTM:&self->_computeInputs withMetadata:&self->_computeInputsMetadata.ltmComputeMeta.useFlash to:&self->_computeOutput.LTC[1]])
  {
    [LTMCurvesComputeV2 compute];
  }

  else
  {
    if (*v4 == 1)
    {
      kdebug_trace();
    }

    v6 = [LTMMetadataWriterV2 createLTMMetadataFromLTMOutput:&self->_computeOutput.LTC[1] statistics:&self->_procHITHStat driverInputMetadata:&self->_driverInputMetadata geometryData:self->_geometryData];
    if (!v6)
    {
      [LTMCurvesComputeV2 compute];
      goto LABEL_23;
    }

    if (self->_computeHDRCurves)
    {
      *p_faceLTMVer = 1;
      v7 = [(LTMComputeRefV2 *)self->_computeLTM computeLTM:&self->_computeInputs withMetadata:&self->_computeInputsMetadata.ltmComputeMeta.useFlash to:&self->_computeOutput.LTC[1]];
      if (v7)
      {
        [(LTMCurvesComputeV2 *)v7 compute];
        goto LABEL_34;
      }

      [LTMMetadataWriterV2 addLTMMetadataTo:v6 curvesType:1 fromLTMOutput:&self->_computeOutput.LTC[1] statistics:&self->_procHITHStat driverInputMetadata:&self->_driverInputMetadata geometryData:self->_geometryData];
    }

    if (!self->_computeCurvesWoFaceBoost)
    {
      goto LABEL_19;
    }

    self->_driverInputMetadata.forceDisableFaceBoost = 1;
    self->_driverInputMetadata.faceExpRatioFiltered = 1.0;
    self->_driverInputMetadata.gammaCurve = 0;
    v8 = [(LTMDriverRefV2 *)self->_driverLTM computeLtmComputeInput:&self->_procHITHStat withMetadata:&self->_driverInputMetadata to:&self->_computeInputs computeInputMetadata:&self->_computeInputsMetadata.ltmComputeMeta.useFlash];
    if (v8)
    {
      [(LTMCurvesComputeV2 *)v8 compute];
    }

    else
    {
      v9 = [(LTMComputeRefV2 *)self->_computeLTM computeLTM:&self->_computeInputs withMetadata:&self->_computeInputsMetadata.ltmComputeMeta.useFlash to:&self->_computeOutput.LTC[1]];
      if (!v9)
      {
        [LTMMetadataWriterV2 addLTMMetadataTo:v6 curvesType:2 fromLTMOutput:&self->_computeOutput.LTC[1] statistics:&self->_procHITHStat driverInputMetadata:&self->_driverInputMetadata geometryData:self->_geometryData];
LABEL_19:
        if (!self->_computeHDRCurvesWoFaceBoost)
        {
          goto LABEL_23;
        }

        self->_driverInputMetadata.forceDisableFaceBoost = 1;
        self->_driverInputMetadata.faceExpRatioFiltered = 1.0;
        self->_driverInputMetadata.gammaCurve = 1;
        v10 = [(LTMDriverRefV2 *)self->_driverLTM computeLtmComputeInput:&self->_procHITHStat withMetadata:&self->_driverInputMetadata to:&self->_computeInputs computeInputMetadata:&self->_computeInputsMetadata.ltmComputeMeta.useFlash];
        if (v10)
        {
          [(LTMCurvesComputeV2 *)v10 compute];
        }

        else
        {
          v11 = [(LTMComputeRefV2 *)self->_computeLTM computeLTM:&self->_computeInputs withMetadata:&self->_computeInputsMetadata.ltmComputeMeta.useFlash to:&self->_computeOutput.LTC[1]];
          if (!v11)
          {
            [LTMMetadataWriterV2 addLTMMetadataTo:v6 curvesType:3 fromLTMOutput:&self->_computeOutput.LTC[1] statistics:&self->_procHITHStat driverInputMetadata:&self->_driverInputMetadata geometryData:self->_geometryData];
            goto LABEL_23;
          }

          [(LTMCurvesComputeV2 *)v11 compute];
        }

        goto LABEL_34;
      }

      [(LTMCurvesComputeV2 *)v9 compute];
    }
  }

LABEL_34:
  v6 = 0;
LABEL_23:

  return v6;
}

- (void)initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:.cold.1()
{
  OUTLINED_FUNCTION_1();
  LODWORD(v10) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMCurvesComputeV2 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:.cold.2()
{
  OUTLINED_FUNCTION_1();
  LODWORD(v10) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMCurvesComputeV2 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:.cold.3()
{
  OUTLINED_FUNCTION_1();
  LODWORD(v10) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMCurvesComputeV2 initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:]");
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