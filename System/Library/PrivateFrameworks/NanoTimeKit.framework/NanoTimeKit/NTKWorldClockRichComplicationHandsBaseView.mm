@interface NTKWorldClockRichComplicationHandsBaseView
- (CLKMonochromeFilterProvider)filterProvider;
- (UIColor)pegDotColor;
- (id)createSecondHandView;
- (id)hourHandConfiguration;
- (id)initForDevice:(id)a3;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (int64_t)complicationFamily;
- (int64_t)displayedHour;
- (void)layoutHandViews;
- (void)setFilterProvider:(id)a3;
- (void)setPegDotColor:(id)a3;
@end

@implementation NTKWorldClockRichComplicationHandsBaseView

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NTKWorldClockRichComplicationHandsBaseView;
  v5 = [(NTKAnalogHandsView *)&v20 initForDevice:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5 + 78;
    _LayoutConstants_10(v4, [v5 complicationFamily], &v17);
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
    v12 = [v6 minuteHandDot];
    v13 = [MEMORY[0x277D75348] colorWithRed:0.898039222 green:0.427450985 blue:0.0 alpha:1.0];
    [v12 setBackgroundColor:v13];

    *(v6 + 648) = NTKShowGossamerUI(v4);
    v14 = [v6 minuteHandDot];
    [v14 setHidden:*(v6 + 648)];

    v15 = [v6 secondHandDot];
    [v15 setHidden:*(v6 + 648)];
  }

  return v6;
}

- (id)hourHandConfiguration
{
  v3 = [(CLKUIAnalogHandsView *)self device];
  _LayoutConstants_10(v3, [(NTKWorldClockRichComplicationHandsBaseView *)self complicationFamily], v7);
  v4 = v8;
  v5 = v8;

  return v4;
}

- (id)minuteHandConfiguration
{
  v3 = [(CLKUIAnalogHandsView *)self device];
  _LayoutConstants_10(v3, [(NTKWorldClockRichComplicationHandsBaseView *)self complicationFamily], v7);
  v4 = v9;
  v5 = v9;

  return v4;
}

- (id)secondHandConfiguration
{
  v3 = [(CLKUIAnalogHandsView *)self device];
  v11 = 0.0;
  v12 = 0;
  v13 = 0;
  _LayoutConstants_10(v3, [(NTKWorldClockRichComplicationHandsBaseView *)self complicationFamily], &v11);
  if ([(NTKWorldClockRichComplicationHandsBaseView *)self complicationFamily]== 10)
  {
    v4 = [(CLKUIAnalogHandsView *)self device];
    v5 = [off_27877BEE0 defaultSubdialConfigurationForDevice:v4];

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
    v3 = [(CLKUIAnalogHandsView *)&v5 createSecondHandView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v7 = [(CLKUIAnalogHandsView *)self hourHandView];
  [v7 setCenter:{v4, v6}];

  v8 = [(CLKUIAnalogHandsView *)self minuteHandView];
  [v8 setCenter:{v4, v6}];

  v9 = [(CLKUIAnalogHandsView *)self secondHandView];
  [v9 setCenter:{v4, v6}];
}

- (void)setFilterProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_filterProvider, v4);
  if ([objc_opt_class() showsSecondHand])
  {
    [(CLKUIAnalogHandsView *)self secondHandView];
  }

  else
  {
    v5 = [(CLKUIAnalogHandsView *)self hourHandView];
    [v5 setFilterProvider:v4];

    [(CLKUIAnalogHandsView *)self minuteHandView];
  }
  v6 = ;
  [v6 setFilterProvider:v4];
}

- (int64_t)displayedHour
{
  v3 = [(NTKAnalogHandsView *)self overrideDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NTKAnalogHandsView *)self displayTime];
  }

  v6 = v5;

  v7 = [(CLKUIAnalogHandsView *)self calendar];
  v8 = [v7 component:32 fromDate:v6];

  return v8;
}

- (UIColor)pegDotColor
{
  v2 = [(CLKUIAnalogHandsView *)self minuteHandDot];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setPegDotColor:(id)a3
{
  v4 = a3;
  v5 = [(CLKUIAnalogHandsView *)self minuteHandDot];
  [v5 setBackgroundColor:v4];
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