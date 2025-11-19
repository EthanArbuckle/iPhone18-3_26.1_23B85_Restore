@interface DSRestrictionsController
- (DSNavigationDelegate)delegate;
- (DSRestrictionsController)init;
- (id)restrictionList;
- (void)learnMoreRestrictionsPressed;
- (void)shouldShowWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation DSRestrictionsController

- (DSRestrictionsController)init
{
  v3 = DSUILocStringForKey(@"RESTRICTIONS_TITLE");
  v6.receiver = self;
  v6.super_class = DSRestrictionsController;
  v4 = [(OBTextWelcomeController *)&v6 initWithTitle:v3];

  return v4;
}

- (void)shouldShowWithCompletion:(id)a3
{
  v3 = a3;
  v4 = sharedWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DSRestrictionsController_shouldShowWithCompletion___block_invoke;
  block[3] = &unk_278F75490;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __53__DSRestrictionsController_shouldShowWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D054A8] hasRestriction];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)restrictionList
{
  v2 = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277D054A8] isSourceRestricted:*MEMORY[0x277D05450]])
  {
    v3 = DSUILocStringForKey(@"FIND_MY_RESTRICTIONS");
    [v2 addObject:v3];
  }

  if ([MEMORY[0x277D054A8] isSourceRestricted:*MEMORY[0x277D05468]])
  {
    v4 = DSUILocStringForKey(@"SHARED_PHOTO_RESTRICTIONS");
    [v2 addObject:v4];
  }

  v5 = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277D054A8] isPermissionRestricted:@"location"])
  {
    v6 = [MEMORY[0x277D05478] localizedNameForPermission:@"DSLocationAlways"];
    v7 = DSLocStringForKey();
    [v5 addObject:v7];
  }

  if ([MEMORY[0x277D054A8] isPermissionRestricted:*MEMORY[0x277D6C100]])
  {
    v8 = [MEMORY[0x277D05478] localizedNameForPermission:@"DSContacts"];
    v9 = DSLocStringForKey();
    [v5 addObject:v9];
  }

  v10 = MEMORY[0x277D6C118];
  if ([MEMORY[0x277D054A8] isPermissionRestricted:*MEMORY[0x277D6C118]])
  {
    v11 = [MEMORY[0x277D05478] localizedNameForPermission:*v10];
    v12 = DSLocStringForKey();
    [v5 addObject:v12];
  }

  v13 = MEMORY[0x277D6C1E0];
  if ([MEMORY[0x277D054A8] isPermissionRestricted:*MEMORY[0x277D6C1E0]])
  {
    v14 = [MEMORY[0x277D05478] localizedNameForPermission:*v13];
    v15 = DSLocStringForKey();
    [v5 addObject:v15];
  }

  v16 = MEMORY[0x277D6C1D0];
  if ([MEMORY[0x277D054A8] isPermissionRestricted:*MEMORY[0x277D6C1D0]])
  {
    v17 = [MEMORY[0x277D05478] localizedNameForPermission:*v16];
    v18 = DSLocStringForKey();
    [v5 addObject:v18];
  }

  v19 = MEMORY[0x277D6C110];
  if ([MEMORY[0x277D054A8] isPermissionRestricted:*MEMORY[0x277D6C110]])
  {
    v20 = [MEMORY[0x277D05478] localizedNameForPermission:*v19];
    v21 = DSLocStringForKey();
    [v5 addObject:v21];
  }

  v22 = MEMORY[0x277D6C1A8];
  if ([MEMORY[0x277D054A8] isPermissionRestricted:*MEMORY[0x277D6C1A8]])
  {
    v23 = [MEMORY[0x277D05478] localizedNameForPermission:*v22];
    v24 = DSLocStringForKey();
    [v5 addObject:v24];
  }

  v25 = MEMORY[0x277D6C1A0];
  if ([MEMORY[0x277D054A8] isPermissionRestricted:*MEMORY[0x277D6C1A0]])
  {
    v26 = [MEMORY[0x277D05478] localizedNameForPermission:*v25];
    v27 = DSLocStringForKey();
    [v5 addObject:v27];
  }

  v28 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v5];
  if ([v28 length])
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = DSUILocStringForKey(@"APP_RESTRICTIONS");
    v31 = [v29 stringWithFormat:v30, v28];

    [v2 addObject:v31];
  }

  if ([MEMORY[0x277D054A8] isPasscodeModificationRestricted])
  {
    v32 = DSUILocStringForKey(@"PASSCODE_RESTRICTIONS");
    [v2 addObject:v32];
  }

  if ([MEMORY[0x277D054A8] isFingerprintModificationRestricted])
  {
    if (PSIsPearlAvailable())
    {
      v33 = DSUILocStringForKey(@"FACE_ID_RESTRICTIONS");
      [v2 addObject:v33];
    }

    if (PSSupportsMesa())
    {
      v34 = DSUILocStringForKey(@"TOUCH_ID_RESTRICTIONS");
      [v2 addObject:v34];
    }
  }

  if ([MEMORY[0x277D054A8] isAppRemovalRestricted])
  {
    v35 = DSUILocStringForKey(@"APP_DELETION_RESTRICTION");
    [v2 addObject:v35];
  }

  if ([MEMORY[0x277D054A8] isPrivateRelayRestricted])
  {
    v36 = DSUILocStringForKey(@"PRIVATE_RELAY_RESTRICTIONS");
    [v2 addObject:v36];
  }

  return v2;
}

- (void)learnMoreRestrictionsPressed
{
  v4 = [(DSRestrictionsController *)self delegate];
  v3 = DSUILocStringForKey(@"RESTRICTIONS_LEARN_MORE_URL");
  [v4 learnMorePressedForController:self withURL:v3];
}

- (void)viewDidLoad
{
  v29 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = DSRestrictionsController;
  [(OBBaseWelcomeController *)&v27 viewDidLoad];
  v3 = [(DSRestrictionsController *)self headerView];
  v4 = DSUILocStringForKey(@"RESTRICTIONS_DETAIL_1");
  [v3 setDetailText:v4];

  v5 = MEMORY[0x277D755D0];
  v6 = [MEMORY[0x277D75348] systemBlueColor];
  v7 = [v5 configurationWithHierarchicalColor:v6];

  v8 = [(DSRestrictionsController *)self headerView];
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 imageNamed:@"custom.nosign" inBundle:v10 withConfiguration:v7];
  [v8 setIcon:v11 accessibilityLabel:0];

  v12 = [DSUIUtilities setUpLearnMoreButtonForController:self selector:sel_learnMoreRestrictionsPressed];
  v13 = DSUILocStringForKey(@"RESTRICTIONS_DETAIL_2");
  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v13];

  v14 = [(DSRestrictionsController *)self restrictionList];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(OBTextWelcomeController *)self addBulletedListItemWithTitle:*(*(&v23 + 1) + 8 * v18++) description:0];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }

  v19 = DSUILocStringForKey(@"CONTINUE");
  v20 = [(DSRestrictionsController *)self delegate];
  v21 = [DSUIUtilities setUpBoldButtonForController:self title:v19 target:v20 selector:sel_pushNextPane];

  v22 = *MEMORY[0x277D85DE8];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end