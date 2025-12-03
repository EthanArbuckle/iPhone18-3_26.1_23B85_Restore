@interface HFContactController
+ (id)contactForAppleID:(id)d keyDescriptors:(id)descriptors;
+ (id)contactForEmailAddress:(id)address keyDescriptors:(id)descriptors;
+ (id)contactForPhoneNumber:(id)number keyDescriptors:(id)descriptors;
+ (id)stringForRecipientStatus:(unint64_t)status;
- (BOOL)hasAdaptiveTemperatureIDSCapabilityForDestination:(id)destination;
- (BOOL)hasRestrictedGuestIDSCapabilityForDestination:(id)destination;
- (HFContactController)init;
- (HFContactController)initWithKeyDescriptors:(id)descriptors;
- (HFContactControllerDelegate)delegate;
- (NSArray)pendingDestinations;
- (id)_contactForFamilyMember:(id)member;
- (id)contactForFamilyMemberWithDsid:(id)dsid;
- (unint64_t)statusForDestination:(id)destination;
- (void)_downloadFamilyMemberPhotos;
- (void)_loadFamilyMembersWithCompletion:(id)completion;
- (void)adaptiveTemperatureIDSCapabilityUpdated:(id)updated;
- (void)entriesUpdated:(id)updated;
- (void)fetchFamilyMembersWithCompletion:(id)completion;
- (void)markDestinationsPending:(id)pending;
- (void)restrictedGuestIDSCapabilityUpdated:(id)updated;
@end

@implementation HFContactController

- (HFContactController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithKeyDescriptors_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFContactController.m" lineNumber:73 description:{@"%s is unavailable; use %@ instead", "-[HFContactController init]", v5}];

  return 0;
}

- (HFContactController)initWithKeyDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v18.receiver = self;
  v18.super_class = HFContactController;
  v6 = [(HFContactController *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recipientAvailabilities = v6->_recipientAvailabilities;
    v6->_recipientAvailabilities = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recipientToRestrictedGuestIDSCapability = v6->_recipientToRestrictedGuestIDSCapability;
    v6->_recipientToRestrictedGuestIDSCapability = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recipientToAdaptiveTemperatureIDSCapability = v6->_recipientToAdaptiveTemperatureIDSCapability;
    v6->_recipientToAdaptiveTemperatureIDSCapability = v11;

    objc_storeStrong(&v6->_descriptors, descriptors);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    familyMemberCallbacks = v6->_familyMemberCallbacks;
    v6->_familyMemberCallbacks = v13;

    v6->_familyMembersState = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__HFContactController_initWithKeyDescriptors___block_invoke;
    v16[3] = &unk_277DF3D38;
    v17 = v6;
    [(HFContactController *)v17 _loadFamilyMembersWithCompletion:v16];
  }

  return v6;
}

void __46__HFContactController_initWithKeyDescriptors___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setFamilyMembersState:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) familyMemberCallbacks];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) fetchFamilyMembersWithCompletion:*(*(&v9 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) familyMemberCallbacks];
  [v7 removeAllObjects];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)stringForRecipientStatus:(unint64_t)status
{
  if (status < 5)
  {
    return off_277DF9160[status];
  }

  NSLog(&cfstr_UnknownRecipie.isa, a2, status);
  return @"Unknown";
}

+ (id)contactForAppleID:(id)d keyDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  dCopy = d;
  hf_isPhoneNumber = [dCopy hf_isPhoneNumber];
  v8 = objc_opt_class();
  if (hf_isPhoneNumber)
  {
    [v8 contactForPhoneNumber:dCopy keyDescriptors:descriptorsCopy];
  }

  else
  {
    [v8 contactForEmailAddress:dCopy keyDescriptors:descriptorsCopy];
  }
  v9 = ;

  return v9;
}

+ (id)contactForEmailAddress:(id)address keyDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  addressCopy = address;
  v7 = +[HFContactStore defaultStore];
  v8 = [v7 contactForEmailAddress:addressCopy withKeys:descriptorsCopy];

  return v8;
}

+ (id)contactForPhoneNumber:(id)number keyDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  numberCopy = number;
  v7 = +[HFContactStore defaultStore];
  v8 = [v7 contactForPhoneNumber:numberCopy withKeys:descriptorsCopy];

  return v8;
}

- (NSArray)pendingDestinations
{
  array = [MEMORY[0x277CBEB18] array];
  recipientAvailabilities = [(HFContactController *)self recipientAvailabilities];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HFContactController_pendingDestinations__block_invoke;
  v9[3] = &unk_277DF90C8;
  v10 = array;
  v5 = array;
  [recipientAvailabilities enumerateKeysAndObjectsUsingBlock:v9];

  if ([(NSArray *)v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

void __42__HFContactController_pendingDestinations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqualToNumber:&unk_282523CA0])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)entriesUpdated:(id)updated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__HFContactController_entriesUpdated___block_invoke;
  v3[3] = &unk_277DF90C8;
  v3[4] = self;
  [updated enumerateKeysAndObjectsUsingBlock:v3];
}

void __38__HFContactController_entriesUpdated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 unsignedIntegerValue];
  if (v6 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 2;
  }

  v9 = [*(a1 + 32) recipientAvailabilities];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v9 setObject:v8 forKey:v5];
}

- (void)restrictedGuestIDSCapabilityUpdated:(id)updated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__HFContactController_restrictedGuestIDSCapabilityUpdated___block_invoke;
  v3[3] = &unk_277DF90C8;
  v3[4] = self;
  [updated enumerateKeysAndObjectsUsingBlock:v3];
}

void __59__HFContactController_restrictedGuestIDSCapabilityUpdated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v4 recipientToRestrictedGuestIDSCapability];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 unsignedIntValue];

  v9 = [v7 numberWithUnsignedInt:v8];
  [v10 setObject:v9 forKey:v6];
}

- (BOOL)hasRestrictedGuestIDSCapabilityForDestination:(id)destination
{
  destinationCopy = destination;
  recipientToRestrictedGuestIDSCapability = [(HFContactController *)self recipientToRestrictedGuestIDSCapability];
  v6 = [recipientToRestrictedGuestIDSCapability objectForKey:destinationCopy];

  LOBYTE(recipientToRestrictedGuestIDSCapability) = [v6 BOOLValue];
  return recipientToRestrictedGuestIDSCapability;
}

- (void)markDestinationsPending:(id)pending
{
  v17 = *MEMORY[0x277D85DE8];
  pendingCopy = pending;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [pendingCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(pendingCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        recipientAvailabilities = [(HFContactController *)self recipientAvailabilities];
        [recipientAvailabilities setObject:&unk_282523CA0 forKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [pendingCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)statusForDestination:(id)destination
{
  destinationCopy = destination;
  recipientAvailabilities = [(HFContactController *)self recipientAvailabilities];
  v6 = [recipientAvailabilities objectForKey:destinationCopy];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)fetchFamilyMembersWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    if ([(HFContactController *)self familyMembersState])
    {
      familyMembers = [(HFContactController *)self familyMembers];
      v7[2](v7, familyMembers);
    }

    else
    {
      familyMembers = [(HFContactController *)self familyMemberCallbacks];
      v6 = [v7 copy];
      [familyMembers addObject:v6];
    }

    completionCopy = v7;
  }
}

- (id)contactForFamilyMemberWithDsid:(id)dsid
{
  dsidCopy = dsid;
  familyMemberDsidToContact = [(HFContactController *)self familyMemberDsidToContact];
  v6 = [familyMemberDsidToContact objectForKeyedSubscript:dsidCopy];

  v7 = [v6 copy];

  return v7;
}

- (id)_contactForFamilyMember:(id)member
{
  v21[1] = *MEMORY[0x277D85DE8];
  memberCopy = member;
  v4 = objc_alloc_init(MEMORY[0x277CBDB38]);
  firstName = [memberCopy firstName];
  [v4 setGivenName:firstName];

  lastName = [memberCopy lastName];
  [v4 setFamilyName:lastName];

  appleID = [memberCopy appleID];
  hf_isEmail = [appleID hf_isEmail];

  if (hf_isEmail)
  {
    v9 = MEMORY[0x277CBDB20];
    appleID2 = [memberCopy appleID];
    v11 = [v9 labeledValueWithLabel:0 value:appleID2];
    v21[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v4 setEmailAddresses:v12];
  }

  else
  {
    appleID3 = [memberCopy appleID];
    hf_isPhoneNumber = [appleID3 hf_isPhoneNumber];

    if (!hf_isPhoneNumber)
    {
      goto LABEL_6;
    }

    v15 = MEMORY[0x277CBDB20];
    v16 = objc_alloc(MEMORY[0x277CBDB70]);
    appleID2 = [memberCopy appleID];
    v11 = [v16 initWithStringValue:appleID2];
    v12 = [v15 labeledValueWithLabel:0 value:v11];
    v20 = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v4 setPhoneNumbers:v17];
  }

LABEL_6:
  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_loadFamilyMembersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277D08288]);
  [v5 setCachePolicy:2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HFContactController__loadFamilyMembersWithCompletion___block_invoke;
  v7[3] = &unk_277DF9118;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 startRequestWithCompletionHandler:v7];
}

void __56__HFContactController__loadFamilyMembersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HFContactController__loadFamilyMembersWithCompletion___block_invoke_2;
  v10[3] = &unk_277DF67D0;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __56__HFContactController__loadFamilyMembersWithCompletion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = HFLogForCategory(0x2AuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Error loading family members: %@", buf, 0xCu);
    }
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [*(a1 + 40) members];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [*(a1 + 40) members];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __56__HFContactController__loadFamilyMembersWithCompletion___block_invoke_39;
    v18 = &unk_277DF90F0;
    v9 = v4;
    v19 = v9;
    v10 = v5;
    v11 = *(a1 + 48);
    v20 = v10;
    v21 = v11;
    [v8 enumerateObjectsUsingBlock:&v15];

    if ([v9 count])
    {
      v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"appleID" ascending:1];
      v22 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      [v9 sortUsingDescriptors:v13];

      [*(a1 + 48) setFamilyMembers:v9];
      [*(a1 + 48) setFamilyMemberDsidToContact:v10];
      [*(a1 + 48) _downloadFamilyMemberPhotos];
    }
  }

  (*(*(a1 + 56) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

void __56__HFContactController__loadFamilyMembersWithCompletion___block_invoke_39(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 isMe] & 1) == 0)
  {
    [*(a1 + 32) addObject:v6];
    v3 = [*(a1 + 48) _contactForFamilyMember:v6];
    v4 = *(a1 + 40);
    v5 = [v6 dsid];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

- (void)_downloadFamilyMemberPhotos
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(HFContactController *)self familyMembers];
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = objc_alloc(MEMORY[0x277D08298]);
        dsid = [v7 dsid];
        v10 = [v8 initWithFamilyMemberDSID:dsid size:1 localFallback:1];

        [v10 setUseMonogramAsLastResort:0];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __50__HFContactController__downloadFamilyMemberPhotos__block_invoke;
        v13[3] = &unk_277DF9140;
        v13[4] = self;
        v13[5] = v7;
        [v10 startRequestWithCompletionHandler:v13];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __50__HFContactController__downloadFamilyMemberPhotos__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HFContactController__downloadFamilyMemberPhotos__block_invoke_2;
    block[3] = &unk_277DF32A8;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __50__HFContactController__downloadFamilyMemberPhotos__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) familyMemberDsidToContact];
  v3 = [*(a1 + 40) dsid];
  v5 = [v2 objectForKeyedSubscript:v3];

  [v5 setImageData:*(a1 + 48)];
  v4 = [*(a1 + 32) delegate];
  [v4 contactController:*(a1 + 32) didFinishDownloadingFamilyMemberAvatar:*(a1 + 40)];
}

- (void)adaptiveTemperatureIDSCapabilityUpdated:(id)updated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HFContactController_adaptiveTemperatureIDSCapabilityUpdated___block_invoke;
  v3[3] = &unk_277DF90C8;
  v3[4] = self;
  [updated enumerateKeysAndObjectsUsingBlock:v3];
}

void __63__HFContactController_adaptiveTemperatureIDSCapabilityUpdated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v4 recipientToAdaptiveTemperatureIDSCapability];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 unsignedIntValue];

  v9 = [v7 numberWithUnsignedInt:v8];
  [v10 setObject:v9 forKey:v6];
}

- (BOOL)hasAdaptiveTemperatureIDSCapabilityForDestination:(id)destination
{
  v15 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  recipientToAdaptiveTemperatureIDSCapability = [(HFContactController *)self recipientToAdaptiveTemperatureIDSCapability];
  v6 = [recipientToAdaptiveTemperatureIDSCapability objectForKey:destinationCopy];

  v7 = HFLogForCategory(0x2AuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = destinationCopy;
    v13 = 1024;
    bOOLValue = [v6 BOOLValue];
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Destination: %@ hasAdaptiveTemperatureIDSCapabilityForDestination:%{BOOL}d", &v11, 0x12u);
  }

  bOOLValue2 = [v6 BOOLValue];
  v9 = *MEMORY[0x277D85DE8];
  return bOOLValue2;
}

- (HFContactControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end