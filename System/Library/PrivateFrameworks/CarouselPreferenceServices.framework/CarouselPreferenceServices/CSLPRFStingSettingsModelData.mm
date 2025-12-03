@interface CSLPRFStingSettingsModelData
+ (id)fromExportData:(id)data;
- (BOOL)isEqual:(id)equal;
- (CSLPRFStingSettingsModelData)init;
- (CSLPRFStingSettingsModelData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)toExportData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSLPRFStingSettingsModelData

- (id)toExportData
{
  [(CSLPRFStingSettingsModelData *)self setVersion:@"0.4"];
  v3 = MEMORY[0x277CCAAB0];

  return [v3 archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_version withName:@"version" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_actionsDictionary withName:@"actions" skipIfNil:1];
  v5 = [v3 appendObject:self->_secondaryActionsDictionary withName:@"secondaryActions" skipIfNil:1];
  v6 = [v3 appendObject:self->_shortcutsDictionary withName:@"shortcuts" skipIfNil:1];
  v7 = [v3 appendObject:self->_controlsDictionary withName:@"controls" skipIfNil:1];
  v8 = [v3 appendObject:self->_accessibilityShortcutsArray withName:@"accessibilityShortcuts" skipIfNil:1];
  v9 = [v3 appendObject:self->_startWorkoutsDictionary withName:@"startWorkouts" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  version = self->_version;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __40__CSLPRFStingSettingsModelData_isEqual___block_invoke;
  v40[3] = &unk_278744E18;
  v7 = equalCopy;
  v41 = v7;
  v8 = [v5 appendString:version counterpart:v40];
  actionsDictionary = self->_actionsDictionary;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __40__CSLPRFStingSettingsModelData_isEqual___block_invoke_2;
  v38[3] = &unk_278745500;
  v10 = v7;
  v39 = v10;
  v11 = [v5 appendObject:actionsDictionary counterpart:v38];
  secondaryActionsDictionary = self->_secondaryActionsDictionary;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __40__CSLPRFStingSettingsModelData_isEqual___block_invoke_3;
  v36[3] = &unk_278745500;
  v13 = v10;
  v37 = v13;
  v14 = [v5 appendObject:secondaryActionsDictionary counterpart:v36];
  shortcutsDictionary = self->_shortcutsDictionary;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __40__CSLPRFStingSettingsModelData_isEqual___block_invoke_4;
  v34[3] = &unk_278745500;
  v16 = v13;
  v35 = v16;
  v17 = [v5 appendObject:shortcutsDictionary counterpart:v34];
  controlsDictionary = self->_controlsDictionary;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __40__CSLPRFStingSettingsModelData_isEqual___block_invoke_5;
  v32[3] = &unk_278745500;
  v19 = v16;
  v33 = v19;
  v20 = [v5 appendObject:controlsDictionary counterpart:v32];
  accessibilityShortcutsArray = self->_accessibilityShortcutsArray;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __40__CSLPRFStingSettingsModelData_isEqual___block_invoke_6;
  v30[3] = &unk_278745500;
  v22 = v19;
  v31 = v22;
  v23 = [v5 appendObject:accessibilityShortcutsArray counterpart:v30];
  startWorkoutsDictionary = self->_startWorkoutsDictionary;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __40__CSLPRFStingSettingsModelData_isEqual___block_invoke_7;
  v28[3] = &unk_278745500;
  v29 = v22;
  v25 = v22;
  v26 = [v5 appendObject:startWorkoutsDictionary counterpart:v28];
  LOBYTE(v22) = [v5 isEqual];

  return v22;
}

- (unint64_t)hash
{
  v74 = *MEMORY[0x277D85DE8];
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_version];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v5 = self->_actionsDictionary;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v65;
    do
    {
      v9 = 0;
      do
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [builder appendObject:*(*(&v64 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v7);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v11 = self->_secondaryActionsDictionary;
  v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v61;
    do
    {
      v15 = 0;
      do
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [builder appendObject:*(*(&v60 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [(NSDictionary *)v11 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v13);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v17 = self->_shortcutsDictionary;
  v18 = [(NSDictionary *)v17 countByEnumeratingWithState:&v56 objects:v71 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v57;
    do
    {
      v21 = 0;
      do
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [builder appendObject:*(*(&v56 + 1) + 8 * v21++)];
      }

      while (v19 != v21);
      v19 = [(NSDictionary *)v17 countByEnumeratingWithState:&v56 objects:v71 count:16];
    }

    while (v19);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = self->_controlsDictionary;
  v24 = [(NSDictionary *)v23 countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v53;
    do
    {
      v27 = 0;
      do
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [builder appendObject:*(*(&v52 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [(NSDictionary *)v23 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v25);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = self->_accessibilityShortcutsArray;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v48 objects:v69 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v49;
    do
    {
      v33 = 0;
      do
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [builder appendObject:*(*(&v48 + 1) + 8 * v33++)];
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v48 objects:v69 count:16];
    }

    while (v31);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = self->_startWorkoutsDictionary;
  v36 = [(NSDictionary *)v35 countByEnumeratingWithState:&v44 objects:v68 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v45;
    do
    {
      v39 = 0;
      do
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [builder appendObject:{*(*(&v44 + 1) + 8 * v39++), v44}];
      }

      while (v37 != v39);
      v37 = [(NSDictionary *)v35 countByEnumeratingWithState:&v44 objects:v68 count:16];
    }

    while (v37);
  }

  v41 = [builder hash];
  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CSLPRFStingSettingsModelData);
  v5 = [(NSString *)self->_version copy];
  [(CSLPRFStingSettingsModelData *)v4 setVersion:v5];

  v6 = [(NSDictionary *)self->_actionsDictionary copy];
  [(CSLPRFStingSettingsModelData *)v4 setActionsDictionary:v6];

  v7 = [(NSDictionary *)self->_secondaryActionsDictionary copy];
  [(CSLPRFStingSettingsModelData *)v4 setSecondaryActionsDictionary:v7];

  v8 = [(NSDictionary *)self->_shortcutsDictionary copy];
  [(CSLPRFStingSettingsModelData *)v4 setShortcutsDictionary:v8];

  v9 = [(NSDictionary *)self->_controlsDictionary copy];
  [(CSLPRFStingSettingsModelData *)v4 setControlsDictionary:v9];

  v10 = [(NSArray *)self->_accessibilityShortcutsArray copy];
  [(CSLPRFStingSettingsModelData *)v4 setAccessibilityShortcutsArray:v10];

  v11 = [(NSDictionary *)self->_startWorkoutsDictionary copy];
  [(CSLPRFStingSettingsModelData *)v4 setStartWorkoutsDictionary:v11];

  return v4;
}

- (CSLPRFStingSettingsModelData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CSLPRFStingSettingsModelData;
  v5 = [(CSLPRFStingSettingsModelData *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [coderCopy decodeObjectForKey:@"actions"];
    actionsDictionary = v5->_actionsDictionary;
    v5->_actionsDictionary = v8;

    v10 = [coderCopy decodeObjectForKey:@"secondaryActions"];
    secondaryActionsDictionary = v5->_secondaryActionsDictionary;
    v5->_secondaryActionsDictionary = v10;

    v12 = [coderCopy decodeObjectForKey:@"shortcuts"];
    shortcutsDictionary = v5->_shortcutsDictionary;
    v5->_shortcutsDictionary = v12;

    v14 = [coderCopy decodeObjectForKey:@"controls"];
    controlsDictionary = v5->_controlsDictionary;
    v5->_controlsDictionary = v14;

    v16 = [coderCopy decodeObjectForKey:@"accessibilityShortcuts"];
    accessibilityShortcutsArray = v5->_accessibilityShortcutsArray;
    v5->_accessibilityShortcutsArray = v16;

    v18 = [coderCopy decodeObjectForKey:@"startWorkouts"];
    startWorkoutsDictionary = v5->_startWorkoutsDictionary;
    v5->_startWorkoutsDictionary = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeObject:version forKey:@"version"];
  [coderCopy encodeObject:self->_actionsDictionary forKey:@"actions"];
  [coderCopy encodeObject:self->_secondaryActionsDictionary forKey:@"secondaryActions"];
  [coderCopy encodeObject:self->_shortcutsDictionary forKey:@"shortcuts"];
  [coderCopy encodeObject:self->_controlsDictionary forKey:@"controls"];
  [coderCopy encodeObject:self->_accessibilityShortcutsArray forKey:@"accessibilityShortcuts"];
  [coderCopy encodeObject:self->_startWorkoutsDictionary forKey:@"startWorkouts"];
}

- (CSLPRFStingSettingsModelData)init
{
  v5.receiver = self;
  v5.super_class = CSLPRFStingSettingsModelData;
  v2 = [(CSLPRFStingSettingsModelData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSLPRFStingSettingsModelData *)v2 setVersion:@"0.4"];
  }

  return v3;
}

+ (id)fromExportData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v26 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
    v27 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v24 = v8;
    v14 = v26;
    v15 = [v27 setWithObjects:{v5, v6, v7, v24, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v16 = [v26 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CCA308]];
    version = [v16 version];
    LOBYTE(v11) = [version isEqualToString:@"0.4"];

    if ((v11 & 1) == 0)
    {
      v18 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        version2 = [v16 version];
        *buf = 138412802;
        selfCopy2 = selfCopy;
        v30 = 2112;
        v31 = version2;
        v32 = 2112;
        v33 = @"0.4";
        _os_log_impl(&dword_22CE92000, v18, OS_LOG_TYPE_DEFAULT, "%@ unexpected model data version %@, expected %@", buf, 0x20u);
      }
    }

    if (!v16)
    {
      v20 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        error = [v26 error];
        *buf = 138412290;
        selfCopy2 = error;
        _os_log_error_impl(&dword_22CE92000, v20, OS_LOG_TYPE_ERROR, "Error decoding model data: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v30 = 2112;
      v31 = dataCopy;
      _os_log_error_impl(&dword_22CE92000, v14, OS_LOG_TYPE_ERROR, "%@ incorrect data %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

@end