@interface SGRestaurantEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)schema;
- (BOOL)reservationIDPresentInEventSchema:(id)schema;
- (id)processDURawEvent:(id)event;
@end

@implementation SGRestaurantEventSchemaCreator

- (BOOL)reservationIDPresentInEventSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"reservationId"];
  if (v3)
  {
    null = [MEMORY[0x277CBEB68] null];
    v5 = v3 != null;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)checkCompletenessOfSchema:(id)schema
{
  schemaCopy = schema;
  v4 = [schemaCopy objectForKeyedSubscript:@"reservationStatus"];
  v5 = [schemaCopy objectForKeyedSubscript:@"reservationId"];
  v6 = [schemaCopy objectForKeyedSubscript:@"startTime"];
  v7 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];

  v8 = [v7 objectForKeyedSubscript:@"name"];

  v9 = [v4 isEqualToString:@"http://schema.org/ReservationCancelled"];
  v10 = [v4 isEqualToString:@"http://schema.org/ReservationConfirmed"];
  if (v5)
  {
    null = [MEMORY[0x277CBEB68] null];
    v12 = v5 != null;

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  null2 = [MEMORY[0x277CBEB68] null];
  v14 = v6 != null2;

  if (v8)
  {
LABEL_4:
    null3 = [MEMORY[0x277CBEB68] null];
    v16 = v8 != null3;

    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  if (v14 || (v9 & 1) == 0)
  {
    if (v12 || !v14 || !v16)
    {
      v17 = v14 && v16;
    }

    else
    {
      v17 = v10 | v9;
    }
  }

  else
  {
    v17 = v12 && v16;
  }

  return v17 & 1;
}

- (id)processDURawEvent:(id)event
{
  v56[11] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v48 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v4 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A8]];
  v5 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v6 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v7 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06678]];
  v47 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A0]];
  v8 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06770]];
  v46 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B0]];
  v9 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v38 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    capitalizedString = [v10 capitalizedString];
    v45 = [v11 initWithFormat:@"http://schema.org/Reservation%@", capitalizedString];
  }

  else
  {
    v45 = 0;
  }

  v13 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06578]];
  v14 = [SGEventSchemaCreator isTimePresentInDURawDateTime:v8];
  v15 = &unk_284749AD0;
  if (v14)
  {
    v15 = &unk_284749AB8;
  }

  v43 = v15;
  v55[0] = @"@context";
  v55[1] = @"@type";
  v56[0] = @"http://schema.org";
  v56[1] = @"http://schema.org/FoodEstablishmentReservation";
  v55[2] = @"reservationId";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v36 = null;
  v56[2] = null;
  v55[3] = @"reservationStatus";
  null2 = v45;
  if (!v45)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v35 = null2;
  v56[3] = null2;
  v55[4] = @"underName";
  v53[0] = @"@type";
  v53[1] = @"name";
  v54[0] = @"http://schema.org/Person";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v34 = null3;
  v54[1] = null3;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v56[4] = v37;
  v55[5] = @"startTime";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v41 = v5;
  v33 = null4;
  v56[5] = null4;
  v55[6] = @"partySize";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v32 = null5;
  v56[6] = null5;
  v55[7] = @"reservationFor";
  v52[0] = @"http://schema.org/FoodEstablishment";
  v51[0] = @"@type";
  v51[1] = @"name";
  null6 = v4;
  v42 = v4;
  if (!v4)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v40 = v6;
  v31 = null6;
  v52[1] = null6;
  v51[2] = @"address";
  null7 = v47;
  if (!v47)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v44 = v13;
  v39 = v7;
  v52[2] = null7;
  v51[3] = @"telephone";
  null8 = v46;
  if (!v46)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v52[3] = null8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
  v56[7] = v24;
  v55[8] = @"broker";
  v49[1] = @"name";
  v50[0] = @"http://schema.org/Organization";
  v49[0] = @"@type";
  null9 = v48;
  if (!v48)
  {
    null9 = [MEMORY[0x277CBEB68] null];
  }

  v50[1] = null9;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v56[8] = v26;
  v55[9] = @"DetailedEventStatus";
  null10 = v44;
  if (!v44)
  {
    null10 = [MEMORY[0x277CBEB68] null];
  }

  v55[10] = @"startTimeIsUnknown";
  v56[9] = null10;
  v56[10] = v43;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:11];
  if (!v44)
  {
  }

  if (!v48)
  {
  }

  if (!v46)
  {
  }

  if (!v47)
  {
  }

  if (v42)
  {
    if (v39)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if (v39)
    {
      goto LABEL_36;
    }
  }

LABEL_36:
  if (!v8)
  {
  }

  if (!v40)
  {
  }

  if (v45)
  {
    if (v41)
    {
      goto LABEL_42;
    }
  }

  else
  {

    if (v41)
    {
      goto LABEL_42;
    }
  }

LABEL_42:
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

@end