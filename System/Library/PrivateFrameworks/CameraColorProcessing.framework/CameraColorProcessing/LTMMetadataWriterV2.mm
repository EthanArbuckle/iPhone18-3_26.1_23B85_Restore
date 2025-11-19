@interface LTMMetadataWriterV2
+ (id)createLTMMetadataFromLTMOutput:(sLtmComputeOutput *)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a5 geometryData:(id)a6;
+ (void)_addAverageLTMToMetadata:(id)a3 curvesType:(int)a4 fromOutput:(sLtmComputeOutput *)a5 ltcNumNodes:(unsigned int)a6;
+ (void)_addGlobalLTMLookUpTableAlignedToFinalCropRect:(id)a3;
+ (void)_addHazeCorrection:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4;
+ (void)_addHighlightCompression:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4;
+ (void)_addLTMCurveTypeToMetadata:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4;
+ (void)_addLTMCurvesToMetadata:(id)a3 curvesType:(int)a4 fromOutput:(sLtmComputeOutput *)a5 statistics:(sCLRProcHITHStat_SOFTISP *)a6 geometryData:(id)a7 isSIFR:(BOOL)a8 ltcNumNodes:(unsigned int)a9;
+ (void)_addLTMEnabledToMetadata:(id)a3;
+ (void)_addLocalClippingDataToMetadata:(id)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5;
+ (void)_addLocalHistToMetadata:(id)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5;
+ (void)_addSoftDGainToMetadata:(id)a3 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a4;
+ (void)_addSpatialCCMDataToMetadata:(id)a3 fromOutput:(sLtmComputeOutput *)a4 statistics:(sCLRProcHITHStat_SOFTISP *)a5 geometryData:(id)a6 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a7;
+ (void)addLTMMetadataTo:(id)a3 curvesType:(int)a4 fromLTMOutput:(sLtmComputeOutput *)a5 statistics:(sCLRProcHITHStat_SOFTISP *)a6 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a7 geometryData:(id)a8;
@end

@implementation LTMMetadataWriterV2

+ (id)createLTMMetadataFromLTMOutput:(sLtmComputeOutput *)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a5 geometryData:(id)a6
{
  v10 = a6;
  v11 = objc_opt_new();
  if (v11)
  {
    if (a4->localHistBinSize == 68)
    {
      v12 = 65;
    }

    else
    {
      v12 = 257;
    }

    LODWORD(v15) = v12;
    [a1 _addLTMCurvesToMetadata:v11 curvesType:0 fromOutput:a3 statistics:a4 geometryData:v10 isSIFR:a5->isSIFRFrame ltcNumNodes:v15];
    [a1 _addSoftDGainToMetadata:v11 driverInputMetadata:a5];
    [a1 _addLTMCurveTypeToMetadata:v11 driverInputMetadata:a5];
    [a1 _addLTMEnabledToMetadata:v11];
    [a1 _addLocalHistToMetadata:v11 statistics:a4 geometryData:v10];
    [a1 _addLocalClippingDataToMetadata:v11 statistics:a4 geometryData:v10];
    [a1 _addAverageLTMToMetadata:v11 curvesType:0 fromOutput:a3 ltcNumNodes:v12];
    [a1 _addSpatialCCMDataToMetadata:v11 fromOutput:a3 statistics:a4 geometryData:v10 driverInputMetadata:a5];
    [a1 _addGlobalLTMLookUpTableAlignedToFinalCropRect:v11];
    [a1 _addHighlightCompression:v11 driverInputMetadata:a5];
    [a1 _addHazeCorrection:v11 driverInputMetadata:a5];
    v13 = v11;
  }

  else
  {
    +[LTMMetadataWriterV2 createLTMMetadataFromLTMOutput:statistics:driverInputMetadata:geometryData:];
  }

  return v11;
}

+ (void)addLTMMetadataTo:(id)a3 curvesType:(int)a4 fromLTMOutput:(sLtmComputeOutput *)a5 statistics:(sCLRProcHITHStat_SOFTISP *)a6 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a7 geometryData:(id)a8
{
  v11 = *&a4;
  if (a6->localHistBinSize == 68)
  {
    v13 = 65;
  }

  else
  {
    v13 = 257;
  }

  isSIFRFrame = a7->isSIFRFrame;
  v16 = a3;
  LODWORD(v15) = v13;
  [a1 _addLTMCurvesToMetadata:v16 curvesType:v11 fromOutput:a5 statistics:a6 geometryData:a8 isSIFR:isSIFRFrame ltcNumNodes:v15];
  [a1 _addAverageLTMToMetadata:v16 curvesType:v11 fromOutput:a5 ltcNumNodes:v13];
}

+ (void)_addLTMCurvesToMetadata:(id)a3 curvesType:(int)a4 fromOutput:(sLtmComputeOutput *)a5 statistics:(sCLRProcHITHStat_SOFTISP *)a6 geometryData:(id)a7 isSIFR:(BOOL)a8 ltcNumNodes:(unsigned int)a9
{
  v14 = a3;
  v15 = a7;
  v16 = malloc_type_malloc((384 * a9) | 0x18, 0x1000040504FFAC1uLL);
  if (!v16)
  {
    +[LTMMetadataWriterV2 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:];
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v19 = 0;
    v17 = 0;
    goto LABEL_35;
  }

  v17 = malloc_type_malloc(0x204uLL, 0x1000040BDFB0063uLL);
  if (!v17)
  {
    +[LTMMetadataWriterV2 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:];
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v19 = 0;
    goto LABEL_35;
  }

  v18 = malloc_type_malloc(0x204uLL, 0x1000040BDFB0063uLL);
  v19 = v18;
  if (!v18)
  {
    +[LTMMetadataWriterV2 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:];
    v45 = 0;
    v44 = 0;
    v43 = 0;
    goto LABEL_35;
  }

  v48 = v14;
  *v17 = 257;
  *v18 = 257;
  globalLUT = a5->globalLUT;
  v21 = 1;
  v22 = 1.0;
  do
  {
    v17[v21] = vcvtms_s32_f32(fmaxf(fminf(*globalLUT, 1.0), 0.0) * 65535.0);
    v18[v21++] = vcvtms_s32_f32(fmaxf(fminf(globalLUT[257], 1.0), 0.0) * 65535.0);
    ++globalLUT;
  }

  while (v21 != 258);
  calculatedOnPortraitOrientation = a6->calculatedOnPortraitOrientation;
  v24 = 36;
  if (a6->calculatedOnPortraitOrientation)
  {
    v25 = 38;
  }

  else
  {
    v25 = 36;
  }

  if (!a6->calculatedOnPortraitOrientation)
  {
    v24 = 38;
  }

  LOWORD(v22) = *(&a6->thumbnailWindow + v25);
  LOWORD(v9) = *(&a6->thumbnailWindow + v24);
  if (a6->calculatedOnPortraitOrientation)
  {
    v26 = 16;
  }

  else
  {
    v26 = 12;
  }

  *v16 = 4;
  if (calculatedOnPortraitOrientation)
  {
    v27 = 12;
  }

  else
  {
    v27 = 16;
  }

  *(v16 + 1) = v27;
  *(v16 + 2) = v26;
  *(v16 + 3) = 2 * a9 * v27;
  *(v16 + 4) = 2 * a9;
  v28 = v22;
  *(v16 + 10) = 0;
  [v15 inputTextureDownsampleRatio];
  v30 = v29 * v28;
  [v15 deepZoomRatio];
  *(v16 + 9) = ((v30 * v31) * 0.5);
  [v15 inputTextureDownsampleRatio];
  v33 = v32 * v9;
  [v15 deepZoomRatio];
  v34 = 0;
  v35 = 0;
  *(v16 + 10) = ((v33 * *&v36) * 0.5);
  *(v16 + 11) = a9;
  LODWORD(v36) = 1.0;
  do
  {
    v37 = 0;
    v38 = v34;
    do
    {
      if (a9)
      {
        v39 = v35 + v37 * v27;
        if (!calculatedOnPortraitOrientation)
        {
          v39 = v37 + v35 * v27;
        }

        v40 = v39 * a9;
        v41 = a9;
        v42 = v38;
        do
        {
          *&v16[2 * v40++ + 24] = vcvtms_s32_f32(fmaxf(fminf(a5->LTC[v42++], 1.0), 0.0) * 65535.0);
          --v41;
        }

        while (v41);
      }

      ++v37;
      v38 += a9;
    }

    while (v37 != 16);
    ++v35;
    v34 += 16 * a9;
  }

  while (v35 != 12);
  v43 = [MEMORY[0x1E695DF88] dataWithBytes:v16 length:{(384 * a9) | 0x18, v36, 0.0}];
  v44 = [MEMORY[0x1E695DF88] dataWithBytes:v17 length:516];
  v45 = [MEMORY[0x1E695DF88] dataWithBytes:v19 length:516];
  if (a4 == 1)
  {
    v14 = v48;
    [v48 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6990E08]];
    [v48 setObject:v44 forKeyedSubscript:*MEMORY[0x1E6990DD0]];
    v47 = MEMORY[0x1E6990DE0];
    goto LABEL_33;
  }

  v14 = v48;
  if (a4 == 2)
  {
    [v48 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6990E00]];
    [v48 setObject:v44 forKeyedSubscript:*MEMORY[0x1E6990DC8]];
    v47 = MEMORY[0x1E6990DD8];
LABEL_33:
    v46 = *v47;
    goto LABEL_34;
  }

  if (a4 != 3)
  {
    [v48 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6991068]];
    [v48 setObject:v44 forKeyedSubscript:*MEMORY[0x1E6991020]];
    v47 = MEMORY[0x1E6991030];
    goto LABEL_33;
  }

  [v48 setObject:v43 forKeyedSubscript:@"LTMLookUpTables_HLGWithoutFaceBoost"];
  [v48 setObject:v44 forKeyedSubscript:@"GlobalLTMLookUpTable_HLGWithoutFaceBoost"];
  v46 = @"GlobalToneCurveLookUpTable_HLGWithoutFaceBoost";
LABEL_34:
  [v14 setObject:v45 forKeyedSubscript:v46];
LABEL_35:
  free(v17);
  free(v19);
  free(v16);
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

+ (void)_addAverageLTMToMetadata:(id)a3 curvesType:(int)a4 fromOutput:(sLtmComputeOutput *)a5 ltcNumNodes:(unsigned int)a6
{
  v24 = a3;
  v8 = vcvtas_u32_f32(a6 / 65.0);
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:65];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:0];
  [v9 setObject:v10 atIndexedSubscript:0];

  v11 = 1;
  v12 = v8;
  do
  {
    v13 = 0;
    v14 = 0;
    v15 = v12;
    do
    {
      v16 = 16;
      v17 = v15;
      do
      {
        v14 = (floorf(fmaxf(fminf(a5->LTC[v17], 1.0), 0.0) * 65535.0) + v14);
        v17 += a6;
        --v16;
      }

      while (v16);
      ++v13;
      v15 += 16 * a6;
    }

    while (v13 != 12);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:(v14 / 0xC0)];
    [v9 setObject:v18 atIndexedSubscript:v11];

    ++v11;
    v12 += v8;
  }

  while (v11 != 64);
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:0xFFFFLL];
  [v9 setObject:v19 atIndexedSubscript:64];

  if (a4 == 1)
  {
    v21 = *MEMORY[0x1E6990D90];
    v20 = v24;
  }

  else
  {
    v20 = v24;
    if (a4 == 2)
    {
      v22 = MEMORY[0x1E6990D88];
    }

    else
    {
      if (a4 == 3)
      {
        v21 = @"AverageLTM_HLGWithoutFaceBoost";
        goto LABEL_15;
      }

      v22 = MEMORY[0x1E6990F70];
    }

    v21 = *v22;
  }

LABEL_15:
  [v20 setObject:v9 forKeyedSubscript:v21];
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
  v7 = a3;
  v8 = a5;
  localHistBinSize = a4->localHistBinSize;
  calculatedOnPortraitOrientation = a4->calculatedOnPortraitOrientation;
  v11 = malloc_type_malloc(0x19A0uLL, 0x1000040E0EAB150uLL);
  v12 = v11;
  if (v11)
  {
    v71 = v11;
    v72 = v8;
    v13 = a4->localHistBinSize;
    if (v13 == 68 || v13 == 260)
    {
      v70 = v7;
      *v11 = 0x19A000000001;
      v14 = 132;
      if (calculatedOnPortraitOrientation)
      {
        v15 = 136;
      }

      else
      {
        v15 = 132;
      }

      v16 = *(&a4->thumbnailWindow + v15);
      if (!calculatedOnPortraitOrientation)
      {
        v14 = 136;
      }

      v17 = *(&a4->thumbnailWindow + v14);
      v18 = 36;
      if (calculatedOnPortraitOrientation)
      {
        v19 = 38;
      }

      else
      {
        v19 = 36;
      }

      if (!calculatedOnPortraitOrientation)
      {
        v18 = 38;
      }

      v20 = 32;
      if (calculatedOnPortraitOrientation)
      {
        v21 = 34;
      }

      else
      {
        v21 = 32;
      }

      if (calculatedOnPortraitOrientation)
      {
        v22 = 13 * a4->localHistStrideY;
        v23 = 17 * a4->localHistStrideX;
      }

      else
      {
        v20 = 34;
        v22 = 17 * a4->localHistStrideX;
        v23 = 13 * a4->localHistStrideY;
      }

      v73 = *(&a4->thumbnailWindow + v19);
      v77 = *(&a4->thumbnailWindow + v18);
      v24 = *(&a4->thumbnailWindow + v21);
      v25 = *(&a4->thumbnailWindow + v20);
      v26 = 40;
      if (calculatedOnPortraitOrientation)
      {
        v27 = 42;
      }

      else
      {
        v27 = 40;
      }

      v28 = *(&a4->thumbnailWindow + v27);
      if (!calculatedOnPortraitOrientation)
      {
        v26 = 42;
      }

      v75 = *(&a4->thumbnailWindow + v26);
      v29 = v16;
      [v8 cropRect];
      v31 = v29 / v30;
      [v8 cropRect];
      v33 = v17 / v32;
      [v8 cropRect];
      v35 = v22 / v34;
      [v8 cropRect];
      v37 = v23 / v36;
      if (v8)
      {
        [v8 sensorSpaceToValidBufferSpaceTransform];
      }

      else
      {
        memset(&v79, 0, sizeof(v79));
      }

      CGAffineTransformInvert(&v80, &v79);
      v83.origin.x = v31;
      v83.origin.y = v33;
      v83.size.width = v35;
      v83.size.height = v37;
      v84 = CGRectApplyAffineTransform(v83, &v80);
      x = v84.origin.x;
      y = v84.origin.y;
      [v8 inputTextureDownsampleRatio];
      v42 = x * v41 * [v8 rawSensorWidth];
      [v8 inputTextureDownsampleRatio];
      v44 = y * v43 * [v8 rawSensorHeight];
      [v8 inputTextureDownsampleRatio];
      [v8 rawSensorWidth];
      [v8 inputTextureDownsampleRatio];
      [v8 rawSensorHeight];
      *(v71 + 4) = v42;
      *(v71 + 5) = v44;
      [v8 inputTextureDownsampleRatio];
      *(v71 + 6) = (v45 * v24);
      [v8 inputTextureDownsampleRatio];
      *(v71 + 7) = (v46 * v25);
      [v8 inputTextureDownsampleRatio];
      *(v71 + 8) = (v47 * v73);
      [v8 inputTextureDownsampleRatio];
      *(v71 + 9) = (v48 * v77);
      *(v71 + 10) = v28;
      *(v71 + 11) = v75;
      *(v71 + 12) = 68;
      *(v71 + 13) = a4->localHistCountBitShift;
      *(v71 + 7) = a4->localHistogramOriginalTilePixelCount;
      if (a4->localHistBinSize == 68)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        do
        {
          v52 = 8;
          v76 = v50;
          v78 = v49;
          v53 = v49;
          v74 = v51;
          do
          {
            if (calculatedOnPortraitOrientation)
            {
              v54 = v51;
            }

            else
            {
              v54 = v50;
            }

            memcpy(v71 + 2 * v54 * localHistBinSize + 32, a4->localHistStat + v53, 2 * localHistBinSize);
            LODWORD(v51) = v51 + v28;
            LODWORD(v50) = v50 + 1;
            v53 += 2 * localHistBinSize;
            --v52;
          }

          while (v52);
          v51 = v74 + 1;
          v50 = v76 + v28;
          v49 = v78 + 16 * localHistBinSize;
        }

        while (v74 != 5);
      }

      else
      {
        v55 = 0;
        localHistStat = a4->localHistStat;
        v57 = v71 + 4;
        v58 = (localHistStat + 11);
        do
        {
          v59 = 0;
          v60 = v58;
          do
          {
            v61 = 0;
            v62 = (v59 + 8 * v55) * localHistBinSize;
            v63 = v59 + v55 * v28;
            if (calculatedOnPortraitOrientation)
            {
              v63 = v55 + v59 * v28;
            }

            v64 = 68 * v63;
            v65 = &localHistStat[v62];
            LOWORD(v57[17 * v63]) = *v65;
            *(v57 + ((68 * v63) | 1)) = v65[1];
            v66 = &v71[17 * v63 + 4] + 4;
            v67 = v60;
            do
            {
              *(v66 + v61) = *(v67 - 3);
              *(v66 + v61) = *(v67 - 2);
              *(v66 + v61) = *(v67 - 1);
              v68 = *v67;
              v67 += 4;
              *(v66 + v61) = v68;
              v61 += 2;
            }

            while (v61 != 124);
            *(v57 + (v64 + 64)) = localHistStat[v62 + 64];
            *(v57 + (v64 + 65)) = localHistStat[v62 + 65];
            ++v59;
            v60 += localHistBinSize;
          }

          while (v59 != 8);
          ++v55;
          v58 += 16 * localHistBinSize;
        }

        while (v55 != 6);
      }

      v12 = v71;
      v69 = [MEMORY[0x1E695DEF0] dataWithBytes:v71 length:6560];
      v7 = v70;
      [v70 setObject:v69 forKeyedSubscript:*MEMORY[0x1E6991088]];

      v8 = v72;
    }

    else
    {
      v82 = 0;
      v81 = 0;
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v12 = v71;
    }
  }

  else
  {
    +[LTMMetadataWriterV2 _addLocalHistToMetadata:statistics:geometryData:];
  }

  free(v12);
}

+ (void)_addLocalClippingDataToMetadata:(id)a3 statistics:(sCLRProcHITHStat_SOFTISP *)a4 geometryData:(id)a5
{
  v7 = a3;
  v8 = a5;
  calculatedOnPortraitOrientation = a4->calculatedOnPortraitOrientation;
  v10 = malloc_type_malloc(0x1ACuLL, 0x1000040DE9E61F1uLL);
  v11 = v10;
  if (v10)
  {
    localHistBinSize = a4->localHistBinSize;
    if (localHistBinSize == 68 || localHistBinSize == 260)
    {
      *v10 = 0x1AC00000001;
      v13 = 132;
      if (calculatedOnPortraitOrientation)
      {
        v14 = 136;
      }

      else
      {
        v14 = 132;
      }

      v15 = *(&a4->thumbnailWindow + v14);
      if (!calculatedOnPortraitOrientation)
      {
        v13 = 136;
      }

      v16 = *(&a4->thumbnailWindow + v13);
      v17 = 36;
      if (calculatedOnPortraitOrientation)
      {
        v18 = 38;
      }

      else
      {
        v18 = 36;
      }

      if (!calculatedOnPortraitOrientation)
      {
        v17 = 38;
      }

      v19 = 32;
      if (calculatedOnPortraitOrientation)
      {
        v20 = 34;
      }

      else
      {
        v20 = 32;
      }

      if (calculatedOnPortraitOrientation)
      {
        v21 = 13 * a4->localHistStrideY;
        v22 = 17 * a4->localHistStrideX;
      }

      else
      {
        v19 = 34;
        v21 = 17 * a4->localHistStrideX;
        v22 = 13 * a4->localHistStrideY;
      }

      v61 = *(&a4->thumbnailWindow + v18);
      v63 = *(&a4->thumbnailWindow + v17);
      v23 = *(&a4->thumbnailWindow + v20);
      v60 = *(&a4->thumbnailWindow + v19);
      v24 = 40;
      if (calculatedOnPortraitOrientation)
      {
        v25 = 42;
      }

      else
      {
        v25 = 40;
      }

      v26 = *(&a4->thumbnailWindow + v25);
      if (!calculatedOnPortraitOrientation)
      {
        v24 = 42;
      }

      v62 = *(&a4->thumbnailWindow + v24);
      v27 = v15;
      [v8 cropRect];
      v29 = v27 / v28;
      [v8 cropRect];
      v31 = v16 / v30;
      [v8 cropRect];
      v33 = v21 / v32;
      [v8 cropRect];
      v35 = v22 / v34;
      if (v8)
      {
        [v8 sensorSpaceToValidBufferSpaceTransform];
      }

      else
      {
        memset(&v64, 0, sizeof(v64));
      }

      CGAffineTransformInvert(&v65, &v64);
      v68.origin.x = v29;
      v68.origin.y = v31;
      v68.size.width = v33;
      v68.size.height = v35;
      v69 = CGRectApplyAffineTransform(v68, &v65);
      x = v69.origin.x;
      y = v69.origin.y;
      [v8 inputTextureDownsampleRatio];
      v40 = x * v39 * [v8 rawSensorWidth];
      [v8 inputTextureDownsampleRatio];
      v42 = y * v41 * [v8 rawSensorHeight];
      [v8 inputTextureDownsampleRatio];
      [v8 rawSensorWidth];
      [v8 inputTextureDownsampleRatio];
      [v8 rawSensorHeight];
      *(v11 + 4) = v40;
      *(v11 + 5) = v42;
      [v8 inputTextureDownsampleRatio];
      *(v11 + 6) = (v43 * v23);
      [v8 inputTextureDownsampleRatio];
      *(v11 + 7) = (v44 * v60);
      [v8 inputTextureDownsampleRatio];
      *(v11 + 8) = (v45 * v61);
      [v8 inputTextureDownsampleRatio];
      v46 = 0;
      v47 = 0;
      *(v11 + 9) = (v48 * v63);
      *(v11 + 10) = v26;
      *(v11 + 11) = v62;
      *(v11 + 12) = a4->localHistCountBitShift;
      *(v11 + 7) = a4->localHistogramOriginalTilePixelCount;
      *(v11 + 16) = a4->localHistLowThreshold;
      *(v11 + 17) = 0;
      *(v11 + 18) = a4->localHistHighThreshold;
      *(v11 + 38) = 65539;
      *(v11 + 21) = 2;
      v49 = a4->localHistBinSize;
      localHistStat = a4->localHistStat;
      v51 = v11 + 44;
      v52 = v49 - 1;
      v53 = localHistStat + 1;
      do
      {
        v54 = v53;
        v55 = 8;
        v56 = v52;
        v57 = v47;
        LODWORD(v58) = v46;
        do
        {
          if (calculatedOnPortraitOrientation)
          {
            v59 = v57;
          }

          else
          {
            v59 = v58;
          }

          *&v51[8 * v59] = *(v54 - 1);
          *&v51[2 * ((4 * (v59 & 0x1FFFFFFF)) | 1)] = *v54;
          *&v51[2 * ((4 * (v59 & 0x1FFFFFFF)) | 2)] = localHistStat[v56 - 1];
          *&v51[2 * ((4 * (v59 & 0x1FFFFFFF)) | 3)] = localHistStat[v56];
          v58 = (v58 + 1);
          v57 += v26;
          v56 += v49;
          v54 += v49;
          --v55;
        }

        while (v55);
        ++v47;
        v46 += v26;
        v52 += 8 * v49;
        v53 += 8 * v49;
      }

      while (v47 != 6);
      v36 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:{428, v58}];
      [v7 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6991080]];
    }

    else
    {
      v67 = 0;
      v66 = 0;
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    +[LTMMetadataWriterV2 _addLocalClippingDataToMetadata:statistics:geometryData:];
  }

  free(v11);
}

+ (void)_addSpatialCCMDataToMetadata:(id)a3 fromOutput:(sLtmComputeOutput *)a4 statistics:(sCLRProcHITHStat_SOFTISP *)a5 geometryData:(id)a6 driverInputMetadata:(sRefDriverInputs_SOFTISP *)a7
{
  v11 = a3;
  v12 = a6;
  if (_addSpatialCCMDataToMetadata_fromOutput_statistics_geometryData_driverInputMetadata__onceToken != -1)
  {
    +[LTMMetadataWriterV2 _addSpatialCCMDataToMetadata:fromOutput:statistics:geometryData:driverInputMetadata:];
  }

  if (a7->useSpatialCCM)
  {
    calculatedOnPortraitOrientation = a5->calculatedOnPortraitOrientation;
    v14 = malloc_type_malloc(0x2898uLL, 0x1000040504FFAC1uLL);
    v15 = v14;
    if (v14)
    {
      v16 = !calculatedOnPortraitOrientation;
      if (calculatedOnPortraitOrientation)
      {
        v17 = 16;
      }

      else
      {
        v17 = 12;
      }

      if (v16)
      {
        v18 = 16;
      }

      else
      {
        v18 = 12;
      }

      *v14 = 1001;
      *(v14 + 1) = v18;
      *(v14 + 2) = v17;
      *(v14 + 3) = 54 * v18;
      *(v14 + 4) = 54;
      *(v14 + 10) = 0;
      width = a7->tileStatsRegion.width;
      [v12 inputTextureDownsampleRatio];
      v21 = v20 * width;
      [v12 deepZoomRatio];
      v15[9] = ((v21 * v22) / v18);
      height = a7->tileStatsRegion.height;
      [v12 inputTextureDownsampleRatio];
      v25 = v24 * height;
      [v12 deepZoomRatio];
      v15[10] = ((v25 * v26) / v17);
      v15[11] = 4096;
      v27 = v15 + 38;
      v28 = &a4->spatialCCM[13];
      v29 = 192;
      v30 = vdupq_n_s32(0x45800000u);
      do
      {
        v31 = *(v28 - 13);
        v32 = *(v28 - 10);
        v33 = *(v28 - 9);
        v34.f32[0] = *(v28 - 7);
        v35 = *(v28 - 6);
        v36.f32[0] = *(v28 - 11);
        v37 = *(v28 - 4);
        *v27 = vcvtms_s32_f32(*(v28 - 5) * 4096.0);
        v38 = *(v28 - 1);
        v39 = *v28;
        v40.f32[0] = *(v28 - 3);
        v41 = *(v28 - 2);
        v42 = *(v28 + 3);
        v44.f32[0] = v28[1];
        v43 = *(v28 + 2);
        v40.f32[1] = *(v28 - 12);
        v44.f32[1] = *(v28 - 8);
        *(v27 - 1) = vcvtms_s32_f32(v28[4] * 4096.0);
        v45.f32[0] = v28[5];
        v46.f32[0] = v28[9];
        v45.i32[1] = v37;
        v45.i32[2] = v31;
        v45.f32[3] = v28[6];
        v40.f32[2] = v28[7];
        v40.i32[3] = v41;
        v47 = v28[13];
        v46.i32[1] = v39;
        v46.i32[2] = v33;
        v46.f32[3] = v28[10];
        v36.f32[1] = v28[8];
        v36.i64[1] = __PAIR64__(v32, v38);
        *(v27 - 26) = vuzp1q_s16(vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v45, v30))), vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v40, v30))));
        v34.f32[1] = v28[12];
        v34.i64[1] = __PAIR64__(v35, v42);
        v44.f32[2] = v28[11];
        *(v27 - 18) = vuzp1q_s16(vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v36, v30))), vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v46, v30))));
        v44.i32[3] = v43;
        *(v27 - 10) = vuzp1q_s16(vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v44, v30))), vcvtq_s32_f32(vrndmq_f32(vmulq_f32(v34, v30))));
        *(v27 - 2) = vcvtms_s32_f32(v47 * 4096.0);
        v27 += 27;
        v28 += 27;
        --v29;
      }

      while (v29);
      v48 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:10392];
      if (v48)
      {
        v49 = v48;
        [v11 setObject:v48 forKeyedSubscript:*MEMORY[0x1E6991078]];
      }

      else
      {
        +[LTMMetadataWriterV2 _addSpatialCCMDataToMetadata:fromOutput:statistics:geometryData:driverInputMetadata:];
      }
    }

    else
    {
      +[LTMMetadataWriterV2 _addSpatialCCMDataToMetadata:fromOutput:statistics:geometryData:driverInputMetadata:];
    }

    free(v15);
  }

  else
  {
    [v11 removeObjectForKey:*MEMORY[0x1E6991078]];
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
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV2 createLTMMetadataFromLTMOutput:statistics:driverInputMetadata:geometryData:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV2 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV2 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV2 _addLTMCurvesToMetadata:curvesType:fromOutput:statistics:geometryData:isSIFR:ltcNumNodes:]");
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
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV2 _addLocalClippingDataToMetadata:statistics:geometryData:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addSpatialCCMDataToMetadata:fromOutput:statistics:geometryData:driverInputMetadata:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV2 _addSpatialCCMDataToMetadata:fromOutput:statistics:geometryData:driverInputMetadata:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

+ (void)_addSpatialCCMDataToMetadata:fromOutput:statistics:geometryData:driverInputMetadata:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("+[LTMMetadataWriterV2 _addSpatialCCMDataToMetadata:fromOutput:statistics:geometryData:driverInputMetadata:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

@end