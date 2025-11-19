@interface BKSystemProtectedConfiguration
- (BKSystemProtectedConfiguration)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionary;
@end

@implementation BKSystemProtectedConfiguration

- (BKSystemProtectedConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BKSystemProtectedConfiguration;
  v5 = [(BKSystemProtectedConfiguration *)&v24 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 objectForKeyedSubscript:@"BKSysCfgTouchIDEnabled"];
    biometryEnabled = v6->_biometryEnabled;
    v6->_biometryEnabled = v7;

    v9 = [v4 objectForKeyedSubscript:@"BKSysCfgTouchIDUnlockEnabled"];
    unlockEnabled = v6->_unlockEnabled;
    v6->_unlockEnabled = v9;

    v11 = [v4 objectForKeyedSubscript:@"BKSysCfgTouchIDIdentificationEnabled"];
    identificationEnabled = v6->_identificationEnabled;
    v6->_identificationEnabled = v11;

    v13 = [v4 objectForKeyedSubscript:@"BKSysCfgTouchIDLoginEnabled"];
    loginEnabled = v6->_loginEnabled;
    v6->_loginEnabled = v13;

    v15 = [v4 objectForKeyedSubscript:@"BKSysCfgTouchIDUnlockTokenMaxLifetime"];
    unlockTokenMaxLifetime = v6->_unlockTokenMaxLifetime;
    v6->_unlockTokenMaxLifetime = v15;

    v17 = [v4 objectForKeyedSubscript:@"BKSysCfgTouchIDBioMatchLifespan"];
    bioMatchLifespan = v6->_bioMatchLifespan;
    v6->_bioMatchLifespan = v17;

    v19 = [v4 objectForKeyedSubscript:@"BKSysCfgTouchIDPasscodeInputLifespan"];
    passcodeInputLifespan = v6->_passcodeInputLifespan;
    v6->_passcodeInputLifespan = v19;

    v21 = [v4 objectForKeyedSubscript:@"BKSysCfgPeriocularMatchEnabled"];
    periocularFaceIDMatchEnabled = v6->_periocularFaceIDMatchEnabled;
    v6->_periocularFaceIDMatchEnabled = v21;
  }

  return v6;
}

- (id)dictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  biometryEnabled = self->_biometryEnabled;
  if (biometryEnabled)
  {
    [v3 setObject:biometryEnabled forKey:@"BKSysCfgTouchIDEnabled"];
  }

  unlockEnabled = self->_unlockEnabled;
  if (unlockEnabled)
  {
    [v4 setObject:unlockEnabled forKey:@"BKSysCfgTouchIDUnlockEnabled"];
  }

  identificationEnabled = self->_identificationEnabled;
  if (identificationEnabled)
  {
    [v4 setObject:identificationEnabled forKey:@"BKSysCfgTouchIDIdentificationEnabled"];
  }

  loginEnabled = self->_loginEnabled;
  if (loginEnabled)
  {
    [v4 setObject:loginEnabled forKey:@"BKSysCfgTouchIDLoginEnabled"];
  }

  unlockTokenMaxLifetime = self->_unlockTokenMaxLifetime;
  if (unlockTokenMaxLifetime)
  {
    [v4 setObject:unlockTokenMaxLifetime forKey:@"BKSysCfgTouchIDUnlockTokenMaxLifetime"];
  }

  bioMatchLifespan = self->_bioMatchLifespan;
  if (bioMatchLifespan)
  {
    [v4 setObject:bioMatchLifespan forKey:@"BKSysCfgTouchIDBioMatchLifespan"];
  }

  passcodeInputLifespan = self->_passcodeInputLifespan;
  if (passcodeInputLifespan)
  {
    [v4 setObject:passcodeInputLifespan forKey:@"BKSysCfgTouchIDPasscodeInputLifespan"];
  }

  periocularFaceIDMatchEnabled = self->_periocularFaceIDMatchEnabled;
  if (periocularFaceIDMatchEnabled)
  {
    [v4 setObject:periocularFaceIDMatchEnabled forKey:@"BKSysCfgPeriocularMatchEnabled"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *&self->_identificationEnabled;
  v7 = [v3 stringWithFormat:@"<%@: %p:(biometryEnabled:%@, unlockEnabled:%@, identificationEnabled:%@, loginEnabled:%@, unlockTokenMaxLifetime:%@, bioMatchLifespan:%@, passcodeInputLifespan:%@, periocularFaceIDMatchEnabled:%@)>", v5, self, self->_biometryEnabled, self->_unlockEnabled, self->_identificationEnabled, self->_loginEnabled, self->_unlockTokenMaxLifetime, self->_bioMatchLifespan, self->_passcodeInputLifespan, self->_periocularFaceIDMatchEnabled];

  return v7;
}

@end