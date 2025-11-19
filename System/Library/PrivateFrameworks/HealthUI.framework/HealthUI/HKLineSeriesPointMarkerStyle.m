@interface HKLineSeriesPointMarkerStyle
- (HKLineSeriesPointMarkerStyle)initWithColor:(id)a3 radius:(double)a4 style:(int64_t)a5;
@end

@implementation HKLineSeriesPointMarkerStyle

- (HKLineSeriesPointMarkerStyle)initWithColor:(id)a3 radius:(double)a4 style:(int64_t)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = HKLineSeriesPointMarkerStyle;
  v9 = [(HKLineSeriesPointMarkerStyle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(HKLineSeriesPointMarkerStyle *)v9 setPointColor:v8];
    [(HKLineSeriesPointMarkerStyle *)v10 setRadius:a4];
    [(HKLineSeriesPointMarkerStyle *)v10 setPointMarkerStyle:a5];
  }

  return v10;
}

@end