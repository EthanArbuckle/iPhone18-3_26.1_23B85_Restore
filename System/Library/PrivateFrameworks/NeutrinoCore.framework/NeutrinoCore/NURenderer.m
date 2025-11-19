@interface NURenderer
+ (CGColorSpace)workingColorSpace;
+ (NURenderer)rendererWithMetalDevice:(id)a3 options:(id)a4;
+ (id)_renderContextOptionsWithOptions:(id)a3 nameSuffix:(id)a4;
+ (id)defaultRenderContextOptions;
+ (int)workingFormat;
- (BOOL)addCurrentRenderCompletionHandler:(id)a3;
- (NSString)description;
- (NSString)name;
- (NURenderer)init;
- (NURenderer)initWithCIContext:(id)a3 priority:(int64_t)a4;
- (id)imageForSurface:(id)a3 options:(id)a4;
- (id)renderDestinationForSurface:(id)a3;
- (id)renderImage:(id)a3 rect:(id *)a4 toDestination:(id)a5 atPoint:(id)a6 error:(id *)a7;
@end

@implementation NURenderer

- (id)renderDestinationForSurface:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = NUAssertLogger_23497();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != nil"];
      *buf = 138543362;
      v24 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_23497();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer renderDestinationForSurface:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 225, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "surface != nil");
  }

  v4 = v3;
  v5 = [v3 newRenderDestination];
  [v5 setLabel:@"NURenderer-surface"];

  return v5;
}

- (id)imageForSurface:(id)a3 options:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v10 = NUAssertLogger_23497();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "surface != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_23497();
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
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer imageForSurface:options:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 215, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "surface != nil");
  }

  v7 = v6;
  v8 = [MEMORY[0x1E695F658] imageWithIOSurface:objc_msgSend(v5 options:{"IOSurfaceRef"), v6}];

  return v8;
}

- (BOOL)addCurrentRenderCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CIContext *)self->_context clientCommandQueue];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 commandBuffer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__NURenderer_addCurrentRenderCompletionHandler___block_invoke;
    v9[3] = &unk_1E810B050;
    v10 = v4;
    [v7 addCompletedHandler:v9];
    [v7 commit];
  }

  return v6 != 0;
}

- (id)renderImage:(id)a3 rect:(id *)a4 toDestination:(id)a5 atPoint:(id)a6 error:(id *)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  v140 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  if (!a7)
  {
    v25 = NUAssertLogger_23497();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_23497();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v67 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v68 = MEMORY[0x1E696AF00];
        v69 = v67;
        v70 = [v68 callStackSymbols];
        v71 = [v70 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v67;
        *&buf[12] = 2114;
        *&buf[14] = v71;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer renderImage:rect:toDestination:atPoint:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 148, @"Invalid parameter not satisfying: %s", v72, v73, v74, v75, "error != NULL");
  }

  if (!v13)
  {
    v32 = NUAssertLogger_23497();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      *&buf[4] = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_23497();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v76 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v77 = MEMORY[0x1E696AF00];
        v78 = v76;
        v79 = [v77 callStackSymbols];
        v80 = [v79 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v76;
        *&buf[12] = 2114;
        *&buf[14] = v80;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer renderImage:rect:toDestination:atPoint:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 149, @"Invalid parameter not satisfying: %s", v81, v82, v83, v84, "image != nil");
  }

  if (var0 < 0)
  {
    v39 = NUAssertLogger_23497();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "point.x >= 0"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_23497();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        v85 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v86 = MEMORY[0x1E696AF00];
        v87 = v85;
        v88 = [v86 callStackSymbols];
        v89 = [v88 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v85;
        *&buf[12] = 2114;
        *&buf[14] = v89;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      v44 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer renderImage:rect:toDestination:atPoint:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 150, @"Invalid parameter not satisfying: %s", v90, v91, v92, v93, "point.x >= 0");
  }

  if (var1 < 0)
  {
    v46 = NUAssertLogger_23497();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "point.y >= 0"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v49 = NUAssertLogger_23497();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (v48)
    {
      if (v50)
      {
        v94 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v95 = MEMORY[0x1E696AF00];
        v96 = v94;
        v97 = [v95 callStackSymbols];
        v98 = [v97 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v94;
        *&buf[12] = 2114;
        *&buf[14] = v98;
        _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v50)
    {
      v51 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [v51 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v52;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer renderImage:rect:toDestination:atPoint:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 151, @"Invalid parameter not satisfying: %s", v99, v100, v101, v102, "point.y >= 0");
  }

  v15 = v14;
  v16 = a4->var1.var0 + var0;
  if (v16 > [v14 width])
  {
    v53 = NUAssertLogger_23497();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "point.x + rect.size.width <= (NSInteger)destination.width"];
      *buf = 138543362;
      *&buf[4] = v54;
      _os_log_error_impl(&dword_1C0184000, v53, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v56 = NUAssertLogger_23497();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
    if (v55)
    {
      if (v57)
      {
        v103 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v104 = MEMORY[0x1E696AF00];
        v105 = v103;
        v106 = [v104 callStackSymbols];
        v107 = [v106 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v103;
        *&buf[12] = 2114;
        *&buf[14] = v107;
        _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v57)
    {
      v58 = [MEMORY[0x1E696AF00] callStackSymbols];
      v59 = [v58 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v59;
      _os_log_error_impl(&dword_1C0184000, v56, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer renderImage:rect:toDestination:atPoint:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 152, @"Invalid parameter not satisfying: %s", v108, v109, v110, v111, "point.x + rect.size.width <= (NSInteger)destination.width");
  }

  v17 = a4->var1.var1 + var1;
  if (v17 > [v15 height])
  {
    v60 = NUAssertLogger_23497();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "point.y + rect.size.height <= (NSInteger)destination.height"];
      *buf = 138543362;
      *&buf[4] = v61;
      _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v63 = NUAssertLogger_23497();
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
    if (v62)
    {
      if (v64)
      {
        v112 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v113 = MEMORY[0x1E696AF00];
        v114 = v112;
        v115 = [v113 callStackSymbols];
        v116 = [v115 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v112;
        *&buf[12] = 2114;
        *&buf[14] = v116;
        _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v64)
    {
      v65 = [MEMORY[0x1E696AF00] callStackSymbols];
      v66 = [v65 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v66;
      _os_log_error_impl(&dword_1C0184000, v63, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer renderImage:rect:toDestination:atPoint:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 153, @"Invalid parameter not satisfying: %s", v117, v118, v119, v120, "point.y + rect.size.height <= (NSInteger)destination.height");
  }

  if (v15)
  {
    v18 = [v15 label];
    v19 = [v18 length];

    if (!v19)
    {
      [v15 setLabel:@"NURenderer-unnamed"];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v137 = __Block_byref_object_copy__23611;
    v138 = __Block_byref_object_dispose__23612;
    v139 = 0;
    v130 = 0;
    v131 = &v130;
    v132 = 0x3032000000;
    v133 = __Block_byref_object_copy__23611;
    v134 = __Block_byref_object_dispose__23612;
    v135 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NURenderer_renderImage_rect_toDestination_atPoint_error___block_invoke;
    block[3] = &unk_1E810B028;
    v124 = buf;
    block[4] = self;
    v122 = v13;
    v21 = a4->var1;
    v126 = a4->var0;
    v127 = v21;
    v128 = var0;
    v129 = var1;
    v123 = v15;
    v125 = &v130;
    dispatch_sync(queue, block);
    v22 = v131[5];
    if (v22)
    {
      *a7 = v22;
    }

    v23 = *(*&buf[8] + 40);

    _Block_object_dispose(&v130, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    [NUError failureError:@"nil CIRenderDestination" object:0];
    *a7 = v23 = 0;
  }

  return v23;
}

void __59__NURenderer_renderImage_rect_toDestination_atPoint_error___block_invoke(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!+[NUGlobalSettings logPeakRenderCIUsuage])
  {
    v20 = a1[5];
    v21 = *(a1[4] + 16);
    v22 = a1[9];
    v23 = a1[10];
    v24 = a1[11];
    v25 = a1[12];
    v26 = a1[6];
    v27 = a1[13];
    v28 = a1[14];
    v29 = *(a1[8] + 8);
    v34 = *(v29 + 40);
    v30 = [v21 startTaskToRender:v20 fromRect:v26 toDestination:&v34 atPoint:v22 error:{v23, v24, v25, v27, v28}];
    objc_storeStrong((v29 + 40), v34);
    v31 = *(a1[7] + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
LABEL_9:

    return;
  }

  [MEMORY[0x1E695F628] resetStatistics];
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = a1[9];
  v5 = a1[10];
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[6];
  v9 = a1[13];
  v10 = a1[14];
  v11 = *(a1[8] + 8);
  obj = *(v11 + 40);
  v12 = [v3 startTaskToRender:v2 fromRect:v8 toDestination:&obj atPoint:v4 error:{v5, v6, v7, v9, v10}];
  objc_storeStrong((v11 + 40), obj);
  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(*(a1[7] + 8) + 40);
  if (!v15)
  {
    return;
  }

  v16 = *(a1[8] + 8);
  v35 = *(v16 + 40);
  v17 = [v15 waitUntilCompletedAndReturnError:&v35];
  objc_storeStrong((v16 + 40), v35);

  if (!v17)
  {
    v33 = *(a1[7] + 8);
    v32 = *(v33 + 40);
    *(v33 + 40) = 0;
    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E695F628] peakNonVolatileSize];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_205);
  }

  v19 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v38 = vcvtd_n_f64_s64(v18, 0xAuLL) * 0.0009765625;
    _os_log_impl(&dword_1C0184000, v19, OS_LOG_TYPE_INFO, "++++ PEAK +++ %f Mb", buf, 0xCu);
  }
}

- (NSString)name
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NURenderer name]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 143, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NURenderer *)self name];
  v5 = [(NURenderer *)self context];
  v6 = [v5 workingFormat];
  v7 = [(NURenderer *)self context];
  v8 = [v3 stringWithFormat:@"%@ - fmt=%d, spc=%@", v4, v6, objc_msgSend(v7, "workingColorSpace")];

  return v8;
}

- (NURenderer)initWithCIContext:(id)a3 priority:(int64_t)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v22 = NUAssertLogger_23497();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      *buf = 138543362;
      v40 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_23497();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v29;
        v41 = 2114;
        v42 = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderer initWithCIContext:priority:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 121, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "context != nil");
  }

  v7 = v6;
  v38.receiver = self;
  v38.super_class = NURenderer;
  v8 = [(NURenderer *)&v38 init];
  context = v8->_context;
  v8->_context = v7;
  v10 = v7;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = v11;
  if (a4 > 3)
  {
    v13 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v13 = dword_1C03C2A60[a4];
  }

  v14 = dispatch_queue_attr_make_with_qos_class(v11, v13, 0);

  v15 = MEMORY[0x1E696AEC0];
  if (a4 > 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E8109988[a4];
  }

  v17 = v16;
  v18 = [v15 stringWithFormat:@"NURendererQueue-%@", v17];

  v19 = dispatch_queue_create([v18 UTF8String], v14);
  queue = v8->_queue;
  v8->_queue = v19;

  return v8;
}

- (NURenderer)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NURenderer init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderer.m", 116, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (id)_renderContextOptionsWithOptions:(id)a3 nameSuffix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 defaultRenderContextOptions];
  v9 = [v8 mutableCopy];
  v10 = [0 objectForKeyedSubscript:*MEMORY[0x1E695F850]];

  if (v10)
  {
    v11 = @"NULow%@";
  }

  else
  {
    v11 = @"NUHigh%@";
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, v7];

  [v9 setObject:v12 forKeyedSubscript:@"kCIContextName"];
  if (v6)
  {
    [v9 addEntriesFromDictionary:v6];
  }

  return v9;
}

+ (int)workingFormat
{
  v2 = +[NUGlobalSettings rendererUseHalfFloat];
  v3 = MEMORY[0x1E695F920];
  if (!v2)
  {
    v3 = MEMORY[0x1E695F8A8];
  }

  return *v3;
}

+ (CGColorSpace)workingColorSpace
{
  if (+[NUGlobalSettings rendererUseP3Linear])
  {
    +[NUColorSpace displayP3LinearColorSpace];
  }

  else
  {
    +[NUColorSpace sRGBLinearColorSpace];
  }
  v2 = ;
  v3 = [v2 CGColorSpace];

  return v3;
}

+ (id)defaultRenderContextOptions
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E695F868];
  v8[0] = [a1 workingColorSpace];
  v7[1] = *MEMORY[0x1E695F870];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a1, "workingFormat")}];
  v8[1] = v3;
  v7[2] = *MEMORY[0x1E695F7D8];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "allowClampToAlpha")}];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (NURenderer)rendererWithMetalDevice:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NUMetalRenderer alloc] initWithMetalDevice:v6 options:v5];

  return v7;
}

@end