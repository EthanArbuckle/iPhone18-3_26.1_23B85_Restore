@interface DKWalletProvider
- (id)localPaymentCards;
- (void)fetchAppleWalletCards:(id)cards;
@end

@implementation DKWalletProvider

- (id)localPaymentCards
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  paymentPassesWithLocallyStoredValue = [mEMORY[0x277D37FC0] paymentPassesWithLocallyStoredValue];

  v5 = [paymentPassesWithLocallyStoredValue countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(paymentPassesWithLocallyStoredValue);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_alloc_init(DKWalletLocalPaymentCardViewModel);
        localizedName = [v9 localizedName];
        [(DKWalletLocalPaymentCardViewModel *)v10 setTitle:localizedName];

        localizedDescription = [v9 localizedDescription];
        [(DKWalletLocalPaymentCardViewModel *)v10 setSubtitle:localizedDescription];

        title = [(DKWalletLocalPaymentCardViewModel *)v10 title];
        if (title)
        {
        }

        else
        {
          subtitle = [(DKWalletLocalPaymentCardViewModel *)v10 subtitle];

          if (!subtitle)
          {
            goto LABEL_10;
          }
        }

        [array addObject:v10];
LABEL_10:
      }

      v6 = [paymentPassesWithLocallyStoredValue countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)fetchAppleWalletCards:(id)cards
{
  cardsCopy = cards;
  v5 = [objc_alloc(MEMORY[0x277D38B88]) initWithSetupAssistant:0];
  v6 = [objc_alloc(MEMORY[0x277D38B78]) initWithSetupAssistantContext:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__DKWalletProvider_fetchAppleWalletCards___block_invoke;
  v8[3] = &unk_278F7DC88;
  v8[4] = self;
  v9 = cardsCopy;
  v7 = cardsCopy;
  [v6 expressResetCardsWithCompletion:v8];
}

void __42__DKWalletProvider_fetchAppleWalletCards___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v4 = _DKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__DKWalletProvider_fetchAppleWalletCards___block_invoke_cold_1(v4);
    }
  }

  v5 = [*(a1 + 32) localPaymentCards];
  if (![v5 count])
  {
    v6 = _DKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [v5 count];
      _os_log_impl(&dword_248D68000, v6, OS_LOG_TYPE_DEFAULT, "Local cards not found, localPaymentCards cout:%lu", &v9, 0xCu);
    }
  }

  v7 = [[DKNotableUserDataWallet alloc] initWithContext:v3 localCards:v5];
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

@end