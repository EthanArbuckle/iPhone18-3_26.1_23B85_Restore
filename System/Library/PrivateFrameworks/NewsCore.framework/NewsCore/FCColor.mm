@interface FCColor
+ (FCColor)colorWithHexString:(id)a3;
+ (FCColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (id)blackColor;
+ (id)clearColor;
+ (id)nullableColorWithHexString:(id)a3;
+ (id)whiteColor;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSimilarToColor:(id)a3 withinPercentage:(double)a4;
- (FCColor)init;
- (FCColor)initWithCoder:(id)a3;
- (FCColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (NSString)hex;
- (id)legibleColor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)readDeconstructedRepresentationWithAcccessor:(id)a3;
@end

@implementation FCColor

+ (id)whiteColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__FCColor_whiteColor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1EDB26ED8 != -1)
  {
    dispatch_once(&qword_1EDB26ED8, block);
  }

  v2 = _MergedGlobals_134;

  return v2;
}

uint64_t __21__FCColor_whiteColor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _MergedGlobals_134 = [objc_alloc(objc_opt_class()) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];

  return MEMORY[0x1EEE66BB8]();
}

- (FCColor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCColor init]";
    v10 = 2080;
    v11 = "FCColor.m";
    v12 = 1024;
    v13 = 77;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCColor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "red >= 0"];
    *buf = 136315906;
    v19 = "[FCColor initWithRed:green:blue:alpha:]";
    v20 = 2080;
    v21 = "FCColor.m";
    v22 = 1024;
    v23 = 82;
    v24 = 2114;
    v25 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a4 < 0.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "green >= 0"];
    *buf = 136315906;
    v19 = "[FCColor initWithRed:green:blue:alpha:]";
    v20 = 2080;
    v21 = "FCColor.m";
    v22 = 1024;
    v23 = 83;
    v24 = 2114;
    v25 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a5 < 0.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "blue >= 0"];
    *buf = 136315906;
    v19 = "[FCColor initWithRed:green:blue:alpha:]";
    v20 = 2080;
    v21 = "FCColor.m";
    v22 = 1024;
    v23 = 84;
    v24 = 2114;
    v25 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a6 < 0.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "alpha >= 0"];
    *buf = 136315906;
    v19 = "[FCColor initWithRed:green:blue:alpha:]";
    v20 = 2080;
    v21 = "FCColor.m";
    v22 = 1024;
    v23 = 85;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v17.receiver = self;
  v17.super_class = FCColor;
  result = [(FCColor *)&v17 init];
  if (result)
  {
    result->_red = a3;
    result->_green = a4;
    result->_blue = a5;
    result->_alpha = a6;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

+ (FCColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "red >= 0"];
    *buf = 136315906;
    v19 = "+[FCColor colorWithRed:green:blue:alpha:]";
    v20 = 2080;
    v21 = "FCColor.m";
    v22 = 1024;
    v23 = 100;
    v24 = 2114;
    v25 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a4 < 0.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "green >= 0"];
    *buf = 136315906;
    v19 = "+[FCColor colorWithRed:green:blue:alpha:]";
    v20 = 2080;
    v21 = "FCColor.m";
    v22 = 1024;
    v23 = 101;
    v24 = 2114;
    v25 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a5 < 0.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "blue >= 0"];
    *buf = 136315906;
    v19 = "+[FCColor colorWithRed:green:blue:alpha:]";
    v20 = 2080;
    v21 = "FCColor.m";
    v22 = 1024;
    v23 = 102;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a6 < 0.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "alpha >= 0"];
    *buf = 136315906;
    v19 = "+[FCColor colorWithRed:green:blue:alpha:]";
    v20 = 2080;
    v21 = "FCColor.m";
    v22 = 1024;
    v23 = 103;
    v24 = 2114;
    v25 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (FCColor)colorWithHexString:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  if ([v4 fc_isValidColorHexString])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__FCColor_colorWithHexString___block_invoke;
    v9[3] = &unk_1E7C38868;
    v9[4] = &v10;
    v9[5] = a1;
    FCDeconstructHexStringWithBlock(v4, v9);
  }

  else
  {
    v5 = [objc_alloc(objc_opt_class()) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v6 = v11[5];
    v11[5] = v5;
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __30__FCColor_colorWithHexString___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 40);
  v7 = [objc_alloc(objc_opt_class()) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x1EEE66BB8](v7, v9);
}

+ (id)nullableColorWithHexString:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  if ([v4 fc_isValidColorHexString])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__FCColor_nullableColorWithHexString___block_invoke;
    v7[3] = &unk_1E7C38868;
    v7[4] = &v8;
    v7[5] = a1;
    FCDeconstructHexStringWithBlock(v4, v7);
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __38__FCColor_nullableColorWithHexString___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 40);
  v7 = [objc_alloc(objc_opt_class()) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x1EEE66BB8](v7, v9);
}

+ (id)blackColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__FCColor_blackColor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1EDB26EE8 != -1)
  {
    dispatch_once(&qword_1EDB26EE8, block);
  }

  v2 = qword_1EDB26EE0;

  return v2;
}

uint64_t __21__FCColor_blackColor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(objc_opt_class()) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v3 = qword_1EDB26EE0;
  qword_1EDB26EE0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (id)clearColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__FCColor_clearColor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1EDB26EF8 != -1)
  {
    dispatch_once(&qword_1EDB26EF8, block);
  }

  v2 = qword_1EDB26EF0;

  return v2;
}

uint64_t __21__FCColor_clearColor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(objc_opt_class()) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v3 = qword_1EDB26EF0;
  qword_1EDB26EF0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)readDeconstructedRepresentationWithAcccessor:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v15 = "[FCColor readDeconstructedRepresentationWithAcccessor:]";
    v16 = 2080;
    v17 = "FCColor.m";
    v18 = 1024;
    v19 = 173;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [(FCColor *)self red];
  v6 = v5;
  [(FCColor *)self green];
  v8 = v7;
  [(FCColor *)self blue];
  v10 = v9;
  [(FCColor *)self alpha];
  v4[2](v4, v6, v8, v10, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSimilarToColor:(id)a3 withinPercentage:(double)a4
{
  v6 = a3;
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (a4 >= 0.00000011920929)
  {
    [(FCColor *)self red];
    v9 = v8;
    [v6 red];
    if (vabdd_f64(v9, v10) <= a4)
    {
      [(FCColor *)self green];
      v12 = v11;
      [v6 green];
      if (vabdd_f64(v12, v13) <= a4)
      {
        [(FCColor *)self blue];
        v15 = v14;
        [v6 blue];
        if (vabdd_f64(v15, v16) <= a4)
        {
          [(FCColor *)self alpha];
          v19 = v18;
          [v6 alpha];
          v7 = vabdd_f64(v19, v20) <= a4;
          goto LABEL_8;
        }
      }
    }

    goto LABEL_7;
  }

  v7 = [(FCColor *)self isEqual:v6];
LABEL_8:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(FCColor *)self red];
    v7 = v6;
    [v5 red];
    if (vabdd_f64(v7, v8) >= 0.00999999978 || (-[FCColor green](self, "green"), v10 = v9, [v5 green], vabdd_f64(v10, v11) >= 0.00999999978) || (-[FCColor blue](self, "blue"), v13 = v12, objc_msgSend(v5, "blue"), vabdd_f64(v13, v14) >= 0.00999999978))
    {
      v18 = 0;
    }

    else
    {
      [(FCColor *)self alpha];
      v16 = v15;
      [v5 alpha];
      v18 = vabdd_f64(v16, v17) < 0.00999999978;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(FCColor *)self red];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  v6 = MEMORY[0x1E696AD98];
  [(FCColor *)self green];
  v7 = [v6 numberWithDouble:?];
  v8 = [v7 hash] ^ v5;
  v9 = MEMORY[0x1E696AD98];
  [(FCColor *)self blue];
  v10 = [v9 numberWithDouble:?];
  v11 = [v10 hash];
  v12 = MEMORY[0x1E696AD98];
  [(FCColor *)self alpha];
  v13 = [v12 numberWithDouble:?];
  v14 = v11 ^ [v13 hash];

  return v8 ^ v14;
}

- (id)legibleColor
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__FCColor_legibleColor__block_invoke;
  v4[3] = &unk_1E7C388B0;
  v4[4] = self;
  v4[5] = &v5;
  [(FCColor *)self readDeconstructedRepresentationWithAcccessor:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __23__FCColor_legibleColor__block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v5 = a3 * 0.7152 + a2 * 0.2126 + a4 * 0.0722;
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  if (v5 > 0.7)
  {
    [v7 blackColor];
  }

  else
  {
    [v7 whiteColor];
  }
  v8 = ;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
}

- (NSString)hex
{
  v2 = self->_red * 255.0;
  v3 = llroundf(v2);
  v4 = self->_green * 255.0;
  v5 = llroundf(v4);
  v6 = self->_blue * 255.0;
  v7 = self->_alpha * 255.0;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02lX%02lX%02lX%02lX", v3, v5, llroundf(v6), llroundf(v7)];
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [(FCColor *)self red];
  *&v4 = v4;
  [v8 encodeFloat:@"red" forKey:v4];
  [(FCColor *)self green];
  *&v5 = v5;
  [v8 encodeFloat:@"green" forKey:v5];
  [(FCColor *)self blue];
  *&v6 = v6;
  [v8 encodeFloat:@"blue" forKey:v6];
  [(FCColor *)self alpha];
  *&v7 = v7;
  [v8 encodeFloat:@"alpha" forKey:v7];
}

- (FCColor)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"red"];
  v6 = v5;
  [v4 decodeFloatForKey:@"green"];
  v8 = v7;
  [v4 decodeFloatForKey:@"blue"];
  v10 = v9;
  [v4 decodeFloatForKey:@"alpha"];
  v12 = v11;

  return [(FCColor *)self initWithRed:v6 green:v8 blue:v10 alpha:v12];
}

@end