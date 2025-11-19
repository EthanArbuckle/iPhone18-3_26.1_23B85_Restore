@interface FUUtils
+ (id)airportFromSFAirport:(id)a3;
+ (id)convertFlightModel:(id)a3 withError:(id *)a4;
+ (void)enumerateFlightCodesInString:(id)a3 usingBlock:(id)a4;
+ (void)extractTimeForFlightStep:(id)a3 fromLeg:(id)a4;
@end

@implementation FUUtils

+ (void)enumerateFlightCodesInString:(id)a3 usingBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v22 = 0;
  v7 = DDScannerCreate();
  if (v7)
  {
    v8 = v7;
    v21 = 0;
    if (DDScannerScanString())
    {
      v9 = DDScannerCopyResultsWithOptions();
      if (v9)
      {
        v10 = v9;
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v12 = Count;
          v13 = 0;
          v14 = *MEMORY[0x277D040D0];
          v20 = *MEMORY[0x277D04040];
          v15 = *MEMORY[0x277D040D8];
          do
          {
            CFArrayGetValueAtIndex(v10, v13);
            if (DDResultHasType())
            {
              SubresultWithType = DDResultGetSubresultWithType();
              v17 = DDResultGetSubresultWithType();
              if (SubresultWithType)
              {
                if (v17)
                {
                  Value = DDResultGetValue();
                  v19 = [DDResultGetValue() integerValue];
                  v6[2](v6, Value, v19, &v21);
                  if (v21)
                  {
                    break;
                  }
                }
              }
            }

            ++v13;
          }

          while (v13 < v12);
        }

        CFRelease(v10);
      }
    }

    CFRelease(v8);
  }
}

+ (id)airportFromSFAirport:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FUAirport);
  v5 = [v3 location];
  [v5 lat];
  v7 = v6;
  v8 = [v3 location];
  [v8 lng];
  v10 = CLLocationCoordinate2DMake(v7, v9);
  [(FUAirport *)v4 setLocation:v10.latitude, v10.longitude];

  v11 = [v3 code];
  [(FUAirport *)v4 setIATACode:v11];

  v12 = [v3 name];
  [(FUAirport *)v4 setName:v12];

  v13 = [v3 city];
  [(FUAirport *)v4 setCity:v13];

  v14 = [v3 timezone];

  [(FUAirport *)v4 setTimeZone:v14];

  return v4;
}

+ (void)extractTimeForFlightStep:(id)a3 fromLeg:(id)a4
{
  v18 = a3;
  v5 = a4;
  if ([v18 departure])
  {
    v6 = [v5 departurePublishedTime];
    v7 = [v5 departureActualTime];
    v8 = [v5 departureGateClosedTime];
    [v5 departureRunwayTime];
  }

  else
  {
    v6 = [v5 arrivalPublishedTime];
    v7 = [v5 arrivalActualTime];
    v8 = [v5 arrivalGateTime];
    [v5 arrivalRunwayTime];
  }
  v9 = ;

  [v6 timeIntervalSince1970];
  if (v10 <= 0.0)
  {

    v6 = 0;
  }

  [v7 timeIntervalSince1970];
  if (v11 <= 0.0)
  {

    v7 = 0;
  }

  [v8 timeIntervalSince1970];
  if (v12 <= 0.0)
  {

    v8 = 0;
  }

  [v9 timeIntervalSince1970];
  if (v13 <= 0.0)
  {

    v9 = 0;
  }

  if (v6)
  {
    v14 = [[FUStepTime alloc] initWithType:1 date:v6];
    [v18 setScheduledTime:v14];
  }

  if (v7)
  {
    v15 = [[FUStepTime alloc] initWithType:1 date:v7];
    [v18 setEstimatedTime:v15];
  }

  if (v8)
  {
    v16 = [[FUStepTime alloc] initWithType:1 date:v8];
    [v18 setActualTime:v16];
  }

  if (v9)
  {
    v17 = [[FUStepTime alloc] initWithType:2 date:v9];
    [v18 setRunwayTime:v17];
  }

  [v18 setPlannedTime:0];
}

+ (id)convertFlightModel:(id)a3 withError:(id *)a4
{
  v143 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v96 = objc_opt_new();
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = v5;
  v98 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
  if (v98)
  {
    v97 = *v138;
    v125 = a1;
    do
    {
      v6 = 0;
      do
      {
        if (*v138 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v99 = v6;
        v7 = *(*(&v137 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v100 = [v7 legs];
        v104 = [v100 countByEnumeratingWithState:&v133 objects:v141 count:16];
        if (v104)
        {
          v101 = *v134;
          v102 = v7;
          v103 = v8;
          do
          {
            v9 = 0;
            do
            {
              if (*v134 != v101)
              {
                objc_enumerationMutation(v100);
              }

              v10 = *(*(&v133 + 1) + 8 * v9);
              v132 = objc_alloc_init(FUFlightLeg);
              v11 = [v10 status];
              v124 = v9;
              if (v11 > 4)
              {
                v20 = v11 - 8;
                v21 = v11 == 7;
                if (v11 == 5)
                {
                  v21 = 0;
                }

                v129 = v20 < 2;
                v15 = v20 >= 2 && v11 == 5;
                v126 = 1;
                v16 = 0;
                v17 = v20 >= 2 && v21;
                v122 = 0;
                v19 = 1;
              }

              else
              {
                v12 = 3;
                if (v11 == 3)
                {
                  v13 = 1;
                }

                else
                {
                  v12 = 0;
                  v13 = 0;
                }

                v14 = 5;
                if (v11 != 3)
                {
                  v14 = 0;
                }

                if (v11 == 2)
                {
                  v12 = 6;
                  v13 = 0;
                  v14 = 6;
                }

                v129 = 0;
                v15 = 0;
                if (v11 == 1)
                {
                  v12 = 2;
                }

                v126 = v12;
                v16 = v11 == 1;
                v17 = 0;
                if (v11 == 1)
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v13;
                }

                v122 = v18;
                if (v11 == 1)
                {
                  v19 = 2;
                }

                else
                {
                  v19 = v14;
                }
              }

              v22 = objc_alloc_init(FUFlightStep);
              [(FUFlightStep *)v22 setDeparture:1];
              [a1 extractTimeForFlightStep:v22 fromLeg:v10];
              v23 = objc_alloc_init(FUFlightStep);
              [(FUFlightStep *)v23 setDeparture:0];
              [a1 extractTimeForFlightStep:v23 fromLeg:v10];
              v24 = [(FUFlightStep *)v22 time];
              [v24 timeIntervalSinceNow];
              v26 = v25;

              v27 = [(FUFlightStep *)v23 time];
              [v27 timeIntervalSinceNow];
              v29 = v28;

              v30 = v126;
              if (v129 || v15)
              {
                v30 = 2;
              }

              if (v29 < 0.0)
              {
                v30 = v19;
              }

              if (v26 > 0.0)
              {
                v30 = v19;
              }

              if (v15 | v16 | v17 | v122)
              {
                v31 = 1;
              }

              else
              {
                v31 = v19;
              }

              if (v26 > 0.0)
              {
                v30 = v31;
              }

              v32 = 5;
              if (!v17)
              {
                v32 = v19;
              }

              v33 = 4;
              if (!v129 && !v16)
              {
                v33 = v32;
              }

              if (v29 < 0.0)
              {
                v34 = v33;
              }

              else
              {
                v34 = v30;
              }

              [(FUFlightLeg *)v132 setStatus:v34];
              v35 = [v10 lastUpdatedTime];
              [(FUFlightLeg *)v132 setDateLastUpdated:v35];

              [(FUFlightStep *)v22 setLegStatus:v34];
              [(FUFlightStep *)v23 setLegStatus:v34];
              v36 = [v10 departureGate];
              [(FUFlightStep *)v22 setGate:v36];

              v37 = [v10 departureTerminal];
              [(FUFlightStep *)v22 setTerminal:v37];

              v38 = [v10 departureAirport];
              v39 = [a1 airportFromSFAirport:v38];
              [(FUFlightStep *)v22 setAirport:v39];

              [(FUFlightLeg *)v132 setDeparture:v22];
              v40 = [v10 arrivalGate];
              [(FUFlightStep *)v23 setGate:v40];

              v41 = [v10 arrivalTerminal];
              [(FUFlightStep *)v23 setTerminal:v41];

              if (v34 == 5 || v34 == 3)
              {
                v42 = [v10 divertedAirport];
                v43 = v42 != 0;
              }

              else
              {
                v43 = 0;
                v42 = v105;
              }

              if (v34 == 5 || v34 == 3)
              {
              }

              if (v43)
              {
                [v10 divertedAirport];
              }

              else
              {
                [v10 arrivalAirport];
              }
              v44 = ;
              v105 = v42;
              v45 = [a1 airportFromSFAirport:v44];
              [(FUFlightStep *)v23 setAirport:v45];

              [(FUFlightLeg *)v132 setArrival:v23];
              v46 = [(FUFlightStep *)v23 scheduledTime];
              if (v46)
              {
                v47 = v46;
                v48 = [(FUFlightStep *)v22 scheduledTime];

                if (v48)
                {
                  v49 = [(FUFlightStep *)v23 scheduledTime];
                  v50 = [v49 date];
                  v51 = [(FUFlightStep *)v22 scheduledTime];
LABEL_70:
                  v55 = v51;
                  v56 = [v51 date];
                  [v50 timeIntervalSinceDate:v56];
                  [(FUFlightLeg *)v132 setDuration:?];

                  goto LABEL_71;
                }
              }

              v52 = [(FUFlightStep *)v23 actualTime];
              if (v52)
              {
                v53 = v52;
                v54 = [(FUFlightStep *)v22 actualTime];

                if (v54)
                {
                  v49 = [(FUFlightStep *)v23 actualTime];
                  v50 = [v49 date];
                  v51 = [(FUFlightStep *)v22 actualTime];
                  goto LABEL_70;
                }
              }

LABEL_71:
              v121 = v23;
              v123 = v22;
              v57 = [v10 pegasusDefinedState];
              if (v57 <= 9)
              {
                [(FUFlightLeg *)v132 setFlightState:qword_24B8571D8[v57]];
              }

              v118 = [v10 gateDepartureTimes];
              v58 = [v10 runwayDepartureTimes];
              v115 = [FUDepartureInfo alloc];
              v127 = [v10 departureAirport];
              v130 = [a1 airportFromSFAirport:v127];
              v113 = [v10 departureGate];
              v59 = [v10 departureTerminal];
              v119 = [v10 pegasusDisplayFields];
              v60 = [v119 departureTime];
              v61 = [v118 scheduled];
              v62 = [v118 current];
              v63 = [v58 scheduled];
              v117 = v58;
              v64 = [v58 current];
              v65 = [v118 bufferMinutes];
              v66 = [v58 bufferMinutes];
              v67 = v61;
              v68 = [(FUBaseStopInfo *)v115 initWithAirport:v130 gate:v113 terminal:v59 displayTime:v60 scheduledGateTime:v61 currentGateTime:v62 scheduledRunwayTime:v63 currentRunwayTime:v64 gateBufferMinutes:v65 runwayBufferMinutes:v66];

              v120 = v68;
              [(FUFlightLeg *)v132 setDepartureInfo:v68];
              v69 = [v10 gateArrivalTimes];
              v70 = [v10 runwayArrivalTimes];
              v71 = [FUArrivalInfo alloc];
              v116 = [v10 arrivalAirport];
              v131 = [v125 airportFromSFAirport:v116];
              v128 = [v10 arrivalGate];
              v72 = [v10 arrivalTerminal];
              v111 = [v10 baggageClaim];
              v114 = [v10 divertedAirport];
              v110 = [v125 airportFromSFAirport:v114];
              v106 = v10;
              v112 = [v10 pegasusDisplayFields];
              v73 = [v112 arrivalTime];
              v107 = [v69 scheduled];
              v108 = v69;
              v74 = [v69 current];
              v75 = [v70 scheduled];
              v76 = [v70 current];
              v77 = [v69 bufferMinutes];
              v78 = [v70 bufferMinutes];
              v109 = [(FUArrivalInfo *)v71 initWithAirport:v131 gate:v128 terminal:v72 baggageClaim:v111 divertedAirport:v110 displayTime:v73 scheduledGateTime:v107 currentGateTime:v74 scheduledRunwayTime:v75 currentRunwayTime:v76 gateBufferMinutes:v77 runwayBufferMinutes:v78];

              [(FUFlightLeg *)v132 setArrivalInfo:v109];
              if (!v108 && !v70 && !v118 && !v117 && ![v106 pegasusDefinedState])
              {
                [(FUFlightLeg *)v132 setLegacy:1];
              }

              v8 = v103;
              [v103 addObject:v132];

              a1 = v125;
              v9 = v124 + 1;
              v7 = v102;
            }

            while (v104 != v124 + 1);
            v104 = [v100 countByEnumeratingWithState:&v133 objects:v141 count:16];
          }

          while (v104);
        }

        if ([v8 count])
        {
          v79 = objc_alloc_init(FUFlight);
          v80 = [v8 copy];
          [(FUFlight *)v79 setAllLegs:v80];

          v81 = [v7 flightNumber];
          -[FUFlight setFlightNumber:](v79, "setFlightNumber:", [v81 integerValue]);

          [(FUFlight *)v79 setDisplayFlightNumber:[(FUFlight *)v79 flightNumber]];
          v82 = [v7 flightID];
          [(FUFlight *)v79 setFlightIdentifier:v82];

          v83 = [v7 carrierCode];
          if (v83)
          {
            v84 = objc_alloc_init(FUAirline);
            v85 = [v7 carrierCode];
            [(FUAirline *)v84 setIATACode:v85];

            v86 = [v7 carrierName];
            [(FUAirline *)v84 setName:v86];

            [(FUFlight *)v79 setAirline:v84];
            v87 = [(FUFlight *)v79 airline];
            [(FUFlight *)v79 setDisplayAirline:v87];

            v88 = [(FUFlight *)v79 displayAirline];
            v89 = [v88 IATACode];
            [(FUFlight *)v79 setQueriedAirlineTitle:v89];
          }

          v90 = objc_alloc_init(FUAirline);
          v91 = [v7 operatorCarrierCode];
          [(FUAirline *)v90 setIATACode:v91];

          [(FUFlight *)v79 setOperatorAirline:v90];
          v92 = [v7 operatorFlightNumber];
          -[FUFlight setOperatorFlightNumber:](v79, "setOperatorFlightNumber:", [v92 integerValue]);

          [v96 addObject:v79];
        }

        v6 = v99 + 1;
      }

      while (v99 + 1 != v98);
      v98 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
    }

    while (v98);
  }

  v93 = *MEMORY[0x277D85DE8];

  return v96;
}

@end