@interface NTKDualTimeDigitalTicksView
+ (CGSize)_sizeFromFrame:(CGRect)a3;
- (NTKDualTimeDigitalTicksView)initWithConfiguration:(id *)a3 timer:(id)a4;
- (NTKDualTimeDigitalTicksView)initWithFrame:(CGRect)a3 configuration:(id *)a4 timer:(id)a5;
- (NTKDualTimeDigitalTicksViewPaletteDelegate)delegate;
- (void)_colorizeDigitalTicksWithActiveColor:(id)a3 inactiveColor:(id)a4 now:(id)a5 secondFraction:(double)a6;
- (void)_configureTicks;
- (void)_refreshDigitalTicksWithNow:(id)a3 secondFraction:(double)a4;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation NTKDualTimeDigitalTicksView

- (NTKDualTimeDigitalTicksView)initWithConfiguration:(id *)a3 timer:(id)a4
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  var1 = a3->var1;
  v10[0] = a3->var0;
  v10[1] = var1;
  v10[2] = *&a3->var2;
  return [(NTKDualTimeDigitalTicksView *)self initWithFrame:v10 configuration:a4 timer:v4, v5, v6, v7];
}

- (NTKDualTimeDigitalTicksView)initWithFrame:(CGRect)a3 configuration:(id *)a4 timer:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v25.receiver = self;
  v25.super_class = NTKDualTimeDigitalTicksView;
  v13 = [(NTKDualTimeDigitalTicksView *)&v25 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    v13->_hideActiveTicks = 0;
    var0 = a4->var0;
    v16 = *&a4->var2;
    v13->_configuration.cardinalTickSize = a4->var1;
    *&v13->_configuration.tickInset = v16;
    v13->_configuration.tickSize = var0;
    activeTickColor = v13->_activeTickColor;
    v13->_activeTickColor = 0;

    inactiveTickColor = v14->_inactiveTickColor;
    v14->_inactiveTickColor = 0;

    objc_storeStrong(&v14->_timer, a5);
    v19 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v14->_calendar;
    v14->_calendar = v19;

    v21 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [(NSCalendar *)v14->_calendar setTimeZone:v21];

    [(NTKDualTimeDigitalTicksView *)v14 _configureTicks];
    [objc_opt_class() _sizeFromFrame:{x, y, width, height}];
    v14->_lastSize.width = v22;
    v14->_lastSize.height = v23;
  }

  return v14;
}

- (void)setOverrideDate:(id)a3
{
  v5 = a3;
  if (self->_overrideDate != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_overrideDate, a3);
    [(NTKDualTimeDigitalTicksView *)self refreshTicks];
    v5 = v6;
  }
}

- (void)startAnimation
{
  if (!self->_clockTimerToken)
  {
    objc_initWeak(&location, self);
    timer = self->_timer;
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __45__NTKDualTimeDigitalTicksView_startAnimation__block_invoke;
    v9 = &unk_27877ED48;
    objc_copyWeak(&v10, &location);
    v4 = [(CLKClockTimer *)timer startUpdatesWithUpdateFrequency:2 withHandler:&v6 identificationLog:&__block_literal_global_76];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v4;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  [(NTKDualTimeDigitalTicksView *)self refreshTicks:v6];
}

void __45__NTKDualTimeDigitalTicksView_startAnimation__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && (WeakRetained[505] & 1) == 0 && (WeakRetained[504] & 1) == 0)
  {
    [WeakRetained _refreshDigitalTicksWithNow:*a3 secondFraction:*(a3 + 4)];
  }
}

- (void)stopAnimation
{
  if (self->_clockTimerToken)
  {
    [(CLKClockTimer *)self->_timer stopUpdatesForToken:?];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = NTKDualTimeDigitalTicksView;
  [(NTKDualTimeDigitalTicksView *)&v9 layoutSubviews];
  v3 = objc_opt_class();
  [(NTKDualTimeDigitalTicksView *)self frame];
  [v3 _sizeFromFrame:?];
  v6 = v5;
  v7 = v4;
  if (self->_lastSize.width != v5 || self->_lastSize.height != v4)
  {
    [(NTKDualTimeDigitalTicksView *)self _configureTicks];
    self->_lastSize.width = v6;
    self->_lastSize.height = v7;
  }
}

+ (CGSize)_sizeFromFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetWidth(a3);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8 = CGRectGetHeight(v11);
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)_configureTicks
{
  [(NTKDualTimeDigitalTicksView *)self bounds];
  width = self->_configuration.tickSize.width;
  v27 = v3;
  v24 = self->_configuration.cardinalTickSize.width;
  height = self->_configuration.tickSize.height;
  v23 = self->_configuration.cardinalTickSize.height;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:60];
  v5 = 0;
  v6 = 0.0;
  do
  {
    if (v5 >= [(NSArray *)self->_digitalTicks count])
    {
      [MEMORY[0x277CD9ED0] layer];
    }

    else
    {
      [(NSArray *)self->_digitalTicks objectAtIndexedSubscript:v5];
    }
    v7 = ;
    if (_disabledLayerActions_onceToken_1 != -1)
    {
      [NTKDualTimeDigitalTicksView _configureTicks];
    }

    [v7 setActions:_disabledLayerActions__dictionary_1];
    v8 = [MEMORY[0x277D75348] whiteColor];
    [v7 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];

    v9 = -15 * ((286331154 * v5) >> 32) + v5;
    if (v9)
    {
      v10 = height;
    }

    else
    {
      v10 = v23;
    }

    if (v9)
    {
      v11 = width;
    }

    else
    {
      v11 = v24;
    }

    if (v9)
    {
      v12 = 32;
    }

    else
    {
      v12 = 40;
    }

    [v7 setBounds:{0.0, 0.0, v11, v10}];
    [v7 setCornerRadius:v11 * 0.5];
    v13 = *(&self->_configuration.tickSize.width + v12);
    [v7 bounds];
    v15 = (v27 - v14 - v13) * 0.5;
    [(NTKDualTimeDigitalTicksView *)self bounds];
    v17 = v16 * 0.5;
    v18 = __sincos_stret(v6 * 0.104719755 + -1.57079633);
    [(NTKDualTimeDigitalTicksView *)self bounds];
    [v7 setPosition:{v17 + v15 * v18.__cosval, v19 * 0.5 + v15 * v18.__sinval}];
    CGAffineTransformMakeRotation(&v28, v6 * 0.104719755 + 3.14159265);
    [v7 setAffineTransform:&v28];
    [v4 addObject:v7];
    v20 = [(NTKDualTimeDigitalTicksView *)self layer];
    [v20 addSublayer:v7];

    v6 = ++v5;
  }

  while (v5 != 60);
  v21 = [v4 copy];
  digitalTicks = self->_digitalTicks;
  self->_digitalTicks = v21;
}

- (void)_refreshDigitalTicksWithNow:(id)a3 secondFraction:(double)a4
{
  v11 = a3;
  if (self->_activeTickColor && self->_inactiveTickColor)
  {
    [NTKDualTimeDigitalTicksView _colorizeDigitalTicksWithActiveColor:"_colorizeDigitalTicksWithActiveColor:inactiveColor:now:secondFraction:" inactiveColor:a4 now:? secondFraction:?];
  }

  else
  {
    v6 = [(NTKDualTimeDigitalTicksView *)self delegate];

    if (v6)
    {
      v7 = [(NTKDualTimeDigitalTicksView *)self delegate];
      v8 = [v7 activeColorForDualTimeDigitalTicksView:self];

      v9 = [(NTKDualTimeDigitalTicksView *)self delegate];
      v10 = [v9 inactiveColorForDualTimeDigitalTicksView:self];

      [(NTKDualTimeDigitalTicksView *)self _colorizeDigitalTicksWithActiveColor:v8 inactiveColor:v10 now:v11 secondFraction:a4];
    }
  }
}

- (void)_colorizeDigitalTicksWithActiveColor:(id)a3 inactiveColor:(id)a4 now:(id)a5 secondFraction:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (self->_hideActiveTicks)
  {
    v14 = -1;
  }

  else
  {
    overrideDate = self->_overrideDate;
    if (overrideDate || (overrideDate = v12) != 0)
    {
      v16 = overrideDate;
    }

    else
    {
      v16 = [MEMORY[0x277CBB700] now];
    }

    v17 = v16;
    v18 = [(NSCalendar *)self->_calendar components:128 fromDate:v16];
    v14 = [v18 second];

    if (self->_overrideDate)
    {
      a6 = 0.0;
    }
  }

  v19 = v11;
  v20 = v19;
  v21 = v19;
  if (!self->_hideActiveTicks)
  {
    v21 = v19;
    if (!self->_frozen)
    {
      v21 = v19;
      if (!self->_editing)
      {
        v21 = v19;
        if (a6 >= *off_27877BE68)
        {
          CLKCompressFraction();
          v21 = NTKInterpolateBetweenColors();
        }
      }
    }
  }

  digitalTicks = self->_digitalTicks;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __101__NTKDualTimeDigitalTicksView__colorizeDigitalTicksWithActiveColor_inactiveColor_now_secondFraction___block_invoke;
  v26[3] = &unk_2787823B8;
  v27 = v21;
  v28 = v10;
  v29 = v20;
  v30 = v14;
  v23 = v20;
  v24 = v10;
  v25 = v21;
  [(NSArray *)digitalTicks enumerateObjectsUsingBlock:v26];
}

void __101__NTKDualTimeDigitalTicksView__colorizeDigitalTicksWithActiveColor_inactiveColor_now_secondFraction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = *(a1 + 56);
  v6 = v5 + 1;
  v7 = v5 < a3;
  v8 = 40;
  if (v7)
  {
    v8 = 48;
  }

  if (v6 == a3)
  {
    v8 = 32;
  }

  [v9 setBackgroundColor:{objc_msgSend(*(a1 + v8), "CGColor")}];
}

- (NTKDualTimeDigitalTicksViewPaletteDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end