@interface INTicketedEventReservation(schema)
+ (id)fromSchema:()schema;
+ (id)schemaFromGenericTicketedEventReservation:()schema;
+ (id)schemaFromMovieTicketedEventReservation:()schema;
+ (id)schemaFromTicketedEventReservation:()schema;
@end

@implementation INTicketedEventReservation(schema)

+ (id)schemaFromMovieTicketedEventReservation:()schema
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CD3F90] schemaFromReservation:v3];
  v5 = [v4 mutableCopy];

  [v5 setObject:@"http://schema.org/EventReservation" forKeyedSubscript:@"@type"];
  v6 = objc_opt_new();
  [v6 setObject:@"http://schema.org/MovieShowing" forKeyedSubscript:@"@type"];
  v7 = [v3 event];
  v8 = [v7 name];

  if (v8)
  {
    v32[0] = @"@type";
    v32[1] = @"name";
    v33[0] = @"http://schema.org/Movie";
    v9 = [v7 name];
    v33[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

    [v6 setObject:v10 forKeyedSubscript:@"movie"];
  }

  v11 = [v7 eventDuration];
  v12 = [v11 startDateComponents];

  if (v12)
  {
    v13 = [v7 eventDuration];
    v14 = [v13 startDateComponents];
    v15 = [v14 schema];
    [v6 setObject:v15 forKeyedSubscript:@"startDate"];
  }

  v16 = [v7 eventDuration];
  v17 = [v16 endDateComponents];

  if (v17)
  {
    v18 = [v7 eventDuration];
    v19 = [v18 endDateComponents];
    v20 = [v19 schema];
    [v6 setObject:v20 forKeyedSubscript:@"endDate"];
  }

  v21 = [v7 location];

  if (v21)
  {
    v22 = [v7 location];
    v23 = [v22 schema];
    [v6 setObject:v23 forKeyedSubscript:@"location"];
  }

  [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  v24 = [v3 reservedSeat];

  if (v24)
  {
    v25 = [v3 reservedSeat];
    v26 = [v25 schema];

    if (v26)
    {
      v30[0] = @"@type";
      v30[1] = @"ticketedSeat";
      v31[0] = @"http://schema.org/Ticket";
      v31[1] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      [v5 setObject:v27 forKeyedSubscript:@"reservedTicket"];
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)schemaFromGenericTicketedEventReservation:()schema
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CD3F90] schemaFromReservation:v3];
  v5 = [v4 mutableCopy];

  [v5 setObject:@"http://schema.org/EventReservation" forKeyedSubscript:@"@type"];
  v6 = objc_opt_new();
  [v6 setObject:@"http://schema.org/Event" forKeyedSubscript:@"@type"];
  v7 = [v3 event];
  v8 = [v7 name];

  if (v8)
  {
    v9 = [v3 event];
    v10 = [v9 name];
    [v6 setObject:v10 forKeyedSubscript:@"name"];
  }

  v11 = [v7 eventDuration];
  v12 = [v11 startDateComponents];

  if (v12)
  {
    v13 = [v7 eventDuration];
    v14 = [v13 startDateComponents];
    v15 = [v14 schema];
    [v6 setObject:v15 forKeyedSubscript:@"startDate"];
  }

  v16 = [v7 eventDuration];
  v17 = [v16 endDateComponents];

  if (v17)
  {
    v18 = [v7 eventDuration];
    v19 = [v18 endDateComponents];
    v20 = [v19 schema];
    [v6 setObject:v20 forKeyedSubscript:@"endDate"];
  }

  v21 = [v7 location];

  if (v21)
  {
    v22 = [v7 location];
    v23 = [v22 schema];
    [v6 setObject:v23 forKeyedSubscript:@"location"];
  }

  [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  v24 = [v3 reservedSeat];

  if (v24)
  {
    v25 = [v3 reservedSeat];
    v26 = [v25 schema];

    if (v26)
    {
      v30[0] = @"@type";
      v30[1] = @"ticketedSeat";
      v31[0] = @"http://schema.org/Ticket";
      v31[1] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      [v5 setObject:v27 forKeyedSubscript:@"reservedTicket"];
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)schemaFromTicketedEventReservation:()schema
{
  v3 = a3;
  v4 = [v3 event];
  v5 = [v4 category];

  if (v5 == 1)
  {
    v6 = [MEMORY[0x277CD4260] schemaFromMovieTicketedEventReservation:v3];
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CD4260] schemaFromGenericTicketedEventReservation:v3];
  }

  v4 = v6;
LABEL_6:

  return v4;
}

+ (id)fromSchema:()schema
{
  v3 = MEMORY[0x277CD3F90];
  v4 = a3;
  v29 = [v3 reservationNumberFromReservationSchema:v4];
  v28 = [MEMORY[0x277CD3F90] bookingTimeFromReservationSchema:v4];
  v26 = [MEMORY[0x277CD3F90] reservationStatusFromReservationSchema:v4];
  v27 = [MEMORY[0x277CD3F90] reservationHolderNameFromReservationSchema:v4];
  v5 = [MEMORY[0x277CD3F90] urlFromReservationSchema:v4];
  v6 = [MEMORY[0x277CD4068] fromSchema:v4];
  v7 = [v4 objectForKeyedSubscript:@"reservationFor"];

  v8 = [v7 objectForKeyedSubscript:@"movie"];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"movie"];
    v10 = [v9 objectForKeyedSubscript:@"name"];

    v11 = 1;
  }

  else
  {
    v10 = [v7 objectForKeyedSubscript:@"name"];
    v11 = 0;
  }

  v22 = v10;
  v12 = MEMORY[0x277CBFC40];
  v13 = [v7 objectForKeyedSubscript:@"location"];
  v23 = [v12 fromSchema:v13];

  v25 = [v7 objectForKeyedSubscript:@"startDate"];
  v24 = [v7 objectForKeyedSubscript:@"endDate"];
  v14 = [MEMORY[0x277CD3B68] fromStartDate:v25 endDate:v24];
  v15 = [objc_alloc(MEMORY[0x277CD4258]) initWithCategory:v11 name:v10 eventDuration:v14 location:v23];
  v16 = objc_alloc(MEMORY[0x277CD4188]);
  v17 = objc_opt_new();
  v18 = [v17 UUIDString];
  v19 = [v16 initWithVocabularyIdentifier:v18 spokenPhrase:@"Event" pronunciationHint:0];

  v20 = [objc_alloc(MEMORY[0x277CD4260]) initWithItemReference:v19 reservationNumber:v29 bookingTime:v28 reservationStatus:v26 reservationHolderName:v27 actions:0 URL:v5 reservedSeat:v6 event:v15];

  return v20;
}

@end