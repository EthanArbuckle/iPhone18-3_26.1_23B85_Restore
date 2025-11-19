@interface VCPVideoMetaLivePhotoMetaAnalyzer
+ (id)defaultDesiredKeys;
+ (id)referenceSoftwareStackVersion;
- (BOOL)gyroHomographyVersionIsValid:(opaqueCMFormatDescription *)a3;
- (CGSize)readGyroHomographyDimension:(opaqueCMFormatDescription *)a3;
- (VCPVideoMetaLivePhotoMetaAnalyzer)initWithRequestAnalyses:(unint64_t)a3 formatDescription:(opaqueCMFormatDescription *)a4;
- (__CFData)getFirstAtomWithFourCharCode:(unsigned int)a3 fromSetupData:(__CFData *)a4;
- (__CFData)getSetupDataFrom:(opaqueCMFormatDescription *)a3;
- (float)compareNumericVersion:(id)a3 withReferenceVersion:(id)a4;
- (float)compareSoftwareStackVersion:(id)a3 withReferenceVersion:(id)a4;
- (id)privateResults;
- (id)readSoftwareStackVersion:(opaqueCMFormatDescription *)a3;
- (int)convertLivePhotoBinary:(id)a3 toDictionary:(id)a4;
- (int)convertLivePhotoStruct:(FigLivePhotoMetadata *)a3 toDictionary:(id)a4;
- (int)finalizeAnalysis;
- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4;
@end

@implementation VCPVideoMetaLivePhotoMetaAnalyzer

+ (id)defaultDesiredKeys
{
  if (+[VCPVideoMetaLivePhotoMetaAnalyzer defaultDesiredKeys]::onceToken != -1)
  {
    +[VCPVideoMetaLivePhotoMetaAnalyzer defaultDesiredKeys];
  }

  v3 = +[VCPVideoMetaLivePhotoMetaAnalyzer defaultDesiredKeys]::keys;

  return v3;
}

void __55__VCPVideoMetaLivePhotoMetaAnalyzer_defaultDesiredKeys__block_invoke()
{
  v2[15] = *MEMORY[0x1E69E9840];
  v2[0] = @"privECMVct";
  v2[1] = @"privEMBVct";
  v2[2] = @"privDFArray";
  v2[3] = @"privET";
  v2[4] = @"privTZF";
  v2[5] = @"privImgG";
  v2[6] = @"privAFS";
  v2[7] = @"privAFSt";
  v2[8] = @"privFM";
  v2[9] = @"trajectoryHomography";
  v2[10] = @"presentingTimestampInNanos";
  v2[11] = @"originalPresentingTimestampInNanos";
  v2[12] = @"sequenceAdjusterRecipe";
  v2[13] = @"sequenceAdjusterDisplacement";
  v2[14] = @"interpolatedFrame";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:15];
  v1 = +[VCPVideoMetaLivePhotoMetaAnalyzer defaultDesiredKeys]::keys;
  +[VCPVideoMetaLivePhotoMetaAnalyzer defaultDesiredKeys]::keys = v0;
}

+ (id)referenceSoftwareStackVersion
{
  v8[2] = *MEMORY[0x1E69E9840];
  {
    v8[0] = &unk_1F49BE128;
    v7[0] = @"LivePhotoMetadataSetupDataVersion";
    v7[1] = @"FrameworkVersions";
    v5 = @"CMCaptureCore";
    v6 = @"45.1";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    v8[1] = v4;
    +[VCPVideoMetaLivePhotoMetaAnalyzer referenceSoftwareStackVersion]::referenceSoftwareStackVersion = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  v2 = +[VCPVideoMetaLivePhotoMetaAnalyzer referenceSoftwareStackVersion]::referenceSoftwareStackVersion;

  return v2;
}

- (VCPVideoMetaLivePhotoMetaAnalyzer)initWithRequestAnalyses:(unint64_t)a3 formatDescription:(opaqueCMFormatDescription *)a4
{
  v33.receiver = self;
  v33.super_class = VCPVideoMetaLivePhotoMetaAnalyzer;
  v6 = [(VCPVideoMetaLivePhotoMetaAnalyzer *)&v33 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
    deSerializedMetaBuffer = v6->_deSerializedMetaBuffer;
    v6->_deSerializedMetaBuffer = v7;

    v9 = objc_alloc_init(VCPVideoMetaFocusAnalyzer);
    metaFocusAnalyzer = v6->_metaFocusAnalyzer;
    v6->_metaFocusAnalyzer = v9;

    v11 = objc_alloc_init(VCPVideoMetaMotionAnalyzer);
    metaMotionAnalyzer = v6->_metaMotionAnalyzer;
    v6->_metaMotionAnalyzer = v11;

    v13 = objc_alloc_init(VCPVideoMetaLensSwitchAnalyzer);
    metaLensSwitchAnalzer = v6->_metaLensSwitchAnalzer;
    v6->_metaLensSwitchAnalzer = v13;

    v15 = v6->_metaFocusAnalyzer;
    if (v15)
    {
      v15 = v6->_metaMotionAnalyzer;
      if (v15)
      {
        v6->_requestAnalyses = a3;
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        metadataStabilizationArray = v6->_metadataStabilizationArray;
        v6->_metadataStabilizationArray = v16;

        v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
        frameTimestampArray = v6->_frameTimestampArray;
        v6->_frameTimestampArray = v18;

        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        originalFrameTimestampArray = v6->_originalFrameTimestampArray;
        v6->_originalFrameTimestampArray = v20;

        v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
        metadataItemTimestampArray = v6->_metadataItemTimestampArray;
        v6->_metadataItemTimestampArray = v22;

        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        adjusterArray = v6->_adjusterArray;
        v6->_adjusterArray = v24;

        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        interpolatedFrameArray = v6->_interpolatedFrameArray;
        v6->_interpolatedFrameArray = v26;

        v6->_prevEstimatedCenterMv.dx = 0.0;
        v6->_prevEstimatedCenterMv.dy = 0.0;
        [(VCPVideoMetaLivePhotoMetaAnalyzer *)v6 readGyroHomographyDimension:a4];
        v6->_gyroHomographyDimension.width = v28;
        v6->_gyroHomographyDimension.height = v29;
        if ([(VCPVideoMetaLivePhotoMetaAnalyzer *)v6 gyroHomographyVersionIsValid:a4])
        {
          v30 = v6->_gyroHomographyDimension.width != *MEMORY[0x1E695F060];
          if (v6->_gyroHomographyDimension.height != *(MEMORY[0x1E695F060] + 8))
          {
            v30 = 1;
          }
        }

        else
        {
          v30 = 0;
        }

        v6->_gyroHomographyIsValid = v30;
        v15 = v6;
      }
    }

    v31 = v15;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)gyroHomographyVersionIsValid:(opaqueCMFormatDescription *)a3
{
  v4 = [(VCPVideoMetaLivePhotoMetaAnalyzer *)self readSoftwareStackVersion:a3];
  if (v4)
  {
    v5 = [objc_opt_class() referenceSoftwareStackVersion];
    [(VCPVideoMetaLivePhotoMetaAnalyzer *)self compareSoftwareStackVersion:v4 withReferenceVersion:v5];
    v7 = v6;

    v8 = v7 != -1.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)readGyroHomographyDimension:(opaqueCMFormatDescription *)a3
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v6 = [(VCPVideoMetaLivePhotoMetaAnalyzer *)self getSetupDataFrom:a3];
  if (v6)
  {
    v7 = [(VCPVideoMetaLivePhotoMetaAnalyzer *)self getFirstAtomWithFourCharCode:1684630899 fromSetupData:v6];
    if (v7)
    {
      v8 = v7;
      if (CFDataGetLength(v7) >= 8)
      {
        v13.location = 0;
        v13.length = 4;
        CFDataGetBytes(v8, v13, buffer);
        v9 = bswap32(*buffer);
        v14.location = 4;
        v14.length = 4;
        CFDataGetBytes(v8, v14, buffer);
        v4 = v9;
        v5 = bswap32(*buffer);
        CFRelease(v8);
      }
    }
  }

  v10 = v4;
  v11 = v5;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)readSoftwareStackVersion:(opaqueCMFormatDescription *)a3
{
  v4 = [(VCPVideoMetaLivePhotoMetaAnalyzer *)self getSetupDataFrom:a3];
  if (v4 && (v5 = [(VCPVideoMetaLivePhotoMetaAnalyzer *)self getFirstAtomWithFourCharCode:1667655542 fromSetupData:v4]) != 0)
  {
    v6 = v5;
    if (CFDataGetLength(v5))
    {
      v7 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v6, 0, 0, 0);
    }

    else
    {
      v7 = MEMORY[0x1E695E0F8];
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (__CFData)getSetupDataFrom:(opaqueCMFormatDescription *)a3
{
  LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
  if (!LocalIDForMetadataIdentifyingFactors)
  {
    return 0;
  }

  return MEMORY[0x1EEDBD738](a3, LocalIDForMetadataIdentifyingFactors);
}

- (__CFData)getFirstAtomWithFourCharCode:(unsigned int)a3 fromSetupData:(__CFData *)a4
{
  Length = CFDataGetLength(a4);
  BytePtr = CFDataGetBytePtr(a4);
  if (Length < 8)
  {
    return 0;
  }

  v8 = BytePtr;
  result = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  do
  {
    v12 = &v8[v10];
    v13 = bswap32(*&v8[v10]);
    v10 += v13;
    if (v13 < 8 || v10 > Length)
    {
      break;
    }

    if (bswap32(*(v12 + 1)) == a3 && result == 0)
    {
      result = CFDataCreate(v11, v12 + 8, v13 - 8);
    }
  }

  while (v10 + 8 <= Length);
  return result;
}

- (float)compareSoftwareStackVersion:(id)a3 withReferenceVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = NAN;
  if (v6)
  {
    if (v7)
    {
      if ([v6 count] || (v9 = 1.0, !objc_msgSend(v8, "count")))
      {
        if ([v6 count] && !objc_msgSend(v8, "count"))
        {
          v9 = -1.0;
        }

        else if ([v6 count] || objc_msgSend(v8, "count"))
        {
          v10 = [v6 objectForKeyedSubscript:@"LivePhotoMetadataSetupDataVersion"];
          v11 = [v8 objectForKeyedSubscript:@"LivePhotoMetadataSetupDataVersion"];
          v12 = v11;
          v9 = NAN;
          if (v10 && v11)
          {
            v13 = [v10 intValue];
            if (v13 == [v12 intValue] && objc_msgSend(v10, "intValue") <= 1)
            {
              v14 = [v6 objectForKeyedSubscript:@"FrameworkVersions"];
              v15 = [v8 objectForKeyedSubscript:@"FrameworkVersions"];
              v16 = v15;
              v17 = 1.0;
              if (!(v14 | v15))
              {
                v17 = 0.0;
              }

              if (v14)
              {
                v9 = -1.0;
              }

              else
              {
                v9 = v17;
              }

              if (v14 && v15)
              {
                if ([v14 count] && objc_msgSend(v16, "count"))
                {
                  v38 = 0;
                  v39 = &v38;
                  v40 = 0x2020000000;
                  v41 = 0;
                  v34 = 0;
                  v35 = &v34;
                  v36 = 0x2020000000;
                  v37 = 0;
                  v30 = 0;
                  v31 = &v30;
                  v32 = 0x2020000000;
                  v33 = 0;
                  v26 = 0;
                  v27 = &v26;
                  v28 = 0x2020000000;
                  v29 = 0;
                  v19[0] = MEMORY[0x1E69E9820];
                  v19[1] = 3221225472;
                  v19[2] = __86__VCPVideoMetaLivePhotoMetaAnalyzer_compareSoftwareStackVersion_withReferenceVersion___block_invoke;
                  v19[3] = &unk_1E8350E00;
                  v20 = v14;
                  v21 = self;
                  v22 = &v26;
                  v23 = &v38;
                  v24 = &v34;
                  v25 = &v30;
                  [v16 enumerateKeysAndObjectsUsingBlock:v19];
                  if (v27[3])
                  {
                    v9 = NAN;
                  }

                  else if (*(v39 + 24) == 1)
                  {
                    if (*(v35 + 24))
                    {
                      v9 = NAN;
                    }

                    else
                    {
                      v9 = 1.0;
                    }
                  }

                  else
                  {
                    v9 = -1.0;
                    if ((v35[3] & 1) == 0)
                    {
                      if (*(v31 + 24))
                      {
                        v9 = 0.0;
                      }

                      else
                      {
                        v9 = NAN;
                      }
                    }
                  }

                  _Block_object_dispose(&v26, 8);
                  _Block_object_dispose(&v30, 8);
                  _Block_object_dispose(&v34, 8);
                  _Block_object_dispose(&v38, 8);
                }

                else
                {
                  v9 = NAN;
                }
              }
            }

            else
            {
              v9 = NAN;
            }
          }
        }

        else
        {
          v9 = 0.0;
        }
      }
    }
  }

  return v9;
}

void __86__VCPVideoMetaLivePhotoMetaAnalyzer_compareSoftwareStackVersion_withReferenceVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v10];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v10];
    [*(a1 + 40) compareNumericVersion:v7 withReferenceVersion:v5];
    if (v8 == 1.0)
    {
      v9 = 56;
    }

    else if (v8 == -1.0)
    {
      v9 = 64;
    }

    else
    {
      if (v8 != 0.0)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = 72;
    }

    *(*(*(a1 + v9) + 8) + 24) = 1;
    goto LABEL_9;
  }

LABEL_10:
}

- (float)compareNumericVersion:(id)a3 withReferenceVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0.0;
  if ([v5 isEqualToString:v6])
  {
    goto LABEL_28;
  }

  v28 = v6;
  v29 = v5;
  v8 = [v5 componentsSeparatedByString:@"."];
  v9 = [v6 componentsSeparatedByString:@"."];
  v10 = [v8 count];
  v11 = [v9 count];
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (!v12)
  {
    v14 = 0.0;
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 0.0;
  while (1)
  {
    v15 = [v8 objectAtIndexedSubscript:v13];
    v16 = [v9 objectAtIndexedSubscript:v13];
    if ([v15 isEqualToString:v16])
    {
      goto LABEL_17;
    }

    v17 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v18 = [v17 numberFromString:v15];
    if (!v18)
    {
      break;
    }

    v19 = [v17 numberFromString:v16];

    if (!v19)
    {
      break;
    }

    v20 = [v17 numberFromString:v15];
    v21 = [v20 intValue];

    v22 = [v17 numberFromString:v16];
    v23 = [v22 intValue];

    if (v21 >= v23)
    {
      v24 = v14;
    }

    else
    {
      v24 = -1.0;
    }

    if (v21 <= v23)
    {
      v14 = v24;
    }

    else
    {
      v14 = 1.0;
    }

    if (v21 != v23)
    {
      goto LABEL_21;
    }

LABEL_17:

    if (v12 == ++v13)
    {
      goto LABEL_22;
    }
  }

  v14 = NAN;
LABEL_21:

LABEL_22:
  v7 = v14;
  if (v14 == 0.0)
  {
LABEL_23:
    v25 = [v8 count];
    v7 = 1.0;
    if (v25 <= [v9 count])
    {
      v26 = [v8 count];
      if (v26 >= [v9 count])
      {
        v7 = v14;
      }

      else
      {
        v7 = -1.0;
      }
    }
  }

  v6 = v28;
  v5 = v29;
LABEL_28:

  return v7;
}

- (int)convertLivePhotoStruct:(FigLivePhotoMetadata *)a3 toDictionary:(id)a4
{
  v6 = a4;
  if (v6)
  {
    if (a3->var0 - 4 >= 0xFFFFFFFD)
    {
      var6_high = HIWORD(a3->var1.var6);
      if (var6_high)
      {
        LODWORD(v7.dx) = *(&a3->var0 + 1);
        v9 = [MEMORY[0x1E696AD98] numberWithFloat:v7.dx];
        [v6 setObject:v9 forKeyedSubscript:@"privET"];

        var6_high = HIWORD(a3->var1.var6);
      }

      if ((var6_high & 2) != 0)
      {
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:*&a3->var1.var0];
        [v6 setObject:v10 forKeyedSubscript:@"privAFS"];

        var6_high = HIWORD(a3->var1.var6);
      }

      if ((var6_high & 4) != 0)
      {
        v44.x = *&a3->var1.var1 - self->_prevEstimatedCenterMv.dx;
        v44.y = *(&a3->var1.var1 + 1) - self->_prevEstimatedCenterMv.dy;
        v11 = NSStringFromPoint(v44);
        [v6 setObject:v11 forKeyedSubscript:@"privECMVct"];

        v7 = vcvtq_f64_f32(a3->var1.var1);
        self->_prevEstimatedCenterMv = v7;
        var6_high = HIWORD(a3->var1.var6);
      }

      if ((var6_high & 8) != 0)
      {
        v45.x = a3->var1.var2;
        v45.y = a3->var1.var3;
        v12 = NSStringFromPoint(v45);
        [v6 setObject:v12 forKeyedSubscript:@"privEMBVct"];

        var6_high = HIWORD(a3->var1.var6);
      }

      if ((var6_high & 0x10) != 0)
      {
        *&v7.dx = a3->var1.var4;
        v13 = [MEMORY[0x1E696AD98] numberWithFloat:v7.dx];
        [v6 setObject:v13 forKeyedSubscript:@"privTZF"];

        var6_high = HIWORD(a3->var1.var6);
      }

      if ((var6_high & 0x20) != 0)
      {
        *&v7.dx = a3->var1.var5;
        v14 = [MEMORY[0x1E696AD98] numberWithFloat:v7.dx];
        [v6 setObject:v14 forKeyedSubscript:@"privImgG"];

        var6_high = HIWORD(a3->var1.var6);
      }

      if ((var6_high & 0x40) != 0)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithChar:SLOBYTE(a3->var1.var6)];
        [v6 setObject:v15 forKeyedSubscript:@"privAFSt"];

        var6_high = HIWORD(a3->var1.var6);
      }

      if ((var6_high & 0x80) != 0)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithChar:SBYTE1(a3->var1.var6)];
        [v6 setObject:v16 forKeyedSubscript:@"privFM"];
      }

      if (LODWORD(a3->var1.var7))
      {
        v43 = self;
        v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
        if (LODWORD(a3->var1.var7))
        {
          v18 = 0;
          v19 = &a3->var1.var12[0].var4 + 1;
          do
          {
            v20 = [MEMORY[0x1E695DF90] dictionary];
            v21 = *v19;
            if ((*v19 & 2) != 0)
            {
              v46.origin.x = *(v19 - 11);
              v46.origin.y = *(v19 - 9);
              v46.size.width = *(v19 - 7);
              v46.size.height = *(v19 - 5);
              v22 = NSStringFromRect(v46);
              [v20 setObject:v22 forKeyedSubscript:@"faceBounds"];

              v21 = *v19;
            }

            if ((v21 & 4) != 0)
            {
              v23 = [MEMORY[0x1E696AD98] numberWithInt:*(v19 - 3)];
              [v20 setObject:v23 forKeyedSubscript:@"faceId"];

              v21 = *v19;
            }

            if (v21)
            {
              v24 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v19 - 15)];
              [v20 setObject:v24 forKeyedSubscript:@"relSampleTime"];
            }

            [v17 addObject:v20];

            ++v18;
            v19 += 16;
          }

          while (v18 < LODWORD(a3->var1.var7));
        }

        [v6 setObject:v17 forKeyedSubscript:@"privDFArray"];

        self = v43;
      }

      if (a3->var0 == 3)
      {
        var7_low = LODWORD(a3->var1.var7);
        v28 = (a3 + 32 * var7_low);
        v26 = vaddvq_s32(v28[3]);
        i64 = v28[2 * v26 + 3].i64;
        v30 = *(i64 + 16);
        v29 = i64 + 16;
        LOBYTE(v28) = v30;
        if ((v30 & 1) != 0 && self->_gyroHomographyIsValid)
        {
          v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v33 = 0;
          p_var2 = &a3->var1.var12[var7_low + v26].var2;
          do
          {
            *&v32 = p_var2[v33];
            v35 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
            [v31 addObject:v35];

            ++v33;
          }

          while (v33 != 9);
          [v6 setObject:v31 forKeyedSubscript:@"trajectoryHomography"];

          LOWORD(v28) = *v29;
        }

        if ((v28 & 2) != 0)
        {
          v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v29 + 40)];
          [v6 setObject:v36 forKeyedSubscript:@"presentingTimestampInNanos"];

          LOWORD(v28) = *v29;
        }

        if ((v28 & 4) != 0)
        {
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v29 + 48)];
          [v6 setObject:v37 forKeyedSubscript:@"originalPresentingTimestampInNanos"];

          LOWORD(v28) = *v29;
        }

        if ((v28 & 8) != 0)
        {
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v29 + 56)];
          [v6 setObject:v39 forKeyedSubscript:@"sequenceAdjusterRecipe"];
        }

        else
        {
          [v6 setObject:&unk_1F49BE140 forKeyedSubscript:@"sequenceAdjusterRecipe"];
        }

        if ((*v29 & 0x10) != 0)
        {
          v40 = [MEMORY[0x1E696AD98] numberWithChar:*(v29 + 57)];
          [v6 setObject:v40 forKeyedSubscript:@"sequenceAdjusterDisplacement"];
        }

        else
        {
          [v6 setObject:&unk_1F49BE140 forKeyedSubscript:@"sequenceAdjusterDisplacement"];
        }

        if ((*v29 & 0x20) != 0)
        {
          v41 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v29 + 58)];
          [v6 setObject:v41 forKeyedSubscript:@"interpolatedFrame"];
        }
      }
    }

    v38 = 0;
  }

  else
  {
    v38 = -50;
  }

  return v38;
}

- (int)convertLivePhotoBinary:(id)a3 toDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 bytes];
  [v6 length];
  v8 = FigLivePhotoMetadataComputeDeserializationSize();
  if (!v8)
  {
    [(NSMutableData *)self->_deSerializedMetaBuffer length];
    [(NSMutableData *)self->_deSerializedMetaBuffer resetBytesInRange:0, [(NSMutableData *)self->_deSerializedMetaBuffer length]];
    v9 = [(NSMutableData *)self->_deSerializedMetaBuffer mutableBytes];
    v8 = FigLivePhotoMetadataDeserializeIntoBuffer();
    if (!v8)
    {
      v8 = [(VCPVideoMetaLivePhotoMetaAnalyzer *)self convertLivePhotoStruct:v9 toDictionary:v7];
    }
  }

  return v8;
}

- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4
{
  v120 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v90 = v5;
  v99 = [MEMORY[0x1E695DF90] dictionary];
  if (!v5)
  {
    v12 = -50;
LABEL_81:
    v87 = v99;
    goto LABEL_82;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = [v5 items];
  v6 = [obj countByEnumeratingWithState:&v105 objects:v119 count:16];
  v98 = self;
  if (v6)
  {
    v94 = 0;
    v93 = *v106;
    v92 = *MEMORY[0x1E69909F8];
    while (2)
    {
      v95 = v6;
      for (i = 0; i != v95; ++i)
      {
        if (*v106 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v105 + 1) + 8 * i);
        v8 = [v7 dataType];
        v9 = [v8 isEqualToString:v92];

        if (v9)
        {
          v10 = [MEMORY[0x1E695DF90] dictionary];
          v11 = [v7 dataValue];
          v12 = [(VCPVideoMetaLivePhotoMetaAnalyzer *)v98 convertLivePhotoBinary:v11 toDictionary:v10];

          if (v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = v94;
          }

          if (v12)
          {

            goto LABEL_81;
          }

          v94 = v13;
          if ([v10 count])
          {
            if (v7)
            {
              [v7 time];
            }

            else
            {
              memset(&v104, 0, sizeof(v104));
            }

            time = v104;
            v14 = CMTimeCopyAsDictionary(&time, 0);
            [v99 setObject:v14 forKeyedSubscript:@"start"];

            if (v7)
            {
              [v7 duration];
            }

            else
            {
              memset(&v104, 0, sizeof(v104));
            }

            time = v104;
            v15 = CMTimeCopyAsDictionary(&time, 0);
            [v99 setObject:v15 forKeyedSubscript:@"duration"];

            if (v7)
            {
              [v7 time];
            }

            else
            {
              memset(&time, 0, sizeof(time));
            }

            Seconds = CMTimeGetSeconds(&time);
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v17 = [objc_opt_class() defaultDesiredKeys];
            v18 = [v17 countByEnumeratingWithState:&v100 objects:v118 count:16];
            if (v18)
            {
              v19 = Seconds;
              v20 = *v101;
              v97 = v17;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v101 != v20)
                  {
                    objc_enumerationMutation(v97);
                  }

                  v22 = *(*(&v100 + 1) + 8 * j);
                  v23 = [v10 objectForKeyedSubscript:v22];
                  if (v23)
                  {
                    [v99 setObject:v23 forKeyedSubscript:v22];
                    if ([v22 isEqualToString:@"privTZF"])
                    {
                      v24 = [v99 objectForKeyedSubscript:v22];
                      [v24 floatValue];
                      v26 = v25;
                      [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer minZoom];
                      v28 = v26 < v27;

                      if (v28)
                      {
                        v29 = [v99 objectForKeyedSubscript:v22];
                        [v29 floatValue];
                        [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer setMinZoom:?];
                      }

                      v30 = [v99 objectForKeyedSubscript:v22];
                      [v30 floatValue];
                      v32 = v31;
                      [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer maxZoom];
                      v34 = v32 > v33;

                      if (v34)
                      {
                        v35 = [v99 objectForKeyedSubscript:v22];
                        [v35 floatValue];
                        [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer setMaxZoom:?];
                      }
                    }

                    if ([v22 isEqualToString:@"privTZF"])
                    {
                      [(VCPVideoMetaAnalyzer *)v98 photoOffset];
                      if (v36 > v19)
                      {
                        [(VCPVideoMetaAnalyzer *)v98 photoOffset];
                        if ((v37 + -0.5) < v19)
                        {
                          v38 = [v99 objectForKeyedSubscript:v22];
                          [v38 floatValue];
                          v40 = v39;
                          [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer settlingMinZoom];
                          v42 = v40 < v41;

                          if (v42)
                          {
                            v43 = [v99 objectForKeyedSubscript:v22];
                            [v43 floatValue];
                            [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer setSettlingMinZoom:?];
                          }

                          v44 = [v99 objectForKeyedSubscript:v22];
                          [v44 floatValue];
                          v46 = v45;
                          [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer settlingMaxZoom];
                          v48 = v46 > v47;

                          if (v48)
                          {
                            v49 = [v99 objectForKeyedSubscript:v22];
                            [v49 floatValue];
                            [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer setSettlingMaxZoom:?];
                          }
                        }
                      }
                    }
                  }
                }

                v17 = v97;
                v18 = [v97 countByEnumeratingWithState:&v100 objects:v118 count:16];
              }

              while (v18);
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v105 objects:v119 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v94 = 0;
  }

  [v99 objectForKeyedSubscript:@"trajectoryHomography"];
  v51 = v50 = v98;
  if (v51)
  {
    v52 = [v99 objectForKeyedSubscript:@"privEMBVct"];
    if (v52)
    {
      v53 = (v98->_requestAnalyses & 0x4000010010000200) == 0;

      v50 = v98;
      if (v53)
      {
        goto LABEL_55;
      }

      metadataStabilizationArray = v98->_metadataStabilizationArray;
      v116 = @"attributes";
      v114[0] = @"MetaHomographyResults";
      v51 = [v99 objectForKeyedSubscript:@"trajectoryHomography"];
      v115[0] = v51;
      v114[1] = @"MetaPresentationTimeResults";
      v55 = [v99 objectForKeyedSubscript:@"start"];
      v115[1] = v55;
      v114[2] = @"MetaMotionBlurResults";
      v56 = [v99 objectForKeyedSubscript:@"privEMBVct"];
      v115[2] = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:3];
      v117 = v57;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      [(NSMutableArray *)metadataStabilizationArray addObject:v58];
    }

    v50 = v98;
  }

LABEL_55:
  v59 = [v99 objectForKeyedSubscript:@"presentingTimestampInNanos"];
  if (!v59)
  {
    goto LABEL_60;
  }

  v60 = [v99 objectForKeyedSubscript:@"originalPresentingTimestampInNanos"];
  if (v60)
  {
    v61 = (v50->_requestAnalyses & 0x200) == 0;

    v50 = v98;
    if (v61)
    {
      goto LABEL_60;
    }

    frameTimestampArray = v98->_frameTimestampArray;
    v63 = [v99 objectForKeyedSubscript:@"presentingTimestampInNanos"];
    [(NSMutableArray *)frameTimestampArray addObject:v63];

    originalFrameTimestampArray = v98->_originalFrameTimestampArray;
    v65 = [v99 objectForKeyedSubscript:@"originalPresentingTimestampInNanos"];
    [(NSMutableArray *)originalFrameTimestampArray addObject:v65];

    metadataItemTimestampArray = v98->_metadataItemTimestampArray;
    v59 = [v99 objectForKeyedSubscript:@"start"];
    [(NSMutableArray *)metadataItemTimestampArray addObject:v59];
  }

  v50 = v98;
LABEL_60:
  v67 = [v99 objectForKeyedSubscript:@"sequenceAdjusterRecipe"];
  if (!v67)
  {
    goto LABEL_69;
  }

  v68 = [v99 objectForKeyedSubscript:@"sequenceAdjusterDisplacement"];
  if (v68)
  {
    v69 = [v99 objectForKeyedSubscript:@"presentingTimestampInNanos"];
    if (v69)
    {
      v70 = [v99 objectForKeyedSubscript:@"originalPresentingTimestampInNanos"];
      if (v70)
      {
        v71 = (v50->_requestAnalyses & 0x4020000000) == 0;

        if (v71)
        {
          goto LABEL_69;
        }

        adjusterArray = v98->_adjusterArray;
        v112 = @"attributes";
        v110[0] = @"MetaAdjusterRecipeResults";
        v67 = [v99 objectForKeyedSubscript:@"sequenceAdjusterRecipe"];
        v111[0] = v67;
        v110[1] = @"MetaAdjusterDisplacementKey";
        v68 = [v99 objectForKeyedSubscript:@"sequenceAdjusterDisplacement"];
        v111[1] = v68;
        v110[2] = @"MetaItemPTSResultsKey";
        v69 = [v99 objectForKeyedSubscript:@"start"];
        v111[2] = v69;
        v110[3] = @"MetaOriginalPTSInNanosResults";
        v73 = [v99 objectForKeyedSubscript:@"originalPresentingTimestampInNanos"];
        v111[3] = v73;
        v110[4] = @"MetaPTSInNanosResults";
        v74 = [v99 objectForKeyedSubscript:@"originalPresentingTimestampInNanos"];
        v111[4] = v74;
        v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:5];
        v113 = v75;
        v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        [(NSMutableArray *)adjusterArray addObject:v76];
      }
    }
  }

LABEL_69:
  v77 = [v99 objectForKeyedSubscript:@"interpolatedFrame"];
  v78 = v77 == 0;

  if (!v78)
  {
    interpolatedFrameArray = v98->_interpolatedFrameArray;
    v80 = [v99 objectForKeyedSubscript:@"interpolatedFrame"];
    [(NSMutableArray *)interpolatedFrameArray addObject:v80];
  }

  [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer maxZoom];
  v82 = v81;
  [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer minZoom];
  if ((v82 - v83) > 0.5)
  {
    [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer setHadZoom:1];
  }

  [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer settlingMaxZoom];
  v85 = v84;
  [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer settlingMinZoom];
  if ((v85 - v86) > 0.5)
  {
    [(VCPVideoMetaLensSwitchAnalyzer *)v98->_metaLensSwitchAnalzer setSettlingHadZoom:1];
  }

  if ((v98->_requestAnalyses & 0xC0) == 0)
  {
    v12 = v94;
    goto LABEL_81;
  }

  v87 = v99;
  v12 = [(VCPVideoMetaFocusAnalyzer *)v98->_metaFocusAnalyzer processFrameMetadata:v99];
  if (!v12)
  {
    v88 = [(VCPVideoMetaMotionAnalyzer *)v98->_metaMotionAnalyzer processFrameMetadata:v99];
    if (v88)
    {
      v12 = v88;
    }

    else
    {
      v12 = v94;
    }
  }

LABEL_82:

  return v12;
}

- (int)finalizeAnalysis
{
  if ((self->_requestAnalyses & 0xC0) == 0)
  {
    return 0;
  }

  result = [(VCPVideoMetaFocusAnalyzer *)self->_metaFocusAnalyzer finalizeAnalysis];
  if (!result)
  {
    metaMotionAnalyzer = self->_metaMotionAnalyzer;

    return [(VCPVideoMetaMotionAnalyzer *)metaMotionAnalyzer finalizeAnalysis];
  }

  return result;
}

- (id)privateResults
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(VCPVideoMetaLensSwitchAnalyzer *)self->_metaLensSwitchAnalzer results];
  [v3 setObject:v4 forKeyedSubscript:@"MetaLensSwitchResults"];

  requestAnalyses = self->_requestAnalyses;
  if ((requestAnalyses & 0xC0) != 0)
  {
    v6 = [(VCPVideoMetaFocusAnalyzer *)self->_metaFocusAnalyzer results];
    [v3 setObject:v6 forKeyedSubscript:@"MetaFocusResults"];

    v7 = [(VCPVideoMetaMotionAnalyzer *)self->_metaMotionAnalyzer results];
    [v3 setObject:v7 forKeyedSubscript:@"MetaMotionResults"];

    requestAnalyses = self->_requestAnalyses;
  }

  if ((requestAnalyses & 0x4000010010000200) != 0 && [(NSMutableArray *)self->_metadataStabilizationArray count])
  {
    width = self->_gyroHomographyDimension.width;
    height = self->_gyroHomographyDimension.height;
    if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
    {
      v16[0] = self->_metadataStabilizationArray;
      v15[0] = @"MetaStabilizationFrameResults";
      v15[1] = @"MetaHomographyDimensionResults";
      v11 = NSStringFromSize(*&width);
      v16[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v3 setObject:v12 forKeyedSubscript:@"MetaStabilizationResults"];
    }
  }

  v13 = self->_requestAnalyses;
  if ((v13 & 0x200) != 0)
  {
    [v3 setObject:self->_frameTimestampArray forKeyedSubscript:@"MetaPTSInNanosResults"];
    [v3 setObject:self->_originalFrameTimestampArray forKeyedSubscript:@"MetaOriginalPTSInNanosResults"];
    [v3 setObject:self->_metadataItemTimestampArray forKeyedSubscript:@"MetaItemPTSResultsKey"];
    v13 = self->_requestAnalyses;
  }

  if ((v13 & 0x4020000000) != 0)
  {
    [v3 setObject:self->_adjusterArray forKeyedSubscript:@"MetaAdjusterResults"];
  }

  if ([(NSMutableArray *)self->_interpolatedFrameArray count])
  {
    [v3 setObject:self->_interpolatedFrameArray forKeyedSubscript:@"MetaInterpolatedFrameKey"];
  }

  return v3;
}

@end