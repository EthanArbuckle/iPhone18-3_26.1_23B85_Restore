@interface CALNRouteHypothesisMapper
+ (id)ekTravelEngineHypothesisFromCADRouteHypothesis:(id)a3;
+ (id)ekTravelEngineHypothesisFromGEORouteHypothesis:(id)a3;
@end

@implementation CALNRouteHypothesisMapper

+ (id)ekTravelEngineHypothesisFromGEORouteHypothesis:(id)a3
{
  v3 = MEMORY[0x277CC5AF8];
  v4 = a3;
  v23 = [v3 alloc];
  v22 = [v4 transportType];
  v5 = [v4 conservativeDepartureDate];
  [v4 conservativeTravelTime];
  v7 = v6;
  v8 = [v4 suggestedDepartureDate];
  [v4 estimatedTravelTime];
  v10 = v9;
  v11 = [v4 aggressiveDepartureDate];
  [v4 aggressiveTravelTime];
  v13 = v12;
  v14 = [v4 routeName];
  v15 = [v4 supportsLiveTraffic];
  v16 = [v4 currentTrafficDensity];
  v17 = [v4 trafficDensityDescription];
  v18 = [v4 travelState];
  v19 = [v4 travelSections];

  v20 = [v23 initWithTransportType:v22 conservativeDepartureDate:v5 conservativeTravelTime:v8 suggestedDepartureDate:v11 estimatedTravelTime:v14 aggressiveDepartureDate:v15 aggressiveTravelTime:v7 routeName:v10 supportsLiveTraffic:v13 currentTrafficDensity:v16 trafficDensityDescription:v17 travelState:v18 travelSections:v19];

  return v20;
}

+ (id)ekTravelEngineHypothesisFromCADRouteHypothesis:(id)a3
{
  v3 = MEMORY[0x277CC5AF8];
  v4 = a3;
  v22 = [v3 alloc];
  v5 = [v4 transportType];
  v6 = [v4 conservativeDepartureDate];
  [v4 conservativeTravelTime];
  v8 = v7;
  v9 = [v4 suggestedDepartureDate];
  [v4 estimatedTravelTime];
  v11 = v10;
  v12 = [v4 aggressiveDepartureDate];
  [v4 aggressiveTravelTime];
  v14 = v13;
  v15 = [v4 routeName];
  v16 = [v4 supportsLiveTraffic];
  v17 = [v4 currentTrafficDensity];
  v18 = [v4 trafficDensityDescription];
  v19 = [v4 travelState];

  v20 = [v22 initWithTransportType:v5 conservativeDepartureDate:v6 conservativeTravelTime:v9 suggestedDepartureDate:v12 estimatedTravelTime:v15 aggressiveDepartureDate:v16 aggressiveTravelTime:v8 routeName:v11 supportsLiveTraffic:v14 currentTrafficDensity:v17 trafficDensityDescription:v18 travelState:v19];

  return v20;
}

@end