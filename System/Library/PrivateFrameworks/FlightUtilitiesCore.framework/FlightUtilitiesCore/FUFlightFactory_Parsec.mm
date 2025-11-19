@interface FUFlightFactory_Parsec
+ (id)unsubscribeFromFlightUpdateChannel:(id)a3;
+ (id)validatedFlightNumber:(unint64_t)a3 airlineCode:(id)a4 error:(id *)a5;
+ (void)fetchUpdateForChannelId:(id)a3 completionHandler:(id)a4;
+ (void)httpQuery:(id)a3 date:(id)a4 bundleIdentifier:(id)a5 userAgent:(id)a6 sessionID:(id)a7 completionHandler:(id)a8;
+ (void)loadFlightStructuresWithFlightNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 dateType:(int64_t)a6 userAgent:(id)a7 sessionID:(id)a8 completionHandler:(id)a9;
+ (void)loadFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 dateType:(int64_t)a6 userAgent:(id)a7 sessionID:(id)a8 completionHandler:(id)a9;
+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 completionHandler:(id)a6;
+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 updatesHandler:(id)a6 completionHandler:(id)a7;
@end

@implementation FUFlightFactory_Parsec

+ (void)loadFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 dateType:(int64_t)a6 userAgent:(id)a7 sessionID:(id)a8 completionHandler:(id)a9
{
  v15 = a4;
  v16 = a9;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __112__FUFlightFactory_Parsec_loadFlightsWithNumber_airlineCode_date_dateType_userAgent_sessionID_completionHandler___block_invoke;
  v19[3] = &unk_279012C80;
  v20 = v15;
  v21 = v16;
  v17 = v15;
  v18 = v16;
  [a1 loadFlightStructuresWithFlightNumber:a3 airlineCode:v17 date:a5 dateType:a6 userAgent:a7 sessionID:a8 completionHandler:v19];
}

+ (id)validatedFlightNumber:(unint64_t)a3 airlineCode:(id)a4 error:(id *)a5
{
  v7 = a4;
  if ([v7 length])
  {
    if (a3)
    {
      a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", v7, a3];
      goto LABEL_7;
    }

    NSLog(&cfstr_TryingToHandle_0.isa);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:1 userInfo:0];
  }

  else
  {
    NSLog(&cfstr_TryingToHandle.isa);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:0 userInfo:0];
    a3 = 0;
  }

  *a5 = v8;
LABEL_7:

  return a3;
}

+ (void)httpQuery:(id)a3 date:(id)a4 bundleIdentifier:(id)a5 userAgent:(id)a6 sessionID:(id)a7 completionHandler:(id)a8
{
  v14 = a6;
  v15 = a8;
  v16 = MEMORY[0x277D007B0];
  v17 = a7;
  v18 = [v16 flightRequestForQuery:a3 date:a4 appBundleId:a5];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v20 = [v19 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];

  if ([(__CFString *)v20 length])
  {
    if (v14)
    {
LABEL_3:
      v21 = v14;
      goto LABEL_6;
    }
  }

  else
  {

    v20 = @"1.0";
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"FlightUtilities/%@", v20];
LABEL_6:
  v22 = v21;
  v23 = @"com.apple.flightutilities";
  if (v17)
  {
    v23 = v17;
  }

  v24 = MEMORY[0x277D007C8];
  v25 = v23;
  v26 = [[v24 alloc] initWithId:v25 userAgent:v22];

  v27 = [MEMORY[0x277D007C0] sharedPARSessionWithConfiguration:v26];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __96__FUFlightFactory_Parsec_httpQuery_date_bundleIdentifier_userAgent_sessionID_completionHandler___block_invoke;
  v30[3] = &unk_279012CA8;
  v31 = v15;
  v28 = v15;
  v29 = [v27 taskWithRequest:v18 completion:v30];
  [v29 resume];
}

+ (void)loadFlightStructuresWithFlightNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 dateType:(int64_t)a6 userAgent:(id)a7 sessionID:(id)a8 completionHandler:(id)a9
{
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  if (a6 == 1)
  {
    v31 = 0;
    v19 = [a1 validatedFlightNumber:a3 airlineCode:a4 error:&v31];
    v20 = v31;
    v21 = v20;
    if (!v19 || v20)
    {
      v18[2](v18, 0, v20);
    }

    else
    {
      v22 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __127__FUFlightFactory_Parsec_loadFlightStructuresWithFlightNumber_airlineCode_date_dateType_userAgent_sessionID_completionHandler___block_invoke;
      block[3] = &unk_279012CD0;
      v30 = a1;
      v25 = v19;
      v26 = v15;
      v29 = v18;
      v27 = v16;
      v28 = v17;
      dispatch_async(v22, block);
    }
  }

  else
  {
    NSLog(&cfstr_TryingToHandle_1.isa);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:2 userInfo:0];
    v18[2](v18, 0, v23);
  }
}

+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 updatesHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v22 = 0;
  v15 = [a1 validatedFlightNumber:a3 airlineCode:a4 error:&v22];
  v16 = v22;
  v17 = v16;
  if (!v15 || v16)
  {
    v14[2](v14, 0, v16);
  }

  else
  {
    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [v18 bundleIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __115__FUFlightFactory_Parsec_subscribeToUpdatesForFlightsWithNumber_airlineCode_date_updatesHandler_completionHandler___block_invoke;
    v20[3] = &unk_279012CF8;
    v21 = v13;
    [_TtC19FlightUtilitiesCore15FUPegasusBridge subscribeTo:v15 date:v12 clientBundleIdentifier:v19 pushMessagesHandler:v20 completionHandler:v14];
  }
}

+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17 = 0;
  v12 = [a1 validatedFlightNumber:a3 airlineCode:a4 error:&v17];
  v13 = v17;
  v14 = v13;
  if (!v12 || v13)
  {
    if (v11)
    {
      v11[2](v11, 0, v13);
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 bundleIdentifier];
    [_TtC19FlightUtilitiesCore15FUPegasusBridge subscribeTo:v12 date:v10 clientBundleIdentifier:v16 completionHandler:v11];
  }
}

+ (void)fetchUpdateForChannelId:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__FUFlightFactory_Parsec_fetchUpdateForChannelId_completionHandler___block_invoke;
    v7[3] = &unk_279012D20;
    v8 = v5;
    [_TtC19FlightUtilitiesCore15FUPegasusBridge fetchUpdateFor:a3 completionHandler:v7];
  }
}

+ (id)unsubscribeFromFlightUpdateChannel:(id)a3
{
  if (a3)
  {
    v4 = [_TtC19FlightUtilitiesCore15FUPegasusBridge unsubscribeWithChannelId:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end