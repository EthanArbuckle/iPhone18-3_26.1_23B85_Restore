@interface DBStatusBarSensorIndicatorView
- (CGSize)intrinsicContentSize;
- (DBStatusBarSensorIndicatorView)init;
- (void)_updateColor;
- (void)setSensorIndicatorType:(int64_t)type;
@end

@implementation DBStatusBarSensorIndicatorView

- (DBStatusBarSensorIndicatorView)init
{
  v6.receiver = self;
  v6.super_class = DBStatusBarSensorIndicatorView;
  v2 = [(DBStatusBarSensorIndicatorView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    layer = [(DBStatusBarSensorIndicatorView *)v2 layer];
    [layer setCornerRadius:2.0];

    [(DBStatusBarSensorIndicatorView *)v3 _updateColor];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = 4.0;
  v3 = 4.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSensorIndicatorType:(int64_t)type
{
  if (self->_sensorIndicatorType != type)
  {
    self->_sensorIndicatorType = type;
    [(DBStatusBarSensorIndicatorView *)self _updateColor];
  }
}

- (void)_updateColor
{
  if ([(DBStatusBarSensorIndicatorView *)self sensorIndicatorType]== 2)
  {
    [(DBStatusBarSensorIndicatorView *)self setAccessibilityIdentifier:@"DBStatusBarSensorIndicatorTypeCamera"];
    systemOrangeColor = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_36];
  }

  else
  {
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [(DBStatusBarSensorIndicatorView *)self setAccessibilityIdentifier:@"DBStatusBarSensorIndicatorTypeMicrophone"];
  }

  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__DBStatusBarSensorIndicatorView__updateColor__block_invoke_2;
  v6[3] = &unk_278F014B8;
  v6[4] = self;
  v7 = systemOrangeColor;
  v5 = systemOrangeColor;
  [v4 transitionWithView:self duration:0 options:v6 animations:&__block_literal_global_9 completion:0.25];
}

id __46__DBStatusBarSensorIndicatorView__updateColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    [MEMORY[0x277D75348] colorWithRed:0.28627451 green:0.639215686 blue:0.349019608 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] systemGreenColor];
  }
  v2 = ;

  return v2;
}

@end