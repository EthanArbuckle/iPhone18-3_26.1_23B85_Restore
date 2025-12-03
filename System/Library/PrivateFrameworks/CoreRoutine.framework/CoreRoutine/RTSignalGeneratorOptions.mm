@interface RTSignalGeneratorOptions
+ (BOOL)visitsOverlapping:(id)overlapping;
+ (id)getVisitsFromVisitsDescriptionData:(id)data;
+ (id)visitsDescriptionDataAtPath:(id)path;
- (RTSignalGeneratorOptions)initWithCoder:(id)coder;
- (RTSignalGeneratorOptions)initWithStartLocation:(id)location endLocation:(id)endLocation expectedVisits:(id)visits;
- (RTSignalGeneratorOptions)initWithVisitsDescriptionData:(id)data;
- (RTSignalGeneratorOptions)initWithVisitsDescriptionPListPath:(id)path;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSignalGeneratorOptions

+ (id)visitsDescriptionDataAtPath:(id)path
{
  v102 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:pathCopy];

  if (v4)
  {
    oslog = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:pathCopy];
    if (oslog)
    {
      date = [MEMORY[0x1E695DF00] date];
      v6 = [oslog objectForKey:@"Locations"];
      v7 = [v6 mutableCopy];

      v64 = [oslog objectForKey:@"WeeklyVisits"];
      v61 = [v64 count];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v9 = [currentCalendar components:764 fromDate:date];

      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke;
      v90[3] = &unk_1E80B4A68;
      v10 = v9;
      v91 = v10;
      v94 = v61;
      v11 = date;
      v92 = v11;
      v12 = v7;
      v93 = v12;
      [v64 enumerateObjectsUsingBlock:v90];
      v13 = objc_opt_new();
      v60 = [oslog objectForKey:@"DailyVisits"];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_89;
      v85[3] = &unk_1E80B4AB8;
      v55 = v10;
      v86 = v55;
      v57 = v11;
      v87 = v57;
      v63 = v13;
      v88 = v63;
      v14 = v12;
      v89 = v14;
      [v60 enumerateObjectsUsingBlock:v85];
      if ([objc_opt_class() visitsOverlapping:v63])
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Error: found overlapping customized visits", &buf, 2u);
        }
      }

      else
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v15 = v63;
        v18 = [v15 countByEnumeratingWithState:&v81 objects:v101 count:16, v55, v57];
        if (v18)
        {
          v19 = *v82;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v82 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v81 + 1) + 8 * i);
              v22 = [v14 objectForKeyedSubscript:v21];
              v23 = [v22 objectForKey:@"visits"];
              v24 = v23 == 0;

              if (v24)
              {
                v25 = [v14 objectForKeyedSubscript:v21];
                v26 = objc_opt_new();
                [v25 setObject:v26 forKey:@"visits"];
              }

              v27 = [v14 objectForKeyedSubscript:v21];
              v28 = [v27 objectForKey:@"visits"];
              v29 = [v15 objectForKey:v21];
              [v28 addObjectsFromArray:v29];
            }

            v18 = [v15 countByEnumeratingWithState:&v81 objects:v101 count:16];
          }

          while (v18);
        }
      }

      v59 = [oslog objectForKey:@"CustomizedVisits"];
      v30 = objc_opt_new();
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_91;
      v77[3] = &unk_1E80B4A40;
      v62 = v30;
      v78 = v62;
      v58 = v57;
      v79 = v58;
      v31 = v14;
      v80 = v31;
      [v59 enumerateObjectsUsingBlock:v77];
      if ([objc_opt_class() visitsOverlapping:v62])
      {
        v32 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1BF1C4000, v32, OS_LOG_TYPE_ERROR, "Error: found overlapping customized visits", &buf, 2u);
        }
      }

      else
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v32 = v62;
        v33 = [v32 countByEnumeratingWithState:&v73 objects:v100 count:16];
        if (v33)
        {
          v34 = *v74;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v74 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v73 + 1) + 8 * j);
              v37 = [v31 objectForKeyedSubscript:{v36, v55, v58}];
              v38 = [v37 objectForKey:@"visits"];
              v39 = v38 == 0;

              if (v39)
              {
                v40 = [v31 objectForKeyedSubscript:v36];
                v41 = objc_opt_new();
                [v40 setObject:v41 forKey:@"visits"];
              }

              v42 = [v31 objectForKeyedSubscript:v36];
              v43 = [v42 objectForKey:@"visits"];
              v44 = [v32 objectForKey:v36];
              [v43 addObjectsFromArray:v44];
            }

            v33 = [v32 countByEnumeratingWithState:&v73 objects:v100 count:16];
          }

          while (v33);
        }
      }

      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v16 setObject:v31 forKey:@"Locations"];
      v45 = [oslog objectForKeyedSubscript:@"LocationFrequency"];

      if (v45)
      {
        v46 = [oslog objectForKeyedSubscript:@"LocationFrequency"];
        [v16 setObject:v46 forKey:@"LocationFrequency"];
      }

      v47 = [oslog objectForKey:@"WeeklyActivities", v55];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v96 = 0x3032000000;
      v97 = __Block_byref_object_copy__0;
      v98 = __Block_byref_object_dispose__0;
      v99 = 0;
      v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_95;
      v67[3] = &unk_1E80B4B08;
      v49 = v56;
      v68 = v49;
      v72 = v61;
      v17 = v58;
      v69 = v17;
      p_buf = &buf;
      v50 = v48;
      v70 = v50;
      [v47 enumerateObjectsUsingBlock:v67];
      if (*(*(&buf + 1) + 40))
      {
        v51 = [RTMotionActivity alloc];
        v52 = [(RTMotionActivity *)v51 initWithType:0 confidence:3 startDate:*(*(&buf + 1) + 40)];
        [v50 addObject:v52];
      }

      [v16 setObject:v50 forKey:@"MotionActivities"];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = pathCopy;
        _os_log_error_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_ERROR, "issue creating dictionary with contents of file, %@", &buf, 0xCu);
      }

      v16 = 0;
    }
  }

  else
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = pathCopy;
      _os_log_error_impl(&dword_1BF1C4000, oslog, OS_LOG_TYPE_ERROR, "file doesn't exist at path, %@", &buf, 0xCu);
    }

    v16 = 0;
  }

  v53 = *MEMORY[0x1E69E9840];

  return v16;
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:{-7 * (*(a1 + 56) + ~a3) - objc_msgSend(*(a1 + 32), "weekday") + 2}];
  [v6 setHour:{-objc_msgSend(*(a1 + 32), "hour")}];
  [v6 setMinute:{-objc_msgSend(*(a1 + 32), "minute")}];
  [v6 setSecond:{-objc_msgSend(*(a1 + 32), "second")}];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:*(a1 + 40) options:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2;
  v10[3] = &unk_1E80B4A40;
  v11 = v8;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v9 = v8;
  [v5 enumerateObjectsUsingBlock:v10];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Location"];
  v5 = [v3 objectForKeyedSubscript:@"Entry"];
  v6 = [v3 objectForKeyedSubscript:@"Exit"];
  v7 = [v3 objectForKeyedSubscript:@"Confidence"];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 components:240 fromDate:v5];

  [v11 setDay:{objc_msgSend(v11, "day") - 1}];
  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  v65 = v6;
  v13 = [v12 components:240 fromDate:v6];

  [v13 setDay:{objc_msgSend(v13, "day") - 1}];
  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [v14 dateByAddingComponents:v11 toDate:*(a1 + 32) options:0];

  v16 = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = [v16 dateByAddingComponents:v13 toDate:*(a1 + 32) options:0];

  if ([v15 compare:*(a1 + 40)] == 1 || objc_msgSend(v17, "compare:", *(a1 + 40)) == 1)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v57 = [MEMORY[0x1E695DF00] dateFormatter];
      v58 = [v57 stringFromDate:*(a1 + 40)];
      *buf = 138412290;
      v67 = v58;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "adjusted dates are newer than current date, %@", buf, 0xCu);
    }
  }

  else
  {
    v20 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v21 = [v20 objectForKey:@"visits"];

    if (!v21)
    {
      v22 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v23 = objc_opt_new();
      [v22 setObject:v23 forKey:@"visits"];
    }

    if ([v15 compare:v17] == 1)
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v62 = [MEMORY[0x1E695DF00] dateFormatterForLogging];
        v61 = [v62 stringFromDate:v15];
        v59 = [MEMORY[0x1E695DF00] dateFormatterForLogging];
        [v59 stringFromDate:v17];
        *buf = 138412546;
        v67 = v61;
        v69 = v68 = 2112;
        v60 = v69;
        _os_log_error_impl(&dword_1BF1C4000, v24, OS_LOG_TYPE_ERROR, "ERROR: adjusted entry, %@, postdates adjusted exit, %@", buf, 0x16u);
      }
    }

    else
    {
      v25 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v26 = [v25 objectForKeyedSubscript:@"Latitude"];
      [v26 doubleValue];
      v28 = v27;

      v29 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v30 = [v29 objectForKeyedSubscript:@"Longitude"];
      [v30 doubleValue];
      v32 = v31;

      v33 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v34 = [v33 objectForKeyedSubscript:@"HorizontalUncertainty"];
      [v34 doubleValue];
      v36 = v35;

      v37 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v38 = [v37 objectForKeyedSubscript:@"Altitude"];
      [v38 doubleValue];
      v40 = v39;

      v41 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v42 = [v41 objectForKeyedSubscript:@"VerticalUncertainty"];
      [v42 doubleValue];
      v44 = v43;

      v45 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v46 = [v45 objectForKey:@"sourceAccuracy"];

      v64 = v5;
      if (v46)
      {
        v47 = [*(a1 + 48) objectForKeyedSubscript:v4];
        v48 = [v47 objectForKey:@"sourceAccuracy"];
        v49 = [v48 unsignedIntValue];
      }

      else
      {
        v49 = 1;
      }

      v50 = v4;
      v63 = v4;
      v51 = [[RTLocation alloc] initWithLatitude:0 longitude:0 horizontalUncertainty:v49 altitude:v28 verticalUncertainty:v32 date:v36 referenceFrame:v40 speed:v44 sourceAccuracy:-1.0];
      v52 = [*(a1 + 48) objectForKeyedSubscript:v50];
      v53 = [v52 objectForKey:@"visits"];
      v54 = [RTLocationOfInterestVisit alloc];
      v55 = [MEMORY[0x1E696AFB0] UUID];
      v56 = [(RTLocationOfInterestVisit *)v54 initWithIdentifier:v55 entry:v15 exit:v17 location:v51 locationOfInterestConfidence:0 locationOfInterestSource:v9];
      [v53 addObject:v56];

      v4 = v63;
      v5 = v64;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_89(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:-a3];
  [v6 setHour:{-objc_msgSend(a1[4], "hour")}];
  [v6 setMinute:{-objc_msgSend(a1[4], "minute")}];
  [v6 setSecond:{-objc_msgSend(a1[4], "second")}];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:a1[5] options:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2_90;
  v10[3] = &unk_1E80B4A90;
  v11 = a1[6];
  v12 = v8;
  v13 = a1[5];
  v14 = a1[7];
  v9 = v8;
  [v5 enumerateObjectsUsingBlock:v10];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2_90(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Location"];
  v5 = [*(a1 + 32) objectForKey:v4];

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_new();
    [v6 setObject:v7 forKey:v4];
  }

  v8 = [v3 objectForKeyedSubscript:@"Entry"];
  v9 = [v3 objectForKeyedSubscript:@"Exit"];

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 components:240 fromDate:v8];

  if ([v11 month] != 1 && objc_msgSend(v11, "day") != 1 && objc_msgSend(v11, "year") != 2001)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v60 = [MEMORY[0x1E695DF00] dateFormatter];
      v61 = [v60 stringFromDate:v8];
      *buf = 138412290;
      v65 = v61;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "entry date is not Jan 1 2001 and will result in unexpected behavior, %@", buf, 0xCu);
    }
  }

  [v11 setDay:{objc_msgSend(v11, "day") - 1}];
  v13 = [MEMORY[0x1E695DEE8] currentCalendar];
  v14 = [v13 components:240 fromDate:v9];

  [v14 setDay:{objc_msgSend(v14, "day") - 1}];
  v15 = [MEMORY[0x1E695DEE8] currentCalendar];
  v16 = [v15 dateByAddingComponents:v11 toDate:*(a1 + 40) options:0];

  v17 = [MEMORY[0x1E695DEE8] currentCalendar];
  v18 = [v17 dateByAddingComponents:v14 toDate:*(a1 + 40) options:0];

  if ([v16 compare:*(a1 + 48)] == 1 || objc_msgSend(v18, "compare:", *(a1 + 48)) == 1)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E695DF00] dateFormatter];
      v21 = v20 = v8;
      v22 = [v21 stringFromDate:*(a1 + 48)];
      *buf = 138412290;
      v65 = v22;
      _os_log_error_impl(&dword_1BF1C4000, &v19->super, OS_LOG_TYPE_ERROR, "adjusted dates are newer than current date, %@", buf, 0xCu);

      v8 = v20;
    }
  }

  else
  {
    v63 = v8;
    v23 = [*(a1 + 56) objectForKeyedSubscript:v4];
    v24 = [v23 objectForKey:@"visits"];

    if (!v24)
    {
      v25 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v26 = objc_opt_new();
      [v25 setObject:v26 forKey:@"visits"];
    }

    if ([v16 compare:v18] == 1)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
      {
        v62 = [MEMORY[0x1E695DF00] dateFormatter];
        v27 = [v62 stringFromDate:v16];
        v28 = [MEMORY[0x1E695DF00] dateFormatter];
        v29 = [v28 stringFromDate:v18];
        *buf = 138412546;
        v65 = v27;
        v66 = 2112;
        v67 = v29;
        _os_log_error_impl(&dword_1BF1C4000, &v19->super, OS_LOG_TYPE_ERROR, "ERROR: adjusted entry, %@, postdates adjusted exit, %@", buf, 0x16u);
      }
    }

    else
    {
      v30 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v31 = [v30 objectForKeyedSubscript:@"Latitude"];
      [v31 doubleValue];
      v33 = v32;

      v34 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v35 = [v34 objectForKeyedSubscript:@"Longitude"];
      [v35 doubleValue];
      v37 = v36;

      v38 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v39 = [v38 objectForKeyedSubscript:@"HorizontalUncertainty"];
      [v39 doubleValue];
      v41 = v40;

      v42 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v43 = [v42 objectForKeyedSubscript:@"Altitude"];
      [v43 doubleValue];
      v45 = v44;

      v46 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v47 = [v46 objectForKeyedSubscript:@"VerticalUncertainty"];
      [v47 doubleValue];
      v49 = v48;

      v50 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v51 = [v50 objectForKey:@"sourceAccuracy"];

      if (v51)
      {
        v52 = [*(a1 + 56) objectForKeyedSubscript:v4];
        v53 = [v52 objectForKey:@"sourceAccuracy"];
        v54 = [v53 unsignedIntValue];
      }

      else
      {
        v54 = 1;
      }

      v19 = [[RTLocation alloc] initWithLatitude:0 longitude:0 horizontalUncertainty:v54 altitude:v33 verticalUncertainty:v37 date:v41 referenceFrame:v45 speed:v49 sourceAccuracy:-1.0];
      v55 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v56 = [RTLocationOfInterestVisit alloc];
      v57 = [MEMORY[0x1E696AFB0] UUID];
      v58 = [(RTLocationOfInterestVisit *)v56 initWithIdentifier:v57 entry:v16 exit:v18 location:v19 locationOfInterestConfidence:0 locationOfInterestSource:1.0];
      [v55 addObject:v58];
    }

    v8 = v63;
  }

  v59 = *MEMORY[0x1E69E9840];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_91(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Location"];
  v5 = [*(a1 + 32) objectForKey:v4];

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_new();
    [v6 setObject:v7 forKey:v4];
  }

  v8 = [v3 objectForKeyedSubscript:@"Entry"];
  v9 = [v3 objectForKeyedSubscript:@"Exit"];

  if ([v8 compare:*(a1 + 40)] == 1 || objc_msgSend(v9, "compare:", *(a1 + 40)) == 1)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (!os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      goto LABEL_7;
    }

    v42 = [MEMORY[0x1E695DF00] dateFormatter];
    v38 = [v42 stringFromDate:*(a1 + 40)];
    v43 = [MEMORY[0x1E695DF00] dateFormatter];
    v40 = [v43 stringFromDate:v8];
    v44 = [MEMORY[0x1E695DF00] dateFormatter];
    v45 = [v44 stringFromDate:v9];
    v50 = 138412802;
    v51 = v38;
    v52 = 2112;
    v53 = v40;
    v54 = 2112;
    v55 = v45;
    _os_log_error_impl(&dword_1BF1C4000, &v10->super, OS_LOG_TYPE_ERROR, "visit entry/exit dates are newer than current date, %@, visit entry, %@, exit, %@", &v50, 0x20u);

LABEL_17:
    goto LABEL_6;
  }

  if ([v8 compare:v9] != 1)
  {
    v13 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v14 = [v13 objectForKeyedSubscript:@"Latitude"];
    [v14 doubleValue];
    v16 = v15;

    v17 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v18 = [v17 objectForKeyedSubscript:@"Longitude"];
    [v18 doubleValue];
    v20 = v19;

    v21 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v22 = [v21 objectForKeyedSubscript:@"HorizontalUncertainty"];
    [v22 doubleValue];
    v24 = v23;

    v25 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v26 = [v25 objectForKeyedSubscript:@"Altitude"];
    [v26 doubleValue];
    v28 = v27;

    v29 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v30 = [v29 objectForKeyedSubscript:@"VerticalUncertainty"];
    [v30 doubleValue];
    v32 = v31;

    v33 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v34 = [v33 objectForKey:@"sourceAccuracy"];

    if (v34)
    {
      v35 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v36 = [v35 objectForKey:@"sourceAccuracy"];
      v37 = [v36 unsignedIntValue];
    }

    else
    {
      v37 = 1;
    }

    v10 = [[RTLocation alloc] initWithLatitude:0 longitude:0 horizontalUncertainty:v37 altitude:v16 verticalUncertainty:v20 date:v24 referenceFrame:v28 speed:v32 sourceAccuracy:-1.0];
    v38 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v39 = [RTLocationOfInterestVisit alloc];
    v40 = [MEMORY[0x1E696AFB0] UUID];
    v41 = [(RTLocationOfInterestVisit *)v39 initWithIdentifier:v40 entry:v8 exit:v9 location:v10 locationOfInterestConfidence:0 locationOfInterestSource:1.0];
    [v38 addObject:v41];

    goto LABEL_17;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v46 = [MEMORY[0x1E695DF00] dateFormatter];
    v47 = [v46 stringFromDate:v8];
    v48 = [MEMORY[0x1E695DF00] dateFormatter];
    v49 = [v48 stringFromDate:v9];
    v50 = 138412546;
    v51 = v47;
    v52 = 2112;
    v53 = v49;
    _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "ERROR: entry, %@, postdates exit, %@", &v50, 0x16u);
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_95(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:{-7 * (*(a1 + 64) + ~a3) - objc_msgSend(*(a1 + 32), "weekday") + 2}];
  [v6 setHour:{-objc_msgSend(*(a1 + 32), "hour")}];
  [v6 setMinute:{-objc_msgSend(*(a1 + 32), "minute")}];
  [v6 setSecond:{-objc_msgSend(*(a1 + 32), "second")}];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:*(a1 + 40) options:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2_96;
  v12[3] = &unk_1E80B4AE0;
  v13 = v8;
  v14 = *(a1 + 40);
  v16 = a3;
  v11 = *(a1 + 48);
  v9 = v11;
  v15 = v11;
  v10 = v8;
  [v5 enumerateObjectsUsingBlock:v12];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2_96(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Mode of Transportation"];
  v31 = [RTMotionActivity motionActivityTypeFromString:v4];

  v5 = [v3 objectForKeyedSubscript:@"Confidence"];
  v30 = [RTMotionActivity motionActivityConfidenceFromString:v5];

  v6 = [v3 objectForKeyedSubscript:@"Start"];
  v7 = [v3 objectForKeyedSubscript:@"End"];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 components:240 fromDate:v6];

  [v9 setDay:{objc_msgSend(v9, "day") - 1}];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 components:240 fromDate:v7];

  [v11 setDay:{objc_msgSend(v11, "day") - 1}];
  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [v12 dateByAddingComponents:v9 toDate:*(a1 + 32) options:0];

  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [v14 dateByAddingComponents:v11 toDate:*(a1 + 32) options:0];

  if ([v13 compare:*(a1 + 40)] == 1 || objc_msgSend(v15, "compare:", *(a1 + 40)) == 1)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E695DF00] dateFormatter];
      v23 = [v22 stringFromDate:*(a1 + 40)];
      *buf = 138412290;
      v34 = v23;
      _os_log_error_impl(&dword_1BF1C4000, &v16->super, OS_LOG_TYPE_ERROR, "adjusted dates are newer than current date, %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if ([v13 compare:v15] != 1)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
    v27 = *(a1 + 64);
    v28 = MEMORY[0x1E696AEC0];
    v29 = [RTMotionActivity motionActivityTypeToString:v31];
    v19 = [RTMotionActivity motionActivityConfidenceToString:v30];
    v20 = [v28 stringWithFormat:@"index %d (day), activity type %@, confidence %@, adjustedStart %@, adjustedEnd %@\n", v27, v29, v19, v13, v15];
    v21 = [v20 UTF8String];
    fputs(v21, *MEMORY[0x1E69E9848]);

    v16 = [[RTMotionActivity alloc] initWithType:v31 confidence:v30 startDate:v13];
    [*(a1 + 48) addObject:v16];
LABEL_5:

    goto LABEL_6;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v32 = [MEMORY[0x1E695DF00] dateFormatter];
    v24 = [v32 stringFromDate:v13];
    v25 = [MEMORY[0x1E695DF00] dateFormatter];
    v26 = [v25 stringFromDate:v15];
    *buf = 138412546;
    v34 = v24;
    v35 = 2112;
    v36 = v26;
    _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "ERROR: adjusted start, %@, postdates adjusted end, %@", buf, 0x16u);
  }

LABEL_6:
  v17 = *MEMORY[0x1E69E9840];
}

+ (BOOL)visitsOverlapping:(id)overlapping
{
  v30 = *MEMORY[0x1E69E9840];
  overlappingCopy = overlapping;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = overlappingCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:*(*(&v23 + 1) + 8 * v9)];
        [v4 addObjectsFromArray:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryDate" ascending:1];
  v28 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v4 sortUsingDescriptors:v12];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    while (1)
    {
      if (*v20 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if (!--v15)
      {
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (id)getVisitsFromVisitsDescriptionData:(id)data
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke;
  v11[3] = &unk_1E80B4B58;
  v13 = &v19;
  v14 = &v15;
  v5 = v4;
  v12 = v5;
  [dataCopy enumerateKeysAndObjectsUsingBlock:v11];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v20[3];
      v8 = v16[3];
      *buf = 134218240;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_INFO, "lois injected, %lu, visits injected, %lu", buf, 0x16u);
    }
  }

  [v5 sortUsingComparator:&__block_literal_global_3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

void __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"visits"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke_2;
  v12[3] = &unk_1E80B4B30;
  v13 = v5;
  v14 = v6;
  v16 = *(a1 + 48);
  v11 = *(a1 + 32);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v12];
}

void __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = a1[4];
        v8 = a1[5];
        *buf = 138740227;
        v23 = v7;
        v24 = 2117;
        v25 = v8;
        _os_log_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_INFO, "%{sensitive}@, %{sensitive}@", buf, 0x16u);
      }
    }

    ++*(*(a1[7] + 8) + 24);
  }

  ++*(*(a1[8] + 8) + 24);
  v9 = a1[6];
  v10 = [RTVisit alloc];
  v11 = [v5 exitDate];
  v12 = [v5 location];
  v13 = [v5 entryDate];
  v14 = [v5 exitDate];
  v15 = [(RTVisit *)v10 initWithDate:v11 type:0 location:v12 entry:v13 exit:v14 dataPointCount:0 confidence:0.0 placeInference:0];
  [v9 addObject:v15];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = a3 + 1;
      v18 = [v5 exitDate];
      v19 = [v5 entryDate];
      [v18 timeIntervalSinceDate:v19];
      *buf = 134218499;
      v23 = v17;
      v24 = 2117;
      v25 = v5;
      v26 = 2048;
      v27 = v20 / 60.0;
      _os_log_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_INFO, "visit %lu, %{sensitive}@, %f minutes", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 entry];
  v6 = [v4 entry];

  v7 = [v5 compare:v6];
  return v7;
}

- (RTSignalGeneratorOptions)initWithVisitsDescriptionData:(id)data
{
  dataCopy = data;
  v5 = objc_opt_class();
  v6 = [dataCopy objectForKey:@"Locations"];

  v7 = [v5 getVisitsFromVisitsDescriptionData:v6];
  v8 = [(RTSignalGeneratorOptions *)self initWithStartLocation:0 endLocation:0 expectedVisits:v7];

  return v8;
}

- (RTSignalGeneratorOptions)initWithVisitsDescriptionPListPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() visitsDescriptionDataAtPath:pathCopy];

  v7 = [v6 objectForKeyedSubscript:@"Locations"];
  v8 = [v5 getVisitsFromVisitsDescriptionData:v7];
  v9 = [(RTSignalGeneratorOptions *)self initWithStartLocation:0 endLocation:0 expectedVisits:v8];

  return v9;
}

- (RTSignalGeneratorOptions)initWithStartLocation:(id)location endLocation:(id)endLocation expectedVisits:(id)visits
{
  v50 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  endLocationCopy = endLocation;
  visitsCopy = visits;
  if (!visitsCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v47 = "[RTSignalGeneratorOptions initWithStartLocation:endLocation:expectedVisits:]";
      v48 = 1024;
      v49 = 525;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expectedVisits (in %s:%d)", buf, 0x12u);
    }
  }

  v45.receiver = self;
  v45.super_class = RTSignalGeneratorOptions;
  v12 = [(RTSignalGeneratorOptions *)&v45 init];
  if (v12)
  {
    if (locationCopy)
    {
      v13 = locationCopy;
      startLocation = v12->_startLocation;
      v12->_startLocation = v13;
    }

    else
    {
      v39 = [RTLocation alloc];
      startLocation = [visitsCopy firstObject];
      location = [startLocation location];
      [location latitude];
      v16 = v15 + -0.1;
      firstObject = [visitsCopy firstObject];
      location2 = [firstObject location];
      [location2 longitude];
      v19 = v18;
      firstObject2 = [visitsCopy firstObject];
      entry = [firstObject2 entry];
      v22 = [entry dateByAddingTimeInterval:-1800.0];
      v23 = [(RTLocation *)v39 initWithLatitude:v22 longitude:v16 horizontalUncertainty:v19 date:10.0];
      v24 = v12->_startLocation;
      v12->_startLocation = v23;
    }

    if (endLocationCopy)
    {
      v25 = endLocationCopy;
      endLocation = v12->_endLocation;
      v12->_endLocation = v25;
    }

    else
    {
      v40 = [RTLocation alloc];
      endLocation = [visitsCopy lastObject];
      location3 = [endLocation location];
      [location3 latitude];
      v28 = v27 + 0.1;
      lastObject = [visitsCopy lastObject];
      location4 = [lastObject location];
      [location4 longitude];
      v31 = v30;
      lastObject2 = [visitsCopy lastObject];
      exit = [lastObject2 exit];
      v34 = [exit dateByAddingTimeInterval:1800.0];
      v35 = [(RTLocation *)v40 initWithLatitude:v34 longitude:v28 horizontalUncertainty:v31 date:10.0];
      v36 = v12->_endLocation;
      v12->_endLocation = v35;
    }

    objc_storeStrong(&v12->_expectedVisits, visits);
  }

  v37 = *MEMORY[0x1E69E9840];
  return v12;
}

- (RTSignalGeneratorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startLocation"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endLocation"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"expectedVisits"];

  v11 = [(RTSignalGeneratorOptions *)self initWithStartLocation:v5 endLocation:v6 expectedVisits:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  startLocation = self->_startLocation;
  coderCopy = coder;
  [coderCopy encodeObject:startLocation forKey:@"startLocation"];
  [coderCopy encodeObject:self->_endLocation forKey:@"endLocation"];
  [coderCopy encodeObject:self->_expectedVisits forKey:@"expectedVisits"];
}

@end