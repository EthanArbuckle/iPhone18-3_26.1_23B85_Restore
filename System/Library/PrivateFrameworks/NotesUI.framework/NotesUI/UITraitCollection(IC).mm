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
  if ([a1 ic_hasCompactWidth])
  {
    return 1;
  }

  return [a1 ic_hasCompactHeight];
}

+ (void)setIc_alwaysShowLightContent:()IC
{
  [MEMORY[0x1E69B7AB8] setBool:a3 forKey:@"ICAlwaysShowLightContentDefaultsKey"];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"ICAlwaysShowLightContentDidChangeNotification" object:0];
}

- (uint64_t)ic_appearanceInfo
{
  v1 = [a1 ic_isDark];
  v2 = MEMORY[0x1E69B7678];

  return [v2 appearanceInfoWithType:v1];
}

- (BOOL)ic_hasEqualSizeToTraitCollection:()IC
{
  v4 = a3;
  v5 = [a1 horizontalSizeClass];
  if (v5 == [v4 horizontalSizeClass])
  {
    v6 = [a1 verticalSizeClass];
    v7 = v6 == [v4 verticalSizeClass];
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
  v4 = a1;
  v5 = v4;
  if (a3)
  {
    v6 = MEMORY[0x1E69DD1B8];
    v12[0] = v4;
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
  v2 = [a1 ic_traitsAffectingSize];
  v3 = [a1 systemTraitsAffectingColorAppearance];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

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