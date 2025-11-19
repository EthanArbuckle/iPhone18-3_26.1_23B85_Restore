@interface HUCameraUpgradeOfferBannerItem
- (HUCameraUpgradeOfferBannerItem)initWithHome:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)fetchPlanLimit;
- (id)fetchPremiumOffer;
- (id)hiddenOfferDisplayOutcome;
- (id)offerDisplayOutcome;
- (void)savePlanLimit:(id)a3 error:(id)a4;
- (void)savePremiumOffer:(id)a3 error:(id)a4;
@end

@implementation HUCameraUpgradeOfferBannerItem

- (HUCameraUpgradeOfferBannerItem)initWithHome:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HUCameraUpgradeOfferBannerItem;
  v5 = [(HUBannerItem *)&v11 initWithHome:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D14C98]);
    v7 = [v4 currentUser];
    v8 = [v6 initWithHome:v4 user:v7 nameStyle:0];
    userItem = v5->_userItem;
    v5->_userItem = v8;
  }

  return v5;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D2C900];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __62__HUCameraUpgradeOfferBannerItem__subclass_updateWithOptions___block_invoke;
    v30[3] = &unk_277DBCA20;
    objc_copyWeak(&v31, &location);
    v8 = [v7 futureWithBlock:v30];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [(HUBannerItem *)self home];
    v10 = [(HUBannerItem *)self home];
    v11 = [v10 currentUser];
    v12 = [v9 hf_userIsOwner:v11];

    v13 = [(HUCameraUpgradeOfferBannerItem *)self userItem];
    v14 = [v13 hasDismissedCameraUpgradeBanner];

    v15 = [(HUBannerItem *)self home];
    v16 = [v15 hf_allCameraProfilesSupportingRecording];
    v17 = [v16 count];

    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location) = 67109632;
      HIDWORD(location) = v12;
      v33 = 1024;
      v34 = v14;
      v35 = 2048;
      v36 = v17;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Subclass update with options called for OfferBannerItem (isOwner %d, hasDismissedBanner %d, cameraCount %lu)", &location, 0x18u);
    }

    v19 = [(HUBannerItem *)self forceShowBanner];
    if (v12 && (!v19 & v14 & 1) == 0 && v17)
    {
      if ([(HUCameraUpgradeOfferBannerItem *)self hasFetchedOfferResults])
      {
        v20 = MEMORY[0x277D2C900];
        v21 = [(HUCameraUpgradeOfferBannerItem *)self offerDisplayOutcome];
        v8 = [v20 futureWithResult:v21];
      }

      else
      {
        objc_initWeak(&location, self);
        v23 = [(HUCameraUpgradeOfferBannerItem *)self fetchPremiumOffer];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __62__HUCameraUpgradeOfferBannerItem__subclass_updateWithOptions___block_invoke_2;
        v25[3] = &unk_277DC0348;
        objc_copyWeak(v26, &location);
        v27 = v12;
        v28 = 0;
        v26[1] = v17;
        v8 = [v23 flatMap:v25];
        objc_destroyWeak(v26);

        objc_destroyWeak(&location);
      }
    }

    else
    {
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location) = 0;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Not showing offer banner because user is not owner, or has no cameras supporting recording, or already upgraded.", &location, 2u);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __62__HUCameraUpgradeOfferBannerItem__subclass_updateWithOptions___block_invoke_39;
      v29[3] = &unk_277DB7580;
      v29[4] = self;
      v8 = [MEMORY[0x277D2C900] futureWithBlock:v29];
    }
  }

  return v8;
}

void __62__HUCameraUpgradeOfferBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained hiddenOfferDisplayOutcome];
  [v3 finishWithResult:v4];
}

void __62__HUCameraUpgradeOfferBannerItem__subclass_updateWithOptions___block_invoke_39(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hiddenOfferDisplayOutcome];
  [v3 finishWithResult:v4];
}

id __62__HUCameraUpgradeOfferBannerItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained hasOpportunityBubble])
  {
    v3 = [WeakRetained fetchPlanLimit];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__HUCameraUpgradeOfferBannerItem__subclass_updateWithOptions___block_invoke_3;
    v9[3] = &unk_277DC0320;
    v10 = *(a1 + 48);
    v4 = *(a1 + 40);
    v9[4] = WeakRetained;
    v9[5] = v4;
    v5 = [v3 flatMap:v9];
  }

  else
  {
    v6 = MEMORY[0x277D2C900];
    v3 = [WeakRetained hiddenOfferDisplayOutcome];
    v5 = [v6 futureWithResult:v3];
  }

  v7 = v5;

  return v7;
}

id __62__HUCameraUpgradeOfferBannerItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 49);
    v17 = *(a1 + 40);
    v3 = [*(a1 + 32) offerTitle];
    v4 = [*(a1 + 32) offerMessage];
    v5 = [*(a1 + 32) offerActionTitle];
    v6 = [*(a1 + 32) sheetActionText];
    v7 = [*(a1 + 32) planLimit];
    v8 = [*(a1 + 32) sheetTitle];
    v9 = [*(a1 + 32) sheetMessage];
    v10 = [*(a1 + 32) messageKey];
    *buf = 67111682;
    v19 = v15;
    v20 = 1024;
    v21 = v16;
    v22 = 2048;
    v23 = v17;
    v24 = 2112;
    v25 = v3;
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(isOwner %d, hasDismissedBanner %d, cameraCount %lu) Offer title:%@ Message:%@ offerActionTitle:%@ sheetActionText:%@ planLimit:%@ sheetTitle: %@, sheetMessage:%@, messageKey:%@", buf, 0x68u);
  }

  v11 = MEMORY[0x277D2C900];
  v12 = [*(a1 + 32) offerDisplayOutcome];
  v13 = [v11 futureWithResult:v12];

  return v13;
}

- (id)fetchPlanLimit
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D2C900];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__HUCameraUpgradeOfferBannerItem_fetchPlanLimit__block_invoke;
  v5[3] = &unk_277DBCA20;
  objc_copyWeak(&v6, &location);
  v3 = [v2 futureWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __48__HUCameraUpgradeOfferBannerItem_fetchPlanLimit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CFB450];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HUCameraUpgradeOfferBannerItem_fetchPlanLimit__block_invoke_2;
  v6[3] = &unk_277DC0370;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [v4 requestFeatureWithId:@"home.cameras" completion:v6];

  objc_destroyWeak(&v8);
}

void __48__HUCameraUpgradeOfferBannerItem_fetchPlanLimit__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HUCameraUpgradeOfferBannerItem_fetchPlanLimit__block_invoke_3;
  v10[3] = &unk_277DBC838;
  objc_copyWeak(&v14, (a1 + 40));
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  v13 = *(a1 + 32);
  [v7 performBlock:v10];

  objc_destroyWeak(&v14);
}

void __48__HUCameraUpgradeOfferBannerItem_fetchPlanLimit__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained savePlanLimit:*(a1 + 32) error:*(a1 + 40)];
  [*(a1 + 48) finishWithNoResult];
}

- (id)fetchPremiumOffer
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D2C900];
  v6 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v7, &location);
  v3 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v4 = [v2 futureWithBlock:&v6 scheduler:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __51__HUCameraUpgradeOfferBannerItem_fetchPremiumOffer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getICQOfferManagerClass_softClass;
  v15 = getICQOfferManagerClass_softClass;
  if (!getICQOfferManagerClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getICQOfferManagerClass_block_invoke_0;
    v11[3] = &unk_277DB7768;
    v11[4] = &v12;
    __getICQOfferManagerClass_block_invoke_0(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HUCameraUpgradeOfferBannerItem_fetchPremiumOffer__block_invoke_2;
  v8[3] = &unk_277DC0398;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v3;
  v9 = v7;
  [v6 getPremiumOfferWithCompletion:v8];

  objc_destroyWeak(&v10);
}

void __51__HUCameraUpgradeOfferBannerItem_fetchPremiumOffer__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HUCameraUpgradeOfferBannerItem_fetchPremiumOffer__block_invoke_3;
  v10[3] = &unk_277DBC838;
  objc_copyWeak(&v14, (a1 + 40));
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  v13 = *(a1 + 32);
  [v7 performBlock:v10];

  objc_destroyWeak(&v14);
}

void __51__HUCameraUpgradeOfferBannerItem_fetchPremiumOffer__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained savePremiumOffer:*(a1 + 32) error:*(a1 + 40)];
  [*(a1 + 48) finishWithNoResult];
}

- (void)savePlanLimit:(id)a3 error:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Camera count request error:%@", &buf, 0xCu);
    }
  }

  [(HUCameraUpgradeOfferBannerItem *)self setMessageKey:0];
  if ([v6 status] == 1)
  {
    [(HUCameraUpgradeOfferBannerItem *)self setPlanLimit:&unk_282491B38];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v9 = getkICQOpportunitySheetUnlimitedKeySymbolLoc_ptr;
    v26 = getkICQOpportunitySheetUnlimitedKeySymbolLoc_ptr;
    if (!getkICQOpportunitySheetUnlimitedKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v28 = __getkICQOpportunitySheetUnlimitedKeySymbolLoc_block_invoke;
      v29 = &unk_277DB7768;
      v30 = &v23;
      v10 = iCloudQuotaLibrary();
      v11 = dlsym(v10, "kICQOpportunitySheetUnlimitedKey");
      *(v30[1] + 24) = v11;
      getkICQOpportunitySheetUnlimitedKeySymbolLoc_ptr = *(v30[1] + 24);
      v9 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v9)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkICQOpportunitySheetUnlimitedKey(void)"];
      [v21 handleFailureInFunction:v22 file:@"HUCameraUpgradeOfferBannerItem.m" lineNumber:32 description:{@"%s", dlerror()}];

      __break(1u);
    }

    [(HUCameraUpgradeOfferBannerItem *)self setMessageKey:*v9];
  }

  else
  {
    v12 = [v6 value];
    v13 = v12 == 0;

    if (v13)
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_error_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_ERROR, "Missing planLimit for feature = %@", &buf, 0xCu);
      }
    }

    else
    {
      v14 = [v6 value];
      [(HUCameraUpgradeOfferBannerItem *)self setPlanLimit:v14];

      v15 = [(HUCameraUpgradeOfferBannerItem *)self planLimit];
      v16 = [v15 stringValue];
      [(HUCameraUpgradeOfferBannerItem *)self setMessageKey:v16];
    }
  }

  v18 = [(HUCameraUpgradeOfferBannerItem *)self sheetDetails];
  v19 = [(HUCameraUpgradeOfferBannerItem *)self messageKey];
  v20 = [v18 messageForKey:v19];
  [(HUCameraUpgradeOfferBannerItem *)self setSheetMessage:v20];
}

- (void)savePremiumOffer:(id)a3 error:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Premium offer error:%@", &buf, 0xCu);
    }
  }

  v9 = [v6 opportunityBubble];
  v10 = v9 == 0;

  if (v10)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "Nil opportunity bubble, not showing banner", &buf, 2u);
    }
  }

  v12 = [v6 opportunityBubble];
  [(HUCameraUpgradeOfferBannerItem *)self setHasOpportunityBubble:v12 != 0];

  [(HUCameraUpgradeOfferBannerItem *)self setHasFetchedOfferResults:1];
  v13 = [v6 opportunityBubble];
  v14 = [v13 bubbleDetails];

  v15 = [v6 opportunityBubble];
  v16 = [v15 sheetDetails];

  [(HUCameraUpgradeOfferBannerItem *)self setSheetDetails:v16];
  v17 = [v14 title];
  [(HUCameraUpgradeOfferBannerItem *)self setOfferTitle:v17];

  v18 = [v14 message];
  [(HUCameraUpgradeOfferBannerItem *)self setOfferMessage:v18];

  v19 = [v14 actions];
  v20 = [v19 firstObject];
  v21 = [v20 text];
  [(HUCameraUpgradeOfferBannerItem *)self setOfferActionTitle:v21];

  v22 = [v16 actions];
  v23 = [v22 firstObject];
  v24 = [v23 text];
  [(HUCameraUpgradeOfferBannerItem *)self setSheetActionText:v24];

  v25 = [v16 title];
  [(HUCameraUpgradeOfferBannerItem *)self setSheetTitle:v25];

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v26 = getkICQOpportunitySheetDefaultKeySymbolLoc_ptr;
  v41 = getkICQOpportunitySheetDefaultKeySymbolLoc_ptr;
  if (!getkICQOpportunitySheetDefaultKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v43 = __getkICQOpportunitySheetDefaultKeySymbolLoc_block_invoke;
    v44 = &unk_277DB7768;
    v45 = &v38;
    v27 = iCloudQuotaLibrary();
    v28 = dlsym(v27, "kICQOpportunitySheetDefaultKey");
    *(v45[1] + 24) = v28;
    getkICQOpportunitySheetDefaultKeySymbolLoc_ptr = *(v45[1] + 24);
    v26 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v26)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkICQOpportunitySheetDefaultKey(void)"];
    [v36 handleFailureInFunction:v37 file:@"HUCameraUpgradeOfferBannerItem.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v29 = [v16 messageForKey:*v26];
  [(HUCameraUpgradeOfferBannerItem *)self setSheetMessage:v29];

  if ([MEMORY[0x277D14500] forceDisplaySingleCameraUpgradeBanner])
  {
    v30 = [(HUCameraUpgradeOfferBannerItem *)self offerTitle];
    v31 = v30 == 0;

    if (v31)
    {
      v32 = @"(DBG) Your iCloud subscription was upgraded to include secure video recording for one camera.";
      v33 = @"(DBG) Secure Video Available";
      v34 = &unk_282491B50;
      v35 = @"(DBG) Set Up Now";
      goto LABEL_17;
    }
  }

  if ([MEMORY[0x277D14500] forceDisplayMultiCameraUpgradeBanner])
  {
    v32 = @"(DBG) Your iCloud subscription was upgraded to support recording on more cameras.";
    v33 = @"(DBG) Recording Limits Increased";
    v34 = &unk_282491B68;
    v35 = @"(DBG) Recording Options";
LABEL_17:
    [(HUCameraUpgradeOfferBannerItem *)self setOfferTitle:@"(DBG) Secure Video Available"];
    [(HUCameraUpgradeOfferBannerItem *)self setOfferMessage:@"(DBG) Your iCloud subscription was upgraded to include secure video recording"];
    [(HUCameraUpgradeOfferBannerItem *)self setOfferActionTitle:v35];
    [(HUCameraUpgradeOfferBannerItem *)self setPlanLimit:v34];
    [(HUCameraUpgradeOfferBannerItem *)self setSheetTitle:v33];
    [(HUCameraUpgradeOfferBannerItem *)self setSheetMessage:v32];
    [(HUCameraUpgradeOfferBannerItem *)self setSheetActionText:@"(DBG) Continue"];
  }
}

- (id)hiddenOfferDisplayOutcome
{
  v2 = objc_alloc_init(MEMORY[0x277D14858]);
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];

  return v2;
}

- (id)offerDisplayOutcome
{
  v4 = objc_alloc_init(MEMORY[0x277D14858]);
  v5 = [(HUCameraUpgradeOfferBannerItem *)self offerTitle];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v4 setObject:@"Home.Banners.CameraUpgradeOffer" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v6 = MEMORY[0x277CCABB0];
  v7 = [(HUCameraUpgradeOfferBannerItem *)self offerTitle];
  if (v7)
  {
    v2 = [(HUCameraUpgradeOfferBannerItem *)self offerMessage];
    v8 = v2 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v6 numberWithInt:v8];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  if (v7)
  {
  }

  v10 = [(HUCameraUpgradeOfferBannerItem *)self offerMessage];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v11 = objc_alloc(MEMORY[0x277D14440]);
  v12 = [v11 initWithPackageIdentifier:*MEMORY[0x277D13710] state:*MEMORY[0x277D13758]];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13E88]];

  v13 = [(HUCameraUpgradeOfferBannerItem *)self offerActionTitle];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  [v4 setObject:&unk_282491B80 forKeyedSubscript:@"bannerItemCategory"];

  return v4;
}

@end