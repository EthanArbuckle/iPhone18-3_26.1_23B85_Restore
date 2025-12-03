@interface CSLPRFReturnToAppSettings
- (BOOL)isEqual:(id)equal;
- (CSLPRFReturnToAppSettings)init;
- (CSLPRFReturnToAppSettings)initWithDictionary:(id)dictionary;
- (double)returnToAppTimeout;
- (id)description;
- (id)toDictionary;
- (unint64_t)hash;
- (void)setReturnToAppTimeout:(double)timeout;
@end

@implementation CSLPRFReturnToAppSettings

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self->_hasCustomReturnToAppTimeout)
  {
    v5 = [v3 appendFloat:@"ReturnToAppTimeout" withName:self->_returnToAppTimeout];
  }

  if (self->_sessionCapable)
  {
    v6 = [v4 appendBool:1 withName:@"SessionCapable"];
  }

  if (self->_alwaysReturnToAppInSession)
  {
    v7 = [v4 appendBool:1 withName:@"AlwaysReturnToAppInSession"];
  }

  build = [v4 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  hasCustomReturnToAppTimeout = self->_hasCustomReturnToAppTimeout;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __37__CSLPRFReturnToAppSettings_isEqual___block_invoke;
  v28[3] = &unk_278745630;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendBool:hasCustomReturnToAppTimeout counterpart:v28];
  returnToAppTimeout = self->_returnToAppTimeout;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __37__CSLPRFReturnToAppSettings_isEqual___block_invoke_2;
  v26[3] = &unk_2787448D8;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendDouble:v26 counterpart:returnToAppTimeout];
  sessionCapable = self->_sessionCapable;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __37__CSLPRFReturnToAppSettings_isEqual___block_invoke_3;
  v24[3] = &unk_278745630;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendBool:sessionCapable counterpart:v24];
  alwaysReturnToAppInSession = self->_alwaysReturnToAppInSession;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __37__CSLPRFReturnToAppSettings_isEqual___block_invoke_4;
  v22 = &unk_278745630;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendBool:alwaysReturnToAppInSession counterpart:&v19];
  LOBYTE(alwaysReturnToAppInSession) = [v5 isEqual];

  return alwaysReturnToAppInSession;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = builder;
  if (self->_hasCustomReturnToAppTimeout)
  {
    v5 = [builder appendDouble:self->_returnToAppTimeout];
  }

  v6 = [v4 appendBool:self->_sessionCapable];
  v7 = [v4 appendBool:self->_alwaysReturnToAppInSession];
  v8 = [v4 hash];

  return v8;
}

- (id)toDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_hasCustomReturnToAppTimeout)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_returnToAppTimeout];
    [dictionary setObject:v4 forKeyedSubscript:@"ReturnToAppTimeout"];
  }

  if (self->_sessionCapable)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v5 forKeyedSubscript:@"SessionCapable"];
  }

  if (self->_alwaysReturnToAppInSession)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v6 forKeyedSubscript:@"AlwaysReturnToAppInSession"];
  }

  v7 = [dictionary copy];

  return v7;
}

- (double)returnToAppTimeout
{
  if (self->_hasCustomReturnToAppTimeout)
  {
    p_returnToAppTimeout = &self->_returnToAppTimeout;
  }

  else
  {
    p_returnToAppTimeout = &CSLPRFViewOnWakeUpdateDefaultTimeout;
  }

  return *p_returnToAppTimeout;
}

- (void)setReturnToAppTimeout:(double)timeout
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = cslprf_sessions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 67109120;
    timeoutCopy3 = timeout;
    _os_log_impl(&dword_22CE92000, v5, OS_LOG_TYPE_INFO, "setting returnToAppTimeout to %d", &v12, 8u);
  }

  v6 = fabs(timeout);
  v7 = v6 < 0.001;
  v8 = v6 >= 0.001;
  timeoutCopy2 = 120.0;
  if (!v7)
  {
    timeoutCopy2 = timeout;
  }

  self->_returnToAppTimeout = timeoutCopy2;
  self->_hasCustomReturnToAppTimeout = v8;
  v10 = cslprf_sessions_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 67109120;
    timeoutCopy3 = timeout;
    _os_log_impl(&dword_22CE92000, v10, OS_LOG_TYPE_INFO, "_hasCustomReturnToAppTimeout = %{BOOL}u", &v12, 8u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (CSLPRFReturnToAppSettings)init
{
  v3.receiver = self;
  v3.super_class = CSLPRFReturnToAppSettings;
  result = [(CSLPRFReturnToAppSettings *)&v3 init];
  if (result)
  {
    result->_returnToAppTimeout = 120.0;
  }

  return result;
}

- (CSLPRFReturnToAppSettings)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(CSLPRFReturnToAppSettings *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ReturnToAppTimeout"];
    [v6 floatValue];
    if (v7 == -1.0 && (CSLSAllowReturnToAppUntilCrownPress() & 1) == 0)
    {

      v5->_hasCustomReturnToAppTimeout = 1;
      v6 = &unk_2840252A8;
    }

    else
    {
      v5->_hasCustomReturnToAppTimeout = v6 != 0;
      if (!v6)
      {
        v8 = 120.0;
LABEL_8:
        v5->_returnToAppTimeout = v8;
        v10 = [dictionaryCopy objectForKeyedSubscript:@"SessionCapable"];
        v5->_sessionCapable = [v10 BOOLValue];
        v11 = [dictionaryCopy objectForKeyedSubscript:@"AlwaysReturnToAppInSession"];

        v5->_alwaysReturnToAppInSession = [v11 BOOLValue];
        goto LABEL_9;
      }
    }

    [v6 floatValue];
    v8 = v9;

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

@end