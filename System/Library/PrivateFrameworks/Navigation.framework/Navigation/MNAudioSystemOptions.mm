@interface MNAudioSystemOptions
- (MNAudioSystemOptions)initWithTempUserOptions:(id)options;
- (NSString)description;
- (void)dealloc;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation MNAudioSystemOptions

- (void)valueChangedForGEOConfigKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  if (key.var0 == 156 && key.var1 == &NavigationConfig_SpokenGuidanceLevel_Driving_Metadata)
  {
    Integer = GEOConfigGetInteger();
    v5 = *MEMORY[0x1E69E9840];
    v6 = Integer;
    selfCopy3 = self;
    v8 = 0;
LABEL_10:

    [(MNAudioSystemOptions *)selfCopy3 _updateGuidanceLevelFromUserSetting:v6 transportType:v8];
    return;
  }

  if (key.var0 == 157 && key.var1 == &NavigationConfig_SpokenGuidanceLevel_Walking_Metadata)
  {
    v9 = GEOConfigGetInteger();
    v10 = *MEMORY[0x1E69E9840];
    v6 = v9;
    selfCopy3 = self;
    v8 = 2;
    goto LABEL_10;
  }

  if (key.var0 == 158 && key.var1 == &NavigationConfig_SpokenGuidanceLevel_Cycling_Metadata)
  {
    v11 = GEOConfigGetInteger();
    v12 = *MEMORY[0x1E69E9840];
    v6 = v11;
    selfCopy3 = self;
    v8 = 3;
    goto LABEL_10;
  }

  if (key.var0 == 160 && key.var1 == &NavigationConfig_SpokenGuidanceUseHFP_Metadata)
  {
    BOOL = GEOConfigGetBOOL();
    v14 = GetAudioLogForMNAudioSystemOptionsCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      useHFP = self->_useHFP;
      v20 = 67109376;
      v21 = useHFP;
      v22 = 1024;
      v23 = BOOL;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "UseHFP changed from %d to %d", &v20, 0xEu);
    }

    self->_useHFP = BOOL;
    [(GEOObserverHashTable *)self->_observers audioSystemOptions:self didUpdateUseHFP:BOOL];
  }

  else if (key.var0 == 159 && key.var1 == &NavigationConfig_SpokenGuidancePauseSpokenAudio_Metadata)
  {
    v16 = GEOConfigGetBOOL();
    v17 = GetAudioLogForMNAudioSystemOptionsCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      pauseSpokenAudio = self->_pauseSpokenAudio;
      v20 = 67109376;
      v21 = pauseSpokenAudio;
      v22 = 1024;
      v23 = v16;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "UseHFP changed from %d to %d", &v20, 0xEu);
    }

    self->_pauseSpokenAudio = v16;
    [(GEOObserverHashTable *)self->_observers audioSystemOptions:self didUpdatePauseSpokenAudio:v16];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(NSMutableDictionary *)self->_guidanceLevelOverrides objectForKeyedSubscript:&unk_1F4EE2410];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(NSMutableDictionary *)self->_guidanceLevels objectForKeyedSubscript:&unk_1F4EE2410];
  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = unsignedIntegerValue + 1;
  if (v4)
  {
    if (v8 >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue];
    }

    else
    {
      v9 = off_1E842B3B8[v8];
    }

    unsignedIntegerValue2 = [v4 unsignedIntegerValue];
    if ((unsignedIntegerValue2 + 1) >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue2];
    }

    else
    {
      v11 = off_1E842B3B8[unsignedIntegerValue2 + 1];
    }

    v12 = [v5 stringWithFormat:@"Driving guidance level: %@ | Override: %@", v9, v11];
    [array addObject:v12];
  }

  else
  {
    if (v8 >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue];
    }

    else
    {
      v9 = off_1E842B3B8[v8];
    }

    v11 = [v5 stringWithFormat:@"Driving guidance level: %@", v9];
    [array addObject:v11];
  }

  v13 = [(NSMutableDictionary *)self->_guidanceLevelOverrides objectForKeyedSubscript:&unk_1F4EE2428];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(NSMutableDictionary *)self->_guidanceLevels objectForKeyedSubscript:&unk_1F4EE2428];
  unsignedIntegerValue3 = [v15 unsignedIntegerValue];
  v17 = unsignedIntegerValue3 + 1;
  if (v13)
  {
    if ((unsignedIntegerValue3 + 1) >= 4)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue3];
    }

    else
    {
      v18 = off_1E842B3B8[v17];
    }

    unsignedIntegerValue4 = [v13 unsignedIntegerValue];
    if ((unsignedIntegerValue4 + 1) >= 4)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue4];
    }

    else
    {
      v20 = off_1E842B3B8[unsignedIntegerValue4 + 1];
    }

    v21 = [v14 stringWithFormat:@"Walking guidance level: %@ | Override: %@", v18, v20];
    [array addObject:v21];
  }

  else
  {
    if ((unsignedIntegerValue3 + 1) >= 4)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue3];
    }

    else
    {
      v18 = off_1E842B3B8[v17];
    }

    v20 = [v14 stringWithFormat:@"Walking guidance level: %@", v18];
    [array addObject:v20];
  }

  v22 = [(NSMutableDictionary *)self->_guidanceLevelOverrides objectForKeyedSubscript:&unk_1F4EE2440];
  v23 = MEMORY[0x1E696AEC0];
  v24 = [(NSMutableDictionary *)self->_guidanceLevels objectForKeyedSubscript:&unk_1F4EE2440];
  unsignedIntegerValue5 = [v24 unsignedIntegerValue];
  v26 = unsignedIntegerValue5 + 1;
  if (v22)
  {
    if ((unsignedIntegerValue5 + 1) >= 4)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue5];
    }

    else
    {
      v27 = off_1E842B3B8[v26];
    }

    unsignedIntegerValue6 = [v22 unsignedIntegerValue];
    if ((unsignedIntegerValue6 + 1) >= 4)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue6];
    }

    else
    {
      v29 = off_1E842B3B8[unsignedIntegerValue6 + 1];
    }

    v30 = [v23 stringWithFormat:@"Cycling guidance level: %@ | Override: %@", v27, v29];
    [array addObject:v30];
  }

  else
  {
    if ((unsignedIntegerValue5 + 1) >= 4)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue5];
    }

    else
    {
      v27 = off_1E842B3B8[v26];
    }

    v29 = [v23 stringWithFormat:@"Cycling guidance level: %@", v27];
    [array addObject:v29];
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use HFP: %d", self->_useHFP];
  [array addObject:v31];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Pause Spoken Audio: %d", self->_pauseSpokenAudio];
  [array addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  v34 = [array componentsJoinedByString:@"\n\t"];
  v35 = [v33 stringWithFormat:@"MNAudioSystemOptions:\n\t%@", v34];

  return v35;
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = MNAudioSystemOptions;
  [(MNAudioSystemOptions *)&v3 dealloc];
}

- (MNAudioSystemOptions)initWithTempUserOptions:(id)options
{
  v22[3] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MNAudioSystemOptions;
  v3 = [(MNAudioSystemOptions *)&v18 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69A22D8]) initWithProtocol:&unk_1F4EEE158 queue:0];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = MEMORY[0x1E695DF90];
    v21[0] = &unk_1F4EE2410;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:GEOConfigGetInteger()];
    v22[0] = v7;
    v21[1] = &unk_1F4EE2428;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:GEOConfigGetInteger()];
    v22[1] = v8;
    v21[2] = &unk_1F4EE2440;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:GEOConfigGetInteger()];
    v22[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v11 = [v6 dictionaryWithDictionary:v10];
    guidanceLevels = v3->_guidanceLevels;
    v3->_guidanceLevels = v11;

    v3->_useHFP = GEOConfigGetBOOL();
    v3->_pauseSpokenAudio = GEOConfigGetBOOL();
    v13 = MEMORY[0x1E69E96A0];
    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    _GEOConfigAddDelegateListenerForKey();
    v14 = GetAudioLogForMNAudioSystemOptionsCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Initializing audio system options: %@", buf, 0xCu);
    }

    v15 = v3;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

@end