@interface UITraitCollection
@end

@implementation UITraitCollection

void __77__UITraitCollection_MobileSafariExtras__safari_traitsAffectingTextAppearance__block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];
  v1 = safari_traitsAffectingTextAppearance_traits;
  safari_traitsAffectingTextAppearance_traits = v0;
}

@end