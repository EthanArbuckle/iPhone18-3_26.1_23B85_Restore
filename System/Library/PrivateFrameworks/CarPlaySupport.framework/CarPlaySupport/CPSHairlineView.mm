@interface CPSHairlineView
+ (id)grayHairlineViewAlongAxis:(int64_t)a3;
- (CPSHairlineView)initWithAxis:(int64_t)a3 color:(id)a4;
- (void)_updateStrokeThickness;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSHairlineView

+ (id)grayHairlineViewAlongAxis:(int64_t)a3
{
  v4 = [a1 alloc];
  v5 = [MEMORY[0x277D75348] colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
  v6 = [v4 initWithAxis:a3 color:?];
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (CPSHairlineView)initWithAxis:(int64_t)a3 color:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v18;
  v18 = 0;
  v18 = [(CPSHairlineView *)v4 init];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    [(CPSHairlineView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(CPSHairlineView *)v18 setContentHuggingPriority:v16 forAxis:v5];
    [(CPSHairlineView *)v18 setBackgroundColor:location];
    [(CPSHairlineView *)v18 setAxis:v16];
    v12 = 0;
    v10 = 0;
    if (v16)
    {
      v11 = [(CPSHairlineView *)v18 widthAnchor];
      v10 = 1;
      v6 = MEMORY[0x277D82BE0](v11);
    }

    else
    {
      v13 = [(CPSHairlineView *)v18 heightAnchor];
      v12 = 1;
      v6 = MEMORY[0x277D82BE0](v13);
    }

    v14 = v6;
    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    v9 = [v14 constraintEqualToConstant:1.0];
    [(CPSHairlineView *)v18 setStrokeThicknessConstraint:v9];
    [(CPSHairlineView *)v18 addConstraint:v9];
    [(CPSHairlineView *)v18 _updateStrokeThickness];
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v14, 0);
  }

  v8 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v18, 0);
  return v8;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSHairlineView *)v4 _updateStrokeThickness];
  objc_storeStrong(location, 0);
}

- (void)_updateStrokeThickness
{
  v5 = [(CPSHairlineView *)self traitCollection];
  [v5 displayScale];
  v6 = v2;
  MEMORY[0x277D82BD8](v5);
  if (v6 > 0.0)
  {
    UIRoundToScale();
    v7 = v3;
    v4 = [(CPSHairlineView *)self strokeThicknessConstraint];
    [(NSLayoutConstraint *)v4 setConstant:v7];
    MEMORY[0x277D82BD8](v4);
  }
}

@end