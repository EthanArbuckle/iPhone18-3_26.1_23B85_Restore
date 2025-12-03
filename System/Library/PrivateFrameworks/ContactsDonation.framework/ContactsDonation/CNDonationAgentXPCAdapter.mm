@interface CNDonationAgentXPCAdapter
+ (id)newXPCConnection;
+ (void)changeFromAccount:(id)account toAccount:(id)toAccount scope:(id)scope;
+ (void)donateMeCardValues:(id)values scope:(id)scope;
+ (void)fetchDonatedMeCardWithScope:(id)scope;
+ (void)meCardDonationsWithScope:(id)scope;
+ (void)rejectValueWithDonationIdentifier:(id)identifier scope:(id)scope;
+ (void)rejectValuesWithClusterIdentifier:(id)identifier scope:(id)scope;
+ (void)removeAllRejectionsWithScope:(id)scope;
+ (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers scope:(id)scope;
- (id)changeFromAccount:(id)account toAccount:(id)toAccount;
- (id)donateMeCardValues:(id)values;
- (id)donatedMeCardEither;
- (id)fetchDonatedMeCard;
- (id)meCardDonations;
- (id)rejectValueWithDonationIdentifier:(id)identifier;
- (id)rejectValuesWithClusterIdentifier:(id)identifier;
- (id)removeAllRejections;
- (id)removeDonatedMeCardValuesForIdentifiers:(id)identifiers;
@end

@implementation CNDonationAgentXPCAdapter

- (id)donateMeCardValues:(id)values
{
  valuesCopy = values;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() donateMeCardValues:valuesCopy scope:v4];

  promise = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  future = [promise future];

  return future;
}

+ (void)donateMeCardValues:(id)values scope:(id)scope
{
  scopeCopy = scope;
  valuesCopy = values;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy donateMeCardValues:valuesCopy completionHandler:errorOnlyCompletionHandlerAdapter];
}

- (id)removeDonatedMeCardValuesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() removeDonatedMeCardValuesForIdentifiers:identifiersCopy scope:v4];

  promise = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  future = [promise future];

  return future;
}

+ (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers scope:(id)scope
{
  scopeCopy = scope;
  identifiersCopy = identifiers;
  proxy = [scopeCopy proxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__CNDonationAgentXPCAdapter_removeDonatedMeCardValuesForIdentifiers_scope___block_invoke;
  v9[3] = &unk_278569D98;
  v10 = scopeCopy;
  v8 = scopeCopy;
  [proxy removeDonatedMeCardValuesForIdentifiers:identifiersCopy completionHandler:v9];
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
  promise = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  future = [promise future];

  return future;
}

+ (void)fetchDonatedMeCardWithScope:(id)scope
{
  scopeCopy = scope;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  completionHandlerAdapter = [promise completionHandlerAdapter];
  [proxy fetchDonatedMeCard:completionHandlerAdapter];
}

- (id)meCardDonations
{
  v2 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() meCardDonationsWithScope:v2];
  promise = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  future = [promise future];

  return future;
}

+ (void)meCardDonationsWithScope:(id)scope
{
  scopeCopy = scope;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  completionHandlerAdapter = [promise completionHandlerAdapter];
  [proxy meCardDonations:completionHandlerAdapter];
}

- (id)rejectValueWithDonationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() rejectValueWithDonationIdentifier:identifierCopy scope:v4];

  promise = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  future = [promise future];

  return future;
}

+ (void)changeFromAccount:(id)account toAccount:(id)toAccount scope:(id)scope
{
  scopeCopy = scope;
  toAccountCopy = toAccount;
  accountCopy = account;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy changeFromAccount:accountCopy toAccount:toAccountCopy completionHandler:errorOnlyCompletionHandlerAdapter];
}

- (id)changeFromAccount:(id)account toAccount:(id)toAccount
{
  toAccountCopy = toAccount;
  accountCopy = account;
  v7 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() changeFromAccount:accountCopy toAccount:toAccountCopy scope:v7];

  promise = [(_CNDonationAgentXPCMethodScope *)v7 promise];
  future = [promise future];

  return future;
}

+ (void)rejectValueWithDonationIdentifier:(id)identifier scope:(id)scope
{
  scopeCopy = scope;
  identifierCopy = identifier;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy rejectValueWithDonationIdentifier:identifierCopy completionHandler:errorOnlyCompletionHandlerAdapter];
}

- (id)rejectValuesWithClusterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() rejectValuesWithClusterIdentifier:identifierCopy scope:v4];

  promise = [(_CNDonationAgentXPCMethodScope *)v4 promise];
  future = [promise future];

  return future;
}

+ (void)rejectValuesWithClusterIdentifier:(id)identifier scope:(id)scope
{
  scopeCopy = scope;
  identifierCopy = identifier;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy rejectValuesWithClusterIdentifier:identifierCopy completionHandler:errorOnlyCompletionHandlerAdapter];
}

- (id)removeAllRejections
{
  v2 = objc_alloc_init(_CNDonationAgentXPCMethodScope);
  [objc_opt_class() removeAllRejectionsWithScope:v2];
  promise = [(_CNDonationAgentXPCMethodScope *)v2 promise];
  future = [promise future];

  return future;
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
  remoteObjectInterface = [v2 remoteObjectInterface];
  [v3 addAllowedClasses:v4 toInterface:remoteObjectInterface forSelector:sel_synchronousDonatedMeCard_ argumentIndex:0 ofReply:1];

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

+ (void)removeAllRejectionsWithScope:(id)scope
{
  scopeCopy = scope;
  proxy = [scopeCopy proxy];
  promise = [scopeCopy promise];

  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [proxy removeAllRejectionsWithCompletionHandler:errorOnlyCompletionHandlerAdapter];
}

+ (id)newXPCConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.contacts.donation.agent" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838E4770];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

@end