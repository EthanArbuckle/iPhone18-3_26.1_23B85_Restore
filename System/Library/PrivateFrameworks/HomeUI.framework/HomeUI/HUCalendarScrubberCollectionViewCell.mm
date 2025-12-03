@interface HUCalendarScrubberCollectionViewCell
- (HUCalendarScrubberCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setDateString:(id)string;
- (void)setDayOfWeekString:(id)string;
- (void)setEnabled:(BOOL)enabled;
- (void)setSelected:(BOOL)selected;
@end

@implementation HUCalendarScrubberCollectionViewCell

- (HUCalendarScrubberCollectionViewCell)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = HUCalendarScrubberCollectionViewCell;
  v3 = [(HUCalendarScrubberCollectionViewCell *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    circleView = v3->_circleView;
    v3->_circleView = v9;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_circleView setBackgroundColor:clearColor];

    v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    dateLabel = v3->_dateLabel;
    v3->_dateLabel = v12;

    [(UILabel *)v3->_dateLabel setTextAlignment:1];
    v14 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
    [(UILabel *)v3->_dateLabel setFont:v14];

    [(UILabel *)v3->_dateLabel setAdjustsFontForContentSizeCategory:0];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v3->_dateLabel setTextColor:systemWhiteColor];

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    dayMonthLabel = v3->_dayMonthLabel;
    v3->_dayMonthLabel = v16;

    v18 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
    [(UILabel *)v3->_dayMonthLabel setFont:v18];

    [(UILabel *)v3->_dayMonthLabel setAdjustsFontForContentSizeCategory:0];
    [(UILabel *)v3->_dayMonthLabel setTextAlignment:1];
    systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v3->_dayMonthLabel setTextColor:systemWhiteColor2];

    [(HUCalendarScrubberCollectionViewCell *)v3 addSubview:v3->_circleView];
    [(HUCalendarScrubberCollectionViewCell *)v3 addSubview:v3->_dateLabel];
    [(HUCalendarScrubberCollectionViewCell *)v3 addSubview:v3->_dayMonthLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = HUCalendarScrubberCollectionViewCell;
  [(HUCalendarScrubberCollectionViewCell *)&v17 layoutSubviews];
  circleView = [(HUCalendarScrubberCollectionViewCell *)self circleView];
  dateLabel = [(HUCalendarScrubberCollectionViewCell *)self dateLabel];
  dayMonthLabel = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
  [(HUCalendarScrubberCollectionViewCell *)self bounds];
  v7 = v6;
  v8 = v6 * 0.5;
  v10 = v9 - v6 + -4.0;
  [circleView setFrame:{0.0, v10, v6, v6}];
  layer = [circleView layer];
  [layer setCornerRadius:v8];

  [dateLabel setFrame:{0.0, 0.0, v7, 16.0}];
  [circleView center];
  [dateLabel setCenter:?];
  dayMonthLabel2 = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
  [dayMonthLabel2 intrinsicContentSize];
  v14 = v13;

  [dayMonthLabel setFrame:{0.0, v10 + -16.0, v14, 16.0}];
  [dateLabel center];
  v16 = v15;
  [dayMonthLabel center];
  [dayMonthLabel setCenter:v16];
}

- (void)setDateString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_dateString isEqualToString:?])
  {
    objc_storeStrong(&self->_dateString, string);
    dateLabel = [(HUCalendarScrubberCollectionViewCell *)self dateLabel];
    [dateLabel setText:stringCopy];
  }
}

- (void)setDayOfWeekString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_dayOfWeekString isEqualToString:?])
  {
    objc_storeStrong(&self->_dayOfWeekString, string);
    dayMonthLabel = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
    [dayMonthLabel setText:stringCopy];

    dayMonthLabel2 = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
    [dayMonthLabel2 sizeToFit];
  }
}

- (void)setSelected:(BOOL)selected
{
  v14.receiver = self;
  v14.super_class = HUCalendarScrubberCollectionViewCell;
  [(HUCalendarScrubberCollectionViewCell *)&v14 setSelected:?];
  circleView = [(HUCalendarScrubberCollectionViewCell *)self circleView];
  if (selected)
  {
    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    [circleView setBackgroundColor:hf_keyColor];

    [circleView setAlpha:0.0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&v12.a = *MEMORY[0x277CBF2C0];
    *&v12.c = v7;
    *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformScale(&v13, &v12, 0.1, 0.1);
    v12 = v13;
    [circleView setTransform:&v12];
    v8 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__HUCalendarScrubberCollectionViewCell_setSelected___block_invoke;
    v10[3] = &unk_277DB8488;
    v11 = circleView;
    [v8 animateWithDuration:65538 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:0.5 completion:0.7];
    clearColor = v11;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [circleView setBackgroundColor:clearColor];
  }
}

uint64_t __52__HUCalendarScrubberCollectionViewCell_setSelected___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  [(HUCalendarScrubberCollectionViewCell *)self setUserInteractionEnabled:?];
  if (enabledCopy)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.319999993;
  }

  dateLabel = [(HUCalendarScrubberCollectionViewCell *)self dateLabel];
  [dateLabel setAlpha:v5];

  dayMonthLabel = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
  [dayMonthLabel setAlpha:v5];
}

@end