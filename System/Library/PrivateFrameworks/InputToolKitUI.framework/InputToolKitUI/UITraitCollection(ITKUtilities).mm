@interface UITraitCollection(ITKUtilities)
+ (id)appearanceClassForType:()ITKUtilities;
- (void)itk_performAsCurrent:()ITKUtilities;
@end

@implementation UITraitCollection(ITKUtilities)

+ (id)appearanceClassForType:()ITKUtilities
{
  if (a3 == 1)
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    a3 = 2;
LABEL_4:
    v3 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:a3];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_6:
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  v7 = 2.0;
  if (v6 >= 2.0)
  {
    v7 = v6;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__UITraitCollection_ITKUtilities__appearanceClassForType___block_invoke;
  v10[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  *&v10[4] = v7;
  v8 = [v3 traitCollectionByModifyingTraits:v10];

  return v8;
}

- (void)itk_performAsCurrent:()ITKUtilities
{
  if (a3)
  {
    return [self performAsCurrentTraitCollection:?];
  }

  return self;
}

@end