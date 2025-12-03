@interface NTKWorldClockRichComplicationHandsBaseView
- (CLKMonochromeFilterProvider)filterProvider;
- (UIColor)pegDotColor;
- (id)createSecondHandView;
- (id)hourHandConfiguration;
- (id)initForDevice:(id)device;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (int64_t)complicationFamily;
- (int64_t)displayedHour;
- (void)layoutHandViews;
- (void)setFilterProvider:(id)provider;
- (void)setPegDotColor:(id)color;
@end

@implementation NTKWorldClockRichComplicationHandsBaseView

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = NTKWorldClockRichComplicationHandsBaseView;
  v5 = [(NTKAnalogHandsView *)&v20 initForDevice:deviceCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5 + 78;
    _LayoutConstants_10(deviceCopy, [v5 complicationFamily], &v17);
    *v7 = v17;
    v8 = v18;
    v18 = 0;
    v9 = *(v6 + 79);
    *(v6 + 79) = v8;

    v10 = v19;
    v19 = 0;
    v11 = *(v6 + 80);
    *(v6 + 80) = v10;

    [v6 setMinuteHandDotDiameter:*v7];
    minuteHandDot = [v6 minuteHandDot];
    v13 = [MEMORY[0x277D75348] colorWithRed:0.898039222 green:0.427450985 blue:0.0 alpha:1.0];
    [minuteHandDot setBackgroundColor:v13];

    *(v6 + 648) = NTKShowGossamerUI(deviceCopy);
    minuteHandDot2 = [v6 minuteHandDot];
    [minuteHandDot2 setHidden:*(v6 + 648)];

    secondHandDot = [v6 secondHandDot];
    [secondHandDot setHidden:*(v6 + 648)];
  }

  return v6;
}

- (id)hourHandConfiguration
{
  device = [(CLKUIAnalogHandsView *)self device];
  _LayoutConstants_10(device, [(NTKWorldClockRichComplicationHandsBaseView *)self complicationFamily], v7);
  v4 = v8;
  v5 = v8;

  return v4;
}

- (id)minuteHandConfiguration
{
  device = [(CLKUIAnalogHandsView *)self device];
  _LayoutConstants_10(device, [(NTKWorldClockRichComplicationHandsBaseView *)self complicationFamily], v7);
  v4 = v9;
  v5 = v9;

  return v4;
}

- (id)secondHandConfiguration
{
  device = [(CLKUIAnalogHandsView *)self device];
  v11 = 0.0;
  v12 = 0;
  v13 = 0;
  _LayoutConstants_10(device, [(NTKWorldClockRichComplicationHandsBaseView *)self complicationFamily], &v11);
  if ([(NTKWorldClockRichComplicationHandsBaseView *)self complicationFamily]== 10)
  {
    device2 = [(CLKUIAnalogHandsView *)self device];
    v5 = [off_27877BEE0 defaultSubdialConfigurationForDevice:device2];

    [v5 setExcludePeg:0];
    [v13 handLength];
    [v5 setHandLength:?];
  }

  else
  {
    v5 = objc_alloc_init(off_27877BEE0);
    [v5 setType:1];
    [v13 handLength];
    v7 = v6;
    [v13 handWidth];
    v9 = v8;
    [v5 setTailLength:floor(v7 / 3.0)];
    [v5 setPegRadius:round(v11 / 3.0)];
    [v5 setPegStrokeWidth:ceil(v9 / 5.0)];
    [v5 setExcludePeg:0];
    [v5 setHandLength:v7];
    [v5 setHandWidth:ceil(v9 / 3.0)];
    [v5 setRoundedSecondHand:1];
  }

  return v5;
}

- (id)createSecondHandView
{
  if ([objc_opt_class() showsSecondHand])
  {
    v5.receiver = self;
    v5.super_class = NTKWorldClockRichComplicationHandsBaseView;
    createSecondHandView = [(CLKUIAnalogHandsView *)&v5 createSecondHandView];
  }

  else
  {
    createSecondHandView = 0;
  }

  return createSecondHandView;
}

- (void)layoutHandViews
{
  v10.receiver = self;
  v10.super_class = NTKWorldClockRichComplicationHandsBaseView;
  [(CLKUIAnalogHandsView *)&v10 layoutHandViews];
  [(NTKWorldClockRichComplicationHandsBaseView *)self bounds];
  v4 = v3 * 0.5;
  [(NTKWorldClockRichComplicationHandsBaseView *)self bounds];
  v6 = v5 * 0.5;
  hourHandView = [(CLKUIAnalogHandsView *)self hourHandView];
  [hourHandView setCenter:{v4, v6}];

  minuteHandView = [(CLKUIAnalogHandsView *)self minuteHandView];
  [minuteHandView setCenter:{v4, v6}];

  secondHandView = [(CLKUIAnalogHandsView *)self secondHandView];
  [secondHandView setCenter:{v4, v6}];
}

- (void)setFilterProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_filterProvider, providerCopy);
  if ([objc_opt_class() showsSecondHand])
  {
    [(CLKUIAnalogHandsView *)self secondHandView];
  }

  else
  {
    hourHandView = [(CLKUIAnalogHandsView *)self hourHandView];
    [hourHandView setFilterProvider:providerCopy];

    [(CLKUIAnalogHandsView *)self minuteHandView];
  }
  v6 = ;
  [v6 setFilterProvider:providerCopy];
}

- (int64_t)displayedHour
{
  overrideDate = [(NTKAnalogHandsView *)self overrideDate];
  v4 = overrideDate;
  if (overrideDate)
  {
    displayTime = overrideDate;
  }

  else
  {
    displayTime = [(NTKAnalogHandsView *)self displayTime];
  }

  v6 = displayTime;

  calendar = [(CLKUIAnalogHandsView *)self calendar];
  v8 = [calendar component:32 fromDate:v6];

  return v8;
}

- (UIColor)pegDotColor
{
  minuteHandDot = [(CLKUIAnalogHandsView *)self minuteHandDot];
  backgroundColor = [minuteHandDot backgroundColor];

  return backgroundColor;
}

- (void)setPegDotColor:(id)color
{
  colorCopy = color;
  minuteHandDot = [(CLKUIAnalogHandsView *)self minuteHandDot];
  [minuteHandDot setBackgroundColor:colorCopy];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (int64_t)complicationFamily
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 10;
}

@end