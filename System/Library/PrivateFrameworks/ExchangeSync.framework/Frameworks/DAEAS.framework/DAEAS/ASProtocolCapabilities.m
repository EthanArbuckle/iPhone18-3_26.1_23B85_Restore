@interface ASProtocolCapabilities
- (ASProtocolCapabilities)initWithProtocolVersionString:(id)a3;
- (id)_abConstraintsPlistPath;
- (id)_calConstraintsPlistPath;
- (id)addressBookConstraintsPath;
- (id)calendarConstraintsPath;
@end

@implementation ASProtocolCapabilities

- (ASProtocolCapabilities)initWithProtocolVersionString:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"16.1"])
  {
    v5 = off_278FC6F70;
  }

  else if ([v4 isEqualToString:@"16.0"])
  {
    v5 = off_278FC6F68;
  }

  else if ([v4 isEqualToString:@"14.1"])
  {
    v5 = off_278FC6F60;
  }

  else if ([v4 isEqualToString:@"14.0"])
  {
    v5 = off_278FC6F58;
  }

  else
  {
    v6 = [v4 isEqualToString:@"12.1"];
    v5 = off_278FC6F48;
    if (v6)
    {
      v5 = off_278FC6F50;
    }
  }

  v7 = *v5;
  v8 = objc_opt_class();
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_24A0AC000, v9, v10, "Capabilities set to %@", &v14, 0xCu);
  }

  v11 = objc_opt_new();
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_calConstraintsPlistPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"EAS25CalendarConstraints" ofType:@"plist"];

  return v3;
}

- (id)calendarConstraintsPath
{
  calConstraintsPlistPath = self->_calConstraintsPlistPath;
  if (!calConstraintsPlistPath)
  {
    v4 = [(ASProtocolCapabilities *)self _calConstraintsPlistPath];
    v5 = [v4 copy];
    v6 = self->_calConstraintsPlistPath;
    self->_calConstraintsPlistPath = v5;

    calConstraintsPlistPath = self->_calConstraintsPlistPath;
  }

  return calConstraintsPlistPath;
}

- (id)_abConstraintsPlistPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"EASContactsConstraints" ofType:@"plist"];

  return v3;
}

- (id)addressBookConstraintsPath
{
  abConstraintsPlistPath = self->_abConstraintsPlistPath;
  if (!abConstraintsPlistPath)
  {
    v4 = [(ASProtocolCapabilities *)self _abConstraintsPlistPath];
    v5 = [v4 copy];
    v6 = self->_abConstraintsPlistPath;
    self->_abConstraintsPlistPath = v5;

    abConstraintsPlistPath = self->_abConstraintsPlistPath;
  }

  return abConstraintsPlistPath;
}

@end