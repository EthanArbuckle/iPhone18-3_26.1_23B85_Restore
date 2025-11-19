@interface DCSinglePixelLineView
- (id)addSizeConstraint;
- (id)findSizeLayoutConstraintIfExists;
- (void)setUpHeightConstraintIfNecessary;
- (void)updateConstraints;
@end

@implementation DCSinglePixelLineView

- (void)updateConstraints
{
  [(DCSinglePixelLineView *)self setUpHeightConstraintIfNecessary];
  v3.receiver = self;
  v3.super_class = DCSinglePixelLineView;
  [(DCSinglePixelLineView *)&v3 updateConstraints];
}

- (void)setUpHeightConstraintIfNecessary
{
  if (![(DCSinglePixelLineView *)self hasSetUpSizeConstraint])
  {
    v3 = [MEMORY[0x277D75348] tableSeparatorColor];
    [(DCSinglePixelLineView *)self setBackgroundColor:v3];

    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
    v6 = 1.0 / v5;

    v7 = [(DCSinglePixelLineView *)self findSizeLayoutConstraintIfExists];
    if (!v7)
    {
      v7 = [(DCSinglePixelLineView *)self addSizeConstraint];
    }

    v8 = v7;
    [v7 setConstant:v6];
    [(DCSinglePixelLineView *)self setHasSetUpSizeConstraint:1];
  }
}

- (id)findSizeLayoutConstraintIfExists
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(DCSinglePixelLineView *)self sizeLayoutAttribute];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(DCSinglePixelLineView *)self constraints];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v16;
  do
  {
    v9 = 0;
    do
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 firstAttribute] == v3)
      {
        v11 = [v10 firstItem];
        if (v11 != self)
        {
          goto LABEL_8;
        }

        v12 = [v10 secondItem];

        if (!v12)
        {
          v11 = v7;
          v7 = v10;
LABEL_8:
        }
      }

      ++v9;
    }

    while (v6 != v9);
    v13 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v6 = v13;
  }

  while (v13);
LABEL_16:

  return v7;
}

- (id)addSizeConstraint
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(DCSinglePixelLineView *)self sizeLayoutAttribute];
  v4 = MEMORY[0x277CCAAD0];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = [v4 constraintWithItem:self attribute:v3 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v6];

  v8 = MEMORY[0x277CCAAD0];
  v11[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v8 activateConstraints:v9];

  return v7;
}

@end