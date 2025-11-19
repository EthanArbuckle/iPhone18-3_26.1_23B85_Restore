@interface SGTrainEventSchemaCreator
- (BOOL)checkCompletenessOfSchema:(id)a3;
- (BOOL)reservationIDPresentInEventSchema:(id)a3;
- (id)processDURawEvent:(id)a3;
@end

@implementation SGTrainEventSchemaCreator

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
  v4 = [v3 objectForKeyedSubscript:@"reservationId"];
  v5 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v6 = [v5 objectForKeyedSubscript:@"provider"];
  v38 = [v6 objectForKeyedSubscript:@"name"];

  v7 = [v3 objectForKeyedSubscript:@"reservationStatus"];
  v36 = [v7 isEqualToString:@"http://schema.org/ReservationCancelled"];
  v37 = v7;
  v35 = [v7 isEqualToString:@"http://schema.org/ReservationConfirmed"];
  v8 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v9 = [v8 objectForKeyedSubscript:@"departureStation"];
  v10 = [v9 objectForKeyedSubscript:@"name"];

  v11 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v12 = [v11 objectForKeyedSubscript:@"departureStation"];
  v13 = [v12 objectForKeyedSubscript:@"address"];

  v14 = [v3 objectForKeyedSubscript:@"reservationFor"];
  v15 = [v14 objectForKeyedSubscript:@"arrivalStation"];
  v16 = [v15 objectForKeyedSubscript:@"name"];

  v17 = [v3 objectForKeyedSubscript:@"reservationFor"];

  v18 = [v17 objectForKeyedSubscript:@"arrivalStation"];
  v19 = [v18 objectForKeyedSubscript:@"address"];

  if (v10)
  {
    v20 = [MEMORY[0x277CBEB68] null];
    HIDWORD(v34) = v10 != v20;

    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    HIDWORD(v34) = 0;
    if (v13)
    {
LABEL_3:
      v21 = [MEMORY[0x277CBEB68] null];
      LODWORD(v34) = v13 != v21;

      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  LODWORD(v34) = 0;
  if (v16)
  {
LABEL_4:
    v22 = [MEMORY[0x277CBEB68] null];
    v23 = v16 != v22;

    if (v19)
    {
      goto LABEL_5;
    }

LABEL_10:
    v25 = 0;
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v23 = 0;
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_5:
  v24 = [MEMORY[0x277CBEB68] null];
  v25 = v19 != v24;

  if (v4)
  {
LABEL_6:
    v26 = [MEMORY[0x277CBEB68] null];
    v27 = v4;
    LOBYTE(v4) = v4 != v26;

    goto LABEL_12;
  }

LABEL_11:
  v27 = v4;
LABEL_12:
  if (v38)
  {
    v28 = [MEMORY[0x277CBEB68] null];
    v29 = v38 != v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = BYTE4(v34) | v34;
  v31 = v36;
  if (!(v4 & 1 | ((v36 & 1) == 0)))
  {
    v31 = v29 & v30;
  }

  v32 = (v30 & (v23 || v25) | v31) & (v36 | v35 | v4);

  return v32 & 1;
}

- (id)processDURawEvent:(id)a3
{
  v86[10] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D066B8]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D064B8]];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D066A8]];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277D067B0]];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06780]];
  v72 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06778]];
  v59 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06760]];
  v58 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06748]];
  v57 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06758]];
  v56 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06750]];
  v55 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06768]];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06770]];
  v71 = [v3 objectForKeyedSubscript:*MEMORY[0x277D065C0]];
  v70 = [v3 objectForKeyedSubscript:*MEMORY[0x277D065B8]];
  v54 = [v3 objectForKeyedSubscript:*MEMORY[0x277D065A0]];
  v53 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06588]];
  v52 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06598]];
  v51 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06590]];
  v50 = [v3 objectForKeyedSubscript:*MEMORY[0x277D065A8]];
  v69 = [v3 objectForKeyedSubscript:*MEMORY[0x277D065B0]];
  v68 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06798]];
  v10 = [v3 objectForKeyedSubscript:*MEMORY[0x277D065F8]];
  v49 = v10;
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [v11 capitalizedString];
    v67 = [v12 initWithFormat:@"http://schema.org/Reservation%@", v13];
  }

  else
  {
    v67 = 0;
  }

  v14 = [v3 objectForKeyedSubscript:*MEMORY[0x277D06578]];
  v15 = [SGEventSchemaCreator isTimePresentInDURawDateTime:v9];
  v16 = &unk_2847492C0;
  if (v15)
  {
    v16 = &unk_2847492A8;
  }

  v64 = v16;
  v85[0] = @"@context";
  v85[1] = @"@type";
  v86[0] = @"http://schema.org";
  v86[1] = @"http://schema.org/TrainReservation";
  v85[2] = @"reservationId";
  v17 = v4;
  if (!v4)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v66 = v9;
  v44 = v17;
  v86[2] = v17;
  v85[3] = @"reservationStatus";
  v18 = v67;
  if (!v67)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v65 = v14;
  v43 = v18;
  v86[3] = v18;
  v85[4] = @"underName";
  v84[0] = @"http://schema.org/Person";
  v83[0] = @"@type";
  v83[1] = @"name";
  v19 = v7;
  if (!v7)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v42 = v19;
  v84[1] = v19;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v86[4] = v48;
  v85[5] = @"reservationFor";
  v82[0] = @"http://schema.org/TrainTrip";
  v81[0] = @"@type";
  v81[1] = @"departureStation";
  v80[0] = @"http://schema.org/TrainStation";
  v20 = v8;
  v79[0] = @"@type";
  v79[1] = @"name";
  if (!v8)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v41 = v20;
  v80[1] = v20;
  v79[2] = @"address";
  v21 = v72;
  if (!v72)
  {
    v21 = [MEMORY[0x277CBEB68] null];
  }

  v40 = v21;
  v80[2] = v21;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];
  v82[1] = v47;
  v81[2] = @"departureTime";
  v22 = v9;
  if (!v9)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v39 = v22;
  v82[2] = v22;
  v81[3] = @"arrivalStation";
  v78[0] = @"http://schema.org/TrainStation";
  v77[0] = @"@type";
  v77[1] = @"name";
  v23 = v71;
  if (!v71)
  {
    v23 = [MEMORY[0x277CBEB68] null];
  }

  v38 = v23;
  v78[1] = v23;
  v77[2] = @"address";
  v24 = v70;
  if (!v70)
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v60 = v8;
  v61 = v7;
  v37 = v24;
  v78[2] = v24;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
  v82[3] = v46;
  v81[4] = @"arrivalTime";
  v25 = v69;
  if (!v69)
  {
    v25 = [MEMORY[0x277CBEB68] null];
  }

  v62 = v6;
  v63 = v4;
  v36 = v25;
  v82[4] = v25;
  v81[5] = @"provider";
  v75[1] = @"name";
  v76[0] = @"http://schema.org/Organization";
  v75[0] = @"@type";
  v26 = v6;
  if (!v6)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v76[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v82[5] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:6];
  v86[5] = v28;
  v85[6] = @"broker";
  v73[1] = @"name";
  v74[0] = @"http://schema.org/Organization";
  v73[0] = @"@type";
  v29 = v5;
  v30 = v5;
  if (!v5)
  {
    v29 = [MEMORY[0x277CBEB68] null];
  }

  v74[1] = v29;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v86[6] = v31;
  v85[7] = @"totalPrice";
  v32 = v68;
  if (!v68)
  {
    v32 = [MEMORY[0x277CBEB68] null];
  }

  v86[7] = v32;
  v85[8] = @"DetailedEventStatus";
  v33 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v85[9] = @"startTimeIsUnknown";
  v86[8] = v14;
  v86[9] = v64;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:10];
  if (!v33)
  {
  }

  if (!v68)
  {
  }

  if (!v30)
  {
  }

  if (!v62)
  {
  }

  if (!v69)
  {
  }

  if (!v70)
  {
  }

  if (v71)
  {
    if (v66)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v66)
    {
      goto LABEL_46;
    }
  }

LABEL_46:
  if (v72)
  {
    if (v60)
    {
      goto LABEL_48;
    }
  }

  else
  {

    if (v60)
    {
      goto LABEL_48;
    }
  }

LABEL_48:
  if (!v61)
  {
  }

  if (v67)
  {
    if (v63)
    {
      goto LABEL_52;
    }
  }

  else
  {

    if (v63)
    {
      goto LABEL_52;
    }
  }

LABEL_52:
  v34 = *MEMORY[0x277D85DE8];

  return v45;
}

@end