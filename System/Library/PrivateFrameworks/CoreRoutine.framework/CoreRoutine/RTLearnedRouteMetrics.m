@interface RTLearnedRouteMetrics
- (BOOL)isEqual:(id)a3;
- (RTLearnedRouteMetrics)initWithAllRoutesCountForThisODPair:(unint64_t)a3 allTraversalCountBetweenThisODPair:(unint64_t)a4 routeTraversalCount:(unint64_t)a5 routeTraversalCountOnTravelDayOfWeek:(unint64_t)a6 routeTravelCountOnTravelDayOfWeekHourOfDay:(unint64_t)a7 lastTravelledDate:(id)a8;
- (RTLearnedRouteMetrics)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLearnedRouteMetrics

- (RTLearnedRouteMetrics)initWithAllRoutesCountForThisODPair:(unint64_t)a3 allTraversalCountBetweenThisODPair:(unint64_t)a4 routeTraversalCount:(unint64_t)a5 routeTraversalCountOnTravelDayOfWeek:(unint64_t)a6 routeTravelCountOnTravelDayOfWeekHourOfDay:(unint64_t)a7 lastTravelledDate:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = RTLearnedRouteMetrics;
  v16 = [(RTLearnedRouteMetrics *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_allRoutesCountForThisODPair = a3;
    v16->_allTraversalCountBetweenThisODPair = a4;
    v16->_routeTraversalCount = a5;
    v16->_routeTraversalCountOnTravelDayOfWeek = a6;
    v16->_routeTravelCountOnTravelDayOfWeekHourOfDay = a7;
    objc_storeStrong(&v16->_lastTravelledDate, a8);
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[RTLearnedRouteMetrics allRoutesCountForThisODPair](self forKey:{"allRoutesCountForThisODPair"), @"allRoutesCountForThisODPair"}];
  [v4 encodeInteger:-[RTLearnedRouteMetrics allTraversalCountBetweenThisODPair](self forKey:{"allTraversalCountBetweenThisODPair"), @"allTraversalCountBetweenThisODPair"}];
  [v4 encodeInteger:-[RTLearnedRouteMetrics routeTraversalCount](self forKey:{"routeTraversalCount"), @"routeTraversalCount"}];
  [v4 encodeInteger:-[RTLearnedRouteMetrics routeTraversalCountOnTravelDayOfWeek](self forKey:{"routeTraversalCountOnTravelDayOfWeek"), @"routeTraversalCountOnTravelDayOfWeek"}];
  [v4 encodeInteger:-[RTLearnedRouteMetrics routeTravelCountOnTravelDayOfWeekHourOfDay](self forKey:{"routeTravelCountOnTravelDayOfWeekHourOfDay"), @"routeTravelCountOnTravelDayOfWeekHourOfDay"}];
  v5 = [(RTLearnedRouteMetrics *)self lastTravelledDate];
  [v4 encodeObject:v5 forKey:@"lastTravelledDate"];
}

- (RTLearnedRouteMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"allRoutesCountForThisODPair"];
  v6 = [v4 decodeIntegerForKey:@"allTraversalCountBetweenThisODPair"];
  v7 = [v4 decodeIntegerForKey:@"routeTraversalCount"];
  v8 = [v4 decodeIntegerForKey:@"routeTraversalCountOnTravelDayOfWeek"];
  v9 = [v4 decodeIntegerForKey:@"routeTravelCountOnTravelDayOfWeekHourOfDay"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastTravelledDate"];

  v11 = [(RTLearnedRouteMetrics *)self initWithAllRoutesCountForThisODPair:v5 allTraversalCountBetweenThisODPair:v6 routeTraversalCount:v7 routeTraversalCountOnTravelDayOfWeek:v8 routeTravelCountOnTravelDayOfWeekHourOfDay:v9 lastTravelledDate:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self | v4)
  {
    v6 = 0;
    if (self)
    {
      if (v4)
      {
        v21 = [v4 isMemberOfClass:objc_opt_class()];
        v20 = [(RTLearnedRouteMetrics *)self allRoutesCountForThisODPair];
        v19 = [v5 allRoutesCountForThisODPair];
        v18 = [(RTLearnedRouteMetrics *)self allTraversalCountBetweenThisODPair];
        v8 = [v5 allTraversalCountBetweenThisODPair];
        v9 = [(RTLearnedRouteMetrics *)self routeTraversalCount];
        v10 = [v5 routeTraversalCount];
        v11 = [(RTLearnedRouteMetrics *)self routeTraversalCountOnTravelDayOfWeek];
        v12 = [v5 routeTraversalCountOnTravelDayOfWeek];
        v17 = [(RTLearnedRouteMetrics *)self routeTravelCountOnTravelDayOfWeekHourOfDay];
        v13 = [v5 routeTravelCountOnTravelDayOfWeekHourOfDay];
        v14 = [(RTLearnedRouteMetrics *)self lastTravelledDate];
        v15 = [v5 lastTravelledDate];
        v16 = [v14 isEqualToDate:v15];

        v6 = 0;
        if (v21)
        {
          if (v20 == v19 && v18 == v8 && v9 == v10 && v11 == v12)
          {
            v6 = (v17 == v13) & v16;
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTLearnedRouteMetrics *)self allRoutesCountForThisODPair];
  v5 = [(RTLearnedRouteMetrics *)self allTraversalCountBetweenThisODPair];
  v6 = [(RTLearnedRouteMetrics *)self routeTraversalCount];
  v7 = [(RTLearnedRouteMetrics *)self routeTraversalCountOnTravelDayOfWeek];
  v8 = [(RTLearnedRouteMetrics *)self routeTravelCountOnTravelDayOfWeekHourOfDay];
  v9 = [(RTLearnedRouteMetrics *)self lastTravelledDate];
  v10 = [v9 stringFromDate];
  v11 = [v3 stringWithFormat:@"allRoutesCountForThisODPair, %lu, allTraversalCountBetweenThisODPair, %lu, routeTraversalCount, %lu, routeTraversalCountOnTravelDayOfWeek, %lu, routeTravelCountOnTravelDayOfWeekHourOfDay, %lu, lastTravelledDate, %@", v4, v5, v6, v7, v8, v10];

  return v11;
}

@end