@interface HUCalendarScrubberCollectionViewCell
- (HUCalendarScrubberCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setDateString:(id)a3;
- (void)setDayOfWeekString:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation HUCalendarScrubberCollectionViewCell

- (HUCalendarScrubberCollectionViewCell)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = HUCalendarScrubberCollectionViewCell;
  v3 = [(HUCalendarScrubberCollectionViewCell *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v11 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_circleView setBackgroundColor:v11];

    v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    dateLabel = v3->_dateLabel;
    v3->_dateLabel = v12;

    [(UILabel *)v3->_dateLabel setTextAlignment:1];
    v14 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
    [(UILabel *)v3->_dateLabel setFont:v14];

    [(UILabel *)v3->_dateLabel setAdjustsFontForContentSizeCategory:0];
    v15 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v3->_dateLabel setTextColor:v15];

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    dayMonthLabel = v3->_dayMonthLabel;
    v3->_dayMonthLabel = v16;

    v18 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
    [(UILabel *)v3->_dayMonthLabel setFont:v18];

    [(UILabel *)v3->_dayMonthLabel setAdjustsFontForContentSizeCategory:0];
    [(UILabel *)v3->_dayMonthLabel setTextAlignment:1];
    v19 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v3->_dayMonthLabel setTextColor:v19];

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
  v3 = [(HUCalendarScrubberCollectionViewCell *)self circleView];
  v4 = [(HUCalendarScrubberCollectionViewCell *)self dateLabel];
  v5 = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
  [(HUCalendarScrubberCollectionViewCell *)self bounds];
  v7 = v6;
  v8 = v6 * 0.5;
  v10 = v9 - v6 + -4.0;
  [v3 setFrame:{0.0, v10, v6, v6}];
  v11 = [v3 layer];
  [v11 setCornerRadius:v8];

  [v4 setFrame:{0.0, 0.0, v7, 16.0}];
  [v3 center];
  [v4 setCenter:?];
  v12 = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
  [v12 intrinsicContentSize];
  v14 = v13;

  [v5 setFrame:{0.0, v10 + -16.0, v14, 16.0}];
  [v4 center];
  v16 = v15;
  [v5 center];
  [v5 setCenter:v16];
}

- (void)setDateString:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_dateString isEqualToString:?])
  {
    objc_storeStrong(&self->_dateString, a3);
    v5 = [(HUCalendarScrubberCollectionViewCell *)self dateLabel];
    [v5 setText:v6];
  }
}

- (void)setDayOfWeekString:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_dayOfWeekString isEqualToString:?])
  {
    objc_storeStrong(&self->_dayOfWeekString, a3);
    v5 = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
    [v5 setText:v7];

    v6 = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
    [v6 sizeToFit];
  }
}

- (void)setSelected:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = HUCalendarScrubberCollectionViewCell;
  [(HUCalendarScrubberCollectionViewCell *)&v14 setSelected:?];
  v5 = [(HUCalendarScrubberCollectionViewCell *)self circleView];
  if (a3)
  {
    v6 = [MEMORY[0x277D75348] hf_keyColor];
    [v5 setBackgroundColor:v6];

    [v5 setAlpha:0.0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&v12.a = *MEMORY[0x277CBF2C0];
    *&v12.c = v7;
    *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformScale(&v13, &v12, 0.1, 0.1);
    v12 = v13;
    [v5 setTransform:&v12];
    v8 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__HUCalendarScrubberCollectionViewCell_setSelected___block_invoke;
    v10[3] = &unk_277DB8488;
    v11 = v5;
    [v8 animateWithDuration:65538 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:0.5 completion:0.7];
    v9 = v11;
  }

  else
  {
    v9 = [MEMORY[0x277D75348] clearColor];
    [v5 setBackgroundColor:v9];
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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  [(HUCalendarScrubberCollectionViewCell *)self setUserInteractionEnabled:?];
  if (v3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.319999993;
  }

  v6 = [(HUCalendarScrubberCollectionViewCell *)self dateLabel];
  [v6 setAlpha:v5];

  v7 = [(HUCalendarScrubberCollectionViewCell *)self dayMonthLabel];
  [v7 setAlpha:v5];
}

@end