@interface _NUSemanticStyleProperties
+ (id)baselineExposureFromLegacyMetadata:(id)a3 error:(id *)a4;
+ (id)globalToneCurveDataFromCaptureMetadata:(id)a3 error:(id *)a4;
+ (id)legacySemanticStylePropertiesFromData:(id)a3 fromVideo:(BOOL)a4 keyTime:(id *)a5 error:(id *)a6;
+ (id)semanticStylePropertiesFromData:(id)a3 fromVideo:(BOOL)a4 keyTime:(id *)a5 error:(id *)a6;
+ (id)semanticStylePropertiesFromImageMetadata:(id)a3 error:(id *)a4;
+ (id)semanticStylePropertiesFromVideoMetadata:(id)a3 keyTime:(id *)a4 error:(id *)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setKeyTime:(id *)a3;
@end

@implementation _NUSemanticStyleProperties

- (void)setKeyTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_keyTime.epoch = a3->var3;
  *&self->_keyTime.value = v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_NUSemanticStyleProperties allocWithZone:a3];
  v5 = [(_NUSemanticStyleProperties *)self version];
  [(_NUSemanticStyleProperties *)v4 setVersion:v5];

  v6 = [(_NUSemanticStyleProperties *)self styleData];
  [(_NUSemanticStyleProperties *)v4 setStyleData:v6];

  [(_NUSemanticStyleProperties *)v4 setStyleDataIsFloat16:[(_NUSemanticStyleProperties *)self styleDataIsFloat16]];
  [(_NUSemanticStyleProperties *)v4 setIsVideo:[(_NUSemanticStyleProperties *)self isVideo]];
  [(_NUSemanticStyleProperties *)self keyTime];
  v22 = v24;
  v23 = v25;
  [(_NUSemanticStyleProperties *)v4 setKeyTime:&v22];
  v7 = [(_NUSemanticStyleProperties *)self globalToneCurveData];
  [(_NUSemanticStyleProperties *)v4 setGlobalToneCurveData:v7];

  [(_NUSemanticStyleProperties *)self baselineExposure];
  [(_NUSemanticStyleProperties *)v4 setBaselineExposure:?];
  v8 = [(_NUSemanticStyleProperties *)self sceneType];
  [(_NUSemanticStyleProperties *)v4 setSceneType:v8];

  v9 = [(_NUSemanticStyleProperties *)self subjectRelightingValue];
  [(_NUSemanticStyleProperties *)v4 setSubjectRelightingValue:v9];

  v10 = [(_NUSemanticStyleProperties *)self stats];
  [(_NUSemanticStyleProperties *)v4 setStats:v10];

  v11 = [(_NUSemanticStyleProperties *)self lightMapData];
  [(_NUSemanticStyleProperties *)v4 setLightMapData:v11];

  v12 = [(_NUSemanticStyleProperties *)self linearLightMapData];
  [(_NUSemanticStyleProperties *)v4 setLinearLightMapData:v12];

  v13 = [(_NUSemanticStyleProperties *)self lightMapWidth];
  [(_NUSemanticStyleProperties *)v4 setLightMapWidth:v13];

  v14 = [(_NUSemanticStyleProperties *)self lightMapHeight];
  [(_NUSemanticStyleProperties *)v4 setLightMapHeight:v14];

  v15 = [(_NUSemanticStyleProperties *)self baseGain];
  [(_NUSemanticStyleProperties *)v4 setBaseGain:v15];

  v16 = [(_NUSemanticStyleProperties *)self linearGain];
  [(_NUSemanticStyleProperties *)v4 setLinearGain:v16];

  v17 = [(_NUSemanticStyleProperties *)self linearRangeMin];
  [(_NUSemanticStyleProperties *)v4 setLinearRangeMin:v17];

  v18 = [(_NUSemanticStyleProperties *)self linearRangeMax];
  [(_NUSemanticStyleProperties *)v4 setLinearRangeMax:v18];

  v19 = [(_NUSemanticStyleProperties *)self faceBasedGlobalExposureBoostRatio];
  [(_NUSemanticStyleProperties *)v4 setFaceBasedGlobalExposureBoostRatio:v19];

  v20 = [(_NUSemanticStyleProperties *)self extendedStats];
  [(_NUSemanticStyleProperties *)v4 setExtendedStats:v20];

  return v4;
}

- (NSString)description
{
  v33 = MEMORY[0x1E696AEC0];
  v32 = objc_opt_class();
  v3 = [(_NUSemanticStyleProperties *)self version];
  v31 = [(_NUSemanticStyleProperties *)self isVideo];
  [(_NUSemanticStyleProperties *)self keyTime];
  if (v40)
  {
    v4 = MEMORY[0x1E696AD98];
    [(_NUSemanticStyleProperties *)self keyTime];
    v36 = [v4 numberWithLongLong:v39];
  }

  else
  {
    v36 = @"-";
  }

  [(_NUSemanticStyleProperties *)self keyTime];
  v34 = v3;
  if (v38)
  {
    v5 = MEMORY[0x1E696AD98];
    [(_NUSemanticStyleProperties *)self keyTime];
    v35 = [v5 numberWithInt:v37];
  }

  else
  {
    v35 = @"-";
  }

  v30 = [(_NUSemanticStyleProperties *)self styleData];
  v27 = [v30 length];
  v25 = [(_NUSemanticStyleProperties *)self styleDataIsFloat16];
  v29 = [(_NUSemanticStyleProperties *)self globalToneCurveData];
  v23 = [v29 length];
  [(_NUSemanticStyleProperties *)self baselineExposure];
  v7 = v6;
  v22 = [(_NUSemanticStyleProperties *)self sceneType];
  v21 = [(_NUSemanticStyleProperties *)self subjectRelightingValue];
  v19 = [(_NUSemanticStyleProperties *)self baseGain];
  v28 = [(_NUSemanticStyleProperties *)self stats];
  v20 = [v28 count];
  v26 = [(_NUSemanticStyleProperties *)self lightMapData];
  v18 = [v26 length];
  v24 = [(_NUSemanticStyleProperties *)self linearLightMapData];
  v8 = [v24 length];
  v17 = [(_NUSemanticStyleProperties *)self lightMapWidth];
  v9 = [(_NUSemanticStyleProperties *)self lightMapHeight];
  v10 = [(_NUSemanticStyleProperties *)self linearGain];
  v11 = [(_NUSemanticStyleProperties *)self linearRangeMin];
  v12 = [(_NUSemanticStyleProperties *)self linearRangeMax];
  v13 = [(_NUSemanticStyleProperties *)self faceBasedGlobalExposureBoostRatio];
  v14 = [(_NUSemanticStyleProperties *)self extendedStats];
  v15 = [v33 stringWithFormat:@"<%@:%p version=%@ video=%d key=%@/%@ data:%luB float16:%d GTC:%luB exp:%g scn=%@ srl=%@ gain=%@ stats:%luB lightMap:%luB/%luB(%@x%@) lin:(x%@, %@:%@) fb=%@ xstats=%@>", v32, self, v34, v31, v36, v35, v27, v25, v23, v7, v22, v21, v19, v20, v18, v8, v17, v9, v10, v11, v12, v13, v14];

  if (v38)
  {
  }

  if (v40)
  {
  }

  return v15;
}

+ (id)legacySemanticStylePropertiesFromData:(id)a3 fromVideo:(BOOL)a4 keyTime:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v90 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    v43 = NUAssertLogger_3297();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v46 = NUAssertLogger_3297();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v47)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        v60 = [v58 callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v57;
        *&buf[12] = 2114;
        *&buf[14] = v61;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v47)
    {
      v48 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [v48 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v49;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUSemanticStyleProperties legacySemanticStylePropertiesFromData:fromVideo:keyTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 894, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "data != nil");
  }

  if (!a6)
  {
    v50 = NUAssertLogger_3297();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v51;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v53 = NUAssertLogger_3297();
    v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
    if (v52)
    {
      if (v54)
      {
        v66 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        v69 = [v67 callStackSymbols];
        v70 = [v69 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v66;
        *&buf[12] = 2114;
        *&buf[14] = v70;
        _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v54)
    {
      v55 = [MEMORY[0x1E696AF00] callStackSymbols];
      v56 = [v55 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v56;
      _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUSemanticStyleProperties legacySemanticStylePropertiesFromData:fromVideo:keyTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 895, @"Invalid parameter not satisfying: %s", v71, v72, v73, v74, "error != NULL");
  }

  v11 = v10;
  v88 = 0;
  v12 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:&v88];
  v13 = v88;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NUError errorWithCode:1 reason:@"Could not deserialized property list from data" object:v11 underlyingError:v13];
    *a6 = v17 = 0;
    goto LABEL_81;
  }

  v14 = objc_alloc_init(_NUSemanticStyleProperties);
  [(_NUSemanticStyleProperties *)v14 setIsVideo:v8];
  *buf = *&a5->var0;
  *&buf[16] = a5->var3;
  [(_NUSemanticStyleProperties *)v14 setKeyTime:buf];
  v15 = [v12 objectForKeyedSubscript:@"smartStyleMetadataVersion"];
  objc_opt_class();
  v84 = v15;
  if (objc_opt_isKindOfClass())
  {
    v16 = +[NUVersion versionWithPackedUInt32:](NUVersion, "versionWithPackedUInt32:", [v15 unsignedIntValue]);
  }

  else
  {
    v16 = 0;
  }

  [(_NUSemanticStyleProperties *)v14 setVersion:v16];
  v18 = [v12 objectForKeyedSubscript:@"smartStyleLearnedCoefficients"];
  v19 = v18;
  if (!v16 || v18)
  {
    if (!v16 && v18 && !v8)
    {
      v87 = v13;
      v17 = [(_NUSemanticStyleProperties *)v18 decompressedDataUsingAlgorithm:1 error:&v87];
      v20 = v87;

      if (!v17)
      {
        *a6 = [NUError errorWithCode:1 reason:@"Failed to decompress style data" object:v12 underlyingError:v20];
        v13 = v20;
        goto LABEL_80;
      }

      v19 = v17;
      v13 = v20;
    }

    [(_NUSemanticStyleProperties *)v14 setStyleData:v19];
    v21 = [v12 objectForKeyedSubscript:@"smartStyleLearnedCoefficientsUseFloat16"];
    if (v21)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
        }

        v22 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v21;
          _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Invalid use float16 value: %{public}@, ignored", buf, 0xCu);
        }

        v21 = 0;
      }
    }

    -[_NUSemanticStyleProperties setStyleDataIsFloat16:](v14, "setStyleDataIsFloat16:", [v21 BOOLValue]);
    v23 = [v12 objectForKeyedSubscript:@"GlobalToneCurveLookUpTable"];
    v83 = v19;
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = v21;
        v86 = 0;
        [a1 globalToneCurveDataFromCaptureMetadata:v23 error:&v86];
        v17 = v24 = v23;
        v25 = v86;

        if (v17)
        {
          [(_NUSemanticStyleProperties *)v14 setGlobalToneCurveData:v17];

          v23 = v24;
LABEL_28:
          v81 = v23;
          v85 = 0;
          v26 = [a1 baselineExposureFromLegacyMetadata:v12 error:&v85];
          v13 = v85;

          if (v26)
          {
            [v26 doubleValue];
            [(_NUSemanticStyleProperties *)v14 setBaselineExposure:?];
            v27 = [v12 objectForKey:@"smartStyleSemanticStyleSceneType"];
            if (v27)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                }

                v28 = _NULogger;
                if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v27;
                  _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Invalid scene type: %{public}@, ignored", buf, 0xCu);
                }

                v27 = 0;
              }
            }

            [(_NUSemanticStyleProperties *)v14 setSceneType:v27];
            v29 = [v12 objectForKey:@"smartStyleSRLCoefficient"];
            if (v29)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                }

                v30 = _NULogger;
                if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v29;
                  _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Invalid Style SRL Curve Parameter: %{public}@, ignored", buf, 0xCu);
                }

                v29 = 0;
              }
            }

            [(_NUSemanticStyleProperties *)v14 setSubjectRelightingValue:v29];
            v31 = [v12 objectForKey:@"smartStyleImageStatistics"];
            if (v31)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                }

                v32 = _NULogger;
                if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v31;
                  _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Invalid Style Stats: %{public}@, ignored", buf, 0xCu);
                }

                v31 = 0;
              }
            }

            [(_NUSemanticStyleProperties *)v14 setStats:v31];
            v33 = [v12 objectForKey:@"smallLightMapData"];
            v78 = v31;
            if (v33)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v75 = v33;
                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                }

                v34 = _NULogger;
                if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v75;
                  _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Invalid Style Lightmap: %{public}@, ignored", buf, 0xCu);
                }

                v33 = 0;
              }
            }

            [(_NUSemanticStyleProperties *)v14 setLightMapData:v33];
            v35 = [v12 objectForKey:@"smallLinearLightMapData"];
            v79 = v29;
            v80 = v27;
            v77 = v26;
            if (v35)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v76 = v33;
                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                }

                v36 = _NULogger;
                if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v35;
                  _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Invalid Style Linear Lightmap: %{public}@, ignored", buf, 0xCu);
                }

                v35 = 0;
                v33 = v76;
              }
            }

            [(_NUSemanticStyleProperties *)v14 setLinearLightMapData:v35];
            v37 = [v12 objectForKey:@"smallLightMapWidth"];
            v38 = [v12 objectForKey:@"smallLightMapHeight"];
            if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v40 = v33;
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
              }

              v41 = _NULogger;
              if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                *&buf[4] = v37;
                *&buf[12] = 2114;
                *&buf[14] = v38;
                _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Invalid Style Lightmap Dimensions: %{public}@, %{public}@, ignored", buf, 0x16u);
              }

              v39 = 0;
              v35 = 0;
              v37 = 0;
              v38 = 0;
            }

            else
            {
              v39 = v33;
            }

            [(_NUSemanticStyleProperties *)v14 setLightMapWidth:v37];
            [(_NUSemanticStyleProperties *)v14 setLightMapHeight:v38];
            v17 = v14;

            v21 = v82;
            v26 = v77;
          }

          else
          {
            [NUError errorWithCode:1 reason:@"Failed to get baseline exposure value" object:v12 underlyingError:v13];
            *a6 = v17 = 0;
            v21 = v82;
          }

          v24 = v81;
          goto LABEL_79;
        }

        *a6 = [NUError errorWithCode:1 reason:@"Failed to read GTC data" object:v24 underlyingError:v25];
        v13 = v25;
        v21 = v82;
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Invalid GTC data" object:v23 underlyingError:v13];
        v24 = v23;
        *a6 = v17 = 0;
      }

LABEL_79:

      goto LABEL_80;
    }

    v82 = v21;
    v25 = v13;
    goto LABEL_28;
  }

  [NUError missingError:@"Missing style data" object:v12];
  *a6 = v17 = 0;
LABEL_80:

LABEL_81:

  return v17;
}

+ (id)baselineExposureFromLegacyMetadata:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v27 = NUAssertLogger_3297();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "metadata != nil"];
      *buf = 138543362;
      v44 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_3297();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUSemanticStyleProperties baselineExposureFromLegacyMetadata:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 832, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "metadata != nil");
  }

  v6 = v5;
  v7 = [v5 objectForKeyedSubscript:@"smartStyleBaselineExposure"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
    }

    v8 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = v7;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Invalid baseline exposure value: %{public}@, ignored", buf, 0xCu);
    }
  }

  v9 = [v6 objectForKeyedSubscript:@"ispDGain"];
  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"ispDGainRangeExpansionFactor"];
    if (!v10)
    {
      [NUError missingError:@"Missing metadata property" object:@"ispDGain"];
      *a4 = v7 = 0;
LABEL_26:

      goto LABEL_27;
    }

    [v9 doubleValue];
    v12 = v11;
    [v10 doubleValue];
    v14 = v13;
    v15 = [v6 objectForKeyedSubscript:@"AverageLTM"];
    v16 = v15;
    v17 = 1.0;
    if (v15)
    {
      v18 = [v15 count];
      v7 = v18;
      if (!v18)
      {
        *a4 = [NUError invalidError:@"Invalid metadata property" object:@"AverageLTM"];
LABEL_25:

        goto LABEL_26;
      }

      if (v18 == 1)
      {
        v19 = 1.0;
        v20 = 0.0;
      }

      else
      {
        v20 = (v18 - 1);
        v19 = 1.0;
        v21 = 1;
        do
        {
          v22 = [v16 objectAtIndexedSubscript:v21];
          [v22 doubleValue];
          v24 = v23 / 65535.0;

          v19 = v19 * (v24 / (v21++ / v20));
        }

        while (v7 != v21);
      }

      v17 = pow(v19, 1.0 / v20);
    }

    v25 = v12 / (v14 * 256.0) * v17 * 1.41;
    if (v25 < 1.0)
    {
      v25 = 1.0;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
    goto LABEL_25;
  }

  [NUError missingError:@"Missing metadata property" object:@"ispDGain"];
  *a4 = v7 = 0;
LABEL_27:

LABEL_28:

  return v7;
}

+ (id)globalToneCurveDataFromCaptureMetadata:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v19 = NUAssertLogger_3297();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "gtcData != nil"];
      *buf = 138543362;
      v36 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_3297();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUSemanticStyleProperties globalToneCurveDataFromCaptureMetadata:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 801, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "gtcData != nil");
  }

  v6 = v5;
  if ([v5 length] < 2)
  {
    v7 = @"Invalid GTC metadata size";
LABEL_6:
    [NUError invalidError:v7 object:v6];
    *a4 = v10 = 0;
    goto LABEL_7;
  }

  v8 = [v6 bytes];
  LODWORD(v9) = *v8 - 1;
  if (v9 > 0x100)
  {
    v7 = @"Invalid GTC metadata count";
    goto LABEL_6;
  }

  v12 = v8;
  v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * (v9 & 0x3FFF)];
  v13 = [v10 mutableBytes];
  if (v9)
  {
    v14 = v13;
    v9 = v9;
    v15 = v12 + 1;
    do
    {
      v16 = *v15++;
      v17 = v16 / 65535.0;
      if (v17 <= 0.04045)
      {
        v18 = v17 / 12.92;
      }

      else
      {
        v18 = powf((v17 + 0.055) / 1.055, 2.4);
      }

      *v14++ = v18;
      --v9;
    }

    while (v9);
  }

LABEL_7:

  return v10;
}

+ (id)semanticStylePropertiesFromVideoMetadata:(id)a3 keyTime:(id *)a4 error:(id *)a5
{
  v7 = *a4;
  v5 = [a1 semanticStylePropertiesFromData:a3 fromVideo:1 keyTime:&v7 error:a5];

  return v5;
}

+ (id)semanticStylePropertiesFromImageMetadata:(id)a3 error:(id *)a4
{
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v4 = [a1 semanticStylePropertiesFromData:a3 fromVideo:0 keyTime:&v6 error:a4];

  return v4;
}

+ (id)semanticStylePropertiesFromData:(id)a3 fromVideo:(BOOL)a4 keyTime:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v119 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    v67 = NUAssertLogger_3297();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      *&buf[4] = v68;
      _os_log_error_impl(&dword_1C0184000, v67, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v70 = NUAssertLogger_3297();
    v71 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v71)
      {
        v81 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v82 = MEMORY[0x1E696AF00];
        v83 = v81;
        v84 = [v82 callStackSymbols];
        v85 = [v84 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v81;
        *&buf[12] = 2114;
        *&buf[14] = v85;
        _os_log_error_impl(&dword_1C0184000, v70, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v71)
    {
      v72 = [MEMORY[0x1E696AF00] callStackSymbols];
      v73 = [v72 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v73;
      _os_log_error_impl(&dword_1C0184000, v70, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUSemanticStyleProperties semanticStylePropertiesFromData:fromVideo:keyTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 625, @"Invalid parameter not satisfying: %s", v86, v87, v88, v89, "data != nil");
  }

  if (!a6)
  {
    v74 = NUAssertLogger_3297();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v75;
      _os_log_error_impl(&dword_1C0184000, v74, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v76 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v77 = NUAssertLogger_3297();
    v78 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
    if (v76)
    {
      if (v78)
      {
        v90 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v91 = MEMORY[0x1E696AF00];
        v92 = v90;
        v93 = [v91 callStackSymbols];
        v94 = [v93 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v90;
        *&buf[12] = 2114;
        *&buf[14] = v94;
        _os_log_error_impl(&dword_1C0184000, v77, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v78)
    {
      v79 = [MEMORY[0x1E696AF00] callStackSymbols];
      v80 = [v79 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v80;
      _os_log_error_impl(&dword_1C0184000, v77, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUSemanticStyleProperties semanticStylePropertiesFromData:fromVideo:keyTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUImageProperties.m", 626, @"Invalid parameter not satisfying: %s", v95, v96, v97, v98, "error != NULL");
  }

  v11 = v10;
  v116 = 0;
  v12 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:&v116];
  v13 = v116;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NUError errorWithCode:1 reason:@"Could not deserialized property list from data" object:v11 underlyingError:v13];
    *a6 = v22 = 0;
    goto LABEL_129;
  }

  v14 = [v12 objectForKeyedSubscript:@"0"];

  if (!v14)
  {
    *buf = *&a5->var0;
    *&buf[16] = a5->var3;
    v22 = [a1 legacySemanticStylePropertiesFromData:v11 fromVideo:v8 keyTime:buf error:a6];
    goto LABEL_129;
  }

  v15 = v13;
  v16 = objc_alloc_init(_NUSemanticStyleProperties);
  [(_NUSemanticStyleProperties *)v16 setIsVideo:v8];
  *buf = *&a5->var0;
  *&buf[16] = a5->var3;
  [(_NUSemanticStyleProperties *)v16 setKeyTime:buf];
  v17 = [v12 objectForKeyedSubscript:@"0"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v114 = v17;
    v113 = +[NUVersion versionWithPackedUInt32:](NUVersion, "versionWithPackedUInt32:", [v17 unsignedIntValue]);
    [(_NUSemanticStyleProperties *)v16 setVersion:?];
    v112 = [v12 objectForKeyedSubscript:@"1"];
    [(_NUSemanticStyleProperties *)v16 setStyleData:?];
    v18 = [v12 objectForKeyedSubscript:@"2"];
    if (v18)
    {
      objc_opt_class();
      v19 = v15;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = v18;
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
        }

        v21 = _NULogger;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v20;
          _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Invalid use float16 value: %{public}@, ignored", buf, 0xCu);
        }

        v18 = 0;
      }
    }

    else
    {
      v19 = v15;
    }

    -[_NUSemanticStyleProperties setStyleDataIsFloat16:](v16, "setStyleDataIsFloat16:", [v18 BOOLValue]);
    v23 = [v12 objectForKeyedSubscript:@"3"];
    v111 = v18;
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v115 = 0;
        v22 = [a1 globalToneCurveDataFromCaptureMetadata:v23 error:&v115];
        v15 = v115;

        if (v22)
        {
          v99 = v23;
          [(_NUSemanticStyleProperties *)v16 setGlobalToneCurveData:v22];

          v19 = v15;
LABEL_22:
          v24 = [v12 objectForKeyedSubscript:@"4"];
          v104 = v19;
          if (v24)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
              }

              v25 = _NULogger;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v24;
                _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Invalid baselineExposure value: %{public}@, ignored.", buf, 0xCu);
              }

              v24 = 0;
            }
          }

          v109 = v24;
          [v24 doubleValue];
          [(_NUSemanticStyleProperties *)v16 setBaselineExposure:?];
          v27 = [v12 objectForKey:@"5"];
          if (v27)
          {
            v28 = v27;
            objc_opt_class();
            v29 = v28;
            if (objc_opt_isKindOfClass())
            {
              v30 = v28;
LABEL_39:
              v108 = v30;
              [(_NUSemanticStyleProperties *)v16 setSceneType:?];
              if (v8)
              {
                v32 = &unk_1F3F822A8;
              }

              else
              {
                v32 = &unk_1F3F822C0;
              }

              [(_NUSemanticStyleProperties *)v16 setTuningType:v32];
              v33 = [v12 objectForKey:@"b"];
              if (v33)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (_NULogOnceToken != -1)
                  {
                    dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                  }

                  v34 = _NULogger;
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = v33;
                    _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Invalid Style SRL Curve Parameter: %{public}@, ignored", buf, 0xCu);
                  }

                  v33 = 0;
                }
              }

              v107 = v33;
              [(_NUSemanticStyleProperties *)v16 setSubjectRelightingValue:v33];
              v35 = [v12 objectForKey:@"6"];
              if (v35)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (_NULogOnceToken != -1)
                  {
                    dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                  }

                  v36 = _NULogger;
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = v35;
                    _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Invalid Style Stats: %{public}@, ignored", buf, 0xCu);
                  }

                  v35 = 0;
                }
              }

              [(_NUSemanticStyleProperties *)v16 setStats:v35];
              v37 = [v12 objectForKey:@"c"];
              if (v37)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v38 = v37;
                  if (_NULogOnceToken != -1)
                  {
                    dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                  }

                  v39 = _NULogger;
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = v38;
                    _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Invalid Style Lightmap: %{public}@, ignored", buf, 0xCu);
                  }

                  v37 = 0;
                }
              }

              v106 = v35;
              [(_NUSemanticStyleProperties *)v16 setLightMapData:v37];
              v40 = [v12 objectForKey:@"d"];
              if (v40)
              {
                v41 = v40;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v42 = v41;
                }

                else
                {
                  v43 = v37;
                  if (_NULogOnceToken != -1)
                  {
                    dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                  }

                  v44 = _NULogger;
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = v41;
                    _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Invalid Style Linear Lightmap: %{public}@, ignored", buf, 0xCu);
                  }

                  v42 = 0;
                  v37 = v43;
                }
              }

              else
              {
                v42 = 0;
              }

              v110 = v42;
              [(_NUSemanticStyleProperties *)v16 setLinearLightMapData:?];
              v45 = [v12 objectForKey:@"e"];
              v46 = [v12 objectForKey:@"f"];
              if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v47 = v37;
                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                }

                v48 = _NULogger;
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  *&buf[4] = v45;
                  *&buf[12] = 2114;
                  *&buf[14] = v46;
                  _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Invalid Style Lightmap Dimensions: %{public}@, %{public}@, ignored", buf, 0x16u);
                }

                v46 = 0;
                v45 = 0;
                v110 = 0;
                v37 = 0;
              }

              [(_NUSemanticStyleProperties *)v16 setLightMapWidth:v45];
              v103 = v46;
              [(_NUSemanticStyleProperties *)v16 setLightMapHeight:v46];
              v49 = [v12 objectForKey:@"h"];
              if (v49)
              {
                v50 = v49;
                objc_opt_class();
                v51 = v50;
                if (objc_opt_isKindOfClass())
                {
                  v52 = v50;
                }

                else
                {
                  v53 = v37;
                  if (_NULogOnceToken != -1)
                  {
                    dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                  }

                  v54 = _NULogger;
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = v51;
                    _os_log_error_impl(&dword_1C0184000, v54, OS_LOG_TYPE_ERROR, "Invalid Style baseGain Parameter: %{public}@, ignored", buf, 0xCu);
                  }

                  v52 = 0;
                  v37 = v53;
                }
              }

              else
              {
                v52 = 0;
              }

              v102 = v52;
              [(_NUSemanticStyleProperties *)v16 setBaseGain:?];
              v55 = [v12 objectForKey:@"i"];
              v105 = v37;
              if (v55)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (_NULogOnceToken != -1)
                  {
                    dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                  }

                  v56 = _NULogger;
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = v55;
                    _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "Invalid Style Linear Encoding Parameters: %{public}@, ignored", buf, 0xCu);
                  }

                  v55 = 0;
                }
              }

              v57 = [v55 objectForKey:@"Gain"];
              v58 = [v55 objectForKey:@"OriginalRangeMin"];
              v59 = [v55 objectForKey:@"OriginalRangeMax"];
              v60 = v57;
              if (v57 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v59 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                }

                v61 = _NULogger;
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  *&buf[4] = v57;
                  *&buf[12] = 2114;
                  *&buf[14] = v58;
                  *&buf[22] = 2114;
                  v118 = v59;
                  _os_log_error_impl(&dword_1C0184000, v61, OS_LOG_TYPE_ERROR, "Invalid Style Linear Encoding Parameters: %{public}@, %{public}@, %{public}@, ignored", buf, 0x20u);
                }

                v60 = 0;
                v58 = 0;
                v59 = 0;
              }

              [(_NUSemanticStyleProperties *)v16 setLinearGain:v60];
              v101 = v58;
              [(_NUSemanticStyleProperties *)v16 setLinearRangeMin:v58];
              v100 = v59;
              [(_NUSemanticStyleProperties *)v16 setLinearRangeMax:v59];
              v62 = [v12 objectForKey:@"j"];
              if (v62)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (_NULogOnceToken != -1)
                  {
                    dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                  }

                  v63 = _NULogger;
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    *&buf[4] = v62;
                    _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "Invalid Style Face Based Global Exposure Boost Ratio: %{public}@, ignored", buf, 0xCu);
                  }

                  v62 = 0;
                }
              }

              [(_NUSemanticStyleProperties *)v16 setFaceBasedGlobalExposureBoostRatio:v62];
              v64 = [v12 objectForKey:@"7"];
              if (v64 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
                }

                v65 = _NULogger;
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = v64;
                  _os_log_error_impl(&dword_1C0184000, v65, OS_LOG_TYPE_ERROR, "Invalid Extended Style Stats: %{public}@, ignored", buf, 0xCu);
                }

                v15 = v104;

                v64 = 0;
              }

              else
              {
                v15 = v104;
              }

              [(_NUSemanticStyleProperties *)v16 setExtendedStats:v64];
              v22 = v16;

              v17 = v114;
              v23 = v99;
              goto LABEL_127;
            }

            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
            }

            v31 = _NULogger;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v29;
              _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Invalid scene type: %{public}@, ignored", buf, 0xCu);
            }
          }

          v30 = 0;
          goto LABEL_39;
        }

        v26 = [NUError errorWithCode:1 reason:@"Failed to read GTC data" object:v23 underlyingError:v15];
      }

      else
      {
        v15 = v19;
        v26 = [NUError errorWithCode:1 reason:@"Invalid GTC data" object:v23 underlyingError:v19];
        v22 = 0;
      }

      *a6 = v26;
      v17 = v114;
LABEL_127:

      goto LABEL_128;
    }

    v99 = 0;
    goto LABEL_22;
  }

  [NUError missingError:@"Invalid style version" object:v12];
  *a6 = v22 = 0;
LABEL_128:

  v13 = v15;
LABEL_129:

  return v22;
}

@end