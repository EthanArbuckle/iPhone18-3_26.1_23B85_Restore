@interface INBoatReservation(schema)
+ (id)fromSchema:()schema;
+ (id)schemaFromBoatReservation:()schema;
@end

@implementation INBoatReservation(schema)

+ (id)schemaFromBoatReservation:()schema
{
  v65[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CD3F90] schemaFromReservation:v3];
  v5 = [v4 mutableCopy];

  [v5 setObject:@"http://schema.org/BoatReservation" forKeyedSubscript:@"@type"];
  v6 = objc_opt_new();
  [v6 setObject:@"http://schema.org/BoatTrip" forKeyedSubscript:@"@type"];
  boatTrip = [v3 boatTrip];
  tripDuration = [boatTrip tripDuration];
  startDateComponents = [tripDuration startDateComponents];

  if (startDateComponents)
  {
    boatTrip2 = [v3 boatTrip];
    tripDuration2 = [boatTrip2 tripDuration];
    startDateComponents2 = [tripDuration2 startDateComponents];
    schema = [startDateComponents2 schema];
    [v6 setObject:schema forKeyedSubscript:@"departureTime"];
  }

  boatTrip3 = [v3 boatTrip];
  tripDuration3 = [boatTrip3 tripDuration];
  endDateComponents = [tripDuration3 endDateComponents];

  if (endDateComponents)
  {
    boatTrip4 = [v3 boatTrip];
    tripDuration4 = [boatTrip4 tripDuration];
    endDateComponents2 = [tripDuration4 endDateComponents];
    schema2 = [endDateComponents2 schema];
    [v6 setObject:schema2 forKeyedSubscript:@"arrivalTime"];
  }

  boatTrip5 = [v3 boatTrip];
  boatName = [boatTrip5 boatName];

  if (boatName)
  {
    boatTrip6 = [v3 boatTrip];
    boatName2 = [boatTrip6 boatName];
    [v6 setObject:boatName2 forKeyedSubscript:@"name"];
  }

  boatTrip7 = [v3 boatTrip];
  boatNumber = [boatTrip7 boatNumber];

  if (boatNumber)
  {
    boatTrip8 = [v3 boatTrip];
    boatNumber2 = [boatTrip8 boatNumber];
    [v6 setObject:boatNumber2 forKeyedSubscript:@"identifier"];
  }

  v29 = objc_opt_new();
  [v29 setObject:@"http://schema.org/BoatTerminal" forKeyedSubscript:@"@type"];
  boatTrip9 = [v3 boatTrip];
  departureBoatTerminalLocation = [boatTrip9 departureBoatTerminalLocation];
  name = [departureBoatTerminalLocation name];

  if (name)
  {
    boatTrip10 = [v3 boatTrip];
    departureBoatTerminalLocation2 = [boatTrip10 departureBoatTerminalLocation];
    name2 = [departureBoatTerminalLocation2 name];
    [v29 setObject:name2 forKeyedSubscript:@"name"];
  }

  boatTrip11 = [v3 boatTrip];
  departureBoatTerminalLocation3 = [boatTrip11 departureBoatTerminalLocation];
  postalAddress = [departureBoatTerminalLocation3 postalAddress];

  if (postalAddress)
  {
    boatTrip12 = [v3 boatTrip];
    departureBoatTerminalLocation4 = [boatTrip12 departureBoatTerminalLocation];
    postalAddress2 = [departureBoatTerminalLocation4 postalAddress];
    schema3 = [postalAddress2 schema];
    [v29 setObject:schema3 forKeyedSubscript:@"address"];
  }

  if ([v29 count] >= 2)
  {
    [v6 setObject:v29 forKeyedSubscript:@"departureBoatTerminal"];
  }

  v43 = objc_opt_new();
  [v43 setObject:@"http://schema.org/BoatTerminal" forKeyedSubscript:@"@type"];
  boatTrip13 = [v3 boatTrip];
  arrivalBoatTerminalLocation = [boatTrip13 arrivalBoatTerminalLocation];
  name3 = [arrivalBoatTerminalLocation name];

  if (name3)
  {
    boatTrip14 = [v3 boatTrip];
    arrivalBoatTerminalLocation2 = [boatTrip14 arrivalBoatTerminalLocation];
    name4 = [arrivalBoatTerminalLocation2 name];
    [v43 setObject:name4 forKeyedSubscript:@"name"];
  }

  boatTrip15 = [v3 boatTrip];
  arrivalBoatTerminalLocation3 = [boatTrip15 arrivalBoatTerminalLocation];
  postalAddress3 = [arrivalBoatTerminalLocation3 postalAddress];

  if (postalAddress3)
  {
    boatTrip16 = [v3 boatTrip];
    arrivalBoatTerminalLocation4 = [boatTrip16 arrivalBoatTerminalLocation];
    postalAddress4 = [arrivalBoatTerminalLocation4 postalAddress];
    schema4 = [postalAddress4 schema];
    [v43 setObject:schema4 forKeyedSubscript:@"address"];
  }

  if ([v43 count] >= 2)
  {
    [v6 setObject:v43 forKeyedSubscript:@"arrivalBoatTerminal"];
  }

  boatTrip17 = [v3 boatTrip];
  provider = [boatTrip17 provider];

  if (provider)
  {
    v64[0] = @"@type";
    v64[1] = @"name";
    v65[0] = @"http://schema.org/Organization";
    boatTrip18 = [v3 boatTrip];
    provider2 = [boatTrip18 provider];
    v65[1] = provider2;
    v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
    [v6 setObject:v61 forKeyedSubscript:@"provider"];
  }

  if ([v6 count] >= 2)
  {
    [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  }

  v62 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)fromSchema:()schema
{
  v3 = MEMORY[0x277CD3F90];
  v4 = a3;
  v32 = [v3 reservationNumberFromReservationSchema:v4];
  v31 = [MEMORY[0x277CD3F90] bookingTimeFromReservationSchema:v4];
  v30 = [MEMORY[0x277CD3F90] reservationStatusFromReservationSchema:v4];
  v29 = [MEMORY[0x277CD3F90] reservationHolderNameFromReservationSchema:v4];
  v5 = [v4 objectForKeyedSubscript:@"reservationFor"];
  v6 = [v5 objectForKeyedSubscript:@"provider"];
  v27 = [v6 objectForKeyedSubscript:@"name"];

  v28 = [MEMORY[0x277CD3F90] urlFromReservationSchema:v4];

  v25 = objc_alloc(MEMORY[0x277CD3AA8]);
  v7 = [v5 objectForKeyedSubscript:@"name"];
  v24 = [v5 objectForKeyedSubscript:@"identifier"];
  v8 = MEMORY[0x277CD3B68];
  v9 = [v5 objectForKeyedSubscript:@"departureTime"];
  v10 = [v5 objectForKeyedSubscript:@"arrivalTime"];
  v11 = [v8 fromStartDate:v9 endDate:v10];
  v12 = MEMORY[0x277CBFC40];
  v13 = [v5 objectForKeyedSubscript:@"departureBoatTerminal"];
  v14 = [v12 fromSchema:v13];
  v15 = MEMORY[0x277CBFC40];
  v16 = [v5 objectForKeyedSubscript:@"arrivalBoatTerminal"];
  v17 = [v15 fromSchema:v16];
  v26 = [v25 initWithProvider:v27 boatName:v7 boatNumber:v24 tripDuration:v11 departureBoatTerminalLocation:v14 arrivalBoatTerminalLocation:v17];

  v18 = objc_alloc(MEMORY[0x277CD4188]);
  v19 = objc_opt_new();
  uUIDString = [v19 UUIDString];
  v21 = [v18 initWithVocabularyIdentifier:uUIDString spokenPhrase:@"Boat Trip" pronunciationHint:0];

  v22 = [objc_alloc(MEMORY[0x277CD3AA0]) initWithItemReference:v21 reservationNumber:v32 bookingTime:v31 reservationStatus:v30 reservationHolderName:v29 actions:0 URL:v28 reservedSeat:0 boatTrip:v26];

  return v22;
}

@end