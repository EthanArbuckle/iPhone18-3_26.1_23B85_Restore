@interface LTMMetadataWriterV1
+ (id)createLTMMetadataFromLTMOutput:(sLtmComputeOutput *)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a5 geometryData:(id)a6;
+ (void)_addAverageLTMToMetadata:(id)a3 curvesType:(int)a4 fromOutput:(sLtmComputeOutput *)a5;
+ (void)_addGlobalLTMLookUpTableAlignedToFinalCropRect:(id)a3;
+ (void)_addHazeCorrection:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4;
+ (void)_addHighlightCompression:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4;
+ (void)_addLTMCurveTypeToMetadata:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4;
+ (void)_addLTMCurvesToMetadata:(id)a3 curvesType:(int)a4 fromOutput:(sLtmComputeOutput *)a5 statistics:(sCLRProcHITHStat_SOFTISP *)a6 geometryData:(id)a7 isSIFR:(BOOL)a8;
+ (void)_addLTMEnabledToMetadata:(id)a3;
+ (void)_addLocalClippingDataToMetadata:(id)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5;
+ (void)_addLocalHistToMetadata:(id)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5;
+ (void)_addSoftDGainToMetadata:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4;
+ (void)_addSpatialCCMDataToMetadata:(id)a3 fromOutput:(sLtmComputeOutput *)a4 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a5;
+ (void)addLTMMetadataTo:(id)a3 curvesType:(int)a4 fromLTMOutput:(sLtmComputeOutput *)a5 statistics:(sCLRProcHITHStat_SOFTISP *)a6 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a7 geometryData:(id)a8;
@end

@implementation LTMMetadataWriterV1

+ (id)createLTMMetadataFromLTMOutput:(sLtmComputeOutput *)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a5 geometryData:(id)a6
{
  v10 = a6;
  v11 = objc_opt_new();
  if (v11)
  {
    [a1 _addLTMCurvesToMetadata:v11 curvesType:0 fromOutput:a3 statistics:a4 geometryData:v10 isSIFR:a5->isSIFRFrame];
    [a1 _addSoftDGainToMetadata:v11 driverInputMetadata:a5];
    [a1 _addLTMCurveTypeToMetadata:v11 driverInputMetadata:a5];
    [a1 _addLTMEnabledToMetadata:v11];
    [a1 _addLocalHistToMetadata:v11 statistics:a4 geometryData:v10];
    [a1 _addLocalClippingDataToMetadata:v11 statistics:a4 geometryData:v10];
    [a1 _addAverageLTMToMetadata:v11 curvesType:0 fromOutput:a3];
    [a1 _addSpatialCCMDataToMetadata:v11 fromOutput:a3 driverInputMetadata:a5];
    [a1 _addGlobalLTMLookUpTableAlignedToFinalCropRect:v11];
    [a1 _addHighlightCompression:v11 driverInputMetadata:a5];
    [a1 _addHazeCorrection:v11 driverInputMetadata:a5];
    v12 = v11;
  }

  else
  {
    +[LTMMetadataWriterV1 createLTMMetadataFromLTMOutput:statistics:driverInputMetadata:geometryData:];
  }

  return v11;
}

+ (void)addLTMMetadataTo:(id)a3 curvesType:(int)a4 fromLTMOutput:(sLtmComputeOutput *)a5 statistics:(sCLRProcHITHStat_SOFTISP *)a6 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a7 geometryData:(id)a8
{
  v11 = *&a4;
  isSIFRFrame = a7->isSIFRFrame;
  v14 = a3;
  [a1 _addLTMCurvesToMetadata:v14 curvesType:v11 fromOutput:a5 statistics:a6 geometryData:a8 isSIFR:isSIFRFrame];
  [a1 _addAverageLTMToMetadata:v14 curvesType:v11 fromOutput:a5];
}

+ (void)_addLTMCurvesToMetadata:(id)a3 curvesType:(int)a4 fromOutput:(sLtmComputeOutput *)a5 statistics:(sCLRProcHITHStat_SOFTISP *)a6 geometryData:(id)a7 isSIFR:(BOOL)a8
{
  v12 = a3;
  v13 = a7;
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
        v18 = &a5->LTC[3185];
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
        LOWORD(v20) = a6->localHistStrideX;
        v21 = v20;
        [v13 inputTextureDownsampleRatio];
        *&v23 = v22 * v21;
        *(v14 + 9) = *&v23;
        LOWORD(v23) = a6->localHistStrideY;
        v24 = v23;
        [v13 inputTextureDownsampleRatio];
        *(v14 + 10) = (v25 * v24);
        *(v14 + 11) = 65;
        v26 = -6240;
        v27 = vdupq_n_s32(0x477FFF00u);
        do
        {
          v28 = *a5->LTC;
          a5 = (a5 + 16);
          *&v14[v26 + 6264] = vmovn_s32(vcvtq_u32_f32(vrndmq_f32(vmulq_f32(v28, v27))));
          v26 += 8;
        }

        while (v26);
        v29 = [MEMORY[0x1E695DF88] dataWithBytes:v14 length:6264];
        v30 = [MEMORY[0x1E695DF88] dataWithBytes:v15 length:516];
        v31 = [MEMORY[0x1E695DF88] dataWithBytes:v17 length:516];
        if (a4 == 3)
        {
          [v12 setObject:v29 forKeyedSubscript:@"LTMLookUpTables_HLGWithoutFaceBoost"];
          [v12 setObject:v30 forKeyedSubscript:@"GlobalLTMLookUpTable_HLGWithoutFaceBoost"];
          v33 = @"GlobalToneCurveLookUpTable_HLGWithoutFaceBoost";
        }

        else
        {
          if (a4 == 2)
          {
            [v12 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6990E00]];
            [v12 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6990DC8]];
            v32 = MEMORY[0x1E6990DD8];
          }

          else if (a4 == 1)
          {
            [v12 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6990E08]];
            [v12 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6990DD0]];
            v32 = MEMORY[0x1E6990DE0];
          }

          else
          {
            [v12 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6991068]];
            [v12 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6991020]];
            v32 = MEMORY[0x1E6991030];
          }

          v33 = *v32;
        }

        [v12 setObject:v31 forKeyedSubscript:v33];
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

+ (void)_addSoftDGainToMetadata:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4
{
  v5 = MEMORY[0x1E696AD98];
  LODWORD(v4) = vcvts_n_u32_f32(a4->softIspDGain, 8uLL);
  v6 = a3;
  v7 = [v5 numberWithUnsignedInt:v4];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991168]];
}

+ (void)_addLTMCurveTypeToMetadata:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4
{
  v4 = MEMORY[0x1E696AD98];
  ltmProcMode = a4->ltmProcMode;
  v6 = a3;
  v7 = [v4 numberWithInt:ltmProcMode];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991058]];
}

+ (void)_addAverageLTMToMetadata:(id)a3 curvesType:(int)a4 fromOutput:(sLtmComputeOutput *)a5
{
  v17 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:65];
  for (i = 0; i != 65; ++i)
  {
    v9 = 0;
    v10 = 0;
    v11 = a5;
    do
    {
      for (j = 0; j != 520; j += 65)
      {
        v10 = (floorf(v11->LTC[j] * 65535.0) + v10);
      }

      ++v9;
      v11 = (v11 + 2080);
    }

    while (v9 != 6);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:(v10 / 0x30)];
    [v7 setObject:v13 atIndexedSubscript:i];

    a5 = (a5 + 4);
  }

  if (a4 == 1)
  {
    v15 = *MEMORY[0x1E6990D90];
    v14 = v17;
  }

  else
  {
    v14 = v17;
    if (a4 == 2)
    {
      v16 = MEMORY[0x1E6990D88];
    }

    else
    {
      if (a4 == 3)
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

+ (void)_addHighlightCompression:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4
{
  v5 = a3;
  if (a4->useHighlightCompression)
  {
    v9 = v5;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:257];
    for (i = 0; i != 257; ++i)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:highlightCompressionDataScaled[i]];
      [v6 setObject:v8 atIndexedSubscript:i];
    }

    [v9 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6990DB8]];

    v5 = v9;
  }
}

+ (void)_addHazeCorrection:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4
{
  v5 = a3;
  if (a4->useHazeCorrection)
  {
    v10 = v5;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    for (i = 0; i != 3; ++i)
    {
      LODWORD(v7) = *(&a4[1].gainDigi + (i & 3));
      v9 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      [v6 setObject:v9 atIndexedSubscript:i];
    }

    [v10 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6990DE8]];

    v5 = v10;
  }
}

+ (void)_addLTMEnabledToMetadata:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v5 = [v3 numberWithBool:1];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6991060]];
}

+ (void)_addLocalHistToMetadata:(id)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5
{
  v29 = a3;
  v7 = a5;
  v8 = malloc_type_malloc(0x19A0uLL, 0x1000040E0EAB150uLL);
  v9 = v8;
  if (v8)
  {
    HIDWORD(v10) = 6560;
    *v8 = 0x19A000000001;
    LODWORD(v10) = a4->gridOriginX;
    v11 = v10;
    [v7 deepZoomOrigin];
    v13 = v12 + v11;
    [v7 inputTextureDownsampleRatio];
    *&v15 = v13 * v14;
    *(v9 + 4) = *&v15;
    LODWORD(v15) = a4->gridOriginY;
    v16 = v15;
    [v7 deepZoomOrigin];
    v18 = v17 + v16;
    [v7 inputTextureDownsampleRatio];
    v20 = v18 * v19;
    *(v9 + 5) = v20;
    LOWORD(v20) = a4->localHistBlockSizeX;
    *&v18 = LODWORD(v20);
    [v7 inputTextureDownsampleRatio];
    *&v22 = v21 * *&v18;
    *(v9 + 6) = *&v22;
    LOWORD(v22) = a4->localHistBlockSizeY;
    *&v18 = v22;
    [v7 inputTextureDownsampleRatio];
    *&v24 = v23 * *&v18;
    *(v9 + 7) = *&v24;
    LOWORD(v24) = a4->localHistStrideX;
    *&v18 = v24;
    [v7 inputTextureDownsampleRatio];
    *&v26 = v25 * *&v18;
    *(v9 + 8) = *&v26;
    LOWORD(v26) = a4->localHistStrideY;
    *&v18 = v26;
    [v7 inputTextureDownsampleRatio];
    *(v9 + 9) = (v27 * *&v18);
    *(v9 + 5) = *&a4->localHistNumHorBlocks;
    *(v9 + 12) = 68;
    *(v9 + 13) = a4->localHistCountBitShift;
    *(v9 + 7) = a4->localHistogramOriginalTilePixelCount;
    memcpy(v9 + 4, a4->localHistStat, 0x1980uLL);
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:6560];
    [v29 setObject:v28 forKeyedSubscript:*MEMORY[0x1E6991088]];
  }

  else
  {
    +[LTMMetadataWriterV1 _addLocalHistToMetadata:statistics:geometryData:];
  }

  free(v9);
}

+ (void)_addLocalClippingDataToMetadata:(id)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = malloc_type_malloc(0x1ACuLL, 0x1000040DE9E61F1uLL);
  v10 = v9;
  if (v9)
  {
    HIDWORD(v11) = 428;
    *v9 = 0x1AC00000001;
    LODWORD(v11) = a4->gridOriginX;
    v12 = v11;
    [v8 deepZoomOrigin];
    v14 = v13 + v12;
    [v8 inputTextureDownsampleRatio];
    *&v16 = v14 * v15;
    *(v10 + 4) = *&v16;
    LODWORD(v16) = a4->gridOriginY;
    v17 = v16;
    [v8 deepZoomOrigin];
    v19 = v18 + v17;
    [v8 inputTextureDownsampleRatio];
    v21 = v19 * v20;
    *(v10 + 5) = v21;
    LOWORD(v21) = a4->localHistBlockSizeX;
    *&v19 = LODWORD(v21);
    [v8 inputTextureDownsampleRatio];
    *&v23 = v22 * *&v19;
    *(v10 + 6) = *&v23;
    LOWORD(v23) = a4->localHistBlockSizeY;
    *&v19 = v23;
    [v8 inputTextureDownsampleRatio];
    *&v25 = v24 * *&v19;
    *(v10 + 7) = *&v25;
    LOWORD(v25) = a4->localHistStrideX;
    *&v19 = v25;
    [v8 inputTextureDownsampleRatio];
    *&v27 = v26 * *&v19;
    *(v10 + 8) = *&v27;
    LOWORD(v27) = a4->localHistStrideY;
    *&v19 = v27;
    [v8 inputTextureDownsampleRatio];
    v28 = 0;
    *(v10 + 9) = (v29 * *&v19);
    *(v10 + 5) = *&a4->localHistNumHorBlocks;
    *(v10 + 12) = a4->localHistCountBitShift;
    localHistLowThreshold = a4->localHistLowThreshold;
    *(v10 + 7) = a4->localHistogramOriginalTilePixelCount;
    *(v10 + 16) = localHistLowThreshold;
    *(v10 + 17) = 0;
    *(v10 + 18) = a4->localHistHighThreshold;
    *(v10 + 38) = 65539;
    *(v10 + 21) = 2;
    v31 = v10 + 25;
    v32 = a4->localHistStat + 134;
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
    [v7 setObject:v37 forKeyedSubscript:*MEMORY[0x1E6991080]];
  }

  else
  {
    +[LTMMetadataWriterV1 _addLocalClippingDataToMetadata:statistics:geometryData:];
  }

  free(v10);
}

+ (void)_addSpatialCCMDataToMetadata:(id)a3 fromOutput:(sLtmComputeOutput *)a4 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a5
{
  v7 = a3;
  if (_addSpatialCCMDataToMetadata_fromOutput_driverInputMetadata__onceToken != -1)
  {
    +[LTMMetadataWriterV1 _addSpatialCCMDataToMetadata:fromOutput:driverInputMetadata:];
  }

  if (a5->useSpatialCCM)
  {
    v8 = malloc_type_malloc(0x2898uLL, 0x1000040504FFAC1uLL);
    v9 = v8;
    if (v8)
    {
      *v8 = 0x360000C001003E9;
      *(v8 + 4) = 54;
      *(v8 + 10) = 0;
      *(v8 + 9) = a5->tileStatsRegion.width >> 4;
      *(v8 + 10) = a5->tileStatsRegion.height / 0xC;
      *(v8 + 11) = 4096;
      v10 = v8 + 76;
      v11 = &a4->LTC[3725];
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
        [v7 setObject:v35 forKeyedSubscript:*MEMORY[0x1E6991078]];
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
    [v7 removeObjectForKey:*MEMORY[0x1E6991078]];
  }
}

+ (void)_addGlobalLTMLookUpTableAlignedToFinalCropRect:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v5 = [v3 numberWithBool:1];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6990DC0]];
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