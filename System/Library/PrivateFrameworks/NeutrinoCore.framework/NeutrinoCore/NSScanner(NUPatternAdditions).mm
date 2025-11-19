@interface NSScanner(NUPatternAdditions)
- (id)substringFromScanLocation;
- (uint64_t)scanChoicePattern:()NUPatternAdditions error:;
- (uint64_t)scanGroupPattern:()NUPatternAdditions error:;
- (uint64_t)scanListPattern:()NUPatternAdditions error:;
- (uint64_t)scanPattern:()NUPatternAdditions error:;
- (uint64_t)scanPatterns:()NUPatternAdditions from:to:delimiter:error:;
- (uint64_t)scanRepeatPattern:()NUPatternAdditions error:;
- (uint64_t)scanTokenPattern:()NUPatternAdditions error:;
@end

@implementation NSScanner(NUPatternAdditions)

- (id)substringFromScanLocation
{
  v2 = [a1 scanLocation];
  v3 = [a1 string];
  v4 = [v3 substringFromIndex:v2];

  return v4;
}

- (uint64_t)scanRepeatPattern:()NUPatternAdditions error:
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a3 || !*a3)
  {
    v20 = NUAssertLogger_5128();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pattern != NULL && *pattern != nil"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5128();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v27;
        v54 = 2114;
        v55 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanRepeatPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 1102, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "pattern != NULL && *pattern != nil");
  }

  if (!a4)
  {
    v36 = NUAssertLogger_5128();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_5128();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v43;
        v54 = 2114;
        v55 = v47;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      v41 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanRepeatPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 1103, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = *a3;
  v8 = [a1 scanLocation];
  if (![a1 scanString:@"?" intoString:0])
  {
    if ([a1 scanString:@"*" intoString:0])
    {
      v12 = [[NURepeatPattern alloc] initWithPattern:v7 minCount:0];
LABEL_8:
      v13 = *a3;
      *a3 = v12;

LABEL_9:
      v9 = 1;
      goto LABEL_21;
    }

    if ([a1 scanString:@"+" intoString:0])
    {
      v9 = 1;
      v14 = [[NURepeatPattern alloc] initWithPattern:v7 minCount:1];
      v15 = *a3;
      *a3 = v14;

      goto LABEL_21;
    }

    if (![a1 scanString:@"<" intoString:0])
    {
      goto LABEL_9;
    }

    *buf = 0;
    if ([a1 scanInteger:buf])
    {
      if ([a1 scanString:@" intoString:{", 0}])
      {
        v52 = 0;
        if ([a1 scanInteger:&v52] && objc_msgSend(a1, "scanString:intoString:", @">", 0))
        {
          v16 = [NURepeatPattern alloc];
          v12 = [(NURepeatPattern *)v16 initWithPattern:v7 minCount:*buf maxCount:v52];
          goto LABEL_8;
        }
      }

      else if ([a1 scanString:@">" intoString:0])
      {
        v17 = [NURepeatPattern alloc];
        v12 = [(NURepeatPattern *)v17 initWithPattern:v7 count:*buf];
        goto LABEL_8;
      }
    }

    [a1 setScanLocation:v8];
    v18 = [a1 substringFromScanLocation];
    *a4 = [NUError invalidError:@"Malformed repeat pattern" object:v18];

    v9 = 0;
    goto LABEL_21;
  }

  v9 = 1;
  v10 = [[NURepeatPattern alloc] initWithPattern:v7 minCount:0 maxCount:1];
  v11 = *a3;
  *a3 = v10;

LABEL_21:
  return v9;
}

- (uint64_t)scanPatterns:()NUPatternAdditions from:to:delimiter:error:
{
  v73 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!a3 || *a3)
  {
    v31 = NUAssertLogger_5128();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "patterns != NULL && *patterns == nil"];
      *buf = 138543362;
      v70 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_5128();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v38;
        v71 = 2114;
        v72 = v42;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanPatterns:from:to:delimiter:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 1038, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "patterns != NULL && *patterns == nil");
  }

  if (!a7)
  {
    v47 = NUAssertLogger_5128();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v70 = v48;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_5128();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v70 = v54;
        v71 = 2114;
        v72 = v58;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v70 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanPatterns:from:to:delimiter:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 1039, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "error != NULL");
  }

  v15 = v14;
  v16 = [a1 scanLocation];
  if ([a1 scanString:v12 intoString:0])
  {
    v64 = v16;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v67 = 0;
    v68 = 0;
    v18 = [a1 scanPattern:&v68 error:&v67];
    v19 = v68;
    v20 = v67;
    if (v18)
    {
      v63 = v13;
      if (v19)
      {
        [v17 addObject:v19];
        if ([a1 scanString:v15 intoString:0])
        {
          while (1)
          {
            v21 = v20;
            v22 = v19;
            v65 = 0;
            v66 = 0;
            v23 = [a1 scanPattern:&v66 error:&v65];
            v19 = v66;

            v20 = v65;
            if ((v23 & 1) == 0)
            {
              v29 = [a1 substringFromScanLocation];
              *a7 = [NUError errorWithCode:2 reason:@"Invalid nested pattern" object:v29 underlyingError:v20];

              [a1 setScanLocation:v64];
              goto LABEL_21;
            }

            if (!v19)
            {
              break;
            }

            [v17 addObject:v19];
            if (([a1 scanString:v15 intoString:0] & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v30 = [a1 substringFromScanLocation];
          *a7 = [NUError invalidError:@"Missing nested pattern after delimiter" object:v30];

          [a1 setScanLocation:v64];
LABEL_21:
          v25 = 0;
          v13 = v63;
          goto LABEL_17;
        }
      }

LABEL_11:
      v13 = v63;
      if ([a1 scanString:v63 intoString:0])
      {
        v24 = v17;
        *a3 = v17;

        v25 = 1;
LABEL_17:

        goto LABEL_18;
      }

      v26 = [a1 substringFromScanLocation];
      v27 = [NUError invalidError:@"Missing end delimiter" object:v26];
    }

    else
    {
      v26 = [a1 substringFromScanLocation];
      v27 = [NUError errorWithCode:2 reason:@"Invalid nested pattern" object:v26 underlyingError:v20];
    }

    *a7 = v27;

    [a1 setScanLocation:v64];
    v25 = 0;
    goto LABEL_17;
  }

  v25 = 1;
LABEL_18:

  return v25;
}

- (uint64_t)scanChoicePattern:()NUPatternAdditions error:
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3)
  {
    v12 = NUAssertLogger_5128();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pattern != NULL && *pattern == nil"];
      *buf = 138543362;
      v47 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5128();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v19;
        v48 = 2114;
        v49 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanChoicePattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 1016, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "pattern != NULL && *pattern == nil");
  }

  if (!a4)
  {
    v28 = NUAssertLogger_5128();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_5128();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v35;
        v48 = 2114;
        v49 = v39;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanChoicePattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 1017, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v44 = 0;
  v45 = 0;
  v7 = [a1 scanPatterns:&v45 from:@"{" to:@"}" delimiter:@" error:{", &v44}];
  v8 = v45;
  v9 = v44;
  if (v7)
  {
    if (v8)
    {
      *a3 = [[NUChoicePattern alloc] initWithChoices:v8];
    }
  }

  else
  {
    v10 = [a1 substringFromScanLocation];
    *a4 = [NUError errorWithCode:2 reason:@"Invalid choice pattern" object:v10 underlyingError:v9];
  }

  return v7;
}

- (uint64_t)scanGroupPattern:()NUPatternAdditions error:
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3)
  {
    v12 = NUAssertLogger_5128();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pattern != NULL && *pattern == nil"];
      *buf = 138543362;
      v47 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5128();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v19;
        v48 = 2114;
        v49 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanGroupPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 994, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "pattern != NULL && *pattern == nil");
  }

  if (!a4)
  {
    v28 = NUAssertLogger_5128();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_5128();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v35;
        v48 = 2114;
        v49 = v39;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanGroupPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 995, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v44 = 0;
  v45 = 0;
  v7 = [a1 scanPatterns:&v45 from:@"(" to:@")" delimiter:@" error:{", &v44}];
  v8 = v45;
  v9 = v44;
  if (v7)
  {
    if (v8)
    {
      *a3 = [[NUGroupPattern alloc] initWithGroup:v8];
    }
  }

  else
  {
    v10 = [a1 substringFromScanLocation];
    *a4 = [NUError errorWithCode:2 reason:@"Invalid group pattern" object:v10 underlyingError:v9];
  }

  return v7;
}

- (uint64_t)scanListPattern:()NUPatternAdditions error:
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3)
  {
    v12 = NUAssertLogger_5128();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pattern != NULL && *pattern == nil"];
      *buf = 138543362;
      v47 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5128();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v19;
        v48 = 2114;
        v49 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanListPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 973, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "pattern != NULL && *pattern == nil");
  }

  if (!a4)
  {
    v28 = NUAssertLogger_5128();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_5128();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v35;
        v48 = 2114;
        v49 = v39;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanListPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 974, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v44 = 0;
  v45 = 0;
  v7 = [a1 scanPatterns:&v45 from:@"[" to:@"]" delimiter:@" error:{", &v44}];
  v8 = v45;
  v9 = v44;
  if (v7)
  {
    if (v8)
    {
      *a3 = [[NUListPattern alloc] initWithList:v8];
    }
  }

  else
  {
    v10 = [a1 substringFromScanLocation];
    *a4 = [NUError errorWithCode:2 reason:@"Invalid list pattern" object:v10 underlyingError:v9];
  }

  return v7;
}

- (uint64_t)scanTokenPattern:()NUPatternAdditions error:
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3)
  {
    v10 = NUAssertLogger_5128();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pattern != NULL && *pattern == nil"];
      *buf = 138543362;
      v44 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5128();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v17;
        v45 = 2114;
        v46 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanTokenPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 959, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "pattern != NULL && *pattern == nil");
  }

  if (!a4)
  {
    v26 = NUAssertLogger_5128();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_5128();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v33;
        v45 = 2114;
        v46 = v37;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanTokenPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 960, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v6 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v42 = 0;
  v7 = [a1 scanCharactersFromSet:v6 intoString:&v42];
  v8 = v42;

  if (v7)
  {
    *a3 = [[NUTokenPattern alloc] initWithToken:v8];
  }

  return 1;
}

- (uint64_t)scanPattern:()NUPatternAdditions error:
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3)
  {
    v15 = NUAssertLogger_5128();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pattern != NULL && *pattern == nil"];
      *v51 = 138543362;
      *&v51[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v51, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_5128();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *v51 = 138543618;
        *&v51[4] = v22;
        v52 = 2114;
        v53 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v51, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *v51 = 138543362;
      *&v51[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v51, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 921, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "pattern != NULL && *pattern == nil");
  }

  if (!a4)
  {
    v31 = NUAssertLogger_5128();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *v51 = 138543362;
      *&v51[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v51, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_5128();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *v51 = 138543618;
        *&v51[4] = v38;
        v52 = 2114;
        v53 = v42;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v51, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *v51 = 138543362;
      *&v51[4] = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v51, 0xCu);
    }

    _NUAssertFailHandler("[NSScanner(NUPatternAdditions) scanPattern:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUPattern.m", 922, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v50 = 0;
  v7 = [a1 scanListPattern:&v50 error:a4];
  v8 = v50;
  *v51 = v8;
  if (!v7)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
    v49 = 0;
    v11 = [a1 scanGroupPattern:&v49 error:a4];
    v8 = v49;
    *v51 = v8;
    if (!v11)
    {
      goto LABEL_15;
    }

    if (!v8)
    {
      v48 = 0;
      v12 = [a1 scanChoicePattern:&v48 error:a4];
      v8 = v48;
      *v51 = v8;
      if (!v12)
      {
        goto LABEL_15;
      }

      if (!v8)
      {
        v47 = 0;
        v13 = [a1 scanTokenPattern:&v47 error:a4];
        v8 = v47;
        *v51 = v8;
        if (!v13)
        {
          goto LABEL_15;
        }

        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v9 = [a1 scanRepeatPattern:v51 error:a4];
  v8 = *v51;
  if (!v9)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

LABEL_7:
  *a3 = v8;
  v10 = 1;
  v8 = *v51;
LABEL_16:

  return v10;
}

@end