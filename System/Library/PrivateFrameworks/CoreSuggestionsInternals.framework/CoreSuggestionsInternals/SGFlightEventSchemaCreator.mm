@interface SGFlightEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)schema;
- (BOOL)reservationIDPresentInEventSchema:(id)schema;
- (id)processDURawEvent:(id)event;
@end

@implementation SGFlightEventSchemaCreator

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
  v30 = [v4 isEqualToString:@"http://schema.org/ReservationCancelled"];
  v5 = [v4 isEqualToString:@"http://schema.org/ReservationConfirmed"];
  v6 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v7 = [v6 objectForKeyedSubscript:@"flightNumber"];

  v8 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v9 = [v8 objectForKeyedSubscript:@"departureTime"];

  v10 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v32 = [v10 objectForKeyedSubscript:@"arrivalTime"];

  v11 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v12 = [v11 objectForKeyedSubscript:@"departureAirport"];
  v13 = [v12 objectForKeyedSubscript:@"iataCode"];

  v14 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v15 = [v14 objectForKeyedSubscript:@"arrivalAirport"];
  v16 = [v15 objectForKeyedSubscript:@"iataCode"];

  v17 = [schemaCopy objectForKeyedSubscript:@"reservationId"];

  if (!v5)
  {
    v18 = v7;
    if (v17)
    {
      v26 = v30;
    }

    else
    {
      v26 = 0;
    }

    if (v26 == 1)
    {
      null = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = 0;
      if (v17 == null || !v18)
      {
        goto LABEL_25;
      }

      null2 = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = v18 != null2;
      goto LABEL_24;
    }

    LOBYTE(v7) = 0;
LABEL_27:
    v27 = v32;
    goto LABEL_28;
  }

  v18 = v7;
  if (!v7)
  {
    goto LABEL_27;
  }

  null = [MEMORY[0x277CBEB68] null];
  LOBYTE(v7) = 0;
  if (v18 == null || !v9)
  {
    goto LABEL_25;
  }

  null2 = [MEMORY[0x277CBEB68] null];
  LOBYTE(v7) = 0;
  if (v9 != null2 && v32)
  {
    null3 = [MEMORY[0x277CBEB68] null];
    LOBYTE(v7) = 0;
    if (v32 != null3 && v13)
    {
      v22 = null3;
      null4 = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = 0;
      if (v13 != null4 && v16)
      {
        v31 = null4;
        null5 = [MEMORY[0x277CBEB68] null];
        LOBYTE(v7) = 0;
        if (v16 != null5 && v17)
        {
          v29 = null5;
          null6 = [MEMORY[0x277CBEB68] null];
          LOBYTE(v7) = v17 != null6;

          null5 = v29;
        }

        null4 = v31;
      }

      null3 = v22;
    }
  }

LABEL_24:

LABEL_25:
  v27 = v32;

LABEL_28:
  return v7;
}

- (id)processDURawEvent:(id)event
{
  v118[12] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06628]];
  v5 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v6 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v7 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06620]];
  v98 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v8 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06560]];
  v97 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D064B0]];
  v96 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06448]];
  v95 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06558]];
  v94 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06550]];
  v93 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06570]];
  v92 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06568]];
  v91 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D066C8]];
  v90 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06440]];
  v89 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06438]];
  v88 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06458]];
  v87 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06450]];
  v86 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06580]];
  v85 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06520]];
  v9 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06798]];
  v84 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06630]];
  v10 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v75 = v10;
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    capitalizedString = [v11 capitalizedString];
    v83 = [v12 initWithFormat:@"http://schema.org/Reservation%@", capitalizedString];
  }

  else
  {
    v83 = 0;
  }

  v14 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277D06578]];
  v82 = v8;
  v15 = [SGEventSchemaCreator isTimePresentInDURawDateTime:v8];
  v16 = &unk_284749140;
  if (v15)
  {
    v16 = &unk_284749128;
  }

  v80 = v16;
  v117[0] = @"@context";
  v117[1] = @"@type";
  v118[0] = @"http://schema.org";
  v118[1] = @"http://schema.org/FlightReservation";
  v117[2] = @"reservationId";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v68 = null;
  v118[2] = null;
  v117[3] = @"reservationStatus";
  null2 = v83;
  if (!v83)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v67 = null2;
  v118[3] = null2;
  v117[4] = @"totalPrice";
  null3 = v9;
  v76 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v66 = null3;
  v118[4] = null3;
  v117[5] = @"underName";
  v116[0] = @"http://schema.org/Person";
  v115[0] = @"@type";
  v115[1] = @"name";
  null4 = v98;
  if (!v98)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v65 = null4;
  v116[1] = null4;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
  v118[5] = v74;
  v117[6] = @"reservationFor";
  v114[0] = @"http://schema.org/Flight";
  v113[0] = @"@type";
  v113[1] = @"flightDesignator";
  null5 = v4;
  if (!v4)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v81 = v14;
  v64 = null5;
  v114[1] = null5;
  v113[2] = @"flightNumber";
  null6 = v84;
  if (!v84)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v63 = null6;
  v114[2] = null6;
  v113[3] = @"airline";
  v112[0] = @"http://schema.org/Airline";
  v111[0] = @"@type";
  v111[1] = @"iataCode";
  null7 = v7;
  if (!v7)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v62 = null7;
  v112[1] = null7;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:2];
  v114[3] = v73;
  v113[4] = @"departureTime";
  null8 = v8;
  if (!v8)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v61 = null8;
  v114[4] = null8;
  v113[5] = @"departureTerminal";
  null9 = v93;
  if (!v93)
  {
    null9 = [MEMORY[0x277CBEB68] null];
  }

  v79 = v4;
  v60 = null9;
  v114[5] = null9;
  v113[6] = @"departureGate";
  null10 = v92;
  if (!v92)
  {
    null10 = [MEMORY[0x277CBEB68] null];
  }

  v59 = null10;
  v114[6] = null10;
  v113[7] = @"departureAirport";
  v110[0] = @"http://schema.org/Airport";
  v109[0] = @"@type";
  v109[1] = @"name";
  null11 = v95;
  if (!v95)
  {
    null11 = [MEMORY[0x277CBEB68] null];
  }

  v58 = null11;
  v110[1] = null11;
  v109[2] = @"iataCode";
  null12 = v94;
  if (!v94)
  {
    null12 = [MEMORY[0x277CBEB68] null];
  }

  v57 = null12;
  v110[2] = null12;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:3];
  v114[7] = v71;
  v113[8] = @"boardingTime";
  null13 = v97;
  if (!v97)
  {
    null13 = [MEMORY[0x277CBEB68] null];
  }

  v56 = null13;
  v114[8] = null13;
  v113[9] = @"arrivalTime";
  null14 = v96;
  if (!v96)
  {
    null14 = [MEMORY[0x277CBEB68] null];
  }

  v55 = null14;
  v114[9] = null14;
  v113[10] = @"arrivalTerminal";
  null15 = v88;
  if (!v88)
  {
    null15 = [MEMORY[0x277CBEB68] null];
  }

  v54 = null15;
  v114[10] = null15;
  v113[11] = @"arrivalGate";
  null16 = v87;
  if (!v87)
  {
    null16 = [MEMORY[0x277CBEB68] null];
  }

  v53 = null16;
  v114[11] = null16;
  v113[12] = @"arrivalAirport";
  v108[0] = @"http://schema.org/Airport";
  v107[0] = @"@type";
  v107[1] = @"name";
  null17 = v90;
  if (!v90)
  {
    null17 = [MEMORY[0x277CBEB68] null];
  }

  v52 = null17;
  v108[1] = null17;
  v107[2] = @"iataCode";
  null18 = v89;
  if (!v89)
  {
    null18 = [MEMORY[0x277CBEB68] null];
  }

  v51 = null18;
  v108[2] = null18;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:3];
  v114[12] = v70;
  v113[13] = @"duration";
  null19 = v86;
  if (!v86)
  {
    null19 = [MEMORY[0x277CBEB68] null];
  }

  v77 = v7;
  v78 = v6;
  v50 = null19;
  v114[13] = null19;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:14];
  v117[7] = @"reservedTicket";
  v106[0] = @"http://schema.org/Ticket";
  v105[0] = @"@type";
  v105[1] = @"ticketedSeat";
  v103[0] = @"@type";
  v103[1] = @"seatNumber";
  v104[0] = @"http://schema.org/Seat";
  null20 = v91;
  v69 = v36;
  v118[6] = v36;
  if (!v91)
  {
    null20 = [MEMORY[0x277CBEB68] null];
  }

  v49 = null20;
  v104[1] = null20;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
  v106[1] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
  v118[7] = v39;
  v117[8] = @"broker";
  v101[1] = @"name";
  v102[0] = @"http://schema.org/Organization";
  v101[0] = @"@type";
  null21 = v5;
  v72 = v5;
  if (!v5)
  {
    null21 = [MEMORY[0x277CBEB68] null];
  }

  v102[1] = null21;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v118[8] = v41;
  v117[9] = @"potentialAction";
  v99[0] = @"@type";
  v99[1] = @"@context";
  v100[0] = @"CheckInAction";
  v100[1] = @"http://schema.org";
  null22 = v85;
  v99[2] = @"target";
  if (!v85)
  {
    null22 = [MEMORY[0x277CBEB68] null];
  }

  v100[2] = null22;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:3];
  v118[9] = v43;
  v117[10] = @"DetailedEventStatus";
  null23 = v14;
  if (!v14)
  {
    null23 = [MEMORY[0x277CBEB68] null];
  }

  v117[11] = @"startTimeIsUnknown";
  v118[10] = null23;
  v118[11] = v80;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:12];
  if (!v81)
  {
  }

  if (!v85)
  {
  }

  if (!v72)
  {
  }

  if (!v91)
  {
  }

  if (!v86)
  {
  }

  if (!v89)
  {
  }

  if (!v90)
  {
  }

  if (!v87)
  {
  }

  if (!v88)
  {
  }

  if (!v96)
  {
  }

  if (!v97)
  {
  }

  if (!v94)
  {
  }

  if (!v95)
  {
  }

  if (!v92)
  {
  }

  if (v93)
  {
    if (v82)
    {
      goto LABEL_82;
    }
  }

  else
  {

    if (v82)
    {
      goto LABEL_82;
    }
  }

LABEL_82:
  if (!v77)
  {
  }

  if (v84)
  {
    if (v79)
    {
      goto LABEL_86;
    }
  }

  else
  {

    if (v79)
    {
      goto LABEL_86;
    }
  }

LABEL_86:
  if (v98)
  {
    if (v76)
    {
      goto LABEL_88;
    }
  }

  else
  {

    if (v76)
    {
      goto LABEL_88;
    }
  }

LABEL_88:
  if (!v83)
  {

    if (v78)
    {
      goto LABEL_90;
    }

LABEL_98:

    goto LABEL_90;
  }

  if (!v78)
  {
    goto LABEL_98;
  }

LABEL_90:
  v46 = v45;

  v47 = *MEMORY[0x277D85DE8];
  return v45;
}

@end