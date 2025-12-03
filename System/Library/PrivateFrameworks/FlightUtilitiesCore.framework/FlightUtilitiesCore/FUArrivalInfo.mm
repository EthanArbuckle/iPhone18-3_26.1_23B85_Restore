@interface FUArrivalInfo
- (BOOL)isEqual:(id)equal;
- (FUArrivalInfo)initWithAirport:(id)airport gate:(id)gate terminal:(id)terminal baggageClaim:(id)claim divertedAirport:(id)divertedAirport displayTime:(id)time scheduledGateTime:(id)gateTime currentGateTime:(id)self0 scheduledRunwayTime:(id)self1 currentRunwayTime:(id)self2 gateBufferMinutes:(id)self3 runwayBufferMinutes:(id)self4;
- (FUArrivalInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FUArrivalInfo

- (FUArrivalInfo)initWithAirport:(id)airport gate:(id)gate terminal:(id)terminal baggageClaim:(id)claim divertedAirport:(id)divertedAirport displayTime:(id)time scheduledGateTime:(id)gateTime currentGateTime:(id)self0 scheduledRunwayTime:(id)self1 currentRunwayTime:(id)self2 gateBufferMinutes:(id)self3 runwayBufferMinutes:(id)self4
{
  claimCopy = claim;
  obj = divertedAirport;
  divertedAirportCopy = divertedAirport;
  v27.receiver = self;
  v27.super_class = FUArrivalInfo;
  v20 = [(FUBaseStopInfo *)&v27 initWithAirport:airport gate:gate terminal:terminal displayTime:time scheduledGateTime:gateTime currentGateTime:currentGateTime scheduledRunwayTime:runwayTime currentRunwayTime:currentRunwayTime gateBufferMinutes:minutes runwayBufferMinutes:bufferMinutes];
  if (v20)
  {
    v21 = [claimCopy copy];
    baggageClaim = v20->_baggageClaim;
    v20->_baggageClaim = v21;

    objc_storeStrong(&v20->_divertedAirport, obj);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16.receiver = self;
      v16.super_class = FUArrivalInfo;
      if ([(FUBaseStopInfo *)&v16 isEqual:equalCopy])
      {
        baggageClaim = [(FUArrivalInfo *)self baggageClaim];
        baggageClaim2 = [(FUArrivalInfo *)equalCopy baggageClaim];
        if (baggageClaim == baggageClaim2 || (-[FUArrivalInfo baggageClaim](self, "baggageClaim"), v3 = objc_claimAutoreleasedReturnValue(), -[FUArrivalInfo baggageClaim](equalCopy, "baggageClaim"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          divertedAirport = [(FUArrivalInfo *)self divertedAirport];
          divertedAirport2 = [(FUArrivalInfo *)equalCopy divertedAirport];
          v12 = divertedAirport2;
          if (divertedAirport == divertedAirport2)
          {

            v9 = 1;
          }

          else
          {
            divertedAirport3 = [(FUArrivalInfo *)self divertedAirport];
            divertedAirport4 = [(FUArrivalInfo *)equalCopy divertedAirport];
            v9 = [divertedAirport3 isEqual:divertedAirport4];
          }

          if (baggageClaim == baggageClaim2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v9 = 0;
        }

LABEL_14:
        goto LABEL_15;
      }
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = [objc_opt_class() allocWithZone:zone];
  airport = [(FUBaseStopInfo *)self airport];
  v31 = [airport copyWithZone:zone];
  gate = [(FUBaseStopInfo *)self gate];
  v30 = [gate copyWithZone:zone];
  terminal = [(FUBaseStopInfo *)self terminal];
  v29 = [terminal copyWithZone:zone];
  baggageClaim = [(FUArrivalInfo *)self baggageClaim];
  v5 = [baggageClaim copyWithZone:zone];
  divertedAirport = [(FUArrivalInfo *)self divertedAirport];
  v18 = [divertedAirport copyWithZone:zone];
  displayTime = [(FUBaseStopInfo *)self displayTime];
  v16 = [displayTime copyWithZone:zone];
  scheduledGateTime = [(FUBaseStopInfo *)self scheduledGateTime];
  v15 = [scheduledGateTime copyWithZone:zone];
  currentGateTime = [(FUBaseStopInfo *)self currentGateTime];
  v14 = [currentGateTime copyWithZone:zone];
  scheduledRunwayTime = [(FUBaseStopInfo *)self scheduledRunwayTime];
  v6 = [scheduledRunwayTime copyWithZone:zone];
  currentRunwayTime = [(FUBaseStopInfo *)self currentRunwayTime];
  v8 = [currentRunwayTime copyWithZone:zone];
  gateBufferMinutes = [(FUBaseStopInfo *)self gateBufferMinutes];
  v10 = [gateBufferMinutes copyWithZone:zone];
  runwayBufferMinutes = [(FUBaseStopInfo *)self runwayBufferMinutes];
  v12 = [runwayBufferMinutes copyWithZone:zone];
  v20 = [v19 initWithAirport:v31 gate:v30 terminal:v29 baggageClaim:v5 divertedAirport:v18 displayTime:v16 scheduledGateTime:v15 currentGateTime:v14 scheduledRunwayTime:v6 currentRunwayTime:v8 gateBufferMinutes:v10 runwayBufferMinutes:v12];

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FUArrivalInfo;
  coderCopy = coder;
  [(FUBaseStopInfo *)&v7 encodeWithCoder:coderCopy];
  v5 = [(FUArrivalInfo *)self baggageClaim:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"baggageClaim"];

  divertedAirport = [(FUArrivalInfo *)self divertedAirport];
  [coderCopy encodeObject:divertedAirport forKey:@"divertedAirport"];
}

- (FUArrivalInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FUArrivalInfo;
  v5 = [(FUBaseStopInfo *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baggageClaim"];
    baggageClaim = v5->_baggageClaim;
    v5->_baggageClaim = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"divertedAirport"];
    divertedAirport = v5->_divertedAirport;
    v5->_divertedAirport = v8;
  }

  return v5;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  airport = [(FUBaseStopInfo *)self airport];
  gate = [(FUBaseStopInfo *)self gate];
  terminal = [(FUBaseStopInfo *)self terminal];
  baggageClaim = [(FUArrivalInfo *)self baggageClaim];
  divertedAirport = [(FUArrivalInfo *)self divertedAirport];
  scheduledGateTime = [(FUBaseStopInfo *)self scheduledGateTime];
  currentGateTime = [(FUBaseStopInfo *)self currentGateTime];
  scheduledRunwayTime = [(FUBaseStopInfo *)self scheduledRunwayTime];
  currentRunwayTime = [(FUBaseStopInfo *)self currentRunwayTime];
  gateBufferMinutes = [(FUBaseStopInfo *)self gateBufferMinutes];
  runwayBufferMinutes = [(FUBaseStopInfo *)self runwayBufferMinutes];
  v12 = [v16 stringWithFormat:@"<%@: %p> {airport: %@, gate: %@, terminal: %@, baggageClaim: %@, divertedAirport: %@, scheduledGateTime: %@, currentGateTime: %@, scheduledRunwayTime: %@, currentRunwayTime: %@, gateBufferMinutes: %@, runwayBufferMinutes: %@}", v15, self, airport, gate, terminal, baggageClaim, divertedAirport, scheduledGateTime, currentGateTime, scheduledRunwayTime, currentRunwayTime, gateBufferMinutes, runwayBufferMinutes];

  return v12;
}

@end