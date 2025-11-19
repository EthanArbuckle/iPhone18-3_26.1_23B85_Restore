@interface MUISearchInstantAnswer(Flight)
@end

@implementation MUISearchInstantAnswer(Flight)

- (uint64_t)initFlightAnswerWithCSInstantAnswer:()Flight .cold.1(void *a1, void *a2, void *a3)
{
  [(MUISearchInstantAnswer *)a1 initSearchInstantAnswer:a2];
  v6 = [a2 flightDepartureDateComponents];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [a2 flightArrivalDateComponents];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [a2 flightArrivalAirportCode];
  if (!v10)
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [a2 flightArrivalAirportCode];
  if ([v12 length] < 2 || (objc_msgSend(a2, "flightDepartureAirportCode"), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_13;
  }

  v14 = v13;
  v15 = [a2 flightDepartureAirportCode];
  v16 = [v15 length];

  if (v16 < 2)
  {
LABEL_15:
    *a3 = 0;
    return 1;
  }

  v17 = [a2 flightCarrierCode];
  v18 = a1[1];
  a1[1] = v17;

  v19 = [a2 flightDepartureDateComponents];
  v20 = a1[2];
  a1[2] = v19;

  v21 = [a2 flightArrivalDateComponents];
  v22 = a1[3];
  a1[3] = v21;

  v23 = [a2 flightArrivalAirportCode];
  v24 = a1[4];
  a1[4] = v23;

  v25 = [a2 flightDepartureAirportCode];
  v26 = a1[5];
  a1[5] = v25;

  v27 = [a2 flightNumber];
  v28 = a1[6];
  a1[6] = v27;

  v29 = [a2 flightCheckInUrl];
  v30 = a1[7];
  a1[7] = v29;

  v31 = [a2 flightDepartureTimeZone];
  v32 = a1[8];
  a1[8] = v31;

  v33 = [a2 flightArrivalTimeZone];
  v34 = a1[9];
  a1[9] = v33;

  v35 = [a2 flightBookingInfoUrl];
  v36 = a1[10];
  a1[10] = v35;

  v37 = [a2 flightCarrier];
  v38 = a1[11];
  a1[11] = v37;

  v39 = [a2 flightConfirmationNumber];
  v40 = a1[12];
  a1[12] = v39;

  v41 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v42 = a1[19];
  a1[19] = v41;

  v43 = [MEMORY[0x277D06E70] updatedFlightInformationForInstantAnswer:a2];
  if (v43)
  {
    if (!a1[7])
    {
      v44 = [MEMORY[0x277D06E70] flightURLFromUpdatedFlightInformation:v43];
      v45 = a1[7];
      a1[7] = v44;
    }

    v46 = [MEMORY[0x277D06E70] flightDepartureDateComponentsFromUpdatedFlightInformation:v43 departureTimeZone:a1[8]];
    v47 = a1[2];
    a1[2] = v46;

    v48 = [MEMORY[0x277D06E70] flightArrivalDateComponentsFromUpdatedFlightInformation:v43 arrivalTimeZone:a1[9]];
    v49 = a1[3];
    a1[3] = v48;

    v50 = [v43 objectForKey:*MEMORY[0x277D06C30]];
    v51 = a1[13];
    a1[13] = v50;

    v52 = [v43 objectForKey:*MEMORY[0x277D06C20]];
    v53 = a1[14];
    a1[14] = v52;

    v54 = [v43 objectForKey:*MEMORY[0x277D06C28]];
    v55 = a1[15];
    a1[15] = v54;

    v56 = [v43 objectForKey:*MEMORY[0x277D06C18]];
    v57 = a1[16];
    a1[16] = v56;

    v58 = [v43 objectForKey:*MEMORY[0x277D06C38]];
    v59 = a1[17];
    a1[17] = v58;

    v60 = [v43 objectForKey:*MEMORY[0x277D06C40]];
    v61 = a1[18];
    a1[18] = v60;

    v62 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v63 = a1[19];
    a1[19] = v62;
  }

  return 0;
}

@end