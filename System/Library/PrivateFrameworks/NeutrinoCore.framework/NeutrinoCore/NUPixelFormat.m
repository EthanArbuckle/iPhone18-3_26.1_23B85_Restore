@interface NUPixelFormat
+ (BOOL)supportsUniversalCompressionFormats;
+ (NUPixelFormat)A2RGB10;
+ (NUPixelFormat)ARGB8;
+ (NUPixelFormat)BGRA8;
+ (NUPixelFormat)R16;
+ (NUPixelFormat)R16h;
+ (NUPixelFormat)R32f;
+ (NUPixelFormat)R8;
+ (NUPixelFormat)RG16;
+ (NUPixelFormat)RGBA16;
+ (NUPixelFormat)RGBA8;
+ (NUPixelFormat)RGBAf;
+ (NUPixelFormat)RGBAh;
+ (NUPixelFormat)X2RGB10;
+ (NUPixelFormat)YCC10f420;
+ (NUPixelFormat)YCC10f420p;
+ (NUPixelFormat)sRGB10XR;
+ (NUPixelFormat)sRGBA8;
+ (id)pixelFormatForCIFormat:(int)a3;
+ (id)pixelFormatForCVPixelFormat:(unsigned int)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)chromaSubsampling;
- (BOOL)isEqual:(id)a3;
- (int64_t)alignedRowBytesForWidth:(int64_t)a3;
- (void)nu_updateDigest:(id)a3;
@end

@implementation NUPixelFormat

- ($0AC6E346AE4835514AAA8AC86D8F4844)chromaSubsampling
{
  height = self->_chromaSubsampling.height;
  width = self->_chromaSubsampling.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (void)nu_updateDigest:(id)a3
{
  v4 = a3;
  [v4 addString:@"NUPixelFormat<"];
  [v4 addString:self->_name];
  [v4 addString:@">"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUPixelFormat *)self isEqualToPixelFormat:v4];

  return v5;
}

- (int64_t)alignedRowBytesForWidth:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 <= 0)
  {
    v6 = NUAssertLogger_12083();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "width > 0"];
      *buf = 138543362;
      v23 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_12083();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPixelFormat alignedRowBytesForWidth:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPixelFormat.m", 399, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "width > 0");
  }

  v4 = [(NUPixelFormat *)self bytesPerPixel];

  return [NUImageUtilities alignedRowBytesForWidth:a3 bytesPerPixel:v4];
}

+ (NUPixelFormat)YCC10f420p
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F880];
  *(v2 + 16) = 1885745712;
  *(v2 + 40) = 10;
  *(v2 + 24) = xmmword_1C03C2830;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"YCC10f420p";

  *(v2 + 8) = 256;
  *(v2 + 48) = 508;
  *(v2 + 64) = xmmword_1C03C2840;
  *(v2 + 80) = vdupq_n_s64(2uLL);

  return v2;
}

+ (NUPixelFormat)YCC10f420
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F878];
  *(v2 + 16) = 2019963440;
  *(v2 + 40) = 10;
  *(v2 + 24) = vdupq_n_s64(3uLL);
  v3 = *(v2 + 56);
  *(v2 + 56) = @"YCC10f420";

  *(v2 + 8) = 256;
  *(v2 + 48) = 505;
  *(v2 + 64) = xmmword_1C03C2840;
  *(v2 + 80) = vdupq_n_s64(2uLL);

  return v2;
}

+ (NUPixelFormat)sRGB10XR
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F900];
  *(v2 + 16) = 1999843442;
  *(v2 + 40) = 10;
  *(v2 + 24) = xmmword_1C03C2850;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"sRGB10XR";

  *(v2 + 8) = 1;
  *(v2 + 48) = 555;

  return v2;
}

+ (NUPixelFormat)A2RGB10
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F890];
  *(v2 + 16) = 1815162994;
  *(v2 + 40) = 10;
  *(v2 + 24) = vdupq_n_s64(4uLL);
  v3 = *(v2 + 56);
  *(v2 + 56) = @"A2RGB10";

  *(v2 + 8) = 0;
  *(v2 + 48) = 94;

  return v2;
}

+ (NUPixelFormat)X2RGB10
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F8F8];
  *(v2 + 16) = 1815162994;
  *(v2 + 40) = 10;
  *(v2 + 24) = xmmword_1C03C2850;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"RGB10";

  *(v2 + 8) = 0;
  *(v2 + 48) = 94;

  return v2;
}

+ (NUPixelFormat)R32f
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F928];
  *(v2 + 16) = 1278226534;
  *(v2 + 40) = 32;
  *(v2 + 24) = xmmword_1C03C2860;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"R32f";

  *(v2 + 8) = 1;
  *(v2 + 48) = 55;

  return v2;
}

+ (NUPixelFormat)R16h
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F930];
  *(v2 + 16) = 1278226536;
  *(v2 + 32) = xmmword_1C03C2870;
  *(v2 + 24) = 1;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"R16h";

  *(v2 + 8) = 1;
  *(v2 + 48) = 25;

  return v2;
}

+ (NUPixelFormat)R16
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F8D8];
  *(v2 + 16) = 1278226742;
  *(v2 + 40) = 16;
  *(v2 + 24) = xmmword_1C03C2880;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"R16";

  *(v2 + 8) = 0;
  *(v2 + 48) = 20;

  return v2;
}

+ (NUPixelFormat)R8
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F8E0];
  *(v2 + 16) = 1278226488;
  *(v2 + 40) = 8;
  *(v2 + 24) = vdupq_n_s64(1uLL);
  v3 = *(v2 + 56);
  *(v2 + 56) = @"R8";

  *(v2 + 8) = 0;
  *(v2 + 48) = 10;

  return v2;
}

+ (NUPixelFormat)RGBAh
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F920];
  *(v2 + 16) = 1380411457;
  *(v2 + 40) = 16;
  *(v2 + 24) = xmmword_1C03C2890;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"RGBAh";

  *(v2 + 8) = 1;
  *(v2 + 48) = 115;

  return v2;
}

+ (NUPixelFormat)RGBAf
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F918];
  *(v2 + 16) = 1380410945;
  *(v2 + 40) = 32;
  *(v2 + 24) = xmmword_1C03C28A0;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"RGBAf";

  *(v2 + 8) = 1;
  *(v2 + 48) = 125;

  return v2;
}

+ (NUPixelFormat)RG16
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F8E8];
  *(v2 + 16) = 843264310;
  *(v2 + 40) = 16;
  *(v2 + 24) = vdupq_n_s64(4uLL);
  v3 = *(v2 + 56);
  *(v2 + 56) = @"RG16";

  *(v2 + 8) = 0;
  *(v2 + 48) = 60;

  return v2;
}

+ (NUPixelFormat)RGBA16
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F908];
  *(v2 + 16) = 1647719521;
  *(v2 + 40) = 16;
  *(v2 + 24) = xmmword_1C03C2890;
  v3 = *(v2 + 56);
  *(v2 + 56) = @"RGBA16";

  *(v2 + 8) = 0;
  *(v2 + 48) = 110;

  return v2;
}

+ (NUPixelFormat)sRGBA8
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F910];
  *(v2 + 16) = 1380401729;
  *(v2 + 40) = 8;
  *(v2 + 24) = vdupq_n_s64(4uLL);
  v3 = *(v2 + 56);
  *(v2 + 56) = @"sRGBA8";

  *(v2 + 8) = 0;
  *(v2 + 48) = 71;

  return v2;
}

+ (NUPixelFormat)RGBA8
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F910];
  *(v2 + 16) = 1380401729;
  *(v2 + 40) = 8;
  *(v2 + 24) = vdupq_n_s64(4uLL);
  v3 = *(v2 + 56);
  *(v2 + 56) = @"RGBA8";

  *(v2 + 8) = 0;
  *(v2 + 48) = 70;

  return v2;
}

+ (NUPixelFormat)BGRA8
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F8A8];
  *(v2 + 16) = 1111970369;
  *(v2 + 40) = 8;
  *(v2 + 24) = vdupq_n_s64(4uLL);
  v3 = *(v2 + 56);
  *(v2 + 56) = @"BGRA8";

  *(v2 + 8) = 0;
  *(v2 + 48) = 80;

  return v2;
}

+ (NUPixelFormat)ARGB8
{
  v2 = objc_opt_new();
  *(v2 + 12) = *MEMORY[0x1E695F8A0];
  *(v2 + 16) = 32;
  *(v2 + 40) = 8;
  *(v2 + 24) = vdupq_n_s64(4uLL);
  v3 = *(v2 + 56);
  *(v2 + 56) = @"ARGB8";

  *(v2 + 8) = 0;
  *(v2 + 48) = 0;

  return v2;
}

+ (id)pixelFormatForCVPixelFormat:(unsigned int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 > 1278226535)
  {
    if (a3 <= 1647719520)
    {
      if (a3 > 1380401728)
      {
        switch(a3)
        {
          case 0x52474241u:
            v4 = [a1 RGBA8];
            goto LABEL_47;
          case 0x52476641u:
            v4 = [a1 RGBAf];
            goto LABEL_47;
          case 0x52476841u:
            v4 = [a1 RGBAh];
            goto LABEL_47;
        }

        goto LABEL_42;
      }

      if (a3 != 1278226536)
      {
        if (a3 == 1278226742)
        {
          goto LABEL_30;
        }

        goto LABEL_42;
      }

LABEL_31:
      v4 = [a1 R16h];
      goto LABEL_47;
    }

    if (a3 > 1751411058)
    {
      if (a3 != 1751411059)
      {
        if (a3 == 1885745712)
        {
          v4 = [a1 YCC10f420p];
          goto LABEL_47;
        }

        if (a3 == 2019963440)
        {
          v4 = [a1 YCC10f420];
          goto LABEL_47;
        }

        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (a3 == 1647719521)
    {
      v4 = [a1 RGBA16];
      goto LABEL_47;
    }

    v5 = 1717856627;
    goto LABEL_34;
  }

  if (a3 <= 826487093)
  {
    if (a3 > 826486885)
    {
      if (a3 != 826486886)
      {
        if (a3 != 826486888)
        {
          goto LABEL_42;
        }

        goto LABEL_31;
      }

LABEL_35:
      v4 = [a1 R32f];
      goto LABEL_47;
    }

    if (a3 == 32)
    {
      v4 = [a1 ARGB8];
      goto LABEL_47;
    }

    if (a3 != 826486840)
    {
      goto LABEL_42;
    }

    goto LABEL_21;
  }

  if (a3 > 1111970368)
  {
    if (a3 == 1111970369)
    {
      v4 = [a1 BGRA8];
      goto LABEL_47;
    }

    if (a3 != 1278226488)
    {
      v5 = 1278226534;
LABEL_34:
      if (a3 != v5)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

LABEL_21:
    v4 = [a1 R8];
    goto LABEL_47;
  }

  if (a3 == 826487094)
  {
LABEL_30:
    v4 = [a1 R16];
    goto LABEL_47;
  }

  if (a3 == 843264310)
  {
    v4 = [a1 RG16];
    goto LABEL_47;
  }

LABEL_42:
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_224);
  }

  v6 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = NUStringForTypeCode(a3);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1C0184000, v7, OS_LOG_TYPE_INFO, "Unknown pixel format: '%@'", &v10, 0xCu);
  }

  v4 = 0;
LABEL_47:

  return v4;
}

+ (id)pixelFormatForCIFormat:(int)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695F8A0] == a3)
  {
    v3 = [a1 ARGB8];
  }

  else if (*MEMORY[0x1E695F8A8] == a3)
  {
    v3 = [a1 BGRA8];
  }

  else if (*MEMORY[0x1E695F910] == a3)
  {
    v3 = [a1 RGBA8];
  }

  else if (*MEMORY[0x1E695F908] == a3)
  {
    v3 = [a1 RGBA16];
  }

  else if (*MEMORY[0x1E695F918] == a3)
  {
    v3 = [a1 RGBAf];
  }

  else if (*MEMORY[0x1E695F920] == a3)
  {
    v3 = [a1 RGBAh];
  }

  else if (*MEMORY[0x1E695F8E8] == a3)
  {
    v3 = [a1 RG16];
  }

  else if (*MEMORY[0x1E695F888] == a3)
  {
    v3 = [a1 R16];
  }

  else
  {
    if (*MEMORY[0x1E695F8B0] != a3)
    {
      v5 = NUAssertLogger_12083();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown format passed to NUPixelFormat -pixelFormatForCIFormat"];
        *v21 = 138543362;
        *&v21[4] = v6;
        _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v21, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v8 = NUAssertLogger_12083();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v9)
        {
          v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v13 = MEMORY[0x1E696AF00];
          v14 = v12;
          v15 = [v13 callStackSymbols];
          v16 = [v15 componentsJoinedByString:@"\n"];
          *v21 = 138543618;
          *&v21[4] = v12;
          v22 = 2114;
          v23 = v16;
          _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v21, 0x16u);
        }
      }

      else if (v9)
      {
        v10 = [MEMORY[0x1E696AF00] callStackSymbols];
        v11 = [v10 componentsJoinedByString:@"\n"];
        *v21 = 138543362;
        *&v21[4] = v11;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v21, 0xCu);
      }

      _NUAssertFailHandler("+[NUPixelFormat pixelFormatForCIFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPixelFormat.m", 94, @"Unknown format passed to NUPixelFormat -pixelFormatForCIFormat", v17, v18, v19, v20, *v21);
    }

    v3 = [a1 R8];
  }

  return v3;
}

+ (BOOL)supportsUniversalCompressionFormats
{
  if (supportsUniversalCompressionFormats_onceToken != -1)
  {
    dispatch_once(&supportsUniversalCompressionFormats_onceToken, &__block_literal_global_12203);
  }

  return supportsUniversalCompressionFormats_supportsUniversalCompressionFormats;
}

void __52__NUPixelFormat_supportsUniversalCompressionFormats__block_invoke()
{
  v1 = MGCopyAnswer();
  v0 = [v1 objectForKeyedSubscript:@"universal-buffer-compression"];
  supportsUniversalCompressionFormats_supportsUniversalCompressionFormats = [v0 BOOLValue];
}

@end