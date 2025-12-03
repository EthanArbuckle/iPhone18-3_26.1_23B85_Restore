@interface CHMobileAssetBridge
- (void)autoAssetAvailableForUseForAssetType:(id)type assetSpecifier:(id)specifier completion:(id)completion;
- (void)autoAssetEndAllLocksForAssetType:(id)type assetSpecifier:(id)specifier completion:(id)completion;
- (void)autoAssetEndLockContentForAssetType:(id)type assetSpecifier:(id)specifier endLockReason:(id)reason completion:(id)completion;
- (void)autoAssetInterestInContentForAssetType:(id)type assetSpecifier:(id)specifier completion:(id)completion;
- (void)autoAssetLockContentForAssetType:(id)type assetSpecifier:(id)specifier lockReason:(id)reason completion:(id)completion;
@end

@implementation CHMobileAssetBridge

- (void)autoAssetEndAllLocksForAssetType:(id)type assetSpecifier:(id)specifier completion:(id)completion
{
  completionCopy = completion;
  specifierCopy = specifier;
  typeCopy = type;
  NSLog(&cfstr_AttemptingEndi_0.isa, typeCopy, specifierCopy);
  v10 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  v11 = MEMORY[0x277D289E0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__CHMobileAssetBridge_autoAssetEndAllLocksForAssetType_assetSpecifier_completion___block_invoke;
  v13[3] = &unk_278DE4F48;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 endAllPreviousLocksOfSelector:v10 forClientName:@"CognitiveHealth" completion:v13];
}

void __82__CHMobileAssetBridge_autoAssetEndAllLocksForAssetType_assetSpecifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v6 = [a2 summary];
  v7 = v6;
  if (a3)
  {
    NSLog(&cfstr_ErrorEndingAll.isa, v6, v8);
  }

  else
  {
    NSLog(&cfstr_SuccessEndingA.isa, v6);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)autoAssetEndLockContentForAssetType:(id)type assetSpecifier:(id)specifier endLockReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  specifierCopy = specifier;
  typeCopy = type;
  NSLog(&cfstr_AttemptingEndi.isa, reasonCopy, typeCopy, specifierCopy);
  v13 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  v19 = 0;
  v14 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:@"CognitiveHealth" selectingAsset:v13 error:&v19];
  v15 = v19;
  v16 = v15;
  if (v15)
  {
    NSLog(&cfstr_ErrorCreatingA.isa, v15);
    completionCopy[2](completionCopy, v16);
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __99__CHMobileAssetBridge_autoAssetEndLockContentForAssetType_assetSpecifier_endLockReason_completion___block_invoke;
    v17[3] = &unk_278DE4F48;
    v18 = completionCopy;
    [v14 endLockUsage:reasonCopy completion:v17];
  }
}

void __99__CHMobileAssetBridge_autoAssetEndLockContentForAssetType_assetSpecifier_endLockReason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v6 = [a2 summary];
  v7 = v6;
  if (a3)
  {
    NSLog(&cfstr_ErrorUnlocking.isa, v6, v8);
  }

  else
  {
    NSLog(&cfstr_SuccessUnlocki.isa, v6);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)autoAssetLockContentForAssetType:(id)type assetSpecifier:(id)specifier lockReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  specifierCopy = specifier;
  typeCopy = type;
  NSLog(&cfstr_AttemptingLock.isa, reasonCopy, typeCopy, specifierCopy);
  v13 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  v20 = 0;
  v14 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:@"CognitiveHealth" selectingAsset:v13 error:&v20];
  v15 = v20;
  if (v15)
  {
    v16 = v15;
    NSLog(&cfstr_ErrorCreatingA.isa, v15);
    array = [MEMORY[0x277CBEA60] array];
    completionCopy[2](completionCopy, 0, array, v16);
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__CHMobileAssetBridge_autoAssetLockContentForAssetType_assetSpecifier_lockReason_completion___block_invoke;
    v18[3] = &unk_278DE4F70;
    v19 = completionCopy;
    [v14 lockContent:reasonCopy withTimeout:-2 completion:v18];
    array = 0;
    v16 = v19;
  }
}

void __93__CHMobileAssetBridge_autoAssetLockContentForAssetType_assetSpecifier_lockReason_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (a3)
  {
    v15 = [a2 summary];
    NSLog(&cfstr_AutoAssetConte.isa, v15, v11);

    if (v12)
    {
      v16 = [v12 summary];
      NSLog(&cfstr_ContentLockedB.isa, v16);
    }

    else
    {
      NSLog(&cfstr_ContentLockedN.isa);
    }

    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v11 path];
    v47 = 0;
    v21 = [v19 contentsOfDirectoryAtPath:v20 error:&v47];
    v22 = v47;

    if (v22)
    {
      NSLog(&cfstr_ErrorGettingCo.isa, v22);
      v23 = *(a1 + 32);
      v24 = [v11 path];
      v25 = [MEMORY[0x277CBEA60] array];
      (*(v23 + 16))(v23, v24, v25, v22);
    }

    else
    {
      v40 = a1;
      v41 = v14;
      v42 = v12;
      v24 = [MEMORY[0x277CBEB18] array];
      v25 = [MEMORY[0x277CBEB18] array];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v39 = v21;
      v26 = v21;
      v27 = [v26 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v44;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v44 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v43 + 1) + 8 * i);
            v32 = [v11 path];
            v33 = [v32 stringByAppendingPathComponent:v31];
            [v24 addObject:v33];

            [v25 addObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v28);
      }

      v34 = [v25 componentsJoinedByString:{@", "}];
      v35 = [v11 path];
      NSLog(&cfstr_LockedAndFound.isa, v34, v35);

      v36 = *(v40 + 32);
      v37 = [v11 path];
      (*(v36 + 16))(v36, v37, v24, 0);

      v14 = v41;
      v12 = v42;
      v22 = 0;
      v21 = v39;
    }
  }

  else
  {
    NSLog(&cfstr_AutoAssetConte_0.isa, v13);
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CBEA60] array];
    (*(v17 + 16))(v17, 0, v18, v14);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)autoAssetInterestInContentForAssetType:(id)type assetSpecifier:(id)specifier completion:(id)completion
{
  completionCopy = completion;
  specifierCopy = specifier;
  typeCopy = type;
  NSLog(&cfstr_InterestInCont.isa, typeCopy, specifierCopy);
  v10 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  v16 = 0;
  v11 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:@"CognitiveHealth" selectingAsset:v10 error:&v16];
  v12 = v16;
  v13 = v12;
  if (v12)
  {
    NSLog(&cfstr_ErrorCreatingA.isa, v12);
    completionCopy[2](completionCopy, v13);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__CHMobileAssetBridge_autoAssetInterestInContentForAssetType_assetSpecifier_completion___block_invoke;
    v14[3] = &unk_278DE4F48;
    v15 = completionCopy;
    [v11 interestInContent:@"Download Custom Categories file" completion:v14];
  }
}

void __88__CHMobileAssetBridge_autoAssetInterestInContentForAssetType_assetSpecifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v6 = [a2 summary];
  v7 = v6;
  if (a3)
  {
    NSLog(&cfstr_ErrorIndicatin.isa, v6, v8);
  }

  else
  {
    NSLog(&cfstr_SuccessLocking.isa, v6);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)autoAssetAvailableForUseForAssetType:(id)type assetSpecifier:(id)specifier completion:(id)completion
{
  completionCopy = completion;
  specifierCopy = specifier;
  typeCopy = type;
  NSLog(&cfstr_AttemptingToGe.isa, typeCopy, specifierCopy);
  v10 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  v17 = 0;
  v11 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:@"CognitiveHealth" selectingAsset:v10 error:&v17];
  v12 = v17;
  v13 = v12;
  if (v12)
  {
    NSLog(&cfstr_ErrrorCreating.isa, v12);
    completionCopy[2](completionCopy, 0, v13);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__CHMobileAssetBridge_autoAssetAvailableForUseForAssetType_assetSpecifier_completion___block_invoke;
  v15[3] = &unk_278DE4F20;
  v16 = completionCopy;
  v14 = completionCopy;
  [v11 currentStatus:v15];
}

void __86__CHMobileAssetBridge_autoAssetAvailableForUseForAssetType_assetSpecifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  NSLog(&cfstr_SuccessfullyRe.isa, v5);
  v6 = [v8 newerVersionError];

  if (v6)
  {
    NSLog(&cfstr_ErrorRetrievin.isa, v5);
    v7 = [v8 newerVersionError];
    [v7 code];
  }

  (*(*(a1 + 32) + 16))();
}

@end