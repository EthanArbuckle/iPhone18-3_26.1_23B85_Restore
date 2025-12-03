@interface CNDonationStore
- (CNDonationStore)init;
- (CNDonationStore)initWithAdapter:(id)adapter;
- (id)changeFromAccount:(id)account toAccount:(id)toAccount;
- (id)donatedMeCard;
- (id)donatedMeCardEither;
- (id)meCardDonations;
- (void)donateMeCardValues:(id)values completionHandler:(id)handler;
- (void)fetchDonatedMeCard:(id)card;
- (void)rejectValueWithDonationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)rejectValuesWithClusterIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeAllRejectionsWithCompletionHandler:(id)handler;
- (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers completionHandler:(id)handler;
@end

@implementation CNDonationStore

- (CNDonationStore)init
{
  v3 = objc_alloc_init(CNDonationAgentXPCAdapter);
  v4 = [(CNDonationStore *)self initWithAdapter:v3];

  return v4;
}

- (CNDonationStore)initWithAdapter:(id)adapter
{
  adapterCopy = adapter;
  v10.receiver = self;
  v10.super_class = CNDonationStore;
  v6 = [(CNDonationStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adapter, adapter);
    v8 = v7;
  }

  return v7;
}

- (void)donateMeCardValues:(id)values completionHandler:(id)handler
{
  handlerCopy = handler;
  valuesCopy = values;
  adapter = [(CNDonationStore *)self adapter];
  v9 = [adapter donateMeCardValues:valuesCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__CNDonationStore_donateMeCardValues_completionHandler___block_invoke;
  v14[3] = &unk_278569BA8;
  v10 = handlerCopy;
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

- (void)removeDonatedMeCardValuesForIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  adapter = [(CNDonationStore *)self adapter];
  v9 = [adapter removeDonatedMeCardValuesForIdentifiers:identifiersCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__CNDonationStore_removeDonatedMeCardValuesForIdentifiers_completionHandler___block_invoke;
  v14[3] = &unk_278569BA8;
  v10 = handlerCopy;
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

- (void)fetchDonatedMeCard:(id)card
{
  cardCopy = card;
  adapter = [(CNDonationStore *)self adapter];
  fetchDonatedMeCard = [adapter fetchDonatedMeCard];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__CNDonationStore_fetchDonatedMeCard___block_invoke;
  v11[3] = &unk_278569BF8;
  v7 = cardCopy;
  v12 = v7;
  [fetchDonatedMeCard addSuccessBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__CNDonationStore_fetchDonatedMeCard___block_invoke_2;
  v9[3] = &unk_278569BD0;
  v10 = v7;
  v8 = v7;
  [fetchDonatedMeCard addFailureBlock:v9];
}

- (id)donatedMeCard
{
  adapter = [(CNDonationStore *)self adapter];
  fetchDonatedMeCard = [adapter fetchDonatedMeCard];

  return fetchDonatedMeCard;
}

- (id)donatedMeCardEither
{
  adapter = [(CNDonationStore *)self adapter];
  donatedMeCardEither = [adapter donatedMeCardEither];

  return donatedMeCardEither;
}

- (id)meCardDonations
{
  adapter = [(CNDonationStore *)self adapter];
  meCardDonations = [adapter meCardDonations];

  return meCardDonations;
}

- (id)changeFromAccount:(id)account toAccount:(id)toAccount
{
  toAccountCopy = toAccount;
  accountCopy = account;
  adapter = [(CNDonationStore *)self adapter];
  v9 = [adapter changeFromAccount:accountCopy toAccount:toAccountCopy];

  return v9;
}

- (void)rejectValueWithDonationIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  adapter = [(CNDonationStore *)self adapter];
  v9 = [adapter rejectValueWithDonationIdentifier:identifierCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__CNDonationStore_rejectValueWithDonationIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_278569BA8;
  v10 = handlerCopy;
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

- (void)rejectValuesWithClusterIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  adapter = [(CNDonationStore *)self adapter];
  v9 = [adapter rejectValuesWithClusterIdentifier:identifierCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__CNDonationStore_rejectValuesWithClusterIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_278569BA8;
  v10 = handlerCopy;
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

- (void)removeAllRejectionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  adapter = [(CNDonationStore *)self adapter];
  removeAllRejections = [adapter removeAllRejections];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CNDonationStore_removeAllRejectionsWithCompletionHandler___block_invoke;
  v11[3] = &unk_278569BA8;
  v7 = handlerCopy;
  v12 = v7;
  [removeAllRejections addSuccessBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CNDonationStore_removeAllRejectionsWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278569BD0;
  v10 = v7;
  v8 = v7;
  [removeAllRejections addFailureBlock:v9];
}

@end