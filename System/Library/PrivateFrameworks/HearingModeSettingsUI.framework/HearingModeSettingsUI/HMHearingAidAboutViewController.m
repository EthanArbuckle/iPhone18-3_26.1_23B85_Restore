@interface HMHearingAidAboutViewController
- (id)getAccessoryUDI;
- (id)getAccessoryUpdateVersion;
- (id)getDevice;
- (id)getFeatureVersion;
- (id)getHostUDI;
- (id)getHostUpdateVersion;
- (id)getWatchUDI;
- (id)getWatchUpdateVersion;
- (id)specifiers;
- (void)contactAppleSupportTapped;
@end

@implementation HMHearingAidAboutViewController

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Product Name" value:&stru_28643BDD8 table:0];
  v6 = [(HMHearingAidAboutViewController *)self createGroupSpecifier:v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277D3FAD8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Hearing Aid Feature" value:&stru_28643BDD8 table:0];
  v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v3 addObject:v10];

  v95 = [(HMHearingAidAboutViewController *)self getDevice];
  v11 = [(HMHearingAidAboutViewController *)self createGroupSpecifier:?];
  [v3 addObject:v11];

  v12 = MEMORY[0x277D3FAD8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"Feature Version" value:&stru_28643BDD8 table:0];
  v15 = [v12 preferenceSpecifierNamed:v14 target:self set:0 get:sel_getFeatureVersion detail:0 cell:4 edit:0];
  [v3 addObject:v15];

  v16 = MEMORY[0x277D3FAD8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"Update Version" value:&stru_28643BDD8 table:0];
  v19 = [v16 preferenceSpecifierNamed:v18 target:self set:0 get:sel_getHostUpdateVersion detail:0 cell:4 edit:0];
  [v3 addObject:v19];

  v20 = MEMORY[0x277D3FAD8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"Year of Release" value:&stru_28643BDD8 table:0];
  v23 = [v20 preferenceSpecifierNamed:v22 target:self set:0 get:sel_getYearOfRelease detail:0 cell:4 edit:0];
  [v3 addObject:v23];

  v24 = MEMORY[0x277D3FAD8];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"UDI" value:&stru_28643BDD8 table:0];
  v27 = [v24 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v28 = [(HMHearingAidAboutViewController *)self getHostUDI];
  [v27 setUserInfo:v28];

  v94 = v27;
  [v3 addObject:v27];
  v93 = [MEMORY[0x277D2BCF8] sharedInstance];
  v92 = [v93 getActivePairedDevice];
  if (v92)
  {
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"Apple Watch" value:&stru_28643BDD8 table:0];
    v31 = [(HMHearingAidAboutViewController *)self createGroupSpecifier:v30];
    [v3 addObject:v31];

    v32 = MEMORY[0x277D3FAD8];
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"Feature Version" value:&stru_28643BDD8 table:0];
    v35 = [v32 preferenceSpecifierNamed:v34 target:self set:0 get:sel_getFeatureVersion detail:0 cell:4 edit:0];
    [v3 addObject:v35];

    v36 = MEMORY[0x277D3FAD8];
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"Update Version" value:&stru_28643BDD8 table:0];
    v39 = [v36 preferenceSpecifierNamed:v38 target:self set:0 get:sel_getWatchUpdateVersion detail:0 cell:4 edit:0];
    [v3 addObject:v39];

    v40 = MEMORY[0x277D3FAD8];
    v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = [v41 localizedStringForKey:@"Year of Release" value:&stru_28643BDD8 table:0];
    v43 = [v40 preferenceSpecifierNamed:v42 target:self set:0 get:sel_getYearOfRelease detail:0 cell:4 edit:0];
    [v3 addObject:v43];

    v44 = MEMORY[0x277D3FAD8];
    v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v46 = [v45 localizedStringForKey:@"UDI" value:&stru_28643BDD8 table:0];
    v47 = [v44 preferenceSpecifierNamed:v46 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v48 = [(HMHearingAidAboutViewController *)self getWatchUDI];
    [v47 setUserInfo:v48];

    [v3 addObject:v47];
  }

  v49 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v50 = [v49 objectForKeyedSubscript:@"marketingName"];
  v51 = v50;
  v52 = @"AirPods Pro";
  if (v50)
  {
    v52 = v50;
  }

  v53 = v52;

  v54 = [(HMHearingAidAboutViewController *)self createGroupSpecifier:v53];

  [v3 addObject:v54];
  v55 = MEMORY[0x277D3FAD8];
  v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v57 = [v56 localizedStringForKey:@"Feature Version" value:&stru_28643BDD8 table:0];
  v58 = [v55 preferenceSpecifierNamed:v57 target:self set:0 get:sel_getFeatureVersion detail:0 cell:4 edit:0];
  [v3 addObject:v58];

  v59 = MEMORY[0x277D3FAD8];
  v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v61 = [v60 localizedStringForKey:@"Update Version" value:&stru_28643BDD8 table:0];
  v62 = [v59 preferenceSpecifierNamed:v61 target:self set:0 get:sel_getAccessoryUpdateVersion detail:0 cell:4 edit:0];
  [v3 addObject:v62];

  v63 = MEMORY[0x277D3FAD8];
  v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v65 = [v64 localizedStringForKey:@"Year of Release" value:&stru_28643BDD8 table:0];
  v66 = [v63 preferenceSpecifierNamed:v65 target:self set:0 get:sel_getYearOfRelease detail:0 cell:4 edit:0];
  [v3 addObject:v66];

  v67 = MEMORY[0x277D3FAD8];
  v68 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v69 = [v68 localizedStringForKey:@"UDI" value:&stru_28643BDD8 table:0];
  v70 = [v67 preferenceSpecifierNamed:v69 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v71 = [(HMHearingAidAboutViewController *)self getAccessoryUDI];
  [v70 setUserInfo:v71];

  [v3 addObject:v70];
  v72 = [(HMHearingAidAboutViewController *)self createGroupSpecifier:&stru_28643BDD8];
  [v3 addObject:v72];

  v73 = MEMORY[0x277D3FAD8];
  v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v75 = [v74 localizedStringForKey:@"Instructions for Use" value:&stru_28643BDD8 table:0];
  v76 = [v73 preferenceSpecifierNamed:v75 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v3 addObject:v76];

  v77 = MEMORY[0x277D3FAD8];
  v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v79 = [v78 localizedStringForKey:@"Manufacturer Address" value:&stru_28643BDD8 table:0];
  v80 = [v77 preferenceSpecifierNamed:v79 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v3 addObject:v80];

  v81 = [(HMHearingAidAboutViewController *)self createGroupSpecifier:&stru_28643BDD8];
  [v3 addObject:v81];

  v82 = MEMORY[0x277D3FAD8];
  v83 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v84 = [v83 localizedStringForKey:@"Contact Apple Support" value:&stru_28643BDD8 table:0];
  v85 = [v82 preferenceSpecifierNamed:v84 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v85 setButtonAction:sel_contactAppleSupportTapped];
  [v3 addObject:v85];
  v86 = *MEMORY[0x277D3FC48];
  v87 = *(&self->super.super.super.super.super.isa + v86);
  *(&self->super.super.super.super.super.isa + v86) = v3;
  v88 = v3;

  v89 = *(&self->super.super.super.super.super.isa + v86);
  v90 = v89;

  return v89;
}

- (id)getFeatureVersion
{
  v2 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"versionNumber"];
  v4 = [v3 intValue];

  if (v4 == 2)
  {
    return @"2";
  }

  else
  {
    return @"1";
  }
}

- (id)getHostUpdateVersion
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMHearingAidAboutViewController *)self getFeatureVersion];
  v4 = [v2 stringWithFormat:@"%@.%@", v3, MGGetStringAnswer()];

  return v4;
}

- (id)getHostUDI
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"versionNumber"];
  v5 = [v4 intValue];

  if (v5 == 2)
  {
    v6 = @"(01)00195950732382(10)";
  }

  else
  {
    v6 = @"(01)00195949149924(10)";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(HMHearingAidAboutViewController *)self getHostUpdateVersion];
  v9 = [v7 stringWithFormat:@"%@%@", v6, v8];

  return v9;
}

- (id)getWatchUpdateVersion
{
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [v3 getActivePairedDevice];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(HMHearingAidAboutViewController *)self getFeatureVersion];
  v7 = v6;
  if (v4)
  {
    v8 = [v4 valueForProperty:*MEMORY[0x277D2BC08]];
    v9 = [v5 stringWithFormat:@"%@.%@", v7, v8];
  }

  else
  {
    v9 = [v5 stringWithFormat:@"%@.%@", v6, &stru_28643BDD8];
  }

  return v9;
}

- (id)getWatchUDI
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"versionNumber"];
  v5 = [v4 intValue];

  if (v5 == 2)
  {
    v6 = @"(01)00195950732399(10)";
  }

  else
  {
    v6 = @"(01)00195950095074(10)";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(HMHearingAidAboutViewController *)self getWatchUpdateVersion];
  v9 = [v7 stringWithFormat:@"%@%@", v6, v8];

  return v9;
}

- (id)getAccessoryUpdateVersion
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMHearingAidAboutViewController *)self getFeatureVersion];
  v5 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v6 = [v5 objectForKeyedSubscript:@"fwVersion"];
  v7 = [v3 stringWithFormat:@"%@.%@", v4, v6];

  return v7;
}

- (id)getAccessoryUDI
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"versionNumber"];
  v5 = [v4 intValue];

  if (v5 == 2)
  {
    v6 = @"(01)00195950732405(10)";
  }

  else
  {
    v6 = @"(01)00195949149931(10)";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(HMHearingAidAboutViewController *)self getAccessoryUpdateVersion];
  v9 = [v7 stringWithFormat:@"%@%@", v6, v8];

  return v9;
}

- (id)getDevice
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = @"iPad";
  }

  else
  {
    v3 = @"iPhone";
  }

  v4 = v3;

  return v3;
}

- (void)contactAppleSupportTapped
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://getsupport.apple.com/?caller=aphap&PFC=PFC7000&category_id=SC0998&symptom_id=23669"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

@end