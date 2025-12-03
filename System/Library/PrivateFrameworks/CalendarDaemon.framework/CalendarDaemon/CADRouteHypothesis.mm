@interface CADRouteHypothesis
- (CADRouteHypothesis)initWithCoder:(id)coder;
- (CADRouteHypothesis)initWithTransportType:(int)type conservativeDepartureDate:(id)date conservativeTravelTime:(double)time suggestedDepartureDate:(id)departureDate estimatedTravelTime:(double)travelTime aggressiveDepartureDate:(id)aggressiveDepartureDate aggressiveTravelTime:(double)aggressiveTravelTime routeName:(id)self0 supportsLiveTraffic:(BOOL)self1 currentTrafficDensity:(unint64_t)self2 trafficDensityDescription:(id)self3 travelState:(int64_t)self4;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADRouteHypothesis

- (CADRouteHypothesis)initWithTransportType:(int)type conservativeDepartureDate:(id)date conservativeTravelTime:(double)time suggestedDepartureDate:(id)departureDate estimatedTravelTime:(double)travelTime aggressiveDepartureDate:(id)aggressiveDepartureDate aggressiveTravelTime:(double)aggressiveTravelTime routeName:(id)self0 supportsLiveTraffic:(BOOL)self1 currentTrafficDensity:(unint64_t)self2 trafficDensityDescription:(id)self3 travelState:(int64_t)self4
{
  dateCopy = date;
  departureDateCopy = departureDate;
  aggressiveDepartureDateCopy = aggressiveDepartureDate;
  nameCopy = name;
  descriptionCopy = description;
  v41.receiver = self;
  v41.super_class = CADRouteHypothesis;
  v28 = [(CADRouteHypothesis *)&v41 init];
  v29 = v28;
  if (v28)
  {
    v28->_transportType = type;
    v30 = [dateCopy copy];
    conservativeDepartureDate = v29->_conservativeDepartureDate;
    v29->_conservativeDepartureDate = v30;

    v29->_conservativeTravelTime = time;
    v32 = [departureDateCopy copy];
    suggestedDepartureDate = v29->_suggestedDepartureDate;
    v29->_suggestedDepartureDate = v32;

    v29->_estimatedTravelTime = travelTime;
    v34 = [aggressiveDepartureDateCopy copy];
    aggressiveDepartureDate = v29->_aggressiveDepartureDate;
    v29->_aggressiveDepartureDate = v34;

    v29->_aggressiveTravelTime = aggressiveTravelTime;
    v36 = [nameCopy copy];
    routeName = v29->_routeName;
    v29->_routeName = v36;

    v29->_supportsLiveTraffic = traffic;
    v29->_currentTrafficDensity = density;
    v38 = [descriptionCopy copy];
    trafficDensityDescription = v29->_trafficDensityDescription;
    v29->_trafficDensityDescription = v38;

    v29->_travelState = state;
  }

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithInt:{-[CADRouteHypothesis transportType](self, "transportType")}];
  [coderCopy encodeObject:v6 forKey:@"transportType"];

  conservativeDepartureDate = [(CADRouteHypothesis *)self conservativeDepartureDate];
  [coderCopy encodeObject:conservativeDepartureDate forKey:@"conservativeDepartureDate"];

  v8 = MEMORY[0x277CCABB0];
  [(CADRouteHypothesis *)self conservativeTravelTime];
  v9 = [v8 numberWithDouble:?];
  [coderCopy encodeObject:v9 forKey:@"conservativeTravelTime"];

  suggestedDepartureDate = [(CADRouteHypothesis *)self suggestedDepartureDate];
  [coderCopy encodeObject:suggestedDepartureDate forKey:@"suggestedDepartureDate"];

  v11 = MEMORY[0x277CCABB0];
  [(CADRouteHypothesis *)self estimatedTravelTime];
  v12 = [v11 numberWithDouble:?];
  [coderCopy encodeObject:v12 forKey:@"estimatedTravelTime"];

  aggressiveDepartureDate = [(CADRouteHypothesis *)self aggressiveDepartureDate];
  [coderCopy encodeObject:aggressiveDepartureDate forKey:@"aggressiveDepartureDate"];

  v14 = MEMORY[0x277CCABB0];
  [(CADRouteHypothesis *)self aggressiveTravelTime];
  v15 = [v14 numberWithDouble:?];
  [coderCopy encodeObject:v15 forKey:@"aggressiveTravelTime"];

  routeName = [(CADRouteHypothesis *)self routeName];
  [coderCopy encodeObject:routeName forKey:@"routeName"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[CADRouteHypothesis supportsLiveTraffic](self, "supportsLiveTraffic")}];
  [coderCopy encodeObject:v17 forKey:@"supportsLiveTraffic"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CADRouteHypothesis currentTrafficDensity](self, "currentTrafficDensity")}];
  [coderCopy encodeObject:v18 forKey:@"currentTrafficDensity"];

  trafficDensityDescription = [(CADRouteHypothesis *)self trafficDensityDescription];
  [coderCopy encodeObject:trafficDensityDescription forKey:@"trafficDensityDescription"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADRouteHypothesis travelState](self, "travelState")}];
  [coderCopy encodeObject:v20 forKey:@"travelState"];
}

- (CADRouteHypothesis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transportType"];
  intValue = [v4 intValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conservativeDepartureDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conservativeTravelTime"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedDepartureDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTravelTime"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aggressiveDepartureDate"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aggressiveTravelTime"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeName"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsLiveTraffic"];
  bOOLValue = [v18 BOOLValue];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentTrafficDensity"];
  unsignedIntegerValue = [v20 unsignedIntegerValue];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trafficDensityDescription"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"travelState"];

  integerValue = [v23 integerValue];
  v25 = [(CADRouteHypothesis *)self initWithTransportType:intValue conservativeDepartureDate:v5 conservativeTravelTime:v9 suggestedDepartureDate:v13 estimatedTravelTime:v17 aggressiveDepartureDate:bOOLValue aggressiveTravelTime:v8 routeName:v12 supportsLiveTraffic:v16 currentTrafficDensity:unsignedIntegerValue trafficDensityDescription:v22 travelState:integerValue];

  return v25;
}

@end