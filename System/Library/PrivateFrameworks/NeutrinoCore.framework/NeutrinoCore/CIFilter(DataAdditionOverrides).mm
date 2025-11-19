@interface CIFilter(DataAdditionOverrides)
+ (CGColorSpace)reductionFilterExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:;
+ (id)autoRedEyeExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:;
+ (id)faceBalanceExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:;
+ (id)perspectiveExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:;
+ (id)straightenExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:;
@end

@implementation CIFilter(DataAdditionOverrides)

+ (id)faceBalanceExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = [v11 mutableCopy];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v14 = v13;
  v15 = MEMORY[0x1E695E110];
  [v13 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E695F968]];
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695F950]];
  [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695F958]];
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695F988]];
  [v9 autoAdjustmentFiltersWithOptions:v14];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v16 = v63 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (!v17)
  {
    v21 = MEMORY[0x1E695E0F8];
    goto LABEL_31;
  }

  v18 = v17;
  v55 = v14;
  v56 = v12;
  v57 = v11;
  v58 = v10;
  v59 = v9;
  v19 = *v61;
  v20 = *MEMORY[0x1E695F6C0];
  v21 = MEMORY[0x1E695E0F8];
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v61 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v23 = *(*(&v60 + 1) + 8 * i);
      v24 = [v23 attributes];
      v25 = [v24 objectForKey:v20];

      if ([v25 isEqualToString:@"CIFaceBalance"])
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v26 = [v23 valueForKey:@"inputOrigI"];
        if (v26)
        {
          [v21 setObject:v26 forKeyedSubscript:@"OrigI"];
        }

        v27 = [v23 valueForKey:@"inputOrigQ"];

        v9 = v59;
        v11 = v57;
        if (v27)
        {
          [v21 setObject:v27 forKeyedSubscript:@"OrigQ"];
        }

        v28 = [v23 valueForKey:@"inputStrength"];

        if (v28)
        {
          [v21 setObject:v28 forKeyedSubscript:@"Strength"];
        }

        v29 = [v23 valueForKey:@"inputWarmth"];

        if (v29)
        {
          [v21 setObject:&unk_1F3F82C80 forKeyedSubscript:@"Warmth"];
        }

        v30 = [v21 objectForKeyedSubscript:@"OrigI"];
        if (!v30)
        {
          goto LABEL_29;
        }

        v31 = v30;
        v32 = [v21 objectForKeyedSubscript:@"OrigQ"];
        if (v32)
        {
          v33 = v32;
          v34 = [v21 objectForKeyedSubscript:@"Strength"];
          if (v34)
          {
            v35 = v34;
            v36 = [v21 objectForKeyedSubscript:@"Warmth"];

            if (v36)
            {
              v37 = [v21 objectForKeyedSubscript:@"Warmth"];
              [v37 floatValue];
              v39 = v38;

              v40 = [v21 objectForKeyedSubscript:@"OrigI"];
              [v40 floatValue];
              v42 = (1.0 - v39) * 0.07451 + v39 * 0.1333 - v41;
              v43 = [v21 objectForKeyedSubscript:@"Strength"];
              [v43 floatValue];
              v45 = v42 * v44;

              v46 = [v21 objectForKeyedSubscript:@"OrigQ"];
              [v46 floatValue];
              v48 = (1.0 - v39) * 0.02745 + v39 * 0.007843 - v47;
              v49 = [v21 objectForKeyedSubscript:@"Strength"];
              [v49 floatValue];
              v51 = v48 * v50;

              v52 = [MEMORY[0x1E696AD98] numberWithDouble:(v45 + v51 * -0.2) * 4.0];
              [v21 setObject:v52 forKeyedSubscript:@"WarmTemp"];

              v53 = [MEMORY[0x1E696AD98] numberWithDouble:(v45 + v51 * 5.0) * 4.0];
              [v21 setObject:v53 forKeyedSubscript:@"WarmTint"];

              [v21 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WarmFace"];
            }

            goto LABEL_29;
          }
        }

LABEL_29:
        v10 = v58;
        goto LABEL_30;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  v10 = v58;
  v9 = v59;
  v11 = v57;
LABEL_30:
  v14 = v55;
  v12 = v56;
LABEL_31:

  return v21;
}

+ (id)autoRedEyeExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:
{
  v63[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = MEMORY[0x1E695E110];
  [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E695F968]];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695F950]];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695F958]];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695F988]];
  v10 = [v7 objectForKeyedSubscript:@"locationX"];
  if (v10)
  {
    v11 = v10;
    v12 = [v7 objectForKeyedSubscript:@"locationY"];
    if (v12)
    {
      v13 = v12;
      v14 = [v7 objectForKeyedSubscript:@"touchDiameter"];

      if (v14)
      {
        [v6 extent];
        v16 = v15;
        v18 = v17;
        v19 = [v7 objectForKeyedSubscript:@"locationX"];
        [v19 doubleValue];
        v21 = v16 * v20;
        v22 = [v7 objectForKeyedSubscript:@"locationY"];
        [v22 doubleValue];
        v24 = v18 * v23;

        v25 = [v7 objectForKeyedSubscript:@"touchDiameter"];
        [v25 doubleValue];
        v27 = v26;

        v28 = [MEMORY[0x1E695F688] vectorWithX:v21 Y:v24];
        v62[0] = @"leftEye";
        v62[1] = @"leftEyeTouchSize";
        v63[0] = v28;
        v29 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        v63[1] = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];

        v61 = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
        [v8 setObject:v31 forKeyedSubscript:*MEMORY[0x1E695F960]];

        [v8 setObject:&unk_1F3F82710 forKeyedSubscript:*MEMORY[0x1E695F5B8]];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v32 = [v7 objectForKeyedSubscript:@"orientation"];
  [v8 setObject:v32 forKeyedSubscript:*MEMORY[0x1E695F5B8]];

LABEL_7:
  v33 = [v7 objectForKeyedSubscript:@"fullSizeImage"];
  if (v33)
  {
    [v8 setObject:v33 forKeyedSubscript:@"fullSizeImage"];
  }

  v34 = [v7 objectForKeyedSubscript:@"properties"];

  if (v34)
  {
    v35 = [v7 objectForKeyedSubscript:@"properties"];
    v36 = [v6 imageBySettingProperties:v35];

    v6 = v36;
  }

  [v6 autoAdjustmentFiltersWithOptions:v8];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v37 = v57 = 0u;
  v38 = [v37 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v38)
  {
    v39 = v38;
    v51 = v33;
    v52 = v7;
    v53 = v6;
    v40 = *v55;
    v41 = *MEMORY[0x1E695F6C0];
LABEL_13:
    v42 = 0;
    while (1)
    {
      if (*v55 != v40)
      {
        objc_enumerationMutation(v37);
      }

      v43 = *(*(&v54 + 1) + 8 * v42);
      v44 = [v43 attributes];
      v45 = [v44 objectForKey:v41];

      if ([v45 isEqualToString:@"CIRedEyeCorrections"])
      {
        break;
      }

      if (v39 == ++v42)
      {
        v39 = [v37 countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v39)
        {
          goto LABEL_13;
        }

        v46 = 0;
        v47 = v37;
        v7 = v52;
        v6 = v53;
        v33 = v51;
        v48 = MEMORY[0x1E695E0F8];
        goto LABEL_25;
      }
    }

    v47 = [v43 valueForKey:@"inputCorrectionInfo"];
    v46 = [v43 valueForKey:@"inputCameraModel"];

    if (!v47)
    {
      v48 = MEMORY[0x1E695E0F8];
      v7 = v52;
      v6 = v53;
      v33 = v51;
      goto LABEL_27;
    }

    v58[0] = @"inputCorrectionInfo";
    v58[1] = @"inputCameraModel";
    v49 = @"undefined";
    if (v46)
    {
      v49 = v46;
    }

    v59[0] = v47;
    v59[1] = v49;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v7 = v52;
    v6 = v53;
    v33 = v51;
  }

  else
  {
    v46 = 0;
    v48 = MEMORY[0x1E695E0F8];
    v47 = v37;
  }

LABEL_25:

LABEL_27:

  return v48;
}

+ (id)straightenExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:
{
  v103 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  if (v11)
  {
    v17 = [v11 mutableCopy];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v18 = v17;
  v19 = *MEMORY[0x1E695F968];
  v20 = [v17 valueForKey:*MEMORY[0x1E695F968]];

  if (!v20)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v19];
  }

  v21 = *MEMORY[0x1E695F950];
  v22 = [v18 valueForKey:*MEMORY[0x1E695F950]];

  if (!v22)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v21];
  }

  v23 = *MEMORY[0x1E695F958];
  v24 = [v18 valueForKey:*MEMORY[0x1E695F958]];

  if (!v24)
  {
    [v18 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v23];
  }

  v25 = *MEMORY[0x1E695F988];
  v26 = [v18 valueForKey:*MEMORY[0x1E695F988]];

  if (!v26)
  {
    [v18 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v25];
  }

  v27 = *MEMORY[0x1E695F960];
  v28 = [v18 objectForKeyedSubscript:*MEMORY[0x1E695F960]];

  v74 = v10;
  v75 = v9;
  v72 = v12;
  v73 = v11;
  v71 = v18;
  if (v28)
  {
    v29 = [v18 objectForKeyedSubscript:v27];
    v30 = [v29 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v9 extent];
      v77 = v32;
      v70 = v33;
      v34 = objc_opt_new();
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      obj = [v18 objectForKeyedSubscript:v27];
      v35 = [obj countByEnumeratingWithState:&v87 objects:v102 count:16];
      if (v35)
      {
        v36 = v35;
        *&v37 = v77;
        *(&v37 + 1) = v70;
        *v78 = v37;
        v38 = *v88;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v88 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v40 = [*(*(&v87 + 1) + 8 * i) objectForKeyedSubscript:{@"bounds", v70}];
            v41 = *(MEMORY[0x1E695F058] + 16);
            v91 = *MEMORY[0x1E695F058];
            v92 = v41;
            [v40 getValue:&v91];
            v80 = vmulq_f64(*v78, v91);
            v81 = vmulq_f64(*v78, v92);
            v100 = @"bounds";
            v42 = [MEMORY[0x1E696B098] valueWithBytes:&v80 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
            v101 = v42;
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];

            [v34 addObject:v43];
          }

          v36 = [obj countByEnumeratingWithState:&v87 objects:v102 count:16];
        }

        while (v36);
      }

      v18 = v71;
      [v71 setObject:v34 forKeyedSubscript:v27];

      v10 = v74;
      v12 = v72;
      v11 = v73;
    }
  }

  v44 = [v9 autoAdjustmentFiltersWithOptions:{v18, v70}];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v79 = v44;
  v45 = [v44 countByEnumeratingWithState:&v83 objects:v99 count:16];
  if (!v45)
  {
    v47 = 0;
    v60 = 0.0;
    goto LABEL_45;
  }

  v46 = 0;
  v47 = 0;
  v48 = *v84;
  v49 = *MEMORY[0x1E695F6C0];
  do
  {
    for (j = 0; j != v45; j = j + 1)
    {
      if (*v84 != v48)
      {
        objc_enumerationMutation(v79);
      }

      v51 = *(*(&v83 + 1) + 8 * j);
      v52 = [v51 attributes];
      v53 = [v52 objectForKey:v49];

      if ([v53 isEqualToString:@"CIAffineTransform"])
      {
        v54 = v46;
        v46 = v51;
        v55 = v47;
LABEL_31:
        v56 = v51;

        v47 = v55;
        goto LABEL_32;
      }

      if (v53)
      {
        v54 = v47;
        v55 = v51;
        if ([v53 isEqualToString:@"CICrop"])
        {
          goto LABEL_31;
        }
      }

LABEL_32:
    }

    v45 = [v79 countByEnumeratingWithState:&v83 objects:v99 count:16];
  }

  while (v45);
  v45 = v46;
  if (v46)
  {
    v57 = [v46 valueForKey:@"inputTransform"];
    v58 = *(MEMORY[0x1E695EFD0] + 16);
    v80 = *MEMORY[0x1E695EFD0];
    v81 = v58;
    v82 = *(MEMORY[0x1E695EFD0] + 32);
    [v57 getValue:&v80];
    v91 = v80;
    v92 = v81;
    v96 = 0;
    v95 = 0u;
    v93 = v82;
    v94 = 0u;
    NUDecomposeAffineTransform(&v91, &v94);
    v59 = *&v95 * 180.0 / 3.14159265;
    if (v59 < 0.0)
    {
      v59 = v59 + 360.0;
    }

    if (v59 <= 180.0)
    {
      v60 = v59;
    }

    else
    {
      v60 = v59 + -360.0;
    }
  }

  else
  {
    v60 = 0.0;
  }

  v10 = v74;
  v9 = v75;
  v12 = v72;
  v11 = v73;
  v18 = v71;
  if (v47)
  {
    v61 = [v47 valueForKey:@"inputRectangle"];
    [v61 CGRectValue];
    v13 = v62;
    v14 = v63;
    v15 = v64;
    v16 = v65;
  }

LABEL_45:
  v97[0] = @"straightenAngleInDegreesCCW";
  v66 = [MEMORY[0x1E696AD98] numberWithDouble:v60];
  v97[1] = @"autoCrop";
  v98[0] = v66;
  v67 = [MEMORY[0x1E695F688] vectorWithCGRect:{v13, v14, v15, v16}];
  v98[1] = v67;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];

  return v68;
}

+ (id)perspectiveExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 autoPerspectiveResultWithOptions:v7];
  v9 = [v8 objectForKeyedSubscript:@"filter"];
  if (!v9)
  {
    v9 = [v6 autoPerspectiveFilterWithOptions:v7];
  }

  v30 = v7;
  v29 = [v8 objectForKeyedSubscript:@"confidence"];
  v10 = [v8 objectForKeyedSubscript:@"debugImage"];
  v11 = [v8 objectForKeyedSubscript:@"pitchCorrectionAreaCoverage"];
  v12 = [v8 objectForKeyedSubscript:@"yawCorrectionAreaCoverage"];
  v13 = [v8 objectForKeyedSubscript:@"pitchFailureReason"];
  v14 = [v8 objectForKeyedSubscript:@"yawFailureReason"];
  v31 = v6;
  if (v9)
  {
    v15 = [v9 valueForKey:@"inputPitch"];
    [v15 doubleValue];
    v17 = v16 * 57.2957795;

    v18 = [v9 valueForKey:@"inputYaw"];
    [v18 doubleValue];
    v20 = v19 * 57.2957795;

    v21 = [v9 valueForKey:@"inputRoll"];
    [v21 doubleValue];
    v23 = v22 * 57.2957795;
  }

  else
  {
    v17 = 0.0;
    v20 = 0.0;
    v23 = 0.0;
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  [v24 setObject:v25 forKeyedSubscript:@"pitchExpandTopDegrees"];

  v26 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  [v24 setObject:v26 forKeyedSubscript:@"yawExpandLeftDegrees"];

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  [v24 setObject:v27 forKeyedSubscript:@"rollAngleInDegreesCW"];

  [v24 setObject:v29 forKeyedSubscript:@"confidence"];
  [v24 setObject:v10 forKeyedSubscript:@"debugImage"];
  [v24 setObject:v11 forKeyedSubscript:@"pitchCorrectionAreaCoverage"];
  [v24 setObject:v12 forKeyedSubscript:@"yawCorrectionAreaCoverage"];
  [v24 setObject:v13 forKeyedSubscript:@"ciPitchError"];
  [v24 setObject:v14 forKeyedSubscript:@"ciYawError"];

  return v24;
}

+ (CGColorSpace)reductionFilterExtractDataToDictionary:()DataAdditionOverrides dataExtractor:options:context:colorSpace:error:
{
  v59 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [MEMORY[0x1E695F648] filterWithName:v14];
  v18 = v17;
  if (v17)
  {
    if (v15)
    {
      [v17 setValuesForKeysWithDictionary:v15];
    }

    [v18 setValue:v13 forKey:*MEMORY[0x1E695FAB0]];
    v19 = MEMORY[0x1E695F688];
    [v13 extent];
    v20 = [v19 vectorWithCGRect:?];
    [v18 setValue:v20 forKey:@"inputExtent"];

    v21 = [v18 valueForKey:@"outputImage"];
    if (!v21)
    {
      if (a8)
      {
        v23 = [NUError invalidError:@"unable to obtain outputImage" object:v18];
LABEL_25:
        a7 = 0;
        *a8 = v23;
        goto LABEL_31;
      }

LABEL_30:
      a7 = 0;
      goto LABEL_31;
    }

    if (!v16)
    {
      v16 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:&unk_1F3F829C8];
    }

    v58 = 0uLL;
    if (CGColorSpaceGetType() == 1)
    {
      v22 = [v13 colorSpace];
      if (!v22)
      {
        v22 = [v16 workingColorSpace];
        if (!v22)
        {
          v38 = NUAssertLogger_20556();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"colorspace is nil, image: %@, context: %@", v13, v16];
            *components = 138543362;
            *&components[4] = v39;
            _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", components, 0xCu);
          }

          specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v41 = NUAssertLogger_20556();
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
          if (specific)
          {
            if (v42)
            {
              v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
              v46 = MEMORY[0x1E696AF00];
              v47 = v45;
              v48 = [v46 callStackSymbols];
              v49 = [v48 componentsJoinedByString:@"\n"];
              *components = 138543618;
              *&components[4] = v45;
              *&components[12] = 2114;
              *&components[14] = v49;
              _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", components, 0x16u);
            }
          }

          else if (v42)
          {
            v43 = [MEMORY[0x1E696AF00] callStackSymbols];
            v44 = [v43 componentsJoinedByString:@"\n"];
            *components = 138543362;
            *&components[4] = v44;
            _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", components, 0xCu);
          }

          _NUAssertFailHandler("+[CIFilter(DataAdditionOverrides) reductionFilterExtractDataToDictionary:dataExtractor:options:context:colorSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/CoreImageDataAdditions.m", 154, @"colorspace is nil, image: %@, context: %@", v50, v51, v52, v53, v13);
        }
      }

      a7 = v22;
    }

    else if (!a7)
    {
      v32 = objc_alloc(MEMORY[0x1E695F678]);
      v33 = [v32 initWithBitmapData:&v58 width:1 height:1 bytesPerRow:16 format:*MEMORY[0x1E695F918]];
      [v33 setClamped:0];
      [v33 setColorSpace:0];
      [v33 setAlphaMode:0];
      v34 = [v16 startTaskToRender:v21 fromRect:v33 toDestination:a8 atPoint:0.0 error:{0.0, 1.0, 1.0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      if (!v34)
      {

        goto LABEL_30;
      }

      v35 = v34;
      v24 = v13;
      v36 = [v34 waitUntilCompletedAndReturnError:a8];

      a7 = 0;
      if (!v36)
      {
        v13 = v24;
        goto LABEL_31;
      }

      v54 = a8;
      v25 = v16;
      v26 = 1;
      goto LABEL_17;
    }

    v54 = a8;
    v24 = v13;
    v25 = v16;
    [v16 render:v21 toBitmap:&v58 rowBytes:16 bounds:*MEMORY[0x1E695F918] format:a7 colorSpace:{0.0, 0.0, 1.0, 1.0}];
    v26 = 0;
LABEL_17:
    *components = vcvtq_f64_f32(*v58.f32);
    *&components[16] = vcvt_hight_f64_f32(v58);
    v27 = +[NUColorSpace extendedSRGBLinearColorSpace];
    v28 = [v27 CGColorSpace];

    v29 = a7;
    v13 = v24;
    if (v26)
    {
      v29 = [v24 colorSpace];
      if (!v29)
      {
        v29 = v28;
      }
    }

    v30 = CGColorCreate(v29, components);
    if (v30)
    {
      v31 = v30;
      v55 = @"color";
      v56 = v30;
      a7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];

      v16 = v25;
LABEL_31:

      goto LABEL_32;
    }

    v16 = v25;
    a8 = v54;
    if (v54)
    {
      v23 = [NUError failureError:@"couldn't create color" object:a7];
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if (a8)
  {
    [NUError missingError:@"unknown extractor name" object:v14];
    *a8 = a7 = 0;
  }

  else
  {
    a7 = 0;
  }

LABEL_32:

  return a7;
}

@end