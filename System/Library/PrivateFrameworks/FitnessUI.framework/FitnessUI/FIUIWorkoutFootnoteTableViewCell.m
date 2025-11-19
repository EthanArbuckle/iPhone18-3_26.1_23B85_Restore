@interface FIUIWorkoutFootnoteTableViewCell
- (FIUIWorkoutFootnoteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setFootnoteText:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation FIUIWorkoutFootnoteTableViewCell

- (FIUIWorkoutFootnoteTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v22.receiver = self;
  v22.super_class = FIUIWorkoutFootnoteTableViewCell;
  v4 = [(FIUIWorkoutFootnoteTableViewCell *)&v22 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] blackColor];
    [(FIUIWorkoutFootnoteTableViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    v8 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UILabel *)v4->_titleLabel setTextColor:v8];

    v9 = *MEMORY[0x1E69DDD28];
    v10 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v4->_titleLabel setFont:v10];

    v11 = [(FIUIWorkoutFootnoteTableViewCell *)v4 contentView];
    [v11 addSubview:v4->_titleLabel];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    footnoteLabel = v4->_footnoteLabel;
    v4->_footnoteLabel = v12;

    v14 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_footnoteLabel setTextColor:v14];

    v15 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:v9];
    [(UILabel *)v4->_footnoteLabel setFont:v15];

    v16 = [(FIUIWorkoutFootnoteTableViewCell *)v4 contentView];
    [v16 addSubview:v4->_footnoteLabel];

    v17 = [FIUIDividerView alloc];
    v18 = [(FIUIDividerView *)v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    dividerView = v4->_dividerView;
    v4->_dividerView = v18;

    v20 = [(FIUIWorkoutFootnoteTableViewCell *)v4 contentView];
    [v20 addSubview:v4->_dividerView];
  }

  return v4;
}

- (void)setTitleText:(id)a3
{
  v4 = [a3 copy];
  titleText = self->_titleText;
  self->_titleText = v4;

  [(UILabel *)self->_titleLabel setText:self->_titleText];
  [(UILabel *)self->_titleLabel sizeToFit];

  [(FIUIWorkoutFootnoteTableViewCell *)self setNeedsLayout];
}

- (void)setFootnoteText:(id)a3
{
  v4 = [a3 copy];
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
  v3 = [(FIUIWorkoutFootnoteTableViewCell *)self contentView];
  [v3 bounds];
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