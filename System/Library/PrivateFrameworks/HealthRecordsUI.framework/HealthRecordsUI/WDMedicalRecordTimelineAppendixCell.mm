@interface WDMedicalRecordTimelineAppendixCell
- (void)setTitle:(id)title;
- (void)setupSubviews;
- (void)tintColorDidChange;
@end

@implementation WDMedicalRecordTimelineAppendixCell

- (void)setupSubviews
{
  v46.receiver = self;
  v46.super_class = WDMedicalRecordTimelineAppendixCell;
  [(WDMedicalRecordGroupableCell *)&v46 setupSubviews];
  makeChevron = [MEMORY[0x1E69DD250] makeChevron];
  [(WDMedicalRecordTimelineAppendixCell *)self setChevronView:makeChevron];

  contentView = [(WDMedicalRecordTimelineAppendixCell *)self contentView];
  chevronView = [(WDMedicalRecordTimelineAppendixCell *)self chevronView];
  [contentView addSubview:chevronView];

  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordTimelineAppendixCell *)self setTitleLabel:v6];

  titleLabel = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  [titleLabel setNumberOfLines:2];

  _titleLabelFont = [(WDMedicalRecordTimelineAppendixCell *)self _titleLabelFont];
  titleLabel2 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  [titleLabel2 setFont:_titleLabelFont];

  tintColor = [(WDMedicalRecordTimelineAppendixCell *)self tintColor];
  titleLabel3 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  [titleLabel3 setTextColor:tintColor];

  titleLabel4 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  [titleLabel5 setTextAlignment:4];

  contentView2 = [(WDMedicalRecordTimelineAppendixCell *)self contentView];
  titleLabel6 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  [contentView2 addSubview:titleLabel6];

  chevronView2 = [(WDMedicalRecordTimelineAppendixCell *)self chevronView];
  trailingAnchor = [chevronView2 trailingAnchor];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v20 setActive:1];

  chevronView3 = [(WDMedicalRecordTimelineAppendixCell *)self chevronView];
  centerYAnchor = [chevronView3 centerYAnchor];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  centerYAnchor2 = [pillBackgroundView2 centerYAnchor];
  v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v25 setActive:1];

  titleLabel7 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  leadingAnchor = [titleLabel7 leadingAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView3 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v30 setActive:1];

  titleLabel8 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  trailingAnchor3 = [titleLabel8 trailingAnchor];
  chevronView4 = [(WDMedicalRecordTimelineAppendixCell *)self chevronView];
  leadingAnchor3 = [chevronView4 leadingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-16.0];
  [v35 setActive:1];

  titleLabel9 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  topAnchor = [titleLabel9 topAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor2 = [pillBackgroundView4 topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [v40 setActive:1];

  titleLabel10 = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  bottomAnchor = [titleLabel10 bottomAnchor];
  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor2 = [pillBackgroundView5 bottomAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  [v45 setActive:1];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  titleLabel = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = WDMedicalRecordTimelineAppendixCell;
  [(WDMedicalRecordTimelineAppendixCell *)&v5 tintColorDidChange];
  tintColor = [(WDMedicalRecordTimelineAppendixCell *)self tintColor];
  titleLabel = [(WDMedicalRecordTimelineAppendixCell *)self titleLabel];
  [titleLabel setTextColor:tintColor];
}

@end