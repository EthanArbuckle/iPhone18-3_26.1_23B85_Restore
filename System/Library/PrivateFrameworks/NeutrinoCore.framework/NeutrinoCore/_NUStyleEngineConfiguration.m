@interface _NUStyleEngineConfiguration
+ (CGSize)coefficientTextureSizeForConfigurationDictionary:(id)a3;
+ (CGSize)coefficientTextureSizeForStyleEngineConfiguration:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)coefficientPixelBufferSize;
- (BOOL)matchesConfiguration:(id)a3;
- (CGSize)coefficientTextureSize;
- (CGSize)thumbnailSize;
- (NSDictionary)configurationDictionary;
- (_NUStyleEngineConfiguration)init;
- (_NUStyleEngineConfiguration)initWithConfigurationDictionary:(id)a3;
- (_NUStyleEngineConfiguration)initWithStyleEngineConfiguration:(id)a3;
- (unint64_t)coefficientBufferSize;
@end

@implementation _NUStyleEngineConfiguration

- ($0AC6E346AE4835514AAA8AC86D8F4844)coefficientPixelBufferSize
{
  [MEMORY[0x1E6991738] coefficientPixelBufferSizeForConfiguration:self->_styleEngineConfiguration float16:{-[_NUStyleEngineConfiguration usesFloat16](self, "usesFloat16")}];
  v3 = v2;
  v5 = v4;
  result.var1 = v5;
  result.var0 = v3;
  return result;
}

- (unint64_t)coefficientBufferSize
{
  v3 = [MEMORY[0x1E6991738] coefficientCountForConfiguration:self->_styleEngineConfiguration];
  v4 = [(_NUStyleEngineConfiguration *)self usesFloat16];
  v5 = 1;
  if (!v4)
  {
    v5 = 2;
  }

  return v3 << v5;
}

- (CGSize)thumbnailSize
{
  [(CMIStyleEngineConfiguration *)self->_styleEngineConfiguration thumbnailSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)coefficientTextureSize
{
  v2 = MEMORY[0x1E6991738];
  styleEngineConfiguration = self->_styleEngineConfiguration;
  v4 = [(CMIStyleEngineConfiguration *)styleEngineConfiguration outputCoefficientsF16];

  [v2 coefficientPixelBufferSizeForConfiguration:styleEngineConfiguration float16:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (BOOL)matchesConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(_NUStyleEngineConfiguration *)self styleEngineConfiguration];
  v6 = [v5 linearSystemType];
  v7 = [v4 styleEngineConfiguration];
  v8 = [v7 linearSystemType];

  if (v6 != v8 || (-[_NUStyleEngineConfiguration styleEngineConfiguration](self, "styleEngineConfiguration"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 linearSystemOrder], objc_msgSend(v4, "styleEngineConfiguration"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "linearSystemOrder"), v11, v9, v10 != v12) || (-[_NUStyleEngineConfiguration styleEngineConfiguration](self, "styleEngineConfiguration"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "linearSystemSolver"), objc_msgSend(v4, "styleEngineConfiguration"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "linearSystemSolver"), v15, v13, v14 != v16))
  {
LABEL_9:
    v27 = 0;
    goto LABEL_10;
  }

  v17 = [(_NUStyleEngineConfiguration *)self styleEngineConfiguration];
  [v17 thumbnailSize];
  v19 = v18;
  v21 = v20;
  v22 = [v4 styleEngineConfiguration];
  [v22 thumbnailSize];
  v24 = v23;
  v26 = v25;

  v27 = 0;
  if (v19 == v24 && v21 == v26)
  {
    v28 = [(_NUStyleEngineConfiguration *)self styleEngineConfiguration];
    v29 = [v28 weightPlaneCount];
    v30 = [v4 styleEngineConfiguration];
    v31 = [v30 weightPlaneCount];

    if (v29 == v31)
    {
      v32 = [(_NUStyleEngineConfiguration *)self styleEngineConfiguration];
      [v32 spotlightCount];
      v34 = v33;
      v35 = [v4 styleEngineConfiguration];
      [v35 spotlightCount];
      v37 = vmvn_s8(vceq_s32(v34, v36));
      v38 = vpmax_u32(v37, v37).u32[0];

      if ((v38 & 0x80000000) == 0)
      {
        v39 = [(_NUStyleEngineConfiguration *)self styleEngineConfiguration];
        v40 = [v39 inputCoefficientsF16];
        v41 = [v4 styleEngineConfiguration];
        v42 = [v41 inputCoefficientsF16];

        if (v40 == v42)
        {
          v44 = [(_NUStyleEngineConfiguration *)self styleEngineConfiguration];
          v45 = [v44 outputCoefficientsF16];
          v46 = [v4 styleEngineConfiguration];
          v47 = v45 ^ [v46 outputCoefficientsF16];

          v27 = v47 ^ 1;
          goto LABEL_10;
        }
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v27;
}

- (NSDictionary)configurationDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_usage forKeyedSubscript:@"usage"];
  v4 = MEMORY[0x1E696AD98];
  [(CMIStyleEngineConfiguration *)self->_styleEngineConfiguration thumbnailSize];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"thumbnailWidth"];

  v6 = MEMORY[0x1E696AD98];
  [(CMIStyleEngineConfiguration *)self->_styleEngineConfiguration thumbnailSize];
  v8 = [v6 numberWithDouble:v7];
  [v3 setObject:v8 forKeyedSubscript:@"thumbnailHeight"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CMIStyleEngineConfiguration linearSystemType](self->_styleEngineConfiguration, "linearSystemType")}];
  [v3 setObject:v9 forKeyedSubscript:@"linearSystemType"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CMIStyleEngineConfiguration linearSystemOrder](self->_styleEngineConfiguration, "linearSystemOrder")}];
  [v3 setObject:v10 forKeyedSubscript:@"linearSystemOrder"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CMIStyleEngineConfiguration linearSystemSolver](self->_styleEngineConfiguration, "linearSystemSolver")}];
  [v3 setObject:v11 forKeyedSubscript:@"linearSystemSolver"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CMIStyleEngineConfiguration weightPlaneCount](self->_styleEngineConfiguration, "weightPlaneCount")}];
  [v3 setObject:v12 forKeyedSubscript:@"weightPlaneCount"];

  [(CMIStyleEngineConfiguration *)self->_styleEngineConfiguration spotlightCount];
  v29 = v13;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
  [v3 setObject:v15 forKeyedSubscript:@"spotlightCountX"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v29];
  [v3 setObject:v16 forKeyedSubscript:@"spotlightCountY"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[CMIStyleEngineConfiguration inputCoefficientsF16](self->_styleEngineConfiguration, "inputCoefficientsF16")}];
  [v3 setObject:v17 forKeyedSubscript:@"useFloat16"];

  [(CMIStyleEngineConfiguration *)self->_styleEngineConfiguration linearSystemPriorMatrix];
  v30[0] = v18;
  v30[1] = v19;
  v30[2] = v20;
  v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v30 length:48];
  [v3 setObject:v21 forKeyedSubscript:@"priorMatrix"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[CMIStyleEngineConfiguration createAndSolveGlobalLinearSystem](self->_styleEngineConfiguration, "createAndSolveGlobalLinearSystem")}];
  [v3 setObject:v22 forKeyedSubscript:@"createAndSolveGlobalLinearSystem"];

  v23 = MEMORY[0x1E696AD98];
  [(CMIStyleEngineConfiguration *)self->_styleEngineConfiguration globalLinearSystemMixFactor];
  v24 = [v23 numberWithFloat:?];
  [v3 setObject:v24 forKeyedSubscript:@"globalLinearSystemMixFactor"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[CMIStyleEngineConfiguration useBicubicIntegration](self->_styleEngineConfiguration, "useBicubicIntegration")}];
  [v3 setObject:v25 forKeyedSubscript:@"useBicubicIntegration"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[CMIStyleEngineConfiguration applySyntheticNoise](self->_styleEngineConfiguration, "applySyntheticNoise")}];
  [v3 setObject:v26 forKeyedSubscript:@"applySyntheticNoise"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[CMIStyleEngineConfiguration applyDithering](self->_styleEngineConfiguration, "applyDithering")}];
  [v3 setObject:v27 forKeyedSubscript:@"applyDithering"];

  return v3;
}

- (_NUStyleEngineConfiguration)initWithConfigurationDictionary:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v31 = NUAssertLogger_30110();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "config != nil"];
      *buf = 138543362;
      v66 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_30110();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v45;
        v67 = 2114;
        v68 = v49;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngineConfiguration initWithConfigurationDictionary:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2451, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "config != nil");
  }

  v5 = v4;
  v64.receiver = self;
  v64.super_class = _NUStyleEngineConfiguration;
  v6 = [(_NUStyleEngineConfiguration *)&v64 init];
  v7 = objc_alloc_init(MEMORY[0x1E6991730]);
  styleEngineConfiguration = v6->_styleEngineConfiguration;
  v6->_styleEngineConfiguration = v7;

  v9 = [v5 objectForKeyedSubscript:@"thumbnailWidth"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v5 objectForKeyedSubscript:@"thumbnailHeight"];
  v12 = [v11 unsignedIntegerValue];

  if (!v10 || !v12)
  {
    v38 = NUAssertLogger_30110();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail size"];
      *buf = 138543362;
      v66 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_30110();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v54;
        v67 = 2114;
        v68 = v58;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      v43 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngineConfiguration initWithConfigurationDictionary:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2456, @"Missing thumbnail size", v59, v60, v61, v62, v63);
  }

  [(CMIStyleEngineConfiguration *)v6->_styleEngineConfiguration setThumbnailSize:v10, v12];
  v13 = [v5 objectForKeyedSubscript:@"linearSystemType"];
  -[CMIStyleEngineConfiguration setLinearSystemType:](v6->_styleEngineConfiguration, "setLinearSystemType:", [v13 unsignedIntegerValue]);

  v14 = [v5 objectForKeyedSubscript:@"linearSystemOrder"];
  -[CMIStyleEngineConfiguration setLinearSystemOrder:](v6->_styleEngineConfiguration, "setLinearSystemOrder:", [v14 unsignedIntegerValue]);

  v15 = [v5 objectForKeyedSubscript:@"linearSystemSolver"];
  -[CMIStyleEngineConfiguration setLinearSystemSolver:](v6->_styleEngineConfiguration, "setLinearSystemSolver:", [v15 unsignedIntegerValue]);

  v16 = [v5 objectForKeyedSubscript:@"weightPlaneCount"];
  -[CMIStyleEngineConfiguration setWeightPlaneCount:](v6->_styleEngineConfiguration, "setWeightPlaneCount:", [v16 unsignedIntValue]);

  v17 = [v5 objectForKeyedSubscript:@"spotlightCountX"];
  v18 = [v17 unsignedIntValue];
  v19 = [v5 objectForKeyedSubscript:@"spotlightCountY"];
  -[CMIStyleEngineConfiguration setSpotlightCount:](v6->_styleEngineConfiguration, "setSpotlightCount:", COERCE_DOUBLE(__PAIR64__([v19 unsignedIntValue], v18)));

  v20 = [v5 objectForKeyedSubscript:@"useFloat16"];
  -[CMIStyleEngineConfiguration setInputCoefficientsF16:](v6->_styleEngineConfiguration, "setInputCoefficientsF16:", [v20 BOOLValue]);

  v21 = [v5 objectForKeyedSubscript:@"useFloat16"];
  -[CMIStyleEngineConfiguration setOutputCoefficientsF16:](v6->_styleEngineConfiguration, "setOutputCoefficientsF16:", [v21 BOOLValue]);

  v22 = [v5 objectForKeyedSubscript:@"priorMatrix"];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 bytes];
    [(CMIStyleEngineConfiguration *)v6->_styleEngineConfiguration setLinearSystemPriorMatrix:*v24, v24[2], v24[4]];
  }

  v25 = [v5 objectForKeyedSubscript:@"createAndSolveGlobalLinearSystem"];
  -[CMIStyleEngineConfiguration setCreateAndSolveGlobalLinearSystem:](v6->_styleEngineConfiguration, "setCreateAndSolveGlobalLinearSystem:", [v25 BOOLValue]);

  v26 = [v5 objectForKeyedSubscript:@"globalLinearSystemMixFactor"];
  [v26 floatValue];
  [(CMIStyleEngineConfiguration *)v6->_styleEngineConfiguration setGlobalLinearSystemMixFactor:?];

  v27 = [v5 objectForKeyedSubscript:@"useBicubicIntegration"];
  -[CMIStyleEngineConfiguration setUseBicubicIntegration:](v6->_styleEngineConfiguration, "setUseBicubicIntegration:", [v27 BOOLValue]);

  v28 = [v5 objectForKeyedSubscript:@"applySyntheticNoise"];
  -[CMIStyleEngineConfiguration setApplySyntheticNoise:](v6->_styleEngineConfiguration, "setApplySyntheticNoise:", [v28 BOOLValue]);

  v29 = [v5 objectForKeyedSubscript:@"applyDithering"];
  -[CMIStyleEngineConfiguration setApplyDithering:](v6->_styleEngineConfiguration, "setApplyDithering:", [v29 BOOLValue]);

  return v6;
}

- (_NUStyleEngineConfiguration)initWithStyleEngineConfiguration:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_30110();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "configuration != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_30110();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUStyleEngineConfiguration initWithStyleEngineConfiguration:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2444, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "configuration != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = _NUStyleEngineConfiguration;
  v6 = [(_NUStyleEngineConfiguration *)&v25 init];
  styleEngineConfiguration = v6->_styleEngineConfiguration;
  v6->_styleEngineConfiguration = v5;

  return v6;
}

- (_NUStyleEngineConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _NUStyleEngineConfiguration;
  v2 = [(_NUStyleEngineConfiguration *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E6991730]);
  styleEngineConfiguration = v2->_styleEngineConfiguration;
  v2->_styleEngineConfiguration = v3;

  return v2;
}

+ (CGSize)coefficientTextureSizeForStyleEngineConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStyleEngineConfiguration:v4];

  [v5 coefficientTextureSize];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)coefficientTextureSizeForConfigurationDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithConfigurationDictionary:v4];

  [v5 coefficientTextureSize];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end