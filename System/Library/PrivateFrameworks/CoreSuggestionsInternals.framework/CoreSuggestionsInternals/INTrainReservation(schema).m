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
  v7 = [v3 trainTrip];
  v8 = [v7 tripDuration];
  v9 = [v8 startDateComponents];

  if (v9)
  {
    v10 = [v3 trainTrip];
    v11 = [v10 tripDuration];
    v12 = [v11 startDateComponents];
    v13 = [v12 schema];
    [v6 setObject:v13 forKeyedSubscript:@"departureTime"];
  }

  v14 = [v3 trainTrip];
  v15 = [v14 tripDuration];
  v16 = [v15 endDateComponents];

  if (v16)
  {
    v17 = [v3 trainTrip];
    v18 = [v17 tripDuration];
    v19 = [v18 endDateComponents];
    v20 = [v19 schema];
    [v6 setObject:v20 forKeyedSubscript:@"arrivalTime"];
  }

  v21 = [v3 trainTrip];
  v22 = [v21 departurePlatform];

  if (v22)
  {
    v23 = [v3 trainTrip];
    v24 = [v23 departurePlatform];
    [v6 setObject:v24 forKeyedSubscript:@"departurePlatform"];
  }

  v25 = [v3 trainTrip];
  v26 = [v25 arrivalPlatform];

  if (v26)
  {
    v27 = [v3 trainTrip];
    v28 = [v27 arrivalPlatform];
    [v6 setObject:v28 forKeyedSubscript:@"arrivalPlatform"];
  }

  v29 = [v3 trainTrip];
  v30 = [v29 trainName];

  if (v30)
  {
    v31 = [v3 trainTrip];
    v32 = [v31 trainName];
    [v6 setObject:v32 forKeyedSubscript:@"trainName"];
  }

  v33 = [v3 trainTrip];
  v34 = [v33 trainNumber];

  if (v34)
  {
    v35 = [v3 trainTrip];
    v36 = [v35 trainNumber];
    [v6 setObject:v36 forKeyedSubscript:@"trainNumber"];
  }

  v37 = [v3 trainTrip];
  v38 = [v37 departureStationLocation];
  v39 = [v38 name];

  if (v39)
  {
    v62[1] = @"name";
    v63[0] = @"http://schema.org/TrainStation";
    v62[0] = @"@type";
    v40 = [v3 trainTrip];
    v41 = [v40 departureStationLocation];
    v42 = [v41 name];
    v63[1] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
    [v6 setObject:v43 forKeyedSubscript:@"departureStation"];
  }

  v44 = [v3 trainTrip];
  v45 = [v44 arrivalStationLocation];
  v46 = [v45 name];

  if (v46)
  {
    v60[1] = @"name";
    v61[0] = @"http://schema.org/TrainStation";
    v60[0] = @"@type";
    v47 = [v3 trainTrip];
    v48 = [v47 arrivalStationLocation];
    v49 = [v48 name];
    v61[1] = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    [v6 setObject:v50 forKeyedSubscript:@"arrivalStation"];
  }

  v51 = [v3 trainTrip];
  v52 = [v51 provider];

  if (v52)
  {
    v58[1] = @"name";
    v59[0] = @"http://schema.org/Organization";
    v58[0] = @"@type";
    v53 = [v3 trainTrip];
    v54 = [v53 provider];
    v59[1] = v54;
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
  v25 = [v24 UUIDString];
  v26 = [v23 initWithVocabularyIdentifier:v25 spokenPhrase:@"Train" pronunciationHint:0];

  v27 = [objc_alloc(MEMORY[0x277CD4270]) initWithItemReference:v26 reservationNumber:v38 bookingTime:v37 reservationStatus:v34 reservationHolderName:v36 actions:0 URL:v35 reservedSeat:0 trainTrip:v32];

  return v27;
}

@end