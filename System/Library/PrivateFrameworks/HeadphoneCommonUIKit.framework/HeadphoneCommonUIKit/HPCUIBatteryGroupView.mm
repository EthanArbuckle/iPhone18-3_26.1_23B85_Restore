@interface HPCUIBatteryGroupView
- (HPCUIBatteryGroupView)initWithFrame:(CGRect)a3 batteryPercent:(unsigned __int8)a4 isCharging:(BOOL)a5 glyph:(id)a6 batteryLevelDescription:(id)a7 batteryIconView:(id)a8;
- (void)createBatteryGroupView:(BOOL)a3;
- (void)setChargePercent:(unsigned __int8)a3;
@end

@implementation HPCUIBatteryGroupView

- (HPCUIBatteryGroupView)initWithFrame:(CGRect)a3 batteryPercent:(unsigned __int8)a4 isCharging:(BOOL)a5 glyph:(id)a6 batteryLevelDescription:(id)a7 batteryIconView:(id)a8
{
  v11 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v24.receiver = self;
  v24.super_class = HPCUIBatteryGroupView;
  v21 = [(HPCUIBatteryGroupView *)&v24 initWithFrame:x, y, width, height];
  v22 = v21;
  if (v21)
  {
    v21->batteryPercentNumber = a4;
    objc_storeStrong(&v21->batteryGlyphView, a6);
    objc_storeStrong(&v22->batteryLevelDescription, a7);
    objc_storeStrong(&v22->_batteryIconView, a8);
    [(HPCUIBatteryGroupView *)v22 createBatteryGroupView:v11];
  }

  return v22;
}

- (void)createBatteryGroupView:(BOOL)a3
{
  v3 = a3;
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = self->_batteryIconView;
  [(HPCUIBatteryIConType *)v5 setIsCharging:v3];
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
    v9 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v9 setAxis:0];
    [v9 setAlignment:3];
    [v9 setDistribution:2];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setSemanticContentAttribute:3];
    [(UIImageView *)self->batteryGlyphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addArrangedSubview:self->batteryGlyphView];
    [v9 addArrangedSubview:self->batteryPercentLabel];
    [(HPCUIBatteryGroupView *)self addSubview:v9];
    v10 = [v9 heightAnchor];
    v11 = [v10 constraintEqualToConstant:20.0];
    [v45 addObject:v11];

    v12 = [(UIImageView *)self->batteryGlyphView heightAnchor];
    v13 = [(UILabel *)self->batteryPercentLabel heightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v45 addObject:v14];

    v15 = [v9 heightAnchor];
    v16 = [(UILabel *)self->batteryPercentLabel heightAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v45 addObject:v17];

    v18 = [(HPCUIBatteryIConType *)v5 topAnchor];
    v19 = [(HPCUIBatteryGroupView *)self topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v45 addObject:v20];

    v21 = [(HPCUIBatteryIConType *)v5 centerXAnchor];
    v22 = [(HPCUIBatteryGroupView *)self centerXAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v45 addObject:v23];

    v24 = [v9 centerXAnchor];
    v25 = [(HPCUIBatteryIConType *)v5 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v45 addObject:v26];

    v27 = [v9 topAnchor];
    v28 = [(HPCUIBatteryIConType *)v5 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:5.0];
    [v45 addObject:v29];

    v30 = [v9 bottomAnchor];
    v31 = [(HPCUIBatteryGroupView *)self bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v45 addObject:v32];
  }

  else
  {
    [(HPCUIBatteryGroupView *)self addSubview:self->batteryPercentLabel];
    v33 = [(HPCUIBatteryIConType *)v5 topAnchor];
    v34 = [(HPCUIBatteryGroupView *)self topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v45 addObject:v35];

    v36 = [(HPCUIBatteryIConType *)v5 centerXAnchor];
    v37 = [(HPCUIBatteryGroupView *)self centerXAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v45 addObject:v38];

    v39 = [(UILabel *)self->batteryPercentLabel centerXAnchor];
    v40 = [(HPCUIBatteryIConType *)v5 centerXAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v45 addObject:v41];

    v42 = [(UILabel *)self->batteryPercentLabel topAnchor];
    v43 = [(HPCUIBatteryIConType *)v5 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:5.0];
    [v45 addObject:v44];

    v9 = [(UILabel *)self->batteryPercentLabel bottomAnchor];
    v30 = [(HPCUIBatteryGroupView *)self bottomAnchor];
    v31 = [v9 constraintEqualToAnchor:v30];
    [v45 addObject:v31];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v45];
}

- (void)setChargePercent:(unsigned __int8)a3
{
  v3 = a3;
  v5 = 0.0;
  if (a3)
  {
    v5 = 1.0;
  }

  [(HPCUIBatteryGroupView *)self setAlpha:v5];
  [(HPCUIBatteryIConType *)self->_batteryIconView setChargePercent:v3 / 100.0];
  v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v10 setNumberStyle:3];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v3 / 100.0];
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