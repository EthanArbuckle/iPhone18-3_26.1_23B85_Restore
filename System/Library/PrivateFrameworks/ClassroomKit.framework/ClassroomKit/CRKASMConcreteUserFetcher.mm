@interface CRKASMConcreteUserFetcher
- (CRKASMConcreteUserFetcher)initWithRosterRequirements:(id)requirements;
- (void)fetchASMUsersWithIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation CRKASMConcreteUserFetcher

- (CRKASMConcreteUserFetcher)initWithRosterRequirements:(id)requirements
{
  requirementsCopy = requirements;
  v9.receiver = self;
  v9.super_class = CRKASMConcreteUserFetcher;
  v6 = [(CRKASMConcreteUserFetcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rosterRequirements, requirements);
  }

  return v7;
}

- (void)fetchASMUsersWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  rosterRequirements = [(CRKASMConcreteUserFetcher *)self rosterRequirements];
  v9 = [rosterRequirements makeQueryForPersonsWithIdentifiers:identifiersCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CRKASMConcreteUserFetcher_fetchASMUsersWithIdentifiers_completion___block_invoke;
  v12[3] = &unk_278DC0F30;
  v13 = completionCopy;
  v10 = completionCopy;
  [v9 setCompletion:v12];
  rosterRequirements2 = [(CRKASMConcreteUserFetcher *)self rosterRequirements];
  [rosterRequirements2 executeQuery:v9];
}

void __69__CRKASMConcreteUserFetcher_fetchASMUsersWithIdentifiers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CRKASMConcreteUserFetcher_fetchASMUsersWithIdentifiers_completion___block_invoke_2;
  block[3] = &unk_278DC0F08;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__CRKASMConcreteUserFetcher_fetchASMUsersWithIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 40) crk_dictionaryUsingKeyGenerator:&__block_literal_global_0 valueGenerator:&__block_literal_global_3_0];
    (*(*(a1 + 48) + 16))();
  }
}

CRKASMConcreteUser *__69__CRKASMConcreteUserFetcher_fetchASMUsersWithIdentifiers_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRKASMConcreteUser alloc] initWithBackingPerson:v2];

  return v3;
}

@end