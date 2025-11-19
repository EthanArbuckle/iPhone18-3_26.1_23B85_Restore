@interface FUDepartureInfo
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FUDepartureInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v25 = [(FUBaseStopInfo *)self airport];
  v27 = [v25 copyWithZone:a3];
  v24 = [(FUBaseStopInfo *)self gate];
  v26 = [v24 copyWithZone:a3];
  v23 = [(FUBaseStopInfo *)self terminal];
  v6 = [v23 copyWithZone:a3];
  v22 = [(FUBaseStopInfo *)self displayTime];
  v7 = [v22 copyWithZone:a3];
  v21 = [(FUBaseStopInfo *)self scheduledGateTime];
  v17 = [v21 copyWithZone:a3];
  v20 = [(FUBaseStopInfo *)self currentGateTime];
  v16 = [v20 copyWithZone:a3];
  v19 = [(FUBaseStopInfo *)self scheduledRunwayTime];
  v15 = [v19 copyWithZone:a3];
  v8 = [(FUBaseStopInfo *)self currentRunwayTime];
  v9 = [v8 copyWithZone:a3];
  v10 = [(FUBaseStopInfo *)self gateBufferMinutes];
  v11 = [v10 copyWithZone:a3];
  v12 = [(FUBaseStopInfo *)self runwayBufferMinutes];
  v13 = [v12 copyWithZone:a3];
  v18 = [v5 initWithAirport:v27 gate:v26 terminal:v6 displayTime:v7 scheduledGateTime:v17 currentGateTime:v16 scheduledRunwayTime:v15 currentRunwayTime:v9 gateBufferMinutes:v11 runwayBufferMinutes:v13];

  return v18;
}

@end