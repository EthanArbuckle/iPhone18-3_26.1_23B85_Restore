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
  rentalCar = [v3 rentalCar];
  type = [rentalCar type];

  if (type)
  {
    rentalCar2 = [v3 rentalCar];
    type2 = [rentalCar2 type];
    [v6 setObject:type2 forKeyedSubscript:@"name"];
  }

  rentalCar3 = [v3 rentalCar];
  model = [rentalCar3 model];

  if (model)
  {
    rentalCar4 = [v3 rentalCar];
    model2 = [rentalCar4 model];
    [v6 setObject:model2 forKeyedSubscript:@"model"];
  }

  v15 = objc_opt_new();
  [v15 setObject:@"http://schema.org/Brand" forKeyedSubscript:@"@type"];
  rentalCar5 = [v3 rentalCar];
  make = [rentalCar5 make];
  [v15 setObject:make forKeyedSubscript:@"name"];

  if ([v15 count] >= 2)
  {
    [v6 setObject:v15 forKeyedSubscript:@"brand"];
  }

  v18 = objc_opt_new();
  [v18 setObject:@"http://schema.org/Organization" forKeyedSubscript:@"@type"];
  rentalCar6 = [v3 rentalCar];
  rentalCompanyName = [rentalCar6 rentalCompanyName];
  [v18 setObject:rentalCompanyName forKeyedSubscript:@"name"];

  if ([v18 count] >= 2)
  {
    [v6 setObject:v18 forKeyedSubscript:@"rentalCompany"];
  }

  if ([v6 count] >= 2)
  {
    [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  }

  rentalDuration = [v3 rentalDuration];
  startDateComponents = [rentalDuration startDateComponents];

  if (startDateComponents)
  {
    rentalDuration2 = [v3 rentalDuration];
    startDateComponents2 = [rentalDuration2 startDateComponents];
    schema = [startDateComponents2 schema];
    [v5 setObject:schema forKeyedSubscript:@"pickupTime"];
  }

  rentalDuration3 = [v3 rentalDuration];
  endDateComponents = [rentalDuration3 endDateComponents];

  if (endDateComponents)
  {
    rentalDuration4 = [v3 rentalDuration];
    endDateComponents2 = [rentalDuration4 endDateComponents];
    schema2 = [endDateComponents2 schema];
    [v5 setObject:schema2 forKeyedSubscript:@"dropoffTime"];
  }

  dropOffLocation = [v3 dropOffLocation];

  if (dropOffLocation)
  {
    dropOffLocation2 = [v3 dropOffLocation];
    schema3 = [dropOffLocation2 schema];
    [v5 setObject:schema3 forKeyedSubscript:@"dropoffLocation"];
  }

  pickupLocation = [v3 pickupLocation];

  if (pickupLocation)
  {
    pickupLocation2 = [v3 pickupLocation];
    schema4 = [pickupLocation2 schema];
    [v5 setObject:schema4 forKeyedSubscript:@"pickupLocation"];
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
  uUIDString = [v16 UUIDString];
  v18 = [v15 initWithVocabularyIdentifier:uUIDString spokenPhrase:@"Car Rental" pronunciationHint:0];

  v28 = [objc_alloc(MEMORY[0x277CD3F58]) initWithItemReference:v18 reservationNumber:v32 bookingTime:v30 reservationStatus:v27 reservationHolderName:v26 actions:0 URL:v25 rentalCar:v14 rentalDuration:v24 pickupLocation:v23 dropOffLocation:v10];

  return v28;
}

@end