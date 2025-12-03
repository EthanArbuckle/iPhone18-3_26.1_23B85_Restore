@interface BKUserProtectedConfiguration
- (BKUserProtectedConfiguration)initWithDictionary:(id)dictionary effective:(BOOL)effective;
- (id)description;
- (id)dictionary;
@end

@implementation BKUserProtectedConfiguration

- (BKUserProtectedConfiguration)initWithDictionary:(id)dictionary effective:(BOOL)effective
{
  effectiveCopy = effective;
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = BKUserProtectedConfiguration;
  v7 = [(BKUserProtectedConfiguration *)&v28 init];
  v8 = v7;
  if (dictionaryCopy && v7)
  {
    if (effectiveCopy)
    {
      v9 = @"BKUserCfgEffectiveTouchIDUnlockEnabled";
    }

    else
    {
      v9 = @"BKUserCfgTouchIDUnlockEnabled";
    }

    if (effectiveCopy)
    {
      v10 = @"BKUserCfgEffectiveTouchIDIdentificationEnabled";
    }

    else
    {
      v10 = @"BKUserCfgTouchIDIdentificationEnabled";
    }

    if (effectiveCopy)
    {
      v11 = @"BKUserCfgEffectiveTouchIDLoginEnabled";
    }

    else
    {
      v11 = @"BKUserCfgTouchIDLoginEnabled";
    }

    if (effectiveCopy)
    {
      v12 = @"BKUserCfgEffectiveTouchIDApplePayEnabled";
    }

    else
    {
      v12 = @"BKUserCfgTouchIDApplePayEnabled";
    }

    if (effectiveCopy)
    {
      v13 = @"BKUserCfgEffectiveAttentionDetectionEnabled";
    }

    else
    {
      v13 = @"BKUserCfgAttentionDetectionEnabled";
    }

    if (effectiveCopy)
    {
      v14 = @"BKUserCfgEffectivePeriocularMatchEnabled";
    }

    else
    {
      v14 = @"BKUserCfgPeriocularMatchEnabled";
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:v9];
    unlockEnabled = v8->_unlockEnabled;
    v8->_unlockEnabled = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:v10];
    identificationEnabled = v8->_identificationEnabled;
    v8->_identificationEnabled = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:v11];
    loginEnabled = v8->_loginEnabled;
    v8->_loginEnabled = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:v12];
    applePayEnabled = v8->_applePayEnabled;
    v8->_applePayEnabled = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:v13];
    attentionDetectionEnabled = v8->_attentionDetectionEnabled;
    v8->_attentionDetectionEnabled = v23;

    v25 = [dictionaryCopy objectForKeyedSubscript:v14];
    periocularFaceIDMatchEnabled = v8->_periocularFaceIDMatchEnabled;
    v8->_periocularFaceIDMatchEnabled = v25;
  }

  return v8;
}

- (id)dictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  unlockEnabled = self->_unlockEnabled;
  if (unlockEnabled)
  {
    [dictionary setObject:unlockEnabled forKey:@"BKUserCfgTouchIDUnlockEnabled"];
  }

  identificationEnabled = self->_identificationEnabled;
  if (identificationEnabled)
  {
    [v4 setObject:identificationEnabled forKey:@"BKUserCfgTouchIDIdentificationEnabled"];
  }

  loginEnabled = self->_loginEnabled;
  if (loginEnabled)
  {
    [v4 setObject:loginEnabled forKey:@"BKUserCfgTouchIDLoginEnabled"];
  }

  applePayEnabled = self->_applePayEnabled;
  if (applePayEnabled)
  {
    [v4 setObject:applePayEnabled forKey:@"BKUserCfgTouchIDApplePayEnabled"];
  }

  attentionDetectionEnabled = self->_attentionDetectionEnabled;
  if (attentionDetectionEnabled)
  {
    [v4 setObject:attentionDetectionEnabled forKey:@"BKUserCfgAttentionDetectionEnabled"];
  }

  periocularFaceIDMatchEnabled = self->_periocularFaceIDMatchEnabled;
  if (periocularFaceIDMatchEnabled)
  {
    [v4 setObject:periocularFaceIDMatchEnabled forKey:@"BKUserCfgPeriocularMatchEnabled"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *&self->_unlockEnabled;
  v7 = [v3 stringWithFormat:@"<%@: %p:(unlockEnabled:%@, identificationEnabled:%@, loginEnabled:%@, applePayEnabled:%@, attentionDetectionEnabled:%@, periocularFaceIDMatchEnabled:%@)>", v5, self, self->_unlockEnabled, self->_identificationEnabled, self->_loginEnabled, self->_applePayEnabled, self->_attentionDetectionEnabled, self->_periocularFaceIDMatchEnabled];

  return v7;
}

@end