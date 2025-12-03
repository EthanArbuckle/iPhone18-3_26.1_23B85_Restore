@interface INBusReservation(schema)
+ (id)fromSchema:()schema;
+ (id)schemaFromBusReservation:()schema;
@end

@implementation INBusReservation(schema)

+ (id)schemaFromBusReservation:()schema
{
  v73[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CD3F90] schemaFromReservation:v3];
  v5 = [v4 mutableCopy];

  [v5 setObject:@"http://schema.org/BusReservation" forKeyedSubscript:@"@type"];
  v6 = objc_opt_new();
  [v6 setObject:@"http://schema.org/BusTrip" forKeyedSubscript:@"@type"];
  busTrip = [v3 busTrip];
  tripDuration = [busTrip tripDuration];
  startDateComponents = [tripDuration startDateComponents];

  if (startDateComponents)
  {
    busTrip2 = [v3 busTrip];
    tripDuration2 = [busTrip2 tripDuration];
    startDateComponents2 = [tripDuration2 startDateComponents];
    schema = [startDateComponents2 schema];
    [v6 setObject:schema forKeyedSubscript:@"departureTime"];
  }

  busTrip3 = [v3 busTrip];
  tripDuration3 = [busTrip3 tripDuration];
  endDateComponents = [tripDuration3 endDateComponents];

  if (endDateComponents)
  {
    busTrip4 = [v3 busTrip];
    tripDuration4 = [busTrip4 tripDuration];
    endDateComponents2 = [tripDuration4 endDateComponents];
    schema2 = [endDateComponents2 schema];
    [v6 setObject:schema2 forKeyedSubscript:@"arrivalTime"];
  }

  busTrip5 = [v3 busTrip];
  busName = [busTrip5 busName];

  if (busName)
  {
    busTrip6 = [v3 busTrip];
    busName2 = [busTrip6 busName];
    [v6 setObject:busName2 forKeyedSubscript:@"busName"];
  }

  busTrip7 = [v3 busTrip];
  busNumber = [busTrip7 busNumber];

  if (busNumber)
  {
    busTrip8 = [v3 busTrip];
    busNumber2 = [busTrip8 busNumber];
    [v6 setObject:busNumber2 forKeyedSubscript:@"busNumber"];
  }

  v29 = objc_opt_new();
  [v29 setObject:@"http://schema.org/BusStation" forKeyedSubscript:@"@type"];
  busTrip9 = [v3 busTrip];
  departureBusStopLocation = [busTrip9 departureBusStopLocation];
  name = [departureBusStopLocation name];

  if (name)
  {
    busTrip10 = [v3 busTrip];
    departureBusStopLocation2 = [busTrip10 departureBusStopLocation];
    name2 = [departureBusStopLocation2 name];
    [v29 setObject:name2 forKeyedSubscript:@"name"];
  }

  busTrip11 = [v3 busTrip];
  departureBusStopLocation3 = [busTrip11 departureBusStopLocation];
  postalAddress = [departureBusStopLocation3 postalAddress];

  if (postalAddress)
  {
    busTrip12 = [v3 busTrip];
    departureBusStopLocation4 = [busTrip12 departureBusStopLocation];
    postalAddress2 = [departureBusStopLocation4 postalAddress];
    schema3 = [postalAddress2 schema];
    [v29 setObject:schema3 forKeyedSubscript:@"address"];
  }

  if ([v29 count] >= 2)
  {
    [v6 setObject:v29 forKeyedSubscript:@"departureBusStop"];
  }

  busTrip13 = [v3 busTrip];
  departurePlatform = [busTrip13 departurePlatform];

  if (departurePlatform)
  {
    busTrip14 = [v3 busTrip];
    departurePlatform2 = [busTrip14 departurePlatform];
    [v6 setObject:departurePlatform2 forKeyedSubscript:@"departurePlatform"];
  }

  v47 = objc_opt_new();
  [v47 setObject:@"http://schema.org/BusStation" forKeyedSubscript:@"@type"];
  busTrip15 = [v3 busTrip];
  arrivalBusStopLocation = [busTrip15 arrivalBusStopLocation];
  name3 = [arrivalBusStopLocation name];

  if (name3)
  {
    busTrip16 = [v3 busTrip];
    arrivalBusStopLocation2 = [busTrip16 arrivalBusStopLocation];
    name4 = [arrivalBusStopLocation2 name];
    [v47 setObject:name4 forKeyedSubscript:@"name"];
  }

  busTrip17 = [v3 busTrip];
  arrivalBusStopLocation3 = [busTrip17 arrivalBusStopLocation];
  postalAddress3 = [arrivalBusStopLocation3 postalAddress];

  if (postalAddress3)
  {
    busTrip18 = [v3 busTrip];
    arrivalBusStopLocation4 = [busTrip18 arrivalBusStopLocation];
    postalAddress4 = [arrivalBusStopLocation4 postalAddress];
    schema4 = [postalAddress4 schema];
    [v47 setObject:schema4 forKeyedSubscript:@"address"];
  }

  if ([v47 count] >= 2)
  {
    [v6 setObject:v47 forKeyedSubscript:@"arrivalBusStop"];
  }

  busTrip19 = [v3 busTrip];
  arrivalPlatform = [busTrip19 arrivalPlatform];

  if (arrivalPlatform)
  {
    busTrip20 = [v3 busTrip];
    arrivalPlatform2 = [busTrip20 arrivalPlatform];
    [v6 setObject:arrivalPlatform2 forKeyedSubscript:@"arrivalPlatform"];
  }

  busTrip21 = [v3 busTrip];
  provider = [busTrip21 provider];

  if (provider)
  {
    v72[0] = @"@type";
    v72[1] = @"name";
    v73[0] = @"http://schema.org/Organization";
    busTrip22 = [v3 busTrip];
    provider2 = [busTrip22 provider];
    v73[1] = provider2;
    v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
    [v6 setObject:v69 forKeyedSubscript:@"provider"];
  }

  if ([v6 count] >= 2)
  {
    [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  }

  v70 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)fromSchema:()schema
{
  v3 = MEMORY[0x277CD3F90];
  v4 = a3;
  v33 = [v3 reservationNumberFromReservationSchema:v4];
  v32 = [MEMORY[0x277CD3F90] bookingTimeFromReservationSchema:v4];
  v31 = [MEMORY[0x277CD3F90] reservationStatusFromReservationSchema:v4];
  v30 = [MEMORY[0x277CD3F90] reservationHolderNameFromReservationSchema:v4];
  v5 = [v4 objectForKeyedSubscript:@"reservationFor"];
  v6 = [v5 objectForKeyedSubscript:@"provider"];
  v34 = [v6 objectForKeyedSubscript:@"name"];

  v29 = [MEMORY[0x277CD3F90] urlFromReservationSchema:v4];

  v7 = objc_alloc(MEMORY[0x277CD3AC8]);
  v25 = [v5 objectForKeyedSubscript:@"busName"];
  v24 = [v5 objectForKeyedSubscript:@"busNumber"];
  v8 = MEMORY[0x277CD3B68];
  v28 = [v5 objectForKeyedSubscript:@"departureTime"];
  v26 = [v5 objectForKeyedSubscript:@"arrivalTime"];
  v9 = [v8 fromStartDate:v28 endDate:v26];
  v10 = MEMORY[0x277CBFC40];
  v11 = [v5 objectForKeyedSubscript:@"departureBusStop"];
  v12 = [v10 fromSchema:v11];
  v13 = [v5 objectForKeyedSubscript:@"departurePlatform"];
  v14 = MEMORY[0x277CBFC40];
  v15 = [v5 objectForKeyedSubscript:@"arrivalBusStop"];
  v16 = [v14 fromSchema:v15];
  v17 = [v5 objectForKeyedSubscript:@"arrivalPlatform"];
  v27 = [v7 initWithProvider:v34 busName:v25 busNumber:v24 tripDuration:v9 departureBusStopLocation:v12 departurePlatform:v13 arrivalBusStopLocation:v16 arrivalPlatform:v17];

  v18 = objc_alloc(MEMORY[0x277CD4188]);
  v19 = objc_opt_new();
  uUIDString = [v19 UUIDString];
  v21 = [v18 initWithVocabularyIdentifier:uUIDString spokenPhrase:@"Bus Trip" pronunciationHint:0];

  v22 = [objc_alloc(MEMORY[0x277CD3AC0]) initWithItemReference:v21 reservationNumber:v33 bookingTime:v32 reservationStatus:v31 reservationHolderName:v30 actions:0 URL:v29 reservedSeat:0 busTrip:v27];

  return v22;
}

@end