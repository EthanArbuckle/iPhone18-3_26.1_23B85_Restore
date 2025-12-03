@interface FUSeparator
- (FUSeparator)initWithCoder:(id)coder;
- (double)onePixelSize;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)updateConstraints;
- (void)updateProminenceForAppearance:(id)appearance;
@end

@implementation FUSeparator

- (FUSeparator)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FUSeparator;
  v3 = [(FUSeparator *)&v6 initWithCoder:coder];
  if (v3)
  {
    v4 = [MEMORY[0x277D6F1A0] bestAppearanceForView:v3];
    [(FUSeparator *)v3 updateProminenceForAppearance:v4];
  }

  return v3;
}

- (void)updateProminenceForAppearance:(id)appearance
{
  if ([appearance isVibrant])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [(TLKProminenceView *)self setProminence:v4];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  [(FUSeparator *)self updateProminenceForAppearance:appearanceCopy];
  v5.receiver = self;
  v5.super_class = FUSeparator;
  [(TLKProminenceView *)&v5 tlk_updateForAppearance:appearanceCopy];
}

- (double)onePixelSize
{
  window = [(FUSeparator *)self window];
  screen = [window screen];

  if (screen)
  {
    [screen scale];
    v5 = v4;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v5 = v7;
  }

  if (v5 <= 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 1.0 / v5;
  }

  return v8;
}

- (void)updateConstraints
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  constraints = [(FUSeparator *)self constraints];
  v4 = [constraints countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(constraints);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 firstAttribute] == 8)
        {
          [(FUSeparator *)self onePixelSize];
          [v8 setConstant:?];
        }
      }

      v5 = [constraints countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = FUSeparator;
  [(FUSeparator *)&v10 updateConstraints];
  v9 = *MEMORY[0x277D85DE8];
}

@end