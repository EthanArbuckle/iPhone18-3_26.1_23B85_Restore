@interface RTLocationDownsampler
+ (id)_downsampleLocations:(id)a3 errorFunction:(id)a4 errorThreshold:(double)a5;
+ (id)_downsampleLocations:(id)a3 errorFunction:(id)a4 outputSize:(int64_t)a5;
+ (id)downsampleLocations:(id)a3 errorFunction:(id)a4 errorThreshold:(double)a5 outputSize:(unint64_t)a6;
+ (id)downsampleLocations:(id)a3 outputSize:(unint64_t)a4;
+ (id)filterConvergingLocations:(id)a3;
@end

@implementation RTLocationDownsampler

+ (id)filterConvergingLocations:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v3 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v29;
  do
  {
    v10 = 0;
    do
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v28 + 1) + 8 * v10);
      if (!v8)
      {
        goto LABEL_10;
      }

      v12 = [v8 timestamp];
      v13 = [v11 timestamp];
      [v12 timeIntervalSinceDate:v13];
      if (v14 > 20.0)
      {

LABEL_10:
        v19 = v11;

        v8 = v19;
LABEL_11:
        [v4 addObject:v11];
        goto LABEL_12;
      }

      [v8 horizontalAccuracy];
      v16 = v15;
      [v11 horizontalAccuracy];
      v18 = v17;

      if (v16 > v18)
      {
        goto LABEL_10;
      }

      [v8 horizontalAccuracy];
      v21 = v20 + v20;
      [v11 horizontalAccuracy];
      if (v21 > v22)
      {
        goto LABEL_11;
      }

LABEL_12:
      ++v10;
    }

    while (v7 != v10);
    v23 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v7 = v23;
  }

  while (v23);
LABEL_19:

  v24 = [v4 reverseObjectEnumerator];
  v25 = [v24 allObjects];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)downsampleLocations:(id)a3 outputSize:(unint64_t)a4
{
  v5 = a3;
  v6 = +[RTLocationDownsampler createErrorFunctionWithPerpendicularDistance];
  v7 = [RTLocationDownsampler downsampleLocations:v5 errorFunction:v6 errorThreshold:a4 outputSize:0.0];

  return v7;
}

+ (id)downsampleLocations:(id)a3 errorFunction:(id)a4 errorThreshold:(double)a5 outputSize:(unint64_t)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = MEMORY[0x1BFB54DD0](a4);
  if (!a4)
  {
    v11 = +[RTLocationDownsampler createErrorFunctionWithPerpendicularDistance];

    v10 = v11;
  }

  v12 = v9;
  if (a5 > 0.0)
  {
    v12 = [RTLocationDownsampler _downsampleLocations:v9 errorFunction:v10 errorThreshold:a5];
  }

  if (a6)
  {
    v13 = [RTLocationDownsampler _downsampleLocations:v12 errorFunction:v10 outputSize:a6];

    v12 = v13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 134218496;
      v18 = a6;
      v19 = 2048;
      v20 = [v9 count];
      v21 = 2048;
      v22 = [v12 count];
      _os_log_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_INFO, "RTLocationDownsampler: desired output size, %lu, input size, %lu, output size, %lu", &v17, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_downsampleLocations:(id)a3 errorFunction:(id)a4 errorThreshold:(double)a5
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v25 = 0;
    v12 = "Invalid parameter not satisfying: locations";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, v12, v25, 2u);
    goto LABEL_13;
  }

  if (!v8)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v25 = 0;
    v12 = "Invalid parameter not satisfying: errorFunction";
    goto LABEL_12;
  }

  if (a5 <= 0.0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      v12 = "Invalid parameter not satisfying: errorThreshold > 0";
      goto LABEL_12;
    }

LABEL_13:

    v10 = 0;
    goto LABEL_14;
  }

  if ([v7 count] >= 3)
  {
    if (([v7 count] - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = 0;
      v16 = 0.0;
    }

    else
    {
      v15 = 0;
      v16 = 0.0;
      v17 = 1;
      do
      {
        v18 = [v7 objectAtIndex:v17];
        v19 = (v9)[2](v9, v18, v7);
        if (v19 > v16)
        {
          v15 = v17;
          v16 = v19;
        }

        ++v17;
      }

      while (v17 < [v7 count] - 1);
    }

    if (v16 <= a5)
    {
      v21 = [v7 firstObject];
      v26[0] = v21;
      v23 = [v7 lastObject];
      v26[1] = v23;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    }

    else
    {
      v20 = [v7 subarrayWithRange:{0, v15 + 1}];
      v21 = [RTLocationDownsampler _downsampleLocations:v20 errorFunction:v9 errorThreshold:a5];

      v22 = [v7 subarrayWithRange:{v15, objc_msgSend(v7, "count") - v15}];
      v23 = [RTLocationDownsampler _downsampleLocations:v22 errorFunction:v9 errorThreshold:a5];

      v10 = objc_opt_new();
      v24 = [v21 subarrayWithRange:{0, objc_msgSend(v21, "count") - 1}];
      [v10 addObjectsFromArray:v24];

      [v10 addObjectsFromArray:v23];
    }
  }

  else
  {
    v10 = v7;
  }

LABEL_14:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_downsampleLocations:(id)a3 errorFunction:(id)a4 outputSize:(int64_t)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: locations";
LABEL_30:
    _os_log_error_impl(&dword_1BF1C4000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_31;
  }

  if (!v8)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: errorFunction";
    goto LABEL_30;
  }

  if (a5 <= 0)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "Invalid parameter not satisfying: outputSize > 0";
      goto LABEL_30;
    }

LABEL_31:

    v28 = 0;
    goto LABEL_32;
  }

  if ([v7 count] <= a5)
  {
    v28 = v7;
  }

  else
  {
    v33 = a5;
    v10 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      v15 = -1.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          [v17 altitude];
          if (v18 >= 0.0 && ([v17 horizontalAccuracy], v19 <= 650.0))
          {
            [v10 addObject:v17];
            [v17 altitude];
            v15 = v22;
          }

          else
          {
            v42 = 0u;
            memset(v43, 0, 28);
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            memset(v37, 0, sizeof(v37));
            *buf = 0u;
            if (v17)
            {
              [v17 clientLocation];
            }

            *(v37 + 12) = v15;
            v20 = objc_alloc(MEMORY[0x1E6985C40]);
            v34[6] = v41;
            v34[7] = v42;
            v35[0] = v43[0];
            *(v35 + 12) = *(v43 + 12);
            v34[2] = v37[1];
            v34[3] = v38;
            v34[4] = v39;
            v34[5] = v40;
            v34[0] = *buf;
            v34[1] = v37[0];
            v21 = [v20 initWithClientLocation:v34];
            [v10 addObject:v21];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      v23 = [RTLocationDownsamplerTree alloc];
      v24 = [v10 copy];
      v25 = [(RTLocationDownsamplerTree *)v23 initWithLocations:v24 errorFunction:v9];

      if (v33 >= 3)
      {
        v26 = v33 - 2;
        do
        {
          [(RTLocationDownsamplerTree *)v25 maximumError];
          if (v27 == 0.0)
          {
            break;
          }

          [(RTLocationDownsamplerTree *)v25 splitLocationsWithErrorFunction:v9];
          --v26;
        }

        while (v26);
      }

      v28 = [(RTLocationDownsamplerTree *)v25 sampledLocations];
    }

    else
    {
      v28 = v11;
    }
  }

LABEL_32:

  v31 = *MEMORY[0x1E69E9840];

  return v28;
}

double __69__RTLocationDownsampler_createErrorFunctionWithPerpendicularDistance__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = [v5 lastObject];

  v8 = 0.0;
  if (v6 && v7)
  {
    v9 = v6;
    v41 = 0.0;
    v42 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    [v9 coordinate];
    v11 = v10;
    [v9 coordinate];
    v13 = v12;
    [v9 altitude];
    v15 = v14;
    [v4 coordinate];
    v17 = v16;
    [v4 coordinate];
    v19 = v18;
    [v4 altitude];
    v21 = RTCommonConvertGeodeticToLocalFrame(&v42, &v41, &v40, v11, v13, v15, v17, v19, v20);
    v8 = 0.0;
    if (v21)
    {
      [v9 coordinate];
      v23 = v22;
      [v9 coordinate];
      v25 = v24;
      [v9 altitude];
      v27 = v26;
      [v7 coordinate];
      v29 = v28;
      [v7 coordinate];
      v31 = v30;
      [v7 altitude];
      if (RTCommonConvertGeodeticToLocalFrame(&v39, &v38, &v37, v23, v25, v27, v29, v31, v32))
      {
        v33 = sqrt(v37 * v37 + v38 * v38 + v39 * v39);
        if (v33 != 0.0)
        {
          v34 = sqrt((v38 * v40 - v37 * v41) * (v38 * v40 - v37 * v41) + (v37 * v42 - v39 * v40) * (v37 * v42 - v39 * v40) + (v39 * v41 - v38 * v42) * (v39 * v41 - v38 * v42)) / v33;
          [v4 horizontalAccuracy];
          v8 = v34 - v35;
        }
      }
    }
  }

  return v8;
}

double __77__RTLocationDownsampler_createErrorFunctionWithPerpendicularDistanceAndSpeed__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = [v5 lastObject];

  v8 = 0.0;
  if (v6 && v7)
  {
    v9 = v6;
    v57 = 0.0;
    v58 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    [v9 coordinate];
    v11 = v10;
    [v9 coordinate];
    v13 = v12;
    [v9 altitude];
    v15 = v14;
    [v4 coordinate];
    v17 = v16;
    [v4 coordinate];
    v19 = v18;
    [v4 altitude];
    v21 = RTCommonConvertGeodeticToLocalFrame(&v58, &v57, &v56, v11, v13, v15, v17, v19, v20);
    v8 = 0.0;
    if (v21)
    {
      [v9 coordinate];
      v23 = v22;
      [v9 coordinate];
      v25 = v24;
      [v9 altitude];
      v27 = v26;
      [v7 coordinate];
      v29 = v28;
      [v7 coordinate];
      v31 = v30;
      [v7 altitude];
      if (RTCommonConvertGeodeticToLocalFrame(&v55, &v54, &v53, v23, v25, v27, v29, v31, v32))
      {
        v33 = sqrt(v53 * v53 + v54 * v54 + v55 * v55);
        if (v33 != 0.0)
        {
          v34 = v56;
          v35 = v57;
          v36 = v58;
          v37 = sqrt((v54 * v56 - v53 * v57) * (v54 * v56 - v53 * v57) + (v53 * v58 - v55 * v56) * (v53 * v58 - v55 * v56) + (v55 * v57 - v54 * v58) * (v55 * v57 - v54 * v58)) / v33;
          [v4 horizontalAccuracy];
          v52 = v37;
          v8 = v37 - v38;
          v39 = [v7 timestamp];
          v40 = [v9 timestamp];
          [v39 timeIntervalSinceDate:v40];
          v42 = v41;

          v43 = [v4 timestamp];
          [v43 timeIntervalSinceReferenceDate];
          v45 = v44;
          v46 = [v9 timestamp];
          [v46 timeIntervalSinceReferenceDate];
          v48 = v47;

          if (v42 > 0.0 && v45 - v48 > 0.0)
          {
            v49 = sqrt(v34 * v34 + v35 * v35 + v36 * v36);
            v50 = sqrt(v49 * v49 - v52 * v52) - v33 * (v45 - v48) / v42;
            if (v50 < 0.0)
            {
              v50 = -v50;
            }

            v8 = sqrt(v8 * v8 + v50 * v50);
          }
        }
      }
    }
  }

  return v8;
}

double __74__RTLocationDownsampler_createErrorFunctionWithAbsoluteCrosstrackDistance__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = [v5 lastObject];

  v8 = 0.0;
  if (v6 && v7 && v6 != v7)
  {
    v9 = v6;
    v39 = 0.0;
    v40 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    [v9 coordinate];
    v11 = v10;
    [v9 coordinate];
    v13 = v12;
    [v9 altitude];
    v15 = v14;
    [v4 coordinate];
    v17 = v16;
    [v4 coordinate];
    v19 = v18;
    [v4 altitude];
    v21 = RTCommonConvertGeodeticToLocalFrame(&v40, &v39, &v38, v11, v13, v15, v17, v19, v20);
    v8 = 0.0;
    if (v21)
    {
      [v9 coordinate];
      v23 = v22;
      [v9 coordinate];
      v25 = v24;
      [v9 altitude];
      v27 = v26;
      [v7 coordinate];
      v29 = v28;
      [v7 coordinate];
      v31 = v30;
      [v7 altitude];
      if (RTCommonConvertGeodeticToLocalFrame(&v37, &v36, &v35, v23, v25, v27, v29, v31, v32))
      {
        if (v37 == 0.0)
        {
          v33 = 0.0;
        }

        else
        {
          v33 = -v36 / v37;
        }

        v8 = fabs(v39 + v33 * v40) / sqrt(v33 * v33 + 1.0);
      }
    }
  }

  return v8;
}

@end