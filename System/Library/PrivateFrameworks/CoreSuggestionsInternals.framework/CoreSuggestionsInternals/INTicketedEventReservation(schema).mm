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
  event = [v3 event];
  name = [event name];

  if (name)
  {
    v32[0] = @"@type";
    v32[1] = @"name";
    v33[0] = @"http://schema.org/Movie";
    name2 = [event name];
    v33[1] = name2;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

    [v6 setObject:v10 forKeyedSubscript:@"movie"];
  }

  eventDuration = [event eventDuration];
  startDateComponents = [eventDuration startDateComponents];

  if (startDateComponents)
  {
    eventDuration2 = [event eventDuration];
    startDateComponents2 = [eventDuration2 startDateComponents];
    schema = [startDateComponents2 schema];
    [v6 setObject:schema forKeyedSubscript:@"startDate"];
  }

  eventDuration3 = [event eventDuration];
  endDateComponents = [eventDuration3 endDateComponents];

  if (endDateComponents)
  {
    eventDuration4 = [event eventDuration];
    endDateComponents2 = [eventDuration4 endDateComponents];
    schema2 = [endDateComponents2 schema];
    [v6 setObject:schema2 forKeyedSubscript:@"endDate"];
  }

  location = [event location];

  if (location)
  {
    location2 = [event location];
    schema3 = [location2 schema];
    [v6 setObject:schema3 forKeyedSubscript:@"location"];
  }

  [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  reservedSeat = [v3 reservedSeat];

  if (reservedSeat)
  {
    reservedSeat2 = [v3 reservedSeat];
    schema4 = [reservedSeat2 schema];

    if (schema4)
    {
      v30[0] = @"@type";
      v30[1] = @"ticketedSeat";
      v31[0] = @"http://schema.org/Ticket";
      v31[1] = schema4;
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
  event = [v3 event];
  name = [event name];

  if (name)
  {
    event2 = [v3 event];
    name2 = [event2 name];
    [v6 setObject:name2 forKeyedSubscript:@"name"];
  }

  eventDuration = [event eventDuration];
  startDateComponents = [eventDuration startDateComponents];

  if (startDateComponents)
  {
    eventDuration2 = [event eventDuration];
    startDateComponents2 = [eventDuration2 startDateComponents];
    schema = [startDateComponents2 schema];
    [v6 setObject:schema forKeyedSubscript:@"startDate"];
  }

  eventDuration3 = [event eventDuration];
  endDateComponents = [eventDuration3 endDateComponents];

  if (endDateComponents)
  {
    eventDuration4 = [event eventDuration];
    endDateComponents2 = [eventDuration4 endDateComponents];
    schema2 = [endDateComponents2 schema];
    [v6 setObject:schema2 forKeyedSubscript:@"endDate"];
  }

  location = [event location];

  if (location)
  {
    location2 = [event location];
    schema3 = [location2 schema];
    [v6 setObject:schema3 forKeyedSubscript:@"location"];
  }

  [v5 setObject:v6 forKeyedSubscript:@"reservationFor"];
  reservedSeat = [v3 reservedSeat];

  if (reservedSeat)
  {
    reservedSeat2 = [v3 reservedSeat];
    schema4 = [reservedSeat2 schema];

    if (schema4)
    {
      v30[0] = @"@type";
      v30[1] = @"ticketedSeat";
      v31[0] = @"http://schema.org/Ticket";
      v31[1] = schema4;
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
  event = [v3 event];
  category = [event category];

  if (category == 1)
  {
    v6 = [MEMORY[0x277CD4260] schemaFromMovieTicketedEventReservation:v3];
  }

  else
  {
    if (category)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CD4260] schemaFromGenericTicketedEventReservation:v3];
  }

  event = v6;
LABEL_6:

  return event;
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
  uUIDString = [v17 UUIDString];
  v19 = [v16 initWithVocabularyIdentifier:uUIDString spokenPhrase:@"Event" pronunciationHint:0];

  v20 = [objc_alloc(MEMORY[0x277CD4260]) initWithItemReference:v19 reservationNumber:v29 bookingTime:v28 reservationStatus:v26 reservationHolderName:v27 actions:0 URL:v5 reservedSeat:v6 event:v15];

  return v20;
}

@end