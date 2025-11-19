@interface CIFilter(DataAdditions)
+ (id)_dataExtractionOverrrides;
+ (id)extractDataToDictionary:()DataAdditions dataExtractor:options:context:colorSpace:error:;
@end

@implementation CIFilter(DataAdditions)

+ (id)extractDataToDictionary:()DataAdditions dataExtractor:options:context:colorSpace:error:
{
  v113 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (!v14)
  {
    v29 = NUAssertLogger_20556();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v110 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_20556();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        v67 = [v65 callStackSymbols];
        v68 = [v67 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v110 = v64;
        v111 = 2114;
        v112 = v68;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v110 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[CIFilter(DataAdditions) extractDataToDictionary:dataExtractor:options:context:colorSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/CoreImageDataAdditions.m", 69, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "image != nil");
  }

  if (!v15)
  {
    v36 = NUAssertLogger_20556();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "extractor != nil"];
      *buf = 138543362;
      v110 = v37;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v39 = NUAssertLogger_20556();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v40)
      {
        v73 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v74 = MEMORY[0x1E696AF00];
        v75 = v73;
        v76 = [v74 callStackSymbols];
        v77 = [v76 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v110 = v73;
        v111 = 2114;
        v112 = v77;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      v41 = [MEMORY[0x1E696AF00] callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v110 = v42;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[CIFilter(DataAdditions) extractDataToDictionary:dataExtractor:options:context:colorSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/CoreImageDataAdditions.m", 70, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "extractor != nil");
  }

  v18 = v17;
  v19 = [a1 _dataExtractionOverrrides];
  v20 = [v19 objectForKeyedSubscript:v15];
  v21 = v20;
  if (v20)
  {
    v22 = NSSelectorFromString(v20);
    if (!v22)
    {
      v43 = NUAssertLogger_20556();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad override for %@: cannot find selector %@", v15, v21];
        *buf = 138543362;
        v110 = v44;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v46 = NUAssertLogger_20556();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      if (v45)
      {
        if (v47)
        {
          v82 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v83 = MEMORY[0x1E696AF00];
          v84 = v82;
          v85 = [v83 callStackSymbols];
          v86 = [v85 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v110 = v82;
          v111 = 2114;
          v112 = v86;
          _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v47)
      {
        v48 = [MEMORY[0x1E696AF00] callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v110 = v49;
        _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("+[CIFilter(DataAdditions) extractDataToDictionary:dataExtractor:options:context:colorSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/CoreImageDataAdditions.m", 77, @"Bad override for %@: cannot find selector %@", v87, v88, v89, v90, v15);
    }

    v23 = v22;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v50 = NUAssertLogger_20556();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad override for %@: not implemented %@", v15, v21];
        *buf = 138543362;
        v110 = v51;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v53 = NUAssertLogger_20556();
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
      if (v52)
      {
        if (v54)
        {
          v91 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v92 = MEMORY[0x1E696AF00];
          v93 = v91;
          v94 = [v92 callStackSymbols];
          v95 = [v94 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v110 = v91;
          v111 = 2114;
          v112 = v95;
          _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v54)
      {
        v55 = [MEMORY[0x1E696AF00] callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v110 = v56;
        _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("+[CIFilter(DataAdditions) extractDataToDictionary:dataExtractor:options:context:colorSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/CoreImageDataAdditions.m", 78, @"Bad override for %@: not implemented %@", v96, v97, v98, v99, v15);
    }

    v24 = [a1 methodForSelector:v23];
    if (!v24)
    {
      v57 = NUAssertLogger_20556();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad override for %@: cannot find IMP %@", v15, v21];
        *buf = 138543362;
        v110 = v58;
        _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v60 = NUAssertLogger_20556();
      v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
      if (v59)
      {
        if (v61)
        {
          v100 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v101 = MEMORY[0x1E696AF00];
          v102 = v100;
          v103 = [v101 callStackSymbols];
          v104 = [v103 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v110 = v100;
          v111 = 2114;
          v112 = v104;
          _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v61)
      {
        v62 = [MEMORY[0x1E696AF00] callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v110 = v63;
        _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("+[CIFilter(DataAdditions) extractDataToDictionary:dataExtractor:options:context:colorSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/CoreImageDataAdditions.m", 81, @"Bad override for %@: cannot find IMP %@", v105, v106, v107, v108, v15);
    }

    v25 = v24(a1, v23, v14, v15, v16, v18, a7, a8);
  }

  else
  {
    v26 = [MEMORY[0x1E695F648] filterWithName:v15];
    v27 = v26;
    if (v26)
    {
      v25 = [v26 extractDataToDictionary:v14 options:v16 context:v18 colorSpace:a7 error:a8];
    }

    else if (a8)
    {
      [NUError missingError:@"unknown extractor name" object:v15];
      *a8 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

+ (id)_dataExtractionOverrrides
{
  if (_dataExtractionOverrrides_onceToken != -1)
  {
    dispatch_once(&_dataExtractionOverrrides_onceToken, &__block_literal_global_20595);
  }

  v1 = _dataExtractionOverrrides_registry;

  return v1;
}

@end