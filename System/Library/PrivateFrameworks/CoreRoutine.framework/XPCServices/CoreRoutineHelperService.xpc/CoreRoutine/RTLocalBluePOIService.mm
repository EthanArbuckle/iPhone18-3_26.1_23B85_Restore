@interface RTLocalBluePOIService
+ (id)adaptMacAddress:(id)a3;
+ (id)meanOf:(id)a3;
+ (id)normalizedRSSI:(id)a3;
- (id)calibrateConfidence:(id)a3 targetMUID:(unint64_t)a4 bluePOITile:(id)a5;
- (id)categoryFilteredLocalBluePOIResultWithPOIConfidences:(id)a3 aoiConfidences:(id)a4 distanceToNearestAOILowerBound:(id)a5 referenceLocation:(id)a6 queryTime:(id)a7 bluePOITile:(id)a8;
- (id)getCompiledModelForAccessPoints:(id)a3 fromBluePOITile:(id)a4;
- (id)processTile:(id)a3 fileManager:(id)a4 error:(id *)a5;
- (void)compileCoreMLModelAtURL:(id)a3 handler:(id)a4;
- (void)downloadBluePOIMetadataWithHandler:(id)a3;
- (void)downloadBluePOIMetadataWithTileLoader:(id)a3 handler:(id)a4;
- (void)downloadBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4;
- (void)downloadBluePOITilesForDownloadKeys:(id)a3 tileLoader:(id)a4 handler:(id)a5;
- (void)fetchBluePOIMetadataWithHandler:(id)a3;
- (void)fetchBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4;
- (void)loadPreinstalledTileAtPath:(id)a3 handler:(id)a4;
@end

@implementation RTLocalBluePOIService

+ (id)meanOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count])
    {
      v4 = 0;
      v5 = 0.0;
      do
      {
        v6 = [v3 objectAtIndexedSubscript:v4];
        [v6 doubleValue];
        v5 = v5 + v7;

        ++v4;
      }

      while ([v3 count] > v4);
    }

    else
    {
      v5 = 0.0;
    }

    v8 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v5 / [v3 count]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)adaptMacAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@":"];
  v5 = [[NSMutableString alloc] initWithCapacity:{objc_msgSend(v3, "length")}];
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [v4 objectAtIndexedSubscript:v6];
      if ([v8 length] == 2 && objc_msgSend(v8, "hasPrefix:", @"0"))
      {
        v9 = [v4 objectAtIndexedSubscript:v6];
        v10 = [v9 substringFromIndex:1];

        v8 = v10;
      }

      [v5 appendString:v8];

      objc_autoreleasePoolPop(v7);
      ++v6;
    }

    while ([v4 count] > v6);
  }

  return v5;
}

+ (id)normalizedRSSI:(id)a3
{
  [a3 doubleValue];
  v4 = (v3 + 100.0) / 65.0;

  return [NSNumber numberWithDouble:v4];
}

- (id)getCompiledModelForAccessPoints:(id)a3 fromBluePOITile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [NSMutableDictionary alloc];
  v9 = [v6 models];
  v50 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v51 = v6;
  v10 = [v6 models];
  v11 = [v10 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v67;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        v16 = [v15 identifier];
        [v50 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v12);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v5;
  v52 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v52)
  {
    v49 = *v63;
    do
    {
      v17 = 0;
      do
      {
        if (*v63 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v17;
        v18 = *(*(&v62 + 1) + 8 * v17);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v19 = [v51 hashedApToModelMapping];
        v20 = [v19 objectForKeyedSubscript:v18];

        v21 = [v20 countByEnumeratingWithState:&v58 objects:v75 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v59;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v59 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v58 + 1) + 8 * j);
              v26 = [v7 objectForKeyedSubscript:v25];

              if (v26)
              {
                v27 = [v7 objectForKeyedSubscript:v25];
                v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 integerValue] + 1);
                [v7 setObject:v28 forKeyedSubscript:v25];
              }

              else
              {
                [v7 setObject:&off_1000AB730 forKeyedSubscript:v25];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v58 objects:v75 count:16];
          }

          while (v22);
        }

        v17 = v53 + 1;
      }

      while ((v53 + 1) != v52);
      v52 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v52);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = v7;
  v30 = [v29 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v55;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v54 + 1) + 8 * k);
        if (v32)
        {
          v36 = [v29 objectForKeyedSubscript:v32];
          v37 = [v36 unsignedIntegerValue];
          v38 = [v29 objectForKeyedSubscript:v35];
          v39 = [v38 unsignedIntegerValue];

          if (v37 < v39)
          {
            v40 = v35;

            v32 = v40;
          }
        }

        else
        {
          v32 = v35;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v41 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v71 = v29;
      v72 = 2112;
      v73 = v32;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Model votes: %@, best match: %@", buf, 0x16u);
    }
  }

  if (v32 && ([v50 objectForKey:v32], v42 = objc_claimAutoreleasedReturnValue(), v42, v42))
  {
    v43 = [v50 objectForKey:v32];
  }

  else
  {
    v44 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      *buf = 138412290;
      v71 = v46;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%@, Invalid best match", buf, 0xCu);
    }

    v43 = 0;
  }

  return v43;
}

- (id)calibrateConfidence:(id)a3 targetMUID:(unint64_t)a4 bluePOITile:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = kRTBluePOITileModelCalibrationLowThresholdBeforeCalibrationApplePay;
  v10 = kRTBluePOITileModelCalibrationHighThresholdBeforeCalibrationApplePay;
  v11 = kRTBluePOITileModelCalibrationLowThresholdAfterCalibrationApplePay;
  v84 = kRTBluePOITileModelCalibrationHighThresholdAfterCalibrationApplePay;
  v12 = kRTBluePOITileModelCalibrationHighestScoreApplePay;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v13 = [v8 pointsOfInterest];
  v14 = [v13 countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v14)
  {
    v15 = v14;
    v80 = v11;
    v82 = v7;
    v16 = v10;
    v17 = *v90;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v90 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v89 + 1) + 8 * v18);
      if ([v19 muid] == a4)
      {
        break;
      }

      if (v15 == ++v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v89 objects:v100 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if ([v19 applePaySupport])
    {
LABEL_11:
      v11 = v80;
      v10 = v16;
      goto LABEL_13;
    }

    v20 = kRTBluePOITileModelCalibrationLowThresholdBeforeCalibrationNonApplePay;

    v10 = kRTBluePOITileModelCalibrationHighThresholdBeforeCalibrationNonApplePay;
    v11 = kRTBluePOITileModelCalibrationLowThresholdAfterCalibrationNonApplePay;

    v21 = kRTBluePOITileModelCalibrationHighThresholdAfterCalibrationNonApplePay;
    v22 = kRTBluePOITileModelCalibrationHighestScoreNonApplePay;
    v23 = v12;
    v12 = v22;

    v84 = v21;
    v9 = v20;
LABEL_13:
    v7 = v82;
  }

  v24 = [v8 modelCalibrationParameters];
  v25 = [v24 objectForKeyedSubscript:v9];

  if (v25)
  {
    v26 = [v8 modelCalibrationParameters];
    v27 = [v26 objectForKeyedSubscript:v9];
    [v27 doubleValue];
    v29 = v28;
  }

  else
  {
    v29 = 0.6;
  }

  v30 = [v8 modelCalibrationParameters];
  v31 = [v30 objectForKeyedSubscript:v10];

  if (v31)
  {
    v32 = [v8 modelCalibrationParameters];
    v33 = [v32 objectForKeyedSubscript:v10];
    [v33 doubleValue];
    v35 = v34;
  }

  else
  {
    v35 = 0.8;
  }

  v36 = [v8 modelCalibrationParameters];
  v37 = [v36 objectForKeyedSubscript:v11];

  if (v37)
  {
    v38 = [v8 modelCalibrationParameters];
    v39 = [v38 objectForKeyedSubscript:v11];
    [v39 doubleValue];
    v41 = v40;
  }

  else
  {
    v41 = 0.9;
  }

  v42 = [v8 modelCalibrationParameters];
  v43 = [v42 objectForKeyedSubscript:v84];

  if (v43)
  {
    v44 = [v8 modelCalibrationParameters];
    v45 = [v44 objectForKeyedSubscript:v84];
    [v45 doubleValue];
    v47 = v46;
  }

  else
  {
    v47 = 0.95;
  }

  v48 = [v8 modelCalibrationParameters];
  v49 = [v48 objectForKeyedSubscript:v12];

  if (v49)
  {
    v50 = [v8 modelCalibrationParameters];
    v51 = [v50 objectForKeyedSubscript:v12];
    [v51 doubleValue];
    v53 = v52;
  }

  else
  {
    v53 = 1.0;
  }

  if (v29 > v35)
  {
    goto LABEL_34;
  }

  if (v41 > v47)
  {
    goto LABEL_34;
  }

  if (v29 == 0.0)
  {
    goto LABEL_34;
  }

  v54 = [NSNumber numberWithUnsignedInteger:a4];
  v55 = [v7 objectForKeyedSubscript:v54];
  [v55 doubleValue];
  v57 = v56;

  if (v57 < 0.525)
  {
LABEL_34:
    v58 = v7;
    goto LABEL_63;
  }

  v79 = v8;
  if (v57 >= v29)
  {
    if (v57 >= v35)
    {
      v59 = v47 + (v53 - v47) * (v57 - v35) / (1.0 - v35);
    }

    else
    {
      v59 = v41 + (v47 - v41) * (v57 - v29) / (v35 - v29);
    }
  }

  else
  {
    v59 = v41 / v29 * v57;
  }

  v58 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v60 = v7;
  v61 = [v60 countByEnumeratingWithState:&v85 objects:v99 count:16];
  if (v61)
  {
    v62 = v61;
    v77 = v9;
    v78 = v10;
    v81 = v11;
    v83 = v7;
    v63 = *v86;
    v64 = 1.0;
    do
    {
      for (i = 0; i != v62; i = i + 1)
      {
        if (*v86 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v66 = *(*(&v85 + 1) + 8 * i);
        v67 = [v60 objectForKeyedSubscript:{v66, v77, v78}];
        [v67 doubleValue];
        v69 = v68;

        v70 = v59;
        if ([v66 unsignedIntegerValue] != a4)
        {
          if (v59 >= v57)
          {
            v70 = (1.0 - v59) * v69 / (1.0 - v57);
          }

          else
          {
            v70 = v59 * v69 / v57;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v71 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            v73 = [v66 integerValue];
            *buf = 134218496;
            v94 = *&v73;
            v95 = 2048;
            v96 = v69;
            v97 = 2048;
            v98 = v70;
            _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "muid: %lu, original confidence: %f, calibrated confidence: %f", buf, 0x20u);
          }
        }

        v72 = [NSNumber numberWithDouble:v70];
        [v58 setObject:v72 forKeyedSubscript:v66];

        v64 = v64 - v70;
      }

      v62 = [v60 countByEnumeratingWithState:&v85 objects:v99 count:16];
    }

    while (v62);

    v11 = v81;
    v7 = v83;
    v9 = v77;
    v10 = v78;
    if (v64 <= 0.0)
    {
      v8 = v79;
      goto LABEL_63;
    }
  }

  else
  {

    v64 = 1.0;
  }

  v8 = v79;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v74 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v94 = v64;
      _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "muid: 0, original confidence: 0.0, calibrated confidence: %f", buf, 0xCu);
    }
  }

  v75 = [NSNumber numberWithDouble:v64];
  [v58 setObject:v75 forKeyedSubscript:&off_1000AB748];

LABEL_63:

  return v58;
}

- (id)categoryFilteredLocalBluePOIResultWithPOIConfidences:(id)a3 aoiConfidences:(id)a4 distanceToNearestAOILowerBound:(id)a5 referenceLocation:(id)a6 queryTime:(id)a7 bluePOITile:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v14)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Invalid parameter not satisfying: poiConfidences";
LABEL_43:
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v48, buf, 2u);
    goto LABEL_44;
  }

  if (!v15)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Invalid parameter not satisfying: aoiConfidences";
    goto LABEL_43;
  }

  if (!v17)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Invalid parameter not satisfying: referenceLocation";
    goto LABEL_43;
  }

  if (!v18)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Invalid parameter not satisfying: queryTime";
    goto LABEL_43;
  }

  if (!v19)
  {
    v21 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v48 = "Invalid parameter not satisfying: bluePOITile";
      goto LABEL_43;
    }

LABEL_44:
    v47 = 0;
    goto LABEL_45;
  }

  aSelector = a2;
  v51 = v18;
  v52 = v17;
  v53 = v16;
  v54 = v15;
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v23 = [v20 pointsOfInterest];
  v24 = [v23 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v63;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v63 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v62 + 1) + 8 * i);
        v29 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v28 muid]);
        [v22 addObject:v29];

        if ([v28 filtered])
        {
          v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v28 muid]);
          [v21 addObject:v30];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v25);
  }

  v50 = v20;

  v56 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v31 = v14;
  v57 = [v31 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v57)
  {
    v32 = *v59;
    do
    {
      for (j = 0; j != v57; j = j + 1)
      {
        if (*v59 != v32)
        {
          objc_enumerationMutation(v31);
        }

        v34 = *(*(&v58 + 1) + 8 * j);
        if ([v21 containsObject:v34, v50])
        {
          v35 = [v31 objectForKeyedSubscript:v34];
          [v35 doubleValue];
          v37 = v36;

          v38 = [v56 objectForKeyedSubscript:&off_1000AB748];
          [v38 doubleValue];
          v40 = v39;

          if (v37 >= v40)
          {
            v41 = v37;
          }

          else
          {
            v41 = v40;
          }

          v42 = [NSNumber numberWithDouble:v41];
          v43 = v56;
          v44 = v42;
          v45 = &off_1000AB748;
          goto LABEL_27;
        }

        if ([v22 containsObject:v34])
        {
          v42 = [v31 objectForKeyedSubscript:v34];
          v43 = v56;
          v44 = v42;
          v45 = v34;
LABEL_27:
          [v43 setObject:v44 forKeyedSubscript:v45];
          goto LABEL_30;
        }

        v42 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          v46 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v67 = v46;
          v68 = 2112;
          v69 = v34;
          _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "%@, POI not found in POI metadata, muid, %@", buf, 0x16u);
        }

LABEL_30:
      }

      v57 = [v31 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v57);
  }

  v16 = v53;
  v15 = v54;
  v18 = v51;
  v17 = v52;
  v47 = [[RTLocalBluePOIResult alloc] initWithPOIConfidences:v56 aoiConfidences:v54 distanceToNearestAOILowerBound:v53 referenceLocation:v52 queryTime:v51];

  v20 = v50;
LABEL_45:

  return v47;
}

- (void)compileCoreMLModelAtURL:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [MLModel compileModelAtURL:v6 error:&v12];
  v9 = v12;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@, model URL, %@, compiled model URL, %@, error, %@", buf, 0x2Au);
    }
  }

  v7[2](v7, v8, v9);
}

- (void)fetchBluePOIMetadataWithHandler:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100020E24;
  v11[3] = &unk_1000A8BE0;
  v14 = v5;
  v15 = a2;
  v12 = [[RTBluePOITileParser alloc] initWithFileManager:v6 wkbParser:v7];
  v13 = v6;
  v8 = v6;
  v9 = v12;
  v10 = v5;
  [(RTLocalBluePOIService *)self downloadBluePOIMetadataWithHandler:v11];
}

- (void)fetchBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = [[RTBluePOITileParser alloc] initWithFileManager:v9 wkbParser:v10];
  v12 = objc_opt_new();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100001200;
  v25[4] = sub_100021300;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100021308;
  v17[3] = &unk_1000A8C08;
  v23 = v25;
  v24 = a2;
  v13 = v11;
  v18 = v13;
  v19 = self;
  v14 = v9;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v16 = v8;
  v22 = v16;
  [(RTLocalBluePOIService *)self downloadBluePOITilesForDownloadKeys:v7 handler:v17];

  _Block_object_dispose(v25, 8);
}

- (void)loadPreinstalledTileAtPath:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [RTBluePOITileParser alloc];
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [(RTBluePOITileParser *)v10 initWithFileManager:v11 wkbParser:v12];

  v22 = 0;
  v14 = [(RTBluePOITileParser *)v13 loadProtobufTileAtPath:v7 cacheInfo:0 outError:&v22];
  v15 = v22;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v16 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138413059;
      v24 = v17;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v15;
      v29 = 2117;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@, tile path, %@, error, %@, tile, %{sensitive}@", buf, 0x2Au);
    }
  }

  v18 = 0;
  if (!v15 && v14)
  {
    v21 = 0;
    v18 = [(RTLocalBluePOIService *)self processTile:v14 fileManager:v9 error:&v21];
    v15 = v21;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v19 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412803;
      v24 = v20;
      v25 = 2117;
      v26 = v18;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@, processed Tile, %{sensitive}@, error, %@", buf, 0x20u);
    }
  }

  v8[2](v8, v18, v15);
}

- (id)processTile:(id)a3 fileManager:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v85 = v7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = sub_1000011A0(&qword_1000B2970);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = [v6 models];
      *buf = 138412546;
      v112 = v9;
      v113 = 2048;
      v114 = [v10 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@, CoreML model count, %lu", buf, 0x16u);

      v7 = v85;
    }
  }

  v84 = [NSFileManager pathInCacheDirectory:@"BluePOIModels"];
  v11 = [NSMutableSet alloc];
  v12 = [v6 models];
  v77 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = [v6 models];
  v80 = [obj countByEnumeratingWithState:&v98 objects:v119 count:16];
  if (v80)
  {
    v86 = 0;
    v82 = *v99;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v99 != v82)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v98 + 1) + 8 * v13);
      v15 = [NSURL alloc];
      v16 = [v14 url];
      v17 = [v15 initFileURLWithPath:v16];

      v97 = 0;
      v18 = [MLModel compileModelAtURL:v17 error:&v97];
      v19 = v97;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v20 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = NSStringFromSelector(a2);
          *buf = 138413058;
          v112 = v21;
          v113 = 2112;
          v114 = v17;
          v115 = 2112;
          v116 = *&v18;
          v117 = 2112;
          v118 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@, step 1: compile CoreML model, coremlModelURL, %@, tempCompiledModelURL, %@, error, %@", buf, 0x2Au);
        }
      }

      if (v19 || ([v18 path], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        v83 = v6;
        v65 = [NSError alloc];
        v109 = NSLocalizedDescriptionKey;
        v66 = [NSString stringWithFormat:@"failed to compile model"];
        v110 = v66;
        v67 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        v68 = [v65 initWithDomain:@"RTBluePOIErrorDomain" code:109 userInfo:v67];

        if (a5)
        {
          v69 = v68;
          v70 = 0;
          *a5 = v68;
        }

        else
        {
          v70 = 0;
        }

        goto LABEL_63;
      }

      v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 geoTileKey]);
      v24 = [NSString stringWithFormat:@"%@-%lu.mlmodelc", v23, v86];
      v25 = [v84 stringByAppendingPathComponent:v24];

      if (![v7 fileExistsAtPath:v25 isDirectory:0])
      {
        goto LABEL_23;
      }

      v96 = 0;
      [v7 removeItemAtPath:v25 error:&v96];
      v26 = v96;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v27 = sub_1000011A0(&qword_1000B2970);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = NSStringFromSelector(a2);
          *buf = 138412802;
          v112 = v28;
          v113 = 2112;
          v114 = v25;
          v115 = 2112;
          v116 = *&v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@, remove existing compiled model, %@, error, %@", buf, 0x20u);
        }
      }

      if (v26)
      {
        v29 = [NSError alloc];
        v107 = NSLocalizedDescriptionKey;
        v30 = [NSString stringWithFormat:@"failed to delete existing compiled model"];
        v108 = v30;
        v31 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v32 = [v29 initWithDomain:@"RTBluePOIErrorDomain" code:100 userInfo:v31];
      }

      else
      {
LABEL_23:
        v33 = [v18 path];
        v95 = 0;
        [v7 moveItemAtPath:v33 toPath:v25 error:&v95];
        v34 = v95;

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v35 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = NSStringFromSelector(a2);
            v37 = [v18 path];
            *buf = 138413058;
            v112 = v36;
            v113 = 2112;
            v114 = v37;
            v115 = 2112;
            v116 = *&v25;
            v117 = 2112;
            v118 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%@, step 2: save compiled model, before, %@, after, %@, error, %@", buf, 0x2Au);

            v7 = v85;
          }
        }

        if (v34)
        {
          v38 = [NSError alloc];
          v105 = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithFormat:@"failed to save compiled model"];
          v106 = v39;
          v40 = &v106;
          v41 = &v105;
        }

        else
        {
          v42 = [v14 url];
          v94 = 0;
          [v7 removeItemAtPath:v42 error:&v94];
          v34 = v94;

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v43 = sub_1000011A0(&qword_1000B2970);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = NSStringFromSelector(a2);
              v45 = [v14 url];
              *buf = 138412802;
              v112 = v44;
              v113 = 2112;
              v114 = v45;
              v115 = 2112;
              v116 = *&v34;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@, step 3: delete CoreML model, %@, error, %@", buf, 0x20u);
            }
          }

          if (!v34)
          {
            v49 = [RTBluePOIModel alloc];
            v50 = [v14 identifier];
            v51 = [v14 featureToHashedApMapping];
            v52 = [v49 initWithIdentifier:v50 featureToHashedApMapping:v51 url:v25];

            if (v52)
            {
              [v77 addObject:v52];
            }

            ++v86;

            v32 = 0;
            v48 = 1;
            goto LABEL_42;
          }

          v38 = [NSError alloc];
          v103 = NSLocalizedDescriptionKey;
          v39 = [NSString stringWithFormat:@"failed to delete the CoreML model"];
          v104 = v39;
          v40 = &v104;
          v41 = &v103;
        }

        v46 = [NSDictionary dictionaryWithObjects:v40 forKeys:v41 count:1];
        v32 = [v38 initWithDomain:@"RTBluePOIErrorDomain" code:100 userInfo:v46];
      }

      if (a5)
      {
        v47 = v32;
        v48 = 0;
        *a5 = v32;
      }

      else
      {
        v48 = 0;
      }

LABEL_42:
      v7 = v85;

      if (!v48)
      {
        v70 = 0;
        goto LABEL_64;
      }

      if (v80 == ++v13)
      {
        v80 = [obj countByEnumeratingWithState:&v98 objects:v119 count:16];
        if (v80)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v83 = v6;

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v53 = v77;
  v54 = [v53 countByEnumeratingWithState:&v90 objects:v102 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v91;
    v57 = 0.0;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v91 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v59 = *(*(&v90 + 1) + 8 * i);
        v60 = [v59 url];
        v61 = vcvtd_n_f64_u64([NSFileManager directorySizeAtPath:v60], 0xAuLL);

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v62 = sub_1000011A0(&qword_1000B2970);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = NSStringFromSelector(a2);
            v64 = [v59 url];
            *buf = 138412802;
            v112 = v63;
            v113 = 2112;
            v114 = v64;
            v115 = 2048;
            v116 = v61;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "%@, compiledModelURL, %@, size, %.1f (kB)", buf, 0x20u);
          }
        }

        v57 = v57 + v61;
      }

      v55 = [v53 countByEnumeratingWithState:&v90 objects:v102 count:16];
    }

    while (v55);
  }

  else
  {
    v57 = 0.0;
  }

  aSelectora = [RTBluePOITile alloc];
  obj = [v83 identifier];
  v68 = [v83 apToModelMapping];
  v17 = [v83 date];
  v18 = [v83 downloadKey];
  v87 = [v83 geoCacheInfo];
  v81 = [v83 geoTileKey];
  v71 = [v83 hashedApToModelMapping];
  v72 = [v83 hashSalt];
  v73 = [v83 modelCalibrationParameters];
  v74 = [v83 modelURLs];
  v75 = [v83 pointsOfInterest];
  v70 = [aSelectora initWithIdentifier:obj apToModelMapping:v68 date:v17 downloadKey:v18 geoCacheInfo:v87 geoTileKey:v81 hashedApToModelMapping:v57 hashSalt:v71 modelCalibrationParameters:v72 models:v73 modelURLs:v53 pointsOfInterest:v74 singlePOIMuid:v75 size:{objc_msgSend(v83, "singlePOIMuid")}];

LABEL_63:
  v6 = v83;
  v7 = v85;
LABEL_64:

  return v70;
}

- (void)downloadBluePOITilesForDownloadKeys:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(GEOExternalTileLoader);
  [(RTLocalBluePOIService *)self downloadBluePOITilesForDownloadKeys:v7 tileLoader:v8 handler:v6];
}

- (void)downloadBluePOITilesForDownloadKeys:(id)a3 tileLoader:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v13)
  {
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v32 = 0uLL;
        v32 = *[v16 bytes];
        v17 = [[GEOExternalTileRequest alloc] initWithExternalKey:&v32];
        if (v17)
        {
          [v11 addObject:v17];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = objc_opt_new();
  *&v32 = 0;
  *(&v32 + 1) = &v32;
  v33 = 0x3032000000;
  v34 = sub_100001200;
  v35 = sub_100021300;
  v36 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100022B1C;
  v24[3] = &unk_1000A8C30;
  v26 = &v32;
  v27 = a2;
  v20 = v19;
  v25 = v20;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002305C;
  v22[3] = &unk_1000A8B40;
  v21 = v18;
  v23 = v21;
  [v9 fetchTiles:v11 result:v24 finished:v22];
  dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  v10[2](v10, v20, *(*(&v32 + 1) + 40));

  _Block_object_dispose(&v32, 8);
}

- (void)downloadBluePOIMetadataWithHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(GEOExternalTileLoader);
  [(RTLocalBluePOIService *)self downloadBluePOIMetadataWithTileLoader:v5 handler:v4];
}

- (void)downloadBluePOIMetadataWithTileLoader:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[GEOExternalTileRequest alloc] initWithType:2 dataFormatVersion:1 coordinate:{0.0, 0.0}];
  if (v8)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100001200;
    v30 = sub_100021300;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100001200;
    v24 = sub_100021300;
    v25 = 0;
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000233A4;
    v15[3] = &unk_1000A8C58;
    v18 = &v26;
    v19 = a2;
    v17 = &v20;
    v10 = v9;
    v16 = v10;
    [v6 fetchTile:v8 result:v15];
    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v7[2](v7, v27[5], v21[5]);

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v11 = [NSError alloc];
    v32 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithFormat:@"invalid tile download request"];
    v33 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v11 initWithDomain:RTErrorDomain code:7 userInfo:v13];

    v7[2](v7, 0, v14);
  }
}

@end