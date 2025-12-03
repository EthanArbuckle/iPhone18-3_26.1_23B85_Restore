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
    theme = [v4 theme];
    entryFieldDarkEffectButtonColor = [theme entryFieldDarkEffectButtonColor];
    [self setTintColor:entryFieldDarkEffectButtonColor];

    [self setBarStyle:2];
    [self _setDisableBlurTinting:1];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    [self setBarTintColor:v7];
  }

  else
  {
    [self setTintColor:0];
    [self setBarStyle:0];
    [self _setDisableBlurTinting:0];
    [self setBarTintColor:0];
  }

  return [self setBackgroundEffects:0];
}

- (void)enableBranding:()CKUtilities forBusinessChat:
{
  v6 = a4;
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  v8 = [theme primaryBrandColorForBusinessChat:v6];
  v9 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v9 theme];
  v11 = [theme2 secondaryBrandColorForBusinessChat:v6];

  [self _enableBusinessBranding:a3 primaryColor:v8 secondaryColor:v11];
}

- (void)enableBranding:()CKUtilities forBusinessHandle:
{
  v6 = a4;
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  v8 = [theme primaryBrandColorForBusinessHandle:v6];
  v9 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v9 theme];
  v11 = [theme2 secondaryBrandColorForBusinessHandle:v6];

  [self _enableBusinessBranding:a3 primaryColor:v8 secondaryColor:v11];
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
      [self setBackgroundEffects:v11];
    }

    else
    {
      [self setBackgroundEffects:0];
    }

    selfCopy2 = self;
    v13 = v9;
  }

  else
  {
    [self setBackgroundEffects:0];
    selfCopy2 = self;
    v13 = 0;
  }

  [selfCopy2 setTintColor:v13];
}

@end