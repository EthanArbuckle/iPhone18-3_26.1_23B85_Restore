@interface CPSHairlineView
+ (id)grayHairlineViewAlongAxis:(int64_t)axis;
- (CPSHairlineView)initWithAxis:(int64_t)axis color:(id)color;
- (void)_updateStrokeThickness;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSHairlineView

+ (id)grayHairlineViewAlongAxis:(int64_t)axis
{
  v4 = [self alloc];
  v5 = [MEMORY[0x277D75348] colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
  v6 = [v4 initWithAxis:axis color:?];
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (CPSHairlineView)initWithAxis:(int64_t)axis color:(id)color
{
  selfCopy = self;
  v17 = a2;
  axisCopy = axis;
  location = 0;
  objc_storeStrong(&location, color);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(CPSHairlineView *)v4 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(CPSHairlineView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(CPSHairlineView *)selfCopy setContentHuggingPriority:axisCopy forAxis:v5];
    [(CPSHairlineView *)selfCopy setBackgroundColor:location];
    [(CPSHairlineView *)selfCopy setAxis:axisCopy];
    v12 = 0;
    v10 = 0;
    if (axisCopy)
    {
      widthAnchor = [(CPSHairlineView *)selfCopy widthAnchor];
      v10 = 1;
      v6 = MEMORY[0x277D82BE0](widthAnchor);
    }

    else
    {
      heightAnchor = [(CPSHairlineView *)selfCopy heightAnchor];
      v12 = 1;
      v6 = MEMORY[0x277D82BE0](heightAnchor);
    }

    v14 = v6;
    if (v10)
    {
      MEMORY[0x277D82BD8](widthAnchor);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](heightAnchor);
    }

    v9 = [v14 constraintEqualToConstant:1.0];
    [(CPSHairlineView *)selfCopy setStrokeThicknessConstraint:v9];
    [(CPSHairlineView *)selfCopy addConstraint:v9];
    [(CPSHairlineView *)selfCopy _updateStrokeThickness];
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v14, 0);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  [(CPSHairlineView *)selfCopy _updateStrokeThickness];
  objc_storeStrong(location, 0);
}

- (void)_updateStrokeThickness
{
  traitCollection = [(CPSHairlineView *)self traitCollection];
  [traitCollection displayScale];
  v6 = v2;
  MEMORY[0x277D82BD8](traitCollection);
  if (v6 > 0.0)
  {
    UIRoundToScale();
    v7 = v3;
    strokeThicknessConstraint = [(CPSHairlineView *)self strokeThicknessConstraint];
    [(NSLayoutConstraint *)strokeThicknessConstraint setConstant:v7];
    MEMORY[0x277D82BD8](strokeThicknessConstraint);
  }
}

@end