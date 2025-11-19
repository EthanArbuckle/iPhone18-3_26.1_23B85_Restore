@interface INRestaurantReservation(schema)
+ (id)fromSchema:()schema;
+ (id)partySizeFromReservationSchema:()schema;
+ (id)schemaFromRestaurantReservation:()schema;
@end

@implementation INRestaurantReservation(schema)

+ (id)partySizeFromReservationSchema:()schema
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"partySize"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 objectForKeyedSubscript:@"partySize"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)schemaFromRestaurantReservation:()schema
{
  v3 = a3;
  v4 = [MEMORY[0x277CD3F90] schemaFromReservation:v3];
  v5 = [v4 mutableCopy];

  [v5 setObject:@"http://schema.org/FoodEstablishmentReservation" forKeyedSubscript:@"@type"];
  v6 = [v3 reservationDuration];

  if (v6)
  {
    v7 = [v3 reservationDuration];
    v8 = [v7 startDateComponents];

    if (v8)
    {
      v9 = [v8 schema];
      [v5 setObject:v9 forKeyedSubscript:@"startTime"];
    }

    v10 = [v3 reservationDuration];
    v11 = [v10 endDateComponents];

    if (v11)
    {
      v12 = [v11 schema];
      [v5 setObject:v12 forKeyedSubscript:@"endTime"];
    }
  }

  v13 = [v3 partySize];

  if (v13)
  {
    v14 = [v3 partySize];
    [v5 setObject:v14 forKeyedSubscript:@"partySize"];
  }

  v15 = objc_opt_new();
  [v15 setObject:@"http://schema.org/FoodEstablishment" forKeyedSubscript:@"@type"];
  v16 = [v3 restaurantLocation];
  v17 = [v16 name];

  if (v17)
  {
    v18 = [v3 restaurantLocation];
    v19 = [v18 name];
    [v15 setObject:v19 forKeyedSubscript:@"name"];
  }

  v20 = [v3 restaurantLocation];

  if (v20)
  {
    v21 = [v3 restaurantLocation];
    v22 = [v21 postalAddress];

    if (v22)
    {
      v23 = [v3 restaurantLocation];
      v24 = [v23 postalAddress];
      v25 = [v24 schema];
      [v15 setObject:v25 forKeyedSubscript:@"address"];
    }

    v26 = [v3 restaurantLocation];
    v27 = [v26 location];

    if (v27)
    {
      v28 = [v3 restaurantLocation];
      v29 = [v28 location];
      v30 = [v29 schema];
      [v15 setObject:v30 forKeyedSubscript:@"geo"];
    }
  }

  [v5 setObject:v15 forKeyedSubscript:@"reservationFor"];

  return v5;
}

+ (id)fromSchema:()schema
{
  v3 = MEMORY[0x277CD3F90];
  v4 = a3;
  v5 = [v3 reservationNumberFromReservationSchema:v4];
  v22 = [MEMORY[0x277CD3F90] bookingTimeFromReservationSchema:v4];
  v21 = [MEMORY[0x277CD3F90] reservationStatusFromReservationSchema:v4];
  v19 = [MEMORY[0x277CD3F90] reservationHolderNameFromReservationSchema:v4];
  v6 = [MEMORY[0x277CD3F90] urlFromReservationSchema:v4];
  v20 = [v4 objectForKeyedSubscript:@"startTime"];
  v18 = [v4 objectForKeyedSubscript:@"endTime"];
  v7 = [MEMORY[0x277CD3B68] fromStartDate:v20 endDate:v18];
  v8 = [v4 objectForKeyedSubscript:@"reservationFor"];
  v9 = [MEMORY[0x277CBFC40] fromSchema:v8];
  v10 = objc_alloc(MEMORY[0x277CD4188]);
  v11 = objc_opt_new();
  v12 = [v11 UUIDString];
  v13 = [v10 initWithVocabularyIdentifier:v12 spokenPhrase:@"Restaurant" pronunciationHint:0];

  v14 = objc_alloc(MEMORY[0x277CD3FA0]);
  v15 = [MEMORY[0x277CD3FA0] partySizeFromReservationSchema:v4];

  v16 = [v14 initWithItemReference:v13 reservationNumber:v5 bookingTime:v22 reservationStatus:v21 reservationHolderName:v19 actions:0 URL:v6 reservationDuration:v7 partySize:v15 restaurantLocation:v9];

  return v16;
}

@end