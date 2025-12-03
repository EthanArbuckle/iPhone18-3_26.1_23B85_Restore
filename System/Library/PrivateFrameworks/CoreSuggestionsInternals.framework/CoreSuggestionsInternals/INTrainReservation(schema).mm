@interface INTrainReservation(schema)
+ (id)fromSchema:()schema;
+ (id)schemaFromTrainReservation:()schema;
@end

@implementation INTrainReservation(schema)

+ (id)schemaFromTrainReservation:()schema
{
  v63[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CD3F90] schemaFromReservation:v3];
  v5 = [v4 mutableCopy];

  [v5 setObject:@"http://schema.org/TrainReservation" forKeyedSubscript:@"@type"];
  v6 = objc_opt_new();
  [v6 setObject:@"http://schema.org/TrainTrip" forKeyedSubscript:@"@type"];
  trainTrip = [v3 trainTrip];
  tripDuration = [trainTrip tripDuration];
  startDateComponents = [tripDuration startDateComponents];

  if (startDateComponents)
  {
    trainTrip2 = [v3 trainTrip];
    tripDuration2 = [trainTrip2 tripDuration];
    startDateComponents2 = [tripDuration2 startDateComponents];
    schema = [startDateComponents2 schema];
    [v6 setObject:schema forKeyedSubscript:@"departureTime"];
  }

  trainTrip3 = [v3 trainTrip];
  tripDuration3 = [trainTrip3 tripDuration];
  endDateComponents = [tripDuration3 endDateComponents];

  if (endDateComponents)
  {
    trainTrip4 = [v3 trainTrip];
    tripDuration4 = [trainTrip4 tripDuration];
    endDateComponents2 = [tripDuration4 endDateComponents];
    schema2 = [endDateComponents2 schema];
    [v6 setObject:schema2 forKeyedSubscript:@"arrivalTime"];
  }

  trainTrip5 = [v3 trainTrip];
  departurePlatform = [trainTrip5 departurePlatform];

  if (departurePlatform)
  {
    trainTrip6 = [v3 trainTrip];
    departurePlatform2 = [trainTrip6 departurePlatform];
    [v6 setObject:departurePlatform2 forKeyedSubscript:@"departurePlatform"];
  }

  trainTrip7 = [v3 trainTrip];
  arrivalPlatform = [trainTrip7 arrivalPlatform];

  if (arrivalPlatform)
  {
    trainTrip8 = [v3 trainTrip];
    arrivalPlatform2 = [trainTrip8 arrivalPlatform];
    [v6 setObject:arrivalPlatform2 forKeyedSubscript:@"arrivalPlatform"];
  }

  trainTrip9 = [v3 trainTrip];
  trainName = [trainTrip9 trainName];

  if (trainName)
  {
    trainTrip10 = [v3 trainTrip];
    trainName2 = [trainTrip10 trainName];
    [v6 setObject:trainName2 forKeyedSubscript:@"trainName"];
  }

  trainTrip11 = [v3 trainTrip];
  trainNumber = [trainTrip11 trainNumber];

  if (trainNumber)
  {
    trainTrip12 = [v3 trainTrip];
    trainNumber2 = [trainTrip12 trainNumber];
    [v6 setObject:trainNumber2 forKeyedSubscript:@"trainNumber"];
  }

  trainTrip13 = [v3 trainTrip];
  departureStationLocation = [trainTrip13 departureStationLocation];
  name = [departureStationLocation name];

  if (name)
  {
    v62[1] = @"name";
    v63[0] = @"http://schema.org/TrainStation";
    v62[0] = @"@type";
    trainTrip14 = [v3 trainTrip];
    departureStationLocation2 = [trainTrip14 departureStationLocation];
    name2 = [departureStationLocation2 name];
    v63[1] = name2;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
    [v6 setObject:v43 forKeyedSubscript:@"departureStation"];
  }

  trainTrip15 = [v3 trainTrip];
  arrivalStationLocation = [trainTrip15 arrivalStationLocation];
  name3 = [arrivalStationLocation name];

  if (name3)
  {
    v60[1] = @"name";
    v61[0] = @"http://schema.org/TrainStation";
    v60[0] = @"@type";
    trainTrip16 = [v3 trainTrip];
    arrivalStationLocation2 = [trainTrip16 arrivalStationLocation];
    name4 = [arrivalStationLocation2 name];
    v61[1] = name4;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    [v6 setObject:v50 forKeyedSubscript:@"arrivalStation"];
  }

  trainTrip17 = [v3 trainTrip];
  provider = [trainTrip17 provider];

  if (provider)
  {
    v58[1] = @"name";
    v59[0] = @"http://schema.org/Organization";
    v58[0] = @"@type";
    trainTrip18 = [v3 trainTrip];
    provider2 = [trainTrip18 provider];
    v59[1] = provider2;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    [v6 setObject:v55 forKeyedSubscript:@"provider"];
  }

  if ([v6 count] >= 2)
  {
    [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  }

  v56 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)fromSchema:()schema
{
  v3 = MEMORY[0x277CD3F90];
  v4 = a3;
  v38 = [v3 reservationNumberFromReservationSchema:v4];
  v37 = [MEMORY[0x277CD3F90] bookingTimeFromReservationSchema:v4];
  v34 = [MEMORY[0x277CD3F90] reservationStatusFromReservationSchema:v4];
  v36 = [MEMORY[0x277CD3F90] reservationHolderNameFromReservationSchema:v4];
  v35 = [MEMORY[0x277CD3F90] urlFromReservationSchema:v4];
  v5 = [v4 objectForKeyedSubscript:@"reservationFor"];

  v6 = @"provider";
  v7 = [v5 objectForKeyedSubscript:@"provider"];
  v8 = [v7 objectForKeyedSubscript:@"name"];

  if (v8 || (v6 = @"trainCompany", [v5 objectForKeyedSubscript:@"trainCompany"], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", @"name"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [v5 objectForKeyedSubscript:v6];
    v39 = [v11 objectForKeyedSubscript:@"name"];
  }

  else
  {
    v39 = 0;
  }

  v12 = objc_alloc(MEMORY[0x277CD4278]);
  v30 = [v5 objectForKeyedSubscript:@"trainName"];
  v29 = [v5 objectForKeyedSubscript:@"trainNumber"];
  v13 = MEMORY[0x277CD3B68];
  v33 = [v5 objectForKeyedSubscript:@"departureTime"];
  v31 = [v5 objectForKeyedSubscript:@"arrivalTime"];
  v14 = [v13 fromStartDate:v33 endDate:v31];
  v15 = MEMORY[0x277CBFC40];
  v16 = [v5 objectForKeyedSubscript:@"departureStation"];
  v17 = [v15 fromSchema:v16];
  v18 = [v5 objectForKeyedSubscript:@"departurePlatform"];
  v19 = MEMORY[0x277CBFC40];
  v20 = [v5 objectForKeyedSubscript:@"arrivalStation"];
  v21 = [v19 fromSchema:v20];
  v22 = [v5 objectForKeyedSubscript:@"arrivalPlatform"];
  v32 = [v12 initWithProvider:v39 trainName:v30 trainNumber:v29 tripDuration:v14 departureStationLocation:v17 departurePlatform:v18 arrivalStationLocation:v21 arrivalPlatform:v22];

  v23 = objc_alloc(MEMORY[0x277CD4188]);
  v24 = objc_opt_new();
  uUIDString = [v24 UUIDString];
  v26 = [v23 initWithVocabularyIdentifier:uUIDString spokenPhrase:@"Train" pronunciationHint:0];

  v27 = [objc_alloc(MEMORY[0x277CD4270]) initWithItemReference:v26 reservationNumber:v38 bookingTime:v37 reservationStatus:v34 reservationHolderName:v36 actions:0 URL:v35 reservedSeat:0 trainTrip:v32];

  return v27;
}

@end