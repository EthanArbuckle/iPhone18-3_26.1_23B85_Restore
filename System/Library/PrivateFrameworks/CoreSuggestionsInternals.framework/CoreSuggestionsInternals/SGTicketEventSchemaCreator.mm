@interface SGTicketEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)schema;
- (BOOL)reservationIDPresentInEventSchema:(id)schema;
- (id)processDURawEvent:(id)event;
@end

@implementation SGTicketEventSchemaCreator

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
  v6 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v7 = [v6 objectForKeyedSubscript:@"name"];

  v8 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];

  v9 = [v8 objectForKeyedSubscript:@"startDate"];

  v10 = [v4 isEqualToString:@"http://schema.org/ReservationCancelled"];
  if (v7)
  {
    null = [MEMORY[0x277CBEB68] null];
    v12 = v7 != null;

    if (v9)
    {
LABEL_3:
      null2 = [MEMORY[0x277CBEB68] null];
      v14 = v9 != null2;

      v15 = v14 && v12;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  if (v10)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

- (id)processDURawEvent:(id)event
{
  v111[11] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v82 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v75 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v81 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v80 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A8]];
  v79 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066A0]];
  v78 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066C8]];
  v4 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06770]];
  v77 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065B0]];
  v83 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06798]];
  v5 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v71 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    capitalizedString = [v6 capitalizedString];
    v76 = [v7 initWithFormat:@"http://schema.org/Reservation%@", capitalizedString];
  }

  else
  {
    v76 = 0;
  }

  v9 = [eventCopy objectForKeyedSubscript:@"EventSubType"];
  v73 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06578]];
  v74 = v4;
  v10 = [SGEventSchemaCreator isTimePresentInDURawDateTime:v4];
  v11 = &unk_284749A70;
  if (v10)
  {
    v11 = &unk_284749A58;
  }

  v72 = v11;
  v70 = v9;
  if ([v9 isEqualToString:@"movie"])
  {
    v110[0] = @"@context";
    v110[1] = @"@type";
    v111[0] = @"http://schema.org";
    v111[1] = @"http://schema.org/EventReservation";
    null = v75;
    v110[2] = @"reservationId";
    if (!v75)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v69 = null;
    v111[2] = null;
    v110[3] = @"reservationStatus";
    null2 = v76;
    if (!v76)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v61 = null2;
    v111[3] = null2;
    v110[4] = @"underName";
    v109[0] = @"http://schema.org/Person";
    null3 = v81;
    v108[0] = @"@type";
    v108[1] = @"name";
    if (!v81)
    {
      null3 = [MEMORY[0x277CBEB68] null];
    }

    v59 = null3;
    v109[1] = null3;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
    v111[4] = v67;
    v110[5] = @"reservationFor";
    v107[0] = @"http://schema.org/ScreeningEvent";
    v106[0] = @"@type";
    v106[1] = @"name";
    null4 = v80;
    if (!v80)
    {
      null4 = [MEMORY[0x277CBEB68] null];
    }

    v57 = null4;
    v107[1] = null4;
    v106[2] = @"startDate";
    null5 = v4;
    if (!v4)
    {
      null5 = [MEMORY[0x277CBEB68] null];
    }

    v55 = null5;
    v107[2] = null5;
    v106[3] = @"endDate";
    null6 = v77;
    if (!v77)
    {
      null6 = [MEMORY[0x277CBEB68] null];
    }

    v53 = null6;
    v107[3] = null6;
    v106[4] = @"location";
    v105[0] = @"http://schema.org/Place";
    null7 = v79;
    v104[0] = @"@type";
    v104[1] = @"address";
    if (!v79)
    {
      null7 = [MEMORY[0x277CBEB68] null];
    }

    v51 = null7;
    v105[1] = null7;
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
    v107[4] = v65;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:5];
    v110[6] = @"reservedTicket";
    v103[0] = @"http://schema.org/Ticket";
    v102[0] = @"@type";
    v102[1] = @"ticketedSeat";
    v101[0] = @"http://schema.org/Seat";
    v100[0] = @"@type";
    v100[1] = @"seatNumber";
    null8 = v78;
    v63 = v19;
    v111[5] = v19;
    if (!v78)
    {
      null8 = [MEMORY[0x277CBEB68] null];
    }

    v101[1] = null8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
    v103[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
    v111[6] = v22;
    v110[7] = @"totalPrice";
    null9 = v83;
    if (!v83)
    {
      null9 = [MEMORY[0x277CBEB68] null];
    }

    v111[7] = null9;
    v110[8] = @"broker";
    v99[0] = @"http://schema.org/Organization";
    v98[0] = @"@type";
    v98[1] = @"name";
    null10 = v82;
    if (!v82)
    {
      null10 = [MEMORY[0x277CBEB68] null];
    }

    v99[1] = null10;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
    v111[8] = v25;
    v110[9] = @"DetailedEventStatus";
    null11 = v73;
    if (!v73)
    {
      null11 = [MEMORY[0x277CBEB68] null];
    }

    v110[10] = @"startTimeIsUnknown";
    v111[9] = null11;
    v111[10] = v72;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:11];
    if (!v73)
    {
    }

    if (!v82)
    {
    }

    if (!v83)
    {
    }

    if (!v78)
    {
    }

    v28 = v75;
    if (!v79)
    {
    }

    v30 = v73;
    v29 = v74;
    if (v77)
    {
      if (v74)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if (v74)
      {
        goto LABEL_41;
      }
    }

LABEL_41:
    if (!v80)
    {
    }

    if (!v81)
    {
    }

    if (!v76)
    {
      v31 = v61;
LABEL_91:

      goto LABEL_92;
    }

    goto LABEL_92;
  }

  v96[0] = @"@context";
  v96[1] = @"@type";
  v97[0] = @"http://schema.org";
  v97[1] = @"http://schema.org/EventReservation";
  null12 = v75;
  v96[2] = @"reservationId";
  if (!v75)
  {
    null12 = [MEMORY[0x277CBEB68] null];
  }

  v69 = null12;
  v97[2] = null12;
  v96[3] = @"reservationStatus";
  null13 = v76;
  if (!v76)
  {
    null13 = [MEMORY[0x277CBEB68] null];
  }

  v64 = null13;
  v97[3] = null13;
  v96[4] = @"totalPrice";
  null14 = v83;
  if (!v83)
  {
    null14 = [MEMORY[0x277CBEB68] null];
  }

  v62 = null14;
  v97[4] = null14;
  v96[5] = @"underName";
  v94[1] = @"name";
  v95[0] = @"http://schema.org/Person";
  null15 = v81;
  v94[0] = @"@type";
  if (!v81)
  {
    null15 = [MEMORY[0x277CBEB68] null];
  }

  v60 = null15;
  v95[1] = null15;
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
  v97[5] = v68;
  v96[6] = @"reservationFor";
  v93[0] = @"http://schema.org/Event";
  v92[0] = @"@type";
  v92[1] = @"name";
  null16 = v80;
  if (!v80)
  {
    null16 = [MEMORY[0x277CBEB68] null];
  }

  v58 = null16;
  v93[1] = null16;
  v92[2] = @"startDate";
  null17 = v4;
  if (!v4)
  {
    null17 = [MEMORY[0x277CBEB68] null];
  }

  v56 = null17;
  v93[2] = null17;
  v92[3] = @"endDate";
  null18 = v77;
  if (!v77)
  {
    null18 = [MEMORY[0x277CBEB68] null];
  }

  v54 = null18;
  v93[3] = null18;
  v92[4] = @"totalPrice";
  null19 = v83;
  if (!v83)
  {
    null19 = [MEMORY[0x277CBEB68] null];
  }

  v52 = null19;
  v93[4] = null19;
  v92[5] = @"location";
  null20 = v79;
  v90[0] = @"@type";
  v90[1] = @"address";
  v91[0] = @"http://schema.org/Place";
  if (!v79)
  {
    null20 = [MEMORY[0x277CBEB68] null];
  }

  v50 = null20;
  v91[1] = null20;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
  v93[5] = v66;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:6];
  v96[7] = @"reservedTicket";
  v88[1] = @"ticketedSeat";
  v89[0] = @"http://schema.org/Ticket";
  v88[0] = @"@type";
  v86[0] = @"@type";
  v86[1] = @"seatNumber";
  v87[0] = @"http://schema.org/Seat";
  null21 = v78;
  v97[6] = v41;
  if (!v78)
  {
    null21 = [MEMORY[0x277CBEB68] null];
  }

  v87[1] = null21;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v89[1] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v97[7] = v44;
  v96[8] = @"broker";
  v84[1] = @"name";
  v85[0] = @"http://schema.org/Organization";
  v84[0] = @"@type";
  null22 = v82;
  if (!v82)
  {
    null22 = [MEMORY[0x277CBEB68] null];
  }

  v85[1] = null22;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
  v97[8] = v46;
  v96[9] = @"DetailedEventStatus";
  null23 = v73;
  if (!v73)
  {
    null23 = [MEMORY[0x277CBEB68] null];
  }

  v96[10] = @"startTimeIsUnknown";
  v97[9] = null23;
  v97[10] = v72;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:11];
  if (!v73)
  {
  }

  if (!v82)
  {
  }

  if (!v78)
  {
  }

  if (!v79)
  {
  }

  v29 = v74;
  v28 = v75;
  v30 = v73;
  if (!v83)
  {
  }

  if (v77)
  {
    if (v74)
    {
      goto LABEL_83;
    }
  }

  else
  {

    if (v74)
    {
      goto LABEL_83;
    }
  }

LABEL_83:
  if (!v80)
  {
  }

  if (!v81)
  {
  }

  if (!v83)
  {
  }

  if (!v76)
  {
    v31 = v64;
    goto LABEL_91;
  }

LABEL_92:
  if (!v28)
  {
  }

  v48 = *MEMORY[0x277D85DE8];

  return v27;
}

@end