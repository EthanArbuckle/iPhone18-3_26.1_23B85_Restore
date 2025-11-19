@interface FUArrivalInfo
- (BOOL)isEqual:(id)a3;
- (FUArrivalInfo)initWithAirport:(id)a3 gate:(id)a4 terminal:(id)a5 baggageClaim:(id)a6 divertedAirport:(id)a7 displayTime:(id)a8 scheduledGateTime:(id)a9 currentGateTime:(id)a10 scheduledRunwayTime:(id)a11 currentRunwayTime:(id)a12 gateBufferMinutes:(id)a13 runwayBufferMinutes:(id)a14;
- (FUArrivalInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FUArrivalInfo

- (FUArrivalInfo)initWithAirport:(id)a3 gate:(id)a4 terminal:(id)a5 baggageClaim:(id)a6 divertedAirport:(id)a7 displayTime:(id)a8 scheduledGateTime:(id)a9 currentGateTime:(id)a10 scheduledRunwayTime:(id)a11 currentRunwayTime:(id)a12 gateBufferMinutes:(id)a13 runwayBufferMinutes:(id)a14
{
  v19 = a6;
  obj = a7;
  v26 = a7;
  v27.receiver = self;
  v27.super_class = FUArrivalInfo;
  v20 = [(FUBaseStopInfo *)&v27 initWithAirport:a3 gate:a4 terminal:a5 displayTime:a8 scheduledGateTime:a9 currentGateTime:a10 scheduledRunwayTime:a11 currentRunwayTime:a12 gateBufferMinutes:a13 runwayBufferMinutes:a14];
  if (v20)
  {
    v21 = [v19 copy];
    baggageClaim = v20->_baggageClaim;
    v20->_baggageClaim = v21;

    objc_storeStrong(&v20->_divertedAirport, obj);
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
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
      if ([(FUBaseStopInfo *)&v16 isEqual:v6])
      {
        v7 = [(FUArrivalInfo *)self baggageClaim];
        v8 = [(FUArrivalInfo *)v6 baggageClaim];
        if (v7 == v8 || (-[FUArrivalInfo baggageClaim](self, "baggageClaim"), v3 = objc_claimAutoreleasedReturnValue(), -[FUArrivalInfo baggageClaim](v6, "baggageClaim"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v10 = [(FUArrivalInfo *)self divertedAirport];
          v11 = [(FUArrivalInfo *)v6 divertedAirport];
          v12 = v11;
          if (v10 == v11)
          {

            v9 = 1;
          }

          else
          {
            v13 = [(FUArrivalInfo *)self divertedAirport];
            v14 = [(FUArrivalInfo *)v6 divertedAirport];
            v9 = [v13 isEqual:v14];
          }

          if (v7 == v8)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = [objc_opt_class() allocWithZone:a3];
  v28 = [(FUBaseStopInfo *)self airport];
  v31 = [v28 copyWithZone:a3];
  v27 = [(FUBaseStopInfo *)self gate];
  v30 = [v27 copyWithZone:a3];
  v26 = [(FUBaseStopInfo *)self terminal];
  v29 = [v26 copyWithZone:a3];
  v25 = [(FUArrivalInfo *)self baggageClaim];
  v5 = [v25 copyWithZone:a3];
  v24 = [(FUArrivalInfo *)self divertedAirport];
  v18 = [v24 copyWithZone:a3];
  v23 = [(FUBaseStopInfo *)self displayTime];
  v16 = [v23 copyWithZone:a3];
  v22 = [(FUBaseStopInfo *)self scheduledGateTime];
  v15 = [v22 copyWithZone:a3];
  v21 = [(FUBaseStopInfo *)self currentGateTime];
  v14 = [v21 copyWithZone:a3];
  v17 = [(FUBaseStopInfo *)self scheduledRunwayTime];
  v6 = [v17 copyWithZone:a3];
  v7 = [(FUBaseStopInfo *)self currentRunwayTime];
  v8 = [v7 copyWithZone:a3];
  v9 = [(FUBaseStopInfo *)self gateBufferMinutes];
  v10 = [v9 copyWithZone:a3];
  v11 = [(FUBaseStopInfo *)self runwayBufferMinutes];
  v12 = [v11 copyWithZone:a3];
  v20 = [v19 initWithAirport:v31 gate:v30 terminal:v29 baggageClaim:v5 divertedAirport:v18 displayTime:v16 scheduledGateTime:v15 currentGateTime:v14 scheduledRunwayTime:v6 currentRunwayTime:v8 gateBufferMinutes:v10 runwayBufferMinutes:v12];

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = FUArrivalInfo;
  v4 = a3;
  [(FUBaseStopInfo *)&v7 encodeWithCoder:v4];
  v5 = [(FUArrivalInfo *)self baggageClaim:v7.receiver];
  [v4 encodeObject:v5 forKey:@"baggageClaim"];

  v6 = [(FUArrivalInfo *)self divertedAirport];
  [v4 encodeObject:v6 forKey:@"divertedAirport"];
}

- (FUArrivalInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FUArrivalInfo;
  v5 = [(FUBaseStopInfo *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baggageClaim"];
    baggageClaim = v5->_baggageClaim;
    v5->_baggageClaim = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"divertedAirport"];
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
  v18 = [(FUBaseStopInfo *)self airport];
  v17 = [(FUBaseStopInfo *)self gate];
  v4 = [(FUBaseStopInfo *)self terminal];
  v5 = [(FUArrivalInfo *)self baggageClaim];
  v14 = [(FUArrivalInfo *)self divertedAirport];
  v6 = [(FUBaseStopInfo *)self scheduledGateTime];
  v7 = [(FUBaseStopInfo *)self currentGateTime];
  v8 = [(FUBaseStopInfo *)self scheduledRunwayTime];
  v9 = [(FUBaseStopInfo *)self currentRunwayTime];
  v10 = [(FUBaseStopInfo *)self gateBufferMinutes];
  v11 = [(FUBaseStopInfo *)self runwayBufferMinutes];
  v12 = [v16 stringWithFormat:@"<%@: %p> {airport: %@, gate: %@, terminal: %@, baggageClaim: %@, divertedAirport: %@, scheduledGateTime: %@, currentGateTime: %@, scheduledRunwayTime: %@, currentRunwayTime: %@, gateBufferMinutes: %@, runwayBufferMinutes: %@}", v15, self, v18, v17, v4, v5, v14, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end