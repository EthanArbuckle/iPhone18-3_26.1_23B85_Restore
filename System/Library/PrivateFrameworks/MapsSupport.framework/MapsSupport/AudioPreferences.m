@interface AudioPreferences
- (AudioPreferences)initWithCopy:(id)a3;
- (AudioPreferences)initWithDefaults:(id)a3;
- (BOOL)_migratedMutedValue;
- (id)_values;
- (id)writtenDefaults;
- (unint64_t)cyclingVoiceGuidance;
- (unint64_t)drivingVoiceGuidance;
- (unint64_t)guidanceLevelForTransportType:(int)a3;
- (unint64_t)walkingVoiceGuidance;
- (void)_commonInit;
- (void)_migrateVolumeSettings;
- (void)dealloc;
- (void)loadValuesFromDefaults;
- (void)setCyclingVoiceGuidance:(unint64_t)a3;
- (void)setDrivingVoiceGuidance:(unint64_t)a3;
- (void)setGuidanceLevel:(unint64_t)a3 forTransportType:(int)a4;
- (void)setWalkingVoiceGuidance:(unint64_t)a3;
- (void)synchronize;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation AudioPreferences

- (AudioPreferences)initWithDefaults:(id)a3
{
  v6.receiver = self;
  v6.super_class = AudioPreferences;
  v3 = [(WatchSyncedPreferences *)&v6 initWithDefaults:a3];
  v4 = v3;
  if (v3)
  {
    [(AudioPreferences *)v3 _commonInit];
  }

  return v4;
}

- (AudioPreferences)initWithCopy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AudioPreferences;
  v5 = [(WatchSyncedPreferences *)&v10 initWithCopy:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4 && (isKindOfClass & 1) != 0)
    {
      objc_storeStrong(&v5->_drivingModernPreference, v4[6]);
      v7 = v4;
      objc_storeStrong(&v5->_walkingModernPreference, v7[7]);
      objc_storeStrong(&v5->_cyclingModernPreference, v7[8]);
      v5->_drivingVoiceGuidance = [v7 drivingVoiceGuidance];
      v5->_walkingVoiceGuidance = [v7 walkingVoiceGuidance];
      v8 = [v7 cyclingVoiceGuidance];

      v5->_cyclingVoiceGuidance = v8;
    }

    [(AudioPreferences *)v5 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  v2 = NavigationConfig_SpokenGuidanceLevel_Driving[1];
  _GEOConfigAddDelegateListenerForKey();
  v3 = NavigationConfig_SpokenGuidanceLevel_Walking[1];
  _GEOConfigAddDelegateListenerForKey();

  v4 = NavigationConfig_SpokenGuidanceLevel_Cycling[1];
  _GEOConfigAddDelegateListenerForKey();
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = AudioPreferences;
  [(AudioPreferences *)&v3 dealloc];
}

- (unint64_t)drivingVoiceGuidance
{
  drivingModernPreference = self->_drivingModernPreference;
  if (!drivingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    drivingModernPreference = self->_drivingModernPreference;
  }

  return [(NSNumber *)drivingModernPreference unsignedIntegerValue];
}

- (unint64_t)walkingVoiceGuidance
{
  walkingModernPreference = self->_walkingModernPreference;
  if (!walkingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    walkingModernPreference = self->_walkingModernPreference;
  }

  return [(NSNumber *)walkingModernPreference unsignedIntegerValue];
}

- (unint64_t)cyclingVoiceGuidance
{
  cyclingModernPreference = self->_cyclingModernPreference;
  if (!cyclingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    cyclingModernPreference = self->_cyclingModernPreference;
  }

  return [(NSNumber *)cyclingModernPreference unsignedIntegerValue];
}

- (void)_migrateVolumeSettings
{
  v3 = [(AudioPreferences *)self _migratedMutedValue];
  v4 = sub_10005329C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Migrating old volume setting to mute", &v12, 2u);
    }

    v6 = &off_10008BF40;
  }

  else
  {
    if (v5)
    {
      v7 = [(WatchSyncedPreferences *)self defaults];
      v8 = [v7 objectForKey:@"VoiceIsMute"];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Migrating old volume setting to full, isMute: %@", &v12, 0xCu);
    }

    v6 = &off_10008BF58;
  }

  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v6;

  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v6;

  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v6;

  [(AudioPreferences *)self synchronize];
}

- (BOOL)_migratedMutedValue
{
  v2 = [(WatchSyncedPreferences *)self defaults];
  v3 = [v2 objectForKey:@"VoiceIsMute"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (unint64_t)guidanceLevelForTransportType:(int)a3
{
  if (a3 == 2)
  {
    return [(AudioPreferences *)self walkingVoiceGuidance];
  }

  if (a3 == 3)
  {
    return [(AudioPreferences *)self cyclingVoiceGuidance];
  }

  return [(AudioPreferences *)self drivingVoiceGuidance];
}

- (void)setGuidanceLevel:(unint64_t)a3 forTransportType:(int)a4
{
  if (a4 == 2)
  {
    [(AudioPreferences *)self setWalkingVoiceGuidance:a3];
  }

  else if (a4 == 3)
  {
    [(AudioPreferences *)self setCyclingVoiceGuidance:a3];
  }

  else
  {
    [(AudioPreferences *)self setDrivingVoiceGuidance:a3];
  }
}

- (id)writtenDefaults
{
  v2 = [(WatchSyncedPreferences *)self defaults];
  v6[0] = v2;
  v3 = +[NSUserDefaults __maps_groupUserDefaults];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)loadValuesFromDefaults
{
  v3 = [(WatchSyncedPreferences *)self defaults];
  v4 = [v3 objectForKey:@"NavigationVoiceGuidanceLevelDriving"];
  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v4;

  v6 = [(WatchSyncedPreferences *)self defaults];
  v7 = [v6 objectForKey:@"NavigationVoiceGuidanceLevelWalking"];
  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v7;

  v9 = [(WatchSyncedPreferences *)self defaults];
  v10 = [v9 objectForKey:@"NavigationVoiceGuidanceLevelCycling"];
  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v10;

  [(AudioPreferences *)self synchronize];
  v12 = NavigationConfig_SpokenGuidanceLevel_Driving[1];
  if (_GEOConfigHasValue())
  {
    self->_drivingVoiceGuidance = GEOConfigGetInteger();
  }

  else
  {
    self->_drivingVoiceGuidance = [(NSNumber *)self->_drivingModernPreference integerValue];
    v13 = sub_10005329C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_drivingVoiceGuidance + 1;
      if (v14 >= 4)
      {
        v15 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_drivingVoiceGuidance];
      }

      else
      {
        v15 = off_100085770[v14];
      }

      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating _drivingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_drivingModernPreference integerValue];
    GEOConfigSetInteger();
  }

  v16 = NavigationConfig_SpokenGuidanceLevel_Walking[1];
  if (_GEOConfigHasValue())
  {
    self->_walkingVoiceGuidance = GEOConfigGetInteger();
  }

  else
  {
    self->_walkingVoiceGuidance = [(NSNumber *)self->_walkingModernPreference integerValue];
    v17 = sub_10005329C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_walkingVoiceGuidance + 1;
      if (v18 >= 4)
      {
        v19 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_walkingVoiceGuidance];
      }

      else
      {
        v19 = off_100085770[v18];
      }

      *buf = 138412290;
      v34 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating _walkingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_walkingModernPreference integerValue];
    GEOConfigSetInteger();
  }

  v20 = NavigationConfig_SpokenGuidanceLevel_Cycling[1];
  if (_GEOConfigHasValue())
  {
    self->_cyclingVoiceGuidance = GEOConfigGetInteger();
  }

  else
  {
    self->_cyclingVoiceGuidance = [(NSNumber *)self->_cyclingModernPreference integerValue];
    v21 = sub_10005329C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_cyclingVoiceGuidance + 1;
      if (v22 >= 4)
      {
        v23 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_cyclingVoiceGuidance];
      }

      else
      {
        v23 = off_100085770[v22];
      }

      *buf = 138412290;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Updating _cyclingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_cyclingModernPreference integerValue];
    GEOConfigSetInteger();
  }

  v24 = sub_10005329C();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_drivingVoiceGuidance + 1;
    if (v25 >= 4)
    {
      v26 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_drivingVoiceGuidance];
    }

    else
    {
      v26 = off_100085770[v25];
    }

    v27 = v26;
    v28 = self->_walkingVoiceGuidance + 1;
    if (v28 >= 4)
    {
      v29 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_walkingVoiceGuidance];
    }

    else
    {
      v29 = off_100085770[v28];
    }

    v30 = v29;
    v31 = self->_cyclingVoiceGuidance + 1;
    if (v31 >= 4)
    {
      v32 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_cyclingVoiceGuidance];
    }

    else
    {
      v32 = off_100085770[v31];
    }

    *buf = 138412802;
    v34 = v27;
    v35 = 2112;
    v36 = v30;
    v37 = 2112;
    v38 = v32;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Loaded values from defaults:\n\tDriving voice guidance: %@\n\tWalking voice guidance: %@\n\tCycling voice guidance: %@", buf, 0x20u);
  }
}

- (id)_values
{
  v3 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self drivingVoiceGuidance]];
  v4 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self walkingVoiceGuidance]];
  v8[1] = v4;
  v5 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self cyclingVoiceGuidance]];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (void)synchronize
{
  v6.receiver = self;
  v6.super_class = AudioPreferences;
  [(WatchSyncedPreferences *)&v6 synchronize];
  [(AudioPreferences *)self drivingVoiceGuidance];
  v3 = NavigationConfig_SpokenGuidanceLevel_Driving[1];
  GEOConfigSetInteger();
  [(AudioPreferences *)self walkingVoiceGuidance];
  v4 = NavigationConfig_SpokenGuidanceLevel_Walking[1];
  GEOConfigSetInteger();
  [(AudioPreferences *)self cyclingVoiceGuidance];
  v5 = NavigationConfig_SpokenGuidanceLevel_Cycling[1];
  GEOConfigSetInteger();
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == LODWORD(NavigationConfig_SpokenGuidanceLevel_Driving[0]) && a3.var1 == NavigationConfig_SpokenGuidanceLevel_Driving[1])
  {
    Integer = GEOConfigGetInteger();

    [(AudioPreferences *)self setDrivingVoiceGuidance:Integer];
  }

  else if (a3.var0 == LODWORD(NavigationConfig_SpokenGuidanceLevel_Walking[0]) && a3.var1 == NavigationConfig_SpokenGuidanceLevel_Walking[1])
  {
    v8 = GEOConfigGetInteger();

    [(AudioPreferences *)self setWalkingVoiceGuidance:v8];
  }

  else if (a3.var0 == LODWORD(NavigationConfig_SpokenGuidanceLevel_Cycling[0]) && a3.var1 == NavigationConfig_SpokenGuidanceLevel_Cycling[1])
  {
    v9 = GEOConfigGetInteger();

    [(AudioPreferences *)self setCyclingVoiceGuidance:v9];
  }
}

- (void)setDrivingVoiceGuidance:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v5;

  if (self->_drivingVoiceGuidance != a3)
  {
    self->_drivingVoiceGuidance = a3;
    v7 = NavigationConfig_SpokenGuidanceLevel_Driving[1];

    GEOConfigSetInteger();
  }
}

- (void)setWalkingVoiceGuidance:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v5;

  if (self->_walkingVoiceGuidance != a3)
  {
    self->_walkingVoiceGuidance = a3;
    v7 = NavigationConfig_SpokenGuidanceLevel_Walking[1];

    GEOConfigSetInteger();
  }
}

- (void)setCyclingVoiceGuidance:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v5;

  if (self->_cyclingVoiceGuidance != a3)
  {
    self->_cyclingVoiceGuidance = a3;
    v7 = NavigationConfig_SpokenGuidanceLevel_Cycling[1];

    GEOConfigSetInteger();
  }
}

@end