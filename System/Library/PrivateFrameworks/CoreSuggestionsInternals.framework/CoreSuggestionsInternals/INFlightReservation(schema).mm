@interface INFlightReservation(schema)
+ (id)airlineFromFlightSchema:()schema;
+ (id)airportFromAirportSchema:()schema;
+ (id)arrivalAirporGateFromFlightSchema:()schema;
+ (id)departureAirportGateFromFlightSchema:()schema;
+ (id)flightFromReservationSchema:()schema;
+ (id)fromSchema:()schema;
+ (id)schemaFromAirline:()schema;
+ (id)schemaFromAirport:()schema;
+ (id)schemaFromFlight:()schema;
+ (id)schemaFromFlightReservation:()schema;
@end

@implementation INFlightReservation(schema)

+ (id)schemaFromFlight:()schema
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:@"http://schema.org/Flight" forKeyedSubscript:@"@type"];
  airline = [v3 airline];

  if (airline)
  {
    v6 = MEMORY[0x277CD3C28];
    airline2 = [v3 airline];
    v8 = [v6 schemaFromAirline:airline2];
    [v4 setObject:v8 forKeyedSubscript:@"airline"];
  }

  flightNumber = [v3 flightNumber];

  if (flightNumber)
  {
    flightNumber2 = [v3 flightNumber];
    [v4 setObject:flightNumber2 forKeyedSubscript:@"flightNumber"];
  }

  boardingTime = [v3 boardingTime];
  startDateComponents = [boardingTime startDateComponents];

  if (startDateComponents)
  {
    boardingTime2 = [v3 boardingTime];
    startDateComponents2 = [boardingTime2 startDateComponents];
    schema = [startDateComponents2 schema];
    [v4 setObject:schema forKeyedSubscript:@"boardingTime"];
  }

  flightDuration = [v3 flightDuration];

  if (flightDuration)
  {
    flightDuration2 = [v3 flightDuration];
    startDateComponents3 = [flightDuration2 startDateComponents];

    if (startDateComponents3)
    {
      flightDuration3 = [v3 flightDuration];
      startDateComponents4 = [flightDuration3 startDateComponents];
      schema2 = [startDateComponents4 schema];
      [v4 setObject:schema2 forKeyedSubscript:@"departureTime"];
    }

    flightDuration4 = [v3 flightDuration];
    endDateComponents = [flightDuration4 endDateComponents];

    if (endDateComponents)
    {
      flightDuration5 = [v3 flightDuration];
      endDateComponents2 = [flightDuration5 endDateComponents];
      schema3 = [endDateComponents2 schema];
      [v4 setObject:schema3 forKeyedSubscript:@"arrivalTime"];
    }
  }

  departureAirportGate = [v3 departureAirportGate];
  v28 = departureAirportGate;
  if (departureAirportGate)
  {
    airport = [departureAirportGate airport];

    if (airport)
    {
      v30 = MEMORY[0x277CD3C28];
      airport2 = [v28 airport];
      v32 = [v30 schemaFromAirport:airport2];
      [v4 setObject:v32 forKeyedSubscript:@"departureAirport"];
    }

    terminal = [v28 terminal];

    if (terminal)
    {
      terminal2 = [v28 terminal];
      [v4 setObject:terminal2 forKeyedSubscript:@"departureTerminal"];
    }

    gate = [v28 gate];

    if (gate)
    {
      gate2 = [v28 gate];
      [v4 setObject:gate2 forKeyedSubscript:@"departureGate"];
    }
  }

  arrivalAirportGate = [v3 arrivalAirportGate];
  v38 = arrivalAirportGate;
  if (arrivalAirportGate)
  {
    airport3 = [arrivalAirportGate airport];

    if (airport3)
    {
      v40 = MEMORY[0x277CD3C28];
      airport4 = [v38 airport];
      v42 = [v40 schemaFromAirport:airport4];
      [v4 setObject:v42 forKeyedSubscript:@"arrivalAirport"];
    }

    terminal3 = [v38 terminal];

    if (terminal3)
    {
      terminal4 = [v38 terminal];
      [v4 setObject:terminal4 forKeyedSubscript:@"arrivalTerminal"];
    }

    gate3 = [v38 gate];

    if (gate3)
    {
      gate4 = [v38 gate];
      [v4 setObject:gate4 forKeyedSubscript:@"arrivalGate"];
    }
  }

  return v4;
}

+ (id)schemaFromAirport:()schema
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:@"http://schema.org/Airport" forKeyedSubscript:@"@type"];
  name = [v3 name];

  if (name)
  {
    name2 = [v3 name];
    [v4 setObject:name2 forKeyedSubscript:@"name"];
  }

  iataCode = [v3 iataCode];

  if (iataCode)
  {
    iataCode2 = [v3 iataCode];
    [v4 setObject:iataCode2 forKeyedSubscript:@"iataCode"];
  }

  icaoCode = [v3 icaoCode];

  if (icaoCode)
  {
    icaoCode2 = [v3 icaoCode];
    [v4 setObject:icaoCode2 forKeyedSubscript:@"icaoCode"];
  }

  return v4;
}

+ (id)schemaFromAirline:()schema
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:@"http://schema.org/Airline" forKeyedSubscript:@"@type"];
  name = [v3 name];

  if (name)
  {
    name2 = [v3 name];
    [v4 setObject:name2 forKeyedSubscript:@"name"];
  }

  iataCode = [v3 iataCode];

  if (iataCode)
  {
    iataCode2 = [v3 iataCode];
    [v4 setObject:iataCode2 forKeyedSubscript:@"iataCode"];
  }

  icaoCode = [v3 icaoCode];

  if (icaoCode)
  {
    icaoCode2 = [v3 icaoCode];
    [v4 setObject:icaoCode2 forKeyedSubscript:@"icaoCode"];
  }

  return v4;
}

+ (id)schemaFromFlightReservation:()schema
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CD3F90] schemaFromReservation:v3];
  v5 = [v4 mutableCopy];

  reservedSeat = [v3 reservedSeat];

  if (reservedSeat)
  {
    reservedSeat2 = [v3 reservedSeat];
    schema = [reservedSeat2 schema];

    if (schema)
    {
      v15[0] = @"@type";
      v15[1] = @"ticketedSeat";
      v16[0] = @"http://schema.org/Ticket";
      v16[1] = schema;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v5 setObject:v9 forKeyedSubscript:@"reservedTicket"];
    }
  }

  [v5 setObject:@"http://schema.org/FlightReservation" forKeyedSubscript:@"@type"];
  v10 = MEMORY[0x277CD3C28];
  flight = [v3 flight];
  v12 = [v10 schemaFromFlight:flight];
  [v5 setObject:v12 forKeyedSubscript:@"reservationFor"];

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)flightFromReservationSchema:()schema
{
  v3 = [a3 objectForKeyedSubscript:@"reservationFor"];
  if (v3)
  {
    v4 = [MEMORY[0x277CD3C28] airlineFromFlightSchema:v3];
    v5 = [MEMORY[0x277CD3C28] flightNumberFromFlightSchema:v3];
    v6 = MEMORY[0x277CD3B68];
    v7 = [v3 objectForKeyedSubscript:@"boardingTime"];
    v8 = [v6 fromStartDate:v7];

    v9 = MEMORY[0x277CD3B68];
    v10 = [v3 objectForKeyedSubscript:@"departureTime"];
    v11 = [v3 objectForKeyedSubscript:@"arrivalTime"];
    v12 = [v9 fromStartDate:v10 endDate:v11];

    v13 = [MEMORY[0x277CD3C28] departureAirportGateFromFlightSchema:v3];
    v14 = [MEMORY[0x277CD3C28] arrivalAirporGateFromFlightSchema:v3];
    v15 = [objc_alloc(MEMORY[0x277CD3C20]) initWithAirline:v4 flightNumber:v5 boardingTime:v8 flightDuration:v12 departureAirportGate:v13 arrivalAirportGate:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)arrivalAirporGateFromFlightSchema:()schema
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"arrivalAirport"];
  v5 = [MEMORY[0x277CD3C28] airportFromAirportSchema:v4];
  v6 = objc_alloc(MEMORY[0x277CD3A48]);
  v7 = [v3 objectForKeyedSubscript:@"arrivalTerminal"];
  v8 = [v3 objectForKeyedSubscript:@"arrivalGate"];

  v9 = [v6 initWithAirport:v5 terminal:v7 gate:v8];

  return v9;
}

+ (id)departureAirportGateFromFlightSchema:()schema
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"departureAirport"];
  v5 = [MEMORY[0x277CD3C28] airportFromAirportSchema:v4];
  v6 = objc_alloc(MEMORY[0x277CD3A48]);
  v7 = [v3 objectForKeyedSubscript:@"departureTerminal"];
  v8 = [v3 objectForKeyedSubscript:@"departureGate"];

  v9 = [v6 initWithAirport:v5 terminal:v7 gate:v8];

  return v9;
}

+ (id)airportFromAirportSchema:()schema
{
  v3 = MEMORY[0x277CD3A40];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 objectForKeyedSubscript:@"name"];
  v7 = [v4 objectForKeyedSubscript:@"iataCode"];
  v8 = [v4 objectForKeyedSubscript:@"icaoCode"];

  v9 = [v5 initWithName:v6 iataCode:v7 icaoCode:v8];

  return v9;
}

+ (id)airlineFromFlightSchema:()schema
{
  v3 = a3;
  v4 = @"airline";
  v5 = [v3 objectForKeyedSubscript:@"airline"];

  if (v5 || (v4 = @"provider", [v3 objectForKeyedSubscript:@"provider"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v3 objectForKeyedSubscript:v4];
    v8 = objc_alloc(MEMORY[0x277CD3A38]);
    v9 = [v7 objectForKeyedSubscript:@"name"];
    v10 = [v7 objectForKeyedSubscript:@"iataCode"];
    v11 = [v7 objectForKeyedSubscript:@"icaoCode"];
    v12 = [v8 initWithName:v9 iataCode:v10 icaoCode:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)fromSchema:()schema
{
  v3 = MEMORY[0x277CD3F90];
  v4 = a3;
  v5 = [v3 reservationNumberFromReservationSchema:v4];
  v6 = [MEMORY[0x277CD3F90] bookingTimeFromReservationSchema:v4];
  v17 = [MEMORY[0x277CD3F90] reservationStatusFromReservationSchema:v4];
  v7 = [MEMORY[0x277CD3F90] reservationHolderNameFromReservationSchema:v4];
  v8 = [MEMORY[0x277CD3F90] urlFromReservationSchema:v4];
  v9 = [MEMORY[0x277CD4068] fromSchema:v4];
  v10 = [MEMORY[0x277CD3C28] flightFromReservationSchema:v4];

  v11 = objc_alloc(MEMORY[0x277CD4188]);
  v12 = objc_opt_new();
  uUIDString = [v12 UUIDString];
  v14 = [v11 initWithVocabularyIdentifier:uUIDString spokenPhrase:@"Flight" pronunciationHint:0];

  v15 = [objc_alloc(MEMORY[0x277CD3C28]) initWithItemReference:v14 reservationNumber:v5 bookingTime:v6 reservationStatus:v17 reservationHolderName:v7 actions:0 URL:v8 reservedSeat:v9 flight:v10];

  return v15;
}

@end