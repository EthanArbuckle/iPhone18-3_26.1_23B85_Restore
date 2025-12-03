@interface HPCUIBatteryGroupView
- (HPCUIBatteryGroupView)initWithFrame:(CGRect)frame batteryPercent:(unsigned __int8)percent isCharging:(BOOL)charging glyph:(id)glyph batteryLevelDescription:(id)description batteryIconView:(id)view;
- (void)createBatteryGroupView:(BOOL)view;
- (void)setChargePercent:(unsigned __int8)percent;
@end

@implementation HPCUIBatteryGroupView

- (HPCUIBatteryGroupView)initWithFrame:(CGRect)frame batteryPercent:(unsigned __int8)percent isCharging:(BOOL)charging glyph:(id)glyph batteryLevelDescription:(id)description batteryIconView:(id)view
{
  chargingCopy = charging;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  glyphCopy = glyph;
  descriptionCopy = description;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = HPCUIBatteryGroupView;
  height = [(HPCUIBatteryGroupView *)&v24 initWithFrame:x, y, width, height];
  v22 = height;
  if (height)
  {
    height->batteryPercentNumber = percent;
    objc_storeStrong(&height->batteryGlyphView, glyph);
    objc_storeStrong(&v22->batteryLevelDescription, description);
    objc_storeStrong(&v22->_batteryIconView, view);
    [(HPCUIBatteryGroupView *)v22 createBatteryGroupView:chargingCopy];
  }

  return v22;
}

- (void)createBatteryGroupView:(BOOL)view
{
  viewCopy = view;
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = self->_batteryIconView;
  [(HPCUIBatteryIConType *)v5 setIsCharging:viewCopy];
  [(HPCUIBatteryIConType *)v5 setContentMode:1];
  [(HPCUIBatteryIConType *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  batteryPercentLabel = self->batteryPercentLabel;
  self->batteryPercentLabel = v6;

  [(UILabel *)self->batteryPercentLabel setContentMode:1];
  [(UILabel *)self->batteryPercentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->batteryPercentLabel setAdjustsFontSizeToFitWidth:1];
  [(HPCUIBatteryGroupView *)self setChargePercent:self->batteryPercentNumber];
  [(HPCUIBatteryGroupView *)self addSubview:v5];
  batteryGlyphView = self->batteryGlyphView;
  if (batteryGlyphView)
  {
    [(UIImageView *)batteryGlyphView setContentMode:1];
    bottomAnchor5 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [bottomAnchor5 setAxis:0];
    [bottomAnchor5 setAlignment:3];
    [bottomAnchor5 setDistribution:2];
    [bottomAnchor5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [bottomAnchor5 setSemanticContentAttribute:3];
    [(UIImageView *)self->batteryGlyphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [bottomAnchor5 addArrangedSubview:self->batteryGlyphView];
    [bottomAnchor5 addArrangedSubview:self->batteryPercentLabel];
    [(HPCUIBatteryGroupView *)self addSubview:bottomAnchor5];
    heightAnchor = [bottomAnchor5 heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:20.0];
    [v45 addObject:v11];

    heightAnchor2 = [(UIImageView *)self->batteryGlyphView heightAnchor];
    heightAnchor3 = [(UILabel *)self->batteryPercentLabel heightAnchor];
    v14 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    [v45 addObject:v14];

    heightAnchor4 = [bottomAnchor5 heightAnchor];
    heightAnchor5 = [(UILabel *)self->batteryPercentLabel heightAnchor];
    v17 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    [v45 addObject:v17];

    topAnchor = [(HPCUIBatteryIConType *)v5 topAnchor];
    topAnchor2 = [(HPCUIBatteryGroupView *)self topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v45 addObject:v20];

    centerXAnchor = [(HPCUIBatteryIConType *)v5 centerXAnchor];
    centerXAnchor2 = [(HPCUIBatteryGroupView *)self centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v45 addObject:v23];

    centerXAnchor3 = [bottomAnchor5 centerXAnchor];
    centerXAnchor4 = [(HPCUIBatteryIConType *)v5 centerXAnchor];
    v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v45 addObject:v26];

    topAnchor3 = [bottomAnchor5 topAnchor];
    bottomAnchor = [(HPCUIBatteryIConType *)v5 bottomAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
    [v45 addObject:v29];

    bottomAnchor2 = [bottomAnchor5 bottomAnchor];
    bottomAnchor3 = [(HPCUIBatteryGroupView *)self bottomAnchor];
    v32 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v45 addObject:v32];
  }

  else
  {
    [(HPCUIBatteryGroupView *)self addSubview:self->batteryPercentLabel];
    topAnchor4 = [(HPCUIBatteryIConType *)v5 topAnchor];
    topAnchor5 = [(HPCUIBatteryGroupView *)self topAnchor];
    v35 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v45 addObject:v35];

    centerXAnchor5 = [(HPCUIBatteryIConType *)v5 centerXAnchor];
    centerXAnchor6 = [(HPCUIBatteryGroupView *)self centerXAnchor];
    v38 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v45 addObject:v38];

    centerXAnchor7 = [(UILabel *)self->batteryPercentLabel centerXAnchor];
    centerXAnchor8 = [(HPCUIBatteryIConType *)v5 centerXAnchor];
    v41 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [v45 addObject:v41];

    topAnchor6 = [(UILabel *)self->batteryPercentLabel topAnchor];
    bottomAnchor4 = [(HPCUIBatteryIConType *)v5 bottomAnchor];
    v44 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:5.0];
    [v45 addObject:v44];

    bottomAnchor5 = [(UILabel *)self->batteryPercentLabel bottomAnchor];
    bottomAnchor2 = [(HPCUIBatteryGroupView *)self bottomAnchor];
    bottomAnchor3 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor2];
    [v45 addObject:bottomAnchor3];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v45];
}

- (void)setChargePercent:(unsigned __int8)percent
{
  percentCopy = percent;
  v5 = 0.0;
  if (percent)
  {
    v5 = 1.0;
  }

  [(HPCUIBatteryGroupView *)self setAlpha:v5];
  [(HPCUIBatteryIConType *)self->_batteryIconView setChargePercent:percentCopy / 100.0];
  v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v10 setNumberStyle:3];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:percentCopy / 100.0];
  v7 = [v10 stringFromNumber:v6];
  v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@", v7];
  [(UILabel *)self->batteryPercentLabel setText:v8];

  if (self->batteryLevelDescription)
  {
    v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@%@", self->batteryLevelDescription, v7];
    [(UILabel *)self->batteryPercentLabel setText:v9];
  }
}

@end