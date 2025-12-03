@interface _HKMedicalIDMultilineStringCell
- (_HKMedicalIDMultilineStringCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)description;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_updateTextColor;
- (void)dealloc;
- (void)setUpConstraints;
- (void)setupSubviews;
- (void)tintColorDidChange;
@end

@implementation _HKMedicalIDMultilineStringCell

- (_HKMedicalIDMultilineStringCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = _HKMedicalIDMultilineStringCell;
  v4 = [(_HKMedicalIDMultilineStringCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(_HKMedicalIDMultilineStringCell *)v4 setupSubviews];
    [(_HKMedicalIDMultilineStringCell *)v5 setUpConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = _HKMedicalIDMultilineStringCell;
  [(_HKMedicalIDMultilineStringCell *)&v4 dealloc];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(_HKMedicalIDMultilineStringCell *)self setTitleLabel:v3];

  titleLabel = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  titleLabel2 = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(_HKMedicalIDMultilineStringCell *)self _updateTextColor];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(_HKMedicalIDMultilineStringCell *)self setDetailLabel:v6];

  detailLabel = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  [detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailLabel2 = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  [detailLabel2 setNumberOfLines:0];

  contentView = [(_HKMedicalIDMultilineStringCell *)self contentView];
  titleLabel3 = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  [contentView addSubview:titleLabel3];

  contentView2 = [(_HKMedicalIDMultilineStringCell *)self contentView];
  detailLabel3 = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  [contentView2 addSubview:detailLabel3];

  [(_HKMedicalIDMultilineStringCell *)self _contentSizeCategoryDidChange:0];
}

- (void)setUpConstraints
{
  titleLabel = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  contentView = [(_HKMedicalIDMultilineStringCell *)self contentView];
  topAnchor = [contentView topAnchor];
  titleLabel2 = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  font = [titleLabel2 font];
  [font _scaledValueForValue:25.0];
  v9 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v9 setActive:1];

  titleLabel3 = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  leadingAnchor = [titleLabel3 leadingAnchor];
  contentView2 = [(_HKMedicalIDMultilineStringCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v14 setActive:1];

  contentView3 = [(_HKMedicalIDMultilineStringCell *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  titleLabel4 = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  trailingAnchor2 = [titleLabel4 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  [v19 setActive:1];

  detailLabel = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  firstBaselineAnchor2 = [detailLabel firstBaselineAnchor];
  titleLabel5 = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
  titleLabel6 = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  font2 = [titleLabel6 font];
  [font2 _scaledValueForValue:24.0];
  v26 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v26 setActive:1];

  detailLabel2 = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  leadingAnchor3 = [detailLabel2 leadingAnchor];
  contentView4 = [(_HKMedicalIDMultilineStringCell *)self contentView];
  leadingAnchor4 = [contentView4 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v31 setActive:1];

  contentView5 = [(_HKMedicalIDMultilineStringCell *)self contentView];
  trailingAnchor3 = [contentView5 trailingAnchor];
  detailLabel3 = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  trailingAnchor4 = [detailLabel3 trailingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
  [v36 setActive:1];

  contentView6 = [(_HKMedicalIDMultilineStringCell *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  detailLabel4 = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  lastBaselineAnchor2 = [detailLabel4 lastBaselineAnchor];
  detailLabel5 = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  font3 = [detailLabel5 font];
  [font3 _scaledValueForValue:15.0];
  v42 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [v42 setActive:1];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  titleLabel = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  [titleLabel setFont:v4];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  detailLabel = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  [detailLabel setFont:v7];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  titleLabel = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  text = [titleLabel text];
  detailLabel = [(_HKMedicalIDMultilineStringCell *)self detailLabel];
  text2 = [detailLabel text];
  v10 = [v3 stringWithFormat:@"<%@:%p titleLabel.text: %@ detailLabel.text: %@>", v5, self, text, text2];

  return v10;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _HKMedicalIDMultilineStringCell;
  [(_HKMedicalIDMultilineStringCell *)&v3 tintColorDidChange];
  [(_HKMedicalIDMultilineStringCell *)self _updateTextColor];
}

- (void)_updateTextColor
{
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  titleLabel = [(_HKMedicalIDMultilineStringCell *)self titleLabel];
  [titleLabel setTextColor:secondaryLabelColor];
}

@end