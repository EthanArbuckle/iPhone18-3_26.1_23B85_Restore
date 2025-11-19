@interface FBSSceneSettings
+ (id)settings;
- (BOOL)_hasAdditionalDescription;
- (BOOL)_isEmptyForCoding:(BOOL)a3;
- (BOOL)_isEqualToSettings:(id)a3;
- (CGRect)bounds;
- (FBSDisplayIdentity)displayIdentity;
- (FBSSceneSettings)initWithSettings:(id)a3;
- (char)jetsamMode;
- (void)_appendToDescriptionBuilder:(id)a3;
- (void)setJetsamMode:(char)a3;
@end

@implementation FBSSceneSettings

- (FBSDisplayIdentity)displayIdentity
{
  v2 = [(FBSSceneSettings *)self displayConfiguration];
  v3 = [v2 identity];

  return v3;
}

- (CGRect)bounds
{
  [(FBSSceneSettings *)self frame];
  [(FBSSceneSettings *)self interfaceOrientation];
  BSInterfaceOrientationIsLandscape();
}

+ (id)settings
{
  v2 = [[a1 alloc] initWithSettings:0];

  return v2;
}

- (char)jetsamMode
{
  v2 = [(FBSSceneSettings *)self jetsamPriority];

  return FBSSceneJetsamPriorityGetJetsamMode(v2);
}

- (FBSSceneSettings)initWithSettings:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FBSSceneSettings;
  v5 = [(FBSSettings *)&v12 initWithSettings:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = [v4 ignoreOcclusionReasons];
    v8 = v7;
    if (isKindOfClass)
    {
      v9 = [v7 mutableCopy];
    }

    else
    {
      v9 = [v7 copy];
    }

    ignoreOcclusionReasons = v5->_ignoreOcclusionReasons;
    v5->_ignoreOcclusionReasons = v9;
  }

  return v5;
}

- (void)setJetsamMode:(char)a3
{
  v4 = FBSSceneJetsamPriorityCreate(a3, 0);

  [(FBSSceneSettings *)self setJetsamPriority:v4];
}

- (BOOL)_isEmptyForCoding:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = FBSSceneSettings;
  v5 = [(FBSSettings *)&v7 _isEmptyForCoding:?];
  if (v5 && !a3)
  {
    LOBYTE(v5) = [(NSSet *)self->_ignoreOcclusionReasons count]== 0;
  }

  return v5;
}

- (BOOL)_hasAdditionalDescription
{
  v2 = [(NSSet *)self->_ignoreOcclusionReasons allObjects];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_appendToDescriptionBuilder:(id)a3
{
  ignoreOcclusionReasons = self->_ignoreOcclusionReasons;
  v4 = a3;
  v5 = [(NSSet *)ignoreOcclusionReasons allObjects];
  [v4 appendArraySection:v5 withName:@"ignoreOcclusionReasons" skipIfEmpty:1];
}

- (BOOL)_isEqualToSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 9);
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