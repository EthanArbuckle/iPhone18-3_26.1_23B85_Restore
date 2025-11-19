@interface HMDHH2AutoMigrationEligibilityStatusLogEvent
- (HMDHH2AutoMigrationEligibilityStatusLogEvent)initWithAutoMigrationEligibilityResult:(id)a3 migrationByOwnerManualEligibilityResult:(id)a4 migrationByOwnerAutoEligibilityResult:(id)a5 didRunMigrationTaskOnCurrentBuild:(BOOL)a6 currentBuildStartedOnHH1:(BOOL)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHH2AutoMigrationEligibilityStatusLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v46[16] = *MEMORY[0x277D85DE8];
  v45[0] = @"currentUserAutoMigrationEligibilityStatus";
  v3 = MEMORY[0x277CCABB0];
  v44 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v43 = [v3 numberWithUnsignedInteger:{objc_msgSend(v44, "status")}];
  v46[0] = v43;
  v45[1] = @"currentUserAutoMigrationiCloudAccountStatus";
  v4 = MEMORY[0x277CCABB0];
  v42 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v41 = [v4 numberWithUnsignedInteger:{objc_msgSend(v42, "iCloudAccountStatus")}];
  v46[1] = v41;
  v45[2] = @"currentUserAutoMigrationUnsupportedDevices";
  v5 = MEMORY[0x277CCABB0];
  v40 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v39 = [v5 numberWithUnsignedInteger:{objc_msgSend(v40, "unsupportedDevices")}];
  v46[2] = v39;
  v45[3] = @"currentUserAutoMigrationHasOnlyEmptyHomes";
  v38 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  if ([v38 hasOnlyEmptyHomes])
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
  v37 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  v36 = [v7 numberWithUnsignedInteger:{objc_msgSend(v37, "status")}];
  v46[4] = v36;
  v45[5] = @"currentUserAutoMigrationByOwnerManualUnsupportedDevices";
  v8 = MEMORY[0x277CCABB0];
  v35 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  v34 = [v8 numberWithUnsignedInteger:{objc_msgSend(v35, "unsupportedDevices")}];
  v46[5] = v34;
  v45[6] = @"currentUserAutoMigrationByOwnerManualHasOnlyEmptyHomes";
  v33 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  if ([v33 hasOnlyEmptyHomes])
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
  v32 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  v31 = [v10 numberWithUnsignedInteger:{objc_msgSend(v32, "status")}];
  v46[7] = v31;
  v45[8] = @"currentUserAutoMigrationByOwnerAutoUnsupportedDevices";
  v11 = MEMORY[0x277CCABB0];
  v30 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  v29 = [v11 numberWithUnsignedInteger:{objc_msgSend(v30, "unsupportedDevices")}];
  v46[8] = v29;
  v45[9] = @"currentUserAutoMigrationByOwnerAutoHasOnlyEmptyHomes";
  v12 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  if ([v12 hasOnlyEmptyHomes])
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
  v18 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "numberOwnedNonEmptyHomes")}];
  v46[13] = v19;
  v45[14] = @"nunUnownedSharedHomes_autoMigrationEligibility";
  v20 = MEMORY[0x277CCABB0];
  v21 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "numberUnownedSharedHomes")}];
  v46[14] = v22;
  v45[15] = @"numOwnedHomesWithSharedUsers_autoMigrationEligibility";
  v23 = MEMORY[0x277CCABB0];
  v24 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "numberOwnedSharedHomes")}];
  v46[15] = v25;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:16];

  v26 = *MEMORY[0x277D85DE8];

  return v28;
}

- (HMDHH2AutoMigrationEligibilityStatusLogEvent)initWithAutoMigrationEligibilityResult:(id)a3 migrationByOwnerManualEligibilityResult:(id)a4 migrationByOwnerAutoEligibilityResult:(id)a5 didRunMigrationTaskOnCurrentBuild:(BOOL)a6 currentBuildStartedOnHH1:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = HMDHH2AutoMigrationEligibilityStatusLogEvent;
  v16 = [(HMMLogEvent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_currentUserAutoMigrationEligibilityResult, a3);
    objc_storeStrong(&v17->_currentUserMigrationByOwnerManualEligibilityResult, a4);
    objc_storeStrong(&v17->_currentUserMigrationByOwnerAutoEligibilityResult, a5);
    v17->_didRunMigrationTaskOnCurrentBuild = a6;
    v17->_currentBuildStartedOnHH1 = a7;
  }

  return v17;
}

@end