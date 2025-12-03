@interface HKAudiogramChartViewController(UnitTesting)
+ (BOOL)testChartPointCreation:()UnitTesting leftEarSeries:expectedChartPoints:failureMessage:;
@end

@implementation HKAudiogramChartViewController(UnitTesting)

+ (BOOL)testChartPointCreation:()UnitTesting leftEarSeries:expectedChartPoints:failureMessage:
{
  v7 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = [HKAudiogramChartPoint chartPointsFromSensitivityPoints:a3 isLeftEar:v7];
  v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v11 setNumberStyle:1];
  v12 = [v9 componentsSeparatedByString:@""];;
  v13 = [v12 count];
  if (v13 != [v10 count])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected point count doesn't match actual point count: %ld != %ld", objc_msgSend(v12, "count"), objc_msgSend(v10, "count")];
    *a6 = v37 = 0;
    goto LABEL_20;
  }

  v42 = v9;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v14)
  {
    v37 = 1;
    goto LABEL_19;
  }

  v15 = v14;
  v41 = a6;
  v16 = 0;
  v17 = *v45;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v45 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v44 + 1) + 8 * i);
      v20 = [v19 componentsSeparatedByString:{@", "}];
      if ([v20 count] != 2)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Point does not have two coordinates: '%@'", v19, v39, v40];
        *v41 = LABEL_18:;

        v37 = 0;
        goto LABEL_19;
      }

      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = [v11 numberFromString:v21];
      [v22 doubleValue];
      v24 = v23;

      v25 = [v20 objectAtIndexedSubscript:1];
      v26 = [v11 numberFromString:v25];
      [v26 doubleValue];
      v28 = v27;

      v29 = [v10 objectAtIndexedSubscript:v16];
      xValueAsGenericType = [v29 xValueAsGenericType];
      [xValueAsGenericType doubleValue];
      v32 = v31;

      v33 = [v10 objectAtIndexedSubscript:v16];
      yValue = [v33 yValue];
      [yValue doubleValue];
      v36 = v35;

      if (vabdd_f64(v24, v32) > 0.000001)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"X value mismatch (slot %ld): %lg != %lg", v16, *&v24, *&v32];
        goto LABEL_18;
      }

      if (vabdd_f64(v28, v36) > 0.000001)
      {
        objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Y value mismatch (slot %ld: %lg != %lg"), v16, *&v28, *&v36;
        goto LABEL_18;
      }

      ++v16;
    }

    v15 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    v37 = 1;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v9 = v42;
LABEL_20:

  return v37;
}

@end