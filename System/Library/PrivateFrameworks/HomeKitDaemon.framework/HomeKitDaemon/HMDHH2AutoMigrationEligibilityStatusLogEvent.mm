@interface HMDHH2AutoMigrationEligibilityStatusLogEvent
- (HMDHH2AutoMigrationEligibilityStatusLogEvent)initWithAutoMigrationEligibilityResult:(id)result migrationByOwnerManualEligibilityResult:(id)eligibilityResult migrationByOwnerAutoEligibilityResult:(id)autoEligibilityResult didRunMigrationTaskOnCurrentBuild:(BOOL)build currentBuildStartedOnHH1:(BOOL)h1;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHH2AutoMigrationEligibilityStatusLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v46[16] = *MEMORY[0x277D85DE8];
  v45[0] = @"currentUserAutoMigrationEligibilityStatus";
  v3 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v43 = [v3 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult, "status")}];
  v46[0] = v43;
  v45[1] = @"currentUserAutoMigrationiCloudAccountStatus";
  v4 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult2 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v41 = [v4 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult2, "iCloudAccountStatus")}];
  v46[1] = v41;
  v45[2] = @"currentUserAutoMigrationUnsupportedDevices";
  v5 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult3 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v39 = [v5 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult3, "unsupportedDevices")}];
  v46[2] = v39;
  v45[3] = @"currentUserAutoMigrationHasOnlyEmptyHomes";
  currentUserAutoMigrationEligibilityResult4 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  if ([currentUserAutoMigrationEligibilityResult4 hasOnlyEmptyHomes])
  {
    v6 = &unk_283E72EC0;
  }

  else
  {
    v6 = &unk_283E72ED8;
  }

  v46[3] = v6;
  v45[4] = @"currentUserAutoMigrationByOwnerManualEligibilityStatus";
  v7 = MEMORY[0x277CCABB0];
  currentUserMigrationByOwnerManualEligibilityResult = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  v36 = [v7 numberWithUnsignedInteger:{objc_msgSend(currentUserMigrationByOwnerManualEligibilityResult, "status")}];
  v46[4] = v36;
  v45[5] = @"currentUserAutoMigrationByOwnerManualUnsupportedDevices";
  v8 = MEMORY[0x277CCABB0];
  currentUserMigrationByOwnerManualEligibilityResult2 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  v34 = [v8 numberWithUnsignedInteger:{objc_msgSend(currentUserMigrationByOwnerManualEligibilityResult2, "unsupportedDevices")}];
  v46[5] = v34;
  v45[6] = @"currentUserAutoMigrationByOwnerManualHasOnlyEmptyHomes";
  currentUserMigrationByOwnerManualEligibilityResult3 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  if ([currentUserMigrationByOwnerManualEligibilityResult3 hasOnlyEmptyHomes])
  {
    v9 = &unk_283E72EC0;
  }

  else
  {
    v9 = &unk_283E72ED8;
  }

  v46[6] = v9;
  v45[7] = @"currentUserAutoMigrationByOwnerAutoEligibilityStatus";
  v10 = MEMORY[0x277CCABB0];
  currentUserMigrationByOwnerAutoEligibilityResult = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  v31 = [v10 numberWithUnsignedInteger:{objc_msgSend(currentUserMigrationByOwnerAutoEligibilityResult, "status")}];
  v46[7] = v31;
  v45[8] = @"currentUserAutoMigrationByOwnerAutoUnsupportedDevices";
  v11 = MEMORY[0x277CCABB0];
  currentUserMigrationByOwnerAutoEligibilityResult2 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  v29 = [v11 numberWithUnsignedInteger:{objc_msgSend(currentUserMigrationByOwnerAutoEligibilityResult2, "unsupportedDevices")}];
  v46[8] = v29;
  v45[9] = @"currentUserAutoMigrationByOwnerAutoHasOnlyEmptyHomes";
  currentUserMigrationByOwnerAutoEligibilityResult3 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  if ([currentUserMigrationByOwnerAutoEligibilityResult3 hasOnlyEmptyHomes])
  {
    v13 = &unk_283E72EC0;
  }

  else
  {
    v13 = &unk_283E72ED8;
  }

  v46[9] = v13;
  v45[10] = @"didScheduleDryRunOnCurrentSWVersion";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2AutoMigrationEligibilityStatusLogEvent didRunMigrationTaskOnCurrentBuild](self, "didRunMigrationTaskOnCurrentBuild")}];
  v46[10] = v14;
  v45[11] = @"didRunMigrationTaskOnCurrentBuild";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2AutoMigrationEligibilityStatusLogEvent didRunMigrationTaskOnCurrentBuild](self, "didRunMigrationTaskOnCurrentBuild")}];
  v46[11] = v15;
  v45[12] = @"currentBuildStartedOnHH1";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2AutoMigrationEligibilityStatusLogEvent currentBuildStartedOnHH1](self, "currentBuildStartedOnHH1")}];
  v46[12] = v16;
  v45[13] = @"numOwnedNonEmptyHomes_autoMigrationEligibility";
  v17 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult5 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult5, "numberOwnedNonEmptyHomes")}];
  v46[13] = v19;
  v45[14] = @"nunUnownedSharedHomes_autoMigrationEligibility";
  v20 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult6 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult6, "numberUnownedSharedHomes")}];
  v46[14] = v22;
  v45[15] = @"numOwnedHomesWithSharedUsers_autoMigrationEligibility";
  v23 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult7 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult7, "numberOwnedSharedHomes")}];
  v46[15] = v25;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:16];

  v26 = *MEMORY[0x277D85DE8];

  return v28;
}

- (HMDHH2AutoMigrationEligibilityStatusLogEvent)initWithAutoMigrationEligibilityResult:(id)result migrationByOwnerManualEligibilityResult:(id)eligibilityResult migrationByOwnerAutoEligibilityResult:(id)autoEligibilityResult didRunMigrationTaskOnCurrentBuild:(BOOL)build currentBuildStartedOnHH1:(BOOL)h1
{
  resultCopy = result;
  eligibilityResultCopy = eligibilityResult;
  autoEligibilityResultCopy = autoEligibilityResult;
  v19.receiver = self;
  v19.super_class = HMDHH2AutoMigrationEligibilityStatusLogEvent;
  v16 = [(HMMLogEvent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_currentUserAutoMigrationEligibilityResult, result);
    objc_storeStrong(&v17->_currentUserMigrationByOwnerManualEligibilityResult, eligibilityResult);
    objc_storeStrong(&v17->_currentUserMigrationByOwnerAutoEligibilityResult, autoEligibilityResult);
    v17->_didRunMigrationTaskOnCurrentBuild = build;
    v17->_currentBuildStartedOnHH1 = h1;
  }

  return v17;
}

@end