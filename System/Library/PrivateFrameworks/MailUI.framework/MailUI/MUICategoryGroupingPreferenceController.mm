@interface MUICategoryGroupingPreferenceController
- (BOOL)shouldDisableGroupingForBucket:(int64_t)bucket;
- (MUICategoryGroupingPreferenceController)initWithDelegate:(id)delegate;
- (MUICategoryGroupingPreferenceControllerDelegate)delegate;
- (void)disableGrouping:(BOOL)grouping forBucket:(int64_t)bucket;
@end

@implementation MUICategoryGroupingPreferenceController

- (MUICategoryGroupingPreferenceController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = MUICategoryGroupingPreferenceController;
  v5 = [(MUICategoryGroupingPreferenceController *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
    v8 = *MEMORY[0x277D06CD0];
    v6->_shouldDisableGroupingInTransactions = [em_userDefaults BOOLForKey:*MEMORY[0x277D06CD0]];
    v9 = *MEMORY[0x277D06CD8];
    v6->_shouldDisableGroupingInUpdates = [em_userDefaults BOOLForKey:*MEMORY[0x277D06CD8]];
    v10 = *MEMORY[0x277D06CC8];
    v6->_shouldDisableGroupingInPromotions = [em_userDefaults BOOLForKey:*MEMORY[0x277D06CC8]];
    objc_initWeak(&location, v6);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__MUICategoryGroupingPreferenceController_initWithDelegate___block_invoke;
    v22[3] = &unk_2781893A0;
    objc_copyWeak(&v23, &location);
    v11 = [em_userDefaults ef_observeKeyPath:v8 options:1 autoCancelToken:1 usingBlock:v22];
    shouldDisableGroupingInTransactionsUserDefaultsObserver = v6->_shouldDisableGroupingInTransactionsUserDefaultsObserver;
    v6->_shouldDisableGroupingInTransactionsUserDefaultsObserver = v11;

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__MUICategoryGroupingPreferenceController_initWithDelegate___block_invoke_2;
    v20[3] = &unk_2781893A0;
    objc_copyWeak(&v21, &location);
    v13 = [em_userDefaults ef_observeKeyPath:v9 options:1 autoCancelToken:1 usingBlock:v20];
    shouldDisableGroupingInUpdatesUserDefaultsObserver = v6->_shouldDisableGroupingInUpdatesUserDefaultsObserver;
    v6->_shouldDisableGroupingInUpdatesUserDefaultsObserver = v13;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__MUICategoryGroupingPreferenceController_initWithDelegate___block_invoke_3;
    v18[3] = &unk_2781893A0;
    objc_copyWeak(&v19, &location);
    v15 = [em_userDefaults ef_observeKeyPath:v10 options:1 autoCancelToken:1 usingBlock:v18];
    shouldDisableGroupingInPromotionsUserDefaultsObserver = v6->_shouldDisableGroupingInPromotionsUserDefaultsObserver;
    v6->_shouldDisableGroupingInPromotionsUserDefaultsObserver = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __60__MUICategoryGroupingPreferenceController_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if ((*(*MEMORY[0x277D07118] + 16))())
    {

      v4 = 0;
    }

    [WeakRetained setShouldDisableGroupingInTransactions:{objc_msgSend(v4, "BOOLValue")}];
    v5 = [WeakRetained delegate];
    [v5 categoryGroupingPreferenceController:WeakRetained shouldDisableGrouping:objc_msgSend(WeakRetained forBucket:{"shouldDisableGroupingInTransactions"), 2}];
  }
}

void __60__MUICategoryGroupingPreferenceController_initWithDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if ((*(*MEMORY[0x277D07118] + 16))())
    {

      v4 = 0;
    }

    [WeakRetained setShouldDisableGroupingInUpdates:{objc_msgSend(v4, "BOOLValue")}];
    v5 = [WeakRetained delegate];
    [v5 categoryGroupingPreferenceController:WeakRetained shouldDisableGrouping:objc_msgSend(WeakRetained forBucket:{"shouldDisableGroupingInUpdates"), 3}];
  }
}

void __60__MUICategoryGroupingPreferenceController_initWithDelegate___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if ((*(*MEMORY[0x277D07118] + 16))())
    {

      v4 = 0;
    }

    [WeakRetained setShouldDisableGroupingInPromotions:{objc_msgSend(v4, "BOOLValue")}];
    v5 = [WeakRetained delegate];
    [v5 categoryGroupingPreferenceController:WeakRetained shouldDisableGrouping:objc_msgSend(WeakRetained forBucket:{"shouldDisableGroupingInPromotions"), 4}];
  }
}

- (BOOL)shouldDisableGroupingForBucket:(int64_t)bucket
{
  switch(bucket)
  {
    case 4:
      return [(MUICategoryGroupingPreferenceController *)self shouldDisableGroupingInPromotions];
    case 3:
      return [(MUICategoryGroupingPreferenceController *)self shouldDisableGroupingInUpdates];
    case 2:
      return [(MUICategoryGroupingPreferenceController *)self shouldDisableGroupingInTransactions];
  }

  return 1;
}

- (void)disableGrouping:(BOOL)grouping forBucket:(int64_t)bucket
{
  groupingCopy = grouping;
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  if ((bucket - 2) <= 2)
  {
    v7 = em_userDefaults;
    [em_userDefaults setBool:groupingCopy forKey:**(&unk_27818A4D0 + bucket - 2)];
    em_userDefaults = v7;
  }
}

- (MUICategoryGroupingPreferenceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end