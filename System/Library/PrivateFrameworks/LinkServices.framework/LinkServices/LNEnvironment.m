@interface LNEnvironment
+ (LNEnvironment)defaultEnvironment;
- (BOOL)locationAuthorizationStatusForBundleIdentifier:(id)a3;
- (LNEnvironment)initWithCoder:(id)a3;
- (LNEnvironment)initWithLocale:(id)a3;
- (LNEnvironment)initWithLocaleIdentifier:(id)a3;
- (NSString)localeIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)trimLocation:(id)a3 atKeyPath:(id)a4 againstTCCWithBundleIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEnvironment

- (LNEnvironment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentLocation"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendar"];
    self = [(LNEnvironment *)self initWithLocaleIdentifier:v5];
    [(LNEnvironment *)self setTimeZone:v6];
    [(LNEnvironment *)self setCurrentLocation:v7];
    [(LNEnvironment *)self setCalendar:v8];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNEnvironment *)self localeIdentifier];
  [v4 encodeObject:v5 forKey:@"localeIdentifier"];

  v6 = [(LNEnvironment *)self timeZone];
  [v4 encodeObject:v6 forKey:@"timeZone"];

  v7 = [(LNEnvironment *)self calendar];
  [v4 encodeObject:v7 forKey:@"calendar"];

  v16 = v4;
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 userInfo];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(LNEnvironment *)self currentLocation];
  if (v9)
  {
    v14 = [v12 objectForKeyedSubscript:@"bundleIdentifier"];
    v15 = [(LNEnvironment *)self trimLocation:v13 atKeyPath:@"currentLocation" againstTCCWithBundleIdentifier:v14];
    [v16 encodeObject:v15 forKey:@"currentLocation"];
  }

  else
  {
    [v16 encodeObject:v13 forKey:@"currentLocation"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LNEnvironment alloc];
  v5 = [(LNEnvironment *)self localeIdentifier];
  v6 = [(LNEnvironment *)v4 initWithLocaleIdentifier:v5];

  v7 = [(LNEnvironment *)self timeZone];
  [(LNEnvironment *)v6 setTimeZone:v7];

  v8 = [(LNEnvironment *)self currentLocation];
  [(LNEnvironment *)v6 setCurrentLocation:v8];

  v9 = [(LNEnvironment *)self calendar];
  [(LNEnvironment *)v6 setCalendar:v9];

  v10 = [(LNEnvironment *)self locationAuthorizationStatus];
  v11 = [v10 mutableCopy];
  [(LNEnvironment *)v6 setLocationAuthorizationStatus:v11];

  return v6;
}

- (BOOL)locationAuthorizationStatusForBundleIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![LNEntitlementsValidator validateEntitlement:@"com.apple.locationd.effective_bundle" forCurrentTaskWithValidator:&__block_literal_global_27]|| ![LNEntitlementsValidator validateEntitlement:@"com.apple.security.exception.mach-lookup.global-name" forCurrentTaskWithValidator:&__block_literal_global_32])
  {
    v6 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  v5 = [MEMORY[0x1E695FBE8] authorizationStatusForBundleIdentifier:v4];
  if (v5 < 3)
  {
    v6 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      v7 = "Removing location value because of TCC";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&dword_19763D000, v8, v9, v7, &v12, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v5 - 3 > 1)
  {
    goto LABEL_11;
  }

  v6 = getLNLogCategorySecurity();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ is authorized to access location", &v12, 0xCu);
  }

  v3 = 1;
LABEL_10:

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

uint64_t __64__LNEnvironment_locationAuthorizationStatusForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 containsObject:@"com.apple.locationd.synchronous"];

  return v5;
}

- (id)trimLocation:(id)a3 atKeyPath:(id)a4 againstTCCWithBundleIdentifier:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"LNEnvironment.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_3:
  v12 = getLNLogCategorySecurity();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v22 = v10;
  }

  if (v11)
  {
    v13 = [(LNEnvironment *)self locationAuthorizationStatus];
    v14 = [v13 objectForKeyedSubscript:v11];

    if (!v14)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[LNEnvironment locationAuthorizationStatusForBundleIdentifier:](self, "locationAuthorizationStatusForBundleIdentifier:", v11)}];
      v15 = [(LNEnvironment *)self locationAuthorizationStatus];
      [v15 setObject:v14 forKeyedSubscript:v11];
    }

    if ([v14 BOOLValue])
    {
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    v14 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v14, OS_LOG_TYPE_ERROR, "Removing location because the bundle identifier is not defined", buf, 2u);
    }

    v17 = 0;
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (NSString)localeIdentifier
{
  v2 = [(LNEnvironment *)self locale];
  v3 = [v2 localeIdentifier];

  return v3;
}

- (LNEnvironment)initWithLocaleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"LNEnvironment.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier"}];
  }

  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
  v7 = [(LNEnvironment *)self initWithLocale:v6];

  return v7;
}

- (LNEnvironment)initWithLocale:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"LNEnvironment.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"locale"}];
  }

  v14.receiver = self;
  v14.super_class = LNEnvironment;
  v6 = [(LNEnvironment *)&v14 init];
  if (v6)
  {
    v7 = [v5 copy];
    locale = v6->_locale;
    v6->_locale = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    locationAuthorizationStatus = v6->_locationAuthorizationStatus;
    v6->_locationAuthorizationStatus = v9;

    v11 = v6;
  }

  return v6;
}

+ (LNEnvironment)defaultEnvironment
{
  if (defaultEnvironment_onceToken != -1)
  {
    dispatch_once(&defaultEnvironment_onceToken, &__block_literal_global_4007);
  }

  v3 = defaultEnvironment_defaultEnvironment;

  return v3;
}

void __35__LNEnvironment_defaultEnvironment__block_invoke()
{
  v0 = [LNEnvironment alloc];
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v1 = [(LNEnvironment *)v0 initWithLocale:v3];
  v2 = defaultEnvironment_defaultEnvironment;
  defaultEnvironment_defaultEnvironment = v1;
}

@end