@interface PBUIBakedEffectSnapshotSource
- (PBUIBakedEffectSnapshotSource)initWithSnapshotSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation PBUIBakedEffectSnapshotSource

- (PBUIBakedEffectSnapshotSource)initWithSnapshotSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    v5 = [(PBUIBakedEffectSnapshotSource *)self init];
    if (v5)
    {
      cacheIdentifier = [sourceCopy cacheIdentifier];
      v7 = [cacheIdentifier copy];
      cacheIdentifier = v5->_cacheIdentifier;
      v5->_cacheIdentifier = v7;

      legibilitySettings = [sourceCopy legibilitySettings];
      v10 = [legibilitySettings copy];
      legibilitySettings = v5->_legibilitySettings;
      v5->_legibilitySettings = v10;

      snapshot = [sourceCopy snapshot];
      snapshot = v5->_snapshot;
      v5->_snapshot = snapshot;

      v14 = +[PBUIWallpaperEffectConfiguration normal];
      effectConfiguration = v5->_effectConfiguration;
      v5->_effectConfiguration = v14;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  cacheIdentifier = [(PBUIBakedEffectSnapshotSource *)self cacheIdentifier];
  [v4 setCacheIdentifier:cacheIdentifier];

  legibilitySettings = [(PBUIBakedEffectSnapshotSource *)self legibilitySettings];
  [v4 setLegibilitySettings:legibilitySettings];

  snapshot = [(PBUIBakedEffectSnapshotSource *)self snapshot];
  [v4 setSnapshot:snapshot];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIBakedEffectSnapshotSource *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  cacheIdentifier = [(PBUIBakedEffectSnapshotSource *)self cacheIdentifier];
  [v4 appendString:cacheIdentifier withName:@"cacheIdentifier"];

  snapshot = [(PBUIBakedEffectSnapshotSource *)self snapshot];
  v7 = [v4 appendObject:snapshot withName:@"snapshot"];

  effectConfiguration = [(PBUIBakedEffectSnapshotSource *)self effectConfiguration];
  v9 = [v4 appendObject:effectConfiguration withName:@"effectConfiguration"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIBakedEffectSnapshotSource *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end