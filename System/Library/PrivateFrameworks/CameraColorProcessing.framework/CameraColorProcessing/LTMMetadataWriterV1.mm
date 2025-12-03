@interface LTMMetadataWriterV1
+ (id)createLTMMetadataFromLTMOutput:(sLtmComputeOutput *)output statistics:(sCLRProcHITHStat_SOFTISP *)statistics driverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata geometryData:(id)data;
+ (void)_addAverageLTMToMetadata:(id)metadata curvesType:(int)type fromOutput:(sLtmComputeOutput *)output;
+ (void)_addGlobalLTMLookUpTableAlignedToFinalCropRect:(id)rect;
+ (void)_addHazeCorrection:(id)correction driverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata;
+ (void)_addHighlightCompression:(id)compression driverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata;
+ (void)_addLTMCurveTypeToMetadata:(id)metadata driverInputMetadata:(sRefDriverInputs_SOFTISP *)inputMetadata;
+ (void)_addLTMCurvesToMetadata:(id)metadata curvesType:(int)type fromOutput:(sLtmComputeOutput *)output statistics:(sCLRProcHITHStat_SOFTISP *)statistics geometryData:(id)data isSIFR:(BOOL)r;
+ (void)_addLTMEnabledToMetadata:(id)metadata;
+ (void)_addLocalClippingDataToMetadata:(id)metadata statistics:(sCLRProcHITHStat_SOFTISP *)statistics geometryData:(id)data;
+ (void)_addLocalHistToMetadata:(id)metadata statistics:(sCLRProcHITHStat_SOFTISP *)statistics geometryData:(id)data;
+ (void)_addSoftDGainToMetadata:(id)metadata driverInputMetadata:(sRefDriverInputs_SOFTISP *)inputMetadata;
+ (void)_addSpatialCCMDataToMetadata:(id)metadata fromOutput:(sLtmComputeOutput *)output driverInputMetadata:(sRefDriverInputs_SOFTISP *)inputMetadata;
+ (void)addLTMMetadataTo:(id)to curvesType:(int)type fromLTMOutput:(sLtmComputeOutput *)output statistics:(sCLRProcHITHStat_SOFTISP *)statistics driverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata geometryData:(id)data;
@end

@implementation LTMMetadataWriterV1

+ (id)createLTMMetadataFromLTMOutput:(sLtmComputeOutput *)output statistics:(sCLRProcHITHStat_SOFTISP *)statistics driverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata geometryData:(id)data
{
  dataCopy = data;
  v11 = objc_opt_new();
  if (v11)
  {
    [self _addLTMCurvesToMetadata:v11 curvesType:0 fromOutput:output statistics:statistics geometryData:dataCopy isSIFR:metadata->isSIFRFrame];
    [self _addSoftDGainToMetadata:v11 driverInputMetadata:metadata];
    [self _addLTMCurveTypeToMetadata:v11 driverInputMetadata:metadata];
    [self _addLTMEnabledToMetadata:v11];
    [self _addLocalHistToMetadata:v11 statistics:statistics geometryData:dataCopy];
    [self _addLocalClippingDataToMetadata:v11 statistics:statistics geometryData:dataCopy];
    [self _addAverageLTMToMetadata:v11 curvesType:0 fromOutput:output];
    [self _addSpatialCCMDataToMetadata:v11 fromOutput:output driverInputMetadata:metadata];
    [self _addGlobalLTMLookUpTableAlignedToFinalCropRect:v11];
    [self _addHighlightCompression:v11 driverInputMetadata:metadata];
    [self _addHazeCorrection:v11 driverInputMetadata:metadata];
    v12 = v11;
  }

  else
  {
    +[LTMMetadataWriterV1 createLTMMetadataFromLTMOutput:statistics:driverInputMetadata:geometryData:];
  }

  return v11;
}

+ (void)addLTMMetadataTo:(id)to curvesType:(int)type fromLTMOutput:(sLtmComputeOutput *)output statistics:(sCLRProcHITHStat_SOFTISP *)statistics driverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata geometryData:(id)data
{
  v11 = *&type;
  isSIFRFrame = metadata->isSIFRFrame;
  toCopy = to;
  [self _addLTMCurvesToMetadata:toCopy curvesType:v11 fromOutput:output statistics:statistics geometryData:data isSIFR:isSIFRFrame];
  [self _addAverageLTMToMetadata:toCopy curvesType:v11 fromOutput:output];
}

+ (void)_addLTMCurvesToMetadata:(id)metadata curvesType:(int)type fromOutput:(sLtmComputeOutput *)output statistics:(sCLRProcHITHStat_SOFTISP *)statistics geometryData:(id)data isSIFR:(BOOL)r
{
  metadataCopy = metadata;
  dataCopy = data;
  v14 = malloc_type_malloc(0x1878uLL, 0x1000040504FFAC1uLL);
  if (v14)
  {
    v15 = malloc_type_malloc(0x204uLL, 0x1000040BDFB0063uLL);
    if (v15)
    {
      v16 = malloc_type_malloc(0x204uLL, 0x1000040BDFB0063uLL);
      v17 = v16;
      if (v16)
      {
        *v15 = 257;
        *v16 = 257;
        v18 = &output->LTC[3185];
        for (i = 1; i != 258; ++i)
        {
          v15[i] = vcvtms_s32_f32(*v18 * 65535.0);
          v16[i] = vcvtms_s32_f32(v18[257] * 65535.0);
          ++v18;
        }

        HIWORD(v20) = 8;
        *v14 = 0x410000600080004;
        *(v14 + 4) = 130;
        *(v14 + 10) = 0;
        LOWORD(v20) = statistics->localHistStrideX;
        v21 = v20;
        [dataCopy inputTextureDownsampleRatio];
        *&v23 = v22 * v21;
        *(v14 + 9) = *&v23;
        LOWORD(v23) = statistics->localHistStrideY;
        v24 = v23;
        [dataCopy inputTextureDownsampleRatio];
        *(v14 + 10) = (v25 * v24);
        *(v14 + 11) = 65;
        v26 = -6240;
        v27 = vdupq_n_s32(0x477FFF00u);
        do
        {
          v28 = *output->LTC;
          output = (output + 16);
          *&v14[v26 + 6264] = vmovn_s32(vcvtq_u32_f32(vrndmq_f32(vmulq_f32(v28, v27))));
          v26 += 8;
        }

        while (v26);
        v29 = [MEMORY[0x1E695DF88] dataWithBytes:v14 length:6264];
        v30 = [MEMORY[0x1E695DF88] dataWithBytes:v15 length:516];
        v31 = [MEMORY[0x1E695DF88] dataWithBytes:v17 length:516];
        if (type == 3)
        {
          [metadataCopy setObject:v29 forKeyedSubscript:@"LTMLookUpTables_HLGWithoutFaceBoost"];
          [metadataCopy setObject:v30 forKeyedSubscript:@"GlobalLTMLookUpTable_HLGWithoutFaceBoost"];
          v33 = @"GlobalToneCurveLookUpTable_HLGWithoutFaceBoost";
        }

        else
        {
          if (type == 2)
          {
            [metadataCopy setObject:v29 forKeyedSubscript:*MEMORY[0x1E6990E00]];
            [metadataCopy setObject:v30 forKeyedSubscript:*MEMORY[0x1E6990DC8]];
            v32 = MEMORY[0x1E6990DD8];
          }

          else if (type == 1)
          {
            [metadataCopy setObject:v29 forKeyedSubscript:*MEMORY[0x1E6990E08]];
            [metadataCopy setObject:v30 forKeyedSubscript:*MEMORY[0x1E6990DD0]];
            v32 = MEMORY[0x1E6990DE0];
          }

          else
          {
            [metadataCopy setObject:v29 forKeyedSubscript:*MEMORY[0x1E6991068]];
            [metadataCopy setObject:v30 forKeyedSubscript:*MEMORY[0x1E6991020]];
            v32 = MEMORY[0x1E6991030];
          }

          v33 = *v32;
        }

        [metadataCopy setObject:v31 forKeyedSubscript:v33];
      }

      else
      {
        +[LTMMetadataWriterV1 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:];
        v31 = 0;
        v30 = 0;
        v29 = 0;
      }
    }

    else
    {
      +[LTMMetadataWriterV1 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:];
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v17 = 0;
    }
  }

  else
  {
    +[LTMMetadataWriterV1 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:];
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v17 = 0;
    v15 = 0;
  }

  free(v15);
  free(v17);
  free(v14);
}

+ (void)_addSoftDGainToMetadata:(id)metadata driverInputMetadata:(sRefDriverInputs_SOFTISP *)inputMetadata
{
  v5 = MEMORY[0x1E696AD98];
  LODWORD(v4) = vcvts_n_u32_f32(inputMetadata->softIspDGain, 8uLL);
  metadataCopy = metadata;
  v7 = [v5 numberWithUnsignedInt:v4];
  [metadataCopy setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991168]];
}

+ (void)_addLTMCurveTypeToMetadata:(id)metadata driverInputMetadata:(sRefDriverInputs_SOFTISP *)inputMetadata
{
  v4 = MEMORY[0x1E696AD98];
  ltmProcMode = inputMetadata->ltmProcMode;
  metadataCopy = metadata;
  v7 = [v4 numberWithInt:ltmProcMode];
  [metadataCopy setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991058]];
}

+ (void)_addAverageLTMToMetadata:(id)metadata curvesType:(int)type fromOutput:(sLtmComputeOutput *)output
{
  metadataCopy = metadata;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:65];
  for (i = 0; i != 65; ++i)
  {
    v9 = 0;
    v10 = 0;
    outputCopy = output;
    do
    {
      for (j = 0; j != 520; j += 65)
      {
        v10 = (floorf(outputCopy->LTC[j] * 65535.0) + v10);
      }

      ++v9;
      outputCopy = (outputCopy + 2080);
    }

    while (v9 != 6);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:(v10 / 0x30)];
    [v7 setObject:v13 atIndexedSubscript:i];

    output = (output + 4);
  }

  if (type == 1)
  {
    v15 = *MEMORY[0x1E6990D90];
    v14 = metadataCopy;
  }

  else
  {
    v14 = metadataCopy;
    if (type == 2)
    {
      v16 = MEMORY[0x1E6990D88];
    }

    else
    {
      if (type == 3)
      {
        v15 = @"AverageLTM_HLGWithoutFaceBoost";
        goto LABEL_15;
      }

      v16 = MEMORY[0x1E6990F70];
    }

    v15 = *v16;
  }

LABEL_15:
  [v14 setObject:v7 forKeyedSubscript:v15];
}

+ (void)_addHighlightCompression:(id)compression driverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata
{
  compressionCopy = compression;
  if (metadata->useHighlightCompression)
  {
    v9 = compressionCopy;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:257];
    for (i = 0; i != 257; ++i)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:highlightCompressionDataScaled[i]];
      [v6 setObject:v8 atIndexedSubscript:i];
    }

    [v9 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6990DB8]];

    compressionCopy = v9;
  }
}

+ (void)_addHazeCorrection:(id)correction driverInputMetadata:(sRefDriverInputs_SOFTISP *)metadata
{
  correctionCopy = correction;
  if (metadata->useHazeCorrection)
  {
    v10 = correctionCopy;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    for (i = 0; i != 3; ++i)
    {
      LODWORD(v7) = *(&metadata[1].gainDigi + (i & 3));
      v9 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      [v6 setObject:v9 atIndexedSubscript:i];
    }

    [v10 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6990DE8]];

    correctionCopy = v10;
  }
}

+ (void)_addLTMEnabledToMetadata:(id)metadata
{
  v3 = MEMORY[0x1E696AD98];
  metadataCopy = metadata;
  v5 = [v3 numberWithBool:1];
  [metadataCopy setObject:v5 forKeyedSubscript:*MEMORY[0x1E6991060]];
}

+ (void)_addLocalHistToMetadata:(id)metadata statistics:(sCLRProcHITHStat_SOFTISP *)statistics geometryData:(id)data
{
  metadataCopy = metadata;
  dataCopy = data;
  v8 = malloc_type_malloc(0x19A0uLL, 0x1000040E0EAB150uLL);
  v9 = v8;
  if (v8)
  {
    HIDWORD(v10) = 6560;
    *v8 = 0x19A000000001;
    LODWORD(v10) = statistics->gridOriginX;
    v11 = v10;
    [dataCopy deepZoomOrigin];
    v13 = v12 + v11;
    [dataCopy inputTextureDownsampleRatio];
    *&v15 = v13 * v14;
    *(v9 + 4) = *&v15;
    LODWORD(v15) = statistics->gridOriginY;
    v16 = v15;
    [dataCopy deepZoomOrigin];
    v18 = v17 + v16;
    [dataCopy inputTextureDownsampleRatio];
    v20 = v18 * v19;
    *(v9 + 5) = v20;
    LOWORD(v20) = statistics->localHistBlockSizeX;
    *&v18 = LODWORD(v20);
    [dataCopy inputTextureDownsampleRatio];
    *&v22 = v21 * *&v18;
    *(v9 + 6) = *&v22;
    LOWORD(v22) = statistics->localHistBlockSizeY;
    *&v18 = v22;
    [dataCopy inputTextureDownsampleRatio];
    *&v24 = v23 * *&v18;
    *(v9 + 7) = *&v24;
    LOWORD(v24) = statistics->localHistStrideX;
    *&v18 = v24;
    [dataCopy inputTextureDownsampleRatio];
    *&v26 = v25 * *&v18;
    *(v9 + 8) = *&v26;
    LOWORD(v26) = statistics->localHistStrideY;
    *&v18 = v26;
    [dataCopy inputTextureDownsampleRatio];
    *(v9 + 9) = (v27 * *&v18);
    *(v9 + 5) = *&statistics->localHistNumHorBlocks;
    *(v9 + 12) = 68;
    *(v9 + 13) = statistics->localHistCountBitShift;
    *(v9 + 7) = statistics->localHistogramOriginalTilePixelCount;
    memcpy(v9 + 4, statistics->localHistStat, 0x1980uLL);
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:6560];
    [metadataCopy setObject:v28 forKeyedSubscript:*MEMORY[0x1E6991088]];
  }

  else
  {
    +[LTMMetadataWriterV1 _addLocalHistToMetadata:statistics:geometryData:];
  }

  free(v9);
}

+ (void)_addLocalClippingDataToMetadata:(id)metadata statistics:(sCLRProcHITHStat_SOFTISP *)statistics geometryData:(id)data
{
  metadataCopy = metadata;
  dataCopy = data;
  v9 = malloc_type_malloc(0x1ACuLL, 0x1000040DE9E61F1uLL);
  v10 = v9;
  if (v9)
  {
    HIDWORD(v11) = 428;
    *v9 = 0x1AC00000001;
    LODWORD(v11) = statistics->gridOriginX;
    v12 = v11;
    [dataCopy deepZoomOrigin];
    v14 = v13 + v12;
    [dataCopy inputTextureDownsampleRatio];
    *&v16 = v14 * v15;
    *(v10 + 4) = *&v16;
    LODWORD(v16) = statistics->gridOriginY;
    v17 = v16;
    [dataCopy deepZoomOrigin];
    v19 = v18 + v17;
    [dataCopy inputTextureDownsampleRatio];
    v21 = v19 * v20;
    *(v10 + 5) = v21;
    LOWORD(v21) = statistics->localHistBlockSizeX;
    *&v19 = LODWORD(v21);
    [dataCopy inputTextureDownsampleRatio];
    *&v23 = v22 * *&v19;
    *(v10 + 6) = *&v23;
    LOWORD(v23) = statistics->localHistBlockSizeY;
    *&v19 = v23;
    [dataCopy inputTextureDownsampleRatio];
    *&v25 = v24 * *&v19;
    *(v10 + 7) = *&v25;
    LOWORD(v25) = statistics->localHistStrideX;
    *&v19 = v25;
    [dataCopy inputTextureDownsampleRatio];
    *&v27 = v26 * *&v19;
    *(v10 + 8) = *&v27;
    LOWORD(v27) = statistics->localHistStrideY;
    *&v19 = v27;
    [dataCopy inputTextureDownsampleRatio];
    v28 = 0;
    *(v10 + 9) = (v29 * *&v19);
    *(v10 + 5) = *&statistics->localHistNumHorBlocks;
    *(v10 + 12) = statistics->localHistCountBitShift;
    localHistLowThreshold = statistics->localHistLowThreshold;
    *(v10 + 7) = statistics->localHistogramOriginalTilePixelCount;
    *(v10 + 16) = localHistLowThreshold;
    *(v10 + 17) = 0;
    *(v10 + 18) = statistics->localHistHighThreshold;
    *(v10 + 38) = 65539;
    *(v10 + 21) = 2;
    v31 = v10 + 25;
    v32 = statistics->localHistStat + 134;
    do
    {
      v33 = v32;
      v34 = v31;
      v35 = 8;
      do
      {
        *(v34 - 3) = *(v33 - 67);
        *(v34 - 2) = *(v33 - 66);
        *(v34 - 1) = *(v33 - 1);
        v36 = *v33;
        v33 += 68;
        *v34 = v36;
        v34 += 4;
        --v35;
      }

      while (v35);
      ++v28;
      v31 += 32;
      v32 += 1088;
    }

    while (v28 != 6);
    v37 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:428];
    [metadataCopy setObject:v37 forKeyedSubscript:*MEMORY[0x1E6991080]];
  }

  else
  {
    +[LTMMetadataWriterV1 _addLocalClippingDataToMetadata:statistics:geometryData:];
  }

  free(v10);
}

+ (void)_addSpatialCCMDataToMetadata:(id)metadata fromOutput:(sLtmComputeOutput *)output driverInputMetadata:(sRefDriverInputs_SOFTISP *)inputMetadata
{
  metadataCopy = metadata;
  if (_addSpatialCCMDataToMetadata_fromOutput_driverInputMetadata__onceToken != -1)
  {
    +[LTMMetadataWriterV1 _addSpatialCCMDataToMetadata:fromOutput:driverInputMetadata:];
  }

  if (inputMetadata->useSpatialCCM)
  {
    v8 = malloc_type_malloc(0x2898uLL, 0x1000040504FFAC1uLL);
    v9 = v8;
    if (v8)
    {
      *v8 = 0x360000C001003E9;
      *(v8 + 4) = 54;
      *(v8 + 10) = 0;
      *(v8 + 9) = inputMetadata->tileStatsRegion.width >> 4;
      *(v8 + 10) = inputMetadata->tileStatsRegion.height / 0xC;
      *(v8 + 11) = 4096;
      v10 = v8 + 76;
      v11 = &output->LTC[3725];
      v12 = 192;
      v13 = vdupq_n_s32(0x45800000u);
      do
      {
        v14 = *(v11 - 26);
        v15 = *(v11 - 23);
        v16 = *(v11 - 22);
        v17.f32[0] = *(v11 - 20);
        v18 = *(v11 - 19);
        v19.f32[0] = *(v11 - 24);
        v20 = *(v11 - 17);
        *v10 = vcvtms_s32_f32(*(v11 - 18) * 4096.0);
        v21 = *(v11 - 14);
        v22 = *(v11 - 13);
        v23.f32[0] = *(v11 - 16);
        v24 = *(v11 - 15);
        v25 = *(v11 - 10);
        v27.f32[0] = *(v11 - 12);
        v26 = *(v11 - 11);
        v23.f32[1] = *(v11 - 25);
        v27.f32[1] = *(v11 - 21);
        *(v10 - 1) = vcvtms_s32_f32(*(v11 - 9) * 4096.0);
        v28.f32[0] = *(v11 - 8);
        v29 = (v11 - 5);
        v30 = (v11 - 2);
        v31.f32[0] = *(v11 - 4);
        v32 = (v11 - 1);
        v33 = (v11 - 3);
        v28.i32[1] = v20;
        v28.i32[2] = v14;
        v28.f32[3] = *(v11 - 7);
        v23.f32[2] = *(v11 - 6);
        v23.i32[3] = v24;
        v34 = *v11;
        v11 += 27;
        v31.i32[1] = v22;
        v31.i32[2] = v16;
        v31.i32[3] = *v33;
        v19.i32[1] = *v29;
        v19.i64[1] = __PAIR64__(v15, v21);
        *(v10 - 26) = vuzp1q_s16(vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v28, v13))), vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v23, v13))));
        v17.i32[1] = *v32;
        v17.i64[1] = __PAIR64__(v18, v25);
        v27.i32[2] = *v30;
        *(v10 - 18) = vuzp1q_s16(vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v19, v13))), vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v31, v13))));
        v27.i32[3] = v26;
        *(v10 - 10) = vuzp1q_s16(vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v27, v13))), vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v17, v13))));
        *(v10 - 2) = vcvtms_s32_f32(v34 * 4096.0);
        v10 += 27;
        --v12;
      }

      while (v12);
      v35 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:10392];
      if (v35)
      {
        v36 = v35;
        [metadataCopy setObject:v35 forKeyedSubscript:*MEMORY[0x1E6991078]];
      }

      else
      {
        +[LTMMetadataWriterV1 _addSpatialCCMDataToMetadata:fromOutput:driverInputMetadata:];
      }
    }

    else
    {
      +[LTMMetadataWriterV1 _addSpatialCCMDataToMetadata:fromOutput:driverInputMetadata:];
    }

    free(v9);
  }

  else
  {
    [metadataCopy removeObjectForKey:*MEMORY[0x1E6991078]];
  }
}

+ (void)_addGlobalLTMLookUpTableAlignedToFinalCropRect:(id)rect
{
  v3 = MEMORY[0x1E696AD98];
  rectCopy = rect;
  v5 = [v3 numberWithBool:1];
  [rectCopy setObject:v5 forKeyedSubscript:*MEMORY[0x1E6990DC0]];
}

+ (void)createLTMMetadataFromLTMOutput:statistics:driverInputMetadata:geometryData:.cold.1()
{
  LODWORD(v11) = 0;
  FigDebugAssert3();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v10 = OUTLINED_FUNCTION_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v1, v12, 0, *v13, v13[2], OS_LOG_TYPE_DEFAULT);
  if (OUTLINED_FUNCTION_9(v10))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV1 createLTMMetadataFromLTMOutput:statistics:driverInputMetadata:geometryData:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV1 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV1 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV1 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (uint64_t)_addLocalHistToMetadata:statistics:geometryData:.cold.1()
{
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

+ (void)_addLocalClippingDataToMetadata:statistics:geometryData:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV1 _addLocalClippingDataToMetadata:statistics:geometryData:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addSpatialCCMDataToMetadata:fromOutput:driverInputMetadata:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV1 _addSpatialCCMDataToMetadata:fromOutput:driverInputMetadata:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addSpatialCCMDataToMetadata:fromOutput:driverInputMetadata:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV1 _addSpatialCCMDataToMetadata:fromOutput:driverInputMetadata:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

@end