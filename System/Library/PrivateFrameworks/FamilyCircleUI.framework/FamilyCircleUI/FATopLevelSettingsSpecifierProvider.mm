@interface FATopLevelSettingsSpecifierProvider
- (id)_familyBaseSpecifierWithState:(unint64_t)a3;
- (id)_familySpecifier;
- (id)specifiers;
@end

@implementation FATopLevelSettingsSpecifierProvider

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([MEMORY[0x277CEC7B8] isMultiUserMode])
  {
    v4 = _FALogSystem();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v11 = 0;
    v5 = "Device is in multi-user mode, not showing top level Family specifiers.";
    v6 = &v11;
LABEL_9:
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    goto LABEL_10;
  }

  v7 = [(FASettingsSpecifierProvider *)self _appleAccount];

  if (!v7)
  {
    v4 = _FALogSystem();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v10 = 0;
    v5 = "User not signed in to AppleAccount, not showing top level Family specifiers.";
    v6 = &v10;
    goto LABEL_9;
  }

  v4 = [(FATopLevelSettingsSpecifierProvider *)self _familySpecifier];
  if (v4)
  {
    [v3 addObject:v4];
  }

LABEL_10:

  v8 = [v3 copy];
  [(FASettingsSpecifierProvider *)self setSpecifiers:v8];

  return v8;
}

- (id)_familySpecifier
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 integerForKey:0];

  v5 = v4 && !self->super._familyCircle && !self->super._didFailToGetFamilyDetails;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = v5;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Using cache - %d with state - %lu", v10, 0x12u);
  }

  if (self->super._familyCircle || self->super._didFailToGetFamilyDetails)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:0];
  if (!v5)
  {
LABEL_10:
    v4 = [(FASettingsSpecifierProvider *)self _familyState];
  }

LABEL_11:
  v7 = [(FATopLevelSettingsSpecifierProvider *)self _familyBaseSpecifierWithState:v4];
  [v7 setControllerLoadAction:sel__viewFamilySpecifierWasTapped_];
  [v7 setIdentifier:0];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_familyBaseSpecifierWithState:(unint64_t)a3
{
  v4 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  v5 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:@"com.apple.application-icon.family"];
  v6 = [v5 prepareImageForDescriptor:v4];
  v7 = MEMORY[0x277D755B8];
  v8 = [v6 CGImage];
  [v6 scale];
  v9 = [v7 imageWithCGImage:v8 scale:0 orientation:?];
  v10 = MEMORY[0x277D3FAD8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FAMILY_TOP_LEVEL_CELL_LABEL" value:&stru_282D9AA68 table:@"Localizable"];
  v13 = [v10 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v13 setProperty:v9 forKey:*MEMORY[0x277D3FFC0]];

  return v13;
}

@end