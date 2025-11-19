@interface CNDonationAgentXPCAdapter
+ (id)newXPCConnection;
+ (void)changeFromAccount:(id)a3 toAccount:(id)a4 scope:(id)a5;
+ (void)donateMeCardValues:(id)a3 scope:(id)a4;
+ (void)fetchDonatedMeCardWithScope:(id)a3;
+ (void)meCardDonationsWithScope:(id)a3;
+ (void)rejectValueWithDonationIdentifier:(id)a3 scope:(id)a4;
+ (void)rejectValuesWithClusterIdentifier:(id)a3 scope:(id)a4;
+ (void)removeAllRejectionsWithScope:(id)a3;
+ (void)removeDonatedMeCardValuesForIdentifiers:(id)a3 scope:(id)a4;
- (id)changeFromAccount:(id)a3 toAccount:(id)a4;
- (id)donateMeCardValues:(id)a3;
- (id)donatedMeCardEither;
- (id)fetchDonatedMeCard;
- (id)meCardDonations;
- (id)rejectValueWithDonationIdentifier:(id)a3;
- (id)rejectValuesWithClusterIdentifier:(id)a3;
- (id)removeAllRejections;
- (id)removeDonatedMeCardValuesForIdentifiers:(id)a3;
@end

@implementation CNDonationAgentXPCAdapter

- (id)donateMeCardValues:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() donateMeCardValues:v3 scope:v4];

  v5 = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  v6 = [v5 future];

  return v6;
}

+ (void)donateMeCardValues:(id)a3 scope:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v5 proxy];
  v7 = [v5 promise];

  v8 = [v7 errorOnlyCompletionHandlerAdapter];
  [v9 donateMeCardValues:v6 completionHandler:v8];
}

- (id)removeDonatedMeCardValuesForIdentifiers:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() removeDonatedMeCardValuesForIdentifiers:v3 scope:v4];

  v5 = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  v6 = [v5 future];

  return v6;
}

+ (void)removeDonatedMeCardValuesForIdentifiers:(id)a3 scope:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 proxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__CNDonationAgentXPCAdapter_removeDonatedMeCardValuesForIdentifiers_scope___block_invoke;
  v9[3] = &unk_278569D98;
  v10 = v5;
  v8 = v5;
  [v7 removeDonatedMeCardValuesForIdentifiers:v6 completionHandler:v9];
}

void __75__CNDonationAgentXPCAdapter_removeDonatedMeCardValuesForIdentifiers_scope___block_invoke(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) promise];
  v6 = v5;
  if (a2)
  {
    v7 = [MEMORY[0x277CBEB68] null];
    [v6 finishWithResult:v7];
  }

  else
  {
    [v5 finishWithError:v8];
  }
}

- (id)fetchDonatedMeCard
{
  v2 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() fetchDonatedMeCardWithScope:v2];
  v3 = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  v4 = [v3 future];

  return v4;
}

+ (void)fetchDonatedMeCardWithScope:(id)a3
{
  v3 = a3;
  v6 = [v3 proxy];
  v4 = [v3 promise];

  v5 = [v4 completionHandlerAdapter];
  [v6 fetchDonatedMeCard:v5];
}

- (id)meCardDonations
{
  v2 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() meCardDonationsWithScope:v2];
  v3 = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  v4 = [v3 future];

  return v4;
}

+ (void)meCardDonationsWithScope:(id)a3
{
  v3 = a3;
  v6 = [v3 proxy];
  v4 = [v3 promise];

  v5 = [v4 completionHandlerAdapter];
  [v6 meCardDonations:v5];
}

- (id)rejectValueWithDonationIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() rejectValueWithDonationIdentifier:v3 scope:v4];

  v5 = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  v6 = [v5 future];

  return v6;
}

+ (void)changeFromAccount:(id)a3 toAccount:(id)a4 scope:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = [v7 proxy];
  v10 = [v7 promise];

  v11 = [v10 errorOnlyCompletionHandlerAdapter];
  [v12 changeFromAccount:v9 toAccount:v8 completionHandler:v11];
}

- (id)changeFromAccount:(id)a3 toAccount:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() changeFromAccount:v6 toAccount:v5 scope:v7];

  v8 = [(_CNDonationAgentXPCMethodScope *)v7 promise];
  v9 = [v8 future];

  return v9;
}

+ (void)rejectValueWithDonationIdentifier:(id)a3 scope:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v5 proxy];
  v7 = [v5 promise];

  v8 = [v7 errorOnlyCompletionHandlerAdapter];
  [v9 rejectValueWithDonationIdentifier:v6 completionHandler:v8];
}

- (id)rejectValuesWithClusterIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() rejectValuesWithClusterIdentifier:v3 scope:v4];

  v5 = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  v6 = [v5 future];

  return v6;
}

+ (void)rejectValuesWithClusterIdentifier:(id)a3 scope:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v5 proxy];
  v7 = [v5 promise];

  v8 = [v7 errorOnlyCompletionHandlerAdapter];
  [v9 rejectValuesWithClusterIdentifier:v6 completionHandler:v8];
}

- (id)removeAllRejections
{
  v2 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() removeAllRejectionsWithScope:v2];
  v3 = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  v4 = [v3 future];

  return v4;
}

- (id)donatedMeCardEither
{
  v26[4] = *MEMORY[0x277D85DE8];
  v2 = +[CNDonationAgentXPCAdapter newXPCConnection];
  v3 = MEMORY[0x277CFBEF0];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v5 = [v2 remoteObjectInterface];
  [v3 addAllowedClasses:v4 toInterface:v5 forSelector:sel_synchronousDonatedMeCard_ argumentIndex:0 ofReply:1];

  [v2 resume];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__CNDonationAgentXPCAdapter_donatedMeCardEither__block_invoke;
  v19[3] = &unk_278569DC0;
  v19[4] = &v20;
  v6 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__CNDonationAgentXPCAdapter_donatedMeCardEither__block_invoke_2;
  v12[3] = &unk_278569DE8;
  v12[4] = &v13;
  [v6 synchronousDonatedMeCard:v12];
  [v2 invalidate];
  v7 = v14[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CFBDF8] eitherWithRight:v21[5]];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v20, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __48__CNDonationAgentXPCAdapter_donatedMeCardEither__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

+ (void)removeAllRejectionsWithScope:(id)a3
{
  v3 = a3;
  v6 = [v3 proxy];
  v4 = [v3 promise];

  v5 = [v4 errorOnlyCompletionHandlerAdapter];
  [v6 removeAllRejectionsWithCompletionHandler:v5];
}

+ (id)newXPCConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.contacts.donation.agent" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838E4770];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

@end