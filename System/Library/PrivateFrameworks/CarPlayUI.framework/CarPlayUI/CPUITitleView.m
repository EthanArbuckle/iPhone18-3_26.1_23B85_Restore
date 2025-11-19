@interface CPUITitleView
- (CGSize)intrinsicContentSize;
- (CPUITitleView)initWithFrame:(CGRect)a3;
- (id)_createLabelWithTextAlignment:(int64_t)a3;
- (void)_updateExplicitTreatmentString;
- (void)setExplicitTrack:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setShouldUseMusicExplicitGlyph:(BOOL)a3;
- (void)setupConstraints;
- (void)updateConstraints;
@end

@implementation CPUITitleView

- (CPUITitleView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CPUITitleView;
  v3 = [(CPUITitleView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(CPUITitleView *)v3 setBackgroundColor:v4];

    v5 = [(CPUITitleView *)v3 _createLabelWithTextAlignment:1];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(CPUITitleView *)v3 addSubview:v3->_titleLabel];
    v7 = [MEMORY[0x277D75128] sharedApplication];
    v8 = -[CPUITitleView _createLabelWithTextAlignment:](v3, "_createLabelWithTextAlignment:", 2 * ([v7 userInterfaceLayoutDirection] == 0));
    explicitLabel = v3->_explicitLabel;
    v3->_explicitLabel = v8;

    [(UILabel *)v3->_explicitLabel setAccessibilityIdentifier:@"ExplicitContentIndicator"];
    v10 = v3->_explicitLabel;
    v11 = CPUILocalizedExplicitLabelString();
    [(UILabel *)v10 setText:v11];

    [(CPUITitleView *)v3 addSubview:v3->_explicitLabel];
    [(CPUITitleView *)v3 setupConstraints];
  }

  return v3;
}

- (void)setupConstraints
{
  v38[9] = *MEMORY[0x277D85DE8];
  v3 = [(UILabel *)self->_explicitLabel widthAnchor];
  v4 = [v3 constraintEqualToConstant:0.0];
  badgeWidthConstraint = self->_badgeWidthConstraint;
  self->_badgeWidthConstraint = v4;

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [(CPUITitleView *)self addLayoutGuide:v6];
  [(CPUITitleView *)self addLayoutGuide:v7];
  v28 = MEMORY[0x277CCAAD0];
  v37 = [(UILabel *)self->_titleLabel topAnchor];
  v36 = [(CPUITitleView *)self topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:0.0];
  v38[0] = v35;
  v34 = [(UILabel *)self->_titleLabel trailingAnchor];
  v33 = [(UILabel *)self->_explicitLabel leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:0.0];
  v38[1] = v32;
  v31 = [(UILabel *)self->_explicitLabel firstBaselineAnchor];
  v30 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:0.0];
  v8 = self->_badgeWidthConstraint;
  v38[2] = v29;
  v38[3] = v8;
  v27 = [v6 leadingAnchor];
  v26 = [(CPUITitleView *)self leadingAnchor];
  v24 = [v27 constraintEqualToAnchor:v26 constant:0.0];
  v38[4] = v24;
  v23 = [v7 trailingAnchor];
  v21 = [(CPUITitleView *)self trailingAnchor];
  v20 = [v23 constraintEqualToAnchor:v21 constant:0.0];
  v38[5] = v20;
  v9 = v6;
  v25 = v6;
  v10 = [v6 widthAnchor];
  v22 = v7;
  v11 = [v7 widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
  v38[6] = v12;
  v13 = [(UILabel *)self->_titleLabel leadingAnchor];
  v14 = [v9 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];
  v38[7] = v15;
  v16 = [(UILabel *)self->_explicitLabel trailingAnchor];
  v17 = [v7 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];
  v38[8] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:9];
  [v28 activateConstraints:v19];
}

- (void)setExplicitTrack:(BOOL)a3
{
  if (self->_explicitTrack != a3)
  {
    self->_explicitTrack = a3;
    [(CPUITitleView *)self setNeedsUpdateConstraints];
  }
}

- (void)setShouldUseMusicExplicitGlyph:(BOOL)a3
{
  if (self->_shouldUseMusicExplicitGlyph != a3)
  {
    self->_shouldUseMusicExplicitGlyph = a3;
    if (a3)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 addObserver:self selector:sel__updateExplicitTreatmentString name:*MEMORY[0x277D7F8D0] object:0];
    }

    [(CPUITitleView *)self _updateExplicitTreatmentString];
  }
}

- (void)setFont:(id)a3
{
  objc_storeStrong(&self->_font, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setFont:v5];
  [(UILabel *)self->_explicitLabel setFont:v5];

  [(CPUITitleView *)self invalidateIntrinsicContentSize];

  [(CPUITitleView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v8.receiver = self;
  v8.super_class = CPUITitleView;
  [(CPUITitleView *)&v8 updateConstraints];
  explicitLabel = self->_explicitLabel;
  [(CPUITitleView *)self frame];
  [(UILabel *)explicitLabel sizeThatFits:v4, v5];
  v7 = v6 + 8.0;
  if (!self->_explicitTrack)
  {
    v7 = 0.0;
  }

  [(NSLayoutConstraint *)self->_badgeWidthConstraint setConstant:v7];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CPUITitleView *)self titleLabel];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_createLabelWithTextAlignment:(int64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x277D75348] labelColor];
  [v5 setTextColor:v6];

  v7 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v7];

  [v5 setTextAlignment:a3];

  return v5;
}

- (void)_updateExplicitTreatmentString
{
  v3 = [(CPUITitleView *)self explicitLabel];
  v2 = CPUILocalizedExplicitLabelString();
  [v3 setText:v2];
}

@end