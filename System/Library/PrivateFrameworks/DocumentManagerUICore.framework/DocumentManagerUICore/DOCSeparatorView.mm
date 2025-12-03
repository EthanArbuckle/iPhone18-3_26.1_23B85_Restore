@interface DOCSeparatorView
+ (double)separatorThicknessForTraitCollection:(id)collection;
- (CGSize)intrinsicContentSize;
- (DOCSeparatorView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation DOCSeparatorView

- (DOCSeparatorView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = DOCSeparatorView;
  v3 = [(DOCSeparatorView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(DOCSeparatorView *)v3 setBackgroundColor:separatorColor];

    LODWORD(v5) = 1131413504;
    [(DOCSeparatorView *)v3 setContentHuggingPriority:1 forAxis:v5];
    LODWORD(v6) = 1131413504;
    [(DOCSeparatorView *)v3 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(DOCSeparatorView *)v3 setContentCompressionResistancePriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(DOCSeparatorView *)v3 setContentCompressionResistancePriority:0 forAxis:v8];
    doc_traitsAffectingFonts = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
    v10 = objc_opt_self();
    v11 = [doc_traitsAffectingFonts arrayByAddingObject:v10];

    v12 = [(DOCSeparatorView *)v3 registerForTraitChanges:v11 withAction:sel_invalidateIntrinsicContentSize];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_class();
  traitCollection = [(DOCSeparatorView *)self traitCollection];
  [v3 separatorThicknessForTraitCollection:traitCollection];
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
  window = [(DOCSeparatorView *)self window];

  if (window)
  {
    [(DOCSeparatorView *)self invalidateIntrinsicContentSize];
  }
}

+ (double)separatorThicknessForTraitCollection:(id)collection
{
  collectionCopy = collection;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  v5 = *MEMORY[0x277D76860];

  if (preferredContentSizeCategory == v5)
  {
    system = [MEMORY[0x277D75380] system];
    preferredContentSizeCategory2 = [system preferredContentSizeCategory];
  }

  else
  {
    preferredContentSizeCategory2 = [collectionCopy preferredContentSizeCategory];
  }

  v8 = 1.0;
  if (!UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2) && (_UISolariumEnabled() & 1) == 0)
  {
    [collectionCopy displayScale];
    v10 = v9 <= 0.0;
    v11 = 1.0;
    if (!v10)
    {
      [collectionCopy displayScale];
    }

    v8 = 1.0 / v11;
  }

  return v8;
}

@end