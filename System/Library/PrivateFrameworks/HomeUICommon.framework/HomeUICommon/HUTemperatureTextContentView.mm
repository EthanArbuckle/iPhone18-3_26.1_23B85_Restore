@interface HUTemperatureTextContentView
- (HUTemperatureTextContentView)initWithFrame:(CGRect)frame;
- (void)configureLabel;
- (void)layoutSubviews;
@end

@implementation HUTemperatureTextContentView

- (HUTemperatureTextContentView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HUTemperatureTextContentView;
  v3 = [(HUIconContentView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756C0]);
    [(HUTemperatureTextContentView *)v3 setTemperatureLabel:v4];

    temperatureLabel = [(HUTemperatureTextContentView *)v3 temperatureLabel];
    [(HUTemperatureTextContentView *)v3 addSubview:temperatureLabel];
  }

  return v3;
}

- (void)configureLabel
{
  iconDescriptor = [(HUIconContentView *)self iconDescriptor];
  targetHeatingCoolingMode = [iconDescriptor targetHeatingCoolingMode];

  if (targetHeatingCoolingMode)
  {
    iconDescriptor2 = [(HUIconContentView *)self iconDescriptor];
    heatingCoolingMode = [iconDescriptor2 heatingCoolingMode];

    systemCyanColor = 0;
    if (heatingCoolingMode > 1)
    {
      if (heatingCoolingMode == 2)
      {
        systemCyanColor = [MEMORY[0x277D75340] systemCyanColor];
      }

      else if (heatingCoolingMode == 3)
      {
        systemCyanColor = [MEMORY[0x277D75340] darkGrayColor];
      }
    }

    else if (heatingCoolingMode)
    {
      if (heatingCoolingMode == 1)
      {
        systemCyanColor = [MEMORY[0x277D75340] systemOrangeColor];
      }
    }

    else
    {
      systemCyanColor = [MEMORY[0x277D75340] systemGreenColor];
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
    systemCyanColor = ;
  }

  v21 = systemCyanColor;
  iconDescriptor3 = [(HUIconContentView *)self iconDescriptor];
  formattedTemperature = [iconDescriptor3 formattedTemperature];
  v10 = formattedTemperature;
  if (formattedTemperature)
  {
    v11 = formattedTemperature;
  }

  else
  {
    v11 = HFLocalizedString();
  }

  v12 = v11;

  v13 = [MEMORY[0x277D742F8] systemFontOfSize:22.0 weight:*MEMORY[0x277D743F0]];
  temperatureLabel = [(HUTemperatureTextContentView *)self temperatureLabel];
  [temperatureLabel setText:v12];

  clearColor = [MEMORY[0x277D75340] clearColor];
  temperatureLabel2 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [temperatureLabel2 setBackgroundColor:clearColor];

  temperatureLabel3 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [temperatureLabel3 setFont:v13];

  temperatureLabel4 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [temperatureLabel4 setTextColor:v21];

  temperatureLabel5 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [temperatureLabel5 setAdjustsFontSizeToFitWidth:1];

  temperatureLabel6 = [(HUTemperatureTextContentView *)self temperatureLabel];
  [temperatureLabel6 setMinimumScaleFactor:0.2];
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
  temperatureLabel = [(HUTemperatureTextContentView *)self temperatureLabel];
  [temperatureLabel setFrame:{v4, v6, v8, v10}];

  [(HUTemperatureTextContentView *)self setClipsToBounds:0];
}

@end