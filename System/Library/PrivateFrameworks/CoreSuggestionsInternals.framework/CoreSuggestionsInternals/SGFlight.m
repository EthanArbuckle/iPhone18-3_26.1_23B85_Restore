@interface SGFlight
- (SGFlight)initWithCarrier:(id)a3 flightNo:(id)a4 depDesc:(id)a5 arrDesc:(id)a6;
- (id)description;
@end

@implementation SGFlight

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SGFlight *)self airline];
  v5 = [(SGFlight *)self flightno];
  v6 = [(SGFlight *)self departureAirportDescription];
  v7 = [(SGFlight *)self arrivalAirportDescription];
  v8 = [v3 initWithFormat:@"%@ %@ from %@ to %@", v4, v5, v6, v7];

  return v8;
}

- (SGFlight)initWithCarrier:(id)a3 flightNo:(id)a4 depDesc:(id)a5 arrDesc:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"SGFlightData.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"airline"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"SGFlightData.m" lineNumber:724 description:{@"Invalid parameter not satisfying: %@", @"flightno"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = SGFlight;
  v16 = [(SGFlight *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_airline, a3);
    objc_storeStrong(&v17->_flightno, a4);
    objc_storeStrong(&v17->_departureAirportDescription, a5);
    objc_storeStrong(&v17->_arrivalAirportDescription, a6);
  }

  return v17;
}

@end