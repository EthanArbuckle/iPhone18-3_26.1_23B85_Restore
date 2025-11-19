@interface SGRestaurantEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)a3;
- (BOOL)reservationIDPresentInEventSchema:(id)a3;
- (id)processDURawEvent:(id)a3;
@end

@implementation SGRestaurantEventSchemaCreator

- (BOOL)reservationIDPresentInEventSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"reservationId"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
    v5 = v3 != v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)checkCompletenessOfSchema:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"reservationStatus"];
  v5 = [v3 objectForKeyedSubscript:@"reservationId"];
  v6 = [v3 objectForKeyedSubscript:@"startTime"];
  v7 = [v3 objectForKeyedSubscript:@"reservationFor"];

  v8 = [v7 objectForKeyedSubscript:@"name"];

  v9 = [v4 isEqualToString:@"http://schema.org/ReservationCancelled"];
  v10 = [v4 isEqualToString:@"http://schema.org/ReservationConfirmed"];
  if (v5)
  {
    v11 = [MEMORY[0x277CBEB68] null];
    v12 = v5 != v11;

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
  v13 = [MEMORY[0x277CBEB68] null];
  v14 = v6 != v13;

  if (v8)
  {
LABEL_4:
    v15 = [MEMORY[0x277CBEB68] null];
    v16 = v8 != v15;

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

- (id)processDURawEvent:(id)a3
{
  v56[11] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v48 = [v3 objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D066A8]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06678]];
  v47 = [v3 objectForKeyedSubscript:*MEMORY[0x277D066A0]];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06770]];
  v46 = [v3 objectForKeyedSubscript:*MEMORY[0x277D066B0]];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v38 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [v10 capitalizedString];
    v45 = [v11 initWithFormat:@"http://schema.org/Reservation%@", v12];
  }

  else
  {
    v45 = 0;
  }

  v13 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06578]];
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
  v16 = v5;
  if (!v5)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v36 = v16;
  v56[2] = v16;
  v55[3] = @"reservationStatus";
  v17 = v45;
  if (!v45)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v35 = v17;
  v56[3] = v17;
  v55[4] = @"underName";
  v53[0] = @"@type";
  v53[1] = @"name";
  v54[0] = @"http://schema.org/Person";
  v18 = v6;
  if (!v6)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v34 = v18;
  v54[1] = v18;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v56[4] = v37;
  v55[5] = @"startTime";
  v19 = v8;
  if (!v8)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v41 = v5;
  v33 = v19;
  v56[5] = v19;
  v55[6] = @"partySize";
  v20 = v7;
  if (!v7)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v32 = v20;
  v56[6] = v20;
  v55[7] = @"reservationFor";
  v52[0] = @"http://schema.org/FoodEstablishment";
  v51[0] = @"@type";
  v51[1] = @"name";
  v21 = v4;
  v42 = v4;
  if (!v4)
  {
    v21 = [MEMORY[0x277CBEB68] null];
  }

  v40 = v6;
  v31 = v21;
  v52[1] = v21;
  v51[2] = @"address";
  v22 = v47;
  if (!v47)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v44 = v13;
  v39 = v7;
  v52[2] = v22;
  v51[3] = @"telephone";
  v23 = v46;
  if (!v46)
  {
    v23 = [MEMORY[0x277CBEB68] null];
  }

  v52[3] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
  v56[7] = v24;
  v55[8] = @"broker";
  v49[1] = @"name";
  v50[0] = @"http://schema.org/Organization";
  v49[0] = @"@type";
  v25 = v48;
  if (!v48)
  {
    v25 = [MEMORY[0x277CBEB68] null];
  }

  v50[1] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v56[8] = v26;
  v55[9] = @"DetailedEventStatus";
  v27 = v44;
  if (!v44)
  {
    v27 = [MEMORY[0x277CBEB68] null];
  }

  v55[10] = @"startTimeIsUnknown";
  v56[9] = v27;
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