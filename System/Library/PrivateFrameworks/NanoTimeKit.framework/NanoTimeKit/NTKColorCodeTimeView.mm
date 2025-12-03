@interface NTKColorCodeTimeView
- (NTKColorCodeTimeView)init;
- (void)layoutSubviews;
- (void)setDate:(id)date;
@end

@implementation NTKColorCodeTimeView

- (NTKColorCodeTimeView)init
{
  v29[10] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = NTKColorCodeTimeView;
  v2 = [(NTKColorCodeTimeView *)&v28 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = 9;
    do
    {
      v5 = objc_opt_new();
      blackColor = [MEMORY[0x277D75348] blackColor];
      cGColor = [blackColor CGColor];
      layer = [v5 layer];
      [layer setBorderColor:cGColor];

      layer2 = [v5 layer];
      [layer2 setBorderWidth:2.0];

      [(NSArray *)v3 addObject:v5];
      [(NTKColorCodeTimeView *)v2 addSubview:v5];

      --v4;
    }

    while (v4);
    colorViews = v2->_colorViews;
    v2->_colorViews = v3;
    v27 = v3;

    blackColor2 = [MEMORY[0x277D75348] blackColor];
    v29[0] = blackColor2;
    brownColor = [MEMORY[0x277D75348] brownColor];
    v29[1] = brownColor;
    redColor = [MEMORY[0x277D75348] redColor];
    v29[2] = redColor;
    orangeColor = [MEMORY[0x277D75348] orangeColor];
    v29[3] = orangeColor;
    yellowColor = [MEMORY[0x277D75348] yellowColor];
    v29[4] = yellowColor;
    greenColor = [MEMORY[0x277D75348] greenColor];
    v29[5] = greenColor;
    blueColor = [MEMORY[0x277D75348] blueColor];
    v29[6] = blueColor;
    purpleColor = [MEMORY[0x277D75348] purpleColor];
    v29[7] = purpleColor;
    grayColor = [MEMORY[0x277D75348] grayColor];
    v29[8] = grayColor;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v29[9] = whiteColor;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:10];
    digitToColor = v2->_digitToColor;
    v2->_digitToColor = v19;

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    cal = v2->_cal;
    v2->_cal = currentCalendar;

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];

    [(NTKColorCodeTimeView *)v2 setBackgroundColor:whiteColor2];
  }

  return v2;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = NTKColorCodeTimeView;
  [(NTKColorCodeTimeView *)&v15 layoutSubviews];
  [(NTKColorCodeTimeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(NSArray *)self->_colorViews count];
  if ([(NSArray *)self->_colorViews count])
  {
    v8 = 0;
    v9 = v4 / v7;
    do
    {
      v16.origin.x = v9 * v8;
      v16.origin.y = 0.0;
      v16.size.width = v9;
      v16.size.height = v6;
      v17 = CGRectInset(v16, 2.0, 2.0);
      x = v17.origin.x;
      y = v17.origin.y;
      width = v17.size.width;
      height = v17.size.height;
      v14 = [(NSArray *)self->_colorViews objectAtIndexedSubscript:v8];
      [v14 setFrame:{x, y, width, height}];

      ++v8;
    }

    while ([(NSArray *)self->_colorViews count]> v8);
  }
}

- (void)setDate:(id)date
{
  v10[9] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  objc_storeStrong(&self->_date, date);
  [(NTKColorCodeTimeView *)self layoutSubviews];
  v5 = [(NSCalendar *)self->_cal components:32992 fromDate:dateCopy];
  v10[0] = [v5 hour] / 10;
  v10[1] = [v5 hour] % 10;
  v10[2] = [v5 minute] / 10;
  v10[3] = [v5 minute] % 10;
  v10[4] = [v5 second] / 10;
  v10[5] = [v5 second] % 10;
  v10[6] = [v5 nanosecond] / 100000000;
  v10[7] = [v5 nanosecond] / 10000000 % 10;
  v6 = 0;
  v10[8] = [v5 nanosecond] / 1000000 % 10;
  do
  {
    v7 = [(NSArray *)self->_digitToColor objectAtIndexedSubscript:v10[v6]];
    v8 = [(NSArray *)self->_colorViews objectAtIndexedSubscript:v6];
    [v8 setBackgroundColor:v7];

    ++v6;
  }

  while (v6 != 9);
}

@end