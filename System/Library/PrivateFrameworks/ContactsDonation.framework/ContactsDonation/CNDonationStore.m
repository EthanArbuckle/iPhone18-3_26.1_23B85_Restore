@interface CNDonationStore
- (CNDonationStore)init;
- (CNDonationStore)initWithAdapter:(id)a3;
- (id)changeFromAccount:(id)a3 toAccount:(id)a4;
- (id)donatedMeCard;
- (id)donatedMeCardEither;
- (id)meCardDonations;
- (void)donateMeCardValues:(id)a3 completionHandler:(id)a4;
- (void)fetchDonatedMeCard:(id)a3;
- (void)rejectValueWithDonationIdentifier:(id)a3 completionHandler:(id)a4;
- (void)rejectValuesWithClusterIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeAllRejectionsWithCompletionHandler:(id)a3;
- (void)removeDonatedMeCardValuesForIdentifiers:(id)a3 completionHandler:(id)a4;
@end

@implementation CNDonationStore

- (CNDonationStore)init
{
  v3 = objc_alloc_init(CNDonationAgentXPCAdapter);
  v4 = [(CNDonationStore *)self initWithAdapter:v3];

  return v4;
}

- (CNDonationStore)initWithAdapter:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNDonationStore;
  v6 = [(CNDonationStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adapter, a3);
    v8 = v7;
  }

  return v7;
}

- (void)donateMeCardValues:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNDonationStore *)self adapter];
  v9 = [v8 donateMeCardValues:v7];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__CNDonationStore_donateMeCardValues_completionHandler___block_invoke;
  v14[3] = &unk_278569BA8;
  v10 = v6;
  v15 = v10;
  [v9 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__CNDonationStore_donateMeCardValues_completionHandler___block_invoke_2;
  v12[3] = &unk_278569BD0;
  v13 = v10;
  v11 = v10;
  [v9 addFailureBlock:v12];
}

- (void)removeDonatedMeCardValuesForIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNDonationStore *)self adapter];
  v9 = [v8 removeDonatedMeCardValuesForIdentifiers:v7];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__CNDonationStore_removeDonatedMeCardValuesForIdentifiers_completionHandler___block_invoke;
  v14[3] = &unk_278569BA8;
  v10 = v6;
  v15 = v10;
  [v9 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__CNDonationStore_removeDonatedMeCardValuesForIdentifiers_completionHandler___block_invoke_2;
  v12[3] = &unk_278569BD0;
  v13 = v10;
  v11 = v10;
  [v9 addFailureBlock:v12];
}

- (void)fetchDonatedMeCard:(id)a3
{
  v4 = a3;
  v5 = [(CNDonationStore *)self adapter];
  v6 = [v5 fetchDonatedMeCard];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__CNDonationStore_fetchDonatedMeCard___block_invoke;
  v11[3] = &unk_278569BF8;
  v7 = v4;
  v12 = v7;
  [v6 addSuccessBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__CNDonationStore_fetchDonatedMeCard___block_invoke_2;
  v9[3] = &unk_278569BD0;
  v10 = v7;
  v8 = v7;
  [v6 addFailureBlock:v9];
}

- (id)donatedMeCard
{
  v2 = [(CNDonationStore *)self adapter];
  v3 = [v2 fetchDonatedMeCard];

  return v3;
}

- (id)donatedMeCardEither
{
  v2 = [(CNDonationStore *)self adapter];
  v3 = [v2 donatedMeCardEither];

  return v3;
}

- (id)meCardDonations
{
  v2 = [(CNDonationStore *)self adapter];
  v3 = [v2 meCardDonations];

  return v3;
}

- (id)changeFromAccount:(id)a3 toAccount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNDonationStore *)self adapter];
  v9 = [v8 changeFromAccount:v7 toAccount:v6];

  return v9;
}

- (void)rejectValueWithDonationIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNDonationStore *)self adapter];
  v9 = [v8 rejectValueWithDonationIdentifier:v7];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__CNDonationStore_rejectValueWithDonationIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_278569BA8;
  v10 = v6;
  v15 = v10;
  [v9 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__CNDonationStore_rejectValueWithDonationIdentifier_completionHandler___block_invoke_2;
  v12[3] = &unk_278569BD0;
  v13 = v10;
  v11 = v10;
  [v9 addFailureBlock:v12];
}

- (void)rejectValuesWithClusterIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNDonationStore *)self adapter];
  v9 = [v8 rejectValuesWithClusterIdentifier:v7];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__CNDonationStore_rejectValuesWithClusterIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_278569BA8;
  v10 = v6;
  v15 = v10;
  [v9 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__CNDonationStore_rejectValuesWithClusterIdentifier_completionHandler___block_invoke_2;
  v12[3] = &unk_278569BD0;
  v13 = v10;
  v11 = v10;
  [v9 addFailureBlock:v12];
}

- (void)removeAllRejectionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CNDonationStore *)self adapter];
  v6 = [v5 removeAllRejections];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CNDonationStore_removeAllRejectionsWithCompletionHandler___block_invoke;
  v11[3] = &unk_278569BA8;
  v7 = v4;
  v12 = v7;
  [v6 addSuccessBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CNDonationStore_removeAllRejectionsWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278569BD0;
  v10 = v7;
  v8 = v7;
  [v6 addFailureBlock:v9];
}

@end