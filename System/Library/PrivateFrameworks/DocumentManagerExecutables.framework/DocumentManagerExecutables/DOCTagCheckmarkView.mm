@interface DOCTagCheckmarkView
+ (id)checkmarkImage;
- (DOCTagCheckmarkView)initWithFrame:(CGRect)a3;
- (void)_updateTintColor;
- (void)setChecked:(BOOL)a3;
- (void)setItemTag:(id)a3;
- (void)updateForChangedTraitsAffectingFonts;
@end

@implementation DOCTagCheckmarkView

+ (id)checkmarkImage
{
  if (checkmarkImage_onceToken != -1)
  {
    +[DOCTagCheckmarkView checkmarkImage];
  }

  v3 = checkmarkImage_checkmarkImage;

  return v3;
}

void __37__DOCTagCheckmarkView_checkmarkImage__block_invoke()
{
  v0 = +[DOCTagAppearance pickerList];
  v3 = [v0 checkmarkImageConfiguration];

  v1 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v3];
  v2 = checkmarkImage_checkmarkImage;
  checkmarkImage_checkmarkImage = v1;
}

- (DOCTagCheckmarkView)initWithFrame:(CGRect)a3
{
  v33.receiver = self;
  v33.super_class = DOCTagCheckmarkView;
  v3 = [(DOCTagCheckmarkView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCTagCheckmarkView *)v3 setContentMode:1];
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v6 = [objc_opt_class() checkmarkImage];
    v7 = [v5 initWithImage:v6];
    imageView = v4->_imageView;
    v4->_imageView = v7;

    v9 = v4->_imageView;
    v10 = [MEMORY[0x277CE15C8] effect];
    v11 = [MEMORY[0x277CE15D8] options];
    [(UIImageView *)v9 addSymbolEffect:v10 options:v11 animated:0];

    [(DOCTagCheckmarkView *)v4 _updateTintColor];
    [(DOCTagCheckmarkView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(DOCTagCheckmarkView *)v4 image];
    [v12 size];
    v14 = v13;

    v15 = 1.0;
    if (v14 > 0.0)
    {
      v16 = [(DOCTagCheckmarkView *)v4 image];
      [v16 size];
      v18 = v17;
      v19 = [(DOCTagCheckmarkView *)v4 image];
      [v19 size];
      v15 = v18 / v20;
    }

    v21 = [(DOCTagCheckmarkView *)v4 widthAnchor];
    v22 = [(DOCTagCheckmarkView *)v4 heightAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 multiplier:v15];
    [v23 setActive:1];

    v24 = [(DOCTagCheckmarkView *)v4 heightAnchor];
    v25 = [v24 constraintEqualToConstant:0.0];
    heightConstraint = v4->_heightConstraint;
    v4->_heightConstraint = v25;

    LODWORD(v27) = 1144750080;
    [(NSLayoutConstraint *)v4->_heightConstraint setPriority:v27];
    [(DOCTagCheckmarkView *)v4 updateForChangedTraitsAffectingFonts];
    [(NSLayoutConstraint *)v4->_heightConstraint setActive:1];
    [(DOCTagCheckmarkView *)v4 addSubview:v4->_imageView];
    v28 = MEMORY[0x277CCAAD0];
    v29 = DOCConstraintsToResizeWithSuperview();
    [v28 activateConstraints:v29];

    v30 = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
    v31 = [(DOCTagCheckmarkView *)v4 registerForTraitChanges:v30 withAction:sel_updateForChangedTraitsAffectingFonts];
  }

  return v4;
}

- (void)updateForChangedTraitsAffectingFonts
{
  v3 = [(DOCTagCheckmarkView *)self image];
  [v3 alignmentRectInsets];
  v5 = v4;
  v6 = [(DOCTagCheckmarkView *)self image];
  [v6 alignmentRectInsets];
  v8 = v5 + v7;

  v9 = [(DOCTagCheckmarkView *)self image];
  [v9 size];
  v11 = v10 - v8;

  v12 = [MEMORY[0x277D75520] defaultMetrics];
  v13 = [(DOCTagCheckmarkView *)self traitCollection];
  [v12 scaledValueForValue:v13 compatibleWithTraitCollection:v11];
  v15 = v14;

  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:v15];
}

- (void)setItemTag:(id)a3
{
  v5 = a3;
  if (([(DOCTag *)self->_itemTag isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_itemTag, a3);
    [(DOCTagCheckmarkView *)self _updateTintColor];
  }
}

- (void)_updateTintColor
{
  v4 = +[DOCTagAppearance pickerList];
  v3 = [v4 checkmarkImageColorForTag:self->_itemTag];
  [(UIImageView *)self->_imageView setTintColor:v3];
}

- (void)setChecked:(BOOL)a3
{
  checked = self->_checked;
  if (checked != a3)
  {
    if ((a3 & ~checked) != 0)
    {
      v6 = 0x277CE15D0;
    }

    else
    {
      v6 = 0x277CE15C8;
    }

    v9 = [*v6 effect];
    imageView = self->_imageView;
    v8 = [MEMORY[0x277CE15D8] options];
    [(UIImageView *)imageView addSymbolEffect:v9 options:v8 animated:_UISolariumEnabled()];

    self->_checked = a3;
  }
}

@end