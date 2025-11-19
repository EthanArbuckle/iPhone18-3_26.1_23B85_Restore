@interface CSLPRFDepthAutoLaunchSettings
- (BOOL)isEqual:(id)a3;
- (CSLPRFDepthAutoLaunchSettings)initWithSettings:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CSLPRFDepthAutoLaunchSettings

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromCSLPRFDepthAutoLaunchBehavior([(CSLPRFDepthAutoLaunchSettings *)self autoLaunchBehavior]);
  v5 = [v3 appendObject:v4 withName:@"behavior"];

  v6 = [(CSLPRFDepthAutoLaunchSettings *)self bundleID];
  v7 = [v3 appendObject:v6 withName:@"bundleID"];

  v8 = [v3 appendInteger:-[CSLPRFDepthAutoLaunchSettings changeSource](self withName:{"changeSource"), @"changeSource"}];
  v9 = NSStringFromCSLPRFDepthAutoLaunchThreshold([(CSLPRFDepthAutoLaunchSettings *)self threshold]);
  v10 = [v3 appendObject:v9 withName:@"threshold"];

  v11 = [v3 build];

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:{-[CSLPRFDepthAutoLaunchSettings autoLaunchBehavior](self, "autoLaunchBehavior")}];
  v5 = [v3 appendInteger:{-[CSLPRFDepthAutoLaunchSettings changeSource](self, "changeSource")}];
  v6 = [(CSLPRFDepthAutoLaunchSettings *)self bundleID];
  v7 = [v3 appendObject:v6];

  v8 = [v3 appendInteger:{-[CSLPRFDepthAutoLaunchSettings threshold](self, "threshold")}];
  v9 = [v3 hash];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(CSLPRFDepthAutoLaunchSettings *)self autoLaunchBehavior];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __41__CSLPRFDepthAutoLaunchSettings_isEqual___block_invoke;
  v28[3] = &unk_278745608;
  v7 = v4;
  v29 = v7;
  v8 = [v5 appendInteger:v6 counterpart:v28];
  v9 = [(CSLPRFDepthAutoLaunchSettings *)self changeSource];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __41__CSLPRFDepthAutoLaunchSettings_isEqual___block_invoke_2;
  v26[3] = &unk_278745608;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendInteger:v9 counterpart:v26];
  v12 = [(CSLPRFDepthAutoLaunchSettings *)self bundleID];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __41__CSLPRFDepthAutoLaunchSettings_isEqual___block_invoke_3;
  v24[3] = &unk_278745500;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendObject:v12 counterpart:v24];

  v15 = [(CSLPRFDepthAutoLaunchSettings *)self threshold];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __41__CSLPRFDepthAutoLaunchSettings_isEqual___block_invoke_4;
  v22 = &unk_278745608;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendInteger:v15 counterpart:&v19];
  LOBYTE(v15) = [v5 isEqual];

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CSLPRFMutableDepthAutoLaunchSettings alloc];

  return [(CSLPRFDepthAutoLaunchSettings *)v4 initWithSettings:self];
}

- (CSLPRFDepthAutoLaunchSettings)initWithSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSLPRFDepthAutoLaunchSettings;
  v5 = [(CSLPRFDepthAutoLaunchSettings *)&v9 init];
  if (v5)
  {
    v5->_autoLaunchBehavior = [v4 autoLaunchBehavior];
    v6 = [v4 bundleID];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_changeSource = [v4 changeSource];
    v5->_threshold = [v4 threshold];
  }

  return v5;
}

@end