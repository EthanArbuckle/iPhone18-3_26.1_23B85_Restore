@interface FBSDisplayMode
+ (id)_emptyMode;
- (BOOL)isEqual:(id)a3;
- (CGSize)nativePixelSize;
- (CGSize)pixelSize;
- (CGSize)size;
- (FBSDisplayMode)init;
- (FBSDisplayMode)initWithCoder:(id)a3;
- (FBSDisplayMode)initWithXPCDictionary:(id)a3;
- (id)_copyWithOverrideSize:(CGSize)a3;
- (id)_copyWithOverrideSize:(CGSize)a3 scale:(double)a4 refreshRate:(double)a5;
- (id)_initWithCADisplayMode:(id)a3 scale:(double)a4 rotation:(int64_t)a5;
- (id)_initWithWidth:(unint64_t)a3 height:(unint64_t)a4 preferredScale:(unint64_t)a5 scaleOverride:(double)a6 refreshRate:(double)a7 gamut:(int64_t)a8 hdr:(int64_t)a9 rotation:(int64_t)a10 virtual:(BOOL)a11 validityCheck:(int64_t)a12;
- (id)_referenceSizeDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation FBSDisplayMode

- (unint64_t)hash
{
  v3 = [off_1E76BC9C8 builder];
  v4 = [v3 appendSizeT:self->_width];
  v5 = [v3 appendSizeT:self->_height];
  v6 = [v3 appendSizeT:self->_preferredScale];
  v7 = [v3 appendCGFloat:self->_scaleOverride];
  v8 = [v3 appendDouble:self->_refreshRate];
  v9 = [v3 appendInteger:self->_gamut];
  v10 = [v3 appendInteger:self->_hdr];
  v11 = [v3 appendInteger:self->_rotation];
  v12 = [v3 appendBool:self->_virtual];
  v13 = [v3 hash];

  return v13;
}

- (CGSize)pixelSize
{
  v2 = 16;
  v3 = 16;
  if ((self->_rotation | 2) == 3)
  {
    v3 = 8;
  }

  else
  {
    v2 = 8;
  }

  v4 = *(&self->super.isa + v3);
  v5 = *(&self->super.isa + v2);
  result.height = v4;
  result.width = v5;
  return result;
}

+ (id)_emptyMode
{
  if (_emptyMode_onceToken != -1)
  {
    +[FBSDisplayMode _emptyMode];
  }

  v3 = _emptyMode___emptyMode;

  return v3;
}

- (CGSize)nativePixelSize
{
  width = self->_width;
  height = self->_height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)size
{
  [(FBSDisplayMode *)self pointScale];
  v4 = v3;
  [(FBSDisplayMode *)self pixelSize];
  v6 = v5 / v4;
  v8 = v7 / v4;
  result.height = v8;
  result.width = v6;
  return result;
}

- (id)_referenceSizeDescription
{
  [(FBSDisplayMode *)self size];
  [(FBSDisplayMode *)self pointScale];
  BSFloatIsOne();
}

uint64_t __28__FBSDisplayMode__emptyMode__block_invoke()
{
  LOBYTE(v3) = 1;
  v0 = [[FBSDisplayMode alloc] _initWithWidth:0 height:0 preferredScale:1 scaleOverride:0 refreshRate:0 gamut:0 hdr:0.0 rotation:0.0 virtual:v3 validityCheck:3];
  v1 = _emptyMode___emptyMode;
  _emptyMode___emptyMode = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FBSDisplayMode)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"init is unavailable on %@", v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    v16 = self;
    v17 = 2114;
    v18 = @"FBSDisplayMode.m";
    v19 = 1024;
    v20 = 38;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithCADisplayMode:(id)a3 scale:(double)a4 rotation:(int64_t)a5
{
  v9 = a3;
  if (!v9)
  {
    [FBSDisplayMode _initWithCADisplayMode:a2 scale:self rotation:?];
  }

  v10 = [v9 width];
  v11 = [v9 height];
  v12 = [v9 preferredScale];
  [v9 refreshRate];
  v14 = v13;
  v15 = [v9 colorGamut];
  v16 = FBSDisplayGamutFromCADisplayGamut(v15);
  v17 = [v9 hdrMode];
  LOBYTE(v20) = 0;
  v18 = [(FBSDisplayMode *)self _initWithWidth:v10 height:v11 preferredScale:v12 scaleOverride:v16 refreshRate:FBSDisplayHDRModeFromCADisplayHDRMode(v17) gamut:a5 hdr:a4 rotation:v14 virtual:v20 validityCheck:1];

  return v18;
}

- (id)_initWithWidth:(unint64_t)a3 height:(unint64_t)a4 preferredScale:(unint64_t)a5 scaleOverride:(double)a6 refreshRate:(double)a7 gamut:(int64_t)a8 hdr:(int64_t)a9 rotation:(int64_t)a10 virtual:(BOOL)a11 validityCheck:(int64_t)a12
{
  v28.receiver = self;
  v28.super_class = FBSDisplayMode;
  v21 = [(FBSDisplayMode *)&v28 init];
  if (v21)
  {
    v21->_width = a3;
    v21->_height = a4;
    v21->_preferredScale = a5;
    BSFloatEqualToFloat();
  }

  if (a12 != 3)
  {
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    if (a5 == -1 || a4 + 1 < 2 || a3 + 1 < 2 || v22 != v23)
    {
      goto LABEL_16;
    }

    if (!a5)
    {
      BSFloatIsZero();
    }

    if (a6 < 0.0 || a7 <= 0.0 || !FBSDisplayGamutIsValid(a8) || !FBSDisplayHDRModeIsValid(a9) || !FBSDisplayRotationIsValid(a10))
    {
LABEL_16:
      if (a12 == 2)
      {
        v25 = FBLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [FBSDisplayMode _initWithWidth:v25 height:? preferredScale:? scaleOverride:? refreshRate:? gamut:? hdr:? rotation:? virtual:? validityCheck:?];
        }

        v24 = 0;
      }

      else
      {
        if (a12 == 1)
        {
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSDisplayMode cannot be configured as requested : %@", 0];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [FBSDisplayMode _initWithWidth:a2 height:0 preferredScale:v27 scaleOverride:? refreshRate:? gamut:? hdr:? rotation:? virtual:? validityCheck:?];
          }

          [v27 UTF8String];
          _bs_set_crash_log_message();
        }

        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        [v24 handleFailureInMethod:a2 object:0 file:@"FBSDisplayMode.m" lineNumber:113 description:{@"FBSDisplayMode cannot be configured as requested : %@", 0}];
      }
    }
  }

  return 0;
}

- (id)_copyWithOverrideSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(FBSDisplayMode *)self pointScale];

  return [(FBSDisplayMode *)self _copyWithOverrideSize:width scale:height, v6];
}

- (id)_copyWithOverrideSize:(CGSize)a3 scale:(double)a4 refreshRate:(double)a5
{
  if ((self->_rotation | 2) == 3)
  {
    height = a3.height;
    a3.height = a3.width;
  }

  else
  {
    height = a3.width;
  }

  LOBYTE(v8) = 1;
  return [objc_alloc(objc_opt_class()) _initWithWidth:(height * a4) height:(a3.height * a4) preferredScale:a4 scaleOverride:self->_gamut refreshRate:self->_hdr gamut:self->_rotation hdr:a4 rotation:a5 virtual:v8 validityCheck:1];
}

- (FBSDisplayMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"width"];
  v6 = [v4 decodeInt64ForKey:@"height"];
  v7 = [v4 decodeInt64ForKey:@"preferredScale"];
  [v4 decodeDoubleForKey:@"scaleOverride"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"refreshRate"];
  v11 = v10;
  v12 = [v4 decodeIntegerForKey:@"gamut"];
  v13 = [v4 decodeIntegerForKey:@"hdr"];
  v14 = [v4 decodeIntegerForKey:@"rotation"];
  v15 = [v4 decodeBoolForKey:@"virtual"];

  LOBYTE(v17) = v15;
  return [(FBSDisplayMode *)self _initWithWidth:v5 height:v6 preferredScale:v7 scaleOverride:v12 refreshRate:v13 gamut:v14 hdr:v9 rotation:v11 virtual:v17 validityCheck:2];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:self->_width forKey:@"width"];
  [v5 encodeInt64:self->_height forKey:@"height"];
  preferredScale = self->_preferredScale;
  if (preferredScale)
  {
    [v5 encodeInt64:preferredScale forKey:@"preferredScale"];
  }

  BSFloatIsZero();
}

- (FBSDisplayMode)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_value(v4, [@"scaleOverride" UTF8String]);
  uint64 = xpc_dictionary_get_uint64(v4, [@"width" UTF8String]);
  v7 = xpc_dictionary_get_uint64(v4, [@"height" UTF8String]);
  v8 = xpc_dictionary_get_uint64(v4, [@"preferredScale" UTF8String]);
  value = 0.0;
  if (v5 && object_getClass(v5) == MEMORY[0x1E69E9E88])
  {
    value = xpc_double_get_value(v5);
  }

  v10 = xpc_dictionary_get_double(v4, [@"refreshRate" UTF8String]);
  int64 = xpc_dictionary_get_int64(v4, [@"gamut" UTF8String]);
  v12 = xpc_dictionary_get_int64(v4, [@"hdr" UTF8String]);
  v13 = xpc_dictionary_get_int64(v4, [@"rotation" UTF8String]);
  LOBYTE(v16) = xpc_dictionary_get_BOOL(v4, [@"virtual" UTF8String]);
  v14 = [(FBSDisplayMode *)self _initWithWidth:uint64 height:v7 preferredScale:v8 scaleOverride:int64 refreshRate:v12 gamut:v13 hdr:value rotation:v10 virtual:v16 validityCheck:2];

  return v14;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    xdict = v4;
    xpc_dictionary_set_uint64(v4, [@"width" UTF8String], self->_width);
    xpc_dictionary_set_uint64(xdict, [@"height" UTF8String], self->_height);
    if (self->_preferredScale)
    {
      xpc_dictionary_set_uint64(xdict, [@"preferredScale" UTF8String], self->_preferredScale);
    }

    BSFloatIsZero();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [off_1E76BC9C0 builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  width = self->_width;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __26__FBSDisplayMode_isEqual___block_invoke;
  v50[3] = &unk_1E76BF6C0;
  v7 = v4;
  v51 = v7;
  v8 = [v5 appendSizeT:width counterpart:v50];
  height = self->_height;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __26__FBSDisplayMode_isEqual___block_invoke_2;
  v48[3] = &unk_1E76BF6C0;
  v10 = v7;
  v49 = v10;
  v11 = [v5 appendSizeT:height counterpart:v48];
  preferredScale = self->_preferredScale;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __26__FBSDisplayMode_isEqual___block_invoke_3;
  v46[3] = &unk_1E76BF6C0;
  v13 = v10;
  v47 = v13;
  v14 = [v5 appendSizeT:preferredScale counterpart:v46];
  scaleOverride = self->_scaleOverride;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __26__FBSDisplayMode_isEqual___block_invoke_4;
  v44[3] = &unk_1E76BE0D8;
  v16 = v13;
  v45 = v16;
  v17 = [v5 appendCGFloat:v44 counterpart:scaleOverride];
  refreshRate = self->_refreshRate;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __26__FBSDisplayMode_isEqual___block_invoke_5;
  v42[3] = &unk_1E76BE0D8;
  v19 = v16;
  v43 = v19;
  v20 = [v5 appendDouble:v42 counterpart:refreshRate];
  gamut = self->_gamut;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __26__FBSDisplayMode_isEqual___block_invoke_6;
  v40[3] = &unk_1E76BD908;
  v22 = v19;
  v41 = v22;
  v23 = [v5 appendInteger:gamut counterpart:v40];
  hdr = self->_hdr;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __26__FBSDisplayMode_isEqual___block_invoke_7;
  v38[3] = &unk_1E76BD908;
  v25 = v22;
  v39 = v25;
  v26 = [v5 appendInteger:hdr counterpart:v38];
  rotation = self->_rotation;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __26__FBSDisplayMode_isEqual___block_invoke_8;
  v36[3] = &unk_1E76BD908;
  v28 = v25;
  v37 = v28;
  v29 = [v5 appendInteger:rotation counterpart:v36];
  v30 = self->_virtual;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __26__FBSDisplayMode_isEqual___block_invoke_9;
  v34[3] = &unk_1E76BD8B8;
  v35 = v28;
  v31 = v28;
  v32 = [v5 appendBool:v30 counterpart:v34];
  LOBYTE(v28) = [v5 isEqual];

  return v28;
}

- (void)_initWithCADisplayMode:(uint64_t)a1 scale:(uint64_t)a2 rotation:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSDisplayMode.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"caMode"}];
}

- (void)_initWithWidth:(uint64_t)a3 height:preferredScale:scaleOverride:refreshRate:gamut:hdr:rotation:virtual:validityCheck:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"FBSDisplayMode.m";
  v16 = 1024;
  v17 = 111;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)_initWithWidth:(uint64_t)a1 height:(NSObject *)a2 preferredScale:scaleOverride:refreshRate:gamut:hdr:rotation:virtual:validityCheck:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "FBSDisplayMode cannot be configured as requested : %{public}@", &v2, 0xCu);
}

@end