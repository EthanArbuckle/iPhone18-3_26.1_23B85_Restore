@interface SGFlight
- (SGFlight)initWithCarrier:(id)carrier flightNo:(id)no depDesc:(id)desc arrDesc:(id)arrDesc;
- (id)description;
@end

@implementation SGFlight

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  airline = [(SGFlight *)self airline];
  flightno = [(SGFlight *)self flightno];
  departureAirportDescription = [(SGFlight *)self departureAirportDescription];
  arrivalAirportDescription = [(SGFlight *)self arrivalAirportDescription];
  v8 = [v3 initWithFormat:@"%@ %@ from %@ to %@", airline, flightno, departureAirportDescription, arrivalAirportDescription];

  return v8;
}

- (SGFlight)initWithCarrier:(id)carrier flightNo:(id)no depDesc:(id)desc arrDesc:(id)arrDesc
{
  carrierCopy = carrier;
  noCopy = no;
  descCopy = desc;
  arrDescCopy = arrDesc;
  if (carrierCopy)
  {
    if (noCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGFlightData.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"airline"}];

    if (noCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGFlightData.m" lineNumber:724 description:{@"Invalid parameter not satisfying: %@", @"flightno"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = SGFlight;
  v16 = [(SGFlight *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_airline, carrier);
    objc_storeStrong(&v17->_flightno, no);
    objc_storeStrong(&v17->_departureAirportDescription, desc);
    objc_storeStrong(&v17->_arrivalAirportDescription, arrDesc);
  }

  return v17;
}

@end