@interface CSErrorDetails
- (BOOL)isInternalBuild;
- (BOOL)shouldShowInternalErrorDetails;
- (CSErrorDetails)initWithCode:(int64_t)a3 subsystem:(int64_t)a4 description:(id)a5 error:(id)a6 exitSession:(BOOL)a7;
- (id)_friendlyDescriptionForError;
- (void)_generateTechnicalDescription;
- (void)_setupCommonProperties;
@end

@implementation CSErrorDetails

- (CSErrorDetails)initWithCode:(int64_t)a3 subsystem:(int64_t)a4 description:(id)a5 error:(id)a6 exitSession:(BOOL)a7
{
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = CSErrorDetails;
  v14 = [(CSErrorDetails *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_originalError, a6);
    v15->_errorCode = a3;
    v15->_subsystem = a4;
    v16 = [MEMORY[0x277CBEAA8] date];
    timestamp = v15->_timestamp;
    v15->_timestamp = v16;

    if (v12)
    {
      v18 = v12;
      errorDescription = v15->_errorDescription;
      v15->_errorDescription = v18;
    }

    else
    {
      v20 = [v13 localizedDescription];
      errorDescription = v20;
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = @"Unknown error";
      }

      objc_storeStrong(&v15->_errorDescription, v21);
    }

    v15->_exitSession = a7;
    [(CSErrorDetails *)v15 _setupCommonProperties];
  }

  return v15;
}

- (BOOL)shouldShowInternalErrorDetails
{
  v2 = self->_errorCode + 117;
  if (v2 < 0xF && ((0x5081u >> v2) & 1) != 0 || ![(CSErrorDetails *)self isInternalBuild])
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ContinuitySing"];
  v4 = [v3 objectForKey:@"CSInternalErrorReportingEnabled"];
  if (v4)
  {
    v5 = [v3 BOOLForKey:@"CSInternalErrorReportingEnabled"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    [CSErrorDetails isInternalBuild];
  }

  return isInternalBuild_isInternal;
}

uint64_t __33__CSErrorDetails_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalBuild_isInternal = result;
  return result;
}

- (void)_setupCommonProperties
{
  subsystem = self->_subsystem;
  if (subsystem <= 8)
  {
    subsystemName = self->_subsystemName;
    self->_subsystemName = &off_278E0B550[subsystem]->isa;
  }

  v5 = MGGetStringAnswer();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"Unknown";
  }

  objc_storeStrong(&self->_buildVersion, v7);

  [(CSErrorDetails *)self _generateTechnicalDescription];
}

- (void)_generateTechnicalDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(CSErrorDetails *)self _friendlyDescriptionForError];
  v5 = v4;
  if (v4)
  {
    [v3 appendFormat:@"%@\n\n", v4];
  }

  [v3 appendFormat:@"Technical Details:\n"];
  [v3 appendFormat:@"Subsystem: %@\n", self->_subsystemName];
  [v3 appendFormat:@"Error Code: %ld\n", self->_errorCode];
  [v3 appendFormat:@"Description: %@\n", self->_errorDescription];
  [v3 appendFormat:@"Build: %@\n", self->_buildVersion];
  [v3 appendFormat:@"Timestamp: %@\n", self->_timestamp];
  if (self->_originalError)
  {
    [v3 appendFormat:@"Original Error: %@\n", self->_originalError];
    v6 = [(NSError *)self->_originalError userInfo];
    v7 = [v6 count];

    if (v7)
    {
      v18 = v5;
      [v3 appendString:@"Error UserInfo:\n"];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [(NSError *)self->_originalError userInfo];
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          v12 = 0;
          do
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * v12);
            v14 = [(NSError *)self->_originalError userInfo];
            v15 = [v14 objectForKeyedSubscript:v13];
            [v3 appendFormat:@"  %@: %@\n", v13, v15];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v10);
      }

      v5 = v18;
    }
  }

  v16 = [v3 copy];
  technicalDescription = self->_technicalDescription;
  self->_technicalDescription = v16;
}

- (id)_friendlyDescriptionForError
{
  v2 = self->_errorCode + 117;
  if (v2 > 0x11)
  {
    return 0;
  }

  else
  {
    return off_278E0B598[v2];
  }
}

@end