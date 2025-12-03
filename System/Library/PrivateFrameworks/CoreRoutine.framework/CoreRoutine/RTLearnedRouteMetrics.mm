@interface RTLearnedRouteMetrics
- (BOOL)isEqual:(id)equal;
- (RTLearnedRouteMetrics)initWithAllRoutesCountForThisODPair:(unint64_t)pair allTraversalCountBetweenThisODPair:(unint64_t)dPair routeTraversalCount:(unint64_t)count routeTraversalCountOnTravelDayOfWeek:(unint64_t)week routeTravelCountOnTravelDayOfWeekHourOfDay:(unint64_t)day lastTravelledDate:(id)date;
- (RTLearnedRouteMetrics)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLearnedRouteMetrics

- (RTLearnedRouteMetrics)initWithAllRoutesCountForThisODPair:(unint64_t)pair allTraversalCountBetweenThisODPair:(unint64_t)dPair routeTraversalCount:(unint64_t)count routeTraversalCountOnTravelDayOfWeek:(unint64_t)week routeTravelCountOnTravelDayOfWeekHourOfDay:(unint64_t)day lastTravelledDate:(id)date
{
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = RTLearnedRouteMetrics;
  v16 = [(RTLearnedRouteMetrics *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_allRoutesCountForThisODPair = pair;
    v16->_allTraversalCountBetweenThisODPair = dPair;
    v16->_routeTraversalCount = count;
    v16->_routeTraversalCountOnTravelDayOfWeek = week;
    v16->_routeTravelCountOnTravelDayOfWeekHourOfDay = day;
    objc_storeStrong(&v16->_lastTravelledDate, date);
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[RTLearnedRouteMetrics allRoutesCountForThisODPair](self forKey:{"allRoutesCountForThisODPair"), @"allRoutesCountForThisODPair"}];
  [coderCopy encodeInteger:-[RTLearnedRouteMetrics allTraversalCountBetweenThisODPair](self forKey:{"allTraversalCountBetweenThisODPair"), @"allTraversalCountBetweenThisODPair"}];
  [coderCopy encodeInteger:-[RTLearnedRouteMetrics routeTraversalCount](self forKey:{"routeTraversalCount"), @"routeTraversalCount"}];
  [coderCopy encodeInteger:-[RTLearnedRouteMetrics routeTraversalCountOnTravelDayOfWeek](self forKey:{"routeTraversalCountOnTravelDayOfWeek"), @"routeTraversalCountOnTravelDayOfWeek"}];
  [coderCopy encodeInteger:-[RTLearnedRouteMetrics routeTravelCountOnTravelDayOfWeekHourOfDay](self forKey:{"routeTravelCountOnTravelDayOfWeekHourOfDay"), @"routeTravelCountOnTravelDayOfWeekHourOfDay"}];
  lastTravelledDate = [(RTLearnedRouteMetrics *)self lastTravelledDate];
  [coderCopy encodeObject:lastTravelledDate forKey:@"lastTravelledDate"];
}

- (RTLearnedRouteMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"allRoutesCountForThisODPair"];
  v6 = [coderCopy decodeIntegerForKey:@"allTraversalCountBetweenThisODPair"];
  v7 = [coderCopy decodeIntegerForKey:@"routeTraversalCount"];
  v8 = [coderCopy decodeIntegerForKey:@"routeTraversalCountOnTravelDayOfWeek"];
  v9 = [coderCopy decodeIntegerForKey:@"routeTravelCountOnTravelDayOfWeekHourOfDay"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastTravelledDate"];

  v11 = [(RTLearnedRouteMetrics *)self initWithAllRoutesCountForThisODPair:v5 allTraversalCountBetweenThisODPair:v6 routeTraversalCount:v7 routeTraversalCountOnTravelDayOfWeek:v8 routeTravelCountOnTravelDayOfWeekHourOfDay:v9 lastTravelledDate:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self | equalCopy)
  {
    v6 = 0;
    if (self)
    {
      if (equalCopy)
      {
        v21 = [equalCopy isMemberOfClass:objc_opt_class()];
        allRoutesCountForThisODPair = [(RTLearnedRouteMetrics *)self allRoutesCountForThisODPair];
        allRoutesCountForThisODPair2 = [v5 allRoutesCountForThisODPair];
        allTraversalCountBetweenThisODPair = [(RTLearnedRouteMetrics *)self allTraversalCountBetweenThisODPair];
        allTraversalCountBetweenThisODPair2 = [v5 allTraversalCountBetweenThisODPair];
        routeTraversalCount = [(RTLearnedRouteMetrics *)self routeTraversalCount];
        routeTraversalCount2 = [v5 routeTraversalCount];
        routeTraversalCountOnTravelDayOfWeek = [(RTLearnedRouteMetrics *)self routeTraversalCountOnTravelDayOfWeek];
        routeTraversalCountOnTravelDayOfWeek2 = [v5 routeTraversalCountOnTravelDayOfWeek];
        routeTravelCountOnTravelDayOfWeekHourOfDay = [(RTLearnedRouteMetrics *)self routeTravelCountOnTravelDayOfWeekHourOfDay];
        routeTravelCountOnTravelDayOfWeekHourOfDay2 = [v5 routeTravelCountOnTravelDayOfWeekHourOfDay];
        lastTravelledDate = [(RTLearnedRouteMetrics *)self lastTravelledDate];
        lastTravelledDate2 = [v5 lastTravelledDate];
        v16 = [lastTravelledDate isEqualToDate:lastTravelledDate2];

        v6 = 0;
        if (v21)
        {
          if (allRoutesCountForThisODPair == allRoutesCountForThisODPair2 && allTraversalCountBetweenThisODPair == allTraversalCountBetweenThisODPair2 && routeTraversalCount == routeTraversalCount2 && routeTraversalCountOnTravelDayOfWeek == routeTraversalCountOnTravelDayOfWeek2)
          {
            v6 = (routeTravelCountOnTravelDayOfWeekHourOfDay == routeTravelCountOnTravelDayOfWeekHourOfDay2) & v16;
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
  allRoutesCountForThisODPair = [(RTLearnedRouteMetrics *)self allRoutesCountForThisODPair];
  allTraversalCountBetweenThisODPair = [(RTLearnedRouteMetrics *)self allTraversalCountBetweenThisODPair];
  routeTraversalCount = [(RTLearnedRouteMetrics *)self routeTraversalCount];
  routeTraversalCountOnTravelDayOfWeek = [(RTLearnedRouteMetrics *)self routeTraversalCountOnTravelDayOfWeek];
  routeTravelCountOnTravelDayOfWeekHourOfDay = [(RTLearnedRouteMetrics *)self routeTravelCountOnTravelDayOfWeekHourOfDay];
  lastTravelledDate = [(RTLearnedRouteMetrics *)self lastTravelledDate];
  stringFromDate = [lastTravelledDate stringFromDate];
  v11 = [v3 stringWithFormat:@"allRoutesCountForThisODPair, %lu, allTraversalCountBetweenThisODPair, %lu, routeTraversalCount, %lu, routeTraversalCountOnTravelDayOfWeek, %lu, routeTravelCountOnTravelDayOfWeekHourOfDay, %lu, lastTravelledDate, %@", allRoutesCountForThisODPair, allTraversalCountBetweenThisODPair, routeTraversalCount, routeTraversalCountOnTravelDayOfWeek, routeTravelCountOnTravelDayOfWeekHourOfDay, stringFromDate];

  return v11;
}

@end