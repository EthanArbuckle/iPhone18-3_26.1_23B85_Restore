@interface DOCTagCheckmarkView
+ (id)checkmarkImage;
- (DOCTagCheckmarkView)initWithFrame:(CGRect)frame;
- (void)_updateTintColor;
- (void)setChecked:(BOOL)checked;
- (void)setItemTag:(id)tag;
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

- (DOCTagCheckmarkView)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = DOCTagCheckmarkView;
  v3 = [(DOCTagCheckmarkView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCTagCheckmarkView *)v3 setContentMode:1];
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    checkmarkImage = [objc_opt_class() checkmarkImage];
    v7 = [v5 initWithImage:checkmarkImage];
    imageView = v4->_imageView;
    v4->_imageView = v7;

    v9 = v4->_imageView;
    effect = [MEMORY[0x277CE15C8] effect];
    options = [MEMORY[0x277CE15D8] options];
    [(UIImageView *)v9 addSymbolEffect:effect options:options animated:0];

    [(DOCTagCheckmarkView *)v4 _updateTintColor];
    [(DOCTagCheckmarkView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    image = [(DOCTagCheckmarkView *)v4 image];
    [image size];
    v14 = v13;

    v15 = 1.0;
    if (v14 > 0.0)
    {
      image2 = [(DOCTagCheckmarkView *)v4 image];
      [image2 size];
      v18 = v17;
      image3 = [(DOCTagCheckmarkView *)v4 image];
      [image3 size];
      v15 = v18 / v20;
    }

    widthAnchor = [(DOCTagCheckmarkView *)v4 widthAnchor];
    heightAnchor = [(DOCTagCheckmarkView *)v4 heightAnchor];
    v23 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v15];
    [v23 setActive:1];

    heightAnchor2 = [(DOCTagCheckmarkView *)v4 heightAnchor];
    v25 = [heightAnchor2 constraintEqualToConstant:0.0];
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

    doc_traitsAffectingFonts = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
    v31 = [(DOCTagCheckmarkView *)v4 registerForTraitChanges:doc_traitsAffectingFonts withAction:sel_updateForChangedTraitsAffectingFonts];
  }

  return v4;
}

- (void)updateForChangedTraitsAffectingFonts
{
  image = [(DOCTagCheckmarkView *)self image];
  [image alignmentRectInsets];
  v5 = v4;
  image2 = [(DOCTagCheckmarkView *)self image];
  [image2 alignmentRectInsets];
  v8 = v5 + v7;

  image3 = [(DOCTagCheckmarkView *)self image];
  [image3 size];
  v11 = v10 - v8;

  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  traitCollection = [(DOCTagCheckmarkView *)self traitCollection];
  [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:v11];
  v15 = v14;

  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:v15];
}

- (void)setItemTag:(id)tag
{
  tagCopy = tag;
  if (([(DOCTag *)self->_itemTag isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_itemTag, tag);
    [(DOCTagCheckmarkView *)self _updateTintColor];
  }
}

- (void)_updateTintColor
{
  v4 = +[DOCTagAppearance pickerList];
  v3 = [v4 checkmarkImageColorForTag:self->_itemTag];
  [(UIImageView *)self->_imageView setTintColor:v3];
}

- (void)setChecked:(BOOL)checked
{
  checked = self->_checked;
  if (checked != checked)
  {
    if ((checked & ~checked) != 0)
    {
      v6 = 0x277CE15D0;
    }

    else
    {
      v6 = 0x277CE15C8;
    }

    effect = [*v6 effect];
    imageView = self->_imageView;
    options = [MEMORY[0x277CE15D8] options];
    [(UIImageView *)imageView addSymbolEffect:effect options:options animated:_UISolariumEnabled()];

    self->_checked = checked;
  }
}

@end