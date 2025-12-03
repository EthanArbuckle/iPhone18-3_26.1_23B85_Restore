@interface CSErrorDetails
- (BOOL)isInternalBuild;
- (BOOL)shouldShowInternalErrorDetails;
- (CSErrorDetails)initWithCode:(int64_t)code subsystem:(int64_t)subsystem description:(id)description error:(id)error exitSession:(BOOL)session;
- (id)_friendlyDescriptionForError;
- (void)_generateTechnicalDescription;
- (void)_setupCommonProperties;
@end

@implementation CSErrorDetails

- (CSErrorDetails)initWithCode:(int64_t)code subsystem:(int64_t)subsystem description:(id)description error:(id)error exitSession:(BOOL)session
{
  descriptionCopy = description;
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = CSErrorDetails;
  v14 = [(CSErrorDetails *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_originalError, error);
    v15->_errorCode = code;
    v15->_subsystem = subsystem;
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v15->_timestamp;
    v15->_timestamp = date;

    if (descriptionCopy)
    {
      v18 = descriptionCopy;
      errorDescription = v15->_errorDescription;
      v15->_errorDescription = v18;
    }

    else
    {
      localizedDescription = [errorCopy localizedDescription];
      errorDescription = localizedDescription;
      if (localizedDescription)
      {
        v21 = localizedDescription;
      }

      else
      {
        v21 = @"Unknown error";
      }

      objc_storeStrong(&v15->_errorDescription, v21);
    }

    v15->_exitSession = session;
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
  string = [MEMORY[0x277CCAB68] string];
  _friendlyDescriptionForError = [(CSErrorDetails *)self _friendlyDescriptionForError];
  v5 = _friendlyDescriptionForError;
  if (_friendlyDescriptionForError)
  {
    [string appendFormat:@"%@\n\n", _friendlyDescriptionForError];
  }

  [string appendFormat:@"Technical Details:\n"];
  [string appendFormat:@"Subsystem: %@\n", self->_subsystemName];
  [string appendFormat:@"Error Code: %ld\n", self->_errorCode];
  [string appendFormat:@"Description: %@\n", self->_errorDescription];
  [string appendFormat:@"Build: %@\n", self->_buildVersion];
  [string appendFormat:@"Timestamp: %@\n", self->_timestamp];
  if (self->_originalError)
  {
    [string appendFormat:@"Original Error: %@\n", self->_originalError];
    userInfo = [(NSError *)self->_originalError userInfo];
    v7 = [userInfo count];

    if (v7)
    {
      v18 = v5;
      [string appendString:@"Error UserInfo:\n"];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      userInfo2 = [(NSError *)self->_originalError userInfo];
      v9 = [userInfo2 countByEnumeratingWithState:&v20 objects:v19 count:16];
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
              objc_enumerationMutation(userInfo2);
            }

            v13 = *(*(&v20 + 1) + 8 * v12);
            userInfo3 = [(NSError *)self->_originalError userInfo];
            v15 = [userInfo3 objectForKeyedSubscript:v13];
            [string appendFormat:@"  %@: %@\n", v13, v15];

            ++v12;
          }

          while (v10 != v12);
          v10 = [userInfo2 countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v10);
      }

      v5 = v18;
    }
  }

  v16 = [string copy];
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