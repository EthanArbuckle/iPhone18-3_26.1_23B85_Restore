@interface CCAppIntentsExtractedEntityFlightReservation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityFlightReservation)initWithFlightDesignator:(id)a3 flightConfirmationNumber:(id)a4 flightCarrier:(id)a5 flightCarrierCode:(id)a6 provider:(id)a7 customerNames:(id)a8 flightDepartureDateTime:(id)a9 flightDepartureTimeZone:(id)a10 flightBoardingDateTime:(id)a11 flightDepartureAirportCode:(id)a12 flightDepartureAirportName:(id)a13 flightDepartureAirportAddress:(id)a14 flightDepartureAirportLocality:(id)a15 flightDepartureAirportRegion:(id)a16 flightDepartureAirportPostalCode:(id)a17 flightDepartureAirportCountry:(id)a18 flightDepartureTerminal:(id)a19 flightDepartureGate:(id)a20 seatNumbers:(id)a21 flightArrivalDateTime:(id)a22 flightArrivalTimeZone:(id)a23 flightArrivalAirportCode:(id)a24 flightArrivalAirportName:(id)a25 flightArrivalAirportAddress:(id)a26 flightArrivalAirportLocality:(id)a27 flightArrivalAirportRegion:(id)a28 flightArrivalAirportPostalCode:(id)a29 flightArrivalAirportCountry:(id)a30 flightArrivalTerminal:(id)a31 flightArrivalGate:(id)a32 duration:(id)a33 flightCheckInUrl:(id)a34 cost:(id)a35 costCurrencyCode:(id)a36 flightNumber:(id)a37 eventStatus:(id)a38 error:(id *)a39;
- (CCAppIntentsExtractedEntityFlightReservation)initWithJSONDictionary:(id)a3 error:(id *)a4;
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
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityFlightReservation

- (CCAppIntentsExtractedEntityFlightReservation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v50 = [v6 objectForKeyedSubscript:@"flightDesignator"];
    v49 = [v6 objectForKeyedSubscript:@"flightConfirmationNumber"];
    v48 = [v6 objectForKeyedSubscript:@"flightCarrier"];
    v47 = [v6 objectForKeyedSubscript:@"flightCarrierCode"];
    v46 = [v6 objectForKeyedSubscript:@"provider"];
    v45 = [v6 objectForKeyedSubscript:@"customerNames"];
    v44 = [v6 objectForKeyedSubscript:@"flightDepartureDateTime"];
    v43 = [v6 objectForKeyedSubscript:@"flightDepartureTimeZone"];
    v42 = [v6 objectForKeyedSubscript:@"flightBoardingDateTime"];
    v41 = [v6 objectForKeyedSubscript:@"flightDepartureAirportCode"];
    v37 = [v6 objectForKeyedSubscript:@"flightDepartureAirportName"];
    v40 = [v6 objectForKeyedSubscript:@"flightDepartureAirportAddress"];
    [v6 objectForKeyedSubscript:@"flightDepartureAirportLocality"];
    v39 = v24 = a4;
    v34 = [v6 objectForKeyedSubscript:@"flightDepartureAirportRegion"];
    v38 = [v6 objectForKeyedSubscript:@"flightDepartureAirportPostalCode"];
    v36 = [v6 objectForKeyedSubscript:@"flightDepartureAirportCountry"];
    v35 = [v6 objectForKeyedSubscript:@"flightDepartureTerminal"];
    v23 = [v6 objectForKeyedSubscript:@"flightDepartureGate"];
    v33 = [v6 objectForKeyedSubscript:@"seatNumbers"];
    v22 = [v6 objectForKeyedSubscript:@"flightArrivalDateTime"];
    v32 = [v6 objectForKeyedSubscript:@"flightArrivalTimeZone"];
    v21 = [v6 objectForKeyedSubscript:@"flightArrivalAirportCode"];
    v31 = [v6 objectForKeyedSubscript:@"flightArrivalAirportName"];
    v20 = [v6 objectForKeyedSubscript:@"flightArrivalAirportAddress"];
    v30 = [v6 objectForKeyedSubscript:@"flightArrivalAirportLocality"];
    v29 = [v6 objectForKeyedSubscript:@"flightArrivalAirportRegion"];
    v28 = [v6 objectForKeyedSubscript:@"flightArrivalAirportPostalCode"];
    v19 = [v6 objectForKeyedSubscript:@"flightArrivalAirportCountry"];
    v18 = [v6 objectForKeyedSubscript:@"flightArrivalTerminal"];
    [v6 objectForKeyedSubscript:@"flightArrivalGate"];
    v17 = v27 = self;
    [v6 objectForKeyedSubscript:@"duration"];
    v16 = v26 = v8;
    v9 = [v6 objectForKeyedSubscript:@"flightCheckInUrl"];
    v10 = [v6 objectForKeyedSubscript:@"cost"];
    v11 = [v6 objectForKeyedSubscript:@"costCurrencyCode"];
    v12 = [v6 objectForKeyedSubscript:@"flightNumber"];
    v13 = [v6 objectForKeyedSubscript:@"eventStatus"];
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
    v4 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDesignator];
    [v3 setObject:v4 forKeyedSubscript:@"flightDesignator"];
  }

  if (self->_flightConfirmationNumber)
  {
    v5 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightConfirmationNumber];
    [v3 setObject:v5 forKeyedSubscript:@"flightConfirmationNumber"];
  }

  if (self->_flightCarrier)
  {
    v6 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightCarrier];
    [v3 setObject:v6 forKeyedSubscript:@"flightCarrier"];
  }

  if (self->_flightCarrierCode)
  {
    v7 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightCarrierCode];
    [v3 setObject:v7 forKeyedSubscript:@"flightCarrierCode"];
  }

  if (self->_provider)
  {
    v8 = [(CCAppIntentsExtractedEntityFlightReservation *)self provider];
    [v3 setObject:v8 forKeyedSubscript:@"provider"];
  }

  if (self->_customerNames)
  {
    v9 = [(CCAppIntentsExtractedEntityFlightReservation *)self customerNames];
    [v3 setObject:v9 forKeyedSubscript:@"customerNames"];
  }

  if (self->_flightDepartureDateTime)
  {
    v10 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureDateTime];
    [v3 setObject:v10 forKeyedSubscript:@"flightDepartureDateTime"];
  }

  if (self->_flightDepartureTimeZone)
  {
    v11 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureTimeZone];
    [v3 setObject:v11 forKeyedSubscript:@"flightDepartureTimeZone"];
  }

  if (self->_flightBoardingDateTime)
  {
    v12 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightBoardingDateTime];
    [v3 setObject:v12 forKeyedSubscript:@"flightBoardingDateTime"];
  }

  if (self->_flightDepartureAirportCode)
  {
    v13 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportCode];
    [v3 setObject:v13 forKeyedSubscript:@"flightDepartureAirportCode"];
  }

  if (self->_flightDepartureAirportName)
  {
    v14 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportName];
    [v3 setObject:v14 forKeyedSubscript:@"flightDepartureAirportName"];
  }

  if (self->_flightDepartureAirportAddress)
  {
    v15 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportAddress];
    [v3 setObject:v15 forKeyedSubscript:@"flightDepartureAirportAddress"];
  }

  if (self->_flightDepartureAirportLocality)
  {
    v16 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportLocality];
    [v3 setObject:v16 forKeyedSubscript:@"flightDepartureAirportLocality"];
  }

  if (self->_flightDepartureAirportRegion)
  {
    v17 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportRegion];
    [v3 setObject:v17 forKeyedSubscript:@"flightDepartureAirportRegion"];
  }

  if (self->_flightDepartureAirportPostalCode)
  {
    v18 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportPostalCode];
    [v3 setObject:v18 forKeyedSubscript:@"flightDepartureAirportPostalCode"];
  }

  if (self->_flightDepartureAirportCountry)
  {
    v19 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureAirportCountry];
    [v3 setObject:v19 forKeyedSubscript:@"flightDepartureAirportCountry"];
  }

  if (self->_flightDepartureTerminal)
  {
    v20 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureTerminal];
    [v3 setObject:v20 forKeyedSubscript:@"flightDepartureTerminal"];
  }

  if (self->_flightDepartureGate)
  {
    v21 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightDepartureGate];
    [v3 setObject:v21 forKeyedSubscript:@"flightDepartureGate"];
  }

  if (self->_seatNumbers)
  {
    v22 = [(CCAppIntentsExtractedEntityFlightReservation *)self seatNumbers];
    [v3 setObject:v22 forKeyedSubscript:@"seatNumbers"];
  }

  if (self->_flightArrivalDateTime)
  {
    v23 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalDateTime];
    [v3 setObject:v23 forKeyedSubscript:@"flightArrivalDateTime"];
  }

  if (self->_flightArrivalTimeZone)
  {
    v24 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalTimeZone];
    [v3 setObject:v24 forKeyedSubscript:@"flightArrivalTimeZone"];
  }

  if (self->_flightArrivalAirportCode)
  {
    v25 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportCode];
    [v3 setObject:v25 forKeyedSubscript:@"flightArrivalAirportCode"];
  }

  if (self->_flightArrivalAirportName)
  {
    v26 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportName];
    [v3 setObject:v26 forKeyedSubscript:@"flightArrivalAirportName"];
  }

  if (self->_flightArrivalAirportAddress)
  {
    v27 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportAddress];
    [v3 setObject:v27 forKeyedSubscript:@"flightArrivalAirportAddress"];
  }

  if (self->_flightArrivalAirportLocality)
  {
    v28 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportLocality];
    [v3 setObject:v28 forKeyedSubscript:@"flightArrivalAirportLocality"];
  }

  if (self->_flightArrivalAirportRegion)
  {
    v29 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportRegion];
    [v3 setObject:v29 forKeyedSubscript:@"flightArrivalAirportRegion"];
  }

  if (self->_flightArrivalAirportPostalCode)
  {
    v30 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportPostalCode];
    [v3 setObject:v30 forKeyedSubscript:@"flightArrivalAirportPostalCode"];
  }

  if (self->_flightArrivalAirportCountry)
  {
    v31 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalAirportCountry];
    [v3 setObject:v31 forKeyedSubscript:@"flightArrivalAirportCountry"];
  }

  if (self->_flightArrivalTerminal)
  {
    v32 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalTerminal];
    [v3 setObject:v32 forKeyedSubscript:@"flightArrivalTerminal"];
  }

  if (self->_flightArrivalGate)
  {
    v33 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightArrivalGate];
    [v3 setObject:v33 forKeyedSubscript:@"flightArrivalGate"];
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
    v36 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightCheckInUrl];
    [v3 setObject:v36 forKeyedSubscript:@"flightCheckInUrl"];
  }

  if (self->_cost)
  {
    v37 = [(CCAppIntentsExtractedEntityFlightReservation *)self cost];
    [v3 setObject:v37 forKeyedSubscript:@"cost"];
  }

  if (self->_costCurrencyCode)
  {
    v38 = [(CCAppIntentsExtractedEntityFlightReservation *)self costCurrencyCode];
    [v3 setObject:v38 forKeyedSubscript:@"costCurrencyCode"];
  }

  if (self->_flightNumber)
  {
    v39 = [(CCAppIntentsExtractedEntityFlightReservation *)self flightNumber];
    [v3 setObject:v39 forKeyedSubscript:@"flightNumber"];
  }

  if (self->_eventStatus)
  {
    v40 = [(CCAppIntentsExtractedEntityFlightReservation *)self eventStatus];
    [v3 setObject:v40 forKeyedSubscript:@"eventStatus"];
  }

  v41 = [v3 copy];

  return v41;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v42 = a3;
  if (self->_flightDesignator)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27327 stringValue:self->_flightDesignator];
    v42[2](v42, v5);
  }

  if (self->_flightConfirmationNumber)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27328 stringValue:self->_flightConfirmationNumber];
    v42[2](v42, v6);
  }

  if (self->_flightCarrier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27329 stringValue:self->_flightCarrier];
    v42[2](v42, v7);
  }

  if (self->_flightCarrierCode)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27330 stringValue:self->_flightCarrierCode];
    v42[2](v42, v8);
  }

  if (self->_provider)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27331 stringValue:self->_provider];
    v42[2](v42, v9);
  }

  if (self->_customerNames)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27332 repeatedStringValue:self->_customerNames];
    v42[2](v42, v10);
  }

  if (self->_flightDepartureDateTime)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27333 stringValue:self->_flightDepartureDateTime];
    v42[2](v42, v11);
  }

  if (self->_flightDepartureTimeZone)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27334 stringValue:self->_flightDepartureTimeZone];
    v42[2](v42, v12);
  }

  if (self->_flightBoardingDateTime)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27335 stringValue:self->_flightBoardingDateTime];
    v42[2](v42, v13);
  }

  if (self->_flightDepartureAirportCode)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27336 stringValue:self->_flightDepartureAirportCode];
    v42[2](v42, v14);
  }

  if (self->_flightDepartureAirportName)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27337 stringValue:self->_flightDepartureAirportName];
    v42[2](v42, v15);
  }

  if (self->_flightDepartureAirportAddress)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27338 stringValue:self->_flightDepartureAirportAddress];
    v42[2](v42, v16);
  }

  if (self->_flightDepartureAirportLocality)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27339 stringValue:self->_flightDepartureAirportLocality];
    v42[2](v42, v17);
  }

  if (self->_flightDepartureAirportRegion)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27340 stringValue:self->_flightDepartureAirportRegion];
    v42[2](v42, v18);
  }

  if (self->_flightDepartureAirportPostalCode)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27341 stringValue:self->_flightDepartureAirportPostalCode];
    v42[2](v42, v19);
  }

  if (self->_flightDepartureAirportCountry)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27342 stringValue:self->_flightDepartureAirportCountry];
    v42[2](v42, v20);
  }

  if (self->_flightDepartureTerminal)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27343 stringValue:self->_flightDepartureTerminal];
    v42[2](v42, v21);
  }

  if (self->_flightDepartureGate)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27344 stringValue:self->_flightDepartureGate];
    v42[2](v42, v22);
  }

  if (self->_seatNumbers)
  {
    v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27345 repeatedStringValue:self->_seatNumbers];
    v42[2](v42, v23);
  }

  if (self->_flightArrivalDateTime)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27346 stringValue:self->_flightArrivalDateTime];
    v42[2](v42, v24);
  }

  if (self->_flightArrivalTimeZone)
  {
    v25 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27347 stringValue:self->_flightArrivalTimeZone];
    v42[2](v42, v25);
  }

  if (self->_flightArrivalAirportCode)
  {
    v26 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27348 stringValue:self->_flightArrivalAirportCode];
    v42[2](v42, v26);
  }

  if (self->_flightArrivalAirportName)
  {
    v27 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27349 stringValue:self->_flightArrivalAirportName];
    v42[2](v42, v27);
  }

  if (self->_flightArrivalAirportAddress)
  {
    v28 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27350 stringValue:self->_flightArrivalAirportAddress];
    v42[2](v42, v28);
  }

  if (self->_flightArrivalAirportLocality)
  {
    v29 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27351 stringValue:self->_flightArrivalAirportLocality];
    v42[2](v42, v29);
  }

  if (self->_flightArrivalAirportRegion)
  {
    v30 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27352 stringValue:self->_flightArrivalAirportRegion];
    v42[2](v42, v30);
  }

  if (self->_flightArrivalAirportPostalCode)
  {
    v31 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27353 stringValue:self->_flightArrivalAirportPostalCode];
    v42[2](v42, v31);
  }

  if (self->_flightArrivalAirportCountry)
  {
    v32 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27354 stringValue:self->_flightArrivalAirportCountry];
    v42[2](v42, v32);
  }

  if (self->_flightArrivalTerminal)
  {
    v33 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27355 stringValue:self->_flightArrivalTerminal];
    v42[2](v42, v33);
  }

  if (self->_flightArrivalGate)
  {
    v34 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27356 stringValue:self->_flightArrivalGate];
    v42[2](v42, v34);
  }

  if (self->_hasDuration)
  {
    v35 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27357 doubleValue:self->_duration];
    v42[2](v42, v35);
  }

  if (self->_flightCheckInUrl)
  {
    v36 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27358 stringValue:self->_flightCheckInUrl];
    v42[2](v42, v36);
  }

  if (self->_cost)
  {
    v37 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27359 stringValue:self->_cost];
    v42[2](v42, v37);
  }

  if (self->_costCurrencyCode)
  {
    v38 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27360 stringValue:self->_costCurrencyCode];
    v42[2](v42, v38);
  }

  if (self->_flightNumber)
  {
    v39 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27361 stringValue:self->_flightNumber];
    v42[2](v42, v39);
  }

  v40 = v42;
  if (self->_eventStatus)
  {
    v41 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27362 stringValue:self->_eventStatus];
    v42[2](v42, v41);

    v40 = v42;
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

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
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
              v49 = a4;
              v35 = v34 = v6;
              v36 = *&v7[*v11];
              v10 = CCSkipFieldErrorForMessage();

              v6 = v34;
              a4 = v49;
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
    v46 = v45 = v6;
    CCSetError();

    v6 = v45;
  }

  v47 = 0;
LABEL_83:

  return v47;
}

- (CCAppIntentsExtractedEntityFlightReservation)initWithFlightDesignator:(id)a3 flightConfirmationNumber:(id)a4 flightCarrier:(id)a5 flightCarrierCode:(id)a6 provider:(id)a7 customerNames:(id)a8 flightDepartureDateTime:(id)a9 flightDepartureTimeZone:(id)a10 flightBoardingDateTime:(id)a11 flightDepartureAirportCode:(id)a12 flightDepartureAirportName:(id)a13 flightDepartureAirportAddress:(id)a14 flightDepartureAirportLocality:(id)a15 flightDepartureAirportRegion:(id)a16 flightDepartureAirportPostalCode:(id)a17 flightDepartureAirportCountry:(id)a18 flightDepartureTerminal:(id)a19 flightDepartureGate:(id)a20 seatNumbers:(id)a21 flightArrivalDateTime:(id)a22 flightArrivalTimeZone:(id)a23 flightArrivalAirportCode:(id)a24 flightArrivalAirportName:(id)a25 flightArrivalAirportAddress:(id)a26 flightArrivalAirportLocality:(id)a27 flightArrivalAirportRegion:(id)a28 flightArrivalAirportPostalCode:(id)a29 flightArrivalAirportCountry:(id)a30 flightArrivalTerminal:(id)a31 flightArrivalGate:(id)a32 duration:(id)a33 flightCheckInUrl:(id)a34 cost:(id)a35 costCurrencyCode:(id)a36 flightNumber:(id)a37 eventStatus:(id)a38 error:(id *)a39
{
  v172 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  v142 = a8;
  v140 = a9;
  v48 = a10;
  v139 = a11;
  v137 = a12;
  v136 = a13;
  v135 = a14;
  v134 = a15;
  v133 = a16;
  v132 = a17;
  v131 = a18;
  v130 = a19;
  v129 = a20;
  v128 = a21;
  v127 = a22;
  v126 = a23;
  v125 = a24;
  v124 = a25;
  v122 = a26;
  v123 = a27;
  v121 = a28;
  v120 = a29;
  v119 = a30;
  v118 = a31;
  v117 = a32;
  v116 = a33;
  v115 = a34;
  v114 = a35;
  v113 = a36;
  v112 = a37;
  v111 = a38;
  v49 = objc_opt_new();
  v138 = v48;
  if (!v43)
  {
    v51 = 0;
LABEL_5:
    v109 = v43;
    if (v44)
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
      if (!v45)
      {
LABEL_8:
        v51 = v53;
        if (v46)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v53 = v51;
      if (!v45)
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
    if (v46)
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
      if (!v47)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_16:
    v53 = v51;
    if (!v47)
    {
LABEL_11:
      v108 = v46;
      v55 = v47;
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

    v108 = v46;
    v55 = v47;
    CCPBDataWriterWriteStringField();
LABEL_19:
    if (v142)
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
      v62 = v142;
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

      v48 = v138;
    }

    else
    {
      v61 = v51;
    }

    if (v140)
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
      if (!v48)
      {
LABEL_33:
        v61 = v51;
LABEL_37:
        v47 = v55;
        v46 = v108;
        if (v139)
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

        if (v137)
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

        if (v136)
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

        if (v135)
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

        if (v134)
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

        if (v133)
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

        if (v132)
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

        if (v131)
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

        if (v130)
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

        if (v129)
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

        if (v128)
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
          v81 = v128;
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

        if (v127)
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

        if (v126)
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

        if (v125)
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

        if (v124)
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

        if (v122)
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

        if (v123)
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

        if (v121)
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

        if (v120)
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

        if (v119)
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

        if (v118)
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

        if (v117)
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

        if (v116)
        {
          objc_opt_class();
          v98 = CCValidateIsInstanceOfExpectedClass();
          v51 = v53;

          if (!v98)
          {
            goto LABEL_155;
          }

          [v116 doubleValue];
          CCPBDataWriterWriteDoubleField();
        }

        else
        {
          v51 = v53;
        }

        if (v115)
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

        if (v114)
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

        if (!v113)
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
          if (!v112)
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
            if (!v111)
            {
LABEL_163:
              v107 = [v49 immutableData];
              v57 = [(CCItemMessage *)self initWithData:v107 error:a39];

              v56 = v57;
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
            v57 = self;
LABEL_157:
            v43 = v109;
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
      if (!v48)
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
    v57 = self;
    v47 = v55;
    v46 = v108;
    v43 = v109;
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
  v57 = self;
LABEL_158:

  v103 = *MEMORY[0x1E69E9840];
  return v56;
}

@end