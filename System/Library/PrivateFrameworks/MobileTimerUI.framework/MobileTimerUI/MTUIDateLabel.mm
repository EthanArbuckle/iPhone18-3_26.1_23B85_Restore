@interface MTUIDateLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTUIDateLabel)initWithFrame:(CGRect)frame;
- (NSTimeZone)timeZone;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_updateDateString;
- (void)_updateLabel;
- (void)_updateTextString;
- (void)layoutSubviews;
- (void)setDate:(id)date;
- (void)setDateLabelText:(id)text;
- (void)setFont:(id)font;
- (void)setTextColor:(id)color;
- (void)setTimeDesignatorFont:(id)font;
- (void)setTimeZone:(id)zone;
@end

@implementation MTUIDateLabel

- (MTUIDateLabel)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = MTUIDateLabel;
  v3 = [(MTUIDateLabel *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTUIDateLabel *)v3 setOpaque:0];
    mtui_isRTL = [(UIView *)v4 mtui_isRTL];
    v6 = objc_opt_new();
    dateLabel = v4->_dateLabel;
    v4->_dateLabel = v6;

    if (mtui_isRTL)
    {
      v8 = 8;
    }

    else
    {
      v8 = 7;
    }

    [(UILabel *)v4->_dateLabel setContentMode:v8];
    [(MTUIDateLabel *)v4 addSubview:v4->_dateLabel];
    font = [(UILabel *)v4->_dateLabel font];
    font = v4->_font;
    v4->_font = font;

    textColor = [(UILabel *)v4->_dateLabel textColor];
    textColor = v4->_textColor;
    v4->_textColor = textColor;

    font2 = [(UILabel *)v4->_dateLabel font];
    timeDesignatorFont = v4->_timeDesignatorFont;
    v4->_timeDesignatorFont = font2;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updateLabel name:*MEMORY[0x277D295F0] object:0];
    [defaultCenter addObserver:v4 selector:sel__updateLabel name:*MEMORY[0x277D766F0] object:0];
    LODWORD(v16) = 1148829696;
    [(MTUIDateLabel *)v4 setContentHuggingPriority:1 forAxis:v16];
    LODWORD(v17) = 1148829696;
    [(MTUIDateLabel *)v4 setContentCompressionResistancePriority:0 forAxis:v17];
  }

  return v4;
}

- (void)setDate:(id)date
{
  if (self->_date != date)
  {
    v4 = [date copy];
    date = self->_date;
    self->_date = v4;

    [(MTUIDateLabel *)self _updateLabel];
  }
}

- (void)setDateLabelText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_dateLabelText isEqualToString:?])
  {
    v4 = [textCopy copy];
    dateLabelText = self->_dateLabelText;
    self->_dateLabelText = v4;

    [(MTUIDateLabel *)self _updateLabel];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  if (self->_timeZone != zoneCopy)
  {
    v6 = zoneCopy;
    objc_storeStrong(&self->_timeZone, zone);
    [(MTUIDateLabel *)self _updateLabel];
    zoneCopy = v6;
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_font, font);
    [(UILabel *)self->_dateLabel setFont:v6];
    [(MTUIDateLabel *)self _updateLabel];
    fontCopy = v6;
  }
}

- (void)setTimeDesignatorFont:(id)font
{
  fontCopy = font;
  if (self->_timeDesignatorFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_timeDesignatorFont, font);
    [(MTUIDateLabel *)self _updateLabel];
    fontCopy = v6;
  }
}

- (NSTimeZone)timeZone
{
  timeZone = self->_timeZone;
  if (timeZone)
  {
    systemTimeZone = timeZone;
  }

  else
  {
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  }

  return systemTimeZone;
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
  textColor = [(MTUIDateLabel *)self textColor];
  v11[0] = textColor;
  v10[1] = *MEMORY[0x277D740A8];
  font = [(MTUIDateLabel *)self font];
  v11[1] = font;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  dateLabelText = [(MTUIDateLabel *)self dateLabelText];
  if ([dateLabelText length])
  {
    v7 = objc_alloc(MEMORY[0x277CCAB48]);
    dateLabelText2 = [(MTUIDateLabel *)self dateLabelText];
    v9 = [v7 initWithString:dateLabelText2 attributes:v5];
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
    mEMORY[0x277D296E8] = [MEMORY[0x277D296E8] sharedInstance];
    date = self->_date;
    timeZone = [(MTUIDateLabel *)self timeZone];
    v21 = 0;
    v6 = [mEMORY[0x277D296E8] localizedTimeStringFromDate:date forTimeZone:timeZone timeDesignator:&v21];
    v7 = v21;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  mEMORY[0x277D296E8]2 = [MEMORY[0x277D296E8] sharedInstance];
  timeDesignatorAppearsBeforeTime = [mEMORY[0x277D296E8]2 timeDesignatorAppearsBeforeTime];

  v10 = *MEMORY[0x277D740C0];
  v24[0] = *MEMORY[0x277D740C0];
  textColor = [(MTUIDateLabel *)self textColor];
  v25[0] = textColor;
  v12 = *MEMORY[0x277D740A8];
  v24[1] = *MEMORY[0x277D740A8];
  font = [(MTUIDateLabel *)self font];
  v25[1] = font;
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
    textColor2 = [(MTUIDateLabel *)self textColor];
    v23[0] = textColor2;
    v22[1] = v12;
    font2 = [(MTUIDateLabel *)self font];
    v22[2] = *MEMORY[0x277D741C8];
    v18 = *MEMORY[0x277D741D0];
    v23[1] = font2;
    v23[2] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v19];
    if (timeDesignatorAppearsBeforeTime)
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

- (void)setTextColor:(id)color
{
  objc_storeStrong(&self->_textColor, color);

  [(MTUIDateLabel *)self _updateLabel];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_dateLabel intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_dateLabel sizeThatFits:fits.width, fits.height];
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
  selfCopy = self;
  if ([(MTUIDateLabel *)self _wantsAutolayout])
  {
    selfCopy = selfCopy->_dateLabel;
  }

  return selfCopy;
}

- (id)viewForLastBaselineLayout
{
  selfCopy = self;
  if ([(MTUIDateLabel *)self _wantsAutolayout])
  {
    selfCopy = selfCopy->_dateLabel;
  }

  return selfCopy;
}

@end