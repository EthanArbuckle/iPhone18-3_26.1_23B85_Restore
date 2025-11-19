@interface HUEditOutgoingInvitationItemManager
- (HMOutgoingHomeInvitation)outgoingInvitation;
- (HUEditOutgoingInvitationItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4 home:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)_removeTitleForInvitationState:(int64_t)a3;
@end

@implementation HUEditOutgoingInvitationItemManager

- (HUEditOutgoingInvitationItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4 home:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HUEditOutgoingInvitationItemManager;
  v10 = [(HFItemManager *)&v13 initWithDelegate:a3 sourceItem:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideHome, a5);
  }

  return v11;
}

- (HMOutgoingHomeInvitation)outgoingInvitation
{
  v2 = [(HFItemManager *)self sourceItem];
  v3 = [v2 outgoingInvitation];

  return v3;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUEditOutgoingInvitationItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HUEditOutgoingInvitationItemManager *)self outgoingInvitation];
  if ([v5 invitationState] != 4)
  {
    v6 = [(HUEditOutgoingInvitationItemManager *)self outgoingInvitation];
    [v6 invitationState];
  }

  v7 = objc_alloc(MEMORY[0x277D14B38]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__HUEditOutgoingInvitationItemManager__buildItemProvidersForHome___block_invoke;
  v24[3] = &unk_277DB8E98;
  objc_copyWeak(&v25, &location);
  v26 = 1;
  v8 = [v7 initWithResultsBlock:v24];
  [(HUEditOutgoingInvitationItemManager *)self setInviteAgainItem:v8];

  v9 = objc_alloc(MEMORY[0x277D14B38]);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __66__HUEditOutgoingInvitationItemManager__buildItemProvidersForHome___block_invoke_2;
  v22 = &unk_277DB7448;
  objc_copyWeak(&v23, &location);
  v10 = [v9 initWithResultsBlock:&v19];
  [(HUEditOutgoingInvitationItemManager *)self setRemoveItem:v10, v19, v20, v21, v22];

  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v12 = [(HUEditOutgoingInvitationItemManager *)self inviteAgainItem];
  v29[0] = v12;
  v13 = [(HUEditOutgoingInvitationItemManager *)self removeItem];
  v29[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v15 = [v11 initWithArray:v14];

  v16 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v15];
  v28 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v17;
}

id __66__HUEditOutgoingInvitationItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MEMORY[0x277D2C900];
  v14[0] = *MEMORY[0x277D13F60];
  v4 = _HULocalizedStringWithDefaultValue(@"HUUsersCellInviteAgain", @"HUUsersCellInviteAgain", 1);
  v15[0] = v4;
  v14[1] = *MEMORY[0x277D13FB8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v15[1] = v5;
  v14[2] = *MEMORY[0x277D13DA8];
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = [WeakRetained outgoingInvitation];
  v13 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v9 = [v6 initWithArray:v8];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v11 = [v3 futureWithResult:v10];

  return v11;
}

id __66__HUEditOutgoingInvitationItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v17[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v16[0] = *MEMORY[0x277D13F60];
  v3 = [WeakRetained outgoingInvitation];
  v4 = [WeakRetained _removeTitleForInvitationState:{objc_msgSend(v3, "invitationState")}];
  v17[0] = v4;
  v16[1] = *MEMORY[0x277D13FB8];
  v5 = MEMORY[0x277CCABB0];
  v6 = [WeakRetained outgoingInvitation];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "invitationState") == 3}];
  v17[1] = v7;
  v16[2] = *MEMORY[0x277D13DA8];
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = [WeakRetained outgoingInvitation];
  v15 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v11 = [v8 initWithArray:v10];
  v17[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v13 = [v2 futureWithResult:v12];

  return v13;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(HUEditOutgoingInvitationItemManager *)self inviteAgainItem];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [(HUEditOutgoingInvitationItemManager *)self inviteAgainItem];
    [v5 addObject:v8];
  }

  v9 = [(HUEditOutgoingInvitationItemManager *)self removeItem];
  v10 = [v4 containsObject:v9];

  if (v10)
  {
    v11 = [(HUEditOutgoingInvitationItemManager *)self removeItem];
    [v5 addObject:v11];
  }

  v12 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditOutgoingInvitationItemManagerButtonSectionIdentifier"];
  [v12 setItems:v5];
  v15[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)_removeTitleForInvitationState:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = @"HUUsersCellCancelInvitation";
  }

  else
  {
    v3 = @"HUUsersCellRemovePerson";
  }

  v4 = _HULocalizedStringWithDefaultValue(v3, v3, 1);

  return v4;
}

@end