@interface FUFlightFactory
+ (Class)flightFactoryClassWithProvider:(id)a3;
+ (void)fetchUpdateForChannelId:(id)a3 completionHandler:(id)a4;
+ (void)loadFlightWithIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 completionHandler:(id)a6;
+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 updatesHandler:(id)a6 completionHandler:(id)a7;
@end

@implementation FUFlightFactory

+ (Class)flightFactoryClassWithProvider:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"FUFactoryProvider_Default"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"FUFactoryProvider_Parsec"))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)loadFlightWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      (*(v7 + 2))(v7, 0, 0);
    }

    v9 = [v6 componentsSeparatedByString:@"-"];
    if ([v9 count] == 5)
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = [v9 objectAtIndexedSubscript:1];
      v12 = [v11 integerValue];

      v13 = +[FUFlight timeFormatterForIdentifier];
      v14 = [v9 objectAtIndexedSubscript:2];
      v15 = [v13 dateFromString:v14];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __62__FUFlightFactory_loadFlightWithIdentifier_completionHandler___block_invoke;
      v16[3] = &unk_279012C30;
      v17 = v9;
      v18 = v8;
      [a1 loadFlightsWithNumber:v12 airlineCode:v10 date:v15 dateType:1 completionHandler:v16];
    }

    else
    {
      NSLog(&cfstr_WrongFlightIde.isa);
      v8[2](v8, 0, 0);
    }
  }
}

void __62__FUFlightFactory_loadFlightWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    if (![v5 count])
    {
      goto LABEL_25;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = v6;
    obj = v6;
    v36 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v36)
    {
      v34 = *v39;
      v35 = a1;
      do
      {
        v7 = 0;
        do
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v7;
          v8 = *(*(&v38 + 1) + 8 * v7);
          v9 = [*(a1 + 32) objectAtIndexedSubscript:{3, v32}];
          v10 = [*(a1 + 32) objectAtIndexedSubscript:4];
          v11 = [v8 allLegs];
          v12 = [v11 count];

          if (v12)
          {
            v13 = 0;
            v14 = 0x7FFFFFFFFFFFFFFFLL;
            do
            {
              v15 = [v8 allLegs];
              v16 = [v15 objectAtIndexedSubscript:v13];

              v17 = v14;
              if (v14 != 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_14;
              }

              v18 = [v16 departure];
              v19 = [v18 airport];
              v20 = [v19 IATACode];
              v21 = [v20 isEqualToString:v9];

              v14 = 0x7FFFFFFFFFFFFFFFLL;
              if (v21)
              {
                v17 = v13;
                if (v13 != 0x7FFFFFFFFFFFFFFFLL)
                {
LABEL_14:
                  v22 = [v16 arrival];
                  v23 = [v22 airport];
                  v24 = [v23 IATACode];
                  v25 = [v24 isEqualToString:v10];

                  if (v25)
                  {

                    if (v17 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      break;
                    }

                    [v8 setDepartureLegIndex:v17 arrivalLegIndex:v13];
                    v28 = v8;

                    v6 = v32;
                    a1 = v35;
                    if (v28)
                    {
                      (*(*(v35 + 40) + 16))();

                      goto LABEL_26;
                    }

LABEL_25:
                    v29 = *(a1 + 40);
                    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.ParseError" code:1 userInfo:{0, v32}];
                    (*(v29 + 16))(v29, 0, v30);

                    goto LABEL_26;
                  }

                  v14 = v17;
                }
              }

              ++v13;
              v26 = [v8 allLegs];
              v27 = [v26 count];
            }

            while (v13 < v27);
          }

          v7 = v37 + 1;
          a1 = v35;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v36);
    }

    v6 = v32;
    goto LABEL_25;
  }

  (*(*(a1 + 40) + 16))();
LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 updatesHandler:(id)a6 completionHandler:(id)a7
{
  v8 = a7;
  NSLog(&cfstr_SubscriptionsN.isa);
  if (v8)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:3 userInfo:0];
    v8[2](v8, 0, v7);
  }
}

+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  NSLog(&cfstr_SubscriptionsN.isa);
  if (v7)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:3 userInfo:0];
    v7[2](v7, 0, v6);
  }
}

+ (void)fetchUpdateForChannelId:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  NSLog(&cfstr_FetchingUpdate.isa);
  if (v5)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:3 userInfo:0];
    v5[2](v5, 0, v4);
  }
}

void __112__FUFlightFactory_Parsec_loadFlightsWithNumber_airlineCode_date_dateType_userAgent_sessionID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);
    v6 = *MEMORY[0x277D85DE8];

    v5();
  }

  else
  {
    v23 = 0;
    v7 = [FUUtils convertFlightModel:a2 withError:&v23];
    v18 = v23;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
          v16 = [v14 uppercaseStringWithLocale:v15];
          [v13 setQueriedAirlineTitle:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 40) + 16))();
    v17 = *MEMORY[0x277D85DE8];
  }
}

void __96__FUFlightFactory_Parsec_httpQuery_date_bundleIdentifier_userAgent_sessionID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }

  else
  {
    v7 = [a3 flightResults];
    v8 = *(a1 + 32);
    v10 = v7;
    if (v7)
    {
      (*(v8 + 16))(v8, v7, 0);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.NetworkError" code:0 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

void __127__FUFlightFactory_Parsec_loadFlightStructuresWithFlightNumber_airlineCode_date_dateType_userAgent_sessionID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (([v3 isEqualToString:@"com.apple.passd"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.nanopassd"))
  {
    [*(a1 + 72) gRPCQuery:*(a1 + 32) date:*(a1 + 40) bundleIdentifier:v3 completionHandler:*(a1 + 64)];
  }

  else
  {
    [*(a1 + 72) httpQuery:*(a1 + 32) date:*(a1 + 40) bundleIdentifier:v3 userAgent:*(a1 + 48) sessionID:*(a1 + 56) completionHandler:*(a1 + 64)];
  }
}

void __115__FUFlightFactory_Parsec_subscribeToUpdatesForFlightsWithNumber_airlineCode_date_updatesHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v3 = [FUUtils convertFlightModel:a2 withError:&v5];
  v4 = v5;
  if (!v4 && [v3 count])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __68__FUFlightFactory_Parsec_fetchUpdateForChannelId_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [FUUtils convertFlightModel:a2 withError:&v8];
    v7 = v8;
    (*(*(a1 + 32) + 16))();
  }
}

@end