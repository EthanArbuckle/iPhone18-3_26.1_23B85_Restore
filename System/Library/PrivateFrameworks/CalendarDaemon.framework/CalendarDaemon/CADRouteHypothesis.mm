@interface CADRouteHypothesis
- (CADRouteHypothesis)initWithCoder:(id)a3;
- (CADRouteHypothesis)initWithTransportType:(int)a3 conservativeDepartureDate:(id)a4 conservativeTravelTime:(double)a5 suggestedDepartureDate:(id)a6 estimatedTravelTime:(double)a7 aggressiveDepartureDate:(id)a8 aggressiveTravelTime:(double)a9 routeName:(id)a10 supportsLiveTraffic:(BOOL)a11 currentTrafficDensity:(unint64_t)a12 trafficDensityDescription:(id)a13 travelState:(int64_t)a14;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADRouteHypothesis

- (CADRouteHypothesis)initWithTransportType:(int)a3 conservativeDepartureDate:(id)a4 conservativeTravelTime:(double)a5 suggestedDepartureDate:(id)a6 estimatedTravelTime:(double)a7 aggressiveDepartureDate:(id)a8 aggressiveTravelTime:(double)a9 routeName:(id)a10 supportsLiveTraffic:(BOOL)a11 currentTrafficDensity:(unint64_t)a12 trafficDensityDescription:(id)a13 travelState:(int64_t)a14
{
  v23 = a4;
  v24 = a6;
  v25 = a8;
  v26 = a10;
  v27 = a13;
  v41.receiver = self;
  v41.super_class = CADRouteHypothesis;
  v28 = [(CADRouteHypothesis *)&v41 init];
  v29 = v28;
  if (v28)
  {
    v28->_transportType = a3;
    v30 = [v23 copy];
    conservativeDepartureDate = v29->_conservativeDepartureDate;
    v29->_conservativeDepartureDate = v30;

    v29->_conservativeTravelTime = a5;
    v32 = [v24 copy];
    suggestedDepartureDate = v29->_suggestedDepartureDate;
    v29->_suggestedDepartureDate = v32;

    v29->_estimatedTravelTime = a7;
    v34 = [v25 copy];
    aggressiveDepartureDate = v29->_aggressiveDepartureDate;
    v29->_aggressiveDepartureDate = v34;

    v29->_aggressiveTravelTime = a9;
    v36 = [v26 copy];
    routeName = v29->_routeName;
    v29->_routeName = v36;

    v29->_supportsLiveTraffic = a11;
    v29->_currentTrafficDensity = a12;
    v38 = [v27 copy];
    trafficDensityDescription = v29->_trafficDensityDescription;
    v29->_trafficDensityDescription = v38;

    v29->_travelState = a14;
  }

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInt:{-[CADRouteHypothesis transportType](self, "transportType")}];
  [v5 encodeObject:v6 forKey:@"transportType"];

  v7 = [(CADRouteHypothesis *)self conservativeDepartureDate];
  [v5 encodeObject:v7 forKey:@"conservativeDepartureDate"];

  v8 = MEMORY[0x277CCABB0];
  [(CADRouteHypothesis *)self conservativeTravelTime];
  v9 = [v8 numberWithDouble:?];
  [v5 encodeObject:v9 forKey:@"conservativeTravelTime"];

  v10 = [(CADRouteHypothesis *)self suggestedDepartureDate];
  [v5 encodeObject:v10 forKey:@"suggestedDepartureDate"];

  v11 = MEMORY[0x277CCABB0];
  [(CADRouteHypothesis *)self estimatedTravelTime];
  v12 = [v11 numberWithDouble:?];
  [v5 encodeObject:v12 forKey:@"estimatedTravelTime"];

  v13 = [(CADRouteHypothesis *)self aggressiveDepartureDate];
  [v5 encodeObject:v13 forKey:@"aggressiveDepartureDate"];

  v14 = MEMORY[0x277CCABB0];
  [(CADRouteHypothesis *)self aggressiveTravelTime];
  v15 = [v14 numberWithDouble:?];
  [v5 encodeObject:v15 forKey:@"aggressiveTravelTime"];

  v16 = [(CADRouteHypothesis *)self routeName];
  [v5 encodeObject:v16 forKey:@"routeName"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[CADRouteHypothesis supportsLiveTraffic](self, "supportsLiveTraffic")}];
  [v5 encodeObject:v17 forKey:@"supportsLiveTraffic"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CADRouteHypothesis currentTrafficDensity](self, "currentTrafficDensity")}];
  [v5 encodeObject:v18 forKey:@"currentTrafficDensity"];

  v19 = [(CADRouteHypothesis *)self trafficDensityDescription];
  [v5 encodeObject:v19 forKey:@"trafficDensityDescription"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADRouteHypothesis travelState](self, "travelState")}];
  [v5 encodeObject:v20 forKey:@"travelState"];
}

- (CADRouteHypothesis)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"transportType"];
  v27 = [v4 intValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"conservativeDepartureDate"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"conservativeTravelTime"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedDepartureDate"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTravelTime"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"aggressiveDepartureDate"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"aggressiveTravelTime"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"routeName"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"supportsLiveTraffic"];
  v19 = [v18 BOOLValue];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"currentTrafficDensity"];
  v21 = [v20 unsignedIntegerValue];

  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"trafficDensityDescription"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"travelState"];

  v24 = [v23 integerValue];
  v25 = [(CADRouteHypothesis *)self initWithTransportType:v27 conservativeDepartureDate:v5 conservativeTravelTime:v9 suggestedDepartureDate:v13 estimatedTravelTime:v17 aggressiveDepartureDate:v19 aggressiveTravelTime:v8 routeName:v12 supportsLiveTraffic:v16 currentTrafficDensity:v21 trafficDensityDescription:v22 travelState:v24];

  return v25;
}

@end