@interface HKChartSummaryTimescopeTrend
- (BOOL)isEqual:(id)a3;
- (id)initForTimeScope:(int64_t)a3 trendSpans:(id)a4 localizableTrendDescription:(id)a5;
- (unint64_t)hash;
@end

@implementation HKChartSummaryTimescopeTrend

- (id)initForTimeScope:(int64_t)a3 trendSpans:(id)a4 localizableTrendDescription:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HKChartSummaryTimescopeTrend;
  v11 = [(HKChartSummaryTimescopeTrend *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_timeScope = a3;
    objc_storeStrong(&v11->_trendSpans, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_timeScope == v5->_timeScope && [(NSArray *)self->_trendSpans isEqual:v5->_trendSpans]&& [(NSString *)self->_localizableTrendDescription isEqualToString:v5->_localizableTrendDescription];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  timeScope = self->_timeScope;
  v4 = [(NSArray *)self->_trendSpans hash]^ timeScope;
  return v4 ^ [(NSString *)self->_localizableTrendDescription hash];
}

@end