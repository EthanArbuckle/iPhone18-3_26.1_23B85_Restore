@interface UINavigationBar(CKUtilities)
- (uint64_t)setDarkEffectStyle:()CKUtilities;
- (void)_enableBusinessBranding:()CKUtilities primaryColor:secondaryColor:;
- (void)enableBranding:()CKUtilities forBusinessChat:;
- (void)enableBranding:()CKUtilities forBusinessHandle:;
@end

@implementation UINavigationBar(CKUtilities)

- (uint64_t)setDarkEffectStyle:()CKUtilities
{
  if (a3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v6 = [v5 entryFieldDarkEffectButtonColor];
    [a1 setTintColor:v6];

    [a1 setBarStyle:2];
    [a1 _setDisableBlurTinting:1];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    [a1 setBarTintColor:v7];
  }

  else
  {
    [a1 setTintColor:0];
    [a1 setBarStyle:0];
    [a1 _setDisableBlurTinting:0];
    [a1 setBarTintColor:0];
  }

  return [a1 setBackgroundEffects:0];
}

- (void)enableBranding:()CKUtilities forBusinessChat:
{
  v6 = a4;
  v12 = +[CKUIBehavior sharedBehaviors];
  v7 = [v12 theme];
  v8 = [v7 primaryBrandColorForBusinessChat:v6];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = [v10 secondaryBrandColorForBusinessChat:v6];

  [a1 _enableBusinessBranding:a3 primaryColor:v8 secondaryColor:v11];
}

- (void)enableBranding:()CKUtilities forBusinessHandle:
{
  v6 = a4;
  v12 = +[CKUIBehavior sharedBehaviors];
  v7 = [v12 theme];
  v8 = [v7 primaryBrandColorForBusinessHandle:v6];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 theme];
  v11 = [v10 secondaryBrandColorForBusinessHandle:v6];

  [a1 _enableBusinessBranding:a3 primaryColor:v8 secondaryColor:v11];
}

- (void)_enableBusinessBranding:()CKUtilities primaryColor:secondaryColor:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    if (v8)
    {
      v10 = [MEMORY[0x1E69DD290] effectCompositingColor:v8];
      v14[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [a1 setBackgroundEffects:v11];
    }

    else
    {
      [a1 setBackgroundEffects:0];
    }

    v12 = a1;
    v13 = v9;
  }

  else
  {
    [a1 setBackgroundEffects:0];
    v12 = a1;
    v13 = 0;
  }

  [v12 setTintColor:v13];
}

@end