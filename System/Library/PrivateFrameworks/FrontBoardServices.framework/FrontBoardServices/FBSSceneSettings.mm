@interface FBSSceneSettings
+ (id)settings;
- (BOOL)_hasAdditionalDescription;
- (BOOL)_isEmptyForCoding:(BOOL)coding;
- (BOOL)_isEqualToSettings:(id)settings;
- (CGRect)bounds;
- (FBSDisplayIdentity)displayIdentity;
- (FBSSceneSettings)initWithSettings:(id)settings;
- (char)jetsamMode;
- (void)_appendToDescriptionBuilder:(id)builder;
- (void)setJetsamMode:(char)mode;
@end

@implementation FBSSceneSettings

- (FBSDisplayIdentity)displayIdentity
{
  displayConfiguration = [(FBSSceneSettings *)self displayConfiguration];
  identity = [displayConfiguration identity];

  return identity;
}

- (CGRect)bounds
{
  [(FBSSceneSettings *)self frame];
  [(FBSSceneSettings *)self interfaceOrientation];
  BSInterfaceOrientationIsLandscape();
}

+ (id)settings
{
  v2 = [[self alloc] initWithSettings:0];

  return v2;
}

- (char)jetsamMode
{
  jetsamPriority = [(FBSSceneSettings *)self jetsamPriority];

  return FBSSceneJetsamPriorityGetJetsamMode(jetsamPriority);
}

- (FBSSceneSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v12.receiver = self;
  v12.super_class = FBSSceneSettings;
  v5 = [(FBSSettings *)&v12 initWithSettings:settingsCopy];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    ignoreOcclusionReasons = [settingsCopy ignoreOcclusionReasons];
    v8 = ignoreOcclusionReasons;
    if (isKindOfClass)
    {
      v9 = [ignoreOcclusionReasons mutableCopy];
    }

    else
    {
      v9 = [ignoreOcclusionReasons copy];
    }

    ignoreOcclusionReasons = v5->_ignoreOcclusionReasons;
    v5->_ignoreOcclusionReasons = v9;
  }

  return v5;
}

- (void)setJetsamMode:(char)mode
{
  v4 = FBSSceneJetsamPriorityCreate(mode, 0);

  [(FBSSceneSettings *)self setJetsamPriority:v4];
}

- (BOOL)_isEmptyForCoding:(BOOL)coding
{
  v7.receiver = self;
  v7.super_class = FBSSceneSettings;
  v5 = [(FBSSettings *)&v7 _isEmptyForCoding:?];
  if (v5 && !coding)
  {
    LOBYTE(v5) = [(NSSet *)self->_ignoreOcclusionReasons count]== 0;
  }

  return v5;
}

- (BOOL)_hasAdditionalDescription
{
  allObjects = [(NSSet *)self->_ignoreOcclusionReasons allObjects];
  v3 = [allObjects count] != 0;

  return v3;
}

- (void)_appendToDescriptionBuilder:(id)builder
{
  ignoreOcclusionReasons = self->_ignoreOcclusionReasons;
  builderCopy = builder;
  allObjects = [(NSSet *)ignoreOcclusionReasons allObjects];
  [builderCopy appendArraySection:allObjects withName:@"ignoreOcclusionReasons" skipIfEmpty:1];
}

- (BOOL)_isEqualToSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    v6 = *(settingsCopy + 9);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (-[NSSet count](self->_ignoreOcclusionReasons, "count") || [v7 count])
  {
    BSEqualObjects();
  }

  v10.receiver = self;
  v10.super_class = FBSSceneSettings;
  v8 = [(FBSSettings *)&v10 _isEqualToSettings:v5];

  return v8;
}

@end