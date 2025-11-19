@interface NUMaskUtilities
+ ($41299696D20B6C925B74A5D5E4D5CC87)_tightBoundsOfMaskImage:(SEL)a3 context:(id)a4;
+ (double)_areaOfMaskImage:(id)a3 context:(id)a4;
+ (id)propertiesForMask:(id)a3 context:(id)a4;
@end

@implementation NUMaskUtilities

+ ($41299696D20B6C925B74A5D5E4D5CC87)_tightBoundsOfMaskImage:(SEL)a3 context:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695F648];
  v8 = a5;
  v9 = a4;
  v10 = [v7 areaBoundsRedFilter];
  [v10 setInputImage:v9];
  [v9 extent];
  [v10 setExtent:?];
  v11 = [v10 outputImage];
  [v11 extent];
  [v8 render:v11 toBitmap:v39 rowBytes:16 bounds:*MEMORY[0x1E695F918] format:objc_msgSend(v8 colorSpace:{"workingColorSpace"), v12, v13, v14, v15}];

  v34 = v39[0];
  v33 = v39[1];
  v32 = v39[2];
  v31 = v39[3];
  [v9 extent];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v38.origin.x = v17;
  v38.origin.y = v19;
  v38.size.width = v21;
  v38.size.height = v23;
  NU::RectT<long>::RectT(&v36, &v38, 0);
  v29 = v36;
  v30 = v37;
  v24 = vcvtq_f64_s64(v37);
  v25.f64[0] = v32;
  v25.f64[1] = v31;
  v26.f64[0] = v34;
  v26.f64[1] = v33;
  v38.origin = vmlaq_f64(vcvtq_f64_s64(v36), v24, v26);
  v38.size = vmulq_f64(v25, v24);
  NU::RectT<long>::RectT(&v36, &v38, 0);
  v38.origin = v36;
  v38.size = v37;
  v36 = v29;
  v37 = v30;
  NU::RectT<long>::Intersection(v35, &v38, v36.i64);
  v27 = v35[1];
  retstr->var0 = v35[0];
  retstr->var1 = v27;

  return result;
}

+ (double)_areaOfMaskImage:(id)a3 context:(id)a4
{
  v5 = MEMORY[0x1E695F648];
  v6 = a4;
  v7 = a3;
  v8 = [v5 areaAverageFilter];
  [v8 setInputImage:v7];
  [v7 extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v8 setExtent:{v10, v12, v14, v16}];
  v17 = [v8 outputImage];
  v20 = 0.0;
  [v17 extent];
  [v6 render:v17 toBitmap:&v20 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:?];

  v18 = v20;
  return v18;
}

+ (id)propertiesForMask:(id)a3 context:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v17 = NUAssertLogger_3196();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "mask != nil"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_3196();
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

    _NUAssertFailHandler("+[NUMaskUtilities propertiesForMask:context:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUMaskUtilities.m", 34, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "mask != nil");
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:{objc_msgSend(v6, "CVPixelBuffer")}];
  [a1 _areaOfMaskImage:v9 context:v8];
  v11 = v10;
  memset(buf, 0, 32);
  [a1 _tightBoundsOfMaskImage:v9 context:v8];
  v12 = [NUMaskProperties alloc];
  v13 = [v6 size];
  v33[0] = *buf;
  v33[1] = *&buf[16];
  v15 = [(NUMaskProperties *)v12 initWithDensity:v33 bounds:v13 size:v14, v11];

  return v15;
}

@end