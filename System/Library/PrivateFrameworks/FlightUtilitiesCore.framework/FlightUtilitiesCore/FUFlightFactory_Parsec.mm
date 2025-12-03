@interface FUFlightFactory_Parsec
+ (id)unsubscribeFromFlightUpdateChannel:(id)channel;
+ (id)validatedFlightNumber:(unint64_t)number airlineCode:(id)code error:(id *)error;
+ (void)fetchUpdateForChannelId:(id)id completionHandler:(id)handler;
+ (void)httpQuery:(id)query date:(id)date bundleIdentifier:(id)identifier userAgent:(id)agent sessionID:(id)d completionHandler:(id)handler;
+ (void)loadFlightStructuresWithFlightNumber:(unint64_t)number airlineCode:(id)code date:(id)date dateType:(int64_t)type userAgent:(id)agent sessionID:(id)d completionHandler:(id)handler;
+ (void)loadFlightsWithNumber:(unint64_t)number airlineCode:(id)code date:(id)date dateType:(int64_t)type userAgent:(id)agent sessionID:(id)d completionHandler:(id)handler;
+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)number airlineCode:(id)code date:(id)date completionHandler:(id)handler;
+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)number airlineCode:(id)code date:(id)date updatesHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation FUFlightFactory_Parsec

+ (void)loadFlightsWithNumber:(unint64_t)number airlineCode:(id)code date:(id)date dateType:(int64_t)type userAgent:(id)agent sessionID:(id)d completionHandler:(id)handler
{
  codeCopy = code;
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __112__FUFlightFactory_Parsec_loadFlightsWithNumber_airlineCode_date_dateType_userAgent_sessionID_completionHandler___block_invoke;
  v19[3] = &unk_279012C80;
  v20 = codeCopy;
  v21 = handlerCopy;
  v17 = codeCopy;
  v18 = handlerCopy;
  [self loadFlightStructuresWithFlightNumber:number airlineCode:v17 date:date dateType:type userAgent:agent sessionID:d completionHandler:v19];
}

+ (id)validatedFlightNumber:(unint64_t)number airlineCode:(id)code error:(id *)error
{
  codeCopy = code;
  if ([codeCopy length])
  {
    if (number)
    {
      number = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", codeCopy, number];
      goto LABEL_7;
    }

    NSLog(&cfstr_TryingToHandle_0.isa);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:1 userInfo:0];
  }

  else
  {
    NSLog(&cfstr_TryingToHandle.isa);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:0 userInfo:0];
    number = 0;
  }

  *error = v8;
LABEL_7:

  return number;
}

+ (void)httpQuery:(id)query date:(id)date bundleIdentifier:(id)identifier userAgent:(id)agent sessionID:(id)d completionHandler:(id)handler
{
  agentCopy = agent;
  handlerCopy = handler;
  v16 = MEMORY[0x277D007B0];
  dCopy = d;
  v18 = [v16 flightRequestForQuery:query date:date appBundleId:identifier];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v20 = [v19 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];

  if ([(__CFString *)v20 length])
  {
    if (agentCopy)
    {
LABEL_3:
      v21 = agentCopy;
      goto LABEL_6;
    }
  }

  else
  {

    v20 = @"1.0";
    if (agentCopy)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"FlightUtilities/%@", v20];
LABEL_6:
  v22 = v21;
  v23 = @"com.apple.flightutilities";
  if (dCopy)
  {
    v23 = dCopy;
  }

  v24 = MEMORY[0x277D007C8];
  v25 = v23;
  v26 = [[v24 alloc] initWithId:v25 userAgent:v22];

  v27 = [MEMORY[0x277D007C0] sharedPARSessionWithConfiguration:v26];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __96__FUFlightFactory_Parsec_httpQuery_date_bundleIdentifier_userAgent_sessionID_completionHandler___block_invoke;
  v30[3] = &unk_279012CA8;
  v31 = handlerCopy;
  v28 = handlerCopy;
  v29 = [v27 taskWithRequest:v18 completion:v30];
  [v29 resume];
}

+ (void)loadFlightStructuresWithFlightNumber:(unint64_t)number airlineCode:(id)code date:(id)date dateType:(int64_t)type userAgent:(id)agent sessionID:(id)d completionHandler:(id)handler
{
  dateCopy = date;
  agentCopy = agent;
  dCopy = d;
  handlerCopy = handler;
  if (type == 1)
  {
    v31 = 0;
    v19 = [self validatedFlightNumber:number airlineCode:code error:&v31];
    v20 = v31;
    v21 = v20;
    if (!v19 || v20)
    {
      handlerCopy[2](handlerCopy, 0, v20);
    }

    else
    {
      v22 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __127__FUFlightFactory_Parsec_loadFlightStructuresWithFlightNumber_airlineCode_date_dateType_userAgent_sessionID_completionHandler___block_invoke;
      block[3] = &unk_279012CD0;
      selfCopy = self;
      v25 = v19;
      v26 = dateCopy;
      v29 = handlerCopy;
      v27 = agentCopy;
      v28 = dCopy;
      dispatch_async(v22, block);
    }
  }

  else
  {
    NSLog(&cfstr_TryingToHandle_1.isa);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FlightUtilities.QueryError" code:2 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v23);
  }
}

+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)number airlineCode:(id)code date:(id)date updatesHandler:(id)handler completionHandler:(id)completionHandler
{
  dateCopy = date;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v22 = 0;
  v15 = [self validatedFlightNumber:number airlineCode:code error:&v22];
  v16 = v22;
  v17 = v16;
  if (!v15 || v16)
  {
    completionHandlerCopy[2](completionHandlerCopy, 0, v16);
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __115__FUFlightFactory_Parsec_subscribeToUpdatesForFlightsWithNumber_airlineCode_date_updatesHandler_completionHandler___block_invoke;
    v20[3] = &unk_279012CF8;
    v21 = handlerCopy;
    [_TtC19FlightUtilitiesCore15FUPegasusBridge subscribeTo:v15 date:dateCopy clientBundleIdentifier:bundleIdentifier pushMessagesHandler:v20 completionHandler:completionHandlerCopy];
  }
}

+ (void)subscribeToUpdatesForFlightsWithNumber:(unint64_t)number airlineCode:(id)code date:(id)date completionHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  v17 = 0;
  v12 = [self validatedFlightNumber:number airlineCode:code error:&v17];
  v13 = v17;
  v14 = v13;
  if (!v12 || v13)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v13);
    }
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [_TtC19FlightUtilitiesCore15FUPegasusBridge subscribeTo:v12 date:dateCopy clientBundleIdentifier:bundleIdentifier completionHandler:handlerCopy];
  }
}

+ (void)fetchUpdateForChannelId:(id)id completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (handlerCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__FUFlightFactory_Parsec_fetchUpdateForChannelId_completionHandler___block_invoke;
    v7[3] = &unk_279012D20;
    v8 = handlerCopy;
    [_TtC19FlightUtilitiesCore15FUPegasusBridge fetchUpdateFor:id completionHandler:v7];
  }
}

+ (id)unsubscribeFromFlightUpdateChannel:(id)channel
{
  if (channel)
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