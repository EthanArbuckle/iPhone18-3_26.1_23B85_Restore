@interface HMActionSet
@end

@implementation HMActionSet

void *__57__HMActionSet_HFAdditions__hf_characteristicWriteActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

uint64_t __60__HMActionSet_HFAdditions__hf_affectsServiceWithIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 uniqueIdentifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    *a3 = 1;
  }

  return v6;
}

void __89__HMActionSet_HFAdditions__hf_percentOfAccessoryRepresentableObjectsAssociatedWithGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_accessoryType];
  if ([*(a1 + 32) containsType:?])
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __62__HMActionSet_HFAdditions__hf_setIconIdentifier_andTintColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

void __76__HMActionSet_HFAdditions__hf_standardSystemIconIdentifierForActionSetType___block_invoke_2()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF198];
  v5[0] = *MEMORY[0x277CCF1B0];
  v5[1] = v0;
  v6[0] = @"sun.max.fill";
  v6[1] = @"moon.stars.fill";
  v1 = *MEMORY[0x277CCF188];
  v5[2] = *MEMORY[0x277CCF180];
  v5[3] = v1;
  v6[2] = @"figure.walk.arrival";
  v6[3] = @"figure.walk.departure";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = qword_280E030B8;
  qword_280E030B8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __77__HMActionSet_HFAdditions__hf_mapOldIconIdentifierToNewSystemIconIdentifier___block_invoke_2()
{
  v4[12] = *MEMORY[0x277D85DE8];
  v3[0] = @"HFImageIconIdentifierSceneWakeUp";
  v3[1] = @"HFImageIconIdentifierSceneSleep";
  v4[0] = @"sun.max.fill";
  v4[1] = @"moon.stars.fill";
  v3[2] = @"HFImageIconIdentifierSceneArrivingHome";
  v3[3] = @"HFImageIconIdentifierSceneLeavingHome";
  v4[2] = @"figure.walk.arrival";
  v4[3] = @"figure.walk.departure";
  v3[4] = @"HFImageIconIdentifierGeneric";
  v3[5] = @"HFImageIconIdentifierSceneChillOut";
  v4[4] = @"house.fill";
  v4[5] = @"chair.lounge.fill";
  v3[6] = @"HFImageIconIdentifierSceneMovie";
  v3[7] = @"HFImageIconIdentifierSceneDinner";
  v4[6] = @"popcorn.fill";
  v4[7] = @"fork.knife";
  v3[8] = @"HFImageIconIdentifierSceneCoffee";
  v3[9] = @"HFImageIconIdentifierSceneBreakfast";
  v4[8] = @"cup.and.saucer.fill";
  v4[9] = @"frying.pan.fill";
  v3[10] = @"HFImageIconIdentifierSceneParty";
  v3[11] = @"HFImageIconIdentifierSceneRomance";
  v4[10] = @"party.popper.fill";
  v4[11] = @"heart.fill";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:12];
  v1 = qword_280E030C8;
  qword_280E030C8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __70__HMActionSet_HFAdditions__hf_standardIconTintColorForIconIdentifier___block_invoke_2()
{
  v16[12] = *MEMORY[0x277D85DE8];
  v15[0] = @"sun.max.fill";
  v14 = [MEMORY[0x277D75348] systemYellowColor];
  v16[0] = v14;
  v15[1] = @"moon.stars.fill";
  v13 = [MEMORY[0x277D75348] systemIndigoColor];
  v16[1] = v13;
  v15[2] = @"figure.walk.arrival";
  v0 = [MEMORY[0x277D75348] systemOrangeColor];
  v16[2] = v0;
  v15[3] = @"figure.walk.departure";
  v1 = [MEMORY[0x277D75348] systemOrangeColor];
  v16[3] = v1;
  v15[4] = @"house.fill";
  v2 = [MEMORY[0x277D75348] systemOrangeColor];
  v16[4] = v2;
  v15[5] = @"chair.lounge.fill";
  v3 = [MEMORY[0x277D75348] systemBrownColor];
  v16[5] = v3;
  v15[6] = @"popcorn.fill";
  v4 = [MEMORY[0x277D75348] systemRedColor];
  v16[6] = v4;
  v15[7] = @"fork.knife";
  v5 = [MEMORY[0x277D75348] systemGrayColor];
  v16[7] = v5;
  v15[8] = @"cup.and.saucer.fill";
  v6 = [MEMORY[0x277D75348] systemMintColor];
  v16[8] = v6;
  v15[9] = @"frying.pan.fill";
  v7 = [MEMORY[0x277D75348] systemGrayColor];
  v16[9] = v7;
  v15[10] = @"party.popper.fill";
  v8 = [MEMORY[0x277D75348] systemYellowColor];
  v16[10] = v8;
  v15[11] = @"heart.fill";
  v9 = [MEMORY[0x277D75348] systemPinkColor];
  v16[11] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:12];
  v11 = qword_280E030D8;
  qword_280E030D8 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __45__HMActionSet_HFAdditions__hf_shortcutAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __72__HMActionSet_HFIncludedContextProtocol__hf_updateValue_forContextType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

uint64_t __59__HMActionSet_HFHomeKitObjectConformance__hf_isValidObject__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __63__HMActionSet_HFApplicationData___hf_didUpdateApplicationData___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didUpdateApplicationDataForActionSet:*(a1 + 32)];
  }
}

void __89__HMActionSet_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  if ([v4 hasOptedToHH2])
  {
    v5 = [*(a1 + 32) home];
    v6 = [v5 residentDevices];
    v7 = [v6 count];

    v8 = HFOperationUpdateApplicationDataResidentSync;
    if (!v7)
    {
      v8 = HFOperationUpdateApplicationDataCloudSync;
    }
  }

  else
  {

    v8 = HFOperationUpdateApplicationDataCloudSync;
  }

  v9 = *(a1 + 56);
  v10 = *v8;
  v11 = +[HFErrorHandler sharedHandler];
  v12 = v11;
  if (v9 == 1)
  {
    [v11 handleError:v15 operationType:v10 options:0 retryBlock:0 cancelBlock:0];
  }

  else
  {
    [v11 logError:v15 operationDescription:v10];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained applicationData];
  [WeakRetained _hf_didUpdateApplicationData:v14];

  (*(*(a1 + 40) + 16))();
}

@end