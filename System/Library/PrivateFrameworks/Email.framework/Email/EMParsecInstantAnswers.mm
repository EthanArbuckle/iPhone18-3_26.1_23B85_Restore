@interface EMParsecInstantAnswers
+ (NSString)bundleIdentifier;
+ (id)_dateComponentsForDate:(id)a3 inTimeZone:(id)a4;
+ (id)_flightArrivalDateFromUpdatedFlightInformation:(id)a3;
+ (id)_flightDepartureDateFromUpdatedFlightInformation:(id)a3;
+ (id)dictionaryFromTimezone:(id)a3;
+ (id)flightArrivalDateComponentsFromUpdatedFlightInformation:(id)a3 arrivalTimeZone:(id)a4;
+ (id)flightDepartureDateComponentsFromUpdatedFlightInformation:(id)a3 departureTimeZone:(id)a4;
+ (id)flightInformationWithAirlineCode:(id)a3 flightNumber:(id)a4 flightDate:(id)a5;
+ (id)flightURLFromUpdatedFlightInformation:(id)a3;
+ (id)formattedDate:(id)a3 withTimezone:(id)a4;
+ (id)inlineCardWithManageReservationButton:(BOOL)a3 bodyCardSectionID:(id)a4 buttonsCardSectionID:(id)a5;
+ (id)log;
+ (id)sfAirportToDictionnary:(id)a3;
+ (id)sfFlightStatusToString:(int)a3;
+ (id)sfFlightsToDictionary:(id)a3;
+ (id)updatedFlightInformationForInstantAnswer:(id)a3;
+ (id)utcFormatter;
+ (void)setBundleIdentifier:(id)a3;
@end

@implementation EMParsecInstantAnswers

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EMParsecInstantAnswers_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_30 != -1)
  {
    dispatch_once(&log_onceToken_30, block);
  }

  v2 = log_log_30;

  return v2;
}

void __29__EMParsecInstantAnswers_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_30;
  log_log_30 = v1;
}

+ (id)updatedFlightInformationForInstantAnswer:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 flightDepartureDateComponents];
  if (!v4)
  {
    v15 = 0;
    goto LABEL_15;
  }

  v66 = v3;
  v5 = [v3 flightArrivalDateComponents];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v66 flightArrivalAirportCode];
  if (!v6)
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  v7 = [v66 flightArrivalAirportCode];
  if ([v7 length] < 2 || (objc_msgSend(v66, "flightDepartureAirportCode"), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_11;
  }

  v9 = [v66 flightDepartureAirportCode];
  v10 = [v9 length];

  if (v10 >= 2)
  {
    v11 = v66;
    v12 = objc_alloc(MEMORY[0x1E695DEE8]);
    v58 = [v12 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v13 = [v66 flightDepartureTimeZone];

    if (v13)
    {
      v14 = [v66 flightDepartureTimeZone];
      [v58 setTimeZone:v14];
    }

    else
    {
      v18 = +[EMParsecInstantAnswers log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6655000, v18, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] Received nil flightDepartureTimeZone, using UTC timeZone to initialize Calendar", buf, 2u);
      }

      v19 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
      [v58 setTimeZone:v19];

      v11 = v66;
    }

    v20 = [v11 flightDepartureDateComponents];
    v60 = [v58 dateFromComponents:v20];

    v21 = [v66 flightCarrierCode];
    v22 = [v66 flightNumber];
    v57 = [EMParsecInstantAnswers flightInformationWithAirlineCode:v21 flightNumber:v22 flightDate:v60];

    if (!v57)
    {
      v15 = 0;
LABEL_83:

      goto LABEL_14;
    }

    v23 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v57 count];
      *buf = 134217984;
      v83 = v24;
      _os_log_impl(&dword_1C6655000, v23, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] found %lu events from flights api response", buf, 0xCu);
    }

    v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v57;
    v62 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    if (v62)
    {
      v61 = *v76;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v76 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v25 = [*(*(&v75 + 1) + 8 * i) objectForKey:{@"legs", v57}];
          if (v25)
          {
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v63 = v25;
            v26 = v25;
            v27 = [v26 countByEnumeratingWithState:&v71 objects:v80 count:16];
            if (!v27)
            {
              goto LABEL_48;
            }

            v28 = *v72;
            while (1)
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v72 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = *(*(&v71 + 1) + 8 * j);
                v31 = [v30 objectForKey:@"departureAirport"];
                v32 = v31;
                if (v31)
                {
                  v33 = [v31 objectForKey:@"code"];
                  if (!v33)
                  {
                    v34 = +[EMParsecInstantAnswers log];
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1C6655000, v34, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] found flight leg with no departure airport code", buf, 2u);
                    }

LABEL_45:

                    goto LABEL_46;
                  }

                  v34 = [v66 flightDepartureAirportCode];
                  if (![v33 isEqualToString:v34])
                  {
                    goto LABEL_45;
                  }

                  v35 = [v30 objectForKey:@"departureActualTime"];
                  if (!v35)
                  {
                    goto LABEL_45;
                  }

                  v36 = [v30 objectForKey:@"arrivalActualTime"];
                  v37 = v36 == 0;

                  if (!v37)
                  {
                    [v65 addObject:v30];
                  }
                }

                else
                {
                  v33 = +[EMParsecInstantAnswers log];
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1C6655000, v33, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] found flight leg with no departure airport", buf, 2u);
                  }
                }

LABEL_46:
              }

              v27 = [v26 countByEnumeratingWithState:&v71 objects:v80 count:16];
              if (!v27)
              {
LABEL_48:

                v25 = v63;
                break;
              }
            }
          }
        }

        v62 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
      }

      while (v62);
    }

    v38 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v65 count];
      *buf = 134217984;
      v83 = v39;
      _os_log_impl(&dword_1C6655000, v38, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] found %lu flight legs with same departure airport and date", buf, 0xCu);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v40 = v65;
    v41 = [v40 countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v41)
    {
      v42 = 0;
      v43 = *v68;
      v44 = 1.79769313e308;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v68 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v46 = *(*(&v67 + 1) + 8 * k);
          v47 = [v46 objectForKey:{@"departurePublishedTime", v57}];
          if (v47)
          {
            v48 = +[EMParsecInstantAnswers utcFormatter];
            v49 = [v48 dateFromString:v47];

            if (v49 && ([v49 timeIntervalSinceDate:v60], v51 = fabs(v50), v51 <= v44))
            {
              v52 = v46;

              v42 = v52;
            }

            else
            {
              v51 = v44;
            }

            v44 = v51;
          }
        }

        v41 = [v40 countByEnumeratingWithState:&v67 objects:v79 count:16];
      }

      while (v41);

      if (v40 && v42)
      {
        v53 = [EMParsecInstantAnswers _flightDepartureDateFromUpdatedFlightInformation:v42];
        v54 = [EMParsecInstantAnswers _flightArrivalDateFromUpdatedFlightInformation:v42];
        if (v53 && v54)
        {
          v55 = +[EMParsecInstantAnswers log];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C6655000, v55, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] successfully updated flight instant answer with live info.", buf, 2u);
          }

          v15 = v42;
        }

        else
        {
          v56 = +[EMParsecInstantAnswers log];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C6655000, v56, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] flightDepartureActualDate or flightArrivalActualDate is nil, skipping live info. update", buf, 2u);
          }

          v15 = 0;
        }

LABEL_82:
        goto LABEL_83;
      }
    }

    else
    {

      v42 = 0;
    }

    v53 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v53, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] no matching leg was found from flights api response", buf, 2u);
    }

    v15 = 0;
    goto LABEL_82;
  }

LABEL_13:
  v15 = 0;
LABEL_14:
  v3 = v66;
LABEL_15:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)flightURLFromUpdatedFlightInformation:(id)a3
{
  v3 = [a3 objectForKey:@"carrierWebsite"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_flightDepartureDateFromUpdatedFlightInformation:(id)a3
{
  v3 = [a3 objectForKey:@"departureActualTime"];
  v4 = +[EMParsecInstantAnswers utcFormatter];
  v5 = [v4 dateFromString:v3];

  return v5;
}

+ (id)_flightArrivalDateFromUpdatedFlightInformation:(id)a3
{
  v3 = [a3 objectForKey:@"arrivalActualTime"];
  v4 = +[EMParsecInstantAnswers utcFormatter];
  v5 = [v4 dateFromString:v3];

  return v5;
}

+ (id)flightDepartureDateComponentsFromUpdatedFlightInformation:(id)a3 departureTimeZone:(id)a4
{
  v5 = a4;
  v6 = [EMParsecInstantAnswers _flightDepartureDateFromUpdatedFlightInformation:a3];
  if (v6)
  {
    v7 = [EMParsecInstantAnswers _dateComponentsForDate:v6 inTimeZone:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)flightArrivalDateComponentsFromUpdatedFlightInformation:(id)a3 arrivalTimeZone:(id)a4
{
  v5 = a4;
  v6 = [EMParsecInstantAnswers _flightArrivalDateFromUpdatedFlightInformation:a3];
  if (v6)
  {
    v7 = [EMParsecInstantAnswers _dateComponentsForDate:v6 inTimeZone:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_dateComponentsForDate:(id)a3 inTimeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v7 setTimeZone:v6];
  v8 = [v7 components:252 fromDate:v5];

  return v8;
}

+ (id)inlineCardWithManageReservationButton:(BOOL)a3 bodyCardSectionID:(id)a4 buttonsCardSectionID:(id)a5
{
  v6 = a3;
  v23[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E69C9F08]);
  [v9 setCardSectionId:v7];
  v10 = objc_alloc_init(MEMORY[0x1E69CA580]);
  [v9 setCommand:v10];

  v11 = objc_alloc_init(MEMORY[0x1E69C9ED8]);
  [v11 setCardSectionId:v8];
  v12 = objc_alloc_init(MEMORY[0x1E69C9F90]);
  v13 = objc_alloc_init(MEMORY[0x1E69CA580]);
  [v12 setCommand:v13];

  [v12 setUniqueId:1];
  if (v6)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69C9F90]);
    v15 = objc_alloc_init(MEMORY[0x1E69CA1E8]);
    [v14 setCommand:v15];

    [v14 setUniqueId:2];
    v23[0] = v12;
    v23[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    [v11 setButtons:v16];
  }

  else
  {
    v22 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v11 setButtons:v14];
  }

  v17 = objc_alloc_init(MEMORY[0x1E69C9F00]);
  v21[0] = v9;
  v21[1] = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v17 setCardSections:v18];

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)utcFormatter
{
  if (utcFormatter_onceToken != -1)
  {
    +[EMParsecInstantAnswers utcFormatter];
  }

  v3 = utcFormatter_utcFormatter;

  return v3;
}

void __38__EMParsecInstantAnswers_utcFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = utcFormatter_utcFormatter;
  utcFormatter_utcFormatter = v0;
}

+ (id)sfFlightStatusToString:(int)a3
{
  if ((a3 - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1E826F1E0[a3 - 1];
  }
}

+ (id)dictionaryFromTimezone:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 name];

  if (v5)
  {
    v6 = [v3 name];
    [v4 setObject:v6 forKeyedSubscript:@"name"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "secondsFromGMT")}];
  [v4 setObject:v7 forKeyedSubscript:@"secondsFromGMT"];

  return v4;
}

+ (id)formattedDate:(id)a3 withTimezone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"EMParsecInstantAnswers.m" lineNumber:244 description:{@"Can't create formattedDate, date is nil"}];
  }

  v10 = objc_opt_new();
  v11 = v10;
  if (v8)
  {
    [v10 setTimeZone:v8];
    v12 = [v11 formatOptions] | 0x40;
  }

  else
  {
    v13 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v11 setTimeZone:v13];

    v12 = [v11 formatOptions] & 0xFFFFFFFFFFFFFFBFLL;
  }

  [v11 setFormatOptions:v12];
  v14 = [v11 stringFromDate:v7];

  objc_autoreleasePoolPop(v9);

  return v14;
}

+ (id)sfAirportToDictionnary:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = [v4 code];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:v8 forKeyedSubscript:@"code"];
  if (!v7)
  {
  }

  v9 = [v4 timezone];
  v10 = [a1 dictionaryFromTimezone:v9];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:v11 forKeyedSubscript:@"timezone"];
  if (!v10)
  {
  }

  v12 = [v4 name];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:v13 forKeyedSubscript:@"name"];
  if (!v12)
  {
  }

  v14 = [v6 copy];
  objc_autoreleasePoolPop(v5);

  return v14;
}

+ (id)sfFlightsToDictionary:(id)a3
{
  v101 = *MEMORY[0x1E69E9840];
  v61 = a3;
  v67 = objc_opt_new();
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v61;
  v3 = [obj countByEnumeratingWithState:&v95 objects:v100 count:{16, v61}];
  if (v3)
  {
    v66 = *v96;
    do
    {
      v4 = 0;
      v65 = v3;
      do
      {
        if (*v96 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v70 = v4;
        v5 = *(*(&v95 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v71 = objc_opt_new();
        v6 = [v5 flightNumber];
        v7 = v6;
        if (!v6)
        {
          v64 = [MEMORY[0x1E695DFB0] null];
          v7 = v64;
        }

        [v71 setObject:v7 forKeyedSubscript:@"flightNumber"];
        if (!v6)
        {
        }

        v8 = [v5 carrierCode];
        v9 = v8;
        if (!v8)
        {
          v63 = [MEMORY[0x1E695DFB0] null];
          v9 = v63;
        }

        [v71 setObject:v9 forKeyedSubscript:@"carrierCode"];
        if (!v8)
        {
        }

        v10 = [v5 carrierWebsite];
        v88 = objc_opt_new();
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v11 = [v5 legs];
        v89 = [v11 countByEnumeratingWithState:&v91 objects:v99 count:16];
        if (v89)
        {
          v87 = *v92;
          v72 = v11;
          do
          {
            for (i = 0; i != v89; ++i)
            {
              if (*v92 != v87)
              {
                objc_enumerationMutation(v72);
              }

              v13 = *(*(&v91 + 1) + 8 * i);
              v14 = objc_opt_new();
              v15 = +[EMParsecInstantAnswers sfFlightStatusToString:](EMParsecInstantAnswers, "sfFlightStatusToString:", [v13 status]);
              v16 = v15;
              if (!v15)
              {
                v85 = [MEMORY[0x1E695DFB0] null];
                v16 = v85;
              }

              [v14 setObject:v16 forKeyedSubscript:@"status"];
              if (!v15)
              {
              }

              v17 = [v13 title];
              v18 = v17;
              if (!v17)
              {
                v84 = [MEMORY[0x1E695DFB0] null];
                v18 = v84;
              }

              [v14 setObject:v18 forKeyedSubscript:@"title"];
              if (!v17)
              {
              }

              v19 = [v13 departurePublishedTime];
              v20 = [v13 departureAirport];
              v21 = [v20 timezone];
              v22 = [EMParsecInstantAnswers formattedDate:v19 withTimezone:v21];
              v23 = v22;
              if (!v22)
              {
                v83 = [MEMORY[0x1E695DFB0] null];
                v23 = v83;
              }

              [v14 setObject:v23 forKeyedSubscript:@"departurePublishedTime"];
              if (!v22)
              {
              }

              v24 = [v13 departureActualTime];
              v25 = [v13 departureAirport];
              v26 = [v25 timezone];
              v27 = [EMParsecInstantAnswers formattedDate:v24 withTimezone:v26];
              v28 = v27;
              if (!v27)
              {
                v82 = [MEMORY[0x1E695DFB0] null];
                v28 = v82;
              }

              [v14 setObject:v28 forKeyedSubscript:@"departureActualTime"];
              if (!v27)
              {
              }

              v29 = [v13 departureTerminal];
              v30 = v29;
              if (!v29)
              {
                v81 = [MEMORY[0x1E695DFB0] null];
                v30 = v81;
              }

              [v14 setObject:v30 forKeyedSubscript:@"departureTerminal"];
              if (!v29)
              {
              }

              v31 = [v13 departureGate];
              v32 = v31;
              if (!v31)
              {
                v80 = [MEMORY[0x1E695DFB0] null];
                v32 = v80;
              }

              [v14 setObject:v32 forKeyedSubscript:@"departureGate"];
              if (!v31)
              {
              }

              v33 = [v13 arrivalPublishedTime];
              v34 = [v13 arrivalAirport];
              v35 = [v34 timezone];
              v36 = [EMParsecInstantAnswers formattedDate:v33 withTimezone:v35];
              v37 = v36;
              if (!v36)
              {
                v79 = [MEMORY[0x1E695DFB0] null];
                v37 = v79;
              }

              [v14 setObject:v37 forKeyedSubscript:@"arrivalPublishedTime"];
              if (!v36)
              {
              }

              v38 = [v13 arrivalActualTime];
              v39 = [v13 arrivalAirport];
              v40 = [v39 timezone];
              v41 = [EMParsecInstantAnswers formattedDate:v38 withTimezone:v40];
              v42 = v41;
              if (!v41)
              {
                v78 = [MEMORY[0x1E695DFB0] null];
                v42 = v78;
              }

              [v14 setObject:v42 forKeyedSubscript:@"arrivalActualTime"];
              if (!v41)
              {
              }

              v43 = [v13 arrivalTerminal];
              v44 = v43;
              if (!v43)
              {
                v77 = [MEMORY[0x1E695DFB0] null];
                v44 = v77;
              }

              [v14 setObject:v44 forKeyedSubscript:@"arrivalTerminal"];
              if (!v43)
              {
              }

              v45 = [v13 arrivalGate];
              v46 = v45;
              if (!v45)
              {
                v76 = [MEMORY[0x1E695DFB0] null];
                v46 = v76;
              }

              [v14 setObject:v46 forKeyedSubscript:@"arrivalGate"];
              if (!v45)
              {
              }

              v47 = [v13 departureAirport];
              v48 = [EMParsecInstantAnswers sfAirportToDictionnary:v47];
              v49 = v48;
              if (!v48)
              {
                v75 = [MEMORY[0x1E695DFB0] null];
                v49 = v75;
              }

              [v14 setObject:v49 forKeyedSubscript:@"departureAirport"];
              if (!v48)
              {
              }

              v50 = [v13 arrivalAirport];
              v51 = [EMParsecInstantAnswers sfAirportToDictionnary:v50];
              v52 = v51;
              if (!v51)
              {
                v74 = [MEMORY[0x1E695DFB0] null];
                v52 = v74;
              }

              [v14 setObject:v52 forKeyedSubscript:@"arrivalAirport"];
              if (!v51)
              {
              }

              v53 = [v13 divertedAirport];
              v54 = [a1 sfAirportToDictionnary:v53];
              v55 = v54;
              if (!v54)
              {
                v73 = [MEMORY[0x1E695DFB0] null];
                v55 = v73;
              }

              [v14 setObject:v55 forKeyedSubscript:@"divertedAirport"];
              if (!v54)
              {
              }

              v56 = v10;
              if (!v10)
              {
                v90 = [MEMORY[0x1E695DFB0] null];
                v56 = v90;
              }

              [v14 setObject:v56 forKeyedSubscript:@"carrierWebsite"];
              if (!v10)
              {
              }

              [v88 addObject:v14];
            }

            v11 = v72;
            v89 = [v72 countByEnumeratingWithState:&v91 objects:v99 count:16];
          }

          while (v89);
        }

        v57 = v88;
        if (!v88)
        {
          v68 = [MEMORY[0x1E695DFB0] null];
          v57 = v68;
        }

        [v71 setObject:v57 forKeyedSubscript:@"legs"];
        if (!v88)
        {
        }

        [v67 addObject:v71];

        objc_autoreleasePoolPop(context);
        v4 = v70 + 1;
      }

      while (v70 + 1 != v65);
      v3 = [obj countByEnumeratingWithState:&v95 objects:v100 count:16];
    }

    while (v3);
  }

  v58 = [v67 copy];
  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

+ (id)flightInformationWithAirlineCode:(id)a3 flightNumber:(id)a4 flightDate:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__10;
  v53 = __Block_byref_object_dispose__10;
  v54 = 0;
  if (!v9)
  {
    v13 = +[EMParsecInstantAnswers log];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v24 = "[instant answers][flights api] Can't get flightInformation, airlineCode is nil";
LABEL_21:
    _os_log_impl(&dword_1C6655000, v13, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    goto LABEL_22;
  }

  if (!v10)
  {
    v13 = +[EMParsecInstantAnswers log];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v24 = "[instant answers][flights api] Can't get flightInformation, flightNumber is nil";
    goto LABEL_21;
  }

  if (!v11)
  {
    v13 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "[instant answers][flights api] Can't get flightInformation, flightDate is nil";
      goto LABEL_21;
    }

LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v9, v10];
  if (!v13)
  {
    v27 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v27, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] Can't get flightInformation, query is malformed", buf, 2u);
    }

    goto LABEL_22;
  }

  v14 = +[EMParsecInstantAnswers bundleIdentifier];
  if (!v14)
  {
    v15 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] bundleIdentifier is undefined.", buf, 2u);
    }

    v14 = @"com.apple.undefined";
  }

  v37 = v14;
  v38 = [MEMORY[0x1E6998648] flightRequestForQuery:v13 date:v12 appBundleId:?];
  if (!v38)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"EMParsecInstantAnswers.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v16 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.mail" userAgent:@"mail/1"];
  [v16 setParsecEnabled:1];
  [v16 setDontPreloadImages:1];
  v17 = [MEMORY[0x1E6998670] sessionWithConfiguration:v16];
  *buf = 0;
  v44 = buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__10;
  v47 = __Block_byref_object_dispose__10;
  v48 = 0;
  v18 = dispatch_semaphore_create(0);
  v19 = dispatch_time(0, 500000000);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __83__EMParsecInstantAnswers_flightInformationWithAirlineCode_flightNumber_flightDate___block_invoke;
  v39[3] = &unk_1E826F1C0;
  v41 = &v49;
  v42 = buf;
  v20 = v18;
  v40 = v20;
  v21 = [v17 taskWithRequest:v38 completion:v39];
  [v21 resume];
  if (dispatch_semaphore_wait(v20, v19))
  {
    v22 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 67109120;
      LODWORD(v59) = 500;
      _os_log_impl(&dword_1C6655000, v22, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] coreparsec request timed out (timeout = %d ms)", v58, 8u);
    }

    v23 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v28 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v50[5] count];
      *v58 = 134217984;
      v59 = v29;
      _os_log_impl(&dword_1C6655000, v28, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] coreparsec results count = %lu", v58, 0xCu);
    }

    if (![v50[5] count])
    {
      v30 = *(v44 + 5);
      if (v30)
      {
        v56[0] = @"error";
        v55[0] = @"type";
        v55[1] = @"errorCode";
        v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v30, "code")}];
        v56[1] = v31;
        v55[2] = @"userInfo";
        v36 = [*(v44 + 5) userInfo];
        v56[2] = v36;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
        v57 = v32;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        v34 = v50[5];
        v50[5] = v33;
      }
    }

    v23 = v50[5];
  }

  _Block_object_dispose(buf, 8);
LABEL_23:

  _Block_object_dispose(&v49, 8);
  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

void __83__EMParsecInstantAnswers_flightInformationWithAirlineCode_flightNumber_flightDate___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 flightResults];
  if (!v8)
  {
    v9 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] empty coreparsec response for flight", &v15, 2u);
    }
  }

  v10 = [EMParsecInstantAnswers sfFlightsToDictionary:v8];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
    v13 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1C6655000, v13, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] error when calling coreparsec : %@", &v15, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)setBundleIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[EMParsecInstantAnswers log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "[instant answers] updated to use new bundle identifier:%{public}@", &v8, 0xCu);
  }

  v5 = [v3 copy];
  v6 = s_bundleIdentifier;
  s_bundleIdentifier = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (NSString)bundleIdentifier
{
  if (s_bundleIdentifier)
  {
    v2 = s_bundleIdentifier;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v3 bundleIdentifier];
  }

  return v2;
}

@end