@interface FUUtils
+ (id)airportFromSFAirport:(id)airport;
+ (id)convertFlightModel:(id)model withError:(id *)error;
+ (void)enumerateFlightCodesInString:(id)string usingBlock:(id)block;
+ (void)extractTimeForFlightStep:(id)step fromLeg:(id)leg;
@end

@implementation FUUtils

+ (void)enumerateFlightCodesInString:(id)string usingBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
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
                  integerValue = [DDResultGetValue() integerValue];
                  blockCopy[2](blockCopy, Value, integerValue, &v21);
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

+ (id)airportFromSFAirport:(id)airport
{
  airportCopy = airport;
  v4 = objc_alloc_init(FUAirport);
  location = [airportCopy location];
  [location lat];
  v7 = v6;
  location2 = [airportCopy location];
  [location2 lng];
  v10 = CLLocationCoordinate2DMake(v7, v9);
  [(FUAirport *)v4 setLocation:v10.latitude, v10.longitude];

  code = [airportCopy code];
  [(FUAirport *)v4 setIATACode:code];

  name = [airportCopy name];
  [(FUAirport *)v4 setName:name];

  city = [airportCopy city];
  [(FUAirport *)v4 setCity:city];

  timezone = [airportCopy timezone];

  [(FUAirport *)v4 setTimeZone:timezone];

  return v4;
}

+ (void)extractTimeForFlightStep:(id)step fromLeg:(id)leg
{
  stepCopy = step;
  legCopy = leg;
  if ([stepCopy departure])
  {
    departurePublishedTime = [legCopy departurePublishedTime];
    departureActualTime = [legCopy departureActualTime];
    departureGateClosedTime = [legCopy departureGateClosedTime];
    [legCopy departureRunwayTime];
  }

  else
  {
    departurePublishedTime = [legCopy arrivalPublishedTime];
    departureActualTime = [legCopy arrivalActualTime];
    departureGateClosedTime = [legCopy arrivalGateTime];
    [legCopy arrivalRunwayTime];
  }
  v9 = ;

  [departurePublishedTime timeIntervalSince1970];
  if (v10 <= 0.0)
  {

    departurePublishedTime = 0;
  }

  [departureActualTime timeIntervalSince1970];
  if (v11 <= 0.0)
  {

    departureActualTime = 0;
  }

  [departureGateClosedTime timeIntervalSince1970];
  if (v12 <= 0.0)
  {

    departureGateClosedTime = 0;
  }

  [v9 timeIntervalSince1970];
  if (v13 <= 0.0)
  {

    v9 = 0;
  }

  if (departurePublishedTime)
  {
    v14 = [[FUStepTime alloc] initWithType:1 date:departurePublishedTime];
    [stepCopy setScheduledTime:v14];
  }

  if (departureActualTime)
  {
    v15 = [[FUStepTime alloc] initWithType:1 date:departureActualTime];
    [stepCopy setEstimatedTime:v15];
  }

  if (departureGateClosedTime)
  {
    v16 = [[FUStepTime alloc] initWithType:1 date:departureGateClosedTime];
    [stepCopy setActualTime:v16];
  }

  if (v9)
  {
    v17 = [[FUStepTime alloc] initWithType:2 date:v9];
    [stepCopy setRunwayTime:v17];
  }

  [stepCopy setPlannedTime:0];
}

+ (id)convertFlightModel:(id)model withError:(id *)error
{
  v143 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v96 = objc_opt_new();
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = modelCopy;
  v98 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
  if (v98)
  {
    v97 = *v138;
    selfCopy = self;
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
        legs = [v7 legs];
        v104 = [legs countByEnumeratingWithState:&v133 objects:v141 count:16];
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
                objc_enumerationMutation(legs);
              }

              v10 = *(*(&v133 + 1) + 8 * v9);
              v132 = objc_alloc_init(FUFlightLeg);
              status = [v10 status];
              v124 = v9;
              if (status > 4)
              {
                v20 = status - 8;
                v21 = status == 7;
                if (status == 5)
                {
                  v21 = 0;
                }

                v129 = v20 < 2;
                v15 = v20 >= 2 && status == 5;
                v126 = 1;
                v16 = 0;
                v17 = v20 >= 2 && v21;
                v122 = 0;
                v19 = 1;
              }

              else
              {
                v12 = 3;
                if (status == 3)
                {
                  v13 = 1;
                }

                else
                {
                  v12 = 0;
                  v13 = 0;
                }

                v14 = 5;
                if (status != 3)
                {
                  v14 = 0;
                }

                if (status == 2)
                {
                  v12 = 6;
                  v13 = 0;
                  v14 = 6;
                }

                v129 = 0;
                v15 = 0;
                if (status == 1)
                {
                  v12 = 2;
                }

                v126 = v12;
                v16 = status == 1;
                v17 = 0;
                if (status == 1)
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v13;
                }

                v122 = v18;
                if (status == 1)
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
              [self extractTimeForFlightStep:v22 fromLeg:v10];
              v23 = objc_alloc_init(FUFlightStep);
              [(FUFlightStep *)v23 setDeparture:0];
              [self extractTimeForFlightStep:v23 fromLeg:v10];
              time = [(FUFlightStep *)v22 time];
              [time timeIntervalSinceNow];
              v26 = v25;

              time2 = [(FUFlightStep *)v23 time];
              [time2 timeIntervalSinceNow];
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
              lastUpdatedTime = [v10 lastUpdatedTime];
              [(FUFlightLeg *)v132 setDateLastUpdated:lastUpdatedTime];

              [(FUFlightStep *)v22 setLegStatus:v34];
              [(FUFlightStep *)v23 setLegStatus:v34];
              departureGate = [v10 departureGate];
              [(FUFlightStep *)v22 setGate:departureGate];

              departureTerminal = [v10 departureTerminal];
              [(FUFlightStep *)v22 setTerminal:departureTerminal];

              departureAirport = [v10 departureAirport];
              v39 = [self airportFromSFAirport:departureAirport];
              [(FUFlightStep *)v22 setAirport:v39];

              [(FUFlightLeg *)v132 setDeparture:v22];
              arrivalGate = [v10 arrivalGate];
              [(FUFlightStep *)v23 setGate:arrivalGate];

              arrivalTerminal = [v10 arrivalTerminal];
              [(FUFlightStep *)v23 setTerminal:arrivalTerminal];

              if (v34 == 5 || v34 == 3)
              {
                divertedAirport = [v10 divertedAirport];
                v43 = divertedAirport != 0;
              }

              else
              {
                v43 = 0;
                divertedAirport = v105;
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
              v105 = divertedAirport;
              v45 = [self airportFromSFAirport:v44];
              [(FUFlightStep *)v23 setAirport:v45];

              [(FUFlightLeg *)v132 setArrival:v23];
              scheduledTime = [(FUFlightStep *)v23 scheduledTime];
              if (scheduledTime)
              {
                v47 = scheduledTime;
                scheduledTime2 = [(FUFlightStep *)v22 scheduledTime];

                if (scheduledTime2)
                {
                  scheduledTime3 = [(FUFlightStep *)v23 scheduledTime];
                  date = [scheduledTime3 date];
                  scheduledTime4 = [(FUFlightStep *)v22 scheduledTime];
LABEL_70:
                  v55 = scheduledTime4;
                  date2 = [scheduledTime4 date];
                  [date timeIntervalSinceDate:date2];
                  [(FUFlightLeg *)v132 setDuration:?];

                  goto LABEL_71;
                }
              }

              actualTime = [(FUFlightStep *)v23 actualTime];
              if (actualTime)
              {
                v53 = actualTime;
                actualTime2 = [(FUFlightStep *)v22 actualTime];

                if (actualTime2)
                {
                  scheduledTime3 = [(FUFlightStep *)v23 actualTime];
                  date = [scheduledTime3 date];
                  scheduledTime4 = [(FUFlightStep *)v22 actualTime];
                  goto LABEL_70;
                }
              }

LABEL_71:
              v121 = v23;
              v123 = v22;
              pegasusDefinedState = [v10 pegasusDefinedState];
              if (pegasusDefinedState <= 9)
              {
                [(FUFlightLeg *)v132 setFlightState:qword_24B8571D8[pegasusDefinedState]];
              }

              gateDepartureTimes = [v10 gateDepartureTimes];
              runwayDepartureTimes = [v10 runwayDepartureTimes];
              v115 = [FUDepartureInfo alloc];
              departureAirport2 = [v10 departureAirport];
              v130 = [self airportFromSFAirport:departureAirport2];
              departureGate2 = [v10 departureGate];
              departureTerminal2 = [v10 departureTerminal];
              pegasusDisplayFields = [v10 pegasusDisplayFields];
              departureTime = [pegasusDisplayFields departureTime];
              scheduled = [gateDepartureTimes scheduled];
              current = [gateDepartureTimes current];
              scheduled2 = [runwayDepartureTimes scheduled];
              v117 = runwayDepartureTimes;
              current2 = [runwayDepartureTimes current];
              bufferMinutes = [gateDepartureTimes bufferMinutes];
              bufferMinutes2 = [runwayDepartureTimes bufferMinutes];
              v67 = scheduled;
              v68 = [(FUBaseStopInfo *)v115 initWithAirport:v130 gate:departureGate2 terminal:departureTerminal2 displayTime:departureTime scheduledGateTime:scheduled currentGateTime:current scheduledRunwayTime:scheduled2 currentRunwayTime:current2 gateBufferMinutes:bufferMinutes runwayBufferMinutes:bufferMinutes2];

              v120 = v68;
              [(FUFlightLeg *)v132 setDepartureInfo:v68];
              gateArrivalTimes = [v10 gateArrivalTimes];
              runwayArrivalTimes = [v10 runwayArrivalTimes];
              v71 = [FUArrivalInfo alloc];
              arrivalAirport = [v10 arrivalAirport];
              v131 = [selfCopy airportFromSFAirport:arrivalAirport];
              arrivalGate2 = [v10 arrivalGate];
              arrivalTerminal2 = [v10 arrivalTerminal];
              baggageClaim = [v10 baggageClaim];
              divertedAirport2 = [v10 divertedAirport];
              v110 = [selfCopy airportFromSFAirport:divertedAirport2];
              v106 = v10;
              pegasusDisplayFields2 = [v10 pegasusDisplayFields];
              arrivalTime = [pegasusDisplayFields2 arrivalTime];
              scheduled3 = [gateArrivalTimes scheduled];
              v108 = gateArrivalTimes;
              current3 = [gateArrivalTimes current];
              scheduled4 = [runwayArrivalTimes scheduled];
              current4 = [runwayArrivalTimes current];
              bufferMinutes3 = [gateArrivalTimes bufferMinutes];
              bufferMinutes4 = [runwayArrivalTimes bufferMinutes];
              v109 = [(FUArrivalInfo *)v71 initWithAirport:v131 gate:arrivalGate2 terminal:arrivalTerminal2 baggageClaim:baggageClaim divertedAirport:v110 displayTime:arrivalTime scheduledGateTime:scheduled3 currentGateTime:current3 scheduledRunwayTime:scheduled4 currentRunwayTime:current4 gateBufferMinutes:bufferMinutes3 runwayBufferMinutes:bufferMinutes4];

              [(FUFlightLeg *)v132 setArrivalInfo:v109];
              if (!v108 && !runwayArrivalTimes && !gateDepartureTimes && !v117 && ![v106 pegasusDefinedState])
              {
                [(FUFlightLeg *)v132 setLegacy:1];
              }

              v8 = v103;
              [v103 addObject:v132];

              self = selfCopy;
              v9 = v124 + 1;
              v7 = v102;
            }

            while (v104 != v124 + 1);
            v104 = [legs countByEnumeratingWithState:&v133 objects:v141 count:16];
          }

          while (v104);
        }

        if ([v8 count])
        {
          v79 = objc_alloc_init(FUFlight);
          v80 = [v8 copy];
          [(FUFlight *)v79 setAllLegs:v80];

          flightNumber = [v7 flightNumber];
          -[FUFlight setFlightNumber:](v79, "setFlightNumber:", [flightNumber integerValue]);

          [(FUFlight *)v79 setDisplayFlightNumber:[(FUFlight *)v79 flightNumber]];
          flightID = [v7 flightID];
          [(FUFlight *)v79 setFlightIdentifier:flightID];

          carrierCode = [v7 carrierCode];
          if (carrierCode)
          {
            v84 = objc_alloc_init(FUAirline);
            carrierCode2 = [v7 carrierCode];
            [(FUAirline *)v84 setIATACode:carrierCode2];

            carrierName = [v7 carrierName];
            [(FUAirline *)v84 setName:carrierName];

            [(FUFlight *)v79 setAirline:v84];
            airline = [(FUFlight *)v79 airline];
            [(FUFlight *)v79 setDisplayAirline:airline];

            displayAirline = [(FUFlight *)v79 displayAirline];
            iATACode = [displayAirline IATACode];
            [(FUFlight *)v79 setQueriedAirlineTitle:iATACode];
          }

          v90 = objc_alloc_init(FUAirline);
          operatorCarrierCode = [v7 operatorCarrierCode];
          [(FUAirline *)v90 setIATACode:operatorCarrierCode];

          [(FUFlight *)v79 setOperatorAirline:v90];
          operatorFlightNumber = [v7 operatorFlightNumber];
          -[FUFlight setOperatorFlightNumber:](v79, "setOperatorFlightNumber:", [operatorFlightNumber integerValue]);

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