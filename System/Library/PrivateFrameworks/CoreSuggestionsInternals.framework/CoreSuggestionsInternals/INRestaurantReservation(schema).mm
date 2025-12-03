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
  reservationDuration = [v3 reservationDuration];

  if (reservationDuration)
  {
    reservationDuration2 = [v3 reservationDuration];
    startDateComponents = [reservationDuration2 startDateComponents];

    if (startDateComponents)
    {
      schema = [startDateComponents schema];
      [v5 setObject:schema forKeyedSubscript:@"startTime"];
    }

    reservationDuration3 = [v3 reservationDuration];
    endDateComponents = [reservationDuration3 endDateComponents];

    if (endDateComponents)
    {
      schema2 = [endDateComponents schema];
      [v5 setObject:schema2 forKeyedSubscript:@"endTime"];
    }
  }

  partySize = [v3 partySize];

  if (partySize)
  {
    partySize2 = [v3 partySize];
    [v5 setObject:partySize2 forKeyedSubscript:@"partySize"];
  }

  v15 = objc_opt_new();
  [v15 setObject:@"http://schema.org/FoodEstablishment" forKeyedSubscript:@"@type"];
  restaurantLocation = [v3 restaurantLocation];
  name = [restaurantLocation name];

  if (name)
  {
    restaurantLocation2 = [v3 restaurantLocation];
    name2 = [restaurantLocation2 name];
    [v15 setObject:name2 forKeyedSubscript:@"name"];
  }

  restaurantLocation3 = [v3 restaurantLocation];

  if (restaurantLocation3)
  {
    restaurantLocation4 = [v3 restaurantLocation];
    postalAddress = [restaurantLocation4 postalAddress];

    if (postalAddress)
    {
      restaurantLocation5 = [v3 restaurantLocation];
      postalAddress2 = [restaurantLocation5 postalAddress];
      schema3 = [postalAddress2 schema];
      [v15 setObject:schema3 forKeyedSubscript:@"address"];
    }

    restaurantLocation6 = [v3 restaurantLocation];
    location = [restaurantLocation6 location];

    if (location)
    {
      restaurantLocation7 = [v3 restaurantLocation];
      location2 = [restaurantLocation7 location];
      schema4 = [location2 schema];
      [v15 setObject:schema4 forKeyedSubscript:@"geo"];
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
  uUIDString = [v11 UUIDString];
  v13 = [v10 initWithVocabularyIdentifier:uUIDString spokenPhrase:@"Restaurant" pronunciationHint:0];

  v14 = objc_alloc(MEMORY[0x277CD3FA0]);
  v15 = [MEMORY[0x277CD3FA0] partySizeFromReservationSchema:v4];

  v16 = [v14 initWithItemReference:v13 reservationNumber:v5 bookingTime:v22 reservationStatus:v21 reservationHolderName:v19 actions:0 URL:v6 reservationDuration:v7 partySize:v15 restaurantLocation:v9];

  return v16;
}

@end