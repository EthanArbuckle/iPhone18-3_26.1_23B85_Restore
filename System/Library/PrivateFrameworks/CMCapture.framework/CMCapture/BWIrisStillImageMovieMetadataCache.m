@interface BWIrisStillImageMovieMetadataCache
- (id)copyAndClearStillImageTransformDataForSettingsID:(id)a3;
- (void)cacheStillImageTransformDataFromMetadata:(id)a3 transformReferenceDimensions:(id)a4;
- (void)cacheStillImageVideoToPhotoTransform:(id)a3 forSettingsID:(id)a4;
@end

@implementation BWIrisStillImageMovieMetadataCache

- (void)cacheStillImageTransformDataFromMetadata:(id)a3 transformReferenceDimensions:(id)a4
{
  v7 = *off_1E798D4D0;
  v8 = [a3 objectForKeyedSubscript:*off_1E798D4D0];
  v9 = [a3 objectForKeyedSubscript:*off_1E798A0A0];
  v10 = [a3 objectForKeyedSubscript:@"FinalCropRectForIrisStillImageMovieMetadataCache"];
  if (!v10)
  {
    v10 = [a3 objectForKeyedSubscript:*off_1E798A5C8];
  }

  v11 = [a3 objectForKeyedSubscript:@"PreviewShiftForIrisStillImageMovieMetadataCache"];
  if (v8)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = v11;
    FigSimpleMutexLock();
    v14 = [(NSMutableDictionary *)self->super._cache objectForKeyedSubscript:v9];
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->super._cache setObject:v15 forKeyedSubscript:v9];
    }

    [v15 setObject:v8 forKeyedSubscript:v7];
    [v15 setObject:v10 forKeyedSubscript:*off_1E798A5C8];
    if (a4.var0 >= 1 && a4.var1 >= 1)
    {
      [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", a4), @"VitalityTransformReferenceWidth"}];
      [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", HIDWORD(*&a4)), @"VitalityTransformReferenceHeight"}];
    }

    [v15 setObject:v13 forKeyedSubscript:@"PreviewShiftTranslation"];

    FigSimpleMutexUnlock();
  }
}

- (void)cacheStillImageVideoToPhotoTransform:(id)a3 forSettingsID:(id)a4
{
  if (a3 && a4)
  {
    FigSimpleMutexLock();
    v7 = [(NSMutableDictionary *)self->super._cache objectForKeyedSubscript:a4];
    if (!v7)
    {
      v7 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->super._cache setObject:v7 forKeyedSubscript:a4];
    }

    [v7 setObject:a3 forKeyedSubscript:@"VideoToPhotoTransform"];

    FigSimpleMutexUnlock();
  }
}

- (id)copyAndClearStillImageTransformDataForSettingsID:(id)a3
{
  v3 = [(BWSimpleCache *)self copyAndClearObjectForKey:a3];
  v4 = [v3 objectForKeyedSubscript:*off_1E798D4D0];
  v5 = [v3 objectForKeyedSubscript:@"VideoToPhotoTransform"];
  v6 = [v3 objectForKeyedSubscript:@"PreviewShiftTranslation"];
  if (v4)
  {
    v7 = v6;
    if (v5 | v6)
    {
      v77 = 0u;
      v78 = 0u;
      CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
      __asm { FMOV            V0.2D, #1.0 }

      if (!CGRectIfPresent)
      {
        v77 = 0uLL;
        v78 = _Q0;
      }

      v67 = _Q0;
      v14 = [objc_msgSend(v3 objectForKeyedSubscript:{@"VitalityTransformReferenceWidth", "intValue"}];
      v15 = [objc_msgSend(v3 objectForKeyedSubscript:{@"VitalityTransformReferenceHeight", "intValue"}];
      v16 = v14 > 0;
      v17 = v15 > 0;
      if (v16 && v17)
      {
        v18 = v14;
      }

      else
      {
        v18 = 1920;
      }

      if (v16 && v17)
      {
        v19 = v15 << 32;
      }

      else
      {
        v19 = 0x5A000000000;
      }

      v20 = [v4 length];
      v21 = MEMORY[0x1E69E9B10];
      if (v20 <= 0x23)
      {
        v30 = *(MEMORY[0x1E69E9B10] + 16);
        v82 = *MEMORY[0x1E69E9B10];
        v83 = v30;
        v84 = *(MEMORY[0x1E69E9B10] + 32);
      }

      else
      {
        v22 = [v4 bytes];
        v23 = v21[1];
        v82 = *v21;
        v83 = v23;
        v84 = v21[2];
        if (v22)
        {
          for (i = 0; i != 3; ++i)
          {
            v25 = 0;
            v26 = &v82.f32[4 * i];
            v27 = *v26;
            v28 = v22;
            do
            {
              v29 = *v28;
              v28 += 3;
              v75 = v27;
              *(&v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3))) = v29;
              v27 = v75;
              ++v25;
            }

            while (v25 != 3);
            *(v26 + 2) = DWORD2(v75);
            *v26 = v27;
            v22 += 4;
          }
        }
      }

      v31 = v82;
      v32 = v83;
      v33 = v84;
      v31.i32[3] = 0;
      v32.i32[3] = 0;
      v33.i32[3] = 0;
      if (v5)
      {
        v68 = v32;
        v70 = v31;
        v72 = v33;
        v65 = v19;
        v34 = 0;
        v35 = v21[1];
        v82 = *v21;
        v83 = v35;
        v84 = v21[2];
        do
        {
          v36 = 0;
          v37 = v34;
          do
          {
            [objc_msgSend(v5 objectAtIndexedSubscript:{v37, v65), "floatValue"}];
            v39 = v36;
            if ((v36 & 0xFFFFFFFE) != 0)
            {
              v39 = 2;
            }

            v82.i32[4 * v34 + v39] = v38;
            ++v36;
            v37 += 3;
          }

          while (v36 != 3);
          ++v34;
        }

        while (v34 != 3);
        v40 = v82;
        v41 = v83;
        v42 = v84;
        v40.i32[3] = 0;
        v41.i32[3] = 0;
        v42.i32[3] = 0;
        *v43.i64 = scaleHomography(v40, v41, v42, v78.f64[0], v78.f64[1]);
        v19 = v65;
        *v46.i64 = bwsc_convertHomographyToPixelCoordinates(v65 | v18, v43, v44, v45);
        v49 = 0;
        v79 = v70;
        v80 = v68;
        v81 = v72;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        do
        {
          *(&v82 + v49 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&v79 + v49 * 4))), v47, *&v79.f32[v49], 1), v48, *(&v79 + v49 * 4), 2);
          v49 += 4;
        }

        while (v49 != 12);
        v31 = v82;
        v32 = v83;
        v33 = v84;
      }

      if (v7)
      {
        v66 = v21[2];
        v71 = v31;
        v73 = v33;
        point = *MEMORY[0x1E695EFF8];
        v69 = v32;
        CGPointMakeWithDictionaryRepresentation(v7, &point);
        v50.i64[1] = *&point.y;
        *v50.f32 = vcvt_f32_f64(point);
        v51.i64[0] = vnegq_f32(v50).u64[0];
        v51.i64[1] = v66.i64[1];
        v78 = vdivq_f64(v67, v78);
        *v52.i64 = scaleHomography(*v21, v21[1], v51, v78.f64[0], v78.f64[1]);
        *v55.i64 = bwsc_convertHomographyToPixelCoordinates(v19 | v18, v52, v53, v54);
        v58 = 0;
        v79 = v71;
        v80 = v69;
        v81 = v73;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        do
        {
          *(&v82 + v58 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(*(&v79 + v58 * 4))), v56, *&v79.f32[v58], 1), v57, *(&v79 + v58 * 4), 2);
          v58 += 4;
        }

        while (v58 != 12);
        v31 = v82;
        v32 = v83;
        v33 = v84;
      }

      v59 = 0;
      v82 = v31;
      v83 = v32;
      v60 = &v79;
      v84 = v33;
      do
      {
        v61 = 0;
        v62 = *(&v82 + v59);
        v63 = v60;
        do
        {
          v74 = v62;
          v63->i32[0] = *(&v74 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3)));
          v63 = (v63 + 12);
          ++v61;
        }

        while (v61 != 3);
        ++v59;
        v60 = (v60 + 4);
      }

      while (v59 != 3);
      v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v79 length:36];
    }
  }

  return v4;
}

@end