@interface MTUIDateLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTUIDateLabel)initWithFrame:(CGRect)a3;
- (NSTimeZone)timeZone;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_updateDateString;
- (void)_updateLabel;
- (void)_updateTextString;
- (void)layoutSubviews;
- (void)setDate:(id)a3;
- (void)setDateLabelText:(id)a3;
- (void)setFont:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTimeDesignatorFont:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation MTUIDateLabel

- (MTUIDateLabel)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = MTUIDateLabel;
  v3 = [(MTUIDateLabel *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTUIDateLabel *)v3 setOpaque:0];
    v5 = [(UIView *)v4 mtui_isRTL];
    v6 = objc_opt_new();
    dateLabel = v4->_dateLabel;
    v4->_dateLabel = v6;

    if (v5)
    {
      v8 = 8;
    }

    else
    {
      v8 = 7;
    }

    [(UILabel *)v4->_dateLabel setContentMode:v8];
    [(MTUIDateLabel *)v4 addSubview:v4->_dateLabel];
    v9 = [(UILabel *)v4->_dateLabel font];
    font = v4->_font;
    v4->_font = v9;

    v11 = [(UILabel *)v4->_dateLabel textColor];
    textColor = v4->_textColor;
    v4->_textColor = v11;

    v13 = [(UILabel *)v4->_dateLabel font];
    timeDesignatorFont = v4->_timeDesignatorFont;
    v4->_timeDesignatorFont = v13;

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v4 selector:sel__updateLabel name:*MEMORY[0x277D295F0] object:0];
    [v15 addObserver:v4 selector:sel__updateLabel name:*MEMORY[0x277D766F0] object:0];
    LODWORD(v16) = 1148829696;
    [(MTUIDateLabel *)v4 setContentHuggingPriority:1 forAxis:v16];
    LODWORD(v17) = 1148829696;
    [(MTUIDateLabel *)v4 setContentCompressionResistancePriority:0 forAxis:v17];
  }

  return v4;
}

- (void)setDate:(id)a3
{
  if (self->_date != a3)
  {
    v4 = [a3 copy];
    date = self->_date;
    self->_date = v4;

    [(MTUIDateLabel *)self _updateLabel];
  }
}

- (void)setDateLabelText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_dateLabelText isEqualToString:?])
  {
    v4 = [v6 copy];
    dateLabelText = self->_dateLabelText;
    self->_dateLabelText = v4;

    [(MTUIDateLabel *)self _updateLabel];
  }
}

- (void)setTimeZone:(id)a3
{
  v5 = a3;
  if (self->_timeZone != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_timeZone, a3);
    [(MTUIDateLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (self->_font != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_font, a3);
    [(UILabel *)self->_dateLabel setFont:v6];
    [(MTUIDateLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (void)setTimeDesignatorFont:(id)a3
{
  v5 = a3;
  if (self->_timeDesignatorFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_timeDesignatorFont, a3);
    [(MTUIDateLabel *)self _updateLabel];
    v5 = v6;
  }
}

- (NSTimeZone)timeZone
{
  timeZone = self->_timeZone;
  if (timeZone)
  {
    v3 = timeZone;
  }

  else
  {
    v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
  }

  return v3;
}

- (void)_updateLabel
{
  if (self->_date)
  {
    [(MTUIDateLabel *)self _updateDateString];
  }

  else
  {
    [(MTUIDateLabel *)self _updateTextString];
  }
}

- (void)_updateTextString
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277D740C0];
  v3 = [(MTUIDateLabel *)self textColor];
  v11[0] = v3;
  v10[1] = *MEMORY[0x277D740A8];
  v4 = [(MTUIDateLabel *)self font];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = [(MTUIDateLabel *)self dateLabelText];
  if ([v6 length])
  {
    v7 = objc_alloc(MEMORY[0x277CCAB48]);
    v8 = [(MTUIDateLabel *)self dateLabelText];
    v9 = [v7 initWithString:v8 attributes:v5];
  }

  else
  {
    v9 = 0;
  }

  [(UILabel *)self->_dateLabel setAttributedText:v9];
  [(MTUIDateLabel *)self invalidateIntrinsicContentSize];
}

- (void)_updateDateString
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (self->_date)
  {
    v3 = [MEMORY[0x277D296E8] sharedInstance];
    date = self->_date;
    v5 = [(MTUIDateLabel *)self timeZone];
    v21 = 0;
    v6 = [v3 localizedTimeStringFromDate:date forTimeZone:v5 timeDesignator:&v21];
    v7 = v21;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [MEMORY[0x277D296E8] sharedInstance];
  v9 = [v8 timeDesignatorAppearsBeforeTime];

  v10 = *MEMORY[0x277D740C0];
  v24[0] = *MEMORY[0x277D740C0];
  v11 = [(MTUIDateLabel *)self textColor];
  v25[0] = v11;
  v12 = *MEMORY[0x277D740A8];
  v24[1] = *MEMORY[0x277D740A8];
  v13 = [(MTUIDateLabel *)self font];
  v25[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  if ([v6 length])
  {
    v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6 attributes:v14];
  }

  else
  {
    v15 = 0;
  }

  if ([v7 length])
  {
    v22[0] = v10;
    v16 = [(MTUIDateLabel *)self textColor];
    v23[0] = v16;
    v22[1] = v12;
    v17 = [(MTUIDateLabel *)self font];
    v22[2] = *MEMORY[0x277D741C8];
    v18 = *MEMORY[0x277D741D0];
    v23[1] = v17;
    v23[2] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v19];
    if (v9)
    {
      [v15 insertAttributedString:v20 atIndex:0];
    }

    else
    {
      [v15 appendAttributedString:v20];
    }
  }

  [(UILabel *)self->_dateLabel setAttributedText:v15];
  [(MTUIDateLabel *)self invalidateIntrinsicContentSize];
}

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColor, a3);

  [(MTUIDateLabel *)self _updateLabel];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_dateLabel intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_dateLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTUIDateLabel;
  [(MTUIDateLabel *)&v3 layoutSubviews];
  [(MTUIDateLabel *)self bounds];
  [(UILabel *)self->_dateLabel setFrame:?];
}

- (id)viewForFirstBaselineLayout
{
  v2 = self;
  if ([(MTUIDateLabel *)self _wantsAutolayout])
  {
    v2 = v2->_dateLabel;
  }

  return v2;
}

- (id)viewForLastBaselineLayout
{
  v2 = self;
  if ([(MTUIDateLabel *)self _wantsAutolayout])
  {
    v2 = v2->_dateLabel;
  }

  return v2;
}

@end