@interface PARSessionConfiguration
+ (id)defaultSessionConfiguration;
- (PARSessionConfiguration)initWithCoder:(id)a3;
- (PARSessionConfiguration)initWithId:(id)a3 userAgent:(id)a4 factory:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARSessionConfiguration

- (PARSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userAgent"];
  v7 = [(PARSessionConfiguration *)self initWithId:v5 userAgent:v6];

  v7->_dontPreloadImages = [v4 decodeBoolForKey:@"_dontPreloadImages"];
  v7->_parsecEnabled = [v4 decodeBoolForKey:@"_parsecEnabled"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentNamespaceId"];
  experimentNamespaceId = v7->_experimentNamespaceId;
  v7->_experimentNamespaceId = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
  experimentId = v7->_experimentId;
  v7->_experimentId = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentTreatmentId"];
  experimentTreatmentId = v7->_experimentTreatmentId;
  v7->_experimentTreatmentId = v12;

  v7->_experimentDeploymentId = [v4 decodeInt32ForKey:@"experimentDeploymentId"];
  v7->_experimentVersion = [v4 decodeInt32ForKey:@"experimentVersion"];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"_overrideFeatureFlags"];

  overrideFeatureFlags = v7->_overrideFeatureFlags;
  v7->_overrideFeatureFlags = v18;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_userAgent forKey:@"_userAgent"];
  [v5 encodeBool:self->_dontPreloadImages forKey:@"_dontPreloadImages"];
  [v5 encodeBool:self->_parsecEnabled forKey:@"_parsecEnabled"];
  [v5 encodeObject:self->_experimentNamespaceId forKey:@"experimentNamespaceId"];
  [v5 encodeObject:self->_experimentId forKey:@"experimentId"];
  [v5 encodeObject:self->_experimentTreatmentId forKey:@"experimentTreatmentId"];
  [v5 encodeInt32:self->_experimentDeploymentId forKey:@"experimentDeploymentId"];
  [v5 encodeInt32:self->_experimentVersion forKey:@"experimentVersion"];
  [v5 encodeObject:self->_overrideFeatureFlags forKey:@"_overrideFeatureFlags"];
}

- (PARSessionConfiguration)initWithId:(id)a3 userAgent:(id)a4 factory:(id)a5
{
  v5 = MEMORY[0x1EEE9AC00](self);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v43 = *MEMORY[0x1E69E9840];
  v12 = v11;
  v13 = v9;
  v14 = v7;
  v39.receiver = v10;
  v39.super_class = PARSessionConfiguration;
  v15 = [(PARSessionConfiguration *)&v39 init];
  if (!v15)
  {
    goto LABEL_29;
  }

  if (v12 && v13)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v17 = getpid();
  if (proc_pidpath(v17, buffer, 0x1000u) <= 0)
  {
    if (PARLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken, &__block_literal_global_328);
    }

    v20 = PARLogHandleForCategory_logHandles_2;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2, OS_LOG_TYPE_ERROR))
    {
      v32 = v20;
      v33 = __error();
      v34 = strerror(*v33);
      *buf = 67109378;
      *&buf[4] = v17;
      LOWORD(v41[0]) = 2080;
      *(v41 + 2) = v34;
      _os_log_error_impl(&dword_1B1064000, v32, OS_LOG_TYPE_ERROR, "error getting path for pid [%d] %s", buf, 0x12u);
    }

    v19 = @"com.apple.parsec.defaultClient";
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
    v19 = [v18 lastPathComponent];
  }

  v21 = v19;
  if (([(__CFString *)v21 isEqualToString:@"searchd"]& 1) != 0 || ([(__CFString *)v21 isEqualToString:@"SpringBoard"]& 1) != 0 || ([(__CFString *)v21 isEqualToString:@"Spotlight Test"]& 1) != 0 || ([(__CFString *)v21 isEqualToString:@"Spotlight"]& 1) != 0 || ([(__CFString *)v21 isEqualToString:@"Spotlight2"]& 1) != 0 || [(__CFString *)v21 isEqualToString:@"Search"])
  {
    v22 = @"com.apple.spotlight";
    *buf = @"_identifier";
    v41[0] = @"_userAgent";
    v23 = @"Spotlight/1";
    goto LABEL_19;
  }

  v35 = @"Safari";
  if ([(__CFString *)v21 containsString:@"Safari"])
  {
    *buf = @"_identifier";
    v41[0] = @"_userAgent";
    v23 = @"Safari/1";
  }

  else
  {
    if (([(__CFString *)v21 isEqualToString:@"DDActionsService"]& 1) != 0 || [(__CFString *)v21 isEqualToString:@"LookupViewService"])
    {
      v22 = @"com.apple.lookup";
      *buf = @"_identifier";
      v41[0] = @"_userAgent";
      v23 = @"Lookup/1";
      goto LABEL_19;
    }

    if ([(__CFString *)v21 isEqualToString:@"HashtagImagesExtension"])
    {
      v22 = @"Messages-searchToShare-session";
      *buf = @"_identifier";
      v41[0] = @"_userAgent";
      v23 = @"Messages/1";
      goto LABEL_19;
    }

    v36 = [(__CFString *)v21 lowercaseString];
    v37 = [v36 containsString:@"news"];

    if (v37)
    {
      v22 = @"com.apple.news";
      *buf = @"_identifier";
      v41[0] = @"_userAgent";
      v23 = @"News/1";
      goto LABEL_19;
    }

    if (([(__CFString *)v21 isEqualToString:@"assistantd"]& 1) != 0 || ([(__CFString *)v21 parsec_hasPrefix:@"Siri"]& 1) != 0 || [(__CFString *)v21 isEqualToString:@"assistant_service"])
    {
      v22 = @"com.apple.siri";
      *buf = @"_identifier";
      v41[0] = @"_userAgent";
      v23 = @"Siri/1";
      goto LABEL_19;
    }

    if ([(__CFString *)v21 isEqualToString:@"suggestd"])
    {
      v22 = @"com.apple.proactive.trystero";
      *buf = @"_identifier";
      v41[0] = @"_userAgent";
      v23 = @"Trystero/1";
      goto LABEL_19;
    }

    v35 = @"reversetemplated";
    if (([(__CFString *)v21 isEqualToString:@"reversetemplated"]& 1) == 0 && ![(__CFString *)v21 containsString:@"suggest_tool"])
    {
      if ([(__CFString *)v21 isEqualToString:@"duetexpertd"])
      {
        v22 = @"com.apple.notifications.logging";
        *buf = @"_identifier";
        v41[0] = @"_userAgent";
        v23 = @"DuetExpert/1";
      }

      else
      {
        if ([(__CFString *)v21 isEqualToString:@"mediaanalysisd"])
        {
          v22 = @"com.apple.mediaanalysisd";
        }

        else
        {
          if (([(__CFString *)v21 isEqualToString:@"PhotosMessagesApp"]& 1) != 0 || ([(__CFString *)v21 isEqualToString:@"PhotoPicker"]& 1) != 0 || [(__CFString *)v21 isEqualToString:@"PhotosPicker"])
          {
            v22 = @"com.apple.photopicker";
            *buf = @"_identifier";
            v41[0] = @"_userAgent";
            v23 = @"PhotoPicker/1";
            goto LABEL_19;
          }

          if (([(__CFString *)v21 isEqualToString:@"MobileSlideShow"]& 1) != 0 || [(__CFString *)v21 isEqualToString:@"Photos"])
          {
            v22 = @"com.apple.photos";
            *buf = @"_identifier";
            v41[0] = @"_userAgent";
            v23 = @"Photos/1";
            goto LABEL_19;
          }

          if (([(__CFString *)v21 isEqualToString:@"Tamale"]& 1) == 0 && ([(__CFString *)v21 isEqualToString:@"VisualIntelligenceCamera"]& 1) == 0 && ![(__CFString *)v21 isEqualToString:@"ScreenshotServicesService"])
          {
            v38 = PARLogHandleForCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buffer[0]) = 138412290;
              *(buffer + 4) = v21;
              _os_log_error_impl(&dword_1B1064000, v38, OS_LOG_TYPE_ERROR, "unhandled process %@", buffer, 0xCu);
            }

            v22 = @"default";
            *buf = @"_identifier";
            v41[0] = @"_userAgent";
            v23 = @"parsecd/1.0";
            goto LABEL_19;
          }

          v22 = @"com.apple.VisualIntelligenceCamera";
        }

        *buf = @"_identifier";
        v41[0] = @"_userAgent";
        v23 = @"VisualIntelligence/1";
      }

LABEL_19:
      *&buffer[0] = v22;
      goto LABEL_20;
    }

    *buf = @"_identifier";
    v41[0] = @"_userAgent";
    v23 = @"CoreSuggestions/1";
  }

  *&buffer[0] = v35;
LABEL_20:
  *(&buffer[0] + 1) = v23;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buffer forKeys:buf count:2];

  if (!v12)
  {
    v24 = [v16 objectForKeyedSubscript:@"_identifier"];
    goto LABEL_22;
  }

LABEL_21:
  v24 = [v12 copy];
LABEL_22:
  identifier = v15->_identifier;
  v15->_identifier = v24;

  if (v14)
  {
    v26 = v14;
  }

  else
  {
    v26 = objc_alloc_init(PARDefaultFactory);
  }

  factory = v15->_factory;
  v15->_factory = v26;

  if (v13)
  {
    v28 = [v13 copy];
  }

  else
  {
    v28 = [v16 objectForKeyedSubscript:@"_userAgent"];
  }

  userAgent = v15->_userAgent;
  v15->_userAgent = v28;

  v15->_dontPreloadImages = 1;
  v15->_parsecEnabled = 1;

LABEL_29:
  v30 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)defaultSessionConfiguration
{
  if (defaultSessionConfiguration_once != -1)
  {
    dispatch_once(&defaultSessionConfiguration_once, &__block_literal_global_8);
  }

  v3 = defaultSessionConfiguration__defaultSession;

  return v3;
}

uint64_t __54__PARSessionConfiguration_defaultSessionConfiguration__block_invoke()
{
  defaultSessionConfiguration__defaultSession = objc_alloc_init(PARSessionConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

@end