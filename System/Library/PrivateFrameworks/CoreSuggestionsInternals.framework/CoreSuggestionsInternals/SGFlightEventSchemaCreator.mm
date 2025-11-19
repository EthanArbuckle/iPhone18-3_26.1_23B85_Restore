@interface SGFlightEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)a3;
- (BOOL)reservationIDPresentInEventSchema:(id)a3;
- (id)processDURawEvent:(id)a3;
@end

@implementation SGFlightEventSchemaCreator

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
  v30 = [v4 isEqualToString:@"http://schema.org/ReservationCancelled"];
  v5 = [v4 isEqualToString:@"http://schema.org/ReservationConfirmed"];
  v6 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v7 = [v6 objectForKeyedSubscript:@"flightNumber"];

  v8 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v9 = [v8 objectForKeyedSubscript:@"departureTime"];

  v10 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v32 = [v10 objectForKeyedSubscript:@"arrivalTime"];

  v11 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v12 = [v11 objectForKeyedSubscript:@"departureAirport"];
  v13 = [v12 objectForKeyedSubscript:@"iataCode"];

  v14 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v15 = [v14 objectForKeyedSubscript:@"arrivalAirport"];
  v16 = [v15 objectForKeyedSubscript:@"iataCode"];

  v17 = [v3 objectForKeyedSubscript:@"reservationId"];

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
      v19 = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = 0;
      if (v17 == v19 || !v18)
      {
        goto LABEL_25;
      }

      v20 = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = v18 != v20;
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

  v19 = [MEMORY[0x277CBEB68] null];
  LOBYTE(v7) = 0;
  if (v18 == v19 || !v9)
  {
    goto LABEL_25;
  }

  v20 = [MEMORY[0x277CBEB68] null];
  LOBYTE(v7) = 0;
  if (v9 != v20 && v32)
  {
    v21 = [MEMORY[0x277CBEB68] null];
    LOBYTE(v7) = 0;
    if (v32 != v21 && v13)
    {
      v22 = v21;
      v23 = [MEMORY[0x277CBEB68] null];
      LOBYTE(v7) = 0;
      if (v13 != v23 && v16)
      {
        v31 = v23;
        v24 = [MEMORY[0x277CBEB68] null];
        LOBYTE(v7) = 0;
        if (v16 != v24 && v17)
        {
          v29 = v24;
          v25 = [MEMORY[0x277CBEB68] null];
          LOBYTE(v7) = v17 != v25;

          v24 = v29;
        }

        v23 = v31;
      }

      v21 = v22;
    }
  }

LABEL_24:

LABEL_25:
  v27 = v32;

LABEL_28:
  return v7;
}

- (id)processDURawEvent:(id)a3
{
  v118[12] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06628]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06620]];
  v98 = [v3 objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06560]];
  v97 = [v3 objectForKeyedSubscript:*MEMORY[0x277D064B0]];
  v96 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06448]];
  v95 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06558]];
  v94 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06550]];
  v93 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06570]];
  v92 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06568]];
  v91 = [v3 objectForKeyedSubscript:*MEMORY[0x277D066C8]];
  v90 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06440]];
  v89 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06438]];
  v88 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06458]];
  v87 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06450]];
  v86 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06580]];
  v85 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06520]];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06798]];
  v84 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06630]];
  v10 = [v3 objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v75 = v10;
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [v11 capitalizedString];
    v83 = [v12 initWithFormat:@"http://schema.org/Reservation%@", v13];
  }

  else
  {
    v83 = 0;
  }

  v14 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06578]];
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
  v17 = v6;
  if (!v6)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v68 = v17;
  v118[2] = v17;
  v117[3] = @"reservationStatus";
  v18 = v83;
  if (!v83)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v67 = v18;
  v118[3] = v18;
  v117[4] = @"totalPrice";
  v19 = v9;
  v76 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v66 = v19;
  v118[4] = v19;
  v117[5] = @"underName";
  v116[0] = @"http://schema.org/Person";
  v115[0] = @"@type";
  v115[1] = @"name";
  v20 = v98;
  if (!v98)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v65 = v20;
  v116[1] = v20;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
  v118[5] = v74;
  v117[6] = @"reservationFor";
  v114[0] = @"http://schema.org/Flight";
  v113[0] = @"@type";
  v113[1] = @"flightDesignator";
  v21 = v4;
  if (!v4)
  {
    v21 = [MEMORY[0x277CBEB68] null];
  }

  v81 = v14;
  v64 = v21;
  v114[1] = v21;
  v113[2] = @"flightNumber";
  v22 = v84;
  if (!v84)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v63 = v22;
  v114[2] = v22;
  v113[3] = @"airline";
  v112[0] = @"http://schema.org/Airline";
  v111[0] = @"@type";
  v111[1] = @"iataCode";
  v23 = v7;
  if (!v7)
  {
    v23 = [MEMORY[0x277CBEB68] null];
  }

  v62 = v23;
  v112[1] = v23;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:2];
  v114[3] = v73;
  v113[4] = @"departureTime";
  v24 = v8;
  if (!v8)
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v61 = v24;
  v114[4] = v24;
  v113[5] = @"departureTerminal";
  v25 = v93;
  if (!v93)
  {
    v25 = [MEMORY[0x277CBEB68] null];
  }

  v79 = v4;
  v60 = v25;
  v114[5] = v25;
  v113[6] = @"departureGate";
  v26 = v92;
  if (!v92)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v59 = v26;
  v114[6] = v26;
  v113[7] = @"departureAirport";
  v110[0] = @"http://schema.org/Airport";
  v109[0] = @"@type";
  v109[1] = @"name";
  v27 = v95;
  if (!v95)
  {
    v27 = [MEMORY[0x277CBEB68] null];
  }

  v58 = v27;
  v110[1] = v27;
  v109[2] = @"iataCode";
  v28 = v94;
  if (!v94)
  {
    v28 = [MEMORY[0x277CBEB68] null];
  }

  v57 = v28;
  v110[2] = v28;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:3];
  v114[7] = v71;
  v113[8] = @"boardingTime";
  v29 = v97;
  if (!v97)
  {
    v29 = [MEMORY[0x277CBEB68] null];
  }

  v56 = v29;
  v114[8] = v29;
  v113[9] = @"arrivalTime";
  v30 = v96;
  if (!v96)
  {
    v30 = [MEMORY[0x277CBEB68] null];
  }

  v55 = v30;
  v114[9] = v30;
  v113[10] = @"arrivalTerminal";
  v31 = v88;
  if (!v88)
  {
    v31 = [MEMORY[0x277CBEB68] null];
  }

  v54 = v31;
  v114[10] = v31;
  v113[11] = @"arrivalGate";
  v32 = v87;
  if (!v87)
  {
    v32 = [MEMORY[0x277CBEB68] null];
  }

  v53 = v32;
  v114[11] = v32;
  v113[12] = @"arrivalAirport";
  v108[0] = @"http://schema.org/Airport";
  v107[0] = @"@type";
  v107[1] = @"name";
  v33 = v90;
  if (!v90)
  {
    v33 = [MEMORY[0x277CBEB68] null];
  }

  v52 = v33;
  v108[1] = v33;
  v107[2] = @"iataCode";
  v34 = v89;
  if (!v89)
  {
    v34 = [MEMORY[0x277CBEB68] null];
  }

  v51 = v34;
  v108[2] = v34;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:3];
  v114[12] = v70;
  v113[13] = @"duration";
  v35 = v86;
  if (!v86)
  {
    v35 = [MEMORY[0x277CBEB68] null];
  }

  v77 = v7;
  v78 = v6;
  v50 = v35;
  v114[13] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:14];
  v117[7] = @"reservedTicket";
  v106[0] = @"http://schema.org/Ticket";
  v105[0] = @"@type";
  v105[1] = @"ticketedSeat";
  v103[0] = @"@type";
  v103[1] = @"seatNumber";
  v104[0] = @"http://schema.org/Seat";
  v37 = v91;
  v69 = v36;
  v118[6] = v36;
  if (!v91)
  {
    v37 = [MEMORY[0x277CBEB68] null];
  }

  v49 = v37;
  v104[1] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
  v106[1] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
  v118[7] = v39;
  v117[8] = @"broker";
  v101[1] = @"name";
  v102[0] = @"http://schema.org/Organization";
  v101[0] = @"@type";
  v40 = v5;
  v72 = v5;
  if (!v5)
  {
    v40 = [MEMORY[0x277CBEB68] null];
  }

  v102[1] = v40;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v118[8] = v41;
  v117[9] = @"potentialAction";
  v99[0] = @"@type";
  v99[1] = @"@context";
  v100[0] = @"CheckInAction";
  v100[1] = @"http://schema.org";
  v42 = v85;
  v99[2] = @"target";
  if (!v85)
  {
    v42 = [MEMORY[0x277CBEB68] null];
  }

  v100[2] = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:3];
  v118[9] = v43;
  v117[10] = @"DetailedEventStatus";
  v44 = v14;
  if (!v14)
  {
    v44 = [MEMORY[0x277CBEB68] null];
  }

  v117[11] = @"startTimeIsUnknown";
  v118[10] = v44;
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