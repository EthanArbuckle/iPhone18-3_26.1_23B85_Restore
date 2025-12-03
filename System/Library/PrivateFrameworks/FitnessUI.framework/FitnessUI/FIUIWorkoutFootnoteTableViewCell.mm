@interface FIUIWorkoutFootnoteTableViewCell
- (FIUIWorkoutFootnoteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setFootnoteText:(id)text;
- (void)setTitleText:(id)text;
@end

@implementation FIUIWorkoutFootnoteTableViewCell

- (FIUIWorkoutFootnoteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v22.receiver = self;
  v22.super_class = FIUIWorkoutFootnoteTableViewCell;
  v4 = [(FIUIWorkoutFootnoteTableViewCell *)&v22 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(FIUIWorkoutFootnoteTableViewCell *)v4 setBackgroundColor:blackColor];

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UILabel *)v4->_titleLabel setTextColor:systemGrayColor];

    v9 = *MEMORY[0x1E69DDD28];
    v10 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v4->_titleLabel setFont:v10];

    contentView = [(FIUIWorkoutFootnoteTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    footnoteLabel = v4->_footnoteLabel;
    v4->_footnoteLabel = v12;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_footnoteLabel setTextColor:whiteColor];

    v15 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:v9];
    [(UILabel *)v4->_footnoteLabel setFont:v15];

    contentView2 = [(FIUIWorkoutFootnoteTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_footnoteLabel];

    v17 = [FIUIDividerView alloc];
    v18 = [(FIUIDividerView *)v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    dividerView = v4->_dividerView;
    v4->_dividerView = v18;

    contentView3 = [(FIUIWorkoutFootnoteTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_dividerView];
  }

  return v4;
}

- (void)setTitleText:(id)text
{
  v4 = [text copy];
  titleText = self->_titleText;
  self->_titleText = v4;

  [(UILabel *)self->_titleLabel setText:self->_titleText];
  [(UILabel *)self->_titleLabel sizeToFit];

  [(FIUIWorkoutFootnoteTableViewCell *)self setNeedsLayout];
}

- (void)setFootnoteText:(id)text
{
  v4 = [text copy];
  footnoteText = self->_footnoteText;
  self->_footnoteText = v4;

  [(UILabel *)self->_footnoteLabel setText:self->_footnoteText];
  [(UILabel *)self->_footnoteLabel sizeToFit];

  [(FIUIWorkoutFootnoteTableViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = FIUIWorkoutFootnoteTableViewCell;
  [(FIUIWorkoutFootnoteTableViewCell *)&v15 layoutSubviews];
  contentView = [(FIUIWorkoutFootnoteTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_titleLabel _setFirstLineBaselineFrameOriginY:18.0];
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel setFrame:5.5];
  [(UILabel *)self->_titleLabel _firstLineBaselineFrameOriginY];
  [(UILabel *)self->_footnoteLabel _setFirstLineBaselineFrameOriginY:v12 + 17.0];
  [(UILabel *)self->_footnoteLabel frame];
  [(UILabel *)self->_footnoteLabel setFrame:5.5];
  [(UIView *)self->_dividerView sizeThatFits:v9 + 5.5 * -2.0, 1.79769313e308];
  v14 = v13;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  [(UIView *)self->_dividerView setFrame:5.5, CGRectGetMaxY(v16) - v14, v9 + 5.5 * -2.0, v14];
}

@end