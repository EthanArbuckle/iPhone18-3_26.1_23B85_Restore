@interface ICAppearanceInfo(UI)
+ (id)currentInfo;
- (id)defaultTraitCollection;
- (void)performAsDefaultAppearance:()UI;
@end

@implementation ICAppearanceInfo(UI)

- (id)defaultTraitCollection
{
  v1 = [a1 type];
  if (!v1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 2;
LABEL_5:
    v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v2];
    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
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
  v0 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v1 = [v0 ic_appearanceInfo];

  return v1;
}

- (void)performAsDefaultAppearance:()UI
{
  v4 = a3;
  v5 = [a1 defaultTraitCollection];
  [v5 ic_performAsCurrent:v4];
}

@end