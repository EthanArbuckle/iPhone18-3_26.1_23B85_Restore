@interface HKChartSeriesPointMarker
+ (id)chartPointWithColor:(id)color radius:(double)radius style:(int64_t)style;
+ (id)chartPointWithLineSeriesPresentationStyle:(id)style;
@end

@implementation HKChartSeriesPointMarker

+ (id)chartPointWithColor:(id)color radius:(double)radius style:(int64_t)style
{
  colorCopy = color;
  if (style == 2)
  {
    v8 = 0;
  }

  else
  {
    v9 = radius + radius;
    v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v9, v9}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__HKChartSeriesPointMarker_chartPointWithColor_radius_style___block_invoke;
    v12[3] = &unk_1E81B6AD0;
    v15 = 0;
    v16 = 0;
    styleCopy = style;
    v17 = v9;
    v18 = v9;
    v13 = colorCopy;
    v8 = [v10 imageWithActions:v12];
  }

  return v8;
}

void __61__HKChartSeriesPointMarker_chartPointWithColor_radius_style___block_invoke(double *a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = *(a1 + 5);
  if (v4 == 1)
  {
    v10 = *(a1 + 4);
    v11 = a1[6];
    v12 = a1[7];
    v13 = a1[8];
    v14 = a1[9];

    _drawHollowCircleInContext(v3, v10, v11, v12, v13, v14);
  }

  else if (!v4)
  {
    v5 = *(a1 + 4);
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];
    v9 = a1[9];

    _drawSolidCircleInContext(v3, v5, v6, v7, v8, v9);
  }
}

+ (id)chartPointWithLineSeriesPresentationStyle:(id)style
{
  styleCopy = style;
  pointColor = [styleCopy pointColor];
  [styleCopy radius];
  v6 = v5;
  pointMarkerStyle = [styleCopy pointMarkerStyle];

  v8 = [HKChartSeriesPointMarker chartPointWithColor:pointColor radius:pointMarkerStyle style:v6];

  return v8;
}

@end