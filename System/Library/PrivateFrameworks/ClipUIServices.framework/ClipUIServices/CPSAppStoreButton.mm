@interface CPSAppStoreButton
- (CGSize)intrinsicContentSize;
- (CPSAppStoreButton)initWithCoder:(id)coder;
- (CPSAppStoreButton)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setShowsArcadeAttribution:(BOOL)attribution;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSAppStoreButton

- (CPSAppStoreButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CPSAppStoreButton;
  v3 = [(CPSButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPSAppStoreButton *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (CPSAppStoreButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CPSAppStoreButton;
  v3 = [(CPSButton *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CPSAppStoreButton *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (void)_commonInit
{
  v59[3] = *MEMORY[0x277D85DE8];
  v3 = *(MEMORY[0x277CBF398] + 16);
  self->_lastLayoutBounds.origin = *MEMORY[0x277CBF398];
  self->_lastLayoutBounds.size = v3;
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  label = self->_label;
  self->_label = v4;

  [(UILabel *)self->_label setAdjustsFontForContentSizeCategory:1];
  v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:256];
  [(UILabel *)self->_label setFont:v6];

  v7 = _CPSLocalizedString();
  [(UILabel *)self->_label setText:v7];

  LODWORD(v8) = 1144733696;
  [(UILabel *)self->_label setContentCompressionResistancePriority:0 forAxis:v8];
  v9 = makeAppStoreImageView();
  fullSizeStackAppStoreImageView = self->_fullSizeStackAppStoreImageView;
  self->_fullSizeStackAppStoreImageView = v9;

  v11 = objc_alloc(MEMORY[0x277D75A68]);
  v59[0] = self->_fullSizeStackAppStoreImageView;
  v12 = makeVibrant(self->_label, 1);
  v59[1] = v12;
  v13 = makeChevronImageView();
  v59[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
  v15 = [v11 initWithArrangedSubviews:v14];
  fullSizeStack = self->_fullSizeStack;
  self->_fullSizeStack = v15;

  [(UIStackView *)self->_fullSizeStack setSpacing:3.0];
  [(UIStackView *)self->_fullSizeStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSAppStoreButton *)self addSubview:self->_fullSizeStack];
  v17 = makeAppStoreImageView();
  glyphOnlyStackAppStoreImageView = self->_glyphOnlyStackAppStoreImageView;
  self->_glyphOnlyStackAppStoreImageView = v17;

  v19 = objc_alloc(MEMORY[0x277D75A68]);
  v58[0] = self->_glyphOnlyStackAppStoreImageView;
  v20 = makeChevronImageView();
  v58[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v22 = [v19 initWithArrangedSubviews:v21];
  glyphOnlyStack = self->_glyphOnlyStack;
  self->_glyphOnlyStack = v22;

  [(UIStackView *)self->_glyphOnlyStack setSpacing:3.0];
  [(UIStackView *)self->_glyphOnlyStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSAppStoreButton *)self addSubview:self->_glyphOnlyStack];
  v44 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIStackView *)self->_fullSizeStack centerXAnchor];
  centerXAnchor2 = [(CPSAppStoreButton *)self centerXAnchor];
  v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v57[0] = v54;
  centerYAnchor = [(UIStackView *)self->_fullSizeStack centerYAnchor];
  centerYAnchor2 = [(CPSAppStoreButton *)self centerYAnchor];
  v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v57[1] = v51;
  widthAnchor = [(UIStackView *)self->_fullSizeStack widthAnchor];
  widthAnchor2 = [(CPSAppStoreButton *)self widthAnchor];
  v48 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  v57[2] = v48;
  heightAnchor = [(UIStackView *)self->_fullSizeStack heightAnchor];
  heightAnchor2 = [(CPSAppStoreButton *)self heightAnchor];
  v45 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
  v57[3] = v45;
  heightAnchor3 = [(UIStackView *)self->_fullSizeStack heightAnchor];
  heightAnchor4 = [(CPSAppStoreButton *)self heightAnchor];
  v41 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  LODWORD(v24) = 1144750080;
  v40 = [v41 cps_setPriority:v24];
  v57[4] = v40;
  centerYAnchor3 = [(UIStackView *)self->_glyphOnlyStack centerYAnchor];
  centerYAnchor4 = [(CPSAppStoreButton *)self centerYAnchor];
  v37 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v57[5] = v37;
  heightAnchor5 = [(UIStackView *)self->_glyphOnlyStack heightAnchor];
  heightAnchor6 = [(CPSAppStoreButton *)self heightAnchor];
  v26 = [heightAnchor5 constraintLessThanOrEqualToAnchor:heightAnchor6];
  v57[6] = v26;
  heightAnchor7 = [(UIStackView *)self->_glyphOnlyStack heightAnchor];
  heightAnchor8 = [(CPSAppStoreButton *)self heightAnchor];
  v29 = [heightAnchor7 constraintEqualToAnchor:heightAnchor8];
  LODWORD(v30) = 1144750080;
  v31 = [v29 cps_setPriority:v30];
  v57[7] = v31;
  trailingAnchor = [(UIStackView *)self->_glyphOnlyStack trailingAnchor];
  trailingAnchor2 = [(CPSAppStoreButton *)self trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v57[8] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:9];
  [v44 activateConstraints:v35];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = CPSAppStoreButton;
  [(CPSAppStoreButton *)&v10 layoutSubviews];
  [(CPSAppStoreButton *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (!CGRectEqualToRect(v11, self->_lastLayoutBounds))
  {
    self->_lastLayoutBounds.origin.x = x;
    self->_lastLayoutBounds.origin.y = y;
    self->_lastLayoutBounds.size.width = width;
    self->_lastLayoutBounds.size.height = height;
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v7 = CGRectGetWidth(v12);
    [(UIStackView *)self->_fullSizeStack systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
    v9 = v7 >= v8;
    [(UIStackView *)self->_fullSizeStack setHidden:v7 < v8];
    [(UIStackView *)self->_glyphOnlyStack setHidden:v9];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = CPSAppStoreButton;
  changeCopy = change;
  [(CPSAppStoreButton *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(CPSAppStoreButton *)self traitCollection:v10.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    v9 = *(MEMORY[0x277CBF398] + 16);
    self->_lastLayoutBounds.origin = *MEMORY[0x277CBF398];
    self->_lastLayoutBounds.size = v9;
    [(CPSAppStoreButton *)self setNeedsLayout];
    [(CPSAppStoreButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = CPSAppStoreButton;
  [(CPSButton *)&v4 setHighlighted:highlighted];
  [(UIStackView *)self->_fullSizeStack cps_configureForAnimatesAlphaWhenHighlighted:[(CPSAppStoreButton *)self isHighlighted]];
  [(UIStackView *)self->_glyphOnlyStack cps_configureForAnimatesAlphaWhenHighlighted:[(CPSAppStoreButton *)self isHighlighted]];
}

- (void)setShowsArcadeAttribution:(BOOL)attribution
{
  if (self->_showsArcadeAttribution != attribution)
  {
    attributionCopy = attribution;
    self->_showsArcadeAttribution = attribution;
    v6 = _CPSLocalizedString();
    [(UILabel *)self->_label setText:v6];

    [(UIView *)self->_fullSizeStackAppStoreImageView setHidden:attributionCopy];
    glyphOnlyStackAppStoreImageView = self->_glyphOnlyStackAppStoreImageView;

    [(UIView *)glyphOnlyStackAppStoreImageView setHidden:attributionCopy];
  }
}

- (void)invalidateIntrinsicContentSize
{
  self->_intrinsicContentSizeIsValid = 0;
  v2.receiver = self;
  v2.super_class = CPSAppStoreButton;
  [(CPSAppStoreButton *)&v2 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  p_intrinsicContentSize = &self->_intrinsicContentSize;
  if (self->_intrinsicContentSizeIsValid)
  {
    width = p_intrinsicContentSize->width;
    height = self->_intrinsicContentSize.height;
  }

  else
  {
    [(UIStackView *)self->_glyphOnlyStack systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
    p_intrinsicContentSize->width = width;
    p_intrinsicContentSize->height = height;
    self->_intrinsicContentSizeIsValid = 1;
  }

  result.height = height;
  result.width = width;
  return result;
}

@end