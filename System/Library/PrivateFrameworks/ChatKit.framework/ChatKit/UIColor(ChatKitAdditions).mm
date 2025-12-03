@interface UIColor(ChatKitAdditions)
+ (id)_ckColor:()ChatKitAdditions forUserInterfaceStyle:;
+ (id)_ckSecondarySystemBackgroundColor;
+ (id)_ckSecondarySystemGroupedBackgroundColor;
+ (id)_ckSystemBackgroundColor;
+ (id)_ckSystemGroupedBackgroundColor;
+ (id)_ckTertiarySystemBackgroundColor;
+ (id)ckColorNamed:()ChatKitAdditions;
+ (id)dynamicColorWithLightColor:()ChatKitAdditions darkColor:;
- (id)resolvedColorForTraitCollection:()ChatKitAdditions;
@end

@implementation UIColor(ChatKitAdditions)

+ (id)ckColorNamed:()ChatKitAdditions
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = CKFrameworkBundle();
  v6 = [v3 colorNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (id)dynamicColorWithLightColor:()ChatKitAdditions darkColor:
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69DC888];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__UIColor_ChatKitAdditions__dynamicColorWithLightColor_darkColor___block_invoke;
  v12[3] = &unk_1E72EEED0;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 colorWithDynamicProvider:v12];

  return v10;
}

- (id)resolvedColorForTraitCollection:()ChatKitAdditions
{
  v4 = MEMORY[0x1E69DD1B8];
  v5 = a3;
  _currentTraitCollection = [v4 _currentTraitCollection];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v5];

  v7 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(self, "CGColor")}];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:_currentTraitCollection];

  return v7;
}

+ (id)_ckSystemBackgroundColor
{
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() performSelector:sel_systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlackColor];
  }
  v0 = ;

  return v0;
}

+ (id)_ckSecondarySystemBackgroundColor
{
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() performSelector:sel_secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemDarkGrayColor];
  }
  v0 = ;

  return v0;
}

+ (id)_ckTertiarySystemBackgroundColor
{
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() performSelector:sel_tertiarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v0 = ;

  return v0;
}

+ (id)_ckSystemGroupedBackgroundColor
{
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() performSelector:sel_systemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlackColor];
  }
  v0 = ;

  return v0;
}

+ (id)_ckSecondarySystemGroupedBackgroundColor
{
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() performSelector:sel_secondarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlackColor];
  }
  v0 = ;

  return v0;
}

+ (id)_ckColor:()ChatKitAdditions forUserInterfaceStyle:
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DD1B8];
  v6 = a3;
  _currentTraitCollection = [v5 _currentTraitCollection];
  v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:a4];
  v9 = MEMORY[0x1E69DD1B8];
  v14[0] = _currentTraitCollection;
  v14[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v11 = [v9 traitCollectionWithTraitsFromCollections:v10];

  v12 = [v6 resolvedColorWithTraitCollection:v11];

  return v12;
}

@end