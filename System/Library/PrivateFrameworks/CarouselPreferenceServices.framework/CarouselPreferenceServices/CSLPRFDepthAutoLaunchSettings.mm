@interface CSLPRFDepthAutoLaunchSettings
- (BOOL)isEqual:(id)equal;
- (CSLPRFDepthAutoLaunchSettings)initWithSettings:(id)settings;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CSLPRFDepthAutoLaunchSettings

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromCSLPRFDepthAutoLaunchBehavior([(CSLPRFDepthAutoLaunchSettings *)self autoLaunchBehavior]);
  v5 = [v3 appendObject:v4 withName:@"behavior"];

  bundleID = [(CSLPRFDepthAutoLaunchSettings *)self bundleID];
  v7 = [v3 appendObject:bundleID withName:@"bundleID"];

  v8 = [v3 appendInteger:-[CSLPRFDepthAutoLaunchSettings changeSource](self withName:{"changeSource"), @"changeSource"}];
  v9 = NSStringFromCSLPRFDepthAutoLaunchThreshold([(CSLPRFDepthAutoLaunchSettings *)self threshold]);
  v10 = [v3 appendObject:v9 withName:@"threshold"];

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:{-[CSLPRFDepthAutoLaunchSettings autoLaunchBehavior](self, "autoLaunchBehavior")}];
  v5 = [builder appendInteger:{-[CSLPRFDepthAutoLaunchSettings changeSource](self, "changeSource")}];
  bundleID = [(CSLPRFDepthAutoLaunchSettings *)self bundleID];
  v7 = [builder appendObject:bundleID];

  v8 = [builder appendInteger:{-[CSLPRFDepthAutoLaunchSettings threshold](self, "threshold")}];
  v9 = [builder hash];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  autoLaunchBehavior = [(CSLPRFDepthAutoLaunchSettings *)self autoLaunchBehavior];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __41__CSLPRFDepthAutoLaunchSettings_isEqual___block_invoke;
  v28[3] = &unk_278745608;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendInteger:autoLaunchBehavior counterpart:v28];
  changeSource = [(CSLPRFDepthAutoLaunchSettings *)self changeSource];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __41__CSLPRFDepthAutoLaunchSettings_isEqual___block_invoke_2;
  v26[3] = &unk_278745608;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendInteger:changeSource counterpart:v26];
  bundleID = [(CSLPRFDepthAutoLaunchSettings *)self bundleID];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __41__CSLPRFDepthAutoLaunchSettings_isEqual___block_invoke_3;
  v24[3] = &unk_278745500;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendObject:bundleID counterpart:v24];

  threshold = [(CSLPRFDepthAutoLaunchSettings *)self threshold];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __41__CSLPRFDepthAutoLaunchSettings_isEqual___block_invoke_4;
  v22 = &unk_278745608;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendInteger:threshold counterpart:&v19];
  LOBYTE(threshold) = [v5 isEqual];

  return threshold;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CSLPRFMutableDepthAutoLaunchSettings alloc];

  return [(CSLPRFDepthAutoLaunchSettings *)v4 initWithSettings:self];
}

- (CSLPRFDepthAutoLaunchSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = CSLPRFDepthAutoLaunchSettings;
  v5 = [(CSLPRFDepthAutoLaunchSettings *)&v9 init];
  if (v5)
  {
    v5->_autoLaunchBehavior = [settingsCopy autoLaunchBehavior];
    bundleID = [settingsCopy bundleID];
    bundleID = v5->_bundleID;
    v5->_bundleID = bundleID;

    v5->_changeSource = [settingsCopy changeSource];
    v5->_threshold = [settingsCopy threshold];
  }

  return v5;
}

@end