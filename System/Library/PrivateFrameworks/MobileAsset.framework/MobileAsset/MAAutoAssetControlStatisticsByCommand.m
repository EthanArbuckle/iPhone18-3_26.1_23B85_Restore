@interface MAAutoAssetControlStatisticsByCommand
- (MAAutoAssetControlStatisticsByCommand)initWithCoder:(id)a3;
- (MAAutoAssetControlStatisticsByCommand)initWithInitialValue:(int64_t)a3;
- (id)copy;
- (int64_t)total;
- (void)encodeWithCoder:(id)a3;
- (void)incrementForClientRequestMessage:(id)a3;
@end

@implementation MAAutoAssetControlStatisticsByCommand

- (MAAutoAssetControlStatisticsByCommand)initWithInitialValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetControlStatisticsByCommand;
  result = [(MAAutoAssetControlStatisticsByCommand *)&v5 init];
  if (result)
  {
    result->_interestInContent = a3;
    result->_checkForNewer = a3;
    result->_determineIfAvailable = a3;
    result->_currentStatus = a3;
    result->_lockContent = a3;
    result->_mapLockedContent = a3;
    result->_continueLockUsage = a3;
    result->_endLockUsage = a3;
    result->_endPreviousLocks = a3;
    result->_endAllPreviousLocks = a3;
    result->_eliminateAllForSelector = a3;
    result->_eliminateAllForAssetType = a3;
    result->_eliminatePromotedNeverLockedForSelector = a3;
    result->_stageDetermineAllAvailable = a3;
    result->_stageDownloadAll = a3;
    result->_stagePurgeAll = a3;
    result->_stageEraseAll = a3;
    result->_estimateEvictableBytesForSoftwareUpdate = a3;
    result->_suspendForSoftwareUpdate = a3;
    result->_resumeFromSoftwareUpdate = a3;
    result->_suspendResumeStatusForSoftwareUpdate = a3;
  }

  return result;
}

- (MAAutoAssetControlStatisticsByCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MAAutoAssetControlStatisticsByCommand;
  v5 = [(MAAutoAssetControlStatisticsByCommand *)&v7 init];
  if (v5)
  {
    v5->_interestInContent = [v4 decodeInt64ForKey:@"interestInContent"];
    v5->_checkForNewer = [v4 decodeInt64ForKey:@"checkForNewer"];
    v5->_determineIfAvailable = [v4 decodeInt64ForKey:@"determineIfAvailable"];
    v5->_currentStatus = [v4 decodeInt64ForKey:@"currentStatus"];
    v5->_lockContent = [v4 decodeInt64ForKey:@"lockContent"];
    v5->_mapLockedContent = [v4 decodeInt64ForKey:@"mapLockedContent"];
    v5->_continueLockUsage = [v4 decodeInt64ForKey:@"continueLockUsage"];
    v5->_endLockUsage = [v4 decodeInt64ForKey:@"endLockUsage"];
    v5->_endPreviousLocks = [v4 decodeInt64ForKey:@"endPreviousLocks"];
    v5->_endAllPreviousLocks = [v4 decodeInt64ForKey:@"endAllPreviousLocks"];
    v5->_eliminateAllForSelector = [v4 decodeInt64ForKey:@"eliminateAllForSelector"];
    v5->_eliminateAllForAssetType = [v4 decodeInt64ForKey:@"eliminateAllForAssetType"];
    v5->_eliminatePromotedNeverLockedForSelector = [v4 decodeInt64ForKey:@"eliminatePromotedNeverLockedForSelector"];
    v5->_stageDetermineAllAvailable = [v4 decodeInt64ForKey:@"stageDetermineAllAvailable"];
    v5->_stageDownloadAll = [v4 decodeInt64ForKey:@"stageDownloadAll"];
    v5->_stagePurgeAll = [v4 decodeInt64ForKey:@"stagePurgeAll"];
    v5->_stageEraseAll = [v4 decodeInt64ForKey:@"stageEraseAll"];
    v5->_estimateEvictableBytesForSoftwareUpdate = [v4 decodeInt64ForKey:@"estimateEvictableBytesForSoftwareUpdate"];
    v5->_suspendForSoftwareUpdate = [v4 decodeInt64ForKey:@"suspendForSoftwareUpdate"];
    v5->_resumeFromSoftwareUpdate = [v4 decodeInt64ForKey:@"resumeFromSoftwareUpdate"];
    v5->_suspendResumeStatusForSoftwareUpdate = [v4 decodeInt64ForKey:@"suspendResumeStatusForSoftwareUpdate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand interestInContent](self forKey:{"interestInContent"), @"interestInContent"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand checkForNewer](self forKey:{"checkForNewer"), @"checkForNewer"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand determineIfAvailable](self forKey:{"determineIfAvailable"), @"determineIfAvailable"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand currentStatus](self forKey:{"currentStatus"), @"currentStatus"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand lockContent](self forKey:{"lockContent"), @"lockContent"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand mapLockedContent](self forKey:{"mapLockedContent"), @"mapLockedContent"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand continueLockUsage](self forKey:{"continueLockUsage"), @"continueLockUsage"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand endLockUsage](self forKey:{"endLockUsage"), @"endLockUsage"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand endPreviousLocks](self forKey:{"endPreviousLocks"), @"endPreviousLocks"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand endAllPreviousLocks](self forKey:{"endAllPreviousLocks"), @"endAllPreviousLocks"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand eliminateAllForSelector](self forKey:{"eliminateAllForSelector"), @"eliminateAllForSelector"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand eliminateAllForAssetType](self forKey:{"eliminateAllForAssetType"), @"eliminateAllForAssetType"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand eliminatePromotedNeverLockedForSelector](self forKey:{"eliminatePromotedNeverLockedForSelector"), @"eliminatePromotedNeverLockedForSelector"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand stageDetermineAllAvailable](self forKey:{"stageDetermineAllAvailable"), @"stageDetermineAllAvailable"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand stageDownloadAll](self forKey:{"stageDownloadAll"), @"stageDownloadAll"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand stagePurgeAll](self forKey:{"stagePurgeAll"), @"stagePurgeAll"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand stageEraseAll](self forKey:{"stageEraseAll"), @"stageEraseAll"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand estimateEvictableBytesForSoftwareUpdate](self forKey:{"estimateEvictableBytesForSoftwareUpdate"), @"estimateEvictableBytesForSoftwareUpdate"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand suspendForSoftwareUpdate](self forKey:{"suspendForSoftwareUpdate"), @"suspendForSoftwareUpdate"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand resumeFromSoftwareUpdate](self forKey:{"resumeFromSoftwareUpdate"), @"resumeFromSoftwareUpdate"}];
  [v4 encodeInt64:-[MAAutoAssetControlStatisticsByCommand suspendResumeStatusForSoftwareUpdate](self forKey:{"suspendResumeStatusForSoftwareUpdate"), @"suspendResumeStatusForSoftwareUpdate"}];
}

- (void)incrementForClientRequestMessage:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69D3880] stringIsEqual:? to:?])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setInterestInContent:[(MAAutoAssetControlStatisticsByCommand *)self interestInContent]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:CHECK_FOR_NEWER"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setCheckForNewer:[(MAAutoAssetControlStatisticsByCommand *)self checkForNewer]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setDetermineIfAvailable:[(MAAutoAssetControlStatisticsByCommand *)self determineIfAvailable]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:LOCK_CONTENT"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setLockContent:[(MAAutoAssetControlStatisticsByCommand *)self lockContent]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:MAP_LOCKED_CONTENT_TO_EXCLAVE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setMapLockedContent:[(MAAutoAssetControlStatisticsByCommand *)self mapLockedContent]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:CONTINUE_LOCK_USAGE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setContinueLockUsage:[(MAAutoAssetControlStatisticsByCommand *)self continueLockUsage]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:END_LOCK_USAGE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEndLockUsage:[(MAAutoAssetControlStatisticsByCommand *)self endLockUsage]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:END_PREVIOUS_LOCKS"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEndPreviousLocks:[(MAAutoAssetControlStatisticsByCommand *)self endPreviousLocks]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:END_ALL_PREVIOUS_LOCKS"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEndAllPreviousLocks:[(MAAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:ELIMINATE_ALL_FOR_SELECTOR"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEliminateAllForSelector:[(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:ELIMINATE_ALL_FOR_ASSET_TYPE"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEliminateAllForAssetType:[(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO:ELIMINATE_PROMOTED_NEVER_LOCKED_FOR_SELECTOR"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEliminatePromotedNeverLockedForSelector:[(MAAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]+ 1];
  }

  else if (([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69D3880], "stringIsEqual:to:", v4, @"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE") & 1) != 0 || objc_msgSend(MEMORY[0x1E69D3880], "stringIsEqual:to:", v4, @"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE"))
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setStageDetermineAllAvailable:[(MAAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]+ 1];
  }

  else if (([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"] & 1) != 0 || objc_msgSend(MEMORY[0x1E69D3880], "stringIsEqual:to:", v4, @"MA-AUTO-STAGE:DOWNLOAD_ALL"))
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setStageDownloadAll:[(MAAutoAssetControlStatisticsByCommand *)self stageDownloadAll]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO-STAGE:PURGE_ALL"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setStagePurgeAll:[(MAAutoAssetControlStatisticsByCommand *)self stagePurgeAll]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO-STAGE:ERASE_ALL"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setStageEraseAll:[(MAAutoAssetControlStatisticsByCommand *)self stageEraseAll]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO-SUSPEND-RESUME-SU:EVICTABLE_BYTES"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setEstimateEvictableBytesForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO-SUSPEND-RESUME-SU:SUSPEND"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setSuspendForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO-SUSPEND-RESUME-SU:RESUME"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setResumeFromSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]+ 1];
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v4 to:@"MA-AUTO-SUSPEND-RESUME-SU:STATUS"])
  {
    [(MAAutoAssetControlStatisticsByCommand *)self setSuspendResumeStatusForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate]+ 1];
  }
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetControlStatisticsByCommand);
  [(MAAutoAssetControlStatisticsByCommand *)v3 setInterestInContent:[(MAAutoAssetControlStatisticsByCommand *)self interestInContent]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setCheckForNewer:[(MAAutoAssetControlStatisticsByCommand *)self checkForNewer]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setDetermineIfAvailable:[(MAAutoAssetControlStatisticsByCommand *)self determineIfAvailable]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setCurrentStatus:[(MAAutoAssetControlStatisticsByCommand *)self currentStatus]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setLockContent:[(MAAutoAssetControlStatisticsByCommand *)self lockContent]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setMapLockedContent:[(MAAutoAssetControlStatisticsByCommand *)self mapLockedContent]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setContinueLockUsage:[(MAAutoAssetControlStatisticsByCommand *)self continueLockUsage]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEndLockUsage:[(MAAutoAssetControlStatisticsByCommand *)self endLockUsage]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEndPreviousLocks:[(MAAutoAssetControlStatisticsByCommand *)self endPreviousLocks]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEndAllPreviousLocks:[(MAAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEliminateAllForSelector:[(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEliminateAllForAssetType:[(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEliminatePromotedNeverLockedForSelector:[(MAAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setStageDetermineAllAvailable:[(MAAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setStageDownloadAll:[(MAAutoAssetControlStatisticsByCommand *)self stageDownloadAll]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setStagePurgeAll:[(MAAutoAssetControlStatisticsByCommand *)self stagePurgeAll]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setStageEraseAll:[(MAAutoAssetControlStatisticsByCommand *)self stageEraseAll]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setEstimateEvictableBytesForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setSuspendForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setResumeFromSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]];
  [(MAAutoAssetControlStatisticsByCommand *)v3 setSuspendResumeStatusForSoftwareUpdate:[(MAAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate]];
  return v3;
}

- (int64_t)total
{
  v3 = [(MAAutoAssetControlStatisticsByCommand *)self interestInContent];
  v4 = [(MAAutoAssetControlStatisticsByCommand *)self checkForNewer]+ v3;
  v5 = [(MAAutoAssetControlStatisticsByCommand *)self determineIfAvailable];
  v6 = v4 + v5 + [(MAAutoAssetControlStatisticsByCommand *)self currentStatus];
  v7 = [(MAAutoAssetControlStatisticsByCommand *)self lockContent];
  v8 = v7 + [(MAAutoAssetControlStatisticsByCommand *)self mapLockedContent];
  v9 = v6 + v8 + [(MAAutoAssetControlStatisticsByCommand *)self continueLockUsage];
  v10 = [(MAAutoAssetControlStatisticsByCommand *)self endLockUsage];
  v11 = v10 + [(MAAutoAssetControlStatisticsByCommand *)self endPreviousLocks];
  v12 = v11 + [(MAAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks];
  v13 = v9 + v12 + [(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector];
  v14 = [(MAAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType];
  v15 = v14 + [(MAAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector];
  v16 = v15 + [(MAAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable];
  v17 = v16 + [(MAAutoAssetControlStatisticsByCommand *)self stageDownloadAll];
  v18 = v13 + v17 + [(MAAutoAssetControlStatisticsByCommand *)self stagePurgeAll];
  v19 = [(MAAutoAssetControlStatisticsByCommand *)self stageEraseAll];
  v20 = v19 + [(MAAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate];
  v21 = v20 + [(MAAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate];
  v22 = v21 + [(MAAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate];
  return v18 + v22 + [(MAAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate];
}

@end