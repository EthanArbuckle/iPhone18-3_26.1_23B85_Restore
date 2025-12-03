@interface HUEditOutgoingInvitationItemManager
- (HMOutgoingHomeInvitation)outgoingInvitation;
- (HUEditOutgoingInvitationItemManager)initWithDelegate:(id)delegate sourceItem:(id)item home:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)_removeTitleForInvitationState:(int64_t)state;
@end

@implementation HUEditOutgoingInvitationItemManager

- (HUEditOutgoingInvitationItemManager)initWithDelegate:(id)delegate sourceItem:(id)item home:(id)home
{
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HUEditOutgoingInvitationItemManager;
  v10 = [(HFItemManager *)&v13 initWithDelegate:delegate sourceItem:item];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideHome, home);
  }

  return v11;
}

- (HMOutgoingHomeInvitation)outgoingInvitation
{
  sourceItem = [(HFItemManager *)self sourceItem];
  outgoingInvitation = [sourceItem outgoingInvitation];

  return outgoingInvitation;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUEditOutgoingInvitationItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v29[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  objc_initWeak(&location, self);
  outgoingInvitation = [(HUEditOutgoingInvitationItemManager *)self outgoingInvitation];
  if ([outgoingInvitation invitationState] != 4)
  {
    outgoingInvitation2 = [(HUEditOutgoingInvitationItemManager *)self outgoingInvitation];
    [outgoingInvitation2 invitationState];
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
  inviteAgainItem = [(HUEditOutgoingInvitationItemManager *)self inviteAgainItem];
  v29[0] = inviteAgainItem;
  removeItem = [(HUEditOutgoingInvitationItemManager *)self removeItem];
  v29[1] = removeItem;
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

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v15[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  inviteAgainItem = [(HUEditOutgoingInvitationItemManager *)self inviteAgainItem];
  v7 = [itemsCopy containsObject:inviteAgainItem];

  if (v7)
  {
    inviteAgainItem2 = [(HUEditOutgoingInvitationItemManager *)self inviteAgainItem];
    [v5 addObject:inviteAgainItem2];
  }

  removeItem = [(HUEditOutgoingInvitationItemManager *)self removeItem];
  v10 = [itemsCopy containsObject:removeItem];

  if (v10)
  {
    removeItem2 = [(HUEditOutgoingInvitationItemManager *)self removeItem];
    [v5 addObject:removeItem2];
  }

  v12 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditOutgoingInvitationItemManagerButtonSectionIdentifier"];
  [v12 setItems:v5];
  v15[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)_removeTitleForInvitationState:(int64_t)state
{
  if (state == 2)
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