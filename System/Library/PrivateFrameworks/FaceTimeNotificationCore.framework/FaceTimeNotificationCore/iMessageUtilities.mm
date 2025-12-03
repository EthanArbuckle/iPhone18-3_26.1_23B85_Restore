@interface iMessageUtilities
+ (BOOL)isAvailable;
+ (void)canMessageDestination:(id)destination completionHandler:(id)handler;
@end

@implementation iMessageUtilities

+ (BOOL)isAvailable
{
  v2 = objc_alloc(MEMORY[0x277D18778]);
  v3 = [v2 initWithService:*MEMORY[0x277D186B0]];
  accounts = [v3 accounts];
  anyObject = [accounts anyObject];

  if ([anyObject isActive])
  {
    canSend = [anyObject canSend];
  }

  else
  {
    canSend = 0;
  }

  return canSend;
}

+ (void)canMessageDestination:(id)destination completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = MEMORY[0x277D18728];
  destinationCopy = destination;
  sharedInstance = [v6 sharedInstance];
  v17[0] = destinationCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = *MEMORY[0x277D186B0];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__iMessageUtilities_canMessageDestination_completionHandler___block_invoke;
  v15[3] = &unk_278FF20D8;
  v16 = handlerCopy;
  v13 = handlerCopy;
  [sharedInstance refreshIDStatusForDestinations:v9 service:v10 listenerID:bundleIdentifier queue:MEMORY[0x277D85CD0] completionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

@end