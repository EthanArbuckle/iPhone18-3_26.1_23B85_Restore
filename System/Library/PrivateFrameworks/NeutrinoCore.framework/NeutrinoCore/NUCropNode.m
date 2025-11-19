@interface NUCropNode
- (BOOL)_canPropagateOriginalAuxiliaryData;
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3;
- (BOOL)canPropagateOriginalLivePhotoMetadataTrack;
- (BOOL)scaledCropOrigin:(CGPoint *)a3 error:(id *)a4;
- (CGPoint)scaleCropOriginForOriginalVideoSize:(CGSize)a3 originalCleanAperture:(CGRect)a4 renderScale:(double)a5 inputExtent:(id *)a6;
- (NUCropNode)initWithRect:(id *)a3 input:(id)a4;
- (NUCropNode)initWithRect:(id *)a3 input:(id)a4 resetCleanAperture:(BOOL)a5 settings:(id)a6;
- (NUCropNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateAuxiliaryImageForType:(int64_t)a3 error:(id *)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_evaluateVideoProperties:(id *)a3;
- (id)_transformWithError:(id *)a3;
- (id)debugQuickLookObject;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)transformAffine;
@end

@implementation NUCropNode

- (id)_evaluateAuxiliaryImageForType:(int64_t)a3 error:(id *)a4
{
  if ([(NUCropNode *)self _canPropagateOriginalAuxiliaryData])
  {
    v11.receiver = self;
    v11.super_class = NUCropNode;
    v7 = [(NURenderNode *)&v11 _evaluateAuxiliaryImageForType:a3 error:a4];
  }

  else
  {
    v8 = [NUError failureError:@"NUCropNode cannot propagate original auxiliary data" object:self];
    v9 = v8;
    v7 = 0;
    *a4 = v8;
  }

  return v7;
}

- (BOOL)_canPropagateOriginalAuxiliaryData
{
  v19 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NUCropNode;
  v16 = 0;
  v3 = [(NURenderNode *)&v15 _evaluateImageGeometry:&v16];
  v4 = v16;
  if (v3)
  {
    v14 = 0;
    v5 = [(NUCropNode *)self _evaluateImageGeometry:&v14];
    v6 = v14;

    if (v5)
    {
      [v3 extent];
      [v5 extent];
      v7 = 0;
      if (v11 == *buf && v12 == *&buf[8])
      {
        v7 = v13 == v18;
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_108);
      }

      v9 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "[NUCropNode canPropagateOriginalAuxiliaryData] Unable to calculate output geometry: %@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_108);
    }

    v8 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "[NUCropNode canPropagateOriginalAuxiliaryData] Unable to calculate input geometry: %@", buf, 0xCu);
    }

    v7 = 0;
    v6 = v4;
  }

  return v7;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NUCropNode;
  v4 = [(NURenderNode *)&v6 canPropagateOriginalAuxiliaryData:a3];
  if (v4)
  {
    LOBYTE(v4) = [(NUCropNode *)self _canPropagateOriginalAuxiliaryData];
  }

  return v4;
}

- (id)_evaluateVideoProperties:(id *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v17 = NUAssertLogger_23019();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_23019();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCropNode _evaluateVideoProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Crop.m", 358, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "error != NULL");
  }

  v5 = [(NURenderNode *)self inputs];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v7 = [v6 videoProperties:a3];
  if (v7)
  {
    v8 = [(NURenderNode *)self outputImageGeometry:a3];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 scaledSize];
      v12 = v11;
      if ([(NUCropNode *)self resetCleanAperture])
      {
        *&v13 = v10;
        *(&v13 + 1) = v12;
        v34 = v13;
        v33 = 0u;
      }

      else
      {
        [v7 cleanAperture];
        *&v15 = v10;
        *(&v15 + 1) = v12;
        *buf = 0;
        *&buf[8] = 0;
        *&buf[16] = v15;
        v38[0] = v35;
        v38[1] = v36;
        NU::RectT<long>::Intersection(v37, buf, v38);
        v33 = v37[0];
        v34 = v37[1];
      }

      v14 = [[_NUVideoProperties alloc] initWithProperties:v7];
      *buf = v33;
      *&buf[16] = v34;
      [(_NUVideoProperties *)v14 setCleanAperture:buf];
      [(_NUVideoProperties *)v14 setSize:v10, v12];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v21 = 0;
  v20.receiver = self;
  v20.super_class = NUCropNode;
  v5 = [(NURenderNode *)&v20 _evaluateImageGeometry:&v21];
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v6 = v21;
    [(NUCropNode *)self cropRect];

    v18 = 0uLL;
    v7 = [NUImageGeometry alloc];
    v8 = [v5 renderScale];
    v10 = v9;
    v11 = [v5 orientation];
    v17[0] = v18;
    v17[1] = v19;
    v12 = [(NUImageGeometry *)v7 initWithExtent:v17 renderScale:v8 orientation:v10, v11];
  }

  else
  {
    v13 = v21;
    v14 = [NUError errorWithCode:1 reason:@"Could not get the input geometry" object:self underlyingError:v13];
    v15 = v14;

    v12 = 0;
    *a3 = v14;
  }

  return v12;
}

- (id)debugQuickLookObject
{
  if ([(NURenderNode *)self isCached])
  {
    v5.receiver = self;
    v5.super_class = NUCropNode;
    v3 = [(NURenderNode *)&v5 debugQuickLookObject];
  }

  else
  {
    v6 = 0;
    v3 = [(NUCropNode *)self _evaluateImage:&v6];
  }

  return v3;
}

- (BOOL)canPropagateOriginalLivePhotoMetadataTrack
{
  v20 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NUCropNode;
  v17 = 0;
  v3 = [(NURenderNode *)&v16 _evaluateImageGeometry:&v17];
  v4 = v17;
  if (v3)
  {
    v15 = 0;
    v5 = [(NUCropNode *)self _evaluateImageGeometry:&v15];
    v6 = v15;

    if (v5)
    {
      [v3 extent];
      [v5 extent];
      if (v12 == *buf && v13 == *&buf[8] && v14 == v19)
      {
        v11.receiver = self;
        v11.super_class = NUCropNode;
        v7 = [(NUTransformNode *)&v11 canPropagateOriginalLivePhotoMetadataTrack];
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_108);
      }

      v9 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "[NUCropNode] could not evaluate output geometry: %@", buf, 0xCu);
      }
    }

    v7 = 0;
    goto LABEL_17;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_108);
  }

  v8 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "[NUCropNode] could not evaluate input geometry: %@", buf, 0xCu);
  }

  v7 = 0;
  v6 = v4;
LABEL_18:

  return v7;
}

- (id)_evaluateImage:(id *)a3
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v41 = NUAssertLogger_23019();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_23019();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v45)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v48;
        *&buf[12] = 2114;
        *&buf[14] = v52;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCropNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Crop.m", 230, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "error != nil");
  }

  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v77 = 0;
  v6 = [v5 outputImage:&v77];
  v7 = v77;
  if (v6)
  {
    v76 = 0;
    v8 = [(NURenderNode *)self outputImageGeometry:&v76];
    v9 = v76;

    if (v8)
    {
      if ([v8 renderScale] < 1 || v10 <= 0)
      {
        v57 = NUAssertLogger_23019();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid render scale"];
          *buf = 138543362;
          *&buf[4] = v58;
          _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = NUAssertLogger_23019();
        v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
        if (v59)
        {
          if (v61)
          {
            v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v65 = MEMORY[0x1E696AF00];
            v66 = v64;
            v67 = [v65 callStackSymbols];
            v68 = [v67 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v64;
            *&buf[12] = 2114;
            *&buf[14] = v68;
            _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v61)
        {
          v62 = [MEMORY[0x1E696AF00] callStackSymbols];
          v63 = [v62 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          *&buf[4] = v63;
          _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUCropNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Crop.m", 251, @"Invalid render scale", v69, v70, v71, v72, v73);
      }

      v11 = [(NUCropNode *)self transformAffine];
      if (v11)
      {
        v12 = [v8 renderScale];
        v74 = NUScaleToDouble(v12, v13);
        v79 = 0u;
        memset(buf, 0, sizeof(buf));
        [v11 transform];
        v79 = vmulq_n_f64(v79, v74);
        v14 = [v8 scaledSize];
        v16 = v15;
        v75[0] = *buf;
        v75[1] = *&buf[16];
        v75[2] = v79;
        v17 = [v6 imageByApplyingTransform:v75];

        [v17 extent];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [v8 scaledExtent];
        v85.origin.x = v26;
        v85.origin.y = v27;
        v85.size.width = v28;
        v85.size.height = v29;
        v82.origin.x = v19;
        v82.origin.y = v21;
        v82.size.width = v23;
        v82.size.height = v25;
        v83 = CGRectIntersection(v82, v85);
        x = v83.origin.x;
        y = v83.origin.y;
        width = v83.size.width;
        height = v83.size.height;
        [v8 scaledExtent];
        v86.origin.x = x;
        v86.origin.y = y;
        v86.size.width = width;
        v86.size.height = height;
        if (!CGRectEqualToRect(v84, v86))
        {
          v34 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
          v35 = [MEMORY[0x1E695F658] imageWithColor:v34];
          v36 = [v17 imageByCompositingOverImage:v35];

          v17 = v36;
        }

        v37 = [v17 imageByClampingToExtent];

        v38 = [v37 imageByCroppingToRect:{0.0, 0.0, v14, v16}];

        v6 = v38;
        v39 = v6;
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Could not get the input geometry" object:self underlyingError:v9];
        *a3 = v39 = 0;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Could not get the output geometry" object:self underlyingError:v9];
      *a3 = v39 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Could not get the input image" object:self underlyingError:v7];
    *a3 = v39 = 0;
    v9 = v7;
  }

  return v39;
}

- (BOOL)scaledCropOrigin:(CGPoint *)a3 error:(id *)a4
{
  v72 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v37 = NUAssertLogger_23019();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "origin != nil"];
      buf[0].i32[0] = 138543362;
      *(buf[0].i64 + 4) = v38;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_23019();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        buf[0].i32[0] = 138543618;
        *(buf[0].i64 + 4) = v51;
        buf[0].i16[6] = 2114;
        *(&buf[0].i64[1] + 6) = v55;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      buf[0].i32[0] = 138543362;
      *(buf[0].i64 + 4) = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCropNode scaledCropOrigin:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Crop.m", 172, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "origin != nil");
  }

  if (!a4)
  {
    v44 = NUAssertLogger_23019();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      buf[0].i32[0] = 138543362;
      *(buf[0].i64 + 4) = v45;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v47 = NUAssertLogger_23019();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (v46)
    {
      if (v48)
      {
        v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v61 = MEMORY[0x1E696AF00];
        v62 = v60;
        v63 = [v61 callStackSymbols];
        v64 = [v63 componentsJoinedByString:@"\n"];
        buf[0].i32[0] = 138543618;
        *(buf[0].i64 + 4) = v60;
        buf[0].i16[6] = 2114;
        *(&buf[0].i64[1] + 6) = v64;
        _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v48)
    {
      v49 = [MEMORY[0x1E696AF00] callStackSymbols];
      v50 = [v49 componentsJoinedByString:@"\n"];
      buf[0].i32[0] = 138543362;
      *(buf[0].i64 + 4) = v50;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCropNode scaledCropOrigin:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Crop.m", 173, @"Invalid parameter not satisfying: %s", v65, v66, v67, v68, "error != nil");
  }

  memset(buf, 0, sizeof(buf));
  [(NUCropNode *)self cropRect];
  v7 = [(NURenderNode *)self outputImageGeometry:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 renderScale];
    v69 = NUScaleToDouble(v9, v10);
    *a3 = vmulq_n_f64(vcvtq_f64_s64(buf[0]), v69);
    v11 = [(NURenderNode *)self settings];
    v12 = [v11 objectForKeyedSubscript:@"projectUsingCleanAperture"];

    v13 = [(NURenderNode *)self settings];
    v14 = [v13 objectForKeyedSubscript:@"projectUsingOriginalSize"];

    if (!(v12 | v14))
    {
      v17 = 1;
      goto LABEL_14;
    }

    v15 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
    v16 = [v15 outputImageGeometry:a4];
    v17 = v16 != 0;
    if (v16)
    {
      [v14 X];
      v19 = v18;
      [v14 Y];
      v21 = v20;
      [v12 CGRectValue];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = v22;
      if (v19 != v27 || v21 != v22)
      {
        goto LABEL_10;
      }

      v30 = [(NURenderNode *)self settings];
      v31 = [v30 objectForKeyedSubscript:@"projectUsingEstimatedCleanAperture"];
      [v31 doubleValue];
      v33 = v32;

      if (v33 > 0.0)
      {
        v19 = v19 * (v33 + 1.0);
        v21 = v21 * (v33 + 1.0);
LABEL_10:
        [v16 extent];
        [(NUCropNode *)self scaleCropOriginForOriginalVideoSize:v70 originalCleanAperture:v19 renderScale:v21 inputExtent:v24, v26, v28, v29, v69];
        a3->x = v34;
        a3->y = v35;
      }
    }

LABEL_14:
    goto LABEL_15;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (CGPoint)scaleCropOriginForOriginalVideoSize:(CGSize)a3 originalCleanAperture:(CGRect)a4 renderScale:(double)a5 inputExtent:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  r2 = a4.origin.y;
  rect = a4.origin.x;
  v9 = a3.height;
  v10 = a3.width;
  [(NUCropNode *)self cropRect];
  if (v10 == width && v9 == height)
  {
    v12 = a5;
    v13 = 0u;
    goto LABEL_8;
  }

  v12 = a5;
  if (width < 1.0)
  {
    v13 = 0u;
LABEL_8:
    v14 = vmulq_n_f64(vcvtq_f64_s64(v13), v12);
    goto LABEL_9;
  }

  v16 = vcvtq_f64_s64(0);
  __asm { FMOV            V3.2D, #0.5 }

  v21.f64[0] = rect;
  v21.f64[1] = r2;
  recta = vmulq_n_f64(v16, a5);
  r2a = vsubq_f64(vsubq_f64(vmulq_n_f64(vaddq_f64(vmulq_f64(v16, _Q3), v16), v10 / width * a5), vmulq_n_f64(vdivq_f64(v21, vdupq_lane_s64(COERCE__INT64(v10 / width * a5), 0)), a5)), vmulq_f64(recta, _Q3));
  v22 = a6->var0.var0 * a5;
  v23 = a6->var0.var1 * a5;
  v16.f64[0] = a6->var1.var0 * a5;
  _Q3.f64[0] = a6->var1.var1 * a5;
  v51 = CGRectStandardize(*(&v16 - 1));
  x = v51.origin.x;
  y = v51.origin.y;
  v26 = v51.size.width;
  v27 = v51.size.height;
  v68.size.width = recta.f64[0];
  v68.origin = r2a;
  v68.size.height = recta.f64[1];
  v28 = CGRectContainsRect(v51, v68);
  v14 = r2a;
  if (!v28)
  {
    v52.size.width = recta.f64[0];
    v52.origin = r2a;
    v52.size.height = recta.f64[1];
    MaxX = CGRectGetMaxX(v52);
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = v26;
    v53.size.height = v27;
    v30 = MaxX <= CGRectGetMaxX(v53);
    v31 = r2a.x;
    v32 = r2a.x;
    if (!v30)
    {
      v54.size.width = recta.f64[0];
      v54.origin = r2a;
      v54.size.height = recta.f64[1];
      v33 = CGRectGetMaxX(v54);
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = v26;
      v55.size.height = v27;
      v32 = r2a.x - (v33 - CGRectGetMaxX(v55));
      v31 = r2a.x;
    }

    v34 = r2a.y;
    v35 = recta;
    MinX = CGRectGetMinX(*&v31);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = v26;
    v56.size.height = v27;
    if (MinX < CGRectGetMinX(v56))
    {
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = v26;
      v57.size.height = v27;
      v37 = CGRectGetMaxX(v57);
      v58.size.width = recta.f64[0];
      v58.origin = r2a;
      v58.size.height = recta.f64[1];
      v32 = v32 + v37 - CGRectGetMaxX(v58);
    }

    r2_16a = v32;
    v59.size.width = recta.f64[0];
    v59.origin = r2a;
    v59.size.height = recta.f64[1];
    MaxY = CGRectGetMaxY(v59);
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = v26;
    v60.size.height = v27;
    v30 = MaxY <= CGRectGetMaxY(v60);
    v39 = r2a.y;
    if (!v30)
    {
      v61.size.width = recta.f64[0];
      v61.origin = r2a;
      v61.size.height = recta.f64[1];
      v40 = CGRectGetMaxY(v61);
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = v26;
      v62.size.height = v27;
      v39 = r2a.y - (v40 - CGRectGetMaxY(v62));
    }

    v63.size.width = recta.f64[0];
    v63.origin = r2a;
    v63.size.height = recta.f64[1];
    MinY = CGRectGetMinY(v63);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = v26;
    v64.size.height = v27;
    if (MinY < CGRectGetMinY(v64))
    {
      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = v26;
      v65.size.height = v27;
      v42 = CGRectGetMinY(v65);
      v66.size.width = recta.f64[0];
      v66.origin = r2a;
      v66.size.height = recta.f64[1];
      v39 = v39 + v42 - CGRectGetMinY(v66);
    }

    v69.origin.x = r2_16a;
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = v26;
    v67.size.height = v27;
    v69.origin.y = v39;
    v69.size = recta;
    *v14.f64 = CGRectIntersection(v67, v69);
    v14.f64[1] = v43;
  }

LABEL_9:
  v15 = v14.f64[1];
  result.x = v14.f64[0];
  result.y = v15;
  return result;
}

- (id)_transformWithError:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = NUAssertLogger_23019();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v21 = v5;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v7 = NUAssertLogger_23019();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v12 = MEMORY[0x1E696AF00];
        v13 = v11;
        v14 = [v12 callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v11;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCropNode _transformWithError:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Crop.m", 94, @"Invalid parameter not satisfying: %s", v16, v17, v18, v19, "error != nil");
  }

  return [(NUCropNode *)self transformAffine];
}

- (id)transformAffine
{
  v3 = [(NUCropNode *)self transform];
  if (!v3)
  {
    v9 = 0u;
    v10 = 0u;
    [(NUCropNode *)self cropRect];
    memset(&v8, 0, sizeof(v8));
    CGAffineTransformMakeTranslation(&v8, -v9, -*(&v9 + 1));
    v4 = [NUImageTransformAffine alloc];
    v7 = v8;
    v5 = [(NUImageTransformAffine *)v4 initWithAffineTransform:&v7];
    [(NUCropNode *)self setTransform:v5];

    v3 = [(NUCropNode *)self transform];
  }

  return v3;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10.receiver = self;
  v10.super_class = NUCropNode;
  v7 = [(NURenderNode *)&v10 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];
  if (v7)
  {
    [(NUCropNode *)self cropRect];
    v9[0] = v9[2];
    v9[1] = v9[3];
    [v7 setCropRect:v9];
    v7[168] = self->_resetCleanAperture;
  }

  return v7;
}

- (NUCropNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_23034);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_23034);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_23034);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      v19 = [v17 callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    v26 = [v23 callStackSymbols];
    v27 = [v26 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUCropNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Crop.m", 60, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

- (NUCropNode)initWithRect:(id *)a3 input:(id)a4
{
  var1 = a3->var1;
  v6[0] = a3->var0;
  v6[1] = var1;
  return [(NUCropNode *)self initWithRect:v6 input:a4 resetCleanAperture:0 settings:0];
}

- (NUCropNode)initWithRect:(id *)a3 input:(id)a4 resetCleanAperture:(BOOL)a5 settings:(id)a6
{
  v7 = a5;
  v43 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  if (!v10)
  {
    v20 = NUAssertLogger_23019();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v40 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_23019();
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
        v40 = v27;
        v41 = 2114;
        v42 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCropNode initWithRect:input:resetCleanAperture:settings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Crop.m", 33, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "input != nil");
  }

  v12 = v11;
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v14 = [MEMORY[0x1E695F688] vectorWithCGRect:{a3->var0.var0, a3->var0.var1, a3->var1.var0, a3->var1.var1}];
  [v13 setObject:v14 forKeyedSubscript:@"inputRectangle"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v13 setObject:v15 forKeyedSubscript:@"resetCleanAperture"];

  if (v12)
  {
    [v13 addEntriesFromDictionary:v12];
  }

  v37 = *MEMORY[0x1E695FAB0];
  v38 = v10;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v36.receiver = self;
  v36.super_class = NUCropNode;
  v17 = [(NURenderNode *)&v36 initWithSettings:v13 inputs:v16];

  var1 = a3->var1;
  *(v17 + 184) = a3->var0;
  *(v17 + 200) = var1;
  v17[168] = v7;

  return v17;
}

@end