@interface FUSeparator
- (FUSeparator)initWithCoder:(id)a3;
- (double)onePixelSize;
- (void)tlk_updateForAppearance:(id)a3;
- (void)updateConstraints;
- (void)updateProminenceForAppearance:(id)a3;
@end

@implementation FUSeparator

- (FUSeparator)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FUSeparator;
  v3 = [(FUSeparator *)&v6 initWithCoder:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D6F1A0] bestAppearanceForView:v3];
    [(FUSeparator *)v3 updateProminenceForAppearance:v4];
  }

  return v3;
}

- (void)updateProminenceForAppearance:(id)a3
{
  if ([a3 isVibrant])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [(TLKProminenceView *)self setProminence:v4];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  [(FUSeparator *)self updateProminenceForAppearance:v4];
  v5.receiver = self;
  v5.super_class = FUSeparator;
  [(TLKProminenceView *)&v5 tlk_updateForAppearance:v4];
}

- (double)onePixelSize
{
  v2 = [(FUSeparator *)self window];
  v3 = [v2 screen];

  if (v3)
  {
    [v3 scale];
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 scale];
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
  v3 = [(FUSeparator *)self constraints];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 firstAttribute] == 8)
        {
          [(FUSeparator *)self onePixelSize];
          [v8 setConstant:?];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = FUSeparator;
  [(FUSeparator *)&v10 updateConstraints];
  v9 = *MEMORY[0x277D85DE8];
}

@end