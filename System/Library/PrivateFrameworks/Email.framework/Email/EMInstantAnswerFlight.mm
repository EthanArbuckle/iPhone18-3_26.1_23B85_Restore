@interface EMInstantAnswerFlight
- (EMInstantAnswerFlight)initWithCSInstantAnswers:(id)answers;
- (EMInstantAnswerFlight)initWithCoder:(id)coder;
- (EMInstantAnswerFlight)initWithFakeData;
- (void)encodeWithCoder:(id)coder;
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

- (EMInstantAnswerFlight)initWithCSInstantAnswers:(id)answers
{
  answersCopy = answers;
  v28.receiver = self;
  v28.super_class = EMInstantAnswerFlight;
  v5 = [(EMInstantAnswerFlight *)&v28 init];
  if (v5)
  {
    flightCheckInUrl = [answersCopy flightCheckInUrl];
    checkInUrl = v5->_checkInUrl;
    v5->_checkInUrl = flightCheckInUrl;

    flightDepartureDateComponents = [answersCopy flightDepartureDateComponents];
    departureDateComponents = v5->_departureDateComponents;
    v5->_departureDateComponents = flightDepartureDateComponents;

    flightArrivalDateComponents = [answersCopy flightArrivalDateComponents];
    arrivalDateComponents = v5->_arrivalDateComponents;
    v5->_arrivalDateComponents = flightArrivalDateComponents;

    flightDepartureTimeZone = [answersCopy flightDepartureTimeZone];
    departureTimeZone = v5->_departureTimeZone;
    v5->_departureTimeZone = flightDepartureTimeZone;

    flightArrivalTimeZone = [answersCopy flightArrivalTimeZone];
    arrivalTimeZone = v5->_arrivalTimeZone;
    v5->_arrivalTimeZone = flightArrivalTimeZone;

    flightArrivalAirportCode = [answersCopy flightArrivalAirportCode];
    arrivalAirportCode = v5->_arrivalAirportCode;
    v5->_arrivalAirportCode = flightArrivalAirportCode;

    flightDepartureAirportCode = [answersCopy flightDepartureAirportCode];
    departureAirportCode = v5->_departureAirportCode;
    v5->_departureAirportCode = flightDepartureAirportCode;

    v5->_infoIsLive = 0;
    v20 = [EMParsecInstantAnswers updatedFlightInformationForInstantAnswer:answersCopy];
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

- (EMInstantAnswerFlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = EMInstantAnswerFlight;
  v5 = [(EMInstantAnswerFlight *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_checkInUrl"];
    checkInUrl = v5->_checkInUrl;
    v5->_checkInUrl = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_departureDateComponents"];
    departureDateComponents = v5->_departureDateComponents;
    v5->_departureDateComponents = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_arrivalDateComponents"];
    arrivalDateComponents = v5->_arrivalDateComponents;
    v5->_arrivalDateComponents = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_departureTimeZone"];
    departureTimeZone = v5->_departureTimeZone;
    v5->_departureTimeZone = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_arrivalTimeZone"];
    arrivalTimeZone = v5->_arrivalTimeZone;
    v5->_arrivalTimeZone = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_arrivalAirportCode"];
    arrivalAirportCode = v5->_arrivalAirportCode;
    v5->_arrivalAirportCode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_departureAirportCode"];
    departureAirportCode = v5->_departureAirportCode;
    v5->_departureAirportCode = v18;

    v5->_infoIsLive = [coderCopy decodeBoolForKey:@"EFPropertyKey_infoIsLive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  checkInUrl = [(EMInstantAnswerFlight *)self checkInUrl];
  [coderCopy encodeObject:checkInUrl forKey:@"EFPropertyKey_checkInUrl"];

  departureDateComponents = [(EMInstantAnswerFlight *)self departureDateComponents];
  [coderCopy encodeObject:departureDateComponents forKey:@"EFPropertyKey_departureDateComponents"];

  arrivalDateComponents = [(EMInstantAnswerFlight *)self arrivalDateComponents];
  [coderCopy encodeObject:arrivalDateComponents forKey:@"EFPropertyKey_arrivalDateComponents"];

  departureTimeZone = [(EMInstantAnswerFlight *)self departureTimeZone];
  [coderCopy encodeObject:departureTimeZone forKey:@"EFPropertyKey_departureTimeZone"];

  arrivalTimeZone = [(EMInstantAnswerFlight *)self arrivalTimeZone];
  [coderCopy encodeObject:arrivalTimeZone forKey:@"EFPropertyKey_arrivalTimeZone"];

  arrivalAirportCode = [(EMInstantAnswerFlight *)self arrivalAirportCode];
  [coderCopy encodeObject:arrivalAirportCode forKey:@"EFPropertyKey_arrivalAirportCode"];

  departureAirportCode = [(EMInstantAnswerFlight *)self departureAirportCode];
  [coderCopy encodeObject:departureAirportCode forKey:@"EFPropertyKey_departureAirportCode"];

  [coderCopy encodeBool:-[EMInstantAnswerFlight infoIsLive](self forKey:{"infoIsLive"), @"EFPropertyKey_infoIsLive"}];
}

@end