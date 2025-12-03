@interface FUDepartureInfo
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FUDepartureInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  airport = [(FUBaseStopInfo *)self airport];
  v27 = [airport copyWithZone:zone];
  gate = [(FUBaseStopInfo *)self gate];
  v26 = [gate copyWithZone:zone];
  terminal = [(FUBaseStopInfo *)self terminal];
  v6 = [terminal copyWithZone:zone];
  displayTime = [(FUBaseStopInfo *)self displayTime];
  v7 = [displayTime copyWithZone:zone];
  scheduledGateTime = [(FUBaseStopInfo *)self scheduledGateTime];
  v17 = [scheduledGateTime copyWithZone:zone];
  currentGateTime = [(FUBaseStopInfo *)self currentGateTime];
  v16 = [currentGateTime copyWithZone:zone];
  scheduledRunwayTime = [(FUBaseStopInfo *)self scheduledRunwayTime];
  v15 = [scheduledRunwayTime copyWithZone:zone];
  currentRunwayTime = [(FUBaseStopInfo *)self currentRunwayTime];
  v9 = [currentRunwayTime copyWithZone:zone];
  gateBufferMinutes = [(FUBaseStopInfo *)self gateBufferMinutes];
  v11 = [gateBufferMinutes copyWithZone:zone];
  runwayBufferMinutes = [(FUBaseStopInfo *)self runwayBufferMinutes];
  v13 = [runwayBufferMinutes copyWithZone:zone];
  v18 = [v5 initWithAirport:v27 gate:v26 terminal:v6 displayTime:v7 scheduledGateTime:v17 currentGateTime:v16 scheduledRunwayTime:v15 currentRunwayTime:v9 gateBufferMinutes:v11 runwayBufferMinutes:v13];

  return v18;
}

@end