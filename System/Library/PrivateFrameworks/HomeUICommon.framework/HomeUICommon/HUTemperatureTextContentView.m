@interface HUTemperatureTextContentView
- (HUTemperatureTextContentView)initWithFrame:(CGRect)a3;
- (void)configureLabel;
- (void)layoutSubviews;
@end

@implementation HUTemperatureTextContentView

- (HUTemperatureTextContentView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = HUTemperatureTextContentView;
  v3 = [(HUIconContentView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756C0]);
    [(HUTemperatureTextContentView *)v3 setTemperatureLabel:v4];

    v5 = [(HUTemperatureTextContentView *)v3 temperatureLabel];
    [(HUTemperatureTextContentView *)v3 addSubview:v5];
  }

  return v3;
}

- (void)configureLabel
{
  v3 = [(HUIconContentView *)self iconDescriptor];
  v4 = [v3 targetHeatingCoolingMode];

  if (v4)
  {
    v5 = [(HUIconContentView *)self iconDescriptor];
    v6 = [v5 heatingCoolingMode];

    v7 = 0;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = [MEMORY[0x277D75340] systemCyanColor];
      }

      else if (v6 == 3)
      {
        v7 = [MEMORY[0x277D75340] darkGrayColor];
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        v7 = [MEMORY[0x277D75340] systemOrangeColor];
      }
    }

    else
    {
      v7 = [MEMORY[0x277D75340] systemGreenColor];
    }
  }

  else
  {
    if ([(HUIconContentView *)self displayStyle]== 1)
    {
      [MEMORY[0x277D75340] systemGrayColor];
    }

    else
    {
      [(HUTemperatureTextContentView *)self tintColor];
    }
    v7 = ;
  }

  v21 = v7;
  v8 = [(HUIconContentView *)self iconDescriptor];
  v9 = [v8 formattedTemperature];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = HFLocalizedString();
  }

  v12 = v11;

  v13 = [MEMORY[0x277D742F8] systemFontOfSize:22.0 weight:*MEMORY[0x277D743F0]];
  v14 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [v14 setText:v12];

  v15 = [MEMORY[0x277D75340] clearColor];
  v16 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [v16 setBackgroundColor:v15];

  v17 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [v17 setFont:v13];

  v18 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [v18 setTextColor:v21];

  v19 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [v19 setAdjustsFontSizeToFitWidth:1];

  v20 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [v20 setMinimumScaleFactor:0.2];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = HUTemperatureTextContentView;
  [(HUTemperatureTextContentView *)&v12 layoutSubviews];
  [(HUTemperatureTextContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(HUTemperatureTextContentView *)self setClipsToBounds:0];
}

@end