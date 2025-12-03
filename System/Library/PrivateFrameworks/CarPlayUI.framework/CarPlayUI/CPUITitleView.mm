@interface CPUITitleView
- (CGSize)intrinsicContentSize;
- (CPUITitleView)initWithFrame:(CGRect)frame;
- (id)_createLabelWithTextAlignment:(int64_t)alignment;
- (void)_updateExplicitTreatmentString;
- (void)setExplicitTrack:(BOOL)track;
- (void)setFont:(id)font;
- (void)setShouldUseMusicExplicitGlyph:(BOOL)glyph;
- (void)setupConstraints;
- (void)updateConstraints;
@end

@implementation CPUITitleView

- (CPUITitleView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CPUITitleView;
  v3 = [(CPUITitleView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPUITitleView *)v3 setBackgroundColor:clearColor];

    v5 = [(CPUITitleView *)v3 _createLabelWithTextAlignment:1];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(CPUITitleView *)v3 addSubview:v3->_titleLabel];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v8 = -[CPUITitleView _createLabelWithTextAlignment:](v3, "_createLabelWithTextAlignment:", 2 * ([mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0));
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
  widthAnchor = [(UILabel *)self->_explicitLabel widthAnchor];
  v4 = [widthAnchor constraintEqualToConstant:0.0];
  badgeWidthConstraint = self->_badgeWidthConstraint;
  self->_badgeWidthConstraint = v4;

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [(CPUITitleView *)self addLayoutGuide:v6];
  [(CPUITitleView *)self addLayoutGuide:v7];
  v28 = MEMORY[0x277CCAAD0];
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(CPUITitleView *)self topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v38[0] = v35;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  leadingAnchor = [(UILabel *)self->_explicitLabel leadingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:0.0];
  v38[1] = v32;
  firstBaselineAnchor = [(UILabel *)self->_explicitLabel firstBaselineAnchor];
  firstBaselineAnchor2 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v29 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:0.0];
  v8 = self->_badgeWidthConstraint;
  v38[2] = v29;
  v38[3] = v8;
  leadingAnchor2 = [v6 leadingAnchor];
  leadingAnchor3 = [(CPUITitleView *)self leadingAnchor];
  v24 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:0.0];
  v38[4] = v24;
  trailingAnchor2 = [v7 trailingAnchor];
  trailingAnchor3 = [(CPUITitleView *)self trailingAnchor];
  v20 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:0.0];
  v38[5] = v20;
  v9 = v6;
  v25 = v6;
  widthAnchor2 = [v6 widthAnchor];
  v22 = v7;
  widthAnchor3 = [v7 widthAnchor];
  v12 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 constant:0.0];
  v38[6] = v12;
  leadingAnchor4 = [(UILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor4 = [v9 trailingAnchor];
  v15 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
  v38[7] = v15;
  trailingAnchor5 = [(UILabel *)self->_explicitLabel trailingAnchor];
  leadingAnchor5 = [v7 leadingAnchor];
  v18 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor5 constant:0.0];
  v38[8] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:9];
  [v28 activateConstraints:v19];
}

- (void)setExplicitTrack:(BOOL)track
{
  if (self->_explicitTrack != track)
  {
    self->_explicitTrack = track;
    [(CPUITitleView *)self setNeedsUpdateConstraints];
  }
}

- (void)setShouldUseMusicExplicitGlyph:(BOOL)glyph
{
  if (self->_shouldUseMusicExplicitGlyph != glyph)
  {
    self->_shouldUseMusicExplicitGlyph = glyph;
    if (glyph)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateExplicitTreatmentString name:*MEMORY[0x277D7F8D0] object:0];
    }

    [(CPUITitleView *)self _updateExplicitTreatmentString];
  }
}

- (void)setFont:(id)font
{
  objc_storeStrong(&self->_font, font);
  fontCopy = font;
  [(UILabel *)self->_titleLabel setFont:fontCopy];
  [(UILabel *)self->_explicitLabel setFont:fontCopy];

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
  titleLabel = [(CPUITitleView *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_createLabelWithTextAlignment:(int64_t)alignment
{
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v5 setTextColor:labelColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:clearColor];

  [v5 setTextAlignment:alignment];

  return v5;
}

- (void)_updateExplicitTreatmentString
{
  explicitLabel = [(CPUITitleView *)self explicitLabel];
  v2 = CPUILocalizedExplicitLabelString();
  [explicitLabel setText:v2];
}

@end