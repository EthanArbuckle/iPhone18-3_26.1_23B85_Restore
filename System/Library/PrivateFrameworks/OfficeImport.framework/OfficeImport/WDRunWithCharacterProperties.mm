@interface WDRunWithCharacterProperties
- (BOOL)isHidden;
- (WDRunWithCharacterProperties)initWithParagraph:(id)a3;
@end

@implementation WDRunWithCharacterProperties

- (WDRunWithCharacterProperties)initWithParagraph:(id)a3
{
  v7.receiver = self;
  v7.super_class = WDRunWithCharacterProperties;
  v3 = [(WDRun *)&v7 initWithParagraph:a3];
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
  v3 = [(WDCharacterProperties *)self->mProperties isHiddenOverridden];
  mProperties = self->mProperties;
  if (v3)
  {
    LOBYTE(v5) = [(WDCharacterProperties *)mProperties hidden]!= 0;
  }

  else if ([(WDCharacterProperties *)mProperties isBaseStyleOverridden]&& ([(WDCharacterProperties *)self->mProperties baseStyle], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    while (1)
    {
      v8 = [v7 characterProperties];
      v9 = [v8 isHiddenOverridden];

      if (v9)
      {
        v11 = [v7 characterProperties];
        LOBYTE(v5) = [v11 hidden] == 1;

        goto LABEL_13;
      }

      v10 = [v7 baseStyle];

      if (v10 == v7)
      {
        break;
      }

      v5 = [v7 baseStyle];

      v7 = v5;
      if (!v5)
      {
        return v5;
      }
    }

    LOBYTE(v5) = 0;
LABEL_13:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end