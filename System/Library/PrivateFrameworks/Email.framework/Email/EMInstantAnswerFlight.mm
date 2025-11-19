@interface EMInstantAnswerFlight
- (EMInstantAnswerFlight)initWithCSInstantAnswers:(id)a3;
- (EMInstantAnswerFlight)initWithCoder:(id)a3;
- (EMInstantAnswerFlight)initWithFakeData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMInstantAnswerFlight

- (EMInstantAnswerFlight)initWithFakeData
{
  v8.receiver = self;
  v8.super_class = EMInstantAnswerFlight;
  v2 = [(EMInstantAnswerFlight *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:@"http://apple.com"];
    checkInUrl = v2->_checkInUrl;
    v2->_checkInUrl = v3;

    arrivalAirportCode = v2->_arrivalAirportCode;
    v2->_arrivalAirportCode = @"BBB";

    departureAirportCode = v2->_departureAirportCode;
    v2->_departureAirportCode = @"AAA";

    v2->_infoIsLive = 0;
  }

  return v2;
}

- (EMInstantAnswerFlight)initWithCSInstantAnswers:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = EMInstantAnswerFlight;
  v5 = [(EMInstantAnswerFlight *)&v28 init];
  if (v5)
  {
    v6 = [v4 flightCheckInUrl];
    checkInUrl = v5->_checkInUrl;
    v5->_checkInUrl = v6;

    v8 = [v4 flightDepartureDateComponents];
    departureDateComponents = v5->_departureDateComponents;
    v5->_departureDateComponents = v8;

    v10 = [v4 flightArrivalDateComponents];
    arrivalDateComponents = v5->_arrivalDateComponents;
    v5->_arrivalDateComponents = v10;

    v12 = [v4 flightDepartureTimeZone];
    departureTimeZone = v5->_departureTimeZone;
    v5->_departureTimeZone = v12;

    v14 = [v4 flightArrivalTimeZone];
    arrivalTimeZone = v5->_arrivalTimeZone;
    v5->_arrivalTimeZone = v14;

    v16 = [v4 flightArrivalAirportCode];
    arrivalAirportCode = v5->_arrivalAirportCode;
    v5->_arrivalAirportCode = v16;

    v18 = [v4 flightDepartureAirportCode];
    departureAirportCode = v5->_departureAirportCode;
    v5->_departureAirportCode = v18;

    v5->_infoIsLive = 0;
    v20 = [EMParsecInstantAnswers updatedFlightInformationForInstantAnswer:v4];
    if (v20)
    {
      if (!v5->_checkInUrl)
      {
        v21 = [EMParsecInstantAnswers flightURLFromUpdatedFlightInformation:v20];
        v22 = v5->_checkInUrl;
        v5->_checkInUrl = v21;
      }

      v23 = [EMParsecInstantAnswers flightDepartureDateComponentsFromUpdatedFlightInformation:v20 departureTimeZone:v5->_departureTimeZone];
      v24 = v5->_departureDateComponents;
      v5->_departureDateComponents = v23;

      v25 = [EMParsecInstantAnswers flightArrivalDateComponentsFromUpdatedFlightInformation:v20 arrivalTimeZone:v5->_arrivalTimeZone];
      v26 = v5->_arrivalDateComponents;
      v5->_arrivalDateComponents = v25;

      v5->_infoIsLive = 1;
    }
  }

  return v5;
}

- (EMInstantAnswerFlight)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = EMInstantAnswerFlight;
  v5 = [(EMInstantAnswerFlight *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_checkInUrl"];
    checkInUrl = v5->_checkInUrl;
    v5->_checkInUrl = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_departureDateComponents"];
    departureDateComponents = v5->_departureDateComponents;
    v5->_departureDateComponents = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_arrivalDateComponents"];
    arrivalDateComponents = v5->_arrivalDateComponents;
    v5->_arrivalDateComponents = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_departureTimeZone"];
    departureTimeZone = v5->_departureTimeZone;
    v5->_departureTimeZone = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_arrivalTimeZone"];
    arrivalTimeZone = v5->_arrivalTimeZone;
    v5->_arrivalTimeZone = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_arrivalAirportCode"];
    arrivalAirportCode = v5->_arrivalAirportCode;
    v5->_arrivalAirportCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_departureAirportCode"];
    departureAirportCode = v5->_departureAirportCode;
    v5->_departureAirportCode = v18;

    v5->_infoIsLive = [v4 decodeBoolForKey:@"EFPropertyKey_infoIsLive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(EMInstantAnswerFlight *)self checkInUrl];
  [v11 encodeObject:v4 forKey:@"EFPropertyKey_checkInUrl"];

  v5 = [(EMInstantAnswerFlight *)self departureDateComponents];
  [v11 encodeObject:v5 forKey:@"EFPropertyKey_departureDateComponents"];

  v6 = [(EMInstantAnswerFlight *)self arrivalDateComponents];
  [v11 encodeObject:v6 forKey:@"EFPropertyKey_arrivalDateComponents"];

  v7 = [(EMInstantAnswerFlight *)self departureTimeZone];
  [v11 encodeObject:v7 forKey:@"EFPropertyKey_departureTimeZone"];

  v8 = [(EMInstantAnswerFlight *)self arrivalTimeZone];
  [v11 encodeObject:v8 forKey:@"EFPropertyKey_arrivalTimeZone"];

  v9 = [(EMInstantAnswerFlight *)self arrivalAirportCode];
  [v11 encodeObject:v9 forKey:@"EFPropertyKey_arrivalAirportCode"];

  v10 = [(EMInstantAnswerFlight *)self departureAirportCode];
  [v11 encodeObject:v10 forKey:@"EFPropertyKey_departureAirportCode"];

  [v11 encodeBool:-[EMInstantAnswerFlight infoIsLive](self forKey:{"infoIsLive"), @"EFPropertyKey_infoIsLive"}];
}

@end