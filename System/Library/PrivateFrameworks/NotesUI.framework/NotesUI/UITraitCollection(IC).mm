@interface UITraitCollection(IC)
+ (id)ic_traitsAffectingSize;
+ (id)ic_traitsAffectingSizeAndColor;
+ (void)setIc_alwaysShowLightContent:()IC;
- (BOOL)ic_hasEqualSizeToTraitCollection:()IC;
- (id)ic_traitCollectionByAppendingNonNilTraitCollection:()IC;
- (uint64_t)ic_appearanceInfo;
- (uint64_t)ic_hasCompactSize;
@end

@implementation UITraitCollection(IC)

- (uint64_t)ic_hasCompactSize
{
  if ([self ic_hasCompactWidth])
  {
    return 1;
  }

  return [self ic_hasCompactHeight];
}

+ (void)setIc_alwaysShowLightContent:()IC
{
  [MEMORY[0x1E69B7AB8] setBool:a3 forKey:@"ICAlwaysShowLightContentDefaultsKey"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICAlwaysShowLightContentDidChangeNotification" object:0];
}

- (uint64_t)ic_appearanceInfo
{
  ic_isDark = [self ic_isDark];
  v2 = MEMORY[0x1E69B7678];

  return [v2 appearanceInfoWithType:ic_isDark];
}

- (BOOL)ic_hasEqualSizeToTraitCollection:()IC
{
  v4 = a3;
  horizontalSizeClass = [self horizontalSizeClass];
  if (horizontalSizeClass == [v4 horizontalSizeClass])
  {
    verticalSizeClass = [self verticalSizeClass];
    v7 = verticalSizeClass == [v4 verticalSizeClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)ic_traitCollectionByAppendingNonNilTraitCollection:()IC
{
  v12[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v5 = selfCopy;
  if (a3)
  {
    v6 = MEMORY[0x1E69DD1B8];
    v12[0] = selfCopy;
    v12[1] = a3;
    v7 = MEMORY[0x1E695DEC8];
    v8 = a3;
    v9 = [v7 arrayWithObjects:v12 count:2];
    v10 = [v6 traitCollectionWithTraitsFromCollections:v9];

    v5 = v10;
  }

  return v5;
}

+ (id)ic_traitsAffectingSizeAndColor
{
  ic_traitsAffectingSize = [self ic_traitsAffectingSize];
  systemTraitsAffectingColorAppearance = [self systemTraitsAffectingColorAppearance];
  v4 = [ic_traitsAffectingSize arrayByAddingObjectsFromArray:systemTraitsAffectingColorAppearance];

  return v4;
}

+ (id)ic_traitsAffectingSize
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];

  return v0;
}

@end