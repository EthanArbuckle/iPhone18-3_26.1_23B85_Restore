@interface CalConferenceUtilities
+ (BOOL)conferenceURLHasAllowedScheme:(id)a3;
+ (id)_logHandle;
@end

@implementation CalConferenceUtilities

+ (BOOL)conferenceURLHasAllowedScheme:(id)a3
{
  v3 = a3;
  if (conferenceURLHasAllowedScheme__onceToken != -1)
  {
    +[CalConferenceUtilities conferenceURLHasAllowedScheme:];
  }

  v4 = [v3 scheme];
  v5 = [v4 lowercaseString];

  if (([conferenceURLHasAllowedScheme__alwaysAllowedSchemes containsObject:v5] & 1) == 0)
  {
    if ([v5 isEqualToString:@"file"])
    {
      v6 = 0;
      goto LABEL_17;
    }

    v12 = 0;
    v7 = [objc_alloc(MEMORY[0x1E6963630]) initWithURL:v3 error:&v12];
    v8 = v12;
    v9 = v8;
    if (v7)
    {
      v10 = [v7 bundleRecord];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v10 developerType]== 3;
LABEL_15:

LABEL_16:
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (!v8)
      {
        v6 = 0;
        goto LABEL_16;
      }

      v10 = [objc_opt_class() _logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CalConferenceUtilities *)v9 conferenceURLHasAllowedScheme:v10];
      }
    }

    v6 = 0;
    goto LABEL_15;
  }

  v6 = 1;
LABEL_17:

  return v6;
}

uint64_t __56__CalConferenceUtilities_conferenceURLHasAllowedScheme___block_invoke()
{
  conferenceURLHasAllowedScheme__alwaysAllowedSchemes = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F37B0580];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_logHandle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CalConferenceUtilities__logHandle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_logHandle_onceToken != -1)
  {
    dispatch_once(&_logHandle_onceToken, block);
  }

  v2 = _logHandle_logHandle;

  return v2;
}

void __36__CalConferenceUtilities__logHandle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v6 = NSStringFromClass(v2);
  v3 = v6;
  v4 = os_log_create("com.apple.CalendarFoundation", [v6 UTF8String]);
  v5 = _logHandle_logHandle;
  _logHandle_logHandle = v4;
}

+ (void)conferenceURLHasAllowedScheme:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Error getting claim binding for URL, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end