@interface PBUIBakedEffectSnapshotSource
- (PBUIBakedEffectSnapshotSource)initWithSnapshotSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation PBUIBakedEffectSnapshotSource

- (PBUIBakedEffectSnapshotSource)initWithSnapshotSource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PBUIBakedEffectSnapshotSource *)self init];
    if (v5)
    {
      v6 = [v4 cacheIdentifier];
      v7 = [v6 copy];
      cacheIdentifier = v5->_cacheIdentifier;
      v5->_cacheIdentifier = v7;

      v9 = [v4 legibilitySettings];
      v10 = [v9 copy];
      legibilitySettings = v5->_legibilitySettings;
      v5->_legibilitySettings = v10;

      v12 = [v4 snapshot];
      snapshot = v5->_snapshot;
      v5->_snapshot = v12;

      v14 = +[PBUIWallpaperEffectConfiguration normal];
      effectConfiguration = v5->_effectConfiguration;
      v5->_effectConfiguration = v14;
    }

    self = v5;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PBUIBakedEffectSnapshotSource *)self cacheIdentifier];
  [v4 setCacheIdentifier:v5];

  v6 = [(PBUIBakedEffectSnapshotSource *)self legibilitySettings];
  [v4 setLegibilitySettings:v6];

  v7 = [(PBUIBakedEffectSnapshotSource *)self snapshot];
  [v4 setSnapshot:v7];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIBakedEffectSnapshotSource *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(PBUIBakedEffectSnapshotSource *)self cacheIdentifier];
  [v4 appendString:v5 withName:@"cacheIdentifier"];

  v6 = [(PBUIBakedEffectSnapshotSource *)self snapshot];
  v7 = [v4 appendObject:v6 withName:@"snapshot"];

  v8 = [(PBUIBakedEffectSnapshotSource *)self effectConfiguration];
  v9 = [v4 appendObject:v8 withName:@"effectConfiguration"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBUIBakedEffectSnapshotSource *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end