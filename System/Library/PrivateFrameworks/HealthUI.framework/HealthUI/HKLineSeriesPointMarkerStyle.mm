@interface HKLineSeriesPointMarkerStyle
- (HKLineSeriesPointMarkerStyle)initWithColor:(id)color radius:(double)radius style:(int64_t)style;
@end

@implementation HKLineSeriesPointMarkerStyle

- (HKLineSeriesPointMarkerStyle)initWithColor:(id)color radius:(double)radius style:(int64_t)style
{
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = HKLineSeriesPointMarkerStyle;
  v9 = [(HKLineSeriesPointMarkerStyle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(HKLineSeriesPointMarkerStyle *)v9 setPointColor:colorCopy];
    [(HKLineSeriesPointMarkerStyle *)v10 setRadius:radius];
    [(HKLineSeriesPointMarkerStyle *)v10 setPointMarkerStyle:style];
  }

  return v10;
}

@end