@interface DOCSeparatorView
+ (double)separatorThicknessForTraitCollection:(id)a3;
- (CGSize)intrinsicContentSize;
- (DOCSeparatorView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation DOCSeparatorView

- (DOCSeparatorView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = DOCSeparatorView;
  v3 = [(DOCSeparatorView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] separatorColor];
    [(DOCSeparatorView *)v3 setBackgroundColor:v4];

    LODWORD(v5) = 1131413504;
    [(DOCSeparatorView *)v3 setContentHuggingPriority:1 forAxis:v5];
    LODWORD(v6) = 1131413504;
    [(DOCSeparatorView *)v3 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(DOCSeparatorView *)v3 setContentCompressionResistancePriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(DOCSeparatorView *)v3 setContentCompressionResistancePriority:0 forAxis:v8];
    v9 = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
    v10 = objc_opt_self();
    v11 = [v9 arrayByAddingObject:v10];

    v12 = [(DOCSeparatorView *)v3 registerForTraitChanges:v11 withAction:sel_invalidateIntrinsicContentSize];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_class();
  v4 = [(DOCSeparatorView *)self traitCollection];
  [v3 separatorThicknessForTraitCollection:v4];
  v6 = v5;

  v7 = v6;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = DOCSeparatorView;
  [(DOCSeparatorView *)&v4 didMoveToWindow];
  v3 = [(DOCSeparatorView *)self window];

  if (v3)
  {
    [(DOCSeparatorView *)self invalidateIntrinsicContentSize];
  }
}

+ (double)separatorThicknessForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 preferredContentSizeCategory];
  v5 = *MEMORY[0x277D76860];

  if (v4 == v5)
  {
    v7 = [MEMORY[0x277D75380] system];
    v6 = [v7 preferredContentSizeCategory];
  }

  else
  {
    v6 = [v3 preferredContentSizeCategory];
  }

  v8 = 1.0;
  if (!UIContentSizeCategoryIsAccessibilityCategory(v6) && (_UISolariumEnabled() & 1) == 0)
  {
    [v3 displayScale];
    v10 = v9 <= 0.0;
    v11 = 1.0;
    if (!v10)
    {
      [v3 displayScale];
    }

    v8 = 1.0 / v11;
  }

  return v8;
}

@end