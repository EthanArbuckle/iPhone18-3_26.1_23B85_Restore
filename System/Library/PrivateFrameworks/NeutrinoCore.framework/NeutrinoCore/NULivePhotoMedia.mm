@interface NULivePhotoMedia
- (NULivePhotoMedia)initWithImage:(id)image video:(id)video;
@end

@implementation NULivePhotoMedia

- (NULivePhotoMedia)initWithImage:(id)image video:(id)video
{
  v94 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  videoCopy = video;
  if (!imageCopy)
  {
    v13 = NUAssertLogger_2109();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v91 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_2109();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols = [v48 callStackSymbols];
        v51 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v47;
        v92 = 2114;
        v93 = v51;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NULivePhotoMedia initWithImage:video:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 428, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "image != nil");
  }

  v8 = videoCopy;
  if (!videoCopy)
  {
    v20 = NUAssertLogger_2109();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "video != nil"];
      *buf = 138543362;
      v91 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_2109();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols3 = [v57 callStackSymbols];
        v60 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v56;
        v92 = 2114;
        v93 = v60;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NULivePhotoMedia initWithImage:video:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 429, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "video != nil");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = NUAssertLogger_2109();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v28 stringWithFormat:@"Invalid parameter not kind of %@", v30];
      *buf = 138543362;
      v91 = v31;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_2109();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v66 = MEMORY[0x1E696AF00];
        v67 = v65;
        callStackSymbols5 = [v66 callStackSymbols];
        v69 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v65;
        v92 = 2114;
        v93 = v69;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    _NUAssertFailHandler("[NULivePhotoMedia initWithImage:video:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 430, @"Invalid parameter not kind of %@", v72, v73, v74, v75, v71);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = NUAssertLogger_2109();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = MEMORY[0x1E696AEC0];
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v38 stringWithFormat:@"Invalid parameter not kind of %@", v40];
      *buf = 138543362;
      v91 = v41;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_2109();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        v76 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v77 = MEMORY[0x1E696AF00];
        v78 = v76;
        callStackSymbols7 = [v77 callStackSymbols];
        v80 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v76;
        v92 = 2114;
        v93 = v80;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    _NUAssertFailHandler("[NULivePhotoMedia initWithImage:video:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 431, @"Invalid parameter not kind of %@", v83, v84, v85, v86, v82);
  }

  v88[0] = @"image";
  v88[1] = @"video";
  v89[0] = imageCopy;
  v89[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
  geometry = [imageCopy geometry];
  v87.receiver = self;
  v87.super_class = NULivePhotoMedia;
  v11 = [(_NUContainerMedia *)&v87 initWithContainerType:3 components:v9 geometry:geometry];

  return v11;
}

@end