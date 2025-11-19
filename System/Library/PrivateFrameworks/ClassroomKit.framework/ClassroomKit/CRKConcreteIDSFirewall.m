@interface CRKConcreteIDSFirewall
+ (id)appleIDFromFirewallEntry:(id)a3;
+ (id)firewallEntryForAppleID:(id)a3;
- (CRKConcreteIDSFirewall)initWithUnderlyingFirewall:(id)a3;
- (void)addAllowedAppleIDs:(id)a3 completion:(id)a4;
- (void)fetchAllowedAppleIDsWithCompletion:(id)a3;
- (void)removeAllowedAppleIDs:(id)a3 completion:(id)a4;
@end

@implementation CRKConcreteIDSFirewall

- (CRKConcreteIDSFirewall)initWithUnderlyingFirewall:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKConcreteIDSFirewall;
  v6 = [(CRKConcreteIDSFirewall *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingFirewall, a3);
  }

  return v7;
}

- (void)addAllowedAppleIDs:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKConcreteIDSFirewall addAllowedAppleIDs:a2 completion:?];
  }

  if ([v7 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__CRKConcreteIDSFirewall_addAllowedAppleIDs_completion___block_invoke;
    v14[3] = &unk_278DC0F90;
    v14[4] = self;
    v9 = [v7 crk_mapUsingBlock:v14];
    v10 = [(CRKConcreteIDSFirewall *)self underlyingFirewall];
    v11 = [v9 allObjects];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__CRKConcreteIDSFirewall_addAllowedAppleIDs_completion___block_invoke_2;
    v12[3] = &unk_278DC0FE0;
    v13 = v8;
    [v10 donateEntries:v11 withCompletion:v12];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

id __56__CRKConcreteIDSFirewall_addAllowedAppleIDs_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() firewallEntryForAppleID:v2];

  return v3;
}

void __56__CRKConcreteIDSFirewall_addAllowedAppleIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CRKConcreteIDSFirewall_addAllowedAppleIDs_completion___block_invoke_3;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)removeAllowedAppleIDs:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKConcreteIDSFirewall removeAllowedAppleIDs:a2 completion:?];
  }

  if ([v7 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__CRKConcreteIDSFirewall_removeAllowedAppleIDs_completion___block_invoke;
    v14[3] = &unk_278DC0F90;
    v14[4] = self;
    v9 = [v7 crk_mapUsingBlock:v14];
    v10 = [(CRKConcreteIDSFirewall *)self underlyingFirewall];
    v11 = [v9 allObjects];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__CRKConcreteIDSFirewall_removeAllowedAppleIDs_completion___block_invoke_2;
    v12[3] = &unk_278DC0FE0;
    v13 = v8;
    [v10 removeDonatedEntries:v11 withCompletion:v12];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

id __59__CRKConcreteIDSFirewall_removeAllowedAppleIDs_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() firewallEntryForAppleID:v2];

  return v3;
}

void __59__CRKConcreteIDSFirewall_removeAllowedAppleIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CRKConcreteIDSFirewall_removeAllowedAppleIDs_completion___block_invoke_3;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)fetchAllowedAppleIDsWithCompletion:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKConcreteIDSFirewall fetchAllowedAppleIDsWithCompletion:a2];
  }

  v6 = [(CRKConcreteIDSFirewall *)self underlyingFirewall];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__CRKConcreteIDSFirewall_fetchAllowedAppleIDsWithCompletion___block_invoke;
  v8[3] = &unk_278DC1078;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 currentDonatedEntries:v8];
}

void __61__CRKConcreteIDSFirewall_fetchAllowedAppleIDsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__CRKConcreteIDSFirewall_fetchAllowedAppleIDsWithCompletion___block_invoke_2;
  v11[3] = &unk_278DC1050;
  v12 = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v13 = v5;
  v14 = v8;
  v15 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __61__CRKConcreteIDSFirewall_fetchAllowedAppleIDsWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 40) crk_filterUsingBlock:&__block_literal_global_3];
    v4 = MEMORY[0x277CBEB98];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__CRKConcreteIDSFirewall_fetchAllowedAppleIDsWithCompletion___block_invoke_4;
    v7[3] = &unk_278DC1028;
    v7[4] = *(a1 + 48);
    v5 = [v3 crk_mapUsingBlock:v7];
    v6 = [v4 setWithArray:v5];

    (*(*(a1 + 56) + 16))();
  }
}

id __61__CRKConcreteIDSFirewall_fetchAllowedAppleIDsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() appleIDFromFirewallEntry:v2];

  return v3;
}

+ (id)firewallEntryForAppleID:(id)a3
{
  v3 = [MEMORY[0x277D18A48] URIWithUnprefixedURI:a3];
  v4 = [objc_alloc(MEMORY[0x277D18718]) initWithURI:v3];

  return v4;
}

+ (id)appleIDFromFirewallEntry:(id)a3
{
  v3 = [a3 uri];
  v4 = [v3 unprefixedURI];

  return v4;
}

- (void)addAllowedAppleIDs:(const char *)a1 completion:.cold.1(const char *a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(a1);
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)removeAllowedAppleIDs:(const char *)a1 completion:.cold.1(const char *a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(a1);
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)fetchAllowedAppleIDsWithCompletion:(const char *)a1 .cold.1(const char *a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(a1);
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

@end