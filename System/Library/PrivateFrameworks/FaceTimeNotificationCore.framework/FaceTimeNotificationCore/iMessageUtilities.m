@interface iMessageUtilities
+ (BOOL)isAvailable;
+ (void)canMessageDestination:(id)a3 completionHandler:(id)a4;
@end

@implementation iMessageUtilities

+ (BOOL)isAvailable
{
  v2 = objc_alloc(MEMORY[0x277D18778]);
  v3 = [v2 initWithService:*MEMORY[0x277D186B0]];
  v4 = [v3 accounts];
  v5 = [v4 anyObject];

  if ([v5 isActive])
  {
    v6 = [v5 canSend];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)canMessageDestination:(id)a3 completionHandler:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277D18728];
  v7 = a3;
  v8 = [v6 sharedInstance];
  v17[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = *MEMORY[0x277D186B0];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 bundleIdentifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__iMessageUtilities_canMessageDestination_completionHandler___block_invoke;
  v15[3] = &unk_278FF20D8;
  v16 = v5;
  v13 = v5;
  [v8 refreshIDStatusForDestinations:v9 service:v10 listenerID:v12 queue:MEMORY[0x277D85CD0] completionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

@end