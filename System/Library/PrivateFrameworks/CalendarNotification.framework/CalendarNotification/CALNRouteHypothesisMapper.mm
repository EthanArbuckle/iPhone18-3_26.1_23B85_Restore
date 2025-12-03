@interface CALNRouteHypothesisMapper
+ (id)ekTravelEngineHypothesisFromCADRouteHypothesis:(id)hypothesis;
+ (id)ekTravelEngineHypothesisFromGEORouteHypothesis:(id)hypothesis;
@end

@implementation CALNRouteHypothesisMapper

+ (id)ekTravelEngineHypothesisFromGEORouteHypothesis:(id)hypothesis
{
  v3 = MEMORY[0x277CC5AF8];
  hypothesisCopy = hypothesis;
  v23 = [v3 alloc];
  transportType = [hypothesisCopy transportType];
  conservativeDepartureDate = [hypothesisCopy conservativeDepartureDate];
  [hypothesisCopy conservativeTravelTime];
  v7 = v6;
  suggestedDepartureDate = [hypothesisCopy suggestedDepartureDate];
  [hypothesisCopy estimatedTravelTime];
  v10 = v9;
  aggressiveDepartureDate = [hypothesisCopy aggressiveDepartureDate];
  [hypothesisCopy aggressiveTravelTime];
  v13 = v12;
  routeName = [hypothesisCopy routeName];
  supportsLiveTraffic = [hypothesisCopy supportsLiveTraffic];
  currentTrafficDensity = [hypothesisCopy currentTrafficDensity];
  trafficDensityDescription = [hypothesisCopy trafficDensityDescription];
  travelState = [hypothesisCopy travelState];
  travelSections = [hypothesisCopy travelSections];

  v20 = [v23 initWithTransportType:transportType conservativeDepartureDate:conservativeDepartureDate conservativeTravelTime:suggestedDepartureDate suggestedDepartureDate:aggressiveDepartureDate estimatedTravelTime:routeName aggressiveDepartureDate:supportsLiveTraffic aggressiveTravelTime:v7 routeName:v10 supportsLiveTraffic:v13 currentTrafficDensity:currentTrafficDensity trafficDensityDescription:trafficDensityDescription travelState:travelState travelSections:travelSections];

  return v20;
}

+ (id)ekTravelEngineHypothesisFromCADRouteHypothesis:(id)hypothesis
{
  v3 = MEMORY[0x277CC5AF8];
  hypothesisCopy = hypothesis;
  v22 = [v3 alloc];
  transportType = [hypothesisCopy transportType];
  conservativeDepartureDate = [hypothesisCopy conservativeDepartureDate];
  [hypothesisCopy conservativeTravelTime];
  v8 = v7;
  suggestedDepartureDate = [hypothesisCopy suggestedDepartureDate];
  [hypothesisCopy estimatedTravelTime];
  v11 = v10;
  aggressiveDepartureDate = [hypothesisCopy aggressiveDepartureDate];
  [hypothesisCopy aggressiveTravelTime];
  v14 = v13;
  routeName = [hypothesisCopy routeName];
  supportsLiveTraffic = [hypothesisCopy supportsLiveTraffic];
  currentTrafficDensity = [hypothesisCopy currentTrafficDensity];
  trafficDensityDescription = [hypothesisCopy trafficDensityDescription];
  travelState = [hypothesisCopy travelState];

  v20 = [v22 initWithTransportType:transportType conservativeDepartureDate:conservativeDepartureDate conservativeTravelTime:suggestedDepartureDate suggestedDepartureDate:aggressiveDepartureDate estimatedTravelTime:routeName aggressiveDepartureDate:supportsLiveTraffic aggressiveTravelTime:v8 routeName:v11 supportsLiveTraffic:v14 currentTrafficDensity:currentTrafficDensity trafficDensityDescription:trafficDensityDescription travelState:travelState];

  return v20;
}

@end