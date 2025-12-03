@interface ICAppearanceInfo(UI)
+ (id)currentInfo;
- (id)defaultTraitCollection;
- (void)performAsDefaultAppearance:()UI;
@end

@implementation ICAppearanceInfo(UI)

- (id)defaultTraitCollection
{
  type = [self type];
  if (!type)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v2 = 2;
LABEL_5:
    v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v2];
    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  v7 = 2.0;
  if (v6 >= 2.0)
  {
    v7 = v6;
  }

  v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithDisplayScale:v7];
  v9 = [v3 ic_traitCollectionByAppendingNonNilTraitCollection:v8];

  return v9;
}

+ (id)currentInfo
{
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  ic_appearanceInfo = [currentTraitCollection ic_appearanceInfo];

  return ic_appearanceInfo;
}

- (void)performAsDefaultAppearance:()UI
{
  v4 = a3;
  defaultTraitCollection = [self defaultTraitCollection];
  [defaultTraitCollection ic_performAsCurrent:v4];
}

@end