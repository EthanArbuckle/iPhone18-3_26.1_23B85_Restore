@interface CCAppIntentsExtractedEntityFlightReservation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityFlightReservation)initWithFlightDesignator:(id)designator flightConfirmationNumber:(id)number flightCarrier:(id)carrier flightCarrierCode:(id)code provider:(id)provider customerNames:(id)names flightDepartureDateTime:(id)time flightDepartureTimeZone:(id)self0 flightBoardingDateTime:(id)self1 flightDepartureAirportCode:(id)self2 flightDepartureAirportName:(id)self3 flightDepartureAirportAddress:(id)self4 flightDepartureAirportLocality:(id)self5 flightDepartureAirportRegion:(id)self6 flightDepartureAirportPostalCode:(id)self7 flightDepartureAirportCountry:(id)self8 flightDepartureTerminal:(id)self9 flightDepartureGate:(id)gate seatNumbers:(id)numbers flightArrivalDateTime:(id)arrivalDateTime flightArrivalTimeZone:(id)timeZone flightArrivalAirportCode:(id)arrivalAirportCode flightArrivalAirportName:(id)airportName flightArrivalAirportAddress:(id)airportAddress flightArrivalAirportLocality:(id)airportLocality flightArrivalAirportRegion:(id)airportRegion flightArrivalAirportPostalCode:(id)airportPostalCode flightArrivalAirportCountry:(id)designator0 flightArrivalTerminal:(id)designator1 flightArrivalGate:(id)designator2 duration:(id)designator3 flightCheckInUrl:(id)designator4 cost:(id)designator5 costCurrencyCode:(id)designator6 flightNumber:(id)designator7 eventStatus:(id)designator8 error:(id *)designator9;
- (CCAppIntentsExtractedEntityFlightReservation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSArray)customerNames;
- (NSArray)seatNumbers;
- (NSString)cost;
- (NSString)costCurrencyCode;
- (NSString)eventStatus;
- (NSString)flightArrivalAirportAddress;
- (NSString)flightArrivalAirportCode;
- (NSString)flightArrivalAirportCountry;
- (NSString)flightArrivalAirportLocality;
- (NSString)flightArrivalAirportName;
- (NSString)flightArrivalAirportPostalCode;
- (NSString)flightArrivalAirportRegion;
- (NSString)flightArrivalDateTime;
- (NSString)flightArrivalGate;
- (NSString)flightArrivalTerminal;
- (NSString)flightArrivalTimeZone;
- (NSString)flightBoardingDateTime;
- (NSString)flightCarrier;
- (NSString)flightCarrierCode;
- (NSString)flightCheckInUrl;
- (NSString)flightConfirmationNumber;
- (NSString)flightDepartureAirportAddress;
- (NSString)flightDepartureAirportCode;
- (NSString)flightDepartureAirportCountry;
- (NSString)flightDepartureAirportLocality;
- (NSString)flightDepartureAirportName;
- (NSString)flightDepartureAirportPostalCode;
- (NSString)flightDepartureAirportRegion;
- (NSString)flightDepartureDateTime;
- (NSString)flightDepartureGate;
- (NSString)flightDepartureTerminal;
- (NSString)flightDepartureTimeZone;
- (NSString)flightDesignator;
- (NSString)flightNumber;
- (NSString)provider;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityFlightReservation

- (CCAppIntentsExtractedEntityFlightReservation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v50 = [dictionaryCopy objectForKeyedSubscript:@"flightDesignator"];
    v49 = [dictionaryCopy objectForKeyedSubscript:@"flightConfirmationNumber"];
    v48 = [dictionaryCopy objectForKeyedSubscript:@"flightCarrier"];
    v47 = [dictionaryCopy objectForKeyedSubscript:@"flightCarrierCode"];
    v46 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    v45 = [dictionaryCopy objectForKeyedSubscript:@"customerNames"];
    v44 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureDateTime"];
    v43 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureTimeZone"];
    v42 = [dictionaryCopy objectForKeyedSubscript:@"flightBoardingDateTime"];
    v41 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureAirportCode"];
    v37 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureAirportName"];
    v40 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureAirportAddress"];
    [dictionaryCopy objectForKeyedSubscript:@"flightDepartureAirportLocality"];
    v39 = v24 = error;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureAirportRegion"];
    v38 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureAirportPostalCode"];
    v36 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureAirportCountry"];
    v35 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureTerminal"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"flightDepartureGate"];
    v33 = [dictionaryCopy objectForKeyedSubscript:@"seatNumbers"];
    v22 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalDateTime"];
    v32 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalTimeZone"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalAirportCode"];
    v31 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalAirportName"];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalAirportAddress"];
    v30 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalAirportLocality"];
    v29 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalAirportRegion"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalAirportPostalCode"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalAirportCountry"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"flightArrivalTerminal"];
    [dictionaryCopy objectForKeyedSubscript:@"flightArrivalGate"];
    v17 = v27 = self;
    [dictionaryCopy objectForKeyedSubscript:@"duration"];
    v16 = v26 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"flightCheckInUrl"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"cost"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"costCurrencyCode"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"flightNumber"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"eventStatus"];
    v25 = [[CCAppIntentsExtractedEntityFlightReservation alloc] initWithFlightDesignator:v50 flightConfirmationNumber:v49 flightCarrier:v48 flightCarrierCode:v47 provider:v46 customerNames:v45 flightDepartureDateTime:v44 flightDepartureTimeZone:v43 flightBoardingDateTime:v42 flightDepartureAirportCode:v41 flightDepartureAirportName:v37 flightDepartureAirportAddress:v40 flightDepartureAirportLocality:v39 flightDepartureAirportRegion:v34 flightDepartureAirportPostalCode:v38 flightDepartureAirportCountry:v36 flightDepartureTerminal:v35 flightDepartureGate:v23 seatNumbers:v33 flightArrivalDateTime:v22 flightArrivalTimeZone:v32 flightArrivalAirportCode:v21 flightArrivalAirportName:v31 flightArrivalAirportAddress:v20 flightArrivalAirportLocality:v30 flightArrivalAirportRegion:v29 flightArrivalAirportPostalCode:v28 flightArrivalAirportCountry:v19 flightArrivalTerminal:v18 flightArrivalGate:v17 duration:v16 flightCheckInUrl:v9 cost:v10 costCurrencyCode:v11 flightNumber:v12 eventStatus:v13 error:v24];

    v8 = v26;
    self = v27;

    v14 = v25;
  }

  else
  {
    CCSetError();
    v14 = 0;
  }

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_flightDesignator)
  {
    flightDesignator = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDesignator];
    [v3 setObject:flightDesignator forKeyedSubscript:@"flightDesignator"];
  }

  if (self->_flightConfirmationNumber)
  {
    flightConfirmationNumber = [(CCAppIntentsExtractedEntityFlightReservation *)self flightConfirmationNumber];
    [v3 setObject:flightConfirmationNumber forKeyedSubscript:@"flightConfirmationNumber"];
  }

  if (self->_flightCarrier)
  {
    flightCarrier = [(CCAppIntentsExtractedEntityFlightReservation *)self flightCarrier];
    [v3 setObject:flightCarrier forKeyedSubscript:@"flightCarrier"];
  }

  if (self->_flightCarrierCode)
  {
    flightCarrierCode = [(CCAppIntentsExtractedEntityFlightReservation *)self flightCarrierCode];
    [v3 setObject:flightCarrierCode forKeyedSubscript:@"flightCarrierCode"];
  }

  if (self->_provider)
  {
    provider = [(CCAppIntentsExtractedEntityFlightReservation *)self provider];
    [v3 setObject:provider forKeyedSubscript:@"provider"];
  }

  if (self->_customerNames)
  {
    customerNames = [(CCAppIntentsExtractedEntityFlightReservation *)self customerNames];
    [v3 setObject:customerNames forKeyedSubscript:@"customerNames"];
  }

  if (self->_flightDepartureDateTime)
  {
    flightDepartureDateTime = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureDateTime];
    [v3 setObject:flightDepartureDateTime forKeyedSubscript:@"flightDepartureDateTime"];
  }

  if (self->_flightDepartureTimeZone)
  {
    flightDepartureTimeZone = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureTimeZone];
    [v3 setObject:flightDepartureTimeZone forKeyedSubscript:@"flightDepartureTimeZone"];
  }

  if (self->_flightBoardingDateTime)
  {
    flightBoardingDateTime = [(CCAppIntentsExtractedEntityFlightReservation *)self flightBoardingDateTime];
    [v3 setObject:flightBoardingDateTime forKeyedSubscript:@"flightBoardingDateTime"];
  }

  if (self->_flightDepartureAirportCode)
  {
    flightDepartureAirportCode = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportCode];
    [v3 setObject:flightDepartureAirportCode forKeyedSubscript:@"flightDepartureAirportCode"];
  }

  if (self->_flightDepartureAirportName)
  {
    flightDepartureAirportName = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportName];
    [v3 setObject:flightDepartureAirportName forKeyedSubscript:@"flightDepartureAirportName"];
  }

  if (self->_flightDepartureAirportAddress)
  {
    flightDepartureAirportAddress = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportAddress];
    [v3 setObject:flightDepartureAirportAddress forKeyedSubscript:@"flightDepartureAirportAddress"];
  }

  if (self->_flightDepartureAirportLocality)
  {
    flightDepartureAirportLocality = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportLocality];
    [v3 setObject:flightDepartureAirportLocality forKeyedSubscript:@"flightDepartureAirportLocality"];
  }

  if (self->_flightDepartureAirportRegion)
  {
    flightDepartureAirportRegion = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportRegion];
    [v3 setObject:flightDepartureAirportRegion forKeyedSubscript:@"flightDepartureAirportRegion"];
  }

  if (self->_flightDepartureAirportPostalCode)
  {
    flightDepartureAirportPostalCode = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportPostalCode];
    [v3 setObject:flightDepartureAirportPostalCode forKeyedSubscript:@"flightDepartureAirportPostalCode"];
  }

  if (self->_flightDepartureAirportCountry)
  {
    flightDepartureAirportCountry = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportCountry];
    [v3 setObject:flightDepartureAirportCountry forKeyedSubscript:@"flightDepartureAirportCountry"];
  }

  if (self->_flightDepartureTerminal)
  {
    flightDepartureTerminal = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureTerminal];
    [v3 setObject:flightDepartureTerminal forKeyedSubscript:@"flightDepartureTerminal"];
  }

  if (self->_flightDepartureGate)
  {
    flightDepartureGate = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureGate];
    [v3 setObject:flightDepartureGate forKeyedSubscript:@"flightDepartureGate"];
  }

  if (self->_seatNumbers)
  {
    seatNumbers = [(CCAppIntentsExtractedEntityFlightReservation *)self seatNumbers];
    [v3 setObject:seatNumbers forKeyedSubscript:@"seatNumbers"];
  }

  if (self->_flightArrivalDateTime)
  {
    flightArrivalDateTime = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalDateTime];
    [v3 setObject:flightArrivalDateTime forKeyedSubscript:@"flightArrivalDateTime"];
  }

  if (self->_flightArrivalTimeZone)
  {
    flightArrivalTimeZone = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalTimeZone];
    [v3 setObject:flightArrivalTimeZone forKeyedSubscript:@"flightArrivalTimeZone"];
  }

  if (self->_flightArrivalAirportCode)
  {
    flightArrivalAirportCode = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportCode];
    [v3 setObject:flightArrivalAirportCode forKeyedSubscript:@"flightArrivalAirportCode"];
  }

  if (self->_flightArrivalAirportName)
  {
    flightArrivalAirportName = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportName];
    [v3 setObject:flightArrivalAirportName forKeyedSubscript:@"flightArrivalAirportName"];
  }

  if (self->_flightArrivalAirportAddress)
  {
    flightArrivalAirportAddress = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportAddress];
    [v3 setObject:flightArrivalAirportAddress forKeyedSubscript:@"flightArrivalAirportAddress"];
  }

  if (self->_flightArrivalAirportLocality)
  {
    flightArrivalAirportLocality = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportLocality];
    [v3 setObject:flightArrivalAirportLocality forKeyedSubscript:@"flightArrivalAirportLocality"];
  }

  if (self->_flightArrivalAirportRegion)
  {
    flightArrivalAirportRegion = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportRegion];
    [v3 setObject:flightArrivalAirportRegion forKeyedSubscript:@"flightArrivalAirportRegion"];
  }

  if (self->_flightArrivalAirportPostalCode)
  {
    flightArrivalAirportPostalCode = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportPostalCode];
    [v3 setObject:flightArrivalAirportPostalCode forKeyedSubscript:@"flightArrivalAirportPostalCode"];
  }

  if (self->_flightArrivalAirportCountry)
  {
    flightArrivalAirportCountry = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportCountry];
    [v3 setObject:flightArrivalAirportCountry forKeyedSubscript:@"flightArrivalAirportCountry"];
  }

  if (self->_flightArrivalTerminal)
  {
    flightArrivalTerminal = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalTerminal];
    [v3 setObject:flightArrivalTerminal forKeyedSubscript:@"flightArrivalTerminal"];
  }

  if (self->_flightArrivalGate)
  {
    flightArrivalGate = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalGate];
    [v3 setObject:flightArrivalGate forKeyedSubscript:@"flightArrivalGate"];
  }

  if (self->_hasDuration)
  {
    v34 = MEMORY[0x1E696AD98];
    [(CCAppIntentsExtractedEntityFlightReservation *)self duration];
    v35 = [v34 numberWithDouble:?];
    [v3 setObject:v35 forKeyedSubscript:@"duration"];
  }

  if (self->_flightCheckInUrl)
  {
    flightCheckInUrl = [(CCAppIntentsExtractedEntityFlightReservation *)self flightCheckInUrl];
    [v3 setObject:flightCheckInUrl forKeyedSubscript:@"flightCheckInUrl"];
  }

  if (self->_cost)
  {
    cost = [(CCAppIntentsExtractedEntityFlightReservation *)self cost];
    [v3 setObject:cost forKeyedSubscript:@"cost"];
  }

  if (self->_costCurrencyCode)
  {
    costCurrencyCode = [(CCAppIntentsExtractedEntityFlightReservation *)self costCurrencyCode];
    [v3 setObject:costCurrencyCode forKeyedSubscript:@"costCurrencyCode"];
  }

  if (self->_flightNumber)
  {
    flightNumber = [(CCAppIntentsExtractedEntityFlightReservation *)self flightNumber];
    [v3 setObject:flightNumber forKeyedSubscript:@"flightNumber"];
  }

  if (self->_eventStatus)
  {
    eventStatus = [(CCAppIntentsExtractedEntityFlightReservation *)self eventStatus];
    [v3 setObject:eventStatus forKeyedSubscript:@"eventStatus"];
  }

  v41 = [v3 copy];

  return v41;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_flightDesignator)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27327 stringValue:self->_flightDesignator];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_flightConfirmationNumber)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27328 stringValue:self->_flightConfirmationNumber];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_flightCarrier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27329 stringValue:self->_flightCarrier];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_flightCarrierCode)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27330 stringValue:self->_flightCarrierCode];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_provider)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27331 stringValue:self->_provider];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_customerNames)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27332 repeatedStringValue:self->_customerNames];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_flightDepartureDateTime)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27333 stringValue:self->_flightDepartureDateTime];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_flightDepartureTimeZone)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27334 stringValue:self->_flightDepartureTimeZone];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_flightBoardingDateTime)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27335 stringValue:self->_flightBoardingDateTime];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_flightDepartureAirportCode)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27336 stringValue:self->_flightDepartureAirportCode];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_flightDepartureAirportName)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27337 stringValue:self->_flightDepartureAirportName];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_flightDepartureAirportAddress)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27338 stringValue:self->_flightDepartureAirportAddress];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_flightDepartureAirportLocality)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27339 stringValue:self->_flightDepartureAirportLocality];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_flightDepartureAirportRegion)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27340 stringValue:self->_flightDepartureAirportRegion];
    blockCopy[2](blockCopy, v18);
  }

  if (self->_flightDepartureAirportPostalCode)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27341 stringValue:self->_flightDepartureAirportPostalCode];
    blockCopy[2](blockCopy, v19);
  }

  if (self->_flightDepartureAirportCountry)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27342 stringValue:self->_flightDepartureAirportCountry];
    blockCopy[2](blockCopy, v20);
  }

  if (self->_flightDepartureTerminal)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27343 stringValue:self->_flightDepartureTerminal];
    blockCopy[2](blockCopy, v21);
  }

  if (self->_flightDepartureGate)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27344 stringValue:self->_flightDepartureGate];
    blockCopy[2](blockCopy, v22);
  }

  if (self->_seatNumbers)
  {
    v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27345 repeatedStringValue:self->_seatNumbers];
    blockCopy[2](blockCopy, v23);
  }

  if (self->_flightArrivalDateTime)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27346 stringValue:self->_flightArrivalDateTime];
    blockCopy[2](blockCopy, v24);
  }

  if (self->_flightArrivalTimeZone)
  {
    v25 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27347 stringValue:self->_flightArrivalTimeZone];
    blockCopy[2](blockCopy, v25);
  }

  if (self->_flightArrivalAirportCode)
  {
    v26 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27348 stringValue:self->_flightArrivalAirportCode];
    blockCopy[2](blockCopy, v26);
  }

  if (self->_flightArrivalAirportName)
  {
    v27 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27349 stringValue:self->_flightArrivalAirportName];
    blockCopy[2](blockCopy, v27);
  }

  if (self->_flightArrivalAirportAddress)
  {
    v28 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27350 stringValue:self->_flightArrivalAirportAddress];
    blockCopy[2](blockCopy, v28);
  }

  if (self->_flightArrivalAirportLocality)
  {
    v29 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27351 stringValue:self->_flightArrivalAirportLocality];
    blockCopy[2](blockCopy, v29);
  }

  if (self->_flightArrivalAirportRegion)
  {
    v30 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27352 stringValue:self->_flightArrivalAirportRegion];
    blockCopy[2](blockCopy, v30);
  }

  if (self->_flightArrivalAirportPostalCode)
  {
    v31 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27353 stringValue:self->_flightArrivalAirportPostalCode];
    blockCopy[2](blockCopy, v31);
  }

  if (self->_flightArrivalAirportCountry)
  {
    v32 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27354 stringValue:self->_flightArrivalAirportCountry];
    blockCopy[2](blockCopy, v32);
  }

  if (self->_flightArrivalTerminal)
  {
    v33 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27355 stringValue:self->_flightArrivalTerminal];
    blockCopy[2](blockCopy, v33);
  }

  if (self->_flightArrivalGate)
  {
    v34 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27356 stringValue:self->_flightArrivalGate];
    blockCopy[2](blockCopy, v34);
  }

  if (self->_hasDuration)
  {
    v35 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27357 doubleValue:self->_duration];
    blockCopy[2](blockCopy, v35);
  }

  if (self->_flightCheckInUrl)
  {
    v36 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27358 stringValue:self->_flightCheckInUrl];
    blockCopy[2](blockCopy, v36);
  }

  if (self->_cost)
  {
    v37 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27359 stringValue:self->_cost];
    blockCopy[2](blockCopy, v37);
  }

  if (self->_costCurrencyCode)
  {
    v38 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27360 stringValue:self->_costCurrencyCode];
    blockCopy[2](blockCopy, v38);
  }

  if (self->_flightNumber)
  {
    v39 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27361 stringValue:self->_flightNumber];
    blockCopy[2](blockCopy, v39);
  }

  v40 = blockCopy;
  if (self->_eventStatus)
  {
    v41 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27362 stringValue:self->_eventStatus];
    blockCopy[2](blockCopy, v41);

    v40 = blockCopy;
  }
}

- (NSString)eventStatus
{
  v2 = [(NSString *)self->_eventStatus copy];

  return v2;
}

- (NSString)flightNumber
{
  v2 = [(NSString *)self->_flightNumber copy];

  return v2;
}

- (NSString)costCurrencyCode
{
  v2 = [(NSString *)self->_costCurrencyCode copy];

  return v2;
}

- (NSString)cost
{
  v2 = [(NSString *)self->_cost copy];

  return v2;
}

- (NSString)flightCheckInUrl
{
  v2 = [(NSString *)self->_flightCheckInUrl copy];

  return v2;
}

- (NSString)flightArrivalGate
{
  v2 = [(NSString *)self->_flightArrivalGate copy];

  return v2;
}

- (NSString)flightArrivalTerminal
{
  v2 = [(NSString *)self->_flightArrivalTerminal copy];

  return v2;
}

- (NSString)flightArrivalAirportCountry
{
  v2 = [(NSString *)self->_flightArrivalAirportCountry copy];

  return v2;
}

- (NSString)flightArrivalAirportPostalCode
{
  v2 = [(NSString *)self->_flightArrivalAirportPostalCode copy];

  return v2;
}

- (NSString)flightArrivalAirportRegion
{
  v2 = [(NSString *)self->_flightArrivalAirportRegion copy];

  return v2;
}

- (NSString)flightArrivalAirportLocality
{
  v2 = [(NSString *)self->_flightArrivalAirportLocality copy];

  return v2;
}

- (NSString)flightArrivalAirportAddress
{
  v2 = [(NSString *)self->_flightArrivalAirportAddress copy];

  return v2;
}

- (NSString)flightArrivalAirportName
{
  v2 = [(NSString *)self->_flightArrivalAirportName copy];

  return v2;
}

- (NSString)flightArrivalAirportCode
{
  v2 = [(NSString *)self->_flightArrivalAirportCode copy];

  return v2;
}

- (NSString)flightArrivalTimeZone
{
  v2 = [(NSString *)self->_flightArrivalTimeZone copy];

  return v2;
}

- (NSString)flightArrivalDateTime
{
  v2 = [(NSString *)self->_flightArrivalDateTime copy];

  return v2;
}

- (NSArray)seatNumbers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_seatNumbers copyItems:1];

  return v2;
}

- (NSString)flightDepartureGate
{
  v2 = [(NSString *)self->_flightDepartureGate copy];

  return v2;
}

- (NSString)flightDepartureTerminal
{
  v2 = [(NSString *)self->_flightDepartureTerminal copy];

  return v2;
}

- (NSString)flightDepartureAirportCountry
{
  v2 = [(NSString *)self->_flightDepartureAirportCountry copy];

  return v2;
}

- (NSString)flightDepartureAirportPostalCode
{
  v2 = [(NSString *)self->_flightDepartureAirportPostalCode copy];

  return v2;
}

- (NSString)flightDepartureAirportRegion
{
  v2 = [(NSString *)self->_flightDepartureAirportRegion copy];

  return v2;
}

- (NSString)flightDepartureAirportLocality
{
  v2 = [(NSString *)self->_flightDepartureAirportLocality copy];

  return v2;
}

- (NSString)flightDepartureAirportAddress
{
  v2 = [(NSString *)self->_flightDepartureAirportAddress copy];

  return v2;
}

- (NSString)flightDepartureAirportName
{
  v2 = [(NSString *)self->_flightDepartureAirportName copy];

  return v2;
}

- (NSString)flightDepartureAirportCode
{
  v2 = [(NSString *)self->_flightDepartureAirportCode copy];

  return v2;
}

- (NSString)flightBoardingDateTime
{
  v2 = [(NSString *)self->_flightBoardingDateTime copy];

  return v2;
}

- (NSString)flightDepartureTimeZone
{
  v2 = [(NSString *)self->_flightDepartureTimeZone copy];

  return v2;
}

- (NSString)flightDepartureDateTime
{
  v2 = [(NSString *)self->_flightDepartureDateTime copy];

  return v2;
}

- (NSArray)customerNames
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_customerNames copyItems:1];

  return v2;
}

- (NSString)provider
{
  v2 = [(NSString *)self->_provider copy];

  return v2;
}

- (NSString)flightCarrierCode
{
  v2 = [(NSString *)self->_flightCarrierCode copy];

  return v2;
}

- (NSString)flightCarrier
{
  v2 = [(NSString *)self->_flightCarrier copy];

  return v2;
}

- (NSString)flightConfirmationNumber
{
  v2 = [(NSString *)self->_flightConfirmationNumber copy];

  return v2;
}

- (NSString)flightDesignator
{
  v2 = [(NSString *)self->_flightDesignator copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    v50 = 0;
    v51 = 0;
    goto LABEL_77;
  }

  v10 = 0;
  v50 = 0;
  v51 = 0;
  v11 = MEMORY[0x1E6993AA8];
  v12 = MEMORY[0x1E6993AA0];
LABEL_3:
  if (*&v7[*v11])
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = *v8;
      v18 = *&v7[v17];
      v19 = v18 + 1;
      if (v18 == -1 || v19 > *&v7[*v9])
      {
        break;
      }

      v20 = *(*&v7[*v12] + v18);
      *&v7[v17] = v19;
      v16 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v14 += 7;
      if (v15++ >= 9)
      {
        v22 = 0;
        v23 = *v11;
        if (*&v7[v23])
        {
          goto LABEL_77;
        }

LABEL_21:
        switch((v22 >> 3))
        {
          case 1u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 24;
            goto LABEL_68;
          case 2u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 32;
            goto LABEL_68;
          case 3u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 40;
            goto LABEL_68;
          case 4u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 48;
            goto LABEL_68;
          case 5u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 56;
            goto LABEL_68;
          case 6u:
            v27 = CCPBReaderReadStringNoCopy();
            if (!v51)
            {
              v51 = objc_opt_new();
            }

            if (!v27)
            {
              goto LABEL_55;
            }

            v28 = v51;
            goto LABEL_54;
          case 7u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 72;
            goto LABEL_68;
          case 8u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 80;
            goto LABEL_68;
          case 9u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 88;
            goto LABEL_68;
          case 0xAu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 96;
            goto LABEL_68;
          case 0xBu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 104;
            goto LABEL_68;
          case 0xCu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 112;
            goto LABEL_68;
          case 0xDu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 120;
            goto LABEL_68;
          case 0xEu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 128;
            goto LABEL_68;
          case 0xFu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 136;
            goto LABEL_68;
          case 0x10u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 144;
            goto LABEL_68;
          case 0x11u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 152;
            goto LABEL_68;
          case 0x12u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 160;
            goto LABEL_68;
          case 0x13u:
            v27 = CCPBReaderReadStringNoCopy();
            if (!v50)
            {
              v50 = objc_opt_new();
            }

            if (!v27)
            {
              goto LABEL_55;
            }

            v28 = v50;
LABEL_54:
            [v28 addObject:v27];
LABEL_55:

            goto LABEL_69;
          case 0x14u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 176;
            goto LABEL_68;
          case 0x15u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 184;
            goto LABEL_68;
          case 0x16u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 192;
            goto LABEL_68;
          case 0x17u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 200;
            goto LABEL_68;
          case 0x18u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 208;
            goto LABEL_68;
          case 0x19u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 216;
            goto LABEL_68;
          case 0x1Au:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 224;
            goto LABEL_68;
          case 0x1Bu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 232;
            goto LABEL_68;
          case 0x1Cu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 240;
            goto LABEL_68;
          case 0x1Du:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 248;
            goto LABEL_68;
          case 0x1Eu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 256;
            goto LABEL_68;
          case 0x1Fu:
            v29 = *v8;
            v30 = *&v7[v29];
            if (v30 <= 0xFFFFFFFFFFFFFFF7 && v30 + 8 <= *&v7[*v9])
            {
              v31 = *(*&v7[*v12] + v30);
              *&v7[v29] = v30 + 8;
            }

            else
            {
              *&v7[v23] = 1;
              v31 = 0.0;
            }

            v10 = 0;
            self->_duration = v31;
            self->_hasDuration = 1;
            goto LABEL_70;
          case 0x20u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 272;
            goto LABEL_68;
          case 0x21u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 280;
            goto LABEL_68;
          case 0x22u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 288;
            goto LABEL_68;
          case 0x23u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 296;
            goto LABEL_68;
          case 0x24u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 304;
LABEL_68:
            v32 = *(&self->super.super.isa + v26);
            *(&self->super.super.isa + v26) = v25;

            goto LABEL_69;
          default:
            if (CCPBReaderSkipValueWithTag())
            {
LABEL_69:
              v10 = 0;
            }

            else
            {
              v33 = objc_opt_class();
              NSStringFromClass(v33);
              errorCopy = error;
              v35 = v34 = dataCopy;
              v36 = *&v7[*v11];
              v10 = CCSkipFieldErrorForMessage();

              dataCopy = v34;
              error = errorCopy;
            }

LABEL_70:
            if (*&v7[*v8] >= *&v7[*v9])
            {
              goto LABEL_78;
            }

            goto LABEL_3;
        }
      }
    }

    *&v7[*v11] = 1;
LABEL_17:
    v23 = *v11;
    v24 = *&v7[v23];
    if (v24)
    {
      v22 = 0;
    }

    else
    {
      v22 = v16;
    }

    if (!v24)
    {
      goto LABEL_21;
    }

LABEL_77:
    v10 = 0;
  }

LABEL_78:
  v37 = [v51 copy];
  customerNames = self->_customerNames;
  self->_customerNames = v37;

  v39 = [v50 copy];
  seatNumbers = self->_seatNumbers;
  self->_seatNumbers = v39;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    v41 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v47 = 1;
      goto LABEL_83;
    }

    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = *&v7[*v41];
    CCInvalidBufferErrorForMessage();
    v46 = v45 = dataCopy;
    CCSetError();

    dataCopy = v45;
  }

  v47 = 0;
LABEL_83:

  return v47;
}

- (CCAppIntentsExtractedEntityFlightReservation)initWithFlightDesignator:(id)designator flightConfirmationNumber:(id)number flightCarrier:(id)carrier flightCarrierCode:(id)code provider:(id)provider customerNames:(id)names flightDepartureDateTime:(id)time flightDepartureTimeZone:(id)self0 flightBoardingDateTime:(id)self1 flightDepartureAirportCode:(id)self2 flightDepartureAirportName:(id)self3 flightDepartureAirportAddress:(id)self4 flightDepartureAirportLocality:(id)self5 flightDepartureAirportRegion:(id)self6 flightDepartureAirportPostalCode:(id)self7 flightDepartureAirportCountry:(id)self8 flightDepartureTerminal:(id)self9 flightDepartureGate:(id)gate seatNumbers:(id)numbers flightArrivalDateTime:(id)arrivalDateTime flightArrivalTimeZone:(id)timeZone flightArrivalAirportCode:(id)arrivalAirportCode flightArrivalAirportName:(id)airportName flightArrivalAirportAddress:(id)airportAddress flightArrivalAirportLocality:(id)airportLocality flightArrivalAirportRegion:(id)airportRegion flightArrivalAirportPostalCode:(id)airportPostalCode flightArrivalAirportCountry:(id)designator0 flightArrivalTerminal:(id)designator1 flightArrivalGate:(id)designator2 duration:(id)designator3 flightCheckInUrl:(id)designator4 cost:(id)designator5 costCurrencyCode:(id)designator6 flightNumber:(id)designator7 eventStatus:(id)designator8 error:(id *)designator9
{
  v172 = *MEMORY[0x1E69E9840];
  designatorCopy = designator;
  numberCopy = number;
  carrierCopy = carrier;
  codeCopy = code;
  providerCopy = provider;
  namesCopy = names;
  timeCopy = time;
  zoneCopy = zone;
  dateTimeCopy = dateTime;
  airportCodeCopy = airportCode;
  nameCopy = name;
  addressCopy = address;
  localityCopy = locality;
  regionCopy = region;
  postalCodeCopy = postalCode;
  countryCopy = country;
  terminalCopy = terminal;
  gateCopy = gate;
  numbersCopy = numbers;
  arrivalDateTimeCopy = arrivalDateTime;
  timeZoneCopy = timeZone;
  arrivalAirportCodeCopy = arrivalAirportCode;
  airportNameCopy = airportName;
  airportAddressCopy = airportAddress;
  airportLocalityCopy = airportLocality;
  airportRegionCopy = airportRegion;
  airportPostalCodeCopy = airportPostalCode;
  airportCountryCopy = airportCountry;
  arrivalTerminalCopy = arrivalTerminal;
  arrivalGateCopy = arrivalGate;
  durationCopy = duration;
  urlCopy = url;
  costCopy = cost;
  currencyCodeCopy = currencyCode;
  flightNumberCopy = flightNumber;
  statusCopy = status;
  v49 = objc_opt_new();
  v138 = zoneCopy;
  if (!designatorCopy)
  {
    v51 = 0;
LABEL_5:
    v109 = designatorCopy;
    if (numberCopy)
    {
      objc_opt_class();
      v168 = v51;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v53 = v51;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_150;
      }

      CCPBDataWriterWriteStringField();
      if (!carrierCopy)
      {
LABEL_8:
        v51 = v53;
        if (codeCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v53 = v51;
      if (!carrierCopy)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v167 = v53;
    v58 = CCValidateIsInstanceOfExpectedClass();
    v51 = v53;

    if (!v58)
    {
      goto LABEL_155;
    }

    CCPBDataWriterWriteStringField();
    if (codeCopy)
    {
LABEL_9:
      objc_opt_class();
      v166 = v51;
      v54 = CCValidateIsInstanceOfExpectedClass();
      v53 = v51;

      if (!v54)
      {
        goto LABEL_150;
      }

      CCPBDataWriterWriteStringField();
      if (!providerCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_16:
    v53 = v51;
    if (!providerCopy)
    {
LABEL_11:
      v108 = codeCopy;
      v55 = providerCopy;
      v51 = v53;
      goto LABEL_19;
    }

LABEL_17:
    objc_opt_class();
    v165 = v53;
    v59 = CCValidateIsInstanceOfExpectedClass();
    v51 = v53;

    if (!v59)
    {
      goto LABEL_155;
    }

    v108 = codeCopy;
    v55 = providerCopy;
    CCPBDataWriterWriteStringField();
LABEL_19:
    if (namesCopy)
    {
      objc_opt_class();
      v164 = v51;
      v60 = CCValidateArrayValues();
      v61 = v51;

      if (!v60)
      {
        goto LABEL_40;
      }

      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v62 = namesCopy;
      v63 = [v62 countByEnumeratingWithState:&v160 objects:v171 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v161;
        do
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v161 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v160 + 1) + 8 * i);
            CCPBDataWriterWriteStringField();
          }

          v64 = [v62 countByEnumeratingWithState:&v160 objects:v171 count:16];
        }

        while (v64);
      }

      zoneCopy = v138;
    }

    else
    {
      v61 = v51;
    }

    if (timeCopy)
    {
      objc_opt_class();
      v159 = v61;
      v68 = CCValidateIsInstanceOfExpectedClass();
      v51 = v61;

      if (!v68)
      {
        CCSetError();
        v56 = 0;
        goto LABEL_42;
      }

      CCPBDataWriterWriteStringField();
      if (!zoneCopy)
      {
LABEL_33:
        v61 = v51;
LABEL_37:
        providerCopy = v55;
        codeCopy = v108;
        if (dateTimeCopy)
        {
          objc_opt_class();
          v157 = v61;
          v70 = CCValidateIsInstanceOfExpectedClass();
          v51 = v61;

          if (!v70)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v61;
        }

        if (airportCodeCopy)
        {
          objc_opt_class();
          v156 = v51;
          v71 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v71)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (nameCopy)
        {
          objc_opt_class();
          v155 = v53;
          v72 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v72)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (addressCopy)
        {
          objc_opt_class();
          v154 = v51;
          v73 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v73)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (localityCopy)
        {
          objc_opt_class();
          v153 = v53;
          v74 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v74)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (regionCopy)
        {
          objc_opt_class();
          v152 = v51;
          v75 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v75)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (postalCodeCopy)
        {
          objc_opt_class();
          v151 = v53;
          v76 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v76)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (countryCopy)
        {
          objc_opt_class();
          v150 = v51;
          v77 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v77)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (terminalCopy)
        {
          objc_opt_class();
          v149 = v53;
          v78 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v78)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (gateCopy)
        {
          objc_opt_class();
          v148 = v51;
          v79 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v79)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (numbersCopy)
        {
          objc_opt_class();
          v147 = v53;
          v80 = CCValidateArrayValues();
          v51 = v53;

          if (!v80)
          {
            goto LABEL_155;
          }

          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v81 = numbersCopy;
          v82 = [v81 countByEnumeratingWithState:&v143 objects:v170 count:16];
          if (v82)
          {
            v83 = v82;
            v84 = *v144;
            do
            {
              for (j = 0; j != v83; ++j)
              {
                if (*v144 != v84)
                {
                  objc_enumerationMutation(v81);
                }

                v86 = *(*(&v143 + 1) + 8 * j);
                CCPBDataWriterWriteStringField();
              }

              v83 = [v81 countByEnumeratingWithState:&v143 objects:v170 count:16];
            }

            while (v83);
          }
        }

        else
        {
          v51 = v53;
        }

        if (arrivalDateTimeCopy)
        {
          objc_opt_class();
          v87 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v87)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (timeZoneCopy)
        {
          objc_opt_class();
          v88 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v88)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (arrivalAirportCodeCopy)
        {
          objc_opt_class();
          v89 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v89)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (airportNameCopy)
        {
          objc_opt_class();
          v90 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v90)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (airportAddressCopy)
        {
          objc_opt_class();
          v91 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v91)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (airportLocalityCopy)
        {
          objc_opt_class();
          v92 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v92)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (airportRegionCopy)
        {
          objc_opt_class();
          v93 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v93)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (airportPostalCodeCopy)
        {
          objc_opt_class();
          v94 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v94)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (airportCountryCopy)
        {
          objc_opt_class();
          v95 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v95)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (arrivalTerminalCopy)
        {
          objc_opt_class();
          v96 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v96)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (arrivalGateCopy)
        {
          objc_opt_class();
          v97 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v97)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (durationCopy)
        {
          objc_opt_class();
          v98 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v98)
          {
            goto LABEL_155;
          }

          [durationCopy doubleValue];
          CCPBDataWriterWriteDoubleField();
        }

        else
        {
          v51 = v53;
        }

        if (urlCopy)
        {
          objc_opt_class();
          v99 = CCValidateIsInstanceOfExpectedClass();
          v53 = v51;

          if (!v99)
          {
            goto LABEL_150;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v53 = v51;
        }

        if (costCopy)
        {
          objc_opt_class();
          v100 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v100)
          {
            goto LABEL_155;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v51 = v53;
        }

        if (!currencyCodeCopy)
        {
          v53 = v51;
          goto LABEL_152;
        }

        objc_opt_class();
        v101 = CCValidateIsInstanceOfExpectedClass();
        v53 = v51;

        if (v101)
        {
          CCPBDataWriterWriteStringField();
LABEL_152:
          if (!flightNumberCopy)
          {
            v51 = v53;
            goto LABEL_160;
          }

          objc_opt_class();
          v102 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (v102)
          {
            CCPBDataWriterWriteStringField();
LABEL_160:
            if (!statusCopy)
            {
LABEL_163:
              immutableData = [v49 immutableData];
              selfCopy3 = [(CCItemMessage *)self initWithData:immutableData error:error];

              v56 = selfCopy3;
              goto LABEL_157;
            }

            objc_opt_class();
            v105 = CCValidateIsInstanceOfExpectedClass();
            v106 = v51;

            if (v105)
            {
              CCPBDataWriterWriteStringField();
              v51 = v106;
              goto LABEL_163;
            }

            CCSetError();
            v56 = 0;
            v51 = v106;
LABEL_156:
            selfCopy3 = self;
LABEL_157:
            designatorCopy = v109;
            goto LABEL_158;
          }

LABEL_155:
          CCSetError();
          v56 = 0;
          goto LABEL_156;
        }

LABEL_150:
        CCSetError();
        v56 = 0;
        v51 = v53;
        goto LABEL_156;
      }
    }

    else
    {
      v51 = v61;
      if (!zoneCopy)
      {
        goto LABEL_33;
      }
    }

    objc_opt_class();
    v158 = v51;
    v69 = CCValidateIsInstanceOfExpectedClass();
    v61 = v51;

    if (v69)
    {
      CCPBDataWriterWriteStringField();
      goto LABEL_37;
    }

LABEL_40:
    CCSetError();
    v56 = 0;
    v51 = v61;
LABEL_42:
    selfCopy3 = self;
    providerCopy = v55;
    codeCopy = v108;
    designatorCopy = v109;
    goto LABEL_158;
  }

  objc_opt_class();
  v169 = 0;
  v50 = CCValidateIsInstanceOfExpectedClass();
  v51 = 0;
  if (v50)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v56 = 0;
  selfCopy3 = self;
LABEL_158:

  v103 = *MEMORY[0x1E69E9840];
  return v56;
}

@end