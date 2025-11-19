@interface INRentalCarReservation(schema)
+ (id)fromSchema:()schema;
+ (id)schemaFromRentalCarReservation:()schema;
@end

@implementation INRentalCarReservation(schema)

+ (id)schemaFromRentalCarReservation:()schema
{
  v3 = a3;
  v4 = [MEMORY[0x277CD3F90] schemaFromReservation:v3];
  v5 = [v4 mutableCopy];

  [v5 setObject:@"http://schema.org/RentalCarReservation" forKeyedSubscript:@"@type"];
  v6 = objc_opt_new();
  [v6 setObject:@"http://schema.org/RentalCar" forKeyedSubscript:@"@type"];
  v7 = [v3 rentalCar];
  v8 = [v7 type];

  if (v8)
  {
    v9 = [v3 rentalCar];
    v10 = [v9 type];
    [v6 setObject:v10 forKeyedSubscript:@"name"];
  }

  v11 = [v3 rentalCar];
  v12 = [v11 model];

  if (v12)
  {
    v13 = [v3 rentalCar];
    v14 = [v13 model];
    [v6 setObject:v14 forKeyedSubscript:@"model"];
  }

  v15 = objc_opt_new();
  [v15 setObject:@"http://schema.org/Brand" forKeyedSubscript:@"@type"];
  v16 = [v3 rentalCar];
  v17 = [v16 make];
  [v15 setObject:v17 forKeyedSubscript:@"name"];

  if ([v15 count] >= 2)
  {
    [v6 setObject:v15 forKeyedSubscript:@"brand"];
  }

  v18 = objc_opt_new();
  [v18 setObject:@"http://schema.org/Organization" forKeyedSubscript:@"@type"];
  v19 = [v3 rentalCar];
  v20 = [v19 rentalCompanyName];
  [v18 setObject:v20 forKeyedSubscript:@"name"];

  if ([v18 count] >= 2)
  {
    [v6 setObject:v18 forKeyedSubscript:@"rentalCompany"];
  }

  if ([v6 count] >= 2)
  {
    [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  }

  v21 = [v3 rentalDuration];
  v22 = [v21 startDateComponents];

  if (v22)
  {
    v23 = [v3 rentalDuration];
    v24 = [v23 startDateComponents];
    v25 = [v24 schema];
    [v5 setObject:v25 forKeyedSubscript:@"pickupTime"];
  }

  v26 = [v3 rentalDuration];
  v27 = [v26 endDateComponents];

  if (v27)
  {
    v28 = [v3 rentalDuration];
    v29 = [v28 endDateComponents];
    v30 = [v29 schema];
    [v5 setObject:v30 forKeyedSubscript:@"dropoffTime"];
  }

  v31 = [v3 dropOffLocation];

  if (v31)
  {
    v32 = [v3 dropOffLocation];
    v33 = [v32 schema];
    [v5 setObject:v33 forKeyedSubscript:@"dropoffLocation"];
  }

  v34 = [v3 pickupLocation];

  if (v34)
  {
    v35 = [v3 pickupLocation];
    v36 = [v35 schema];
    [v5 setObject:v36 forKeyedSubscript:@"pickupLocation"];
  }

  return v5;
}

+ (id)fromSchema:()schema
{
  v3 = MEMORY[0x277CD3F90];
  v4 = a3;
  v32 = [v3 reservationNumberFromReservationSchema:v4];
  v30 = [MEMORY[0x277CD3F90] bookingTimeFromReservationSchema:v4];
  v27 = [MEMORY[0x277CD3F90] reservationStatusFromReservationSchema:v4];
  v26 = [MEMORY[0x277CD3F90] reservationHolderNameFromReservationSchema:v4];
  v25 = [MEMORY[0x277CD3F90] urlFromReservationSchema:v4];
  v5 = [v4 objectForKeyedSubscript:@"reservationFor"];
  v31 = [v4 objectForKeyedSubscript:@"pickupTime"];
  v29 = [v4 objectForKeyedSubscript:@"dropoffTime"];
  v24 = [MEMORY[0x277CD3B68] fromStartDate:v31 endDate:v29];
  v6 = MEMORY[0x277CBFC40];
  v7 = [v4 objectForKeyedSubscript:@"pickupLocation"];
  v23 = [v6 fromSchema:v7];

  v8 = MEMORY[0x277CBFC40];
  v9 = [v4 objectForKeyedSubscript:@"dropoffLocation"];

  v10 = [v8 fromSchema:v9];

  v22 = [v5 objectForKeyedSubscript:@"name"];
  v21 = [v5 objectForKeyedSubscript:@"model"];
  v11 = [v5 objectForKeyedSubscript:@"brand"];
  v20 = [v11 objectForKeyedSubscript:@"name"];

  v12 = [v5 objectForKeyedSubscript:@"rentalCompany"];
  v13 = [v12 objectForKeyedSubscript:@"name"];

  v14 = [objc_alloc(MEMORY[0x277CD3F50]) initWithRentalCompanyName:v13 type:v22 make:v20 model:v21 rentalCarDescription:0];
  v15 = objc_alloc(MEMORY[0x277CD4188]);
  v16 = objc_opt_new();
  v17 = [v16 UUIDString];
  v18 = [v15 initWithVocabularyIdentifier:v17 spokenPhrase:@"Car Rental" pronunciationHint:0];

  v28 = [objc_alloc(MEMORY[0x277CD3F58]) initWithItemReference:v18 reservationNumber:v32 bookingTime:v30 reservationStatus:v27 reservationHolderName:v26 actions:0 URL:v25 rentalCar:v14 rentalDuration:v24 pickupLocation:v23 dropOffLocation:v10];

  return v28;
}

@end