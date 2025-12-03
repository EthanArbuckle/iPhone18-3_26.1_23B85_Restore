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
    tableSeparatorColor = [MEMORY[0x277D75348] tableSeparatorColor];
    [(DCSinglePixelLineView *)self setBackgroundColor:tableSeparatorColor];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = 1.0 / v5;

    findSizeLayoutConstraintIfExists = [(DCSinglePixelLineView *)self findSizeLayoutConstraintIfExists];
    if (!findSizeLayoutConstraintIfExists)
    {
      findSizeLayoutConstraintIfExists = [(DCSinglePixelLineView *)self addSizeConstraint];
    }

    v8 = findSizeLayoutConstraintIfExists;
    [findSizeLayoutConstraintIfExists setConstant:v6];
    [(DCSinglePixelLineView *)self setHasSetUpSizeConstraint:1];
  }
}

- (id)findSizeLayoutConstraintIfExists
{
  v20 = *MEMORY[0x277D85DE8];
  sizeLayoutAttribute = [(DCSinglePixelLineView *)self sizeLayoutAttribute];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  constraints = [(DCSinglePixelLineView *)self constraints];
  v5 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(constraints);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 firstAttribute] == sizeLayoutAttribute)
      {
        firstItem = [v10 firstItem];
        if (firstItem != self)
        {
          goto LABEL_8;
        }

        secondItem = [v10 secondItem];

        if (!secondItem)
        {
          firstItem = v7;
          v7 = v10;
LABEL_8:
        }
      }

      ++v9;
    }

    while (v6 != v9);
    v13 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
    v6 = v13;
  }

  while (v13);
LABEL_16:

  return v7;
}

- (id)addSizeConstraint
{
  v11[1] = *MEMORY[0x277D85DE8];
  sizeLayoutAttribute = [(DCSinglePixelLineView *)self sizeLayoutAttribute];
  v4 = MEMORY[0x277CCAAD0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = [v4 constraintWithItem:self attribute:sizeLayoutAttribute relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v6];

  v8 = MEMORY[0x277CCAAD0];
  v11[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v8 activateConstraints:v9];

  return v7;
}

@end