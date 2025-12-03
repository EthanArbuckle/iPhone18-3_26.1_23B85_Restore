@interface WDRunWithCharacterProperties
- (BOOL)isHidden;
- (WDRunWithCharacterProperties)initWithParagraph:(id)paragraph;
@end

@implementation WDRunWithCharacterProperties

- (WDRunWithCharacterProperties)initWithParagraph:(id)paragraph
{
  v7.receiver = self;
  v7.super_class = WDRunWithCharacterProperties;
  v3 = [(WDRun *)&v7 initWithParagraph:paragraph];
  v4 = v3;
  if (v3)
  {
    mProperties = v3->mProperties;
    v3->mProperties = 0;
  }

  return v4;
}

- (BOOL)isHidden
{
  isHiddenOverridden = [(WDCharacterProperties *)self->mProperties isHiddenOverridden];
  mProperties = self->mProperties;
  if (isHiddenOverridden)
  {
    LOBYTE(baseStyle2) = [(WDCharacterProperties *)mProperties hidden]!= 0;
  }

  else if ([(WDCharacterProperties *)mProperties isBaseStyleOverridden]&& ([(WDCharacterProperties *)self->mProperties baseStyle], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    while (1)
    {
      characterProperties = [v7 characterProperties];
      isHiddenOverridden2 = [characterProperties isHiddenOverridden];

      if (isHiddenOverridden2)
      {
        characterProperties2 = [v7 characterProperties];
        LOBYTE(baseStyle2) = [characterProperties2 hidden] == 1;

        goto LABEL_13;
      }

      baseStyle = [v7 baseStyle];

      if (baseStyle == v7)
      {
        break;
      }

      baseStyle2 = [v7 baseStyle];

      v7 = baseStyle2;
      if (!baseStyle2)
      {
        return baseStyle2;
      }
    }

    LOBYTE(baseStyle2) = 0;
LABEL_13:
  }

  else
  {
    LOBYTE(baseStyle2) = 0;
  }

  return baseStyle2;
}

@end